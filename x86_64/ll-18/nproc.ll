; ModuleID = 'src/nproc.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !405
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !376
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !395
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !397
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !399
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !401
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !403
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !407
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !409
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !414
@.str.43 = private unnamed_addr constant [16 x i8] c"OMP_NUM_THREADS\00", align 1, !dbg !419
@.str.1.44 = private unnamed_addr constant [17 x i8] c"OMP_THREAD_LIMIT\00", align 1, !dbg !422
@.str.2.45 = private unnamed_addr constant [18 x i8] c"/proc/self/cgroup\00", align 1, !dbg !424
@.str.3.46 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !426
@.str.4.47 = private unnamed_addr constant [5 x i8] c"0::/\00", align 1, !dbg !428
@.str.5.52 = private unnamed_addr constant [13 x i8] c"%s%s/cpu.max\00", align 1, !dbg !430
@.str.6.53 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !435
@.str.7.54 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1, !dbg !437
@.str.8.48 = private unnamed_addr constant [34 x i8] c"/sys/fs/cgroup/cgroup.controllers\00", align 1, !dbg !439
@.str.9.49 = private unnamed_addr constant [15 x i8] c"/sys/fs/cgroup\00", align 1, !dbg !444
@.str.10.50 = private unnamed_addr constant [13 x i8] c"/proc/mounts\00", align 1, !dbg !446
@.str.11.51 = private unnamed_addr constant [8 x i8] c"cgroup2\00", align 1, !dbg !448
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !450
@.str.59 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !456
@.str.1.60 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !458
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !460
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !491
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !494
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !496
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !498
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !500
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !502
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !504
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !506
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !508
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !510
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.63, ptr @.str.1.64, ptr @.str.2.65, ptr @.str.3.66, ptr @.str.4.67, ptr @.str.5.68, ptr @.str.6.69, ptr @.str.7.70, ptr @.str.8.71, ptr @.str.9.72, ptr null], align 16, !dbg !512
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !537
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !551
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !589
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !596
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !553
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !598
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !541
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !558
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !560
@.str.12.76 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !562
@.str.13.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !564
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !566
@.str.81 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !604
@.str.1.82 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !607
@.str.2.83 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !609
@.str.3.84 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !611
@.str.4.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !613
@.str.5.86 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !615
@.str.6.87 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !620
@.str.7.88 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !622
@.str.8.89 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !624
@.str.9.90 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !626
@.str.10.91 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !631
@.str.11.92 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !636
@.str.12.93 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !641
@.str.13.94 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !643
@.str.14.95 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !648
@.str.15.96 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !653
@.str.16.97 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !658
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.102 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !663
@.str.18.103 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !665
@.str.19.104 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !667
@.str.20.105 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !669
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !671
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !673
@.str.23.106 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !675
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !680
@exit_failure = dso_local global i32 1, align 4, !dbg !688
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !694
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !697
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !699
@.str.122 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !701
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !704
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !707
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !722

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1049 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1053, metadata !DIExpression()), !dbg !1054
  %2 = icmp eq i32 %0, 0, !dbg !1055
  br i1 %2, label %8, label %3, !dbg !1057

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1058, !tbaa !1060
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !1058
  %6 = load ptr, ptr @program_name, align 8, !dbg !1058, !tbaa !1060
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !1058
  br label %33, !dbg !1058

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !1064
  %10 = load ptr, ptr @program_name, align 8, !dbg !1064, !tbaa !1060
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !1064
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !1066
  %13 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !1060
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1066
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !1067
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !1067
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !1068
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !1068
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !1069
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !1069
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !1070
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1071, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata !1090, metadata !1084, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr poison, metadata !1083, metadata !DIExpression()), !dbg !1088
  tail call void @emit_bug_reporting_address() #40, !dbg !1091
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %19, metadata !1086, metadata !DIExpression()), !dbg !1088
  %20 = icmp eq ptr %19, null, !dbg !1093
  br i1 %20, label %28, label %21, !dbg !1095

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #41, !dbg !1096
  %23 = icmp eq i32 %22, 0, !dbg !1096
  br i1 %23, label %28, label %24, !dbg !1097

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #40, !dbg !1098
  %26 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !1060
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !1098
  br label %28, !dbg !1100

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1087, metadata !DIExpression()), !dbg !1088
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !1101
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #40, !dbg !1101
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !1102
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #40, !dbg !1102
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1103
  unreachable, !dbg !1103
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1104 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1108 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1114 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1117 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !138 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !142, metadata !DIExpression()), !dbg !1121
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !1121
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1122, !tbaa !1123
  %3 = icmp eq i32 %2, -1, !dbg !1125
  br i1 %3, label %4, label %16, !dbg !1126

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #40, !dbg !1127
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !144, metadata !DIExpression()), !dbg !1128
  %6 = icmp eq ptr %5, null, !dbg !1129
  br i1 %6, label %14, label %7, !dbg !1130

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1131, !tbaa !1132
  %9 = icmp eq i8 %8, 0, !dbg !1131
  br i1 %9, label %14, label %10, !dbg !1133

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1134, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !1140, metadata !DIExpression()), !dbg !1141
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #41, !dbg !1143
  %12 = icmp eq i32 %11, 0, !dbg !1144
  %13 = zext i1 %12 to i32, !dbg !1133
  br label %14, !dbg !1133

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1145, !tbaa !1123
  br label %16, !dbg !1146

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1147
  %18 = icmp eq i32 %17, 0, !dbg !1147
  br i1 %18, label %22, label %19, !dbg !1149

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1150, !tbaa !1060
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1150
  br label %124, !dbg !1152

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !147, metadata !DIExpression()), !dbg !1121
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #41, !dbg !1153
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1154
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !149, metadata !DIExpression()), !dbg !1121
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !150, metadata !DIExpression()), !dbg !1121
  %26 = icmp eq ptr %25, null, !dbg !1156
  br i1 %26, label %54, label %27, !dbg !1157

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1158
  br i1 %28, label %54, label %29, !dbg !1159

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !151, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 0, metadata !155, metadata !DIExpression()), !dbg !1160
  %30 = icmp ult ptr %24, %25, !dbg !1161
  br i1 %30, label %31, label %54, !dbg !1162

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1121
  %33 = load ptr, ptr %32, align 8, !tbaa !1060
  br label %34, !dbg !1162

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !151, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !155, metadata !DIExpression()), !dbg !1160
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1163
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !151, metadata !DIExpression()), !dbg !1160
  %38 = load i8, ptr %35, align 1, !dbg !1163, !tbaa !1132
  %39 = sext i8 %38 to i64, !dbg !1163
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1163
  %41 = load i16, ptr %40, align 2, !dbg !1163, !tbaa !1164
  %42 = freeze i16 %41, !dbg !1166
  %43 = lshr i16 %42, 13, !dbg !1166
  %44 = and i16 %43, 1, !dbg !1166
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1167
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !155, metadata !DIExpression()), !dbg !1160
  %47 = icmp ult ptr %37, %25, !dbg !1161
  %48 = icmp ult i64 %46, 2, !dbg !1168
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1168
  br i1 %49, label %34, label %50, !dbg !1162, !llvm.loop !1169

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1171
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1173
  %53 = zext i1 %51 to i8, !dbg !1173
  br label %54, !dbg !1173

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1121
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1121
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !147, metadata !DIExpression()), !dbg !1121
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !150, metadata !DIExpression()), !dbg !1121
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #41, !dbg !1174
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !156, metadata !DIExpression()), !dbg !1121
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1175
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !157, metadata !DIExpression()), !dbg !1121
  br label %59, !dbg !1176

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1121
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1121
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !147, metadata !DIExpression()), !dbg !1121
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !157, metadata !DIExpression()), !dbg !1121
  %62 = load i8, ptr %60, align 1, !dbg !1177, !tbaa !1132
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1178

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1179
  %65 = load i8, ptr %64, align 1, !dbg !1182, !tbaa !1132
  %66 = icmp eq i8 %65, 45, !dbg !1183
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1184
  br label %68, !dbg !1184

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1121
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !147, metadata !DIExpression()), !dbg !1121
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1185
  %71 = load ptr, ptr %70, align 8, !dbg !1185, !tbaa !1060
  %72 = sext i8 %62 to i64, !dbg !1185
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1185
  %74 = load i16, ptr %73, align 2, !dbg !1185, !tbaa !1164
  %75 = and i16 %74, 8192, !dbg !1185
  %76 = icmp eq i16 %75, 0, !dbg !1185
  br i1 %76, label %92, label %77, !dbg !1187

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1188
  br i1 %78, label %94, label %79, !dbg !1191

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1192
  %81 = load i8, ptr %80, align 1, !dbg !1192, !tbaa !1132
  %82 = sext i8 %81 to i64, !dbg !1192
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1192
  %84 = load i16, ptr %83, align 2, !dbg !1192, !tbaa !1164
  %85 = and i16 %84, 8192, !dbg !1192
  %86 = icmp eq i16 %85, 0, !dbg !1192
  br i1 %86, label %87, label %94, !dbg !1193

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1194
  %89 = icmp ne i8 %88, 0, !dbg !1194
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1196
  br i1 %91, label %92, label %94, !dbg !1196

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1197
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !157, metadata !DIExpression()), !dbg !1121
  br label %59, !dbg !1176, !llvm.loop !1198

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1200
  %96 = load ptr, ptr @stdout, align 8, !dbg !1200, !tbaa !1060
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1200
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1134, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata !1090, metadata !1140, metadata !DIExpression()), !dbg !1219
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !214, metadata !DIExpression()), !dbg !1121
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #41, !dbg !1221
  %99 = icmp eq i32 %98, 0, !dbg !1221
  br i1 %99, label %103, label %100, !dbg !1223

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #41, !dbg !1224
  %102 = icmp eq i32 %101, 0, !dbg !1224
  br i1 %102, label %103, label %106, !dbg !1225

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1226
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1226
  br label %109, !dbg !1228

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1229
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1229
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1231, !tbaa !1060
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !1231
  %112 = load ptr, ptr @stdout, align 8, !dbg !1232, !tbaa !1060
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %112), !dbg !1232
  %114 = ptrtoint ptr %60 to i64, !dbg !1233
  %115 = sub i64 %114, %95, !dbg !1233
  %116 = load ptr, ptr @stdout, align 8, !dbg !1233, !tbaa !1060
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1233
  %118 = load ptr, ptr @stdout, align 8, !dbg !1234, !tbaa !1060
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !1234
  %120 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !1060
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %120), !dbg !1235
  %122 = load ptr, ptr @stdout, align 8, !dbg !1236, !tbaa !1060
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1236
  br label %124, !dbg !1237

124:                                              ; preds = %109, %19
  ret void, !dbg !1237
}

; Function Attrs: nounwind
declare !dbg !1238 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1242 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1246 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1248 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1251 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1254 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1257 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1260 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1266 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1267 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1273 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1279, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1280, metadata !DIExpression()), !dbg !1285
  %3 = load ptr, ptr %1, align 8, !dbg !1286, !tbaa !1060
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1287
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1288
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1289
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1290
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1281, metadata !DIExpression()), !dbg !1285
  br label %8, !dbg !1292

8:                                                ; preds = %19, %2
  %9 = phi i64 [ %23, %19 ], [ 0, %2 ]
  %10 = phi i32 [ %20, %19 ], [ 2, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1281, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1280, metadata !DIExpression()), !dbg !1285
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1282, metadata !DIExpression()), !dbg !1294
  switch i32 %11, label %24 [
    i32 -1, label %25
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %12
    i32 129, label %19
  ], !dbg !1295

12:                                               ; preds = %8, %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1281, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1280, metadata !DIExpression()), !dbg !1285
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1293
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1282, metadata !DIExpression()), !dbg !1294
  switch i32 %13, label %24 [
    i32 -1, label %25
    i32 -130, label %14
    i32 -131, label %15
    i32 128, label %12
    i32 129, label %19
  ], !dbg !1295, !llvm.loop !1296

14:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #44, !dbg !1298
  unreachable, !dbg !1298

15:                                               ; preds = %8, %12
  %16 = load ptr, ptr @stdout, align 8, !dbg !1300, !tbaa !1060
  %17 = load ptr, ptr @Version, align 8, !dbg !1300, !tbaa !1060
  %18 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #40, !dbg !1300
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %18, ptr noundef null) #40, !dbg !1300
  tail call void @exit(i32 noundef 0) #42, !dbg !1300
  unreachable, !dbg !1300

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %10, %8 ], [ 0, %12 ], !dbg !1301
  %21 = load ptr, ptr @optarg, align 8, !dbg !1302, !tbaa !1060
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !1303
  %23 = tail call i64 @xnumtoumax(ptr noundef %21, i32 noundef 10, i64 noundef 0, i64 noundef -1, ptr noundef nonnull @.str.8, ptr noundef %22, i32 noundef 0, i32 noundef 2) #40, !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1280, metadata !DIExpression()), !dbg !1285
  br label %8, !dbg !1305

24:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #44, !dbg !1306
  unreachable, !dbg !1306

25:                                               ; preds = %8, %12
  %26 = phi i32 [ 0, %12 ], [ %10, %8 ], !dbg !1301
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1281, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1280, metadata !DIExpression()), !dbg !1285
  %27 = load i32, ptr @optind, align 4, !dbg !1307, !tbaa !1123
  %28 = icmp eq i32 %27, %0, !dbg !1309
  br i1 %28, label %36, label %29, !dbg !1310

29:                                               ; preds = %25
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !1311
  %31 = load i32, ptr @optind, align 4, !dbg !1311, !tbaa !1123
  %32 = sext i32 %31 to i64, !dbg !1311
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32, !dbg !1311
  %34 = load ptr, ptr %33, align 8, !dbg !1311, !tbaa !1060
  %35 = tail call ptr @quote(ptr noundef %34) #40, !dbg !1311
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %30, ptr noundef %35) #40, !dbg !1311
  tail call void @usage(i32 noundef 1) #44, !dbg !1313
  unreachable, !dbg !1313

36:                                               ; preds = %25
  %37 = tail call i64 @num_processors(i32 noundef %26) #40, !dbg !1314
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1284, metadata !DIExpression()), !dbg !1285
  %38 = icmp ult i64 %9, %37, !dbg !1315
  %39 = sub i64 %37, %9, !dbg !1317
  %40 = select i1 %38, i64 %39, i64 1, !dbg !1317
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1284, metadata !DIExpression()), !dbg !1285
  %41 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.15, i64 noundef %40) #40, !dbg !1318
  ret i32 0, !dbg !1319
}

; Function Attrs: nounwind
declare !dbg !1320 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1323 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1324 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1327 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1333 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1335, metadata !DIExpression()), !dbg !1336
  store ptr %0, ptr @file_name, align 8, !dbg !1337, !tbaa !1060
  ret void, !dbg !1338
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1339 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1343, metadata !DIExpression()), !dbg !1344
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1345, !tbaa !1346
  ret void, !dbg !1348
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1349 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1354, !tbaa !1060
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1355
  %3 = icmp eq i32 %2, 0, !dbg !1356
  br i1 %3, label %22, label %4, !dbg !1357

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1358, !tbaa !1346, !range !1359, !noundef !1090
  %6 = icmp eq i8 %5, 0, !dbg !1358
  br i1 %6, label %11, label %7, !dbg !1360

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1361
  %9 = load i32, ptr %8, align 4, !dbg !1361, !tbaa !1123
  %10 = icmp eq i32 %9, 32, !dbg !1362
  br i1 %10, label %22, label %11, !dbg !1363

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1364
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1351, metadata !DIExpression()), !dbg !1365
  %13 = load ptr, ptr @file_name, align 8, !dbg !1366, !tbaa !1060
  %14 = icmp eq ptr %13, null, !dbg !1366
  %15 = tail call ptr @__errno_location() #43, !dbg !1368
  %16 = load i32, ptr %15, align 4, !dbg !1368, !tbaa !1123
  br i1 %14, label %19, label %17, !dbg !1369

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1370
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #40, !dbg !1370
  br label %20, !dbg !1370

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #40, !dbg !1371
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1372, !tbaa !1123
  tail call void @_exit(i32 noundef %21) #42, !dbg !1373
  unreachable, !dbg !1373

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1374, !tbaa !1060
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1376
  %25 = icmp eq i32 %24, 0, !dbg !1377
  br i1 %25, label %28, label %26, !dbg !1378

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1379, !tbaa !1123
  tail call void @_exit(i32 noundef %27) #42, !dbg !1380
  unreachable, !dbg !1380

28:                                               ; preds = %22
  ret void, !dbg !1381
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1382 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1386 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1388 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1392, metadata !DIExpression()), !dbg !1396
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1393, metadata !DIExpression()), !dbg !1396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1394, metadata !DIExpression()), !dbg !1396
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1395, metadata !DIExpression()), !dbg !1396
  tail call fastcc void @flush_stdout(), !dbg !1397
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1398, !tbaa !1060
  %6 = icmp eq ptr %5, null, !dbg !1398
  br i1 %6, label %8, label %7, !dbg !1400

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !1401
  br label %12, !dbg !1401

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1402, !tbaa !1060
  %10 = tail call ptr @getprogname() #41, !dbg !1402
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.27, ptr noundef %10) #40, !dbg !1402
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1404
  ret void, !dbg !1405
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1406 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1408, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i32 1, metadata !1410, metadata !DIExpression()), !dbg !1415
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1418
  %2 = icmp slt i32 %1, 0, !dbg !1419
  br i1 %2, label %6, label %3, !dbg !1420

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1421, !tbaa !1060
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1421
  br label %6, !dbg !1421

6:                                                ; preds = %3, %0
  ret void, !dbg !1422
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1423 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1429
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1425, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1426, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1427, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1428, metadata !DIExpression()), !dbg !1430
  %6 = load ptr, ptr @stderr, align 8, !dbg !1431, !tbaa !1060
  call void @llvm.dbg.value(metadata ptr %6, metadata !1432, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %2, metadata !1472, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata ptr %3, metadata !1473, metadata !DIExpression()), !dbg !1474
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !1476
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1477, !tbaa !1123
  %9 = add i32 %8, 1, !dbg !1477
  store i32 %9, ptr @error_message_count, align 4, !dbg !1477, !tbaa !1123
  %10 = icmp eq i32 %1, 0, !dbg !1478
  br i1 %10, label %20, label %11, !dbg !1480

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1481, metadata !DIExpression(), metadata !1429, metadata ptr %5, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %1, metadata !1484, metadata !DIExpression()), !dbg !1489
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1491
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1492
  call void @llvm.dbg.value(metadata ptr %12, metadata !1485, metadata !DIExpression()), !dbg !1489
  %13 = icmp eq ptr %12, null, !dbg !1493
  br i1 %13, label %14, label %16, !dbg !1495

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.28, ptr noundef nonnull @.str.5.29, i32 noundef 5) #40, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %15, metadata !1485, metadata !DIExpression()), !dbg !1489
  br label %16, !dbg !1497

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1489
  call void @llvm.dbg.value(metadata ptr %17, metadata !1485, metadata !DIExpression()), !dbg !1489
  %18 = load ptr, ptr @stderr, align 8, !dbg !1498, !tbaa !1060
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.30, ptr noundef %17) #40, !dbg !1498
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1499
  br label %20, !dbg !1500

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1501, !tbaa !1060
  call void @llvm.dbg.value(metadata i32 10, metadata !1502, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %21, metadata !1508, metadata !DIExpression()), !dbg !1509
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1511
  %23 = load ptr, ptr %22, align 8, !dbg !1511, !tbaa !1512
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1511
  %25 = load ptr, ptr %24, align 8, !dbg !1511, !tbaa !1515
  %26 = icmp ult ptr %23, %25, !dbg !1511
  br i1 %26, label %29, label %27, !dbg !1511, !prof !1516

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !1511
  br label %31, !dbg !1511

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1511
  store ptr %30, ptr %22, align 8, !dbg !1511, !tbaa !1512
  store i8 10, ptr %23, align 1, !dbg !1511, !tbaa !1132
  br label %31, !dbg !1511

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1517, !tbaa !1060
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !1517
  %34 = icmp eq i32 %0, 0, !dbg !1518
  br i1 %34, label %36, label %35, !dbg !1520

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !1521
  unreachable, !dbg !1521

36:                                               ; preds = %31
  ret void, !dbg !1522
}

declare !dbg !1523 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1526 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1529 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1532 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1535 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1539 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1552
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1546, metadata !DIExpression(), metadata !1552, metadata ptr %4, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1543, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1544, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1553
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !1554
  call void @llvm.va_start(ptr nonnull %4), !dbg !1555
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #45, !dbg !1556
  call void @llvm.va_end(ptr nonnull %4), !dbg !1557
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !1558
  ret void, !dbg !1558
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !378 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !389, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !390, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !392, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !393, metadata !DIExpression()), !dbg !1559
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !394, metadata !DIExpression()), !dbg !1559
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1560, !tbaa !1123
  %8 = icmp eq i32 %7, 0, !dbg !1560
  br i1 %8, label %23, label %9, !dbg !1562

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1563, !tbaa !1123
  %11 = icmp eq i32 %10, %3, !dbg !1566
  br i1 %11, label %12, label %22, !dbg !1567

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1568, !tbaa !1060
  %14 = icmp eq ptr %13, %2, !dbg !1569
  br i1 %14, label %36, label %15, !dbg !1570

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1571
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1572
  br i1 %18, label %19, label %22, !dbg !1572

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1573
  %21 = icmp eq i32 %20, 0, !dbg !1574
  br i1 %21, label %36, label %22, !dbg !1575

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1576, !tbaa !1060
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1577, !tbaa !1123
  br label %23, !dbg !1578

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1579
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1580, !tbaa !1060
  %25 = icmp eq ptr %24, null, !dbg !1580
  br i1 %25, label %27, label %26, !dbg !1582

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !1583
  br label %31, !dbg !1583

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1584, !tbaa !1060
  %29 = tail call ptr @getprogname() #41, !dbg !1584
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.33, ptr noundef %29) #40, !dbg !1584
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1586, !tbaa !1060
  %33 = icmp eq ptr %2, null, !dbg !1586
  %34 = select i1 %33, ptr @.str.3.34, ptr @.str.2.35, !dbg !1586
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !1586
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1587
  br label %36, !dbg !1588

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1588
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1589 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1598, metadata !DIExpression(), metadata !1599, metadata ptr %6, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1593, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1594, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1595, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1596, metadata !DIExpression()), !dbg !1600
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !1601
  call void @llvm.va_start(ptr nonnull %6), !dbg !1602
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #45, !dbg !1603
  call void @llvm.va_end(ptr nonnull %6), !dbg !1604
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !1605
  ret void, !dbg !1605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1606 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1609, !tbaa !1060
  ret ptr %1, !dbg !1610
}

; Function Attrs: nounwind uwtable
define dso_local i64 @num_processors(i32 noundef %0) local_unnamed_addr #10 !dbg !1611 {
  %2 = alloca ptr, align 8, !DIAssignID !1627
  %3 = alloca i64, align 8, !DIAssignID !1628
  %4 = alloca ptr, align 8, !DIAssignID !1629
  %5 = alloca i64, align 8, !DIAssignID !1630
  %6 = alloca [4096 x i8], align 16, !DIAssignID !1631
  %7 = alloca i64, align 8, !DIAssignID !1632
  %8 = alloca i64, align 8, !DIAssignID !1633
  %9 = alloca ptr, align 8, !DIAssignID !1634
  %10 = alloca ptr, align 8, !DIAssignID !1635
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1615, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 -1, metadata !1616, metadata !DIExpression()), !dbg !1636
  %11 = icmp eq i32 %0, 2, !dbg !1637
  br i1 %11, label %12, label %69, !dbg !1638

12:                                               ; preds = %1
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.43) #40, !dbg !1639
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1635, metadata ptr %10, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %13, metadata !1647, metadata !DIExpression()), !dbg !1651
  %14 = icmp eq ptr %13, null, !dbg !1652
  br i1 %14, label %36, label %15, !dbg !1654

15:                                               ; preds = %12, %18
  %16 = phi ptr [ %19, %18 ], [ %13, %12 ]
  call void @llvm.dbg.value(metadata ptr %16, metadata !1647, metadata !DIExpression()), !dbg !1651
  %17 = load i8, ptr %16, align 1, !dbg !1655, !tbaa !1132
  switch i8 %17, label %20 [
    i8 0, label %35
    i8 32, label %18
    i8 9, label %18
    i8 10, label %18
    i8 11, label %18
    i8 12, label %18
    i8 13, label %18
  ], !dbg !1656

18:                                               ; preds = %15, %15, %15, %15, %15, %15
  %19 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1657
  call void @llvm.dbg.value(metadata ptr %19, metadata !1647, metadata !DIExpression()), !dbg !1651
  br label %15, !dbg !1658, !llvm.loop !1659

20:                                               ; preds = %15
  %21 = sext i8 %17 to i32, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %21, metadata !1661, metadata !DIExpression()), !dbg !1667
  %22 = add nsw i32 %21, -48, !dbg !1669
  %23 = icmp ult i32 %22, 10, !dbg !1669
  br i1 %23, label %24, label %35, !dbg !1670

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #40, !dbg !1671
  %25 = call i64 @strtoul(ptr noundef nonnull %16, ptr noundef nonnull %10, i32 noundef 10) #40, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %25, metadata !1648, metadata !DIExpression()), !dbg !1649
  %26 = load ptr, ptr %10, align 8, !tbaa !1060
  br label %27, !dbg !1673

27:                                               ; preds = %31, %24
  %28 = phi ptr [ %32, %31 ], [ %26, %24 ]
  %29 = load i8, ptr %28, align 1, !dbg !1674, !tbaa !1132
  switch i8 %29, label %33 [
    i8 0, label %30
    i8 32, label %31
    i8 9, label %31
    i8 10, label %31
    i8 11, label %31
    i8 12, label %31
    i8 13, label %31
  ], !dbg !1675

30:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #40, !dbg !1676
  br label %36

31:                                               ; preds = %27, %27, %27, %27, %27, %27
  %32 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1677
  call void @llvm.dbg.assign(metadata ptr %32, metadata !1640, metadata !DIExpression(), metadata !1678, metadata ptr %10, metadata !DIExpression()), !dbg !1649
  br label %27, !dbg !1673, !llvm.loop !1679

33:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #40, !dbg !1676
  %34 = icmp eq i8 %29, 44
  br i1 %34, label %36, label %35

35:                                               ; preds = %15, %33, %20
  br label %36, !dbg !1680

36:                                               ; preds = %12, %30, %33, %35
  %37 = phi i64 [ 0, %35 ], [ 0, %12 ], [ %25, %30 ], [ %25, %33 ], !dbg !1651
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1617, metadata !DIExpression()), !dbg !1681
  %38 = tail call ptr @getenv(ptr noundef nonnull @.str.1.44) #40, !dbg !1682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1634, metadata ptr %9, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata ptr %38, metadata !1647, metadata !DIExpression()), !dbg !1685
  %39 = icmp eq ptr %38, null, !dbg !1686
  br i1 %39, label %64, label %40, !dbg !1687

40:                                               ; preds = %36, %43
  %41 = phi ptr [ %44, %43 ], [ %38, %36 ]
  call void @llvm.dbg.value(metadata ptr %41, metadata !1647, metadata !DIExpression()), !dbg !1685
  %42 = load i8, ptr %41, align 1, !dbg !1688, !tbaa !1132
  switch i8 %42, label %45 [
    i8 0, label %64
    i8 32, label %43
    i8 9, label %43
    i8 10, label %43
    i8 11, label %43
    i8 12, label %43
    i8 13, label %43
  ], !dbg !1689

43:                                               ; preds = %40, %40, %40, %40, %40, %40
  %44 = getelementptr inbounds i8, ptr %41, i64 1, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %44, metadata !1647, metadata !DIExpression()), !dbg !1685
  br label %40, !dbg !1691, !llvm.loop !1692

45:                                               ; preds = %40
  %46 = sext i8 %42 to i32, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %46, metadata !1661, metadata !DIExpression()), !dbg !1694
  %47 = add nsw i32 %46, -48, !dbg !1696
  %48 = icmp ult i32 %47, 10, !dbg !1696
  br i1 %48, label %49, label %64, !dbg !1697

49:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !1698
  %50 = call i64 @strtoul(ptr noundef nonnull %41, ptr noundef nonnull %9, i32 noundef 10) #40, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %50, metadata !1648, metadata !DIExpression()), !dbg !1683
  %51 = freeze i64 %50, !dbg !1700
  %52 = load ptr, ptr %9, align 8, !tbaa !1060
  br label %53, !dbg !1702

53:                                               ; preds = %58, %49
  %54 = phi ptr [ %59, %58 ], [ %52, %49 ]
  %55 = load i8, ptr %54, align 1, !dbg !1703, !tbaa !1132
  switch i8 %55, label %60 [
    i8 0, label %56
    i8 32, label %58
    i8 9, label %58
    i8 10, label %58
    i8 11, label %58
    i8 12, label %58
    i8 13, label %58
  ], !dbg !1704

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !1705
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1620, metadata !DIExpression()), !dbg !1681
  %57 = icmp eq i64 %51, 0, !dbg !1700
  br i1 %57, label %64, label %65, !dbg !1706

58:                                               ; preds = %53, %53, %53, %53, %53, %53
  %59 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1707
  call void @llvm.dbg.assign(metadata ptr %59, metadata !1640, metadata !DIExpression(), metadata !1708, metadata ptr %9, metadata !DIExpression()), !dbg !1683
  br label %53, !dbg !1702, !llvm.loop !1709

60:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !1705
  %61 = icmp ne i8 %55, 44
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1620, metadata !DIExpression()), !dbg !1681
  %62 = icmp eq i64 %51, 0
  %63 = or i1 %62, %61
  br i1 %63, label %64, label %65

64:                                               ; preds = %40, %45, %60, %36, %56
  br label %65, !dbg !1706

65:                                               ; preds = %60, %56, %64
  %66 = phi i64 [ -1, %64 ], [ %51, %56 ], [ %51, %60 ]
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1620, metadata !DIExpression()), !dbg !1681
  %67 = icmp eq i64 %37, 0, !dbg !1710
  %68 = tail call i64 @llvm.umin.i64(i64 %37, i64 %66), !dbg !1712
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !1615, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !1616, metadata !DIExpression()), !dbg !1636
  br i1 %67, label %69, label %223

69:                                               ; preds = %65, %1
  %70 = phi i64 [ %66, %65 ], [ -1, %1 ], !dbg !1713
  %71 = phi i32 [ 1, %65 ], [ %0, %1 ]
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !1615, metadata !DIExpression()), !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !1616, metadata !DIExpression()), !dbg !1636
  %72 = icmp eq i32 %71, 1, !dbg !1714
  %73 = icmp ugt i64 %70, 1
  %74 = and i1 %73, %72, !dbg !1715
  br i1 %74, label %75, label %199, !dbg !1715

75:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i64 -1, metadata !1716, metadata !DIExpression()), !dbg !1721
  %76 = tail call i32 @sched_getscheduler(i32 noundef 0) #40, !dbg !1723
  %77 = add i32 %76, 1, !dbg !1724
  %78 = icmp ult i32 %77, 8, !dbg !1724
  br i1 %78, label %191, label %79, !dbg !1724

79:                                               ; preds = %191, %75
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1725, metadata !DIExpression(), metadata !1627, metadata ptr %2, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1765, metadata !DIExpression(), metadata !1628, metadata ptr %3, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1775, metadata !DIExpression(), metadata !1629, metadata ptr %4, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1776, metadata !DIExpression(), metadata !1630, metadata ptr %5, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1777, metadata !DIExpression(), metadata !1631, metadata ptr %6, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1782, metadata !DIExpression(), metadata !1632, metadata ptr %7, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1785, metadata !DIExpression(), metadata !1633, metadata ptr %8, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i64 -1, metadata !1728, metadata !DIExpression()), !dbg !1790
  %80 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull @.str.2.45, ptr noundef nonnull @.str.3.46) #40, !dbg !1795
  call void @llvm.dbg.value(metadata ptr %80, metadata !1729, metadata !DIExpression()), !dbg !1790
  %81 = icmp eq ptr %80, null, !dbg !1796
  br i1 %81, label %196, label %82, !dbg !1798

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40, !dbg !1799
  store ptr null, ptr %2, align 8, !dbg !1800, !tbaa !1060, !DIAssignID !1801
  call void @llvm.dbg.assign(metadata ptr null, metadata !1725, metadata !DIExpression(), metadata !1801, metadata ptr %2, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1802
  store i64 0, ptr %3, align 8, !dbg !1803, !tbaa !1804, !DIAssignID !1805
  call void @llvm.dbg.assign(metadata i64 0, metadata !1765, metadata !DIExpression(), metadata !1805, metadata ptr %3, metadata !DIExpression()), !dbg !1790
  br label %83, !dbg !1806

83:                                               ; preds = %88, %82
  call void @llvm.dbg.value(metadata ptr %2, metadata !1807, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %3, metadata !1812, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata ptr %80, metadata !1813, metadata !DIExpression()), !dbg !1814
  %84 = call i64 @__getdelim(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10, ptr noundef nonnull %80) #40, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %84, metadata !1766, metadata !DIExpression()), !dbg !1790
  %85 = icmp eq i64 %84, -1, !dbg !1817
  br i1 %85, label %86, label %88, !dbg !1806

86:                                               ; preds = %83
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1790
  %87 = call i32 @rpl_fclose(ptr noundef nonnull %80) #40, !dbg !1818
  call void @llvm.dbg.value(metadata ptr null, metadata !1774, metadata !DIExpression()), !dbg !1790
  br label %128, !dbg !1819

88:                                               ; preds = %83
  %89 = load ptr, ptr %2, align 8, !dbg !1821, !tbaa !1060
  %90 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.4.47, i64 noundef 4) #41, !dbg !1822
  %91 = icmp eq i32 %90, 0, !dbg !1823
  br i1 %91, label %92, label %83, !dbg !1824, !llvm.loop !1825

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, ptr %89, i64 %84, !dbg !1827
  %94 = getelementptr inbounds i8, ptr %93, i64 -1, !dbg !1828
  call void @llvm.dbg.value(metadata ptr %94, metadata !1770, metadata !DIExpression()), !dbg !1829
  %95 = load i8, ptr %94, align 1, !dbg !1830, !tbaa !1132
  %96 = icmp eq i8 %95, 10, !dbg !1832
  br i1 %96, label %97, label %99, !dbg !1833

97:                                               ; preds = %92
  store i8 0, ptr %94, align 1, !dbg !1834, !tbaa !1132
  %98 = load ptr, ptr %2, align 8, !dbg !1835, !tbaa !1060
  br label %99, !dbg !1836

99:                                               ; preds = %97, %92
  %100 = phi ptr [ %98, %97 ], [ %89, %92 ], !dbg !1835
  %101 = getelementptr inbounds i8, ptr %100, i64 3, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %101, metadata !1764, metadata !DIExpression()), !dbg !1790
  %102 = call i32 @rpl_fclose(ptr noundef nonnull %80) #40, !dbg !1818
  call void @llvm.dbg.value(metadata ptr null, metadata !1774, metadata !DIExpression()), !dbg !1790
  %103 = call i32 @access(ptr noundef nonnull @.str.8.48, i32 noundef 0) #40, !dbg !1838
  %104 = icmp eq i32 %103, 0, !dbg !1858
  br i1 %104, label %105, label %107, !dbg !1859

105:                                              ; preds = %99
  %106 = call noalias dereferenceable_or_null(15) ptr @strdup(ptr noundef nonnull @.str.9.49) #40, !dbg !1860
  br label %125, !dbg !1861

107:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr null, metadata !1844, metadata !DIExpression()), !dbg !1862
  %108 = call ptr @setmntent(ptr noundef nonnull @.str.10.50, ptr noundef nonnull @.str.3.46) #40, !dbg !1863
  call void @llvm.dbg.value(metadata ptr %108, metadata !1845, metadata !DIExpression()), !dbg !1862
  %109 = icmp eq ptr %108, null, !dbg !1864
  br i1 %109, label %128, label %110, !dbg !1866

110:                                              ; preds = %107, %113
  %111 = call ptr @getmntent(ptr noundef nonnull %108) #40, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %111, metadata !1846, metadata !DIExpression()), !dbg !1862
  %112 = icmp eq ptr %111, null, !dbg !1868
  br i1 %112, label %122, label %113, !dbg !1869

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.mntent, ptr %111, i64 0, i32 2, !dbg !1870
  %115 = load ptr, ptr %114, align 8, !dbg !1870, !tbaa !1873
  call void @llvm.dbg.value(metadata ptr %115, metadata !1875, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata ptr @.str.11.51, metadata !1878, metadata !DIExpression()), !dbg !1879
  %116 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %115, ptr noundef nonnull dereferenceable(8) @.str.11.51) #41, !dbg !1881
  %117 = icmp eq i32 %116, 0, !dbg !1882
  br i1 %117, label %118, label %110, !dbg !1883, !llvm.loop !1884

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.mntent, ptr %111, i64 0, i32 1, !dbg !1886
  %120 = load ptr, ptr %119, align 8, !dbg !1886, !tbaa !1888
  %121 = call noalias ptr @strdup(ptr noundef %120) #40, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %121, metadata !1844, metadata !DIExpression()), !dbg !1862
  br label %122, !dbg !1890

122:                                              ; preds = %110, %118
  %123 = phi ptr [ %121, %118 ], [ null, %110 ], !dbg !1862
  call void @llvm.dbg.value(metadata ptr %123, metadata !1844, metadata !DIExpression()), !dbg !1862
  %124 = call i32 @endmntent(ptr noundef nonnull %108) #40, !dbg !1891
  br label %125

125:                                              ; preds = %122, %105
  %126 = phi ptr [ %106, %105 ], [ %123, %122 ], !dbg !1862
  call void @llvm.dbg.value(metadata ptr %126, metadata !1774, metadata !DIExpression()), !dbg !1790
  %127 = icmp eq ptr %126, null, !dbg !1892
  br i1 %127, label %128, label %129, !dbg !1893

128:                                              ; preds = %125, %107, %86
  call void @llvm.dbg.value(metadata ptr null, metadata !1774, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata ptr null, metadata !1764, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1894
  store ptr null, ptr %4, align 8, !dbg !1895, !tbaa !1060, !DIAssignID !1896
  call void @llvm.dbg.assign(metadata ptr null, metadata !1775, metadata !DIExpression(), metadata !1896, metadata ptr %4, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !1897
  store i64 0, ptr %5, align 8, !dbg !1898, !tbaa !1804, !DIAssignID !1899
  call void @llvm.dbg.assign(metadata i64 0, metadata !1776, metadata !DIExpression(), metadata !1899, metadata ptr %5, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 -1, metadata !1728, metadata !DIExpression()), !dbg !1790
  br label %186, !dbg !1900

129:                                              ; preds = %125
  call void @llvm.dbg.value(metadata ptr %126, metadata !1774, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata ptr %101, metadata !1764, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1894
  store ptr null, ptr %4, align 8, !dbg !1895, !tbaa !1060, !DIAssignID !1896
  call void @llvm.dbg.assign(metadata ptr null, metadata !1775, metadata !DIExpression(), metadata !1896, metadata ptr %4, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !1897
  store i64 0, ptr %5, align 8, !dbg !1898, !tbaa !1804, !DIAssignID !1899
  call void @llvm.dbg.assign(metadata i64 0, metadata !1776, metadata !DIExpression(), metadata !1899, metadata ptr %5, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 -1, metadata !1728, metadata !DIExpression()), !dbg !1790
  %130 = getelementptr inbounds i8, ptr %100, i64 4
  %131 = load i8, ptr %101, align 1, !dbg !1901, !tbaa !1132
  %132 = icmp eq i8 %131, 0, !dbg !1900
  br i1 %132, label %186, label %133, !dbg !1902

133:                                              ; preds = %129, %182
  %134 = phi i64 [ %172, %182 ], [ -1, %129 ]
  call void @llvm.dbg.value(metadata i64 %134, metadata !1728, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #40, !dbg !1903
  %135 = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %6, i64 noundef 4096, i32 noundef 1, i64 noundef 4096, ptr noundef nonnull @.str.5.52, ptr noundef nonnull %126, ptr noundef nonnull %101) #40, !dbg !1904
  %136 = call noalias ptr @rpl_fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.3.46) #40, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %136, metadata !1729, metadata !DIExpression()), !dbg !1790
  %137 = icmp eq ptr %136, null, !dbg !1906
  br i1 %137, label %171, label %138, !dbg !1907

138:                                              ; preds = %133
  call void @llvm.dbg.value(metadata ptr %4, metadata !1807, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata ptr %5, metadata !1812, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata ptr %136, metadata !1813, metadata !DIExpression()), !dbg !1908
  %139 = call i64 @__getdelim(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 10, ptr noundef nonnull %136) #40, !dbg !1910
  %140 = icmp eq i64 %139, -1, !dbg !1911
  br i1 %140, label %168, label %141, !dbg !1912

141:                                              ; preds = %138
  %142 = load ptr, ptr %4, align 8, !dbg !1913, !tbaa !1060
  %143 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %142, ptr noundef nonnull dereferenceable(4) @.str.6.53, i64 noundef 3) #41, !dbg !1914
  %144 = icmp eq i32 %143, 0, !dbg !1915
  br i1 %144, label %168, label %145, !dbg !1916

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !1917
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #40, !dbg !1917
  %146 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %142, ptr noundef nonnull @.str.7.54, ptr noundef nonnull %7, ptr noundef nonnull %8) #40, !dbg !1918
  %147 = icmp eq i32 %146, 2, !dbg !1919
  %148 = load i64, ptr %8, align 8
  %149 = icmp ne i64 %148, 0
  %150 = select i1 %147, i1 %149, i1 false, !dbg !1920
  br i1 %150, label %151, label %166, !dbg !1920

151:                                              ; preds = %145
  %152 = load i64, ptr %7, align 8, !dbg !1921, !tbaa !1804
  %153 = sitofp i64 %152 to double, !dbg !1922
  %154 = sitofp i64 %148 to double, !dbg !1923
  %155 = fdiv double %153, %154, !dbg !1924
  call void @llvm.dbg.value(metadata double %155, metadata !1786, metadata !DIExpression()), !dbg !1925
  %156 = icmp eq i64 %134, -1, !dbg !1926
  %157 = uitofp i64 %134 to double
  %158 = fcmp olt double %155, %157
  %159 = select i1 %156, i1 true, i1 %158, !dbg !1928
  br i1 %159, label %160, label %166, !dbg !1928

160:                                              ; preds = %151
  %161 = fadd double %155, 5.000000e-01, !dbg !1929
  %162 = fptosi double %161 to i64, !dbg !1929
  %163 = call i64 @llvm.smax.i64(i64 %162, i64 1), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %163, metadata !1728, metadata !DIExpression()), !dbg !1790
  %164 = icmp slt i64 %162, 2, !dbg !1931
  br i1 %164, label %165, label %166, !dbg !1933

165:                                              ; preds = %160
  store i8 0, ptr %101, align 1, !dbg !1934, !tbaa !1132
  br label %166, !dbg !1935

166:                                              ; preds = %165, %160, %151, %145
  %167 = phi i64 [ %134, %145 ], [ 1, %165 ], [ %163, %160 ], [ %134, %151 ], !dbg !1790
  call void @llvm.dbg.value(metadata i64 %167, metadata !1728, metadata !DIExpression()), !dbg !1790
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #40, !dbg !1936
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !1936
  br label %168, !dbg !1937

168:                                              ; preds = %166, %141, %138
  %169 = phi i64 [ %134, %138 ], [ %134, %141 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i64 %169, metadata !1728, metadata !DIExpression()), !dbg !1790
  %170 = call i32 @rpl_fclose(ptr noundef nonnull %136) #40, !dbg !1938
  br label %171, !dbg !1938

171:                                              ; preds = %168, %133
  %172 = phi i64 [ %169, %168 ], [ %134, %133 ]
  %173 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %101, i32 noundef 47) #41, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %173, metadata !1789, metadata !DIExpression()), !dbg !1793
  %174 = icmp eq ptr %173, null, !dbg !1941
  br i1 %174, label %175, label %176, !dbg !1943

175:                                              ; preds = %171
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #40, !dbg !1944
  br label %186

176:                                              ; preds = %171
  %177 = icmp eq ptr %173, %101, !dbg !1945
  br i1 %177, label %178, label %181, !dbg !1947

178:                                              ; preds = %176
  %179 = load i8, ptr %130, align 1, !dbg !1948, !tbaa !1132
  %180 = icmp eq i8 %179, 0, !dbg !1948
  br i1 %180, label %181, label %182, !dbg !1949

181:                                              ; preds = %178, %176
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi ptr [ %173, %181 ], [ %130, %178 ]
  store i8 0, ptr %183, align 1, !dbg !1950, !tbaa !1132
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #40, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %172, metadata !1728, metadata !DIExpression()), !dbg !1790
  %184 = load i8, ptr %101, align 1, !dbg !1901, !tbaa !1132
  %185 = icmp eq i8 %184, 0, !dbg !1900
  br i1 %185, label %186, label %133, !dbg !1902

186:                                              ; preds = %182, %175, %129, %128
  %187 = phi ptr [ %126, %175 ], [ null, %128 ], [ %126, %129 ], [ %126, %182 ]
  %188 = phi i64 [ %172, %175 ], [ -1, %128 ], [ -1, %129 ], [ %172, %182 ], !dbg !1790
  call void @llvm.dbg.value(metadata i64 %188, metadata !1728, metadata !DIExpression()), !dbg !1790
  %189 = load ptr, ptr %4, align 8, !dbg !1951, !tbaa !1060
  call void @free(ptr noundef %189) #40, !dbg !1952
  call void @free(ptr noundef %187) #40, !dbg !1953
  %190 = load ptr, ptr %2, align 8, !dbg !1954, !tbaa !1060
  call void @free(ptr noundef %190) #40, !dbg !1955
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1956
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40, !dbg !1956
  br label %196

191:                                              ; preds = %75
  %192 = trunc i32 %77 to i8, !dbg !1724
  %193 = lshr i8 -115, %192, !dbg !1724
  %194 = and i8 %193, 1, !dbg !1724
  %195 = icmp eq i8 %194, 0, !dbg !1724
  br i1 %195, label %79, label %196, !dbg !1724

196:                                              ; preds = %191, %79, %186
  %197 = phi i64 [ %188, %186 ], [ -1, %79 ], [ -1, %191 ], !dbg !1957
  call void @llvm.dbg.value(metadata i64 %197, metadata !1716, metadata !DIExpression()), !dbg !1721
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1621, metadata !DIExpression()), !dbg !1958
  %198 = call i64 @llvm.umin.i64(i64 %197, i64 %70), !dbg !1959
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !1616, metadata !DIExpression()), !dbg !1636
  br label %199, !dbg !1960

199:                                              ; preds = %196, %69
  %200 = phi i64 [ %198, %196 ], [ %70, %69 ], !dbg !1636
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !1616, metadata !DIExpression()), !dbg !1636
  %201 = icmp ugt i64 %200, 1, !dbg !1961
  br i1 %201, label %202, label %223, !dbg !1962

202:                                              ; preds = %199
  call void @llvm.dbg.value(metadata i32 %71, metadata !1963, metadata !DIExpression()), !dbg !1978
  br i1 %72, label %203, label %209, !dbg !1980

203:                                              ; preds = %202
  %204 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1981
  call void @llvm.dbg.value(metadata i64 %204, metadata !1966, metadata !DIExpression()), !dbg !1982
  %205 = icmp eq i64 %204, 0, !dbg !1983
  br i1 %205, label %206, label %220

206:                                              ; preds = %203
  %207 = call i64 @sysconf(i32 noundef 84) #40, !dbg !1985
  call void @llvm.dbg.value(metadata i64 %207, metadata !1970, metadata !DIExpression()), !dbg !1986
  %208 = icmp slt i64 %207, 1, !dbg !1987
  br i1 %208, label %219, label %220

209:                                              ; preds = %202
  %210 = call i64 @sysconf(i32 noundef 83) #40, !dbg !1989
  call void @llvm.dbg.value(metadata i64 %210, metadata !1972, metadata !DIExpression()), !dbg !1990
  %211 = add i64 %210, -1, !dbg !1991
  %212 = icmp ult i64 %211, 2, !dbg !1991
  br i1 %212, label %213, label %216, !dbg !1991

213:                                              ; preds = %209
  %214 = call fastcc i64 @num_processors_via_affinity_mask(), !dbg !1992
  call void @llvm.dbg.value(metadata i64 %214, metadata !1975, metadata !DIExpression()), !dbg !1993
  %215 = call i64 @llvm.umax.i64(i64 %214, i64 %210), !dbg !1994
  call void @llvm.dbg.value(metadata i64 %215, metadata !1972, metadata !DIExpression()), !dbg !1990
  br label %216, !dbg !1995

216:                                              ; preds = %213, %209
  %217 = phi i64 [ %215, %213 ], [ %210, %209 ], !dbg !1990
  call void @llvm.dbg.value(metadata i64 %217, metadata !1972, metadata !DIExpression()), !dbg !1990
  %218 = icmp slt i64 %217, 1, !dbg !1996
  br i1 %218, label %219, label %220

219:                                              ; preds = %216, %206
  br label %220, !dbg !1998

220:                                              ; preds = %203, %206, %216, %219
  %221 = phi i64 [ %204, %203 ], [ %207, %206 ], [ 1, %219 ], [ %217, %216 ], !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !1624, metadata !DIExpression()), !dbg !1999
  %222 = call i64 @llvm.umin.i64(i64 %221, i64 %200), !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !1616, metadata !DIExpression()), !dbg !1636
  br label %223, !dbg !2001

223:                                              ; preds = %199, %220, %65
  %224 = phi i64 [ %68, %65 ], [ %222, %220 ], [ %200, %199 ], !dbg !1636
  ret i64 %224, !dbg !2002
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2003 i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2007 i32 @sched_getscheduler(i32 noundef) local_unnamed_addr #2

declare !dbg !2012 i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !2017 noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2020 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nounwind
declare !dbg !2021 ptr @setmntent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2024 ptr @getmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2027 i32 @endmntent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !2030 i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare !dbg !2034 noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2037 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2038 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc i64 @num_processors_via_affinity_mask() unnamed_addr #10 !dbg !2041 {
  %1 = alloca %struct.cpu_set_t, align 8, !DIAssignID !2066
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2061, metadata !DIExpression(), metadata !2066, metadata ptr %1, metadata !DIExpression()), !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !2043, metadata !DIExpression()), !dbg !2068
  br label %2, !dbg !2069

2:                                                ; preds = %14, %0
  %3 = phi i32 [ 1024, %0 ], [ %18, %14 ], !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2043, metadata !DIExpression()), !dbg !2068
  %4 = zext i32 %3 to i64, !dbg !2071
  %5 = tail call ptr @__sched_cpualloc(i64 noundef %4) #40, !dbg !2071
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2045, metadata !DIExpression()), !dbg !2072
  %6 = icmp eq ptr %5, null, !dbg !2073
  br i1 %6, label %21, label %7, !dbg !2075

7:                                                ; preds = %2
  %8 = lshr exact i64 %4, 3, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !2057, metadata !DIExpression()), !dbg !2072
  %9 = tail call i32 @sched_getaffinity(i32 noundef 0, i64 noundef %8, ptr noundef nonnull %5) #40, !dbg !2077
  %10 = icmp eq i32 %9, 0, !dbg !2078
  br i1 %10, label %11, label %14, !dbg !2079

11:                                               ; preds = %7
  %12 = tail call i32 @__sched_cpucount(i64 noundef %8, ptr noundef nonnull %5) #40, !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2058, metadata !DIExpression()), !dbg !2081
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #40, !dbg !2082
  %13 = zext i32 %12 to i64, !dbg !2083
  br label %30

14:                                               ; preds = %7
  %15 = tail call ptr @__errno_location() #43, !dbg !2084
  %16 = load i32, ptr %15, align 4, !dbg !2084, !tbaa !1123
  %17 = icmp ne i32 %16, 22, !dbg !2086
  tail call void @__sched_cpufree(ptr noundef nonnull %5) #40, !dbg !2072
  %18 = shl i32 %3, 1
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !2043, metadata !DIExpression()), !dbg !2068
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19, !dbg !2087
  br i1 %20, label %30, label %2, !dbg !2087

21:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #40, !dbg !2088
  %22 = call i32 @sched_getaffinity(i32 noundef 0, i64 noundef 128, ptr noundef nonnull %1) #40, !dbg !2089
  %23 = icmp eq i32 %22, 0, !dbg !2090
  br i1 %23, label %24, label %29, !dbg !2091

24:                                               ; preds = %21
  %25 = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %1) #40, !dbg !2092
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !2063, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !2093
  %26 = icmp eq i32 %25, 0, !dbg !2094
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64, !dbg !2096
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #40, !dbg !2097
  br label %30

29:                                               ; preds = %24, %21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #40, !dbg !2097
  br label %30

30:                                               ; preds = %14, %29, %27, %11
  %31 = phi i64 [ %13, %11 ], [ 0, %29 ], [ %28, %27 ], [ 0, %14 ]
  ret i64 %31, !dbg !2098
}

; Function Attrs: nounwind
declare !dbg !2099 i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: nounwind
declare !dbg !2102 ptr @__sched_cpualloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2105 i32 @sched_getaffinity(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2108 i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2113 void @__sched_cpufree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2116 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2118, metadata !DIExpression()), !dbg !2121
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2122
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2119, metadata !DIExpression()), !dbg !2121
  %3 = icmp eq ptr %2, null, !dbg !2123
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2123
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2123
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2120, metadata !DIExpression()), !dbg !2121
  %6 = ptrtoint ptr %5 to i64, !dbg !2124
  %7 = ptrtoint ptr %0 to i64, !dbg !2124
  %8 = sub i64 %6, %7, !dbg !2124
  %9 = icmp sgt i64 %8, 6, !dbg !2126
  br i1 %9, label %10, label %19, !dbg !2127

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %11, metadata !2129, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr @.str.59, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i64 7, metadata !2135, metadata !DIExpression()), !dbg !2136
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.59, i64 7), !dbg !2138
  %13 = icmp eq i32 %12, 0, !dbg !2139
  br i1 %13, label %14, label %19, !dbg !2140

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2118, metadata !DIExpression()), !dbg !2121
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.60, i64 noundef 3) #41, !dbg !2141
  %16 = icmp eq i32 %15, 0, !dbg !2144
  %17 = select i1 %16, i64 3, i64 0, !dbg !2145
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2145
  br label %19, !dbg !2145

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2121
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2120, metadata !DIExpression()), !dbg !2121
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2118, metadata !DIExpression()), !dbg !2121
  store ptr %20, ptr @program_name, align 8, !dbg !2146, !tbaa !1060
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2147, !tbaa !1060
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2148, !tbaa !1060
  ret void, !dbg !2149
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !462 {
  %3 = alloca i32, align 4, !DIAssignID !2150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !472, metadata !DIExpression(), metadata !2150, metadata ptr %3, metadata !DIExpression()), !dbg !2151
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !477, metadata !DIExpression(), metadata !2152, metadata ptr %4, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !469, metadata !DIExpression()), !dbg !2151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !470, metadata !DIExpression()), !dbg !2151
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2153
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !471, metadata !DIExpression()), !dbg !2151
  %6 = icmp eq ptr %5, %0, !dbg !2154
  br i1 %6, label %7, label %14, !dbg !2156

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2157
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2158
  call void @llvm.dbg.value(metadata ptr %4, metadata !2159, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata ptr %4, metadata !2168, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 0, metadata !2174, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 8, metadata !2175, metadata !DIExpression()), !dbg !2176
  store i64 0, ptr %4, align 8, !dbg !2178
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2179
  %9 = icmp eq i64 %8, 2, !dbg !2181
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2182
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2183
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2151
  ret ptr %15, !dbg !2183
}

; Function Attrs: nounwind
declare !dbg !2184 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2190 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2198
  %2 = tail call ptr @__errno_location() #43, !dbg !2199
  %3 = load i32, ptr %2, align 4, !dbg !2199, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2196, metadata !DIExpression()), !dbg !2198
  %4 = icmp eq ptr %0, null, !dbg !2200
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2200
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #46, !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 %3, ptr %2, align 4, !dbg !2202, !tbaa !1123
  ret ptr %6, !dbg !2203
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2204 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2210, metadata !DIExpression()), !dbg !2211
  %2 = icmp eq ptr %0, null, !dbg !2212
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2212
  %4 = load i32, ptr %3, align 8, !dbg !2213, !tbaa !2214
  ret i32 %4, !dbg !2216
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2217 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2221, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression()), !dbg !2223
  %3 = icmp eq ptr %0, null, !dbg !2224
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2224
  store i32 %1, ptr %4, align 8, !dbg !2225, !tbaa !2214
  ret void, !dbg !2226
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2227 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2231, metadata !DIExpression()), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2232, metadata !DIExpression()), !dbg !2239
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2233, metadata !DIExpression()), !dbg !2239
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2234, metadata !DIExpression()), !dbg !2239
  %4 = icmp eq ptr %0, null, !dbg !2240
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2240
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2241
  %7 = lshr i8 %1, 5, !dbg !2242
  %8 = zext nneg i8 %7 to i64, !dbg !2242
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2243
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2235, metadata !DIExpression()), !dbg !2239
  %10 = and i8 %1, 31, !dbg !2244
  %11 = zext nneg i8 %10 to i32, !dbg !2244
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2237, metadata !DIExpression()), !dbg !2239
  %12 = load i32, ptr %9, align 4, !dbg !2245, !tbaa !1123
  %13 = lshr i32 %12, %11, !dbg !2246
  %14 = and i32 %13, 1, !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2238, metadata !DIExpression()), !dbg !2239
  %15 = xor i32 %13, %2, !dbg !2248
  %16 = and i32 %15, 1, !dbg !2248
  %17 = shl nuw i32 %16, %11, !dbg !2249
  %18 = xor i32 %17, %12, !dbg !2250
  store i32 %18, ptr %9, align 4, !dbg !2250, !tbaa !1123
  ret i32 %14, !dbg !2251
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2252 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2256, metadata !DIExpression()), !dbg !2259
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2257, metadata !DIExpression()), !dbg !2259
  %3 = icmp eq ptr %0, null, !dbg !2260
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2262
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2256, metadata !DIExpression()), !dbg !2259
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2263
  %6 = load i32, ptr %5, align 4, !dbg !2263, !tbaa !2264
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2258, metadata !DIExpression()), !dbg !2259
  store i32 %1, ptr %5, align 4, !dbg !2265, !tbaa !2264
  ret i32 %6, !dbg !2266
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2267 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2271, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2272, metadata !DIExpression()), !dbg !2274
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2273, metadata !DIExpression()), !dbg !2274
  %4 = icmp eq ptr %0, null, !dbg !2275
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !2274
  store i32 10, ptr %5, align 8, !dbg !2278, !tbaa !2214
  %6 = icmp ne ptr %1, null, !dbg !2279
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2281
  br i1 %8, label %10, label %9, !dbg !2281

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2282
  unreachable, !dbg !2282

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2283
  store ptr %1, ptr %11, align 8, !dbg !2284, !tbaa !2285
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2286
  store ptr %2, ptr %12, align 8, !dbg !2287, !tbaa !2288
  ret void, !dbg !2289
}

; Function Attrs: noreturn nounwind
declare !dbg !2290 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2291 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2295, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2296, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2297, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2298, metadata !DIExpression()), !dbg !2303
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2299, metadata !DIExpression()), !dbg !2303
  %6 = icmp eq ptr %4, null, !dbg !2304
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2304
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2300, metadata !DIExpression()), !dbg !2303
  %8 = tail call ptr @__errno_location() #43, !dbg !2305
  %9 = load i32, ptr %8, align 4, !dbg !2305, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2301, metadata !DIExpression()), !dbg !2303
  %10 = load i32, ptr %7, align 8, !dbg !2306, !tbaa !2214
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2307
  %12 = load i32, ptr %11, align 4, !dbg !2307, !tbaa !2264
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2308
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2309
  %15 = load ptr, ptr %14, align 8, !dbg !2309, !tbaa !2285
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2310
  %17 = load ptr, ptr %16, align 8, !dbg !2310, !tbaa !2288
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2302, metadata !DIExpression()), !dbg !2303
  store i32 %9, ptr %8, align 4, !dbg !2312, !tbaa !1123
  ret i64 %18, !dbg !2313
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2314 {
  %10 = alloca i32, align 4, !DIAssignID !2382
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2383
  %12 = alloca i32, align 4, !DIAssignID !2384
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2385
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2360, metadata !DIExpression(), metadata !2386, metadata ptr %14, metadata !DIExpression()), !dbg !2387
  %15 = alloca i32, align 4, !DIAssignID !2388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2363, metadata !DIExpression(), metadata !2388, metadata ptr %15, metadata !DIExpression()), !dbg !2389
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2320, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2322, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2323, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2324, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2325, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2326, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2327, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2328, metadata !DIExpression()), !dbg !2390
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2391
  %17 = icmp eq i64 %16, 1, !dbg !2392
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2329, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2332, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2333, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2334, metadata !DIExpression()), !dbg !2390
  %18 = trunc i32 %5 to i8, !dbg !2393
  %19 = lshr i8 %18, 1, !dbg !2393
  %20 = and i8 %19, 1, !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2337, metadata !DIExpression()), !dbg !2390
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2394

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2395
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2396
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2397
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2398
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2390
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2399
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2400
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2337, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2334, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2333, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2332, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2323, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2328, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2327, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2324, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.label(metadata !2338), !dbg !2401
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2390
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
  ], !dbg !2402

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2324, metadata !DIExpression()), !dbg !2390
  br label %114, !dbg !2403

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2324, metadata !DIExpression()), !dbg !2390
  %43 = and i8 %37, 1, !dbg !2404
  %44 = icmp eq i8 %43, 0, !dbg !2404
  br i1 %44, label %45, label %114, !dbg !2403

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2406
  br i1 %46, label %114, label %47, !dbg !2409

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2406, !tbaa !1132
  br label %114, !dbg !2406

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !2384, metadata ptr %12, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !576, metadata !DIExpression(), metadata !2385, metadata ptr %13, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr @.str.11.73, metadata !572, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %29, metadata !573, metadata !DIExpression()), !dbg !2410
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.11.73, i32 noundef 5) #40, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %49, metadata !574, metadata !DIExpression()), !dbg !2410
  %50 = icmp eq ptr %49, @.str.11.73, !dbg !2415
  br i1 %50, label %51, label %60, !dbg !2417

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2418
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2419
  call void @llvm.dbg.value(metadata ptr %13, metadata !2420, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata ptr %13, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 8, metadata !2432, metadata !DIExpression()), !dbg !2433
  store i64 0, ptr %13, align 8, !dbg !2435
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2436
  %53 = icmp eq i64 %52, 3, !dbg !2438
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2439
  %57 = icmp eq i32 %29, 9, !dbg !2439
  %58 = select i1 %57, ptr @.str.10.75, ptr @.str.12.76, !dbg !2439
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2439
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2440
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2410
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2327, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !2382, metadata ptr %10, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.assign(metadata i1 undef, metadata !576, metadata !DIExpression(), metadata !2383, metadata ptr %11, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr @.str.12.76, metadata !572, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %29, metadata !573, metadata !DIExpression()), !dbg !2441
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.74, ptr noundef nonnull @.str.12.76, i32 noundef 5) #40, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %62, metadata !574, metadata !DIExpression()), !dbg !2441
  %63 = icmp eq ptr %62, @.str.12.76, !dbg !2444
  br i1 %63, label %64, label %73, !dbg !2445

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2446
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2447
  call void @llvm.dbg.value(metadata ptr %11, metadata !2420, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %11, metadata !2428, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 8, metadata !2432, metadata !DIExpression()), !dbg !2450
  store i64 0, ptr %11, align 8, !dbg !2452
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2453
  %66 = icmp eq i64 %65, 3, !dbg !2454
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2455
  %70 = icmp eq i32 %29, 9, !dbg !2455
  %71 = select i1 %70, ptr @.str.10.75, ptr @.str.12.76, !dbg !2455
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2456
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2328, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2327, metadata !DIExpression()), !dbg !2390
  %76 = and i8 %37, 1, !dbg !2457
  %77 = icmp eq i8 %76, 0, !dbg !2457
  br i1 %77, label %78, label %93, !dbg !2458

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2340, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2330, metadata !DIExpression()), !dbg !2390
  %79 = load i8, ptr %74, align 1, !dbg !2460, !tbaa !1132
  %80 = icmp eq i8 %79, 0, !dbg !2462
  br i1 %80, label %93, label %81, !dbg !2462

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2340, metadata !DIExpression()), !dbg !2459
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2330, metadata !DIExpression()), !dbg !2390
  %85 = icmp ult i64 %84, %40, !dbg !2463
  br i1 %85, label %86, label %88, !dbg !2466

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2463
  store i8 %82, ptr %87, align 1, !dbg !2463, !tbaa !1132
  br label %88, !dbg !2463

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2330, metadata !DIExpression()), !dbg !2390
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !2467
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2340, metadata !DIExpression()), !dbg !2459
  %91 = load i8, ptr %90, align 1, !dbg !2460, !tbaa !1132
  %92 = icmp eq i8 %91, 0, !dbg !2462
  br i1 %92, label %93, label %81, !dbg !2462, !llvm.loop !2468

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2334, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2332, metadata !DIExpression()), !dbg !2390
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !2471
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2333, metadata !DIExpression()), !dbg !2390
  br label %114, !dbg !2472

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2334, metadata !DIExpression()), !dbg !2390
  br label %98, !dbg !2473

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2334, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2335, metadata !DIExpression()), !dbg !2390
  br label %98, !dbg !2474

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2398
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2334, metadata !DIExpression()), !dbg !2390
  %101 = and i8 %100, 1, !dbg !2475
  %102 = icmp eq i8 %101, 0, !dbg !2475
  %103 = select i1 %102, i8 1, i8 %99, !dbg !2477
  br label %104, !dbg !2477

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2390
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2393
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2334, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2324, metadata !DIExpression()), !dbg !2390
  %107 = and i8 %106, 1, !dbg !2478
  %108 = icmp eq i8 %107, 0, !dbg !2478
  br i1 %108, label %109, label %114, !dbg !2480

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !2481
  br i1 %110, label %114, label %111, !dbg !2484

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !2481, !tbaa !1132
  br label %114, !dbg !2481

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2335, metadata !DIExpression()), !dbg !2390
  br label %114, !dbg !2485

113:                                              ; preds = %28
  call void @abort() #42, !dbg !2486
  unreachable, !dbg !2486

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !2470
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.75, %45 ], [ @.str.10.75, %47 ], [ @.str.10.75, %42 ], [ %34, %28 ], [ @.str.12.76, %109 ], [ @.str.12.76, %111 ], [ @.str.12.76, %104 ], [ @.str.10.75, %41 ], !dbg !2390
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2390
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2390
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2335, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2334, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2333, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2332, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2328, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2327, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2324, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2345, metadata !DIExpression()), !dbg !2487
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
  br label %138, !dbg !2488

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !2470
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2395
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2399
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2400
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !2489
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !2490
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2337, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2323, metadata !DIExpression()), !dbg !2390
  %147 = icmp eq i64 %139, -1, !dbg !2491
  br i1 %147, label %148, label %152, !dbg !2492

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2493
  %150 = load i8, ptr %149, align 1, !dbg !2493, !tbaa !1132
  %151 = icmp eq i8 %150, 0, !dbg !2494
  br i1 %151, label %612, label %154, !dbg !2495

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !2496
  br i1 %153, label %612, label %154, !dbg !2495

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2351, metadata !DIExpression()), !dbg !2497
  br i1 %128, label %155, label %170, !dbg !2498

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !2500
  %157 = select i1 %147, i1 %129, i1 false, !dbg !2501
  br i1 %157, label %158, label %160, !dbg !2501

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2323, metadata !DIExpression()), !dbg !2390
  br label %160, !dbg !2503

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !2503
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2323, metadata !DIExpression()), !dbg !2390
  %162 = icmp ugt i64 %156, %161, !dbg !2504
  br i1 %162, label %170, label %163, !dbg !2505

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2506
  call void @llvm.dbg.value(metadata ptr %164, metadata !2507, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %119, metadata !2510, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 %120, metadata !2511, metadata !DIExpression()), !dbg !2512
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !2514
  %166 = icmp ne i32 %165, 0, !dbg !2515
  %167 = select i1 %166, i1 true, i1 %131, !dbg !2516
  %168 = xor i1 %166, true, !dbg !2516
  %169 = zext i1 %168 to i8, !dbg !2516
  br i1 %167, label %170, label %666, !dbg !2516

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !2497
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2323, metadata !DIExpression()), !dbg !2390
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !2517
  %175 = load i8, ptr %174, align 1, !dbg !2517, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2352, metadata !DIExpression()), !dbg !2497
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
  ], !dbg !2518

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !2519

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !2520

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2497
  %179 = and i8 %144, 1, !dbg !2524
  %180 = icmp eq i8 %179, 0, !dbg !2524
  %181 = select i1 %132, i1 %180, i1 false, !dbg !2524
  br i1 %181, label %182, label %198, !dbg !2524

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !2526
  br i1 %183, label %184, label %186, !dbg !2530

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2526
  store i8 39, ptr %185, align 1, !dbg !2526, !tbaa !1132
  br label %186, !dbg !2526

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !2530
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2330, metadata !DIExpression()), !dbg !2390
  %188 = icmp ult i64 %187, %146, !dbg !2531
  br i1 %188, label %189, label %191, !dbg !2534

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !2531
  store i8 36, ptr %190, align 1, !dbg !2531, !tbaa !1132
  br label %191, !dbg !2531

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !2534
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2330, metadata !DIExpression()), !dbg !2390
  %193 = icmp ult i64 %192, %146, !dbg !2535
  br i1 %193, label %194, label %196, !dbg !2538

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !2535
  store i8 39, ptr %195, align 1, !dbg !2535, !tbaa !1132
  br label %196, !dbg !2535

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !2538
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %198, !dbg !2539

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2390
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2330, metadata !DIExpression()), !dbg !2390
  %201 = icmp ult i64 %199, %146, !dbg !2540
  br i1 %201, label %202, label %204, !dbg !2543

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !2540
  store i8 92, ptr %203, align 1, !dbg !2540, !tbaa !1132
  br label %204, !dbg !2540

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !2543
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2330, metadata !DIExpression()), !dbg !2390
  br i1 %125, label %206, label %476, !dbg !2544

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !2546
  %208 = icmp ult i64 %207, %171, !dbg !2547
  br i1 %208, label %209, label %465, !dbg !2548

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !2549
  %211 = load i8, ptr %210, align 1, !dbg !2549, !tbaa !1132
  %212 = add i8 %211, -48, !dbg !2550
  %213 = icmp ult i8 %212, 10, !dbg !2550
  br i1 %213, label %214, label %465, !dbg !2550

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !2551
  br i1 %215, label %216, label %218, !dbg !2555

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !2551
  store i8 48, ptr %217, align 1, !dbg !2551, !tbaa !1132
  br label %218, !dbg !2551

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !2555
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2330, metadata !DIExpression()), !dbg !2390
  %220 = icmp ult i64 %219, %146, !dbg !2556
  br i1 %220, label %221, label %223, !dbg !2559

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !2556
  store i8 48, ptr %222, align 1, !dbg !2556, !tbaa !1132
  br label %223, !dbg !2556

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !2559
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2330, metadata !DIExpression()), !dbg !2390
  br label %465, !dbg !2560

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !2561

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !2562

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !2563

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2565

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2567
  %231 = icmp ult i64 %230, %171, !dbg !2568
  br i1 %231, label %232, label %465, !dbg !2569

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2570
  %234 = load i8, ptr %233, align 1, !dbg !2570, !tbaa !1132
  %235 = icmp eq i8 %234, 63, !dbg !2571
  br i1 %235, label %236, label %465, !dbg !2572

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2573
  %238 = load i8, ptr %237, align 1, !dbg !2573, !tbaa !1132
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
  ], !dbg !2574

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2575

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2345, metadata !DIExpression()), !dbg !2487
  %241 = icmp ult i64 %140, %146, !dbg !2577
  br i1 %241, label %242, label %244, !dbg !2580

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2577
  store i8 63, ptr %243, align 1, !dbg !2577, !tbaa !1132
  br label %244, !dbg !2577

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2580
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2330, metadata !DIExpression()), !dbg !2390
  %246 = icmp ult i64 %245, %146, !dbg !2581
  br i1 %246, label %247, label %249, !dbg !2584

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2581
  store i8 34, ptr %248, align 1, !dbg !2581, !tbaa !1132
  br label %249, !dbg !2581

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2330, metadata !DIExpression()), !dbg !2390
  %251 = icmp ult i64 %250, %146, !dbg !2585
  br i1 %251, label %252, label %254, !dbg !2588

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2585
  store i8 34, ptr %253, align 1, !dbg !2585, !tbaa !1132
  br label %254, !dbg !2585

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2588
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2330, metadata !DIExpression()), !dbg !2390
  %256 = icmp ult i64 %255, %146, !dbg !2589
  br i1 %256, label %257, label %259, !dbg !2592

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2589
  store i8 63, ptr %258, align 1, !dbg !2589, !tbaa !1132
  br label %259, !dbg !2589

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2592
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2330, metadata !DIExpression()), !dbg !2390
  br label %465, !dbg !2593

261:                                              ; preds = %170
  br label %272, !dbg !2594

262:                                              ; preds = %170
  br label %272, !dbg !2595

263:                                              ; preds = %170
  br label %270, !dbg !2596

264:                                              ; preds = %170
  br label %270, !dbg !2597

265:                                              ; preds = %170
  br label %272, !dbg !2598

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2599

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2600

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2603

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2605

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2606
  call void @llvm.dbg.label(metadata !2353), !dbg !2607
  br i1 %133, label %272, label %655, !dbg !2608

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2606
  call void @llvm.dbg.label(metadata !2356), !dbg !2610
  br i1 %124, label %520, label %476, !dbg !2611

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2612

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2613, !tbaa !1132
  %277 = icmp eq i8 %276, 0, !dbg !2615
  br i1 %277, label %278, label %465, !dbg !2616

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2617
  br i1 %279, label %280, label %465, !dbg !2619

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2351, metadata !DIExpression()), !dbg !2497
  br label %281, !dbg !2620

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2351, metadata !DIExpression()), !dbg !2497
  br i1 %133, label %465, label %655, !dbg !2621

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2351, metadata !DIExpression()), !dbg !2497
  br i1 %132, label %284, label %465, !dbg !2623

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2624

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2627
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2629
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2629
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2629
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2331, metadata !DIExpression()), !dbg !2390
  %291 = icmp ult i64 %140, %290, !dbg !2630
  br i1 %291, label %292, label %294, !dbg !2633

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2630
  store i8 39, ptr %293, align 1, !dbg !2630, !tbaa !1132
  br label %294, !dbg !2630

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2633
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2330, metadata !DIExpression()), !dbg !2390
  %296 = icmp ult i64 %295, %290, !dbg !2634
  br i1 %296, label %297, label %299, !dbg !2637

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2634
  store i8 92, ptr %298, align 1, !dbg !2634, !tbaa !1132
  br label %299, !dbg !2634

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2330, metadata !DIExpression()), !dbg !2390
  %301 = icmp ult i64 %300, %290, !dbg !2638
  br i1 %301, label %302, label %304, !dbg !2641

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2638
  store i8 39, ptr %303, align 1, !dbg !2638, !tbaa !1132
  br label %304, !dbg !2638

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2641
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %465, !dbg !2642

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2643

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2357, metadata !DIExpression()), !dbg !2644
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !2645
  %309 = load ptr, ptr %308, align 8, !dbg !2645, !tbaa !1060
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2645
  %312 = load i16, ptr %311, align 2, !dbg !2645, !tbaa !1164
  %313 = and i16 %312, 16384, !dbg !2647
  %314 = icmp ne i16 %313, 0, !dbg !2647
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2359, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2644
  br label %355, !dbg !2648

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2649
  call void @llvm.dbg.value(metadata ptr %14, metadata !2420, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %14, metadata !2428, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i64 8, metadata !2432, metadata !DIExpression()), !dbg !2652
  store i64 0, ptr %14, align 8, !dbg !2654
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2357, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2359, metadata !DIExpression()), !dbg !2644
  %316 = icmp eq i64 %171, -1, !dbg !2655
  br i1 %316, label %317, label %319, !dbg !2657

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2658
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2323, metadata !DIExpression()), !dbg !2390
  br label %319, !dbg !2659

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2323, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2660
  %321 = sub i64 %320, %145, !dbg !2661
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !2662
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2367, metadata !DIExpression()), !dbg !2389
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2663

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2357, metadata !DIExpression()), !dbg !2644
  %324 = icmp ult i64 %145, %320, !dbg !2664
  br i1 %324, label %326, label %351, !dbg !2666

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2359, metadata !DIExpression()), !dbg !2644
  br label %351, !dbg !2667

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2357, metadata !DIExpression()), !dbg !2644
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2669
  %330 = load i8, ptr %329, align 1, !dbg !2669, !tbaa !1132
  %331 = icmp eq i8 %330, 0, !dbg !2666
  br i1 %331, label %351, label %332, !dbg !2670

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2671
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2357, metadata !DIExpression()), !dbg !2644
  %334 = add i64 %333, %145, !dbg !2672
  %335 = icmp eq i64 %333, %321, !dbg !2664
  br i1 %335, label %351, label %326, !dbg !2666, !llvm.loop !2673

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2368, metadata !DIExpression()), !dbg !2674
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2675
  %339 = and i1 %338, %132, !dbg !2675
  br i1 %339, label %340, label %347, !dbg !2675

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2368, metadata !DIExpression()), !dbg !2674
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2676
  %343 = load i8, ptr %342, align 1, !dbg !2676, !tbaa !1132
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2678

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2679
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2368, metadata !DIExpression()), !dbg !2674
  %346 = icmp eq i64 %345, %322, !dbg !2680
  br i1 %346, label %347, label %340, !dbg !2681, !llvm.loop !2682

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2684, !tbaa !1123
  call void @llvm.dbg.value(metadata i32 %348, metadata !2686, metadata !DIExpression()), !dbg !2694
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !2696
  %350 = icmp ne i32 %349, 0, !dbg !2697
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2359, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2357, metadata !DIExpression()), !dbg !2644
  br label %351, !dbg !2698

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2359, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2357, metadata !DIExpression()), !dbg !2644
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2700
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2359, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2357, metadata !DIExpression()), !dbg !2644
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2700
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !2497
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2701
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2701
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2359, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2357, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2323, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2351, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2497
  %359 = icmp ult i64 %357, 2, !dbg !2702
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2703
  br i1 %361, label %461, label %362, !dbg !2703

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2704
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2376, metadata !DIExpression()), !dbg !2705
  br label %364, !dbg !2706

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2390
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !2489
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !2487
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !2497
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2707
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2330, metadata !DIExpression()), !dbg !2390
  br i1 %360, label %417, label %371, !dbg !2708

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2713

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2497
  %373 = and i8 %366, 1, !dbg !2716
  %374 = icmp eq i8 %373, 0, !dbg !2716
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2716
  br i1 %375, label %376, label %392, !dbg !2716

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2718
  br i1 %377, label %378, label %380, !dbg !2722

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2718
  store i8 39, ptr %379, align 1, !dbg !2718, !tbaa !1132
  br label %380, !dbg !2718

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2722
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2330, metadata !DIExpression()), !dbg !2390
  %382 = icmp ult i64 %381, %146, !dbg !2723
  br i1 %382, label %383, label %385, !dbg !2726

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2723
  store i8 36, ptr %384, align 1, !dbg !2723, !tbaa !1132
  br label %385, !dbg !2723

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2330, metadata !DIExpression()), !dbg !2390
  %387 = icmp ult i64 %386, %146, !dbg !2727
  br i1 %387, label %388, label %390, !dbg !2730

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2727
  store i8 39, ptr %389, align 1, !dbg !2727, !tbaa !1132
  br label %390, !dbg !2727

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2730
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %392, !dbg !2731

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2390
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2330, metadata !DIExpression()), !dbg !2390
  %395 = icmp ult i64 %393, %146, !dbg !2732
  br i1 %395, label %396, label %398, !dbg !2735

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2732
  store i8 92, ptr %397, align 1, !dbg !2732, !tbaa !1132
  br label %398, !dbg !2732

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2735
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2330, metadata !DIExpression()), !dbg !2390
  %400 = icmp ult i64 %399, %146, !dbg !2736
  br i1 %400, label %401, label %405, !dbg !2739

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2736
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2736
  store i8 %403, ptr %404, align 1, !dbg !2736, !tbaa !1132
  br label %405, !dbg !2736

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2330, metadata !DIExpression()), !dbg !2390
  %407 = icmp ult i64 %406, %146, !dbg !2740
  br i1 %407, label %408, label %413, !dbg !2743

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2740
  %411 = or disjoint i8 %410, 48, !dbg !2740
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2740
  store i8 %411, ptr %412, align 1, !dbg !2740, !tbaa !1132
  br label %413, !dbg !2740

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2743
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2330, metadata !DIExpression()), !dbg !2390
  %415 = and i8 %370, 7, !dbg !2744
  %416 = or disjoint i8 %415, 48, !dbg !2745
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2352, metadata !DIExpression()), !dbg !2497
  br label %426, !dbg !2746

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2747
  %419 = icmp eq i8 %418, 0, !dbg !2747
  br i1 %419, label %426, label %420, !dbg !2749

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2750
  br i1 %421, label %422, label %424, !dbg !2754

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2750
  store i8 92, ptr %423, align 1, !dbg !2750, !tbaa !1132
  br label %424, !dbg !2750

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2754
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2347, metadata !DIExpression()), !dbg !2497
  br label %426, !dbg !2755

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2390
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !2489
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !2497
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !2497
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2330, metadata !DIExpression()), !dbg !2390
  %432 = add i64 %367, 1, !dbg !2756
  %433 = icmp ugt i64 %363, %432, !dbg !2758
  br i1 %433, label %434, label %463, !dbg !2759

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2760
  %436 = icmp ne i8 %435, 0, !dbg !2760
  %437 = and i8 %430, 1, !dbg !2760
  %438 = icmp eq i8 %437, 0, !dbg !2760
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2760
  br i1 %439, label %440, label %451, !dbg !2760

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2763
  br i1 %441, label %442, label %444, !dbg !2767

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2763
  store i8 39, ptr %443, align 1, !dbg !2763, !tbaa !1132
  br label %444, !dbg !2763

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2767
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2330, metadata !DIExpression()), !dbg !2390
  %446 = icmp ult i64 %445, %146, !dbg !2768
  br i1 %446, label %447, label %449, !dbg !2771

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2768
  store i8 39, ptr %448, align 1, !dbg !2768, !tbaa !1132
  br label %449, !dbg !2768

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %451, !dbg !2772

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2773
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2330, metadata !DIExpression()), !dbg !2390
  %454 = icmp ult i64 %452, %146, !dbg !2774
  br i1 %454, label %455, label %457, !dbg !2777

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2774
  store i8 %431, ptr %456, align 1, !dbg !2774, !tbaa !1132
  br label %457, !dbg !2774

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2777
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2345, metadata !DIExpression()), !dbg !2487
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2778
  %460 = load i8, ptr %459, align 1, !dbg !2778, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2352, metadata !DIExpression()), !dbg !2497
  br label %364, !dbg !2779, !llvm.loop !2780

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2323, metadata !DIExpression()), !dbg !2390
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2323, metadata !DIExpression()), !dbg !2390
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2783
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2390
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2395
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2390
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2390
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !2487
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !2497
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !2497
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !2497
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2347, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2323, metadata !DIExpression()), !dbg !2390
  br i1 %126, label %487, label %476, !dbg !2784

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
  br i1 %137, label %488, label %509, !dbg !2786

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2787

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
  %499 = lshr i8 %490, 5, !dbg !2788
  %500 = zext nneg i8 %499 to i64, !dbg !2788
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2789
  %502 = load i32, ptr %501, align 4, !dbg !2789, !tbaa !1123
  %503 = and i8 %490, 31, !dbg !2790
  %504 = zext nneg i8 %503 to i32, !dbg !2790
  %505 = shl nuw i32 1, %504, !dbg !2791
  %506 = and i32 %502, %505, !dbg !2791
  %507 = icmp eq i32 %506, 0, !dbg !2791
  %508 = and i1 %172, %507, !dbg !2792
  br i1 %508, label %558, label %520, !dbg !2792

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
  br i1 %172, label %558, label %520, !dbg !2793

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2783
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2390
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2395
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2399
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !2489
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2794
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !2497
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !2497
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2323, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.label(metadata !2379), !dbg !2795
  br i1 %131, label %530, label %659, !dbg !2796

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2497
  %531 = and i8 %525, 1, !dbg !2798
  %532 = icmp eq i8 %531, 0, !dbg !2798
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2798
  br i1 %533, label %534, label %550, !dbg !2798

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2800
  br i1 %535, label %536, label %538, !dbg !2804

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2800
  store i8 39, ptr %537, align 1, !dbg !2800, !tbaa !1132
  br label %538, !dbg !2800

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2804
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2330, metadata !DIExpression()), !dbg !2390
  %540 = icmp ult i64 %539, %529, !dbg !2805
  br i1 %540, label %541, label %543, !dbg !2808

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2805
  store i8 36, ptr %542, align 1, !dbg !2805, !tbaa !1132
  br label %543, !dbg !2805

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2808
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2330, metadata !DIExpression()), !dbg !2390
  %545 = icmp ult i64 %544, %529, !dbg !2809
  br i1 %545, label %546, label %548, !dbg !2812

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2809
  store i8 39, ptr %547, align 1, !dbg !2809, !tbaa !1132
  br label %548, !dbg !2809

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2812
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %550, !dbg !2813

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !2497
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2330, metadata !DIExpression()), !dbg !2390
  %553 = icmp ult i64 %551, %529, !dbg !2814
  br i1 %553, label %554, label %556, !dbg !2817

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2814
  store i8 92, ptr %555, align 1, !dbg !2814, !tbaa !1132
  br label %556, !dbg !2814

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2817
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2323, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.label(metadata !2380), !dbg !2818
  br label %585, !dbg !2819

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2783
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2390
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2395
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2399
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !2489
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2794
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !2497
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !2497
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2822
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2352, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2351, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2350, metadata !DIExpression()), !dbg !2497
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2323, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.label(metadata !2380), !dbg !2818
  %569 = and i8 %563, 1, !dbg !2819
  %570 = icmp ne i8 %569, 0, !dbg !2819
  %571 = and i8 %565, 1, !dbg !2819
  %572 = icmp eq i8 %571, 0, !dbg !2819
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2819
  br i1 %573, label %574, label %585, !dbg !2819

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2823
  br i1 %575, label %576, label %578, !dbg !2827

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2823
  store i8 39, ptr %577, align 1, !dbg !2823, !tbaa !1132
  br label %578, !dbg !2823

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2827
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2330, metadata !DIExpression()), !dbg !2390
  %580 = icmp ult i64 %579, %568, !dbg !2828
  br i1 %580, label %581, label %583, !dbg !2831

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2828
  store i8 39, ptr %582, align 1, !dbg !2828, !tbaa !1132
  br label %583, !dbg !2828

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2831
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2339, metadata !DIExpression()), !dbg !2390
  br label %585, !dbg !2832

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !2497
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2330, metadata !DIExpression()), !dbg !2390
  %595 = icmp ult i64 %593, %586, !dbg !2833
  br i1 %595, label %596, label %598, !dbg !2836

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2833
  store i8 %587, ptr %597, align 1, !dbg !2833, !tbaa !1132
  br label %598, !dbg !2833

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2836
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2330, metadata !DIExpression()), !dbg !2390
  %600 = icmp eq i8 %588, 0, !dbg !2837
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2839
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2337, metadata !DIExpression()), !dbg !2390
  br label %602, !dbg !2840

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2783
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2390
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2395
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2399
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2400
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !2489
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2794
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2345, metadata !DIExpression()), !dbg !2487
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2339, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2337, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2323, metadata !DIExpression()), !dbg !2390
  %611 = add i64 %609, 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2345, metadata !DIExpression()), !dbg !2487
  br label %138, !dbg !2842, !llvm.loop !2843

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2321, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2337, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2336, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2331, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2330, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2323, metadata !DIExpression()), !dbg !2390
  %613 = icmp eq i64 %140, 0, !dbg !2845
  %614 = and i1 %132, %613, !dbg !2847
  %615 = xor i1 %614, true, !dbg !2847
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2847
  br i1 %616, label %617, label %655, !dbg !2847

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2848
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2848
  br i1 %621, label %622, label %631, !dbg !2848

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2850
  %624 = icmp eq i8 %623, 0, !dbg !2850
  br i1 %624, label %627, label %625, !dbg !2853

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2854
  br label %672, !dbg !2855

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2856
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2858
  br i1 %630, label %28, label %631, !dbg !2858

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2859
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2861
  br i1 %634, label %635, label %650, !dbg !2861

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2332, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2330, metadata !DIExpression()), !dbg !2390
  %636 = load i8, ptr %119, align 1, !dbg !2862, !tbaa !1132
  %637 = icmp eq i8 %636, 0, !dbg !2865
  br i1 %637, label %650, label %638, !dbg !2865

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2332, metadata !DIExpression()), !dbg !2390
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2330, metadata !DIExpression()), !dbg !2390
  %642 = icmp ult i64 %641, %146, !dbg !2866
  br i1 %642, label %643, label %645, !dbg !2869

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2866
  store i8 %639, ptr %644, align 1, !dbg !2866, !tbaa !1132
  br label %645, !dbg !2866

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2869
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2330, metadata !DIExpression()), !dbg !2390
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2870
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2332, metadata !DIExpression()), !dbg !2390
  %648 = load i8, ptr %647, align 1, !dbg !2862, !tbaa !1132
  %649 = icmp eq i8 %648, 0, !dbg !2865
  br i1 %649, label %650, label %638, !dbg !2865, !llvm.loop !2871

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !2470
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2330, metadata !DIExpression()), !dbg !2390
  %652 = icmp ult i64 %651, %146, !dbg !2873
  br i1 %652, label %653, label %672, !dbg !2875

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2876
  store i8 0, ptr %654, align 1, !dbg !2877, !tbaa !1132
  br label %672, !dbg !2876

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2381), !dbg !2878
  %657 = icmp eq i8 %123, 0, !dbg !2879
  %658 = select i1 %657, i32 2, i32 4, !dbg !2879
  br label %666, !dbg !2879

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2381), !dbg !2878
  %662 = icmp eq i32 %115, 2, !dbg !2881
  %663 = icmp eq i8 %123, 0, !dbg !2879
  %664 = select i1 %663, i32 2, i32 4, !dbg !2879
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2879
  br label %666, !dbg !2879

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2324, metadata !DIExpression()), !dbg !2390
  %670 = and i32 %5, -3, !dbg !2882
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2883
  br label %672, !dbg !2884

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2885
}

; Function Attrs: nounwind
declare !dbg !2886 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2889 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2890 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2892 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2896, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2897, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr null, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %2, metadata !2907, metadata !DIExpression()), !dbg !2913
  %4 = icmp eq ptr %2, null, !dbg !2915
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2915
  call void @llvm.dbg.value(metadata ptr %5, metadata !2908, metadata !DIExpression()), !dbg !2913
  %6 = tail call ptr @__errno_location() #43, !dbg !2916
  %7 = load i32, ptr %6, align 4, !dbg !2916, !tbaa !1123
  call void @llvm.dbg.value(metadata i32 %7, metadata !2909, metadata !DIExpression()), !dbg !2913
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2917
  %9 = load i32, ptr %8, align 4, !dbg !2917, !tbaa !2264
  %10 = or i32 %9, 1, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %10, metadata !2910, metadata !DIExpression()), !dbg !2913
  %11 = load i32, ptr %5, align 8, !dbg !2919, !tbaa !2214
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2920
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2921
  %14 = load ptr, ptr %13, align 8, !dbg !2921, !tbaa !2285
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2922
  %16 = load ptr, ptr %15, align 8, !dbg !2922, !tbaa !2288
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2923
  %18 = add i64 %17, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %18, metadata !2911, metadata !DIExpression()), !dbg !2913
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !2925
  call void @llvm.dbg.value(metadata ptr %19, metadata !2912, metadata !DIExpression()), !dbg !2913
  %20 = load i32, ptr %5, align 8, !dbg !2926, !tbaa !2214
  %21 = load ptr, ptr %13, align 8, !dbg !2927, !tbaa !2285
  %22 = load ptr, ptr %15, align 8, !dbg !2928, !tbaa !2288
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2929
  store i32 %7, ptr %6, align 4, !dbg !2930, !tbaa !1123
  ret ptr %19, !dbg !2931
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2901 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2905, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2906, metadata !DIExpression()), !dbg !2932
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2907, metadata !DIExpression()), !dbg !2932
  %5 = icmp eq ptr %3, null, !dbg !2933
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2933
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2908, metadata !DIExpression()), !dbg !2932
  %7 = tail call ptr @__errno_location() #43, !dbg !2934
  %8 = load i32, ptr %7, align 4, !dbg !2934, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2909, metadata !DIExpression()), !dbg !2932
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2935
  %10 = load i32, ptr %9, align 4, !dbg !2935, !tbaa !2264
  %11 = icmp eq ptr %2, null, !dbg !2936
  %12 = zext i1 %11 to i32, !dbg !2936
  %13 = or i32 %10, %12, !dbg !2937
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2910, metadata !DIExpression()), !dbg !2932
  %14 = load i32, ptr %6, align 8, !dbg !2938, !tbaa !2214
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2939
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2940
  %17 = load ptr, ptr %16, align 8, !dbg !2940, !tbaa !2285
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2941
  %19 = load ptr, ptr %18, align 8, !dbg !2941, !tbaa !2288
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2942
  %21 = add i64 %20, 1, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2911, metadata !DIExpression()), !dbg !2932
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !2944
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2912, metadata !DIExpression()), !dbg !2932
  %23 = load i32, ptr %6, align 8, !dbg !2945, !tbaa !2214
  %24 = load ptr, ptr %16, align 8, !dbg !2946, !tbaa !2285
  %25 = load ptr, ptr %18, align 8, !dbg !2947, !tbaa !2288
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2948
  store i32 %8, ptr %7, align 4, !dbg !2949, !tbaa !1123
  br i1 %11, label %28, label %27, !dbg !2950

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2951, !tbaa !1804
  br label %28, !dbg !2953

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2954
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2955 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2960, !tbaa !1060
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2957, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2958, metadata !DIExpression()), !dbg !2962
  %2 = load i32, ptr @nslots, align 4, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2958, metadata !DIExpression()), !dbg !2962
  %3 = icmp sgt i32 %2, 1, !dbg !2963
  br i1 %3, label %4, label %6, !dbg !2965

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2963
  br label %10, !dbg !2965

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2966
  %8 = load ptr, ptr %7, align 8, !dbg !2966, !tbaa !2968
  %9 = icmp eq ptr %8, @slot0, !dbg !2970
  br i1 %9, label %17, label %16, !dbg !2971

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2958, metadata !DIExpression()), !dbg !2962
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2972
  %13 = load ptr, ptr %12, align 8, !dbg !2972, !tbaa !2968
  tail call void @free(ptr noundef %13) #40, !dbg !2973
  %14 = add nuw nsw i64 %11, 1, !dbg !2974
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2958, metadata !DIExpression()), !dbg !2962
  %15 = icmp eq i64 %14, %5, !dbg !2963
  br i1 %15, label %6, label %10, !dbg !2965, !llvm.loop !2975

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2977
  store i64 256, ptr @slotvec0, align 8, !dbg !2979, !tbaa !2980
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2981, !tbaa !2968
  br label %17, !dbg !2982

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2983
  br i1 %18, label %20, label %19, !dbg !2985

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2986
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2988, !tbaa !1060
  br label %20, !dbg !2989

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2990, !tbaa !1123
  ret void, !dbg !2991
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2992 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2994, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2995, metadata !DIExpression()), !dbg !2996
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2997
  ret ptr %3, !dbg !2998
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2999 {
  %5 = alloca i64, align 8, !DIAssignID !3019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3013, metadata !DIExpression(), metadata !3019, metadata ptr %5, metadata !DIExpression()), !dbg !3020
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3003, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3004, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3005, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3006, metadata !DIExpression()), !dbg !3021
  %6 = tail call ptr @__errno_location() #43, !dbg !3022
  %7 = load i32, ptr %6, align 4, !dbg !3022, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3007, metadata !DIExpression()), !dbg !3021
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3023, !tbaa !1060
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3008, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3009, metadata !DIExpression()), !dbg !3021
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3024
  br i1 %9, label %10, label %11, !dbg !3024

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3026
  unreachable, !dbg !3026

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3027, !tbaa !1123
  %13 = icmp sgt i32 %12, %0, !dbg !3028
  br i1 %13, label %32, label %14, !dbg !3029

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3030
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3010, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3020
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3031
  %16 = sext i32 %12 to i64, !dbg !3032
  store i64 %16, ptr %5, align 8, !dbg !3033, !tbaa !1804, !DIAssignID !3034
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3013, metadata !DIExpression(), metadata !3034, metadata ptr %5, metadata !DIExpression()), !dbg !3020
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3035
  %18 = add nuw nsw i32 %0, 1, !dbg !3036
  %19 = sub i32 %18, %12, !dbg !3037
  %20 = sext i32 %19 to i64, !dbg !3038
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3039
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3008, metadata !DIExpression()), !dbg !3021
  store ptr %21, ptr @slotvec, align 8, !dbg !3040, !tbaa !1060
  br i1 %15, label %22, label %23, !dbg !3041

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3042, !tbaa.struct !3044
  br label %23, !dbg !3045

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3046, !tbaa !1123
  %25 = sext i32 %24 to i64, !dbg !3047
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3047
  %27 = load i64, ptr %5, align 8, !dbg !3048, !tbaa !1804
  %28 = sub nsw i64 %27, %25, !dbg !3049
  %29 = shl i64 %28, 4, !dbg !3050
  call void @llvm.dbg.value(metadata ptr %26, metadata !2428, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i32 0, metadata !2431, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %29, metadata !2432, metadata !DIExpression()), !dbg !3051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3053
  %30 = load i64, ptr %5, align 8, !dbg !3054, !tbaa !1804
  %31 = trunc i64 %30 to i32, !dbg !3054
  store i32 %31, ptr @nslots, align 4, !dbg !3055, !tbaa !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3056
  br label %32, !dbg !3057

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3021
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3008, metadata !DIExpression()), !dbg !3021
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3058
  %36 = load i64, ptr %35, align 8, !dbg !3059, !tbaa !2980
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3014, metadata !DIExpression()), !dbg !3060
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3061
  %38 = load ptr, ptr %37, align 8, !dbg !3061, !tbaa !2968
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3016, metadata !DIExpression()), !dbg !3060
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3062
  %40 = load i32, ptr %39, align 4, !dbg !3062, !tbaa !2264
  %41 = or i32 %40, 1, !dbg !3063
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3017, metadata !DIExpression()), !dbg !3060
  %42 = load i32, ptr %3, align 8, !dbg !3064, !tbaa !2214
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3065
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3066
  %45 = load ptr, ptr %44, align 8, !dbg !3066, !tbaa !2285
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3067
  %47 = load ptr, ptr %46, align 8, !dbg !3067, !tbaa !2288
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3018, metadata !DIExpression()), !dbg !3060
  %49 = icmp ugt i64 %36, %48, !dbg !3069
  br i1 %49, label %60, label %50, !dbg !3071

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3014, metadata !DIExpression()), !dbg !3060
  store i64 %51, ptr %35, align 8, !dbg !3074, !tbaa !2980
  %52 = icmp eq ptr %38, @slot0, !dbg !3075
  br i1 %52, label %54, label %53, !dbg !3077

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3078
  br label %54, !dbg !3078

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3079
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3016, metadata !DIExpression()), !dbg !3060
  store ptr %55, ptr %37, align 8, !dbg !3080, !tbaa !2968
  %56 = load i32, ptr %3, align 8, !dbg !3081, !tbaa !2214
  %57 = load ptr, ptr %44, align 8, !dbg !3082, !tbaa !2285
  %58 = load ptr, ptr %46, align 8, !dbg !3083, !tbaa !2288
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3084
  br label %60, !dbg !3085

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3060
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3016, metadata !DIExpression()), !dbg !3060
  store i32 %7, ptr %6, align 4, !dbg !3086, !tbaa !1123
  ret ptr %61, !dbg !3087
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3088 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3092, metadata !DIExpression()), !dbg !3095
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3093, metadata !DIExpression()), !dbg !3095
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3094, metadata !DIExpression()), !dbg !3095
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3096
  ret ptr %4, !dbg !3097
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3098 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 0, metadata !2994, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2995, metadata !DIExpression()), !dbg !3102
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3104
  ret ptr %2, !dbg !3105
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3106 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3110, metadata !DIExpression()), !dbg !3112
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 0, metadata !3092, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3113
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3115
  ret ptr %3, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3117 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3124, metadata !DIExpression(), metadata !3125, metadata ptr %4, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3121, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3122, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3123, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3128), !dbg !3131
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3140, !alias.scope !3128, !DIAssignID !3141
  call void @llvm.dbg.assign(metadata i8 0, metadata !3124, metadata !DIExpression(), metadata !3141, metadata ptr %4, metadata !DIExpression()), !dbg !3126
  %5 = icmp eq i32 %1, 10, !dbg !3142
  br i1 %5, label %6, label %7, !dbg !3144

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3145, !noalias !3128
  unreachable, !dbg !3145

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3146, !tbaa !2214, !alias.scope !3128, !DIAssignID !3147
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3147, metadata ptr %4, metadata !DIExpression()), !dbg !3126
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3148
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3149
  ret ptr %8, !dbg !3150
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3151 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3159, metadata !DIExpression(), metadata !3160, metadata ptr %5, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3155, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3156, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3157, metadata !DIExpression()), !dbg !3161
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3158, metadata !DIExpression()), !dbg !3161
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163), !dbg !3166
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3137, metadata !DIExpression()), !dbg !3169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3169, !alias.scope !3163, !DIAssignID !3170
  call void @llvm.dbg.assign(metadata i8 0, metadata !3159, metadata !DIExpression(), metadata !3170, metadata ptr %5, metadata !DIExpression()), !dbg !3161
  %6 = icmp eq i32 %1, 10, !dbg !3171
  br i1 %6, label %7, label %8, !dbg !3172

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3173, !noalias !3163
  unreachable, !dbg !3173

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3174, !tbaa !2214, !alias.scope !3163, !DIAssignID !3175
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3175, metadata ptr %5, metadata !DIExpression()), !dbg !3161
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3176
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3177
  ret ptr %9, !dbg !3178
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3179 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3185
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3183, metadata !DIExpression()), !dbg !3186
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3184, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3124, metadata !DIExpression(), metadata !3185, metadata ptr %3, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 0, metadata !3121, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i32 %0, metadata !3122, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %1, metadata !3123, metadata !DIExpression()), !dbg !3187
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3190), !dbg !3193
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3137, metadata !DIExpression()), !dbg !3196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3196, !alias.scope !3190, !DIAssignID !3197
  call void @llvm.dbg.assign(metadata i8 0, metadata !3124, metadata !DIExpression(), metadata !3197, metadata ptr %3, metadata !DIExpression()), !dbg !3187
  %4 = icmp eq i32 %0, 10, !dbg !3198
  br i1 %4, label %5, label %6, !dbg !3199

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3200, !noalias !3190
  unreachable, !dbg !3200

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3201, !tbaa !2214, !alias.scope !3190, !DIAssignID !3202
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3124, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3202, metadata ptr %3, metadata !DIExpression()), !dbg !3187
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3203
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3204
  ret ptr %7, !dbg !3205
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3206 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3213
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3210, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3211, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3212, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3159, metadata !DIExpression(), metadata !3213, metadata ptr %4, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 0, metadata !3155, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i32 %0, metadata !3156, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata ptr %1, metadata !3157, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %2, metadata !3158, metadata !DIExpression()), !dbg !3215
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3218), !dbg !3221
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3224, !alias.scope !3218, !DIAssignID !3225
  call void @llvm.dbg.assign(metadata i8 0, metadata !3159, metadata !DIExpression(), metadata !3225, metadata ptr %4, metadata !DIExpression()), !dbg !3215
  %5 = icmp eq i32 %0, 10, !dbg !3226
  br i1 %5, label %6, label %7, !dbg !3227

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3228, !noalias !3218
  unreachable, !dbg !3228

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3229, !tbaa !2214, !alias.scope !3218, !DIAssignID !3230
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3230, metadata ptr %4, metadata !DIExpression()), !dbg !3215
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3231
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3232
  ret ptr %8, !dbg !3233
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3234 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3242
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3242, metadata ptr %4, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3238, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3240, metadata !DIExpression()), !dbg !3243
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3245, !tbaa.struct !3246, !DIAssignID !3247
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3247, metadata ptr %4, metadata !DIExpression()), !dbg !3243
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2231, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2232, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !3248
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2234, metadata !DIExpression()), !dbg !3248
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3250
  %6 = lshr i8 %2, 5, !dbg !3251
  %7 = zext nneg i8 %6 to i64, !dbg !3251
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3252
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2235, metadata !DIExpression()), !dbg !3248
  %9 = and i8 %2, 31, !dbg !3253
  %10 = zext nneg i8 %9 to i32, !dbg !3253
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2237, metadata !DIExpression()), !dbg !3248
  %11 = load i32, ptr %8, align 4, !dbg !3254, !tbaa !1123
  %12 = lshr i32 %11, %10, !dbg !3255
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2238, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3248
  %13 = and i32 %12, 1, !dbg !3256
  %14 = xor i32 %13, 1, !dbg !3256
  %15 = shl nuw i32 %14, %10, !dbg !3257
  %16 = xor i32 %15, %11, !dbg !3258
  store i32 %16, ptr %8, align 4, !dbg !3258, !tbaa !1123
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3260
  ret ptr %17, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3262 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3268
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3266, metadata !DIExpression()), !dbg !3269
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3267, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3268, metadata ptr %3, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %0, metadata !3238, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 -1, metadata !3239, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 %1, metadata !3240, metadata !DIExpression()), !dbg !3270
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3273, !tbaa.struct !3246, !DIAssignID !3274
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3274, metadata ptr %3, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr %3, metadata !2231, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %1, metadata !2232, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8 %1, metadata !2234, metadata !DIExpression()), !dbg !3275
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3277
  %5 = lshr i8 %1, 5, !dbg !3278
  %6 = zext nneg i8 %5 to i64, !dbg !3278
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %7, metadata !2235, metadata !DIExpression()), !dbg !3275
  %8 = and i8 %1, 31, !dbg !3280
  %9 = zext nneg i8 %8 to i32, !dbg !3280
  call void @llvm.dbg.value(metadata i32 %9, metadata !2237, metadata !DIExpression()), !dbg !3275
  %10 = load i32, ptr %7, align 4, !dbg !3281, !tbaa !1123
  %11 = lshr i32 %10, %9, !dbg !3282
  call void @llvm.dbg.value(metadata i32 %11, metadata !2238, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3275
  %12 = and i32 %11, 1, !dbg !3283
  %13 = xor i32 %12, 1, !dbg !3283
  %14 = shl nuw i32 %13, %9, !dbg !3284
  %15 = xor i32 %14, %10, !dbg !3285
  store i32 %15, ptr %7, align 4, !dbg !3285, !tbaa !1123
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3286
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3287
  ret ptr %16, !dbg !3288
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3289 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3292
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata ptr %0, metadata !3266, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8 58, metadata !3267, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3292, metadata ptr %2, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr %0, metadata !3238, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 -1, metadata !3239, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i8 58, metadata !3240, metadata !DIExpression()), !dbg !3296
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3299, !tbaa.struct !3246, !DIAssignID !3300
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3300, metadata ptr %2, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata ptr %2, metadata !2231, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 58, metadata !2232, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8 58, metadata !2234, metadata !DIExpression()), !dbg !3301
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %3, metadata !2235, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 26, metadata !2237, metadata !DIExpression()), !dbg !3301
  %4 = load i32, ptr %3, align 4, !dbg !3304, !tbaa !1123
  call void @llvm.dbg.value(metadata i32 %4, metadata !2238, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3301
  %5 = or i32 %4, 67108864, !dbg !3305
  store i32 %5, ptr %3, align 4, !dbg !3305, !tbaa !1123
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3306
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3307
  ret ptr %6, !dbg !3308
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3309 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3313
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3313, metadata ptr %3, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %0, metadata !3238, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i64 %1, metadata !3239, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i8 58, metadata !3240, metadata !DIExpression()), !dbg !3315
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3318, !tbaa.struct !3246, !DIAssignID !3319
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3241, metadata !DIExpression(), metadata !3319, metadata ptr %3, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata ptr %3, metadata !2231, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8 58, metadata !2232, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i8 58, metadata !2234, metadata !DIExpression()), !dbg !3320
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %4, metadata !2235, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i32 26, metadata !2237, metadata !DIExpression()), !dbg !3320
  %5 = load i32, ptr %4, align 4, !dbg !3323, !tbaa !1123
  call void @llvm.dbg.value(metadata i32 %5, metadata !2238, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3320
  %6 = or i32 %5, 67108864, !dbg !3324
  store i32 %6, ptr %4, align 4, !dbg !3324, !tbaa !1123
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3325
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3326
  ret ptr %7, !dbg !3327
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3328 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3334
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3333, metadata !DIExpression(), metadata !3334, metadata ptr %4, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3336
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3330, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3331, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3338
  call void @llvm.dbg.value(metadata i32 %1, metadata !3132, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3339
  %5 = icmp eq i32 %1, 10, !dbg !3340
  br i1 %5, label %6, label %7, !dbg !3341

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3342, !noalias !3343
  unreachable, !dbg !3342

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3137, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3339
  store i32 %1, ptr %4, align 8, !dbg !3346, !tbaa.struct !3246, !DIAssignID !3347
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3346
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3346
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3333, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3347, metadata ptr %4, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3333, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3348, metadata ptr %8, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2231, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2232, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2233, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2234, metadata !DIExpression()), !dbg !3349
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3351
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2235, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2237, metadata !DIExpression()), !dbg !3349
  %10 = load i32, ptr %9, align 4, !dbg !3352, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2238, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3349
  %11 = or i32 %10, 67108864, !dbg !3353
  store i32 %11, ptr %9, align 4, !dbg !3353, !tbaa !1123, !DIAssignID !3354
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3333, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3354, metadata ptr %9, metadata !DIExpression()), !dbg !3335
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3355
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3356
  ret ptr %12, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3358 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3366
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3362, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3363, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3364, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3365, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3366, metadata ptr %5, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %1, metadata !3374, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %2, metadata !3375, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 -1, metadata !3377, metadata !DIExpression()), !dbg !3378
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3381, !tbaa.struct !3246, !DIAssignID !3382
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3382, metadata ptr %5, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3383, metadata ptr undef, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %1, metadata !2272, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %2, metadata !2273, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !3384
  store i32 10, ptr %5, align 8, !dbg !3386, !tbaa !2214, !DIAssignID !3387
  call void @llvm.dbg.assign(metadata i32 10, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3387, metadata ptr %5, metadata !DIExpression()), !dbg !3378
  %6 = icmp ne ptr %1, null, !dbg !3388
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3389
  br i1 %8, label %10, label %9, !dbg !3389

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3390
  unreachable, !dbg !3390

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3391
  store ptr %1, ptr %11, align 8, !dbg !3392, !tbaa !2285, !DIAssignID !3393
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3393, metadata ptr %11, metadata !DIExpression()), !dbg !3378
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3394
  store ptr %2, ptr %12, align 8, !dbg !3395, !tbaa !2288, !DIAssignID !3396
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3396, metadata ptr %12, metadata !DIExpression()), !dbg !3378
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3397
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3398
  ret ptr %13, !dbg !3399
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3369 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3400, metadata ptr %6, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3373, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3374, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3375, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3377, metadata !DIExpression()), !dbg !3401
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3403, !tbaa.struct !3246, !DIAssignID !3404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3404, metadata ptr %6, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3405, metadata ptr undef, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %6, metadata !2271, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %1, metadata !2272, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %2, metadata !2273, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %6, metadata !2271, metadata !DIExpression()), !dbg !3406
  store i32 10, ptr %6, align 8, !dbg !3408, !tbaa !2214, !DIAssignID !3409
  call void @llvm.dbg.assign(metadata i32 10, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3409, metadata ptr %6, metadata !DIExpression()), !dbg !3401
  %7 = icmp ne ptr %1, null, !dbg !3410
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3411
  br i1 %9, label %11, label %10, !dbg !3411

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3412
  unreachable, !dbg !3412

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3413
  store ptr %1, ptr %12, align 8, !dbg !3414, !tbaa !2285, !DIAssignID !3415
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3415, metadata ptr %12, metadata !DIExpression()), !dbg !3401
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3416
  store ptr %2, ptr %13, align 8, !dbg !3417, !tbaa !2288, !DIAssignID !3418
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3418, metadata ptr %13, metadata !DIExpression()), !dbg !3401
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3419
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3420
  ret ptr %14, !dbg !3421
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3422 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3429
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3426, metadata !DIExpression()), !dbg !3430
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3427, metadata !DIExpression()), !dbg !3430
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3428, metadata !DIExpression()), !dbg !3430
  call void @llvm.dbg.value(metadata i32 0, metadata !3362, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %0, metadata !3363, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %1, metadata !3364, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata ptr %2, metadata !3365, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3429, metadata ptr %4, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %2, metadata !3376, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 -1, metadata !3377, metadata !DIExpression()), !dbg !3433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3436, !tbaa.struct !3246, !DIAssignID !3437
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3437, metadata ptr %4, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3438, metadata ptr undef, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %4, metadata !2271, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata ptr %0, metadata !2272, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata ptr %1, metadata !2273, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata ptr %4, metadata !2271, metadata !DIExpression()), !dbg !3439
  store i32 10, ptr %4, align 8, !dbg !3441, !tbaa !2214, !DIAssignID !3442
  call void @llvm.dbg.assign(metadata i32 10, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3442, metadata ptr %4, metadata !DIExpression()), !dbg !3433
  %5 = icmp ne ptr %0, null, !dbg !3443
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3444
  br i1 %7, label %9, label %8, !dbg !3444

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3445
  unreachable, !dbg !3445

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3446
  store ptr %0, ptr %10, align 8, !dbg !3447, !tbaa !2285, !DIAssignID !3448
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3448, metadata ptr %10, metadata !DIExpression()), !dbg !3433
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3449
  store ptr %1, ptr %11, align 8, !dbg !3450, !tbaa !2288, !DIAssignID !3451
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3451, metadata ptr %11, metadata !DIExpression()), !dbg !3433
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3452
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3453
  ret ptr %12, !dbg !3454
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3455 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3463
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3460, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3461, metadata !DIExpression()), !dbg !3464
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3462, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3463, metadata ptr %5, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %0, metadata !3374, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %1, metadata !3375, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %2, metadata !3376, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i64 %3, metadata !3377, metadata !DIExpression()), !dbg !3465
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3468, !tbaa.struct !3246, !DIAssignID !3469
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(), metadata !3469, metadata ptr %5, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3470, metadata ptr undef, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %0, metadata !2272, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %1, metadata !2273, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %5, metadata !2271, metadata !DIExpression()), !dbg !3471
  store i32 10, ptr %5, align 8, !dbg !3473, !tbaa !2214, !DIAssignID !3474
  call void @llvm.dbg.assign(metadata i32 10, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3474, metadata ptr %5, metadata !DIExpression()), !dbg !3465
  %6 = icmp ne ptr %0, null, !dbg !3475
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3476
  br i1 %8, label %10, label %9, !dbg !3476

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3477
  unreachable, !dbg !3477

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3478
  store ptr %0, ptr %11, align 8, !dbg !3479, !tbaa !2285, !DIAssignID !3480
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3480, metadata ptr %11, metadata !DIExpression()), !dbg !3465
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3481
  store ptr %1, ptr %12, align 8, !dbg !3482, !tbaa !2288, !DIAssignID !3483
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3368, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3483, metadata ptr %12, metadata !DIExpression()), !dbg !3465
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3484
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3485
  ret ptr %13, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3487 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3492, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3493, metadata !DIExpression()), !dbg !3494
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3495
  ret ptr %4, !dbg !3496
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3501, metadata !DIExpression()), !dbg !3503
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32 0, metadata !3491, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata ptr %0, metadata !3492, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3493, metadata !DIExpression()), !dbg !3504
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3506
  ret ptr %3, !dbg !3507
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3508 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3512, metadata !DIExpression()), !dbg !3514
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3513, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %0, metadata !3491, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata ptr %1, metadata !3492, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()), !dbg !3515
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3517
  ret ptr %3, !dbg !3518
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3519 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3524
  call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3513, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i32 0, metadata !3491, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata ptr %0, metadata !3492, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i64 -1, metadata !3493, metadata !DIExpression()), !dbg !3527
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3529
  ret ptr %2, !dbg !3530
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3531 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3570, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3571, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3572, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3573, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3574, metadata !DIExpression()), !dbg !3576
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3575, metadata !DIExpression()), !dbg !3576
  %7 = icmp eq ptr %1, null, !dbg !3577
  br i1 %7, label %10, label %8, !dbg !3579

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.81, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3580
  br label %12, !dbg !3580

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.82, ptr noundef %2, ptr noundef %3) #40, !dbg !3581
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.3.84, i32 noundef 5) #40, !dbg !3582
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3582
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3583
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.5.86, i32 noundef 5) #40, !dbg !3584
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.87) #40, !dbg !3584
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %0), !dbg !3585
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
  ], !dbg !3586

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.7.88, i32 noundef 5) #40, !dbg !3587
  %21 = load ptr, ptr %4, align 8, !dbg !3587, !tbaa !1060
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3587
  br label %147, !dbg !3589

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.8.89, i32 noundef 5) #40, !dbg !3590
  %25 = load ptr, ptr %4, align 8, !dbg !3590, !tbaa !1060
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3590
  %27 = load ptr, ptr %26, align 8, !dbg !3590, !tbaa !1060
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3590
  br label %147, !dbg !3591

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.9.90, i32 noundef 5) #40, !dbg !3592
  %31 = load ptr, ptr %4, align 8, !dbg !3592, !tbaa !1060
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3592
  %33 = load ptr, ptr %32, align 8, !dbg !3592, !tbaa !1060
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3592
  %35 = load ptr, ptr %34, align 8, !dbg !3592, !tbaa !1060
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3592
  br label %147, !dbg !3593

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.10.91, i32 noundef 5) #40, !dbg !3594
  %39 = load ptr, ptr %4, align 8, !dbg !3594, !tbaa !1060
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3594
  %41 = load ptr, ptr %40, align 8, !dbg !3594, !tbaa !1060
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3594
  %43 = load ptr, ptr %42, align 8, !dbg !3594, !tbaa !1060
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3594
  %45 = load ptr, ptr %44, align 8, !dbg !3594, !tbaa !1060
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3594
  br label %147, !dbg !3595

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.11.92, i32 noundef 5) #40, !dbg !3596
  %49 = load ptr, ptr %4, align 8, !dbg !3596, !tbaa !1060
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3596
  %51 = load ptr, ptr %50, align 8, !dbg !3596, !tbaa !1060
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3596
  %53 = load ptr, ptr %52, align 8, !dbg !3596, !tbaa !1060
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3596
  %55 = load ptr, ptr %54, align 8, !dbg !3596, !tbaa !1060
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3596
  %57 = load ptr, ptr %56, align 8, !dbg !3596, !tbaa !1060
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3596
  br label %147, !dbg !3597

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.12.93, i32 noundef 5) #40, !dbg !3598
  %61 = load ptr, ptr %4, align 8, !dbg !3598, !tbaa !1060
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3598
  %63 = load ptr, ptr %62, align 8, !dbg !3598, !tbaa !1060
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3598
  %65 = load ptr, ptr %64, align 8, !dbg !3598, !tbaa !1060
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3598
  %67 = load ptr, ptr %66, align 8, !dbg !3598, !tbaa !1060
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3598
  %69 = load ptr, ptr %68, align 8, !dbg !3598, !tbaa !1060
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3598
  %71 = load ptr, ptr %70, align 8, !dbg !3598, !tbaa !1060
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3598
  br label %147, !dbg !3599

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.13.94, i32 noundef 5) #40, !dbg !3600
  %75 = load ptr, ptr %4, align 8, !dbg !3600, !tbaa !1060
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3600
  %77 = load ptr, ptr %76, align 8, !dbg !3600, !tbaa !1060
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3600
  %79 = load ptr, ptr %78, align 8, !dbg !3600, !tbaa !1060
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3600
  %81 = load ptr, ptr %80, align 8, !dbg !3600, !tbaa !1060
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3600
  %83 = load ptr, ptr %82, align 8, !dbg !3600, !tbaa !1060
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3600
  %85 = load ptr, ptr %84, align 8, !dbg !3600, !tbaa !1060
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3600
  %87 = load ptr, ptr %86, align 8, !dbg !3600, !tbaa !1060
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3600
  br label %147, !dbg !3601

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.14.95, i32 noundef 5) #40, !dbg !3602
  %91 = load ptr, ptr %4, align 8, !dbg !3602, !tbaa !1060
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3602
  %93 = load ptr, ptr %92, align 8, !dbg !3602, !tbaa !1060
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3602
  %95 = load ptr, ptr %94, align 8, !dbg !3602, !tbaa !1060
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3602
  %97 = load ptr, ptr %96, align 8, !dbg !3602, !tbaa !1060
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3602
  %99 = load ptr, ptr %98, align 8, !dbg !3602, !tbaa !1060
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3602
  %101 = load ptr, ptr %100, align 8, !dbg !3602, !tbaa !1060
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3602
  %103 = load ptr, ptr %102, align 8, !dbg !3602, !tbaa !1060
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3602
  %105 = load ptr, ptr %104, align 8, !dbg !3602, !tbaa !1060
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3602
  br label %147, !dbg !3603

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.15.96, i32 noundef 5) #40, !dbg !3604
  %109 = load ptr, ptr %4, align 8, !dbg !3604, !tbaa !1060
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3604
  %111 = load ptr, ptr %110, align 8, !dbg !3604, !tbaa !1060
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3604
  %113 = load ptr, ptr %112, align 8, !dbg !3604, !tbaa !1060
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3604
  %115 = load ptr, ptr %114, align 8, !dbg !3604, !tbaa !1060
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3604
  %117 = load ptr, ptr %116, align 8, !dbg !3604, !tbaa !1060
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3604
  %119 = load ptr, ptr %118, align 8, !dbg !3604, !tbaa !1060
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3604
  %121 = load ptr, ptr %120, align 8, !dbg !3604, !tbaa !1060
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3604
  %123 = load ptr, ptr %122, align 8, !dbg !3604, !tbaa !1060
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3604
  %125 = load ptr, ptr %124, align 8, !dbg !3604, !tbaa !1060
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3604
  br label %147, !dbg !3605

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.16.97, i32 noundef 5) #40, !dbg !3606
  %129 = load ptr, ptr %4, align 8, !dbg !3606, !tbaa !1060
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3606
  %131 = load ptr, ptr %130, align 8, !dbg !3606, !tbaa !1060
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3606
  %133 = load ptr, ptr %132, align 8, !dbg !3606, !tbaa !1060
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3606
  %135 = load ptr, ptr %134, align 8, !dbg !3606, !tbaa !1060
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3606
  %137 = load ptr, ptr %136, align 8, !dbg !3606, !tbaa !1060
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3606
  %139 = load ptr, ptr %138, align 8, !dbg !3606, !tbaa !1060
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3606
  %141 = load ptr, ptr %140, align 8, !dbg !3606, !tbaa !1060
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3606
  %143 = load ptr, ptr %142, align 8, !dbg !3606, !tbaa !1060
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3606
  %145 = load ptr, ptr %144, align 8, !dbg !3606, !tbaa !1060
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3606
  br label %147, !dbg !3607

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3608
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3614, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3615, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3616, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3617, metadata !DIExpression()), !dbg !3619
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3618, metadata !DIExpression()), !dbg !3619
  br label %6, !dbg !3620

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3618, metadata !DIExpression()), !dbg !3619
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3623
  %9 = load ptr, ptr %8, align 8, !dbg !3623, !tbaa !1060
  %10 = icmp eq ptr %9, null, !dbg !3625
  %11 = add i64 %7, 1, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3618, metadata !DIExpression()), !dbg !3619
  br i1 %10, label %12, label %6, !dbg !3625, !llvm.loop !3627

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3629
  ret void, !dbg !3630
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3631 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3648, metadata !DIExpression(), metadata !3650, metadata ptr %6, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3642, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3643, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3644, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3645, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3646, metadata !DIExpression()), !dbg !3651
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3647, metadata !DIExpression()), !dbg !3651
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3647, metadata !DIExpression()), !dbg !3651
  %10 = icmp ult i32 %9, 41, !dbg !3653
  br i1 %10, label %11, label %16, !dbg !3653

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3653
  %13 = zext nneg i32 %9 to i64, !dbg !3653
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3653
  %15 = add nuw nsw i32 %9, 8, !dbg !3653
  store i32 %15, ptr %4, align 8, !dbg !3653
  br label %19, !dbg !3653

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3653
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3653
  store ptr %18, ptr %7, align 8, !dbg !3653
  br label %19, !dbg !3653

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3653
  %22 = load ptr, ptr %21, align 8, !dbg !3653
  store ptr %22, ptr %6, align 16, !dbg !3656, !tbaa !1060
  %23 = icmp eq ptr %22, null, !dbg !3657
  br i1 %23, label %128, label %24, !dbg !3658

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3647, metadata !DIExpression()), !dbg !3651
  %25 = icmp ult i32 %20, 41, !dbg !3653
  br i1 %25, label %29, label %26, !dbg !3653

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3653
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3653
  store ptr %28, ptr %7, align 8, !dbg !3653
  br label %34, !dbg !3653

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3653
  %31 = zext nneg i32 %20 to i64, !dbg !3653
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3653
  %33 = add nuw nsw i32 %20, 8, !dbg !3653
  store i32 %33, ptr %4, align 8, !dbg !3653
  br label %34, !dbg !3653

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3653
  %37 = load ptr, ptr %36, align 8, !dbg !3653
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3659
  store ptr %37, ptr %38, align 8, !dbg !3656, !tbaa !1060
  %39 = icmp eq ptr %37, null, !dbg !3657
  br i1 %39, label %128, label %40, !dbg !3658

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3647, metadata !DIExpression()), !dbg !3651
  %41 = icmp ult i32 %35, 41, !dbg !3653
  br i1 %41, label %45, label %42, !dbg !3653

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3653
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3653
  store ptr %44, ptr %7, align 8, !dbg !3653
  br label %50, !dbg !3653

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3653
  %47 = zext nneg i32 %35 to i64, !dbg !3653
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3653
  %49 = add nuw nsw i32 %35, 8, !dbg !3653
  store i32 %49, ptr %4, align 8, !dbg !3653
  br label %50, !dbg !3653

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3653
  %53 = load ptr, ptr %52, align 8, !dbg !3653
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3659
  store ptr %53, ptr %54, align 16, !dbg !3656, !tbaa !1060
  %55 = icmp eq ptr %53, null, !dbg !3657
  br i1 %55, label %128, label %56, !dbg !3658

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3647, metadata !DIExpression()), !dbg !3651
  %57 = icmp ult i32 %51, 41, !dbg !3653
  br i1 %57, label %61, label %58, !dbg !3653

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3653
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3653
  store ptr %60, ptr %7, align 8, !dbg !3653
  br label %66, !dbg !3653

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3653
  %63 = zext nneg i32 %51 to i64, !dbg !3653
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3653
  %65 = add nuw nsw i32 %51, 8, !dbg !3653
  store i32 %65, ptr %4, align 8, !dbg !3653
  br label %66, !dbg !3653

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3653
  %69 = load ptr, ptr %68, align 8, !dbg !3653
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3659
  store ptr %69, ptr %70, align 8, !dbg !3656, !tbaa !1060
  %71 = icmp eq ptr %69, null, !dbg !3657
  br i1 %71, label %128, label %72, !dbg !3658

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3647, metadata !DIExpression()), !dbg !3651
  %73 = icmp ult i32 %67, 41, !dbg !3653
  br i1 %73, label %77, label %74, !dbg !3653

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3653
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3653
  store ptr %76, ptr %7, align 8, !dbg !3653
  br label %82, !dbg !3653

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3653
  %79 = zext nneg i32 %67 to i64, !dbg !3653
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3653
  %81 = add nuw nsw i32 %67, 8, !dbg !3653
  store i32 %81, ptr %4, align 8, !dbg !3653
  br label %82, !dbg !3653

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3653
  %85 = load ptr, ptr %84, align 8, !dbg !3653
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3659
  store ptr %85, ptr %86, align 16, !dbg !3656, !tbaa !1060
  %87 = icmp eq ptr %85, null, !dbg !3657
  br i1 %87, label %128, label %88, !dbg !3658

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3647, metadata !DIExpression()), !dbg !3651
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3647, metadata !DIExpression()), !dbg !3651
  %89 = icmp ult i32 %83, 41, !dbg !3653
  br i1 %89, label %93, label %90, !dbg !3653

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3653
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3653
  store ptr %92, ptr %7, align 8, !dbg !3653
  br label %98, !dbg !3653

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3653
  %95 = zext nneg i32 %83 to i64, !dbg !3653
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3653
  %97 = add nuw nsw i32 %83, 8, !dbg !3653
  store i32 %97, ptr %4, align 8, !dbg !3653
  br label %98, !dbg !3653

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3653
  %100 = load ptr, ptr %99, align 8, !dbg !3653
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3659
  store ptr %100, ptr %101, align 8, !dbg !3656, !tbaa !1060
  %102 = icmp eq ptr %100, null, !dbg !3657
  br i1 %102, label %128, label %103, !dbg !3658

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3647, metadata !DIExpression()), !dbg !3651
  %104 = load ptr, ptr %7, align 8, !dbg !3653
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3653
  store ptr %105, ptr %7, align 8, !dbg !3653
  %106 = load ptr, ptr %104, align 8, !dbg !3653
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3659
  store ptr %106, ptr %107, align 16, !dbg !3656, !tbaa !1060
  %108 = icmp eq ptr %106, null, !dbg !3657
  br i1 %108, label %128, label %109, !dbg !3658

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3647, metadata !DIExpression()), !dbg !3651
  %110 = load ptr, ptr %7, align 8, !dbg !3653
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3653
  store ptr %111, ptr %7, align 8, !dbg !3653
  %112 = load ptr, ptr %110, align 8, !dbg !3653
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3659
  store ptr %112, ptr %113, align 8, !dbg !3656, !tbaa !1060
  %114 = icmp eq ptr %112, null, !dbg !3657
  br i1 %114, label %128, label %115, !dbg !3658

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3647, metadata !DIExpression()), !dbg !3651
  %116 = load ptr, ptr %7, align 8, !dbg !3653
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3653
  store ptr %117, ptr %7, align 8, !dbg !3653
  %118 = load ptr, ptr %116, align 8, !dbg !3653
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3659
  store ptr %118, ptr %119, align 16, !dbg !3656, !tbaa !1060
  %120 = icmp eq ptr %118, null, !dbg !3657
  br i1 %120, label %128, label %121, !dbg !3658

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3647, metadata !DIExpression()), !dbg !3651
  %122 = load ptr, ptr %7, align 8, !dbg !3653
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3653
  store ptr %123, ptr %7, align 8, !dbg !3653
  %124 = load ptr, ptr %122, align 8, !dbg !3653
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3659
  store ptr %124, ptr %125, align 8, !dbg !3656, !tbaa !1060
  %126 = icmp eq ptr %124, null, !dbg !3657
  %127 = select i1 %126, i64 9, i64 10, !dbg !3658
  br label %128, !dbg !3658

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3660
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3661
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3662
  ret void, !dbg !3662
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3663 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3671, metadata !DIExpression(), metadata !3676, metadata ptr %5, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3668, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3669, metadata !DIExpression()), !dbg !3677
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3670, metadata !DIExpression()), !dbg !3677
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !3678
  call void @llvm.va_start(ptr nonnull %5), !dbg !3679
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3680
  call void @llvm.va_end(ptr nonnull %5), !dbg !3681
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !3682
  ret void, !dbg !3682
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3683 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3684, !tbaa !1060
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.85, ptr noundef %1), !dbg !3684
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.17.102, i32 noundef 5) #40, !dbg !3685
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.103) #40, !dbg !3685
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.19.104, i32 noundef 5) #40, !dbg !3686
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.105, ptr noundef nonnull @.str.21) #40, !dbg !3686
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.83, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !3687
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.106) #40, !dbg !3687
  ret void, !dbg !3688
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3689 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3695, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()), !dbg !3703
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3705
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3711
  %5 = icmp eq ptr %4, null, !dbg !3713
  br i1 %5, label %6, label %7, !dbg !3715

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3716
  unreachable, !dbg !3716

7:                                                ; preds = %3
  ret ptr %4, !dbg !3717
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3699 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3701, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()), !dbg !3718
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3720
  %5 = icmp eq ptr %4, null, !dbg !3722
  br i1 %5, label %6, label %7, !dbg !3723

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3724
  unreachable, !dbg !3724

7:                                                ; preds = %3
  ret ptr %4, !dbg !3725
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3726 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3730, metadata !DIExpression()), !dbg !3731
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3732
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3733
  %3 = icmp eq ptr %2, null, !dbg !3735
  br i1 %3, label %4, label %5, !dbg !3736

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3737
  unreachable, !dbg !3737

5:                                                ; preds = %1
  ret ptr %2, !dbg !3738
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3739 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3740 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3744, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata i64 %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3752
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3753
  %3 = icmp eq ptr %2, null, !dbg !3755
  br i1 %3, label %4, label %5, !dbg !3756

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3757
  unreachable, !dbg !3757

5:                                                ; preds = %1
  ret ptr %2, !dbg !3758
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3763, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata i64 %0, metadata !3730, metadata !DIExpression()), !dbg !3765
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !3767
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3768
  %3 = icmp eq ptr %2, null, !dbg !3770
  br i1 %3, label %4, label %5, !dbg !3771

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3772
  unreachable, !dbg !3772

5:                                                ; preds = %1
  ret ptr %2, !dbg !3773
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3774 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3780
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3779, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %1, metadata !3785, metadata !DIExpression()), !dbg !3786
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3788
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3790
  %5 = icmp eq ptr %4, null, !dbg !3792
  br i1 %5, label %6, label %7, !dbg !3793

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3794
  unreachable, !dbg !3794

7:                                                ; preds = %2
  ret ptr %4, !dbg !3795
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3796 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3797 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3801, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3802, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %0, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %1, metadata !3807, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %1, metadata !3785, metadata !DIExpression()), !dbg !3810
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3812
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #46, !dbg !3813
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3814
  %5 = icmp eq ptr %4, null, !dbg !3816
  br i1 %5, label %6, label %7, !dbg !3817

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3818
  unreachable, !dbg !3818

7:                                                ; preds = %2
  ret ptr %4, !dbg !3819
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3820 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3826, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata ptr %0, metadata !3828, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %1, metadata !3831, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %2, metadata !3832, metadata !DIExpression()), !dbg !3833
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3835
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !3836
  %5 = icmp eq ptr %4, null, !dbg !3838
  br i1 %5, label %6, label %7, !dbg !3839

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3840
  unreachable, !dbg !3840

7:                                                ; preds = %3
  ret ptr %4, !dbg !3841
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3842 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3846, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr null, metadata !3698, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %0, metadata !3701, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %1, metadata !3702, metadata !DIExpression()), !dbg !3849
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3851
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3852
  %4 = icmp eq ptr %3, null, !dbg !3854
  br i1 %4, label %5, label %6, !dbg !3855

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3856
  unreachable, !dbg !3856

6:                                                ; preds = %2
  ret ptr %3, !dbg !3857
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3858 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3862, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata ptr null, metadata !3824, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i64 %1, metadata !3826, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata ptr null, metadata !3828, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %0, metadata !3831, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3832, metadata !DIExpression()), !dbg !3867
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3869
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3870
  %4 = icmp eq ptr %3, null, !dbg !3872
  br i1 %4, label %5, label %6, !dbg !3873

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3874
  unreachable, !dbg !3874

6:                                                ; preds = %2
  ret ptr %3, !dbg !3875
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3876 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3880, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3881, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 1, metadata !972, metadata !DIExpression()), !dbg !3883
  %3 = load i64, ptr %1, align 8, !dbg !3885, !tbaa !1804
  call void @llvm.dbg.value(metadata i64 %3, metadata !973, metadata !DIExpression()), !dbg !3883
  %4 = icmp eq ptr %0, null, !dbg !3886
  br i1 %4, label %5, label %8, !dbg !3888

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3889
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3892
  br label %15, !dbg !3892

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3893
  %10 = add nuw i64 %9, 1, !dbg !3893
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3893
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3893
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %13, metadata !973, metadata !DIExpression()), !dbg !3883
  br i1 %12, label %14, label %15, !dbg !3896

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3897
  unreachable, !dbg !3897

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3883
  call void @llvm.dbg.value(metadata i64 %16, metadata !973, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 %16, metadata !3701, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 1, metadata !3702, metadata !DIExpression()), !dbg !3898
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3900
  call void @llvm.dbg.value(metadata ptr %17, metadata !3706, metadata !DIExpression()), !dbg !3901
  %18 = icmp eq ptr %17, null, !dbg !3903
  br i1 %18, label %19, label %20, !dbg !3904

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3905
  unreachable, !dbg !3905

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !970, metadata !DIExpression()), !dbg !3883
  store i64 %16, ptr %1, align 8, !dbg !3906, !tbaa !1804
  ret ptr %17, !dbg !3907
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !965 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !972, metadata !DIExpression()), !dbg !3908
  %4 = load i64, ptr %1, align 8, !dbg !3909, !tbaa !1804
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !973, metadata !DIExpression()), !dbg !3908
  %5 = icmp eq ptr %0, null, !dbg !3910
  br i1 %5, label %6, label %13, !dbg !3911

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3912
  br i1 %7, label %8, label %20, !dbg !3913

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3914
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !973, metadata !DIExpression()), !dbg !3908
  %10 = icmp ugt i64 %2, 128, !dbg !3916
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3917
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !973, metadata !DIExpression()), !dbg !3908
  br label %20, !dbg !3918

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3919
  %15 = add nuw i64 %14, 1, !dbg !3919
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3919
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3919
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3919
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !973, metadata !DIExpression()), !dbg !3908
  br i1 %17, label %19, label %20, !dbg !3920

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3921
  unreachable, !dbg !3921

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !973, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %21, metadata !3701, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %2, metadata !3702, metadata !DIExpression()), !dbg !3922
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3924
  call void @llvm.dbg.value(metadata ptr %22, metadata !3706, metadata !DIExpression()), !dbg !3925
  %23 = icmp eq ptr %22, null, !dbg !3927
  br i1 %23, label %24, label %25, !dbg !3928

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3929
  unreachable, !dbg !3929

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !970, metadata !DIExpression()), !dbg !3908
  store i64 %21, ptr %1, align 8, !dbg !3930, !tbaa !1804
  ret ptr %22, !dbg !3931
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !977 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !986, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !987, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !988, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !989, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !990, metadata !DIExpression()), !dbg !3932
  %6 = load i64, ptr %1, align 8, !dbg !3933, !tbaa !1804
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !991, metadata !DIExpression()), !dbg !3932
  %7 = ashr i64 %6, 1, !dbg !3934
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3934
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3934
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3934
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !992, metadata !DIExpression()), !dbg !3932
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3936
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !992, metadata !DIExpression()), !dbg !3932
  %12 = icmp sgt i64 %3, -1, !dbg !3937
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3939
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3939
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !992, metadata !DIExpression()), !dbg !3932
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3940
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3940
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !993, metadata !DIExpression()), !dbg !3932
  %18 = icmp slt i64 %17, 128, !dbg !3940
  %19 = select i1 %18, i64 128, i64 0, !dbg !3940
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3940
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !994, metadata !DIExpression()), !dbg !3932
  %21 = icmp eq i64 %20, 0, !dbg !3941
  br i1 %21, label %26, label %22, !dbg !3943

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3944
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !992, metadata !DIExpression()), !dbg !3932
  %24 = srem i64 %20, %4, !dbg !3946
  %25 = sub nsw i64 %20, %24, !dbg !3947
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !993, metadata !DIExpression()), !dbg !3932
  br label %26, !dbg !3948

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3932
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !993, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !992, metadata !DIExpression()), !dbg !3932
  %29 = icmp eq ptr %0, null, !dbg !3949
  br i1 %29, label %30, label %31, !dbg !3951

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3952, !tbaa !1804
  br label %31, !dbg !3953

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3954
  %33 = icmp slt i64 %32, %2, !dbg !3956
  br i1 %33, label %34, label %46, !dbg !3957

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3958
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3958
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3958
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !992, metadata !DIExpression()), !dbg !3932
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3959
  br i1 %40, label %45, label %41, !dbg !3959

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3960
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3960
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !993, metadata !DIExpression()), !dbg !3932
  br i1 %43, label %45, label %46, !dbg !3961

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !3962
  unreachable, !dbg !3962

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3932
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !993, metadata !DIExpression()), !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !992, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %48, metadata !3779, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata ptr %0, metadata !3781, metadata !DIExpression()), !dbg !3965
  call void @llvm.dbg.value(metadata i64 %48, metadata !3785, metadata !DIExpression()), !dbg !3965
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3967
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #46, !dbg !3968
  call void @llvm.dbg.value(metadata ptr %50, metadata !3706, metadata !DIExpression()), !dbg !3969
  %51 = icmp eq ptr %50, null, !dbg !3971
  br i1 %51, label %52, label %53, !dbg !3972

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !3973
  unreachable, !dbg !3973

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !986, metadata !DIExpression()), !dbg !3932
  store i64 %47, ptr %1, align 8, !dbg !3974, !tbaa !1804
  ret ptr %50, !dbg !3975
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3976 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.value(metadata i64 %0, metadata !3980, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 1, metadata !3983, metadata !DIExpression()), !dbg !3984
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3986
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3987
  %3 = icmp eq ptr %2, null, !dbg !3989
  br i1 %3, label %4, label %5, !dbg !3990

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3991
  unreachable, !dbg !3991

5:                                                ; preds = %1
  ret ptr %2, !dbg !3992
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3993 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3981 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3980, metadata !DIExpression()), !dbg !3994
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !3994
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3995
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3996
  %4 = icmp eq ptr %3, null, !dbg !3998
  br i1 %4, label %5, label %6, !dbg !3999

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4000
  unreachable, !dbg !4000

6:                                                ; preds = %2
  ret ptr %3, !dbg !4001
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4002 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %0, metadata !4006, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 1, metadata !4009, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 1, metadata !4015, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 1, metadata !4015, metadata !DIExpression()), !dbg !4016
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4018
  call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !4019
  %3 = icmp eq ptr %2, null, !dbg !4021
  br i1 %3, label %4, label %5, !dbg !4022

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4023
  unreachable, !dbg !4023

5:                                                ; preds = %1
  ret ptr %2, !dbg !4024
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !4007 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4006, metadata !DIExpression()), !dbg !4025
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4009, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4015, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %0, metadata !4012, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 %1, metadata !4015, metadata !DIExpression()), !dbg !4026
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4028
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !4029
  %4 = icmp eq ptr %3, null, !dbg !4031
  br i1 %4, label %5, label %6, !dbg !4032

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4033
  unreachable, !dbg !4033

6:                                                ; preds = %2
  ret ptr %3, !dbg !4034
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !4042
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4044
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !4045
  %4 = icmp eq ptr %3, null, !dbg !4047
  br i1 %4, label %5, label %6, !dbg !4048

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4049
  unreachable, !dbg !4049

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4050, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i64 %1, metadata !4057, metadata !DIExpression()), !dbg !4058
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4060
  ret ptr %3, !dbg !4061
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4062 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4066, metadata !DIExpression()), !dbg !4068
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4067, metadata !DIExpression()), !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3744, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.value(metadata i64 %1, metadata !3746, metadata !DIExpression()), !dbg !4071
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4073
  call void @llvm.dbg.value(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !4074
  %4 = icmp eq ptr %3, null, !dbg !4076
  br i1 %4, label %5, label %6, !dbg !4077

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4078
  unreachable, !dbg !4078

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4050, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %1, metadata !4057, metadata !DIExpression()), !dbg !4079
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4081
  ret ptr %3, !dbg !4082
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4083 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4087, metadata !DIExpression()), !dbg !4090
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4088, metadata !DIExpression()), !dbg !4090
  %3 = add nsw i64 %1, 1, !dbg !4091
  call void @llvm.dbg.value(metadata i64 %3, metadata !3744, metadata !DIExpression()), !dbg !4092
  call void @llvm.dbg.value(metadata i64 %3, metadata !3746, metadata !DIExpression()), !dbg !4094
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4096
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !4097
  %5 = icmp eq ptr %4, null, !dbg !4099
  br i1 %5, label %6, label %7, !dbg !4100

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4101
  unreachable, !dbg !4101

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4089, metadata !DIExpression()), !dbg !4090
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4102
  store i8 0, ptr %8, align 1, !dbg !4103, !tbaa !1132
  call void @llvm.dbg.value(metadata ptr %4, metadata !4050, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %1, metadata !4057, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4106
  ret ptr %4, !dbg !4107
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4108 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4110, metadata !DIExpression()), !dbg !4111
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4112
  %3 = add i64 %2, 1, !dbg !4113
  call void @llvm.dbg.value(metadata ptr %0, metadata !4039, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %3, metadata !4040, metadata !DIExpression()), !dbg !4114
  call void @llvm.dbg.value(metadata i64 %3, metadata !3730, metadata !DIExpression()), !dbg !4116
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4118
  call void @llvm.dbg.value(metadata ptr %4, metadata !3706, metadata !DIExpression()), !dbg !4119
  %5 = icmp eq ptr %4, null, !dbg !4121
  br i1 %5, label %6, label %7, !dbg !4122

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4123
  unreachable, !dbg !4123

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4050, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %3, metadata !4057, metadata !DIExpression()), !dbg !4124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4126
  ret ptr %4, !dbg !4127
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4128 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4133, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4130, metadata !DIExpression()), !dbg !4134
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #40, !dbg !4133
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #40, !dbg !4133
  %3 = icmp eq i32 %1, 0, !dbg !4133
  tail call void @llvm.assume(i1 %3), !dbg !4133
  tail call void @abort() #42, !dbg !4135
  unreachable, !dbg !4135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nounwind uwtable
define dso_local i64 @xnumtoumax(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #10 !dbg !4136 {
  %9 = alloca i64, align 8, !DIAssignID !4157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4148, metadata !DIExpression(), metadata !4157, metadata ptr %9, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4140, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4141, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4142, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4143, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4144, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !4145, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !4146, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4147, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40, !dbg !4159
  %10 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef %1, ptr noundef nonnull %9, ptr noundef %4) #40, !dbg !4160
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4150, metadata !DIExpression()), !dbg !4158
  %11 = icmp eq i32 %10, 4, !dbg !4161
  br i1 %11, label %27, label %12, !dbg !4163

12:                                               ; preds = %8
  %13 = load i64, ptr %9, align 8, !dbg !4164, !tbaa !1804
  %14 = icmp ult i64 %13, %2, !dbg !4167
  br i1 %14, label %15, label %20, !dbg !4168

15:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4149, metadata !DIExpression()), !dbg !4158
  %16 = and i32 %7, 4, !dbg !4169
  %17 = icmp eq i32 %16, 0, !dbg !4171
  %18 = select i1 %17, i32 75, i32 34, !dbg !4171
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !4152, metadata !DIExpression()), !dbg !4158
  %19 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4172
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !4150, metadata !DIExpression()), !dbg !4158
  br label %27, !dbg !4173

20:                                               ; preds = %12
  %21 = icmp ugt i64 %13, %3, !dbg !4174
  br i1 %21, label %22, label %33, !dbg !4176

22:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4149, metadata !DIExpression()), !dbg !4158
  %23 = and i32 %7, 8, !dbg !4177
  %24 = icmp eq i32 %23, 0, !dbg !4179
  %25 = select i1 %24, i32 75, i32 34, !dbg !4179
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !4152, metadata !DIExpression()), !dbg !4158
  %26 = call i32 @llvm.umax.i32(i32 %10, i32 1), !dbg !4180
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4150, metadata !DIExpression()), !dbg !4158
  br label %27, !dbg !4181

27:                                               ; preds = %15, %22, %8
  %28 = phi i32 [ undef, %8 ], [ %25, %22 ], [ %18, %15 ]
  %29 = phi i32 [ 4, %8 ], [ %26, %22 ], [ %19, %15 ]
  %30 = phi i64 [ undef, %8 ], [ %3, %22 ], [ %2, %15 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !4149, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !4150, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !4152, metadata !DIExpression()), !dbg !4158
  %31 = icmp eq i32 %29, 1, !dbg !4182
  %32 = select i1 %31, i32 %28, i32 0, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !4153, metadata !DIExpression()), !dbg !4158
  br label %37, !dbg !4184

33:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !4149, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4150, metadata !DIExpression()), !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 75, metadata !4152, metadata !DIExpression()), !dbg !4158
  %34 = icmp eq i32 %10, 1, !dbg !4182
  %35 = select i1 %34, i32 75, i32 0, !dbg !4183
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4153, metadata !DIExpression()), !dbg !4158
  %36 = icmp eq i32 %10, 0, !dbg !4185
  br i1 %36, label %47, label %37, !dbg !4184

37:                                               ; preds = %27, %33
  %38 = phi i32 [ %32, %27 ], [ %35, %33 ]
  %39 = phi i1 [ %31, %27 ], [ %34, %33 ]
  %40 = phi i64 [ %30, %27 ], [ %13, %33 ]
  %41 = and i32 %7, 2
  %42 = icmp ne i32 %41, 0
  %43 = and i1 %42, %39, !dbg !4186
  br i1 %43, label %47, label %44, !dbg !4186

44:                                               ; preds = %37
  %45 = call i32 @llvm.umax.i32(i32 %6, i32 1), !dbg !4187
  %46 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4187
  call void (i32, i32, ptr, ...) @error(i32 noundef %45, i32 noundef %38, ptr noundef nonnull @.str.122, ptr noundef nonnull %5, ptr noundef %46) #40, !dbg !4187
  unreachable, !dbg !4187

47:                                               ; preds = %37, %33
  %48 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %49 = phi i64 [ %40, %37 ], [ %13, %33 ]
  %50 = tail call ptr @__errno_location() #43, !dbg !4188
  store i32 %48, ptr %50, align 4, !dbg !4189, !tbaa !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40, !dbg !4190
  ret i64 %49, !dbg !4191
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local i64 @xdectoumax(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5) local_unnamed_addr #10 !dbg !4192 {
  %7 = alloca i64, align 8, !DIAssignID !4202
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4196, metadata !DIExpression()), !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4197, metadata !DIExpression()), !dbg !4203
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4198, metadata !DIExpression()), !dbg !4203
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4199, metadata !DIExpression()), !dbg !4203
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4200, metadata !DIExpression()), !dbg !4203
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4201, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4148, metadata !DIExpression(), metadata !4202, metadata ptr %7, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %0, metadata !4140, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 10, metadata !4141, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i64 %2, metadata !4143, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %3, metadata !4144, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata ptr %4, metadata !4145, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 %5, metadata !4146, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 0, metadata !4147, metadata !DIExpression()), !dbg !4204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40, !dbg !4206
  %8 = call i32 @xstrtoumax(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10, ptr noundef nonnull %7, ptr noundef %3) #40, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %8, metadata !4150, metadata !DIExpression()), !dbg !4204
  %9 = freeze i32 %8, !dbg !4208
  %10 = icmp eq i32 %9, 4, !dbg !4209
  br i1 %10, label %23, label %11, !dbg !4210

11:                                               ; preds = %6
  %12 = load i64, ptr %7, align 8, !dbg !4211, !tbaa !1804
  %13 = icmp ult i64 %12, %1, !dbg !4212
  %14 = icmp ugt i64 %12, %2
  %15 = or i1 %13, %14, !dbg !4213
  br i1 %15, label %16, label %19, !dbg !4213

16:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 poison, metadata !4149, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 poison, metadata !4150, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 75, metadata !4152, metadata !DIExpression()), !dbg !4204
  %17 = icmp ult i32 %9, 2, !dbg !4214
  %18 = select i1 %17, i32 75, i32 0, !dbg !4215
  br label %23, !dbg !4215

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i64 %12, metadata !4149, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 %8, metadata !4150, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 75, metadata !4152, metadata !DIExpression()), !dbg !4204
  %20 = icmp eq i32 %9, 1, !dbg !4214
  %21 = select i1 %20, i32 75, i32 0, !dbg !4215
  call void @llvm.dbg.value(metadata i32 %21, metadata !4153, metadata !DIExpression()), !dbg !4204
  %22 = icmp eq i32 %9, 0, !dbg !4216
  br i1 %22, label %27, label %23, !dbg !4217

23:                                               ; preds = %16, %6, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %6 ], [ %18, %16 ]
  %25 = call i32 @llvm.umax.i32(i32 %5, i32 1), !dbg !4218
  %26 = call ptr @quote(ptr noundef nonnull %0) #40, !dbg !4218
  call void (i32, i32, ptr, ...) @error(i32 noundef %25, i32 noundef %24, ptr noundef nonnull @.str.122, ptr noundef nonnull %4, ptr noundef %26) #40, !dbg !4218
  unreachable, !dbg !4218

27:                                               ; preds = %19
  %28 = tail call ptr @__errno_location() #43, !dbg !4219
  store i32 0, ptr %28, align 4, !dbg !4220, !tbaa !1123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40, !dbg !4221
  ret i64 %12, !dbg !4222
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #10 !dbg !4223 {
  %6 = alloca ptr, align 8, !DIAssignID !4248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4235, metadata !DIExpression(), metadata !4248, metadata ptr %6, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4231, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4232, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4233, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4234, metadata !DIExpression()), !dbg !4249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40, !dbg !4250
  %7 = icmp eq ptr %1, null, !dbg !4251
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4236, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4237, metadata !DIExpression()), !dbg !4252
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4240, metadata !DIExpression()), !dbg !4252
  %8 = tail call ptr @__ctype_b_loc() #43, !dbg !4249
  %9 = load ptr, ptr %8, align 8, !tbaa !1060
  br label %10, !dbg !4253

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %0, %5 ], [ %18, %10 ], !dbg !4252
  %12 = load i8, ptr %11, align 1, !dbg !4252, !tbaa !1132
  tail call void @llvm.dbg.value(metadata i8 %12, metadata !4240, metadata !DIExpression()), !dbg !4252
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !4237, metadata !DIExpression()), !dbg !4252
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds i16, ptr %9, i64 %13, !dbg !4254
  %15 = load i16, ptr %14, align 2, !dbg !4254, !tbaa !1164
  %16 = and i16 %15, 8192, !dbg !4254
  %17 = icmp eq i16 %16, 0, !dbg !4253
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !4255
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !4237, metadata !DIExpression()), !dbg !4252
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4240, metadata !DIExpression()), !dbg !4252
  br i1 %17, label %19, label %10, !dbg !4253, !llvm.loop !4256

19:                                               ; preds = %10
  %20 = select i1 %7, ptr %6, ptr %1, !dbg !4251
  %21 = icmp eq i8 %12, 45, !dbg !4258
  br i1 %21, label %22, label %23, !dbg !4260

22:                                               ; preds = %19
  store ptr %0, ptr %20, align 8, !dbg !4261, !tbaa !1060
  br label %386

23:                                               ; preds = %19
  %24 = tail call ptr @__errno_location() #43, !dbg !4263
  store i32 0, ptr %24, align 4, !dbg !4264, !tbaa !1123
  %25 = call i64 @strtoumax(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %2) #40, !dbg !4265
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4242, metadata !DIExpression()), !dbg !4249
  %26 = load ptr, ptr %20, align 8, !dbg !4266, !tbaa !1060
  %27 = icmp eq ptr %26, %0, !dbg !4268
  br i1 %27, label %28, label %37, !dbg !4269

28:                                               ; preds = %23
  %29 = icmp eq ptr %4, null, !dbg !4270
  br i1 %29, label %386, label %30, !dbg !4273

30:                                               ; preds = %28
  %31 = load i8, ptr %0, align 1, !dbg !4274, !tbaa !1132
  %32 = icmp eq i8 %31, 0, !dbg !4274
  br i1 %32, label %386, label %33, !dbg !4275

33:                                               ; preds = %30
  %34 = sext i8 %31 to i32, !dbg !4274
  %35 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %34) #41, !dbg !4276
  %36 = icmp eq ptr %35, null, !dbg !4276
  br i1 %36, label %386, label %44, !dbg !4277

37:                                               ; preds = %23
  %38 = load i32, ptr %24, align 4, !dbg !4278, !tbaa !1123
  switch i32 %38, label %386 [
    i32 0, label %40
    i32 34, label %39
  ], !dbg !4280

39:                                               ; preds = %37
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4242, metadata !DIExpression()), !dbg !4249
  br label %40, !dbg !4281

40:                                               ; preds = %37, %39
  %41 = phi i32 [ 1, %39 ], [ %38, %37 ], !dbg !4249
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !4242, metadata !DIExpression()), !dbg !4249
  %42 = icmp eq ptr %4, null, !dbg !4283
  br i1 %42, label %43, label %44, !dbg !4285

43:                                               ; preds = %40
  store i64 %25, ptr %3, align 8, !dbg !4286, !tbaa !1804
  br label %386, !dbg !4288

44:                                               ; preds = %33, %40
  %45 = phi i32 [ %41, %40 ], [ 0, %33 ]
  %46 = phi i64 [ %25, %40 ], [ 1, %33 ]
  %47 = load i8, ptr %26, align 1, !dbg !4289, !tbaa !1132
  %48 = icmp eq i8 %47, 0, !dbg !4290
  br i1 %48, label %383, label %49, !dbg !4291

49:                                               ; preds = %44
  %50 = sext i8 %47 to i32, !dbg !4289
  %51 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef %50) #41, !dbg !4292
  %52 = icmp eq ptr %51, null, !dbg !4292
  br i1 %52, label %53, label %55, !dbg !4294

53:                                               ; preds = %49
  store i64 %46, ptr %3, align 8, !dbg !4295, !tbaa !1804
  %54 = or disjoint i32 %45, 2, !dbg !4297
  br label %386, !dbg !4298

55:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i32 1024, metadata !4243, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4246, metadata !DIExpression()), !dbg !4299
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
  ], !dbg !4300

56:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %57 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 48) #41, !dbg !4301
  %58 = icmp eq ptr %57, null, !dbg !4301
  br i1 %58, label %68, label %59, !dbg !4304

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %26, i64 1, !dbg !4305
  %61 = load i8, ptr %60, align 1, !dbg !4305, !tbaa !1132
  switch i8 %61, label %68 [
    i8 105, label %62
    i8 66, label %67
    i8 68, label %67
  ], !dbg !4306

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !4307
  %64 = load i8, ptr %63, align 1, !dbg !4307, !tbaa !1132
  %65 = icmp eq i8 %64, 66, !dbg !4310
  %66 = select i1 %65, i64 3, i64 1, !dbg !4311
  br label %68, !dbg !4311

67:                                               ; preds = %59, %59
  tail call void @llvm.dbg.value(metadata i32 1000, metadata !4243, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4246, metadata !DIExpression()), !dbg !4299
  br label %68, !dbg !4312

68:                                               ; preds = %62, %56, %59, %67, %55
  %69 = phi i64 [ 1024, %55 ], [ 1024, %59 ], [ 1000, %67 ], [ 1024, %56 ], [ 1024, %62 ], !dbg !4299
  %70 = phi i64 [ 1, %55 ], [ 1, %59 ], [ 2, %67 ], [ 1, %56 ], [ %66, %62 ], !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !4246, metadata !DIExpression()), !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !4243, metadata !DIExpression()), !dbg !4299
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
  ], !dbg !4313

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %72 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4334
  %73 = extractvalue { i64, i1 } %72, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %74 = extractvalue { i64, i1 } %72, 0, !dbg !4336
  %75 = select i1 %73, i64 -1, i64 %74, !dbg !4336
  call void @llvm.dbg.value(metadata i1 %73, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %73, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %76 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %75), !dbg !4334
  %77 = extractvalue { i64, i1 } %76, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %78 = extractvalue { i64, i1 } %76, 0, !dbg !4336
  %79 = select i1 %77, i64 -1, i64 %78, !dbg !4336
  %80 = or i1 %73, %77, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %80, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %80, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %81 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %79), !dbg !4334
  %82 = extractvalue { i64, i1 } %81, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %83 = extractvalue { i64, i1 } %81, 0, !dbg !4336
  %84 = select i1 %82, i64 -1, i64 %83, !dbg !4336
  %85 = or i1 %80, %82, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %85, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %85, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %86 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %84), !dbg !4334
  %87 = extractvalue { i64, i1 } %86, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %88 = extractvalue { i64, i1 } %86, 0, !dbg !4336
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4336
  %90 = or i1 %85, %87, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %90, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %90, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %91 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %89), !dbg !4334
  %92 = extractvalue { i64, i1 } %91, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %93 = extractvalue { i64, i1 } %91, 0, !dbg !4336
  %94 = select i1 %92, i64 -1, i64 %93, !dbg !4336
  %95 = or i1 %90, %92, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %95, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %95, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %96 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %94), !dbg !4334
  %97 = extractvalue { i64, i1 } %96, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %98 = extractvalue { i64, i1 } %96, 0, !dbg !4336
  %99 = select i1 %97, i64 -1, i64 %98, !dbg !4336
  %100 = or i1 %95, %97, !dbg !4337
  call void @llvm.dbg.value(metadata i1 %100, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i1 %100, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4322
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4332
  %101 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %99), !dbg !4334
  %102 = extractvalue { i64, i1 } %101, 1, !dbg !4334
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4332
  %103 = extractvalue { i64, i1 } %101, 0, !dbg !4336
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4336
  %105 = or i1 %100, %102, !dbg !4337
  %106 = zext i1 %105 to i32, !dbg !4337
  call void @llvm.dbg.value(metadata i32 %106, metadata !4314, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4322
  br label %372, !dbg !4338

107:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %108 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4343
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !4344
  %111 = select i1 %109, i64 -1, i64 %110, !dbg !4344
  call void @llvm.dbg.value(metadata i1 %109, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %109, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %112 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %111), !dbg !4343
  %113 = extractvalue { i64, i1 } %112, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %114 = extractvalue { i64, i1 } %112, 0, !dbg !4344
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4344
  %116 = or i1 %109, %113, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %116, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %116, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %115), !dbg !4343
  %118 = extractvalue { i64, i1 } %117, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %119 = extractvalue { i64, i1 } %117, 0, !dbg !4344
  %120 = select i1 %118, i64 -1, i64 %119, !dbg !4344
  %121 = or i1 %116, %118, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %121, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %121, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %122 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %120), !dbg !4343
  %123 = extractvalue { i64, i1 } %122, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %124 = extractvalue { i64, i1 } %122, 0, !dbg !4344
  %125 = select i1 %123, i64 -1, i64 %124, !dbg !4344
  %126 = or i1 %121, %123, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %126, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %126, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %127 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %125), !dbg !4343
  %128 = extractvalue { i64, i1 } %127, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %129 = extractvalue { i64, i1 } %127, 0, !dbg !4344
  %130 = select i1 %128, i64 -1, i64 %129, !dbg !4344
  %131 = or i1 %126, %128, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %131, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %131, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %132 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %130), !dbg !4343
  %133 = extractvalue { i64, i1 } %132, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %134 = extractvalue { i64, i1 } %132, 0, !dbg !4344
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4344
  %136 = or i1 %131, %133, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %136, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %136, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %137 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %135), !dbg !4343
  %138 = extractvalue { i64, i1 } %137, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %139 = extractvalue { i64, i1 } %137, 0, !dbg !4344
  %140 = select i1 %138, i64 -1, i64 %139, !dbg !4344
  %141 = or i1 %136, %138, !dbg !4345
  call void @llvm.dbg.value(metadata i1 %141, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i1 %141, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4339
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4341
  %142 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %140), !dbg !4343
  %143 = extractvalue { i64, i1 } %142, 1, !dbg !4343
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4341
  %144 = extractvalue { i64, i1 } %142, 0, !dbg !4344
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4344
  %146 = or i1 %141, %143, !dbg !4345
  %147 = zext i1 %146 to i32, !dbg !4345
  call void @llvm.dbg.value(metadata i32 %147, metadata !4314, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4339
  br label %372, !dbg !4338

148:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 9, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %149 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4350
  %150 = extractvalue { i64, i1 } %149, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %151 = extractvalue { i64, i1 } %149, 0, !dbg !4351
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4351
  call void @llvm.dbg.value(metadata i1 %150, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %150, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %153 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %152), !dbg !4350
  %154 = extractvalue { i64, i1 } %153, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %155 = extractvalue { i64, i1 } %153, 0, !dbg !4351
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4351
  %157 = or i1 %150, %154, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %157, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %157, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %158 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %156), !dbg !4350
  %159 = extractvalue { i64, i1 } %158, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %160 = extractvalue { i64, i1 } %158, 0, !dbg !4351
  %161 = select i1 %159, i64 -1, i64 %160, !dbg !4351
  %162 = or i1 %157, %159, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %162, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %162, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %163 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %161), !dbg !4350
  %164 = extractvalue { i64, i1 } %163, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %165 = extractvalue { i64, i1 } %163, 0, !dbg !4351
  %166 = select i1 %164, i64 -1, i64 %165, !dbg !4351
  %167 = or i1 %162, %164, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %167, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %167, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %168 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %166), !dbg !4350
  %169 = extractvalue { i64, i1 } %168, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %170 = extractvalue { i64, i1 } %168, 0, !dbg !4351
  %171 = select i1 %169, i64 -1, i64 %170, !dbg !4351
  %172 = or i1 %167, %169, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %172, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %172, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %173 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %171), !dbg !4350
  %174 = extractvalue { i64, i1 } %173, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %175 = extractvalue { i64, i1 } %173, 0, !dbg !4351
  %176 = select i1 %174, i64 -1, i64 %175, !dbg !4351
  %177 = or i1 %172, %174, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %177, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %177, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %178 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %176), !dbg !4350
  %179 = extractvalue { i64, i1 } %178, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %180 = extractvalue { i64, i1 } %178, 0, !dbg !4351
  %181 = select i1 %179, i64 -1, i64 %180, !dbg !4351
  %182 = or i1 %177, %179, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %182, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %182, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %183 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %181), !dbg !4350
  %184 = extractvalue { i64, i1 } %183, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %185 = extractvalue { i64, i1 } %183, 0, !dbg !4351
  %186 = select i1 %184, i64 -1, i64 %185, !dbg !4351
  %187 = or i1 %182, %184, !dbg !4352
  call void @llvm.dbg.value(metadata i1 %187, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i1 %187, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4346
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4348
  %188 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %186), !dbg !4350
  %189 = extractvalue { i64, i1 } %188, 1, !dbg !4350
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4348
  %190 = extractvalue { i64, i1 } %188, 0, !dbg !4351
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4351
  %192 = or i1 %187, %189, !dbg !4352
  %193 = zext i1 %192 to i32, !dbg !4352
  call void @llvm.dbg.value(metadata i32 %193, metadata !4314, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4346
  br label %372, !dbg !4338

194:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 10, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 9, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %195 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4357
  %196 = extractvalue { i64, i1 } %195, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %197 = extractvalue { i64, i1 } %195, 0, !dbg !4358
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4358
  call void @llvm.dbg.value(metadata i1 %196, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 9, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %196, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 9, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %199 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %198), !dbg !4357
  %200 = extractvalue { i64, i1 } %199, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %201 = extractvalue { i64, i1 } %199, 0, !dbg !4358
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4358
  %203 = or i1 %196, %200, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %203, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %203, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 8, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %204 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %202), !dbg !4357
  %205 = extractvalue { i64, i1 } %204, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %206 = extractvalue { i64, i1 } %204, 0, !dbg !4358
  %207 = select i1 %205, i64 -1, i64 %206, !dbg !4358
  %208 = or i1 %203, %205, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %208, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %208, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 7, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %209 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %207), !dbg !4357
  %210 = extractvalue { i64, i1 } %209, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %211 = extractvalue { i64, i1 } %209, 0, !dbg !4358
  %212 = select i1 %210, i64 -1, i64 %211, !dbg !4358
  %213 = or i1 %208, %210, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %213, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %213, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %214 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %212), !dbg !4357
  %215 = extractvalue { i64, i1 } %214, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %216 = extractvalue { i64, i1 } %214, 0, !dbg !4358
  %217 = select i1 %215, i64 -1, i64 %216, !dbg !4358
  %218 = or i1 %213, %215, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %218, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %218, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %219 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %217), !dbg !4357
  %220 = extractvalue { i64, i1 } %219, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %221 = extractvalue { i64, i1 } %219, 0, !dbg !4358
  %222 = select i1 %220, i64 -1, i64 %221, !dbg !4358
  %223 = or i1 %218, %220, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %223, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %223, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %224 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %222), !dbg !4357
  %225 = extractvalue { i64, i1 } %224, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %226 = extractvalue { i64, i1 } %224, 0, !dbg !4358
  %227 = select i1 %225, i64 -1, i64 %226, !dbg !4358
  %228 = or i1 %223, %225, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %228, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %228, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %229 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %227), !dbg !4357
  %230 = extractvalue { i64, i1 } %229, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %231 = extractvalue { i64, i1 } %229, 0, !dbg !4358
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4358
  %233 = or i1 %228, %230, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %233, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %233, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %234 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %232), !dbg !4357
  %235 = extractvalue { i64, i1 } %234, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %236 = extractvalue { i64, i1 } %234, 0, !dbg !4358
  %237 = select i1 %235, i64 -1, i64 %236, !dbg !4358
  %238 = or i1 %233, %235, !dbg !4359
  call void @llvm.dbg.value(metadata i1 %238, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i1 %238, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4353
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4355
  %239 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %237), !dbg !4357
  %240 = extractvalue { i64, i1 } %239, 1, !dbg !4357
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4355
  %241 = extractvalue { i64, i1 } %239, 0, !dbg !4358
  %242 = select i1 %240, i64 -1, i64 %241, !dbg !4358
  %243 = or i1 %238, %240, !dbg !4359
  %244 = zext i1 %243 to i32, !dbg !4359
  call void @llvm.dbg.value(metadata i32 %244, metadata !4314, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4353
  br label %372, !dbg !4338

245:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4362
  %246 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4364
  %247 = extractvalue { i64, i1 } %246, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4362
  %248 = extractvalue { i64, i1 } %246, 0, !dbg !4365
  %249 = select i1 %247, i64 -1, i64 %248, !dbg !4365
  call void @llvm.dbg.value(metadata i1 %247, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i1 %247, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4362
  %250 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %249), !dbg !4364
  %251 = extractvalue { i64, i1 } %250, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4362
  %252 = extractvalue { i64, i1 } %250, 0, !dbg !4365
  %253 = select i1 %251, i64 -1, i64 %252, !dbg !4365
  %254 = or i1 %247, %251, !dbg !4366
  call void @llvm.dbg.value(metadata i1 %254, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i1 %254, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4362
  %255 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %253), !dbg !4364
  %256 = extractvalue { i64, i1 } %255, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4362
  %257 = extractvalue { i64, i1 } %255, 0, !dbg !4365
  %258 = select i1 %256, i64 -1, i64 %257, !dbg !4365
  %259 = or i1 %254, %256, !dbg !4366
  call void @llvm.dbg.value(metadata i1 %259, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i1 %259, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4362
  %260 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %258), !dbg !4364
  %261 = extractvalue { i64, i1 } %260, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4362
  %262 = extractvalue { i64, i1 } %260, 0, !dbg !4365
  %263 = select i1 %261, i64 -1, i64 %262, !dbg !4365
  %264 = or i1 %259, %261, !dbg !4366
  call void @llvm.dbg.value(metadata i1 %264, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i1 %264, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4360
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4362
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4362
  %265 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %263), !dbg !4364
  %266 = extractvalue { i64, i1 } %265, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4362
  %267 = extractvalue { i64, i1 } %265, 0, !dbg !4365
  %268 = select i1 %266, i64 -1, i64 %267, !dbg !4365
  %269 = or i1 %264, %266, !dbg !4366
  %270 = zext i1 %269 to i32, !dbg !4366
  call void @llvm.dbg.value(metadata i32 %270, metadata !4314, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4360
  br label %372, !dbg !4338

271:                                              ; preds = %68
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 6, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %272 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4371
  %273 = extractvalue { i64, i1 } %272, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %274 = extractvalue { i64, i1 } %272, 0, !dbg !4372
  %275 = select i1 %273, i64 -1, i64 %274, !dbg !4372
  call void @llvm.dbg.value(metadata i1 %273, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i1 %273, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 5, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %276 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %275), !dbg !4371
  %277 = extractvalue { i64, i1 } %276, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %278 = extractvalue { i64, i1 } %276, 0, !dbg !4372
  %279 = select i1 %277, i64 -1, i64 %278, !dbg !4372
  %280 = or i1 %273, %277, !dbg !4373
  call void @llvm.dbg.value(metadata i1 %280, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i1 %280, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %281 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %279), !dbg !4371
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %283 = extractvalue { i64, i1 } %281, 0, !dbg !4372
  %284 = select i1 %282, i64 -1, i64 %283, !dbg !4372
  %285 = or i1 %280, %282, !dbg !4373
  call void @llvm.dbg.value(metadata i1 %285, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i1 %285, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %286 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %284), !dbg !4371
  %287 = extractvalue { i64, i1 } %286, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %288 = extractvalue { i64, i1 } %286, 0, !dbg !4372
  %289 = select i1 %287, i64 -1, i64 %288, !dbg !4372
  %290 = or i1 %285, %287, !dbg !4373
  call void @llvm.dbg.value(metadata i1 %290, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i1 %290, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %291 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %289), !dbg !4371
  %292 = extractvalue { i64, i1 } %291, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %293 = extractvalue { i64, i1 } %291, 0, !dbg !4372
  %294 = select i1 %292, i64 -1, i64 %293, !dbg !4372
  %295 = or i1 %290, %292, !dbg !4373
  call void @llvm.dbg.value(metadata i1 %295, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i1 %295, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4367
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4369
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4369
  %296 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %294), !dbg !4371
  %297 = extractvalue { i64, i1 } %296, 1, !dbg !4371
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4369
  %298 = extractvalue { i64, i1 } %296, 0, !dbg !4372
  %299 = select i1 %297, i64 -1, i64 %298, !dbg !4372
  %300 = or i1 %295, %297, !dbg !4373
  %301 = zext i1 %300 to i32, !dbg !4373
  call void @llvm.dbg.value(metadata i32 %301, metadata !4314, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4367
  br label %372, !dbg !4338

302:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4374
  call void @llvm.dbg.value(metadata i32 512, metadata !4330, metadata !DIExpression()), !dbg !4374
  %303 = icmp ugt i64 %46, 36028797018963967, !dbg !4376
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4374
  %304 = shl i64 %46, 9, !dbg !4377
  %305 = select i1 %303, i64 -1, i64 %304, !dbg !4377
  %306 = zext i1 %303 to i32, !dbg !4377
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %306, metadata !4247, metadata !DIExpression()), !dbg !4299
  br label %372, !dbg !4378

307:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 1024, metadata !4330, metadata !DIExpression()), !dbg !4379
  %308 = icmp ugt i64 %46, 18014398509481983, !dbg !4381
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4379
  %309 = shl i64 %46, 10, !dbg !4382
  %310 = select i1 %308, i64 -1, i64 %309, !dbg !4382
  %311 = zext i1 %308 to i32, !dbg !4382
  tail call void @llvm.dbg.value(metadata i64 %310, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %311, metadata !4247, metadata !DIExpression()), !dbg !4299
  br label %372, !dbg !4383

312:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4319, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i64 %69, metadata !4320, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4386
  %313 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4388
  %314 = extractvalue { i64, i1 } %313, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4386
  %315 = extractvalue { i64, i1 } %313, 0, !dbg !4389
  %316 = select i1 %314, i64 -1, i64 %315, !dbg !4389
  call void @llvm.dbg.value(metadata i1 %314, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i1 %314, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4386
  %317 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %316), !dbg !4388
  %318 = extractvalue { i64, i1 } %317, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4386
  %319 = extractvalue { i64, i1 } %317, 0, !dbg !4389
  %320 = select i1 %318, i64 -1, i64 %319, !dbg !4389
  %321 = or i1 %314, %318, !dbg !4390
  call void @llvm.dbg.value(metadata i1 %321, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i1 %321, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4384
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4386
  %322 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %320), !dbg !4388
  %323 = extractvalue { i64, i1 } %322, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4386
  %324 = extractvalue { i64, i1 } %322, 0, !dbg !4389
  %325 = select i1 %323, i64 -1, i64 %324, !dbg !4389
  %326 = or i1 %321, %323, !dbg !4390
  %327 = zext i1 %326 to i32, !dbg !4390
  call void @llvm.dbg.value(metadata i32 %327, metadata !4314, metadata !DIExpression()), !dbg !4384
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4384
  br label %372, !dbg !4338

328:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4319, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i64 %69, metadata !4320, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4391
  %329 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4393
  %330 = extractvalue { i64, i1 } %329, 1, !dbg !4393
  %331 = extractvalue { i64, i1 } %329, 0, !dbg !4395
  %332 = select i1 %330, i64 -1, i64 %331, !dbg !4395
  %333 = zext i1 %330 to i32, !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4396
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4396
  br label %372, !dbg !4338

334:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4319, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i64 %69, metadata !4320, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4397
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4399
  %335 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4401
  %336 = extractvalue { i64, i1 } %335, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4399
  %337 = extractvalue { i64, i1 } %335, 0, !dbg !4402
  %338 = select i1 %336, i64 -1, i64 %337, !dbg !4402
  call void @llvm.dbg.value(metadata i1 %336, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4397
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4397
  call void @llvm.dbg.value(metadata i1 %336, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4397
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4399
  %339 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %338), !dbg !4401
  %340 = extractvalue { i64, i1 } %339, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4399
  %341 = extractvalue { i64, i1 } %339, 0, !dbg !4402
  %342 = select i1 %340, i64 -1, i64 %341, !dbg !4402
  %343 = or i1 %336, %340, !dbg !4403
  %344 = zext i1 %343 to i32, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %344, metadata !4314, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4397
  br label %372, !dbg !4338

345:                                              ; preds = %68, %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4319, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %69, metadata !4320, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 0, metadata !4314, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 4, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4406
  %346 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %46), !dbg !4408
  %347 = extractvalue { i64, i1 } %346, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4406
  %348 = extractvalue { i64, i1 } %346, 0, !dbg !4409
  %349 = select i1 %347, i64 -1, i64 %348, !dbg !4409
  call void @llvm.dbg.value(metadata i1 %347, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i1 %347, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 3, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4406
  %350 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %349), !dbg !4408
  %351 = extractvalue { i64, i1 } %350, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4406
  %352 = extractvalue { i64, i1 } %350, 0, !dbg !4409
  %353 = select i1 %351, i64 -1, i64 %352, !dbg !4409
  %354 = or i1 %347, %351, !dbg !4410
  call void @llvm.dbg.value(metadata i1 %354, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i1 %354, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 2, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4406
  %355 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %353), !dbg !4408
  %356 = extractvalue { i64, i1 } %355, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4406
  %357 = extractvalue { i64, i1 } %355, 0, !dbg !4409
  %358 = select i1 %356, i64 -1, i64 %357, !dbg !4409
  %359 = or i1 %354, %356, !dbg !4410
  call void @llvm.dbg.value(metadata i1 %359, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i1 %359, metadata !4314, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4404
  call void @llvm.dbg.value(metadata i32 1, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4406
  call void @llvm.dbg.value(metadata i64 %69, metadata !4330, metadata !DIExpression()), !dbg !4406
  %360 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %69, i64 %358), !dbg !4408
  %361 = extractvalue { i64, i1 } %360, 1, !dbg !4408
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4406
  %362 = extractvalue { i64, i1 } %360, 0, !dbg !4409
  %363 = select i1 %361, i64 -1, i64 %362, !dbg !4409
  %364 = or i1 %359, %361, !dbg !4410
  %365 = zext i1 %364 to i32, !dbg !4410
  call void @llvm.dbg.value(metadata i32 %365, metadata !4314, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4404
  br label %372, !dbg !4338

366:                                              ; preds = %68
  call void @llvm.dbg.value(metadata ptr undef, metadata !4325, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i32 2, metadata !4330, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.value(metadata i64 poison, metadata !4331, metadata !DIExpression()), !dbg !4411
  %367 = shl i64 %46, 1, !dbg !4413
  %368 = icmp sgt i64 %46, -1, !dbg !4413
  %369 = select i1 %368, i64 %367, i64 -1, !dbg !4413
  %370 = lshr i64 %46, 63, !dbg !4413
  %371 = trunc i64 %370 to i32, !dbg !4413
  tail call void @llvm.dbg.value(metadata i64 %369, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %371, metadata !4247, metadata !DIExpression()), !dbg !4299
  br label %372, !dbg !4414

372:                                              ; preds = %71, %107, %345, %148, %194, %245, %334, %328, %312, %271, %302, %307, %366, %68
  %373 = phi i64 [ %369, %366 ], [ %46, %68 ], [ %310, %307 ], [ %305, %302 ], [ %299, %271 ], [ %325, %312 ], [ %332, %328 ], [ %342, %334 ], [ %268, %245 ], [ %242, %194 ], [ %191, %148 ], [ %363, %345 ], [ %145, %107 ], [ %104, %71 ], !dbg !4249
  %374 = phi i32 [ %371, %366 ], [ 0, %68 ], [ %311, %307 ], [ %306, %302 ], [ %301, %271 ], [ %327, %312 ], [ %333, %328 ], [ %344, %334 ], [ %270, %245 ], [ %244, %194 ], [ %193, %148 ], [ %365, %345 ], [ %147, %107 ], [ %106, %71 ], !dbg !4415
  tail call void @llvm.dbg.value(metadata i64 %373, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %374, metadata !4247, metadata !DIExpression()), !dbg !4299
  %375 = or i32 %374, %45, !dbg !4338
  tail call void @llvm.dbg.value(metadata i32 %375, metadata !4242, metadata !DIExpression()), !dbg !4249
  %376 = getelementptr inbounds i8, ptr %26, i64 %70, !dbg !4416
  store ptr %376, ptr %20, align 8, !dbg !4416, !tbaa !1060
  %377 = load i8, ptr %376, align 1, !dbg !4417, !tbaa !1132
  %378 = icmp eq i8 %377, 0, !dbg !4417
  %379 = or disjoint i32 %375, 2
  %380 = select i1 %378, i32 %375, i32 %379, !dbg !4419
  tail call void @llvm.dbg.value(metadata i32 %380, metadata !4242, metadata !DIExpression()), !dbg !4249
  br label %383

381:                                              ; preds = %68
  store i64 %46, ptr %3, align 8, !dbg !4420, !tbaa !1804
  %382 = or disjoint i32 %45, 2, !dbg !4421
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !4242, metadata !DIExpression()), !dbg !4249
  br label %386

383:                                              ; preds = %372, %44
  %384 = phi i64 [ %46, %44 ], [ %373, %372 ], !dbg !4422
  %385 = phi i32 [ %45, %44 ], [ %380, %372 ], !dbg !4423
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !4241, metadata !DIExpression()), !dbg !4249
  tail call void @llvm.dbg.value(metadata i32 %385, metadata !4242, metadata !DIExpression()), !dbg !4249
  store i64 %384, ptr %3, align 8, !dbg !4424, !tbaa !1804
  br label %386, !dbg !4425

386:                                              ; preds = %43, %53, %383, %33, %30, %28, %37, %381, %22
  %387 = phi i32 [ 4, %22 ], [ %385, %383 ], [ %382, %381 ], [ %54, %53 ], [ %41, %43 ], [ 4, %33 ], [ 4, %30 ], [ 4, %28 ], [ 4, %37 ], !dbg !4249
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40, !dbg !4426
  ret i32 %387, !dbg !4426
}

; Function Attrs: nounwind
declare !dbg !4427 i64 @strtoumax(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4431 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !4493
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4474, metadata !DIExpression(), metadata !4493, metadata ptr %3, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4469, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4470, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4472, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4473, metadata !DIExpression()), !dbg !4494
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #40, !dbg !4495
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4478, metadata !DIExpression()), !dbg !4496
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4480, metadata !DIExpression()), !dbg !4496
  br label %4, !dbg !4497

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !4494
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4496
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4494
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4498
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4499
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4471, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4472, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4480, metadata !DIExpression()), !dbg !4496
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4478, metadata !DIExpression()), !dbg !4496
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !4473, metadata !DIExpression()), !dbg !4494
  %11 = load i8, ptr %6, align 1, !dbg !4499, !tbaa !1132
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4500

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4471, metadata !DIExpression()), !dbg !4494
  %13 = icmp slt i64 %7, 80, !dbg !4501
  br i1 %13, label %14, label %43, !dbg !4504

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4505
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  store i8 114, ptr %10, align 1, !dbg !4506, !tbaa !1132
  br label %43, !dbg !4507

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4494
  %17 = or i32 %8, 576, !dbg !4508
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4472, metadata !DIExpression()), !dbg !4494
  %18 = icmp slt i64 %7, 80, !dbg !4509
  br i1 %18, label %19, label %43, !dbg !4511

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4512
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  store i8 119, ptr %10, align 1, !dbg !4513, !tbaa !1132
  br label %43, !dbg !4514

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4471, metadata !DIExpression()), !dbg !4494
  %22 = or i32 %8, 1088, !dbg !4515
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4472, metadata !DIExpression()), !dbg !4494
  %23 = icmp slt i64 %7, 80, !dbg !4516
  br i1 %23, label %24, label %43, !dbg !4518

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4519
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  store i8 97, ptr %10, align 1, !dbg !4520, !tbaa !1132
  br label %43, !dbg !4521

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4472, metadata !DIExpression()), !dbg !4494
  %27 = icmp slt i64 %7, 80, !dbg !4522
  br i1 %27, label %28, label %43, !dbg !4524

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4525
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  store i8 98, ptr %10, align 1, !dbg !4526, !tbaa !1132
  br label %43, !dbg !4527

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4471, metadata !DIExpression()), !dbg !4494
  %31 = icmp slt i64 %7, 80, !dbg !4528
  br i1 %31, label %32, label %43, !dbg !4530

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4531
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  store i8 43, ptr %10, align 1, !dbg !4532, !tbaa !1132
  br label %43, !dbg !4533

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4534
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4472, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4473, metadata !DIExpression()), !dbg !4494
  br label %43, !dbg !4535

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4536
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4472, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4473, metadata !DIExpression()), !dbg !4494
  br label %43, !dbg !4537

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #41, !dbg !4538
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4481, metadata !DIExpression()), !dbg !4539
  %40 = sub nsw i64 80, %7, !dbg !4540
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4542
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4481, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.value(metadata ptr %10, metadata !4543, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr %6, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %41, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #40, !dbg !4550
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !4551
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4480, metadata !DIExpression()), !dbg !4496
  br label %49, !dbg !4552

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !4494
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4494
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4471, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4472, metadata !DIExpression()), !dbg !4494
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4480, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4496
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !4473, metadata !DIExpression()), !dbg !4494
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4553
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4478, metadata !DIExpression()), !dbg !4496
  br label %4, !dbg !4554, !llvm.loop !4555

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4496
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !4480, metadata !DIExpression()), !dbg !4496
  store i8 0, ptr %50, align 1, !dbg !4557, !tbaa !1132
  %51 = and i8 %5, 1, !dbg !4558
  %52 = icmp eq i8 %51, 0, !dbg !4558
  br i1 %52, label %64, label %53, !dbg !4559

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !4560
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #40, !dbg !4561
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !4486, metadata !DIExpression()), !dbg !4562
  %56 = icmp slt i32 %55, 0, !dbg !4563
  br i1 %56, label %66, label %57, !dbg !4565

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #40, !dbg !4566
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !4489, metadata !DIExpression()), !dbg !4562
  %59 = icmp eq ptr %58, null, !dbg !4567
  br i1 %59, label %60, label %66, !dbg !4568

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #43, !dbg !4569
  %62 = load i32, ptr %61, align 4, !dbg !4569, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !4490, metadata !DIExpression()), !dbg !4570
  %63 = tail call i32 @close(i32 noundef %55) #40, !dbg !4571
  store i32 %62, ptr %61, align 4, !dbg !4572, !tbaa !1123
  br label %66, !dbg !4573

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4574, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata ptr %1, metadata !4577, metadata !DIExpression()), !dbg !4578
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4580
  br label %66, !dbg !4581

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !4494
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #40, !dbg !4582
  ret ptr %67, !dbg !4582
}

; Function Attrs: nofree
declare !dbg !4583 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare !dbg !4586 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4589 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !4590 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4636
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4637
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4632, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4636
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4638, metadata !DIExpression()), !dbg !4641
  %3 = load i32, ptr %0, align 8, !dbg !4643, !tbaa !4644
  %4 = and i32 %3, 32, !dbg !4645
  %5 = icmp eq i32 %4, 0, !dbg !4645
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4634, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4636
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4646
  %7 = icmp eq i32 %6, 0, !dbg !4647
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4636
  br i1 %5, label %8, label %18, !dbg !4648

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4650
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4632, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4636
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4651
  %11 = xor i1 %7, true, !dbg !4651
  %12 = sext i1 %11 to i32, !dbg !4651
  br i1 %10, label %21, label %13, !dbg !4651

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4652
  %15 = load i32, ptr %14, align 4, !dbg !4652, !tbaa !1123
  %16 = icmp ne i32 %15, 9, !dbg !4653
  %17 = sext i1 %16 to i32, !dbg !4654
  br label %21, !dbg !4654

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4655

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4657
  store i32 0, ptr %20, align 4, !dbg !4659, !tbaa !1123
  br label %21, !dbg !4657

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4636
  ret i32 %22, !dbg !4660
}

; Function Attrs: nounwind
declare !dbg !4661 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4665 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4703, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4707
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4708
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4705, metadata !DIExpression()), !dbg !4707
  %3 = icmp slt i32 %2, 0, !dbg !4709
  br i1 %3, label %4, label %6, !dbg !4711

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4712
  br label %24, !dbg !4713

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4714
  %8 = icmp eq i32 %7, 0, !dbg !4714
  br i1 %8, label %13, label %9, !dbg !4716

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4717
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4718
  %12 = icmp eq i64 %11, -1, !dbg !4719
  br i1 %12, label %16, label %13, !dbg !4720

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4721
  %15 = icmp eq i32 %14, 0, !dbg !4721
  br i1 %15, label %16, label %18, !dbg !4722

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4704, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4706, metadata !DIExpression()), !dbg !4707
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4706, metadata !DIExpression()), !dbg !4707
  br label %24, !dbg !4724

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4725
  %20 = load i32, ptr %19, align 4, !dbg !4725, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4704, metadata !DIExpression()), !dbg !4707
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4706, metadata !DIExpression()), !dbg !4707
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4723
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4706, metadata !DIExpression()), !dbg !4707
  %22 = icmp eq i32 %20, 0, !dbg !4726
  br i1 %22, label %24, label %23, !dbg !4724

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4728, !tbaa !1123
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4706, metadata !DIExpression()), !dbg !4707
  br label %24, !dbg !4730

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4707
  ret i32 %25, !dbg !4731
}

; Function Attrs: nofree nounwind
declare !dbg !4732 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4733 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4734 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4735 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4776, metadata !DIExpression()), !dbg !4777
  %2 = icmp eq ptr %0, null, !dbg !4778
  br i1 %2, label %6, label %3, !dbg !4780

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4781
  %5 = icmp eq i32 %4, 0, !dbg !4781
  br i1 %5, label %6, label %8, !dbg !4782

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4783
  br label %16, !dbg !4784

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4785, metadata !DIExpression()), !dbg !4790
  %9 = load i32, ptr %0, align 8, !dbg !4792, !tbaa !4644
  %10 = and i32 %9, 256, !dbg !4794
  %11 = icmp eq i32 %10, 0, !dbg !4794
  br i1 %11, label %14, label %12, !dbg !4795

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4796
  br label %14, !dbg !4796

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4797
  br label %16, !dbg !4798

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4777
  ret i32 %17, !dbg !4799
}

; Function Attrs: nofree nounwind
declare !dbg !4800 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4801 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4840, metadata !DIExpression()), !dbg !4846
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4841, metadata !DIExpression()), !dbg !4846
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4842, metadata !DIExpression()), !dbg !4846
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4847
  %5 = load ptr, ptr %4, align 8, !dbg !4847, !tbaa !4848
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4849
  %7 = load ptr, ptr %6, align 8, !dbg !4849, !tbaa !4850
  %8 = icmp eq ptr %5, %7, !dbg !4851
  br i1 %8, label %9, label %27, !dbg !4852

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4853
  %11 = load ptr, ptr %10, align 8, !dbg !4853, !tbaa !1512
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4854
  %13 = load ptr, ptr %12, align 8, !dbg !4854, !tbaa !4855
  %14 = icmp eq ptr %11, %13, !dbg !4856
  br i1 %14, label %15, label %27, !dbg !4857

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4858
  %17 = load ptr, ptr %16, align 8, !dbg !4858, !tbaa !4859
  %18 = icmp eq ptr %17, null, !dbg !4860
  br i1 %18, label %19, label %27, !dbg !4861

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4862
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4863
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4843, metadata !DIExpression()), !dbg !4864
  %22 = icmp eq i64 %21, -1, !dbg !4865
  br i1 %22, label %29, label %23, !dbg !4867

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4868, !tbaa !4644
  %25 = and i32 %24, -17, !dbg !4868
  store i32 %25, ptr %0, align 8, !dbg !4868, !tbaa !4644
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4869
  store i64 %21, ptr %26, align 8, !dbg !4870, !tbaa !4871
  br label %29, !dbg !4872

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4873
  br label %29, !dbg !4874

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4846
  ret i32 %30, !dbg !4875
}

; Function Attrs: nofree nounwind
declare !dbg !4876 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4879 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4884, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4885, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4886, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4887, metadata !DIExpression()), !dbg !4889
  %5 = icmp eq ptr %1, null, !dbg !4890
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4892
  %7 = select i1 %5, ptr @.str.137, ptr %1, !dbg !4892
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4892
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4886, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4885, metadata !DIExpression()), !dbg !4889
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4884, metadata !DIExpression()), !dbg !4889
  %9 = icmp eq ptr %3, null, !dbg !4893
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4895
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4887, metadata !DIExpression()), !dbg !4889
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4896
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4888, metadata !DIExpression()), !dbg !4889
  %12 = icmp ult i64 %11, -3, !dbg !4897
  br i1 %12, label %13, label %17, !dbg !4899

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4900
  %15 = icmp eq i32 %14, 0, !dbg !4900
  br i1 %15, label %16, label %29, !dbg !4901

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4902, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %10, metadata !4909, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i32 0, metadata !4912, metadata !DIExpression()), !dbg !4914
  call void @llvm.dbg.value(metadata i64 8, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i64 0, ptr %10, align 1, !dbg !4916
  br label %29, !dbg !4917

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4918
  br i1 %18, label %19, label %20, !dbg !4920

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4921
  unreachable, !dbg !4921

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4922

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !4924
  br i1 %23, label %29, label %24, !dbg !4925

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4926
  br i1 %25, label %29, label %26, !dbg !4929

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4930, !tbaa !1132
  %28 = zext i8 %27 to i32, !dbg !4931
  store i32 %28, ptr %6, align 4, !dbg !4932, !tbaa !1123
  br label %29, !dbg !4933

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4889
  ret i64 %30, !dbg !4934
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4935 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4941 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4943, metadata !DIExpression()), !dbg !4947
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4944, metadata !DIExpression()), !dbg !4947
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4945, metadata !DIExpression()), !dbg !4947
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4948
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4948
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4946, metadata !DIExpression()), !dbg !4947
  br i1 %5, label %6, label %8, !dbg !4950

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4951
  store i32 12, ptr %7, align 4, !dbg !4953, !tbaa !1123
  br label %12, !dbg !4954

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4948
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4946, metadata !DIExpression()), !dbg !4947
  call void @llvm.dbg.value(metadata ptr %0, metadata !4955, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata i64 %9, metadata !4958, metadata !DIExpression()), !dbg !4959
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4961
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #46, !dbg !4962
  br label %12, !dbg !4963

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4947
  ret ptr %13, !dbg !4964
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4965 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !4972
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4968, metadata !DIExpression(), metadata !4972, metadata ptr %2, metadata !DIExpression()), !dbg !4973
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4967, metadata !DIExpression()), !dbg !4973
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4974
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4975
  %4 = icmp eq i32 %3, 0, !dbg !4975
  br i1 %4, label %5, label %12, !dbg !4977

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4978, metadata !DIExpression()), !dbg !4982
  call void @llvm.dbg.value(metadata !1090, metadata !4981, metadata !DIExpression()), !dbg !4982
  %6 = load i16, ptr %2, align 16, !dbg !4985
  %7 = icmp eq i16 %6, 67, !dbg !4985
  br i1 %7, label %11, label %8, !dbg !4986

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4978, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4981, metadata !DIExpression()), !dbg !4987
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4989
  %10 = icmp eq i32 %9, 0, !dbg !4990
  br i1 %10, label %11, label %12, !dbg !4991

11:                                               ; preds = %8, %5
  br label %12, !dbg !4992

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4973
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4993
  ret i1 %13, !dbg !4993
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4994 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4998, metadata !DIExpression()), !dbg !5001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4999, metadata !DIExpression()), !dbg !5001
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5000, metadata !DIExpression()), !dbg !5001
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5002
  ret i32 %4, !dbg !5003
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5004 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5008, metadata !DIExpression()), !dbg !5009
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5010
  ret ptr %2, !dbg !5011
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5012 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5014, metadata !DIExpression()), !dbg !5016
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5017
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5015, metadata !DIExpression()), !dbg !5016
  ret ptr %2, !dbg !5018
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5019 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5021, metadata !DIExpression()), !dbg !5028
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5022, metadata !DIExpression()), !dbg !5028
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5023, metadata !DIExpression()), !dbg !5028
  call void @llvm.dbg.value(metadata i32 %0, metadata !5014, metadata !DIExpression()), !dbg !5029
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5031
  call void @llvm.dbg.value(metadata ptr %4, metadata !5015, metadata !DIExpression()), !dbg !5029
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5024, metadata !DIExpression()), !dbg !5028
  %5 = icmp eq ptr %4, null, !dbg !5032
  br i1 %5, label %6, label %9, !dbg !5033

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5034
  br i1 %7, label %19, label %8, !dbg !5037

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5038, !tbaa !1132
  br label %19, !dbg !5039

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5040
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5025, metadata !DIExpression()), !dbg !5041
  %11 = icmp ult i64 %10, %2, !dbg !5042
  br i1 %11, label %12, label %14, !dbg !5044

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5045
  call void @llvm.dbg.value(metadata ptr %1, metadata !5047, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata ptr %4, metadata !5050, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata i64 %13, metadata !5051, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5054
  br label %19, !dbg !5055

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5056
  br i1 %15, label %19, label %16, !dbg !5059

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5060
  call void @llvm.dbg.value(metadata ptr %1, metadata !5047, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.value(metadata ptr %4, metadata !5050, metadata !DIExpression()), !dbg !5062
  call void @llvm.dbg.value(metadata i64 %17, metadata !5051, metadata !DIExpression()), !dbg !5062
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5064
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5065
  store i8 0, ptr %18, align 1, !dbg !5066, !tbaa !1132
  br label %19, !dbg !5067

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5068
  ret i32 %20, !dbg !5069
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
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !351, !355, !370, !690, !725, !727, !452, !466, !514, !954, !682, !961, !996, !998, !1012, !1021, !1023, !1025, !1027, !1029, !709, !1031, !1033, !1037, !1039}
!llvm.ident = !{!1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041, !1041}
!llvm.module.flags = !{!1042, !1043, !1044, !1045, !1046, !1047, !1048}

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
!369 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !370, file: !371, line: 66, type: !416, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!372 = !{!102, !109}
!373 = !{!374, !376, !395, !397, !399, !401, !368, !403, !405, !407, !409, !414}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !371, line: 272, type: !133, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "old_file_name", scope: !378, file: !371, line: 304, type: !107, isLocal: true, isDefinition: true)
!378 = distinct !DISubprogram(name: "verror_at_line", scope: !371, file: !371, line: 298, type: !379, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !388)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !70, !70, !107, !63, !107, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !383)
!383 = !{!384, !385, !386, !387}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !382, file: !371, baseType: !63, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !382, file: !371, baseType: !63, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !382, file: !371, baseType: !102, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !382, file: !371, baseType: !102, size: 64, offset: 128)
!388 = !{!389, !390, !391, !392, !393, !394}
!389 = !DILocalVariable(name: "status", arg: 1, scope: !378, file: !371, line: 298, type: !70)
!390 = !DILocalVariable(name: "errnum", arg: 2, scope: !378, file: !371, line: 298, type: !70)
!391 = !DILocalVariable(name: "file_name", arg: 3, scope: !378, file: !371, line: 298, type: !107)
!392 = !DILocalVariable(name: "line_number", arg: 4, scope: !378, file: !371, line: 298, type: !63)
!393 = !DILocalVariable(name: "message", arg: 5, scope: !378, file: !371, line: 298, type: !107)
!394 = !DILocalVariable(name: "args", arg: 6, scope: !378, file: !371, line: 298, type: !381)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "old_line_number", scope: !378, file: !371, line: 305, type: !63, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !371, line: 338, type: !225, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !257, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !371, line: 346, type: !232, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "error_message_count", scope: !370, file: !371, line: 69, type: !63, isLocal: false, isDefinition: true)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !370, file: !371, line: 295, type: !70, isLocal: false, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !252, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !371, line: 208, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 21)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !371, line: 214, type: !133, isLocal: true, isDefinition: true)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null}
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !421, line: 553, type: !296, isLocal: true, isDefinition: true)
!421 = !DIFile(filename: "lib/nproc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8ed3d3246f48dd170075371c80925eac")
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !421, line: 556, type: !128, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !421, line: 404, type: !118, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !421, line: 404, type: !232, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !421, line: 415, type: !133, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !421, line: 441, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 13)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !421, line: 446, type: !225, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !421, line: 449, type: !257, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !421, line: 371, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 34)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !421, line: 372, type: !123, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !421, line: 378, type: !432, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !421, line: 384, type: !257, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "program_name", scope: !452, file: !453, line: 31, type: !107, isLocal: false, isDefinition: true)
!452 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !454, globals: !455, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!454 = !{!102, !101}
!455 = !{!450, !456, !458}
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 46, type: !257, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !453, line: 49, type: !225, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(name: "utf07FF", scope: !462, file: !463, line: 46, type: !490, isLocal: true, isDefinition: true)
!462 = distinct !DISubprogram(name: "proper_name_lite", scope: !463, file: !463, line: 38, type: !464, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !468)
!463 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!464 = !DISubroutineType(types: !465)
!465 = !{!107, !107, !107}
!466 = distinct !DICompileUnit(language: DW_LANG_C11, file: !463, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !467, splitDebugInlining: false, nameTableKind: None)
!467 = !{!460}
!468 = !{!469, !470, !471, !472, !477}
!469 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !462, file: !463, line: 38, type: !107)
!470 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !462, file: !463, line: 38, type: !107)
!471 = !DILocalVariable(name: "translation", scope: !462, file: !463, line: 40, type: !107)
!472 = !DILocalVariable(name: "w", scope: !462, file: !463, line: 47, type: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !474, line: 37, baseType: !475)
!474 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !188, line: 57, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !188, line: 42, baseType: !63)
!477 = !DILocalVariable(name: "mbs", scope: !462, file: !463, line: 48, type: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !479, line: 6, baseType: !480)
!479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !481, line: 21, baseType: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 13, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !482, file: !481, line: 15, baseType: !70, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !482, file: !481, line: 20, baseType: !486, size: 32, offset: 32)
!486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !482, file: !481, line: 16, size: 32, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !486, file: !481, line: 18, baseType: !63, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !486, file: !481, line: 19, baseType: !225, size: 32)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16, elements: !233)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !493, line: 78, type: !257, isLocal: true, isDefinition: true)
!493 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(scope: null, file: !493, line: 79, type: !19, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !493, line: 80, type: !432, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !493, line: 81, type: !432, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !493, line: 82, type: !210, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !493, line: 83, type: !232, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !493, line: 84, type: !257, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !493, line: 85, type: !252, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !493, line: 86, type: !252, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !493, line: 87, type: !257, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !514, file: !493, line: 76, type: !600, isLocal: false, isDefinition: true)
!514 = distinct !DICompileUnit(language: DW_LANG_C11, file: !493, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !515, retainedTypes: !535, globals: !536, splitDebugInlining: false, nameTableKind: None)
!515 = !{!516, !530, !85}
!516 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !517, line: 42, baseType: !63, size: 32, elements: !518)
!517 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529}
!519 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!520 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!521 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!522 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!523 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!524 = !DIEnumerator(name: "c_quoting_style", value: 5)
!525 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!526 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!527 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!528 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!529 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !517, line: 254, baseType: !63, size: 32, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!533 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!534 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!535 = !{!102, !70, !103, !104}
!536 = !{!491, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !537, !541, !551, !553, !558, !560, !562, !564, !566, !589, !596, !598}
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !514, file: !493, line: 92, type: !539, isLocal: false, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 320, elements: !50)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !514, file: !493, line: 1040, type: !543, isLocal: false, isDefinition: true)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !493, line: 56, size: 448, elements: !544)
!544 = !{!545, !546, !547, !549, !550}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !543, file: !493, line: 59, baseType: !516, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !493, line: 62, baseType: !70, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !543, file: !493, line: 66, baseType: !548, size: 256, offset: 64)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !258)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !543, file: !493, line: 69, baseType: !107, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !543, file: !493, line: 72, baseType: !107, size: 64, offset: 384)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !514, file: !493, line: 107, type: !543, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "slot0", scope: !514, file: !493, line: 831, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 256)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !493, line: 321, type: !232, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !493, line: 357, type: !232, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !493, line: 358, type: !232, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !493, line: 199, type: !252, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "quote", scope: !568, file: !493, line: 228, type: !587, isLocal: true, isDefinition: true)
!568 = distinct !DISubprogram(name: "gettext_quote", scope: !493, file: !493, line: 197, type: !569, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!107, !107, !516}
!571 = !{!572, !573, !574, !575, !576}
!572 = !DILocalVariable(name: "msgid", arg: 1, scope: !568, file: !493, line: 197, type: !107)
!573 = !DILocalVariable(name: "s", arg: 2, scope: !568, file: !493, line: 197, type: !516)
!574 = !DILocalVariable(name: "translation", scope: !568, file: !493, line: 199, type: !107)
!575 = !DILocalVariable(name: "w", scope: !568, file: !493, line: 229, type: !473)
!576 = !DILocalVariable(name: "mbs", scope: !568, file: !493, line: 230, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !479, line: 6, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !481, line: 21, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 13, size: 64, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !579, file: !481, line: 15, baseType: !70, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !579, file: !481, line: 20, baseType: !583, size: 32, offset: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !481, line: 16, size: 32, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !583, file: !481, line: 18, baseType: !63, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !583, file: !481, line: 19, baseType: !225, size: 32)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !588)
!588 = !{!234, !227}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "slotvec", scope: !514, file: !493, line: 834, type: !591, isLocal: true, isDefinition: true)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !493, line: 823, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !493, line: 825, baseType: !104, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !592, file: !493, line: 826, baseType: !101, size: 64, offset: 64)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "nslots", scope: !514, file: !493, line: 832, type: !70, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "slotvec0", scope: !514, file: !493, line: 833, type: !592, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 704, elements: !602)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!602 = !{!603}
!603 = !DISubrange(count: 11)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !606, line: 67, type: !325, isLocal: true, isDefinition: true)
!606 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !606, line: 69, type: !252, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !606, line: 83, type: !252, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !606, line: 83, type: !225, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !606, line: 85, type: !232, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !606, line: 88, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 171)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !606, line: 88, type: !441, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !606, line: 105, type: !296, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !606, line: 109, type: !9, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !606, line: 113, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 28)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !606, line: 120, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 32)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !606, line: 127, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 36)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !606, line: 134, type: !276, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !606, line: 142, type: !645, isLocal: true, isDefinition: true)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !646)
!646 = !{!647}
!647 = !DISubrange(count: 44)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !606, line: 150, type: !650, isLocal: true, isDefinition: true)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !651)
!651 = !{!652}
!652 = !DISubrange(count: 48)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !606, line: 159, type: !655, isLocal: true, isDefinition: true)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 52)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !606, line: 170, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 60)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !606, line: 248, type: !210, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !606, line: 248, type: !301, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !210, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !113, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !276, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !606, line: 259, type: !3, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !606, line: 259, type: !677, isLocal: true, isDefinition: true)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 29)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !682, file: !683, line: 26, type: !685, isLocal: false, isDefinition: true)
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!683 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!684 = !{!680}
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 376, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 47)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "exit_failure", scope: !690, file: !691, line: 24, type: !693, isLocal: false, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!692 = !{!688}
!693 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !241, isLocal: true, isDefinition: true)
!696 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !252, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(scope: null, file: !696, line: 34, type: !128, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !703, line: 80, type: !252, isLocal: true, isDefinition: true)
!703 = !DIFile(filename: "lib/xdectoint.c", directory: "/src", checksumkind: CSK_MD5, checksum: "1bda3f5eeaab6c7dbf872099af51e939")
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !706, line: 108, type: !44, isLocal: true, isDefinition: true)
!706 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "internal_state", scope: !709, file: !706, line: 97, type: !712, isLocal: true, isDefinition: true)
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !710, globals: !711, splitDebugInlining: false, nameTableKind: None)
!710 = !{!102, !104, !109}
!711 = !{!704, !707}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !479, line: 6, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !481, line: 21, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 13, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !714, file: !481, line: 15, baseType: !70, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !714, file: !481, line: 20, baseType: !718, size: 32, offset: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !481, line: 16, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !718, file: !481, line: 18, baseType: !63, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !718, file: !481, line: 19, baseType: !225, size: 32)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !724, line: 35, type: !19, isLocal: true, isDefinition: true)
!724 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-nproc.o -MD -MP -MF lib/.deps/libcoreutils_a-nproc.Tpo -c lib/nproc.c -o lib/.libcoreutils_a-nproc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !728, retainedTypes: !951, globals: !953, splitDebugInlining: false, nameTableKind: None)
!728 = !{!729, !731}
!729 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nproc_query", file: !730, line: 32, baseType: !63, size: 32, elements: !64)
!730 = !DIFile(filename: "lib/nproc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dd1b9803a99598e46cd95fdfb7d0bf6e")
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !732, line: 71, baseType: !63, size: 32, elements: !733)
!732 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!733 = !{!734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950}
!734 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!735 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!736 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!737 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!738 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!739 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!740 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!741 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!742 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!743 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!744 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!745 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!746 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!747 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!748 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!749 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!750 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!751 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!752 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!753 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!754 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!755 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!756 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!757 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!758 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!759 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!760 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!761 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!762 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!763 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!764 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!765 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!766 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!767 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!768 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!769 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!770 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!771 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!772 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!773 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!774 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!775 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!776 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!777 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!778 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!779 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!780 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!781 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!782 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!783 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!784 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!785 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!786 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!787 = !DIEnumerator(name: "_SC_PII", value: 53)
!788 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!789 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!790 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!791 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!792 = !DIEnumerator(name: "_SC_POLL", value: 58)
!793 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!794 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!795 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!796 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!797 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!798 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!799 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!800 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!801 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!802 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!803 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!804 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!805 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!806 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!807 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!808 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!809 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!810 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!811 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!812 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!813 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!814 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!815 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!816 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!817 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!818 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!819 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!820 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!821 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!822 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!823 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!824 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!825 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!826 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!827 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!828 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!829 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!830 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!831 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!832 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!833 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!834 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!835 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!836 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!837 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!838 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!839 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!840 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!841 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!842 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!843 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!844 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!845 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!846 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!847 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!848 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!849 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!850 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!851 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!852 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!853 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!854 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!855 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!856 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!857 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!858 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!859 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!860 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!861 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!862 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!863 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!864 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!865 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!866 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!867 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!868 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!869 = !DIEnumerator(name: "_SC_BASE", value: 134)
!870 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!871 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!872 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!873 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!874 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!875 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!876 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!877 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!878 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!879 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!880 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!881 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!882 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!883 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!884 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!885 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!886 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!887 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!888 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!889 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!890 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!891 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!892 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!893 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!894 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!895 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!896 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!897 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!898 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!899 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!900 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!901 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!902 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!903 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!904 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!905 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!906 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!907 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!908 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!909 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!910 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!911 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!912 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!913 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!914 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!915 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!916 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!917 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!918 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!919 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!920 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!921 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!922 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!923 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!924 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!925 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!926 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!927 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!928 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!929 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!930 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!931 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!932 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!933 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!934 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!935 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!936 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!937 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!938 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!939 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!940 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!941 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!942 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!943 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!944 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!945 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!946 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!947 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!948 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!949 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!950 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!951 = !{!102, !952, !189}
!952 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!953 = !{!419, !422, !424, !426, !428, !430, !435, !437, !439, !444, !446, !448}
!954 = distinct !DICompileUnit(language: DW_LANG_C11, file: !606, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !955, retainedTypes: !959, globals: !960, splitDebugInlining: false, nameTableKind: None)
!955 = !{!956}
!956 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !606, line: 40, baseType: !63, size: 32, elements: !957)
!957 = !{!958}
!958 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!959 = !{!102}
!960 = !{!604, !607, !609, !611, !613, !615, !620, !622, !624, !626, !631, !636, !641, !643, !648, !653, !658, !663, !665, !667, !669, !671, !673, !675}
!961 = distinct !DICompileUnit(language: DW_LANG_C11, file: !962, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !963, retainedTypes: !995, splitDebugInlining: false, nameTableKind: None)
!962 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!963 = !{!964, !976}
!964 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !965, file: !962, line: 188, baseType: !63, size: 32, elements: !974)
!965 = distinct !DISubprogram(name: "x2nrealloc", scope: !962, file: !962, line: 176, type: !966, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !969)
!966 = !DISubroutineType(types: !967)
!967 = !{!102, !102, !968, !104}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!969 = !{!970, !971, !972, !973}
!970 = !DILocalVariable(name: "p", arg: 1, scope: !965, file: !962, line: 176, type: !102)
!971 = !DILocalVariable(name: "pn", arg: 2, scope: !965, file: !962, line: 176, type: !968)
!972 = !DILocalVariable(name: "s", arg: 3, scope: !965, file: !962, line: 176, type: !104)
!973 = !DILocalVariable(name: "n", scope: !965, file: !962, line: 178, type: !104)
!974 = !{!975}
!975 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!976 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !977, file: !962, line: 228, baseType: !63, size: 32, elements: !974)
!977 = distinct !DISubprogram(name: "xpalloc", scope: !962, file: !962, line: 223, type: !978, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !985)
!978 = !DISubroutineType(types: !979)
!979 = !{!102, !102, !980, !981, !983, !981}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !982, line: 130, baseType: !983)
!982 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !984, line: 18, baseType: !189)
!984 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994}
!986 = !DILocalVariable(name: "pa", arg: 1, scope: !977, file: !962, line: 223, type: !102)
!987 = !DILocalVariable(name: "pn", arg: 2, scope: !977, file: !962, line: 223, type: !980)
!988 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !977, file: !962, line: 223, type: !981)
!989 = !DILocalVariable(name: "n_max", arg: 4, scope: !977, file: !962, line: 223, type: !983)
!990 = !DILocalVariable(name: "s", arg: 5, scope: !977, file: !962, line: 223, type: !981)
!991 = !DILocalVariable(name: "n0", scope: !977, file: !962, line: 230, type: !981)
!992 = !DILocalVariable(name: "n", scope: !977, file: !962, line: 237, type: !981)
!993 = !DILocalVariable(name: "nbytes", scope: !977, file: !962, line: 248, type: !981)
!994 = !DILocalVariable(name: "adjusted_nbytes", scope: !977, file: !962, line: 252, type: !981)
!995 = !{!101, !102}
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !696, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !997, splitDebugInlining: false, nameTableKind: None)
!997 = !{!694, !697, !699}
!998 = distinct !DICompileUnit(language: DW_LANG_C11, file: !999, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xdectoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xdectoumax.Tpo -c lib/xdectoumax.c -o lib/.libcoreutils_a-xdectoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1000, globals: !1011, splitDebugInlining: false, nameTableKind: None)
!999 = !DIFile(filename: "lib/xdectoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6a2abc20f912d83b8a29be2ad6ad0f21")
!1000 = !{!1001, !1009}
!1001 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1002, line: 30, baseType: !63, size: 32, elements: !1003)
!1002 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1003 = !{!1004, !1005, !1006, !1007, !1008}
!1004 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!1005 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!1006 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!1007 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!1008 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!1009 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1010, line: 24, baseType: !63, size: 32, elements: !80)
!1010 = !DIFile(filename: "lib/xdectoint.h", directory: "/src", checksumkind: CSK_MD5, checksum: "940e29395e05012ab491478a296c89a0")
!1011 = !{!701}
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xstrtoumax.o -MD -MP -MF lib/.deps/libcoreutils_a-xstrtoumax.Tpo -c lib/xstrtoumax.c -o lib/.libcoreutils_a-xstrtoumax.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1014, retainedTypes: !1017, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!1014 = !{!1015, !85}
!1015 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !1016, line: 30, baseType: !63, size: 32, elements: !1003)
!1016 = !DIFile(filename: "lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!1017 = !{!70, !103, !101, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1019, line: 102, baseType: !1020)
!1019 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !188, line: 73, baseType: !106)
!1021 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1022, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!1022 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1023 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1024, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1024 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1025 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1026, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1026 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1027 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1028, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1029 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1030, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!1030 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1032, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1033 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1034, splitDebugInlining: false, nameTableKind: None)
!1034 = !{!1035, !722}
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression())
!1036 = distinct !DIGlobalVariable(scope: null, file: !724, line: 35, type: !232, isLocal: true, isDefinition: true)
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1039 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1040, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !959, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1041 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1042 = !{i32 7, !"Dwarf Version", i32 5}
!1043 = !{i32 2, !"Debug Info Version", i32 3}
!1044 = !{i32 1, !"wchar_size", i32 4}
!1045 = !{i32 8, !"PIC Level", i32 2}
!1046 = !{i32 7, !"PIE Level", i32 2}
!1047 = !{i32 7, !"uwtable", i32 2}
!1048 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!1090 = !{}
!1091 = !DILocation(line: 857, column: 3, scope: !1072, inlinedAt: !1089)
!1092 = !DILocation(line: 861, column: 29, scope: !1072, inlinedAt: !1089)
!1093 = !DILocation(line: 862, column: 7, scope: !1094, inlinedAt: !1089)
!1094 = distinct !DILexicalBlock(scope: !1072, file: !69, line: 862, column: 7)
!1095 = !DILocation(line: 862, column: 19, scope: !1094, inlinedAt: !1089)
!1096 = !DILocation(line: 862, column: 22, scope: !1094, inlinedAt: !1089)
!1097 = !DILocation(line: 862, column: 7, scope: !1072, inlinedAt: !1089)
!1098 = !DILocation(line: 868, column: 7, scope: !1099, inlinedAt: !1089)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !69, line: 863, column: 5)
!1100 = !DILocation(line: 870, column: 5, scope: !1099, inlinedAt: !1089)
!1101 = !DILocation(line: 875, column: 3, scope: !1072, inlinedAt: !1089)
!1102 = !DILocation(line: 877, column: 3, scope: !1072, inlinedAt: !1089)
!1103 = !DILocation(line: 79, column: 3, scope: !1049)
!1104 = !DISubprogram(name: "dcgettext", scope: !1105, file: !1105, line: 51, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!101, !107, !107, !70}
!1108 = !DISubprogram(name: "__fprintf_chk", scope: !1109, file: !1109, line: 93, type: !1110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!70, !1112, !70, !1113, null}
!1112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !161)
!1113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!1114 = !DISubprogram(name: "__printf_chk", scope: !1109, file: !1109, line: 95, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!70, !70, !1113, null}
!1117 = !DISubprogram(name: "fputs_unlocked", scope: !1118, file: !1118, line: 691, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1118 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!70, !1113, !1112}
!1121 = !DILocation(line: 0, scope: !138)
!1122 = !DILocation(line: 581, column: 7, scope: !146)
!1123 = !{!1124, !1124, i64 0}
!1124 = !{!"int", !1062, i64 0}
!1125 = !DILocation(line: 581, column: 19, scope: !146)
!1126 = !DILocation(line: 581, column: 7, scope: !138)
!1127 = !DILocation(line: 585, column: 26, scope: !145)
!1128 = !DILocation(line: 0, scope: !145)
!1129 = !DILocation(line: 586, column: 23, scope: !145)
!1130 = !DILocation(line: 586, column: 28, scope: !145)
!1131 = !DILocation(line: 586, column: 32, scope: !145)
!1132 = !{!1062, !1062, i64 0}
!1133 = !DILocation(line: 586, column: 38, scope: !145)
!1134 = !DILocalVariable(name: "__s1", arg: 1, scope: !1135, file: !1136, line: 1359, type: !107)
!1135 = distinct !DISubprogram(name: "streq", scope: !1136, file: !1136, line: 1359, type: !1137, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1139)
!1136 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!148, !107, !107}
!1139 = !{!1134, !1140}
!1140 = !DILocalVariable(name: "__s2", arg: 2, scope: !1135, file: !1136, line: 1359, type: !107)
!1141 = !DILocation(line: 0, scope: !1135, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 586, column: 41, scope: !145)
!1143 = !DILocation(line: 1361, column: 11, scope: !1135, inlinedAt: !1142)
!1144 = !DILocation(line: 1361, column: 10, scope: !1135, inlinedAt: !1142)
!1145 = !DILocation(line: 586, column: 19, scope: !145)
!1146 = !DILocation(line: 587, column: 5, scope: !145)
!1147 = !DILocation(line: 588, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !138, file: !69, line: 588, column: 7)
!1149 = !DILocation(line: 588, column: 7, scope: !138)
!1150 = !DILocation(line: 590, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !69, line: 589, column: 5)
!1152 = !DILocation(line: 591, column: 7, scope: !1151)
!1153 = !DILocation(line: 595, column: 37, scope: !138)
!1154 = !DILocation(line: 595, column: 35, scope: !138)
!1155 = !DILocation(line: 596, column: 29, scope: !138)
!1156 = !DILocation(line: 597, column: 8, scope: !154)
!1157 = !DILocation(line: 597, column: 7, scope: !138)
!1158 = !DILocation(line: 604, column: 24, scope: !153)
!1159 = !DILocation(line: 604, column: 12, scope: !154)
!1160 = !DILocation(line: 0, scope: !152)
!1161 = !DILocation(line: 610, column: 16, scope: !152)
!1162 = !DILocation(line: 610, column: 7, scope: !152)
!1163 = !DILocation(line: 611, column: 21, scope: !152)
!1164 = !{!1165, !1165, i64 0}
!1165 = !{!"short", !1062, i64 0}
!1166 = !DILocation(line: 611, column: 19, scope: !152)
!1167 = !DILocation(line: 611, column: 16, scope: !152)
!1168 = !DILocation(line: 610, column: 30, scope: !152)
!1169 = distinct !{!1169, !1162, !1163, !1170}
!1170 = !{!"llvm.loop.mustprogress"}
!1171 = !DILocation(line: 612, column: 18, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !152, file: !69, line: 612, column: 11)
!1173 = !DILocation(line: 612, column: 11, scope: !152)
!1174 = !DILocation(line: 620, column: 23, scope: !138)
!1175 = !DILocation(line: 625, column: 39, scope: !138)
!1176 = !DILocation(line: 626, column: 3, scope: !138)
!1177 = !DILocation(line: 626, column: 10, scope: !138)
!1178 = !DILocation(line: 626, column: 21, scope: !138)
!1179 = !DILocation(line: 628, column: 44, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !69, line: 628, column: 11)
!1181 = distinct !DILexicalBlock(scope: !138, file: !69, line: 627, column: 5)
!1182 = !DILocation(line: 628, column: 32, scope: !1180)
!1183 = !DILocation(line: 628, column: 49, scope: !1180)
!1184 = !DILocation(line: 628, column: 11, scope: !1181)
!1185 = !DILocation(line: 630, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1181, file: !69, line: 630, column: 11)
!1187 = !DILocation(line: 630, column: 11, scope: !1181)
!1188 = !DILocation(line: 632, column: 26, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !69, line: 632, column: 15)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !69, line: 631, column: 9)
!1191 = !DILocation(line: 632, column: 34, scope: !1189)
!1192 = !DILocation(line: 632, column: 37, scope: !1189)
!1193 = !DILocation(line: 632, column: 15, scope: !1190)
!1194 = !DILocation(line: 636, column: 16, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !69, line: 636, column: 15)
!1196 = !DILocation(line: 636, column: 29, scope: !1195)
!1197 = !DILocation(line: 640, column: 16, scope: !1181)
!1198 = distinct !{!1198, !1176, !1199, !1170}
!1199 = !DILocation(line: 641, column: 5, scope: !138)
!1200 = !DILocation(line: 644, column: 3, scope: !138)
!1201 = !DILocation(line: 0, scope: !1135, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 648, column: 31, scope: !138)
!1203 = !DILocation(line: 0, scope: !1135, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 649, column: 31, scope: !138)
!1205 = !DILocation(line: 0, scope: !1135, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 650, column: 31, scope: !138)
!1207 = !DILocation(line: 0, scope: !1135, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 651, column: 31, scope: !138)
!1209 = !DILocation(line: 0, scope: !1135, inlinedAt: !1210)
!1210 = distinct !DILocation(line: 652, column: 31, scope: !138)
!1211 = !DILocation(line: 0, scope: !1135, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 653, column: 31, scope: !138)
!1213 = !DILocation(line: 0, scope: !1135, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 654, column: 31, scope: !138)
!1215 = !DILocation(line: 0, scope: !1135, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 655, column: 31, scope: !138)
!1217 = !DILocation(line: 0, scope: !1135, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 656, column: 31, scope: !138)
!1219 = !DILocation(line: 0, scope: !1135, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 657, column: 31, scope: !138)
!1221 = !DILocation(line: 663, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !138, file: !69, line: 663, column: 7)
!1223 = !DILocation(line: 664, column: 7, scope: !1222)
!1224 = !DILocation(line: 664, column: 10, scope: !1222)
!1225 = !DILocation(line: 663, column: 7, scope: !138)
!1226 = !DILocation(line: 669, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !69, line: 665, column: 5)
!1228 = !DILocation(line: 671, column: 5, scope: !1227)
!1229 = !DILocation(line: 676, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1222, file: !69, line: 673, column: 5)
!1231 = !DILocation(line: 679, column: 3, scope: !138)
!1232 = !DILocation(line: 683, column: 3, scope: !138)
!1233 = !DILocation(line: 686, column: 3, scope: !138)
!1234 = !DILocation(line: 688, column: 3, scope: !138)
!1235 = !DILocation(line: 691, column: 3, scope: !138)
!1236 = !DILocation(line: 695, column: 3, scope: !138)
!1237 = !DILocation(line: 696, column: 1, scope: !138)
!1238 = !DISubprogram(name: "setlocale", scope: !1239, file: !1239, line: 122, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1239 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!101, !70, !107}
!1242 = !DISubprogram(name: "strncmp", scope: !1243, file: !1243, line: 159, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!70, !107, !107, !104}
!1246 = !DISubprogram(name: "exit", scope: !1247, file: !1247, line: 624, type: !1050, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1247 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1248 = !DISubprogram(name: "getenv", scope: !1247, file: !1247, line: 641, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!101, !107}
!1251 = !DISubprogram(name: "strcmp", scope: !1243, file: !1243, line: 156, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!70, !107, !107}
!1254 = !DISubprogram(name: "strspn", scope: !1243, file: !1243, line: 297, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!106, !107, !107}
!1257 = !DISubprogram(name: "strchr", scope: !1243, file: !1243, line: 246, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!101, !107, !70}
!1260 = !DISubprogram(name: "__ctype_b_loc", scope: !86, file: !86, line: 79, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1266 = !DISubprogram(name: "strcspn", scope: !1243, file: !1243, line: 293, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubprogram(name: "fwrite_unlocked", scope: !1118, file: !1118, line: 704, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!104, !1270, !104, !104, !1112}
!1270 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1273 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 83, type: !1274, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1277)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!70, !70, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1284}
!1278 = !DILocalVariable(name: "argc", arg: 1, scope: !1273, file: !2, line: 83, type: !70)
!1279 = !DILocalVariable(name: "argv", arg: 2, scope: !1273, file: !2, line: 83, type: !1276)
!1280 = !DILocalVariable(name: "ignore", scope: !1273, file: !2, line: 85, type: !106)
!1281 = !DILocalVariable(name: "mode", scope: !1273, file: !2, line: 94, type: !61)
!1282 = !DILocalVariable(name: "c", scope: !1283, file: !2, line: 98, type: !70)
!1283 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 97, column: 5)
!1284 = !DILocalVariable(name: "nproc", scope: !1273, file: !2, line: 127, type: !106)
!1285 = !DILocation(line: 0, scope: !1273)
!1286 = !DILocation(line: 87, column: 21, scope: !1273)
!1287 = !DILocation(line: 87, column: 3, scope: !1273)
!1288 = !DILocation(line: 88, column: 3, scope: !1273)
!1289 = !DILocation(line: 89, column: 3, scope: !1273)
!1290 = !DILocation(line: 90, column: 3, scope: !1273)
!1291 = !DILocation(line: 92, column: 3, scope: !1273)
!1292 = !DILocation(line: 96, column: 3, scope: !1273)
!1293 = !DILocation(line: 98, column: 15, scope: !1283)
!1294 = !DILocation(line: 0, scope: !1283)
!1295 = !DILocation(line: 99, column: 11, scope: !1283)
!1296 = distinct !{!1296, !1297}
!1297 = !{!"llvm.loop.peeled.count", i32 1}
!1298 = !DILocation(line: 103, column: 9, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 102, column: 9)
!1300 = !DILocation(line: 105, column: 9, scope: !1299)
!1301 = !DILocation(line: 94, column: 20, scope: !1273)
!1302 = !DILocation(line: 112, column: 32, scope: !1299)
!1303 = !DILocation(line: 113, column: 32, scope: !1299)
!1304 = !DILocation(line: 112, column: 20, scope: !1299)
!1305 = !DILocation(line: 114, column: 11, scope: !1299)
!1306 = !DILocation(line: 117, column: 11, scope: !1299)
!1307 = !DILocation(line: 121, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 121, column: 7)
!1309 = !DILocation(line: 121, column: 12, scope: !1308)
!1310 = !DILocation(line: 121, column: 7, scope: !1273)
!1311 = !DILocation(line: 123, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 122, column: 5)
!1313 = !DILocation(line: 124, column: 7, scope: !1312)
!1314 = !DILocation(line: 127, column: 25, scope: !1273)
!1315 = !DILocation(line: 129, column: 14, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 129, column: 7)
!1317 = !DILocation(line: 129, column: 7, scope: !1273)
!1318 = !DILocation(line: 134, column: 3, scope: !1273)
!1319 = !DILocation(line: 137, column: 1, scope: !1273)
!1320 = !DISubprogram(name: "bindtextdomain", scope: !1105, file: !1105, line: 86, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!101, !107, !107}
!1323 = !DISubprogram(name: "textdomain", scope: !1105, file: !1105, line: 82, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1324 = !DISubprogram(name: "atexit", scope: !1247, file: !1247, line: 602, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!70, !416}
!1327 = !DISubprogram(name: "getopt_long", scope: !339, file: !339, line: 66, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!70, !70, !1330, !107, !1332, !344}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1333 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !356, file: !356, line: 50, type: !1073, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1334)
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "file", arg: 1, scope: !1333, file: !356, line: 50, type: !107)
!1336 = !DILocation(line: 0, scope: !1333)
!1337 = !DILocation(line: 52, column: 13, scope: !1333)
!1338 = !DILocation(line: 53, column: 1, scope: !1333)
!1339 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !356, file: !356, line: 87, type: !1340, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !148}
!1342 = !{!1343}
!1343 = !DILocalVariable(name: "ignore", arg: 1, scope: !1339, file: !356, line: 87, type: !148)
!1344 = !DILocation(line: 0, scope: !1339)
!1345 = !DILocation(line: 89, column: 16, scope: !1339)
!1346 = !{!1347, !1347, i64 0}
!1347 = !{!"_Bool", !1062, i64 0}
!1348 = !DILocation(line: 90, column: 1, scope: !1339)
!1349 = distinct !DISubprogram(name: "close_stdout", scope: !356, file: !356, line: 116, type: !417, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, retainedNodes: !1350)
!1350 = !{!1351}
!1351 = !DILocalVariable(name: "write_error", scope: !1352, file: !356, line: 121, type: !107)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !356, line: 120, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !356, line: 118, column: 7)
!1354 = !DILocation(line: 118, column: 21, scope: !1353)
!1355 = !DILocation(line: 118, column: 7, scope: !1353)
!1356 = !DILocation(line: 118, column: 29, scope: !1353)
!1357 = !DILocation(line: 119, column: 7, scope: !1353)
!1358 = !DILocation(line: 119, column: 12, scope: !1353)
!1359 = !{i8 0, i8 2}
!1360 = !DILocation(line: 119, column: 25, scope: !1353)
!1361 = !DILocation(line: 119, column: 28, scope: !1353)
!1362 = !DILocation(line: 119, column: 34, scope: !1353)
!1363 = !DILocation(line: 118, column: 7, scope: !1349)
!1364 = !DILocation(line: 121, column: 33, scope: !1352)
!1365 = !DILocation(line: 0, scope: !1352)
!1366 = !DILocation(line: 122, column: 11, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1352, file: !356, line: 122, column: 11)
!1368 = !DILocation(line: 0, scope: !1367)
!1369 = !DILocation(line: 122, column: 11, scope: !1352)
!1370 = !DILocation(line: 123, column: 9, scope: !1367)
!1371 = !DILocation(line: 126, column: 9, scope: !1367)
!1372 = !DILocation(line: 128, column: 14, scope: !1352)
!1373 = !DILocation(line: 128, column: 7, scope: !1352)
!1374 = !DILocation(line: 133, column: 42, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1349, file: !356, line: 133, column: 7)
!1376 = !DILocation(line: 133, column: 28, scope: !1375)
!1377 = !DILocation(line: 133, column: 50, scope: !1375)
!1378 = !DILocation(line: 133, column: 7, scope: !1349)
!1379 = !DILocation(line: 134, column: 12, scope: !1375)
!1380 = !DILocation(line: 134, column: 5, scope: !1375)
!1381 = !DILocation(line: 135, column: 1, scope: !1349)
!1382 = !DISubprogram(name: "__errno_location", scope: !1383, file: !1383, line: 37, type: !1384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1383 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!344}
!1386 = !DISubprogram(name: "_exit", scope: !1387, file: !1387, line: 624, type: !1050, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1387 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1388 = distinct !DISubprogram(name: "verror", scope: !371, file: !371, line: 251, type: !1389, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !70, !70, !107, !381}
!1391 = !{!1392, !1393, !1394, !1395}
!1392 = !DILocalVariable(name: "status", arg: 1, scope: !1388, file: !371, line: 251, type: !70)
!1393 = !DILocalVariable(name: "errnum", arg: 2, scope: !1388, file: !371, line: 251, type: !70)
!1394 = !DILocalVariable(name: "message", arg: 3, scope: !1388, file: !371, line: 251, type: !107)
!1395 = !DILocalVariable(name: "args", arg: 4, scope: !1388, file: !371, line: 251, type: !381)
!1396 = !DILocation(line: 0, scope: !1388)
!1397 = !DILocation(line: 261, column: 3, scope: !1388)
!1398 = !DILocation(line: 265, column: 7, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1388, file: !371, line: 265, column: 7)
!1400 = !DILocation(line: 265, column: 7, scope: !1388)
!1401 = !DILocation(line: 266, column: 5, scope: !1399)
!1402 = !DILocation(line: 272, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1399, file: !371, line: 268, column: 5)
!1404 = !DILocation(line: 276, column: 3, scope: !1388)
!1405 = !DILocation(line: 282, column: 1, scope: !1388)
!1406 = distinct !DISubprogram(name: "flush_stdout", scope: !371, file: !371, line: 163, type: !417, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1407)
!1407 = !{!1408}
!1408 = !DILocalVariable(name: "stdout_fd", scope: !1406, file: !371, line: 166, type: !70)
!1409 = !DILocation(line: 0, scope: !1406)
!1410 = !DILocalVariable(name: "fd", arg: 1, scope: !1411, file: !371, line: 145, type: !70)
!1411 = distinct !DISubprogram(name: "is_open", scope: !371, file: !371, line: 145, type: !1412, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1414)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!70, !70}
!1414 = !{!1410}
!1415 = !DILocation(line: 0, scope: !1411, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 182, column: 25, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1406, file: !371, line: 182, column: 7)
!1418 = !DILocation(line: 157, column: 15, scope: !1411, inlinedAt: !1416)
!1419 = !DILocation(line: 157, column: 12, scope: !1411, inlinedAt: !1416)
!1420 = !DILocation(line: 182, column: 7, scope: !1406)
!1421 = !DILocation(line: 184, column: 5, scope: !1417)
!1422 = !DILocation(line: 185, column: 1, scope: !1406)
!1423 = distinct !DISubprogram(name: "error_tail", scope: !371, file: !371, line: 219, type: !1389, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1424)
!1424 = !{!1425, !1426, !1427, !1428}
!1425 = !DILocalVariable(name: "status", arg: 1, scope: !1423, file: !371, line: 219, type: !70)
!1426 = !DILocalVariable(name: "errnum", arg: 2, scope: !1423, file: !371, line: 219, type: !70)
!1427 = !DILocalVariable(name: "message", arg: 3, scope: !1423, file: !371, line: 219, type: !107)
!1428 = !DILocalVariable(name: "args", arg: 4, scope: !1423, file: !371, line: 219, type: !381)
!1429 = distinct !DIAssignID()
!1430 = !DILocation(line: 0, scope: !1423)
!1431 = !DILocation(line: 229, column: 13, scope: !1423)
!1432 = !DILocalVariable(name: "__stream", arg: 1, scope: !1433, file: !1109, line: 132, type: !1436)
!1433 = distinct !DISubprogram(name: "vfprintf", scope: !1109, file: !1109, line: 132, type: !1434, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1471)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!70, !1436, !1113, !381}
!1436 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !1439)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1439, file: !165, line: 51, baseType: !70, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1439, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1439, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1439, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1439, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1439, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1439, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1439, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1439, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1439, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1439, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1439, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1439, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1439, file: !165, line: 70, baseType: !1455, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1439, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1439, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1439, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1439, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1439, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1439, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1439, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1439, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1439, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1439, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1439, file: !165, line: 93, baseType: !1455, size: 64, offset: 1344)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1439, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1439, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1439, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1439, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!1471 = !{!1432, !1472, !1473}
!1472 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1433, file: !1109, line: 133, type: !1113)
!1473 = !DILocalVariable(name: "__ap", arg: 3, scope: !1433, file: !1109, line: 133, type: !381)
!1474 = !DILocation(line: 0, scope: !1433, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 229, column: 3, scope: !1423)
!1476 = !DILocation(line: 135, column: 10, scope: !1433, inlinedAt: !1475)
!1477 = !DILocation(line: 232, column: 3, scope: !1423)
!1478 = !DILocation(line: 233, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1423, file: !371, line: 233, column: 7)
!1480 = !DILocation(line: 233, column: 7, scope: !1423)
!1481 = !DILocalVariable(name: "errbuf", scope: !1482, file: !371, line: 193, type: !1486)
!1482 = distinct !DISubprogram(name: "print_errno_message", scope: !371, file: !371, line: 188, type: !1050, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1481}
!1484 = !DILocalVariable(name: "errnum", arg: 1, scope: !1482, file: !371, line: 188, type: !70)
!1485 = !DILocalVariable(name: "s", scope: !1482, file: !371, line: 190, type: !107)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 1024)
!1489 = !DILocation(line: 0, scope: !1482, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 234, column: 5, scope: !1479)
!1491 = !DILocation(line: 193, column: 3, scope: !1482, inlinedAt: !1490)
!1492 = !DILocation(line: 195, column: 7, scope: !1482, inlinedAt: !1490)
!1493 = !DILocation(line: 207, column: 9, scope: !1494, inlinedAt: !1490)
!1494 = distinct !DILexicalBlock(scope: !1482, file: !371, line: 207, column: 7)
!1495 = !DILocation(line: 207, column: 7, scope: !1482, inlinedAt: !1490)
!1496 = !DILocation(line: 208, column: 9, scope: !1494, inlinedAt: !1490)
!1497 = !DILocation(line: 208, column: 5, scope: !1494, inlinedAt: !1490)
!1498 = !DILocation(line: 214, column: 3, scope: !1482, inlinedAt: !1490)
!1499 = !DILocation(line: 216, column: 1, scope: !1482, inlinedAt: !1490)
!1500 = !DILocation(line: 234, column: 5, scope: !1479)
!1501 = !DILocation(line: 238, column: 3, scope: !1423)
!1502 = !DILocalVariable(name: "__c", arg: 1, scope: !1503, file: !1504, line: 101, type: !70)
!1503 = distinct !DISubprogram(name: "putc_unlocked", scope: !1504, file: !1504, line: 101, type: !1505, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1507)
!1504 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!70, !70, !1437}
!1507 = !{!1502, !1508}
!1508 = !DILocalVariable(name: "__stream", arg: 2, scope: !1503, file: !1504, line: 101, type: !1437)
!1509 = !DILocation(line: 0, scope: !1503, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 238, column: 3, scope: !1423)
!1511 = !DILocation(line: 103, column: 10, scope: !1503, inlinedAt: !1510)
!1512 = !{!1513, !1061, i64 40}
!1513 = !{!"_IO_FILE", !1124, i64 0, !1061, i64 8, !1061, i64 16, !1061, i64 24, !1061, i64 32, !1061, i64 40, !1061, i64 48, !1061, i64 56, !1061, i64 64, !1061, i64 72, !1061, i64 80, !1061, i64 88, !1061, i64 96, !1061, i64 104, !1124, i64 112, !1124, i64 116, !1514, i64 120, !1165, i64 128, !1062, i64 130, !1062, i64 131, !1061, i64 136, !1514, i64 144, !1061, i64 152, !1061, i64 160, !1061, i64 168, !1061, i64 176, !1514, i64 184, !1124, i64 192, !1062, i64 196}
!1514 = !{!"long", !1062, i64 0}
!1515 = !{!1513, !1061, i64 48}
!1516 = !{!"branch_weights", i32 2000, i32 1}
!1517 = !DILocation(line: 240, column: 3, scope: !1423)
!1518 = !DILocation(line: 241, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1423, file: !371, line: 241, column: 7)
!1520 = !DILocation(line: 241, column: 7, scope: !1423)
!1521 = !DILocation(line: 242, column: 5, scope: !1519)
!1522 = !DILocation(line: 243, column: 1, scope: !1423)
!1523 = !DISubprogram(name: "__vfprintf_chk", scope: !1109, file: !1109, line: 96, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!70, !1436, !70, !1113, !381}
!1526 = !DISubprogram(name: "strerror_r", scope: !1243, file: !1243, line: 444, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!101, !70, !101, !104}
!1529 = !DISubprogram(name: "__overflow", scope: !1118, file: !1118, line: 886, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!70, !1437, !70}
!1532 = !DISubprogram(name: "fflush_unlocked", scope: !1118, file: !1118, line: 239, type: !1533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!70, !1437}
!1535 = !DISubprogram(name: "fcntl", scope: !1536, file: !1536, line: 149, type: !1537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1536 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!70, !70, !70, null}
!1539 = distinct !DISubprogram(name: "error", scope: !371, file: !371, line: 285, type: !1540, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !70, !70, !107, null}
!1542 = !{!1543, !1544, !1545, !1546}
!1543 = !DILocalVariable(name: "status", arg: 1, scope: !1539, file: !371, line: 285, type: !70)
!1544 = !DILocalVariable(name: "errnum", arg: 2, scope: !1539, file: !371, line: 285, type: !70)
!1545 = !DILocalVariable(name: "message", arg: 3, scope: !1539, file: !371, line: 285, type: !107)
!1546 = !DILocalVariable(name: "ap", scope: !1539, file: !371, line: 287, type: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1118, line: 52, baseType: !1548)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1549, line: 12, baseType: !1550)
!1549 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 192, elements: !45)
!1552 = distinct !DIAssignID()
!1553 = !DILocation(line: 0, scope: !1539)
!1554 = !DILocation(line: 287, column: 3, scope: !1539)
!1555 = !DILocation(line: 288, column: 3, scope: !1539)
!1556 = !DILocation(line: 289, column: 3, scope: !1539)
!1557 = !DILocation(line: 290, column: 3, scope: !1539)
!1558 = !DILocation(line: 291, column: 1, scope: !1539)
!1559 = !DILocation(line: 0, scope: !378)
!1560 = !DILocation(line: 302, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !378, file: !371, line: 302, column: 7)
!1562 = !DILocation(line: 302, column: 7, scope: !378)
!1563 = !DILocation(line: 307, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !371, line: 307, column: 11)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !371, line: 303, column: 5)
!1566 = !DILocation(line: 307, column: 27, scope: !1564)
!1567 = !DILocation(line: 308, column: 11, scope: !1564)
!1568 = !DILocation(line: 308, column: 28, scope: !1564)
!1569 = !DILocation(line: 308, column: 25, scope: !1564)
!1570 = !DILocation(line: 309, column: 15, scope: !1564)
!1571 = !DILocation(line: 309, column: 33, scope: !1564)
!1572 = !DILocation(line: 310, column: 19, scope: !1564)
!1573 = !DILocation(line: 311, column: 22, scope: !1564)
!1574 = !DILocation(line: 311, column: 56, scope: !1564)
!1575 = !DILocation(line: 307, column: 11, scope: !1565)
!1576 = !DILocation(line: 316, column: 21, scope: !1565)
!1577 = !DILocation(line: 317, column: 23, scope: !1565)
!1578 = !DILocation(line: 318, column: 5, scope: !1565)
!1579 = !DILocation(line: 327, column: 3, scope: !378)
!1580 = !DILocation(line: 331, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !378, file: !371, line: 331, column: 7)
!1582 = !DILocation(line: 331, column: 7, scope: !378)
!1583 = !DILocation(line: 332, column: 5, scope: !1581)
!1584 = !DILocation(line: 338, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1581, file: !371, line: 334, column: 5)
!1586 = !DILocation(line: 346, column: 3, scope: !378)
!1587 = !DILocation(line: 350, column: 3, scope: !378)
!1588 = !DILocation(line: 356, column: 1, scope: !378)
!1589 = distinct !DISubprogram(name: "error_at_line", scope: !371, file: !371, line: 359, type: !1590, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !70, !70, !107, !63, !107, null}
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598}
!1593 = !DILocalVariable(name: "status", arg: 1, scope: !1589, file: !371, line: 359, type: !70)
!1594 = !DILocalVariable(name: "errnum", arg: 2, scope: !1589, file: !371, line: 359, type: !70)
!1595 = !DILocalVariable(name: "file_name", arg: 3, scope: !1589, file: !371, line: 359, type: !107)
!1596 = !DILocalVariable(name: "line_number", arg: 4, scope: !1589, file: !371, line: 360, type: !63)
!1597 = !DILocalVariable(name: "message", arg: 5, scope: !1589, file: !371, line: 360, type: !107)
!1598 = !DILocalVariable(name: "ap", scope: !1589, file: !371, line: 362, type: !1547)
!1599 = distinct !DIAssignID()
!1600 = !DILocation(line: 0, scope: !1589)
!1601 = !DILocation(line: 362, column: 3, scope: !1589)
!1602 = !DILocation(line: 363, column: 3, scope: !1589)
!1603 = !DILocation(line: 364, column: 3, scope: !1589)
!1604 = !DILocation(line: 366, column: 3, scope: !1589)
!1605 = !DILocation(line: 367, column: 1, scope: !1589)
!1606 = distinct !DISubprogram(name: "getprogname", scope: !726, file: !726, line: 54, type: !1607, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!107}
!1609 = !DILocation(line: 58, column: 10, scope: !1606)
!1610 = !DILocation(line: 58, column: 3, scope: !1606)
!1611 = distinct !DISubprogram(name: "num_processors", scope: !421, file: !421, line: 544, type: !1612, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!106, !729}
!1614 = !{!1615, !1616, !1617, !1620, !1621, !1624}
!1615 = !DILocalVariable(name: "query", arg: 1, scope: !1611, file: !421, line: 544, type: !729)
!1616 = !DILocalVariable(name: "nproc_limit", scope: !1611, file: !421, line: 546, type: !106)
!1617 = !DILocalVariable(name: "omp_env_threads", scope: !1618, file: !421, line: 552, type: !106)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !421, line: 551, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1611, file: !421, line: 550, column: 7)
!1620 = !DILocalVariable(name: "omp_env_limit", scope: !1618, file: !421, line: 555, type: !106)
!1621 = !DILocalVariable(name: "quota", scope: !1622, file: !421, line: 570, type: !106)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !421, line: 569, column: 5)
!1623 = distinct !DILexicalBlock(scope: !1611, file: !421, line: 568, column: 7)
!1624 = !DILocalVariable(name: "nprocs", scope: !1625, file: !421, line: 576, type: !106)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !421, line: 575, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1611, file: !421, line: 574, column: 7)
!1627 = distinct !DIAssignID()
!1628 = distinct !DIAssignID()
!1629 = distinct !DIAssignID()
!1630 = distinct !DIAssignID()
!1631 = distinct !DIAssignID()
!1632 = distinct !DIAssignID()
!1633 = distinct !DIAssignID()
!1634 = distinct !DIAssignID()
!1635 = distinct !DIAssignID()
!1636 = !DILocation(line: 0, scope: !1611)
!1637 = !DILocation(line: 550, column: 13, scope: !1619)
!1638 = !DILocation(line: 550, column: 7, scope: !1611)
!1639 = !DILocation(line: 553, column: 28, scope: !1618)
!1640 = !DILocalVariable(name: "endptr", scope: !1641, file: !421, line: 528, type: !101)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !421, line: 527, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !421, line: 526, column: 7)
!1643 = distinct !DISubprogram(name: "parse_omp_threads", scope: !421, file: !421, line: 515, type: !1644, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!106, !107}
!1646 = !{!1647, !1640, !1648}
!1647 = !DILocalVariable(name: "threads", arg: 1, scope: !1643, file: !421, line: 515, type: !107)
!1648 = !DILocalVariable(name: "value", scope: !1641, file: !421, line: 529, type: !106)
!1649 = !DILocation(line: 0, scope: !1641, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 553, column: 9, scope: !1618)
!1651 = !DILocation(line: 0, scope: !1643, inlinedAt: !1650)
!1652 = !DILocation(line: 517, column: 15, scope: !1653, inlinedAt: !1650)
!1653 = distinct !DILexicalBlock(scope: !1643, file: !421, line: 517, column: 7)
!1654 = !DILocation(line: 517, column: 7, scope: !1643, inlinedAt: !1650)
!1655 = !DILocation(line: 522, column: 10, scope: !1643, inlinedAt: !1650)
!1656 = !DILocation(line: 522, column: 27, scope: !1643, inlinedAt: !1650)
!1657 = !DILocation(line: 523, column: 12, scope: !1643, inlinedAt: !1650)
!1658 = !DILocation(line: 522, column: 3, scope: !1643, inlinedAt: !1650)
!1659 = distinct !{!1659, !1658, !1657, !1170}
!1660 = !DILocation(line: 526, column: 18, scope: !1642, inlinedAt: !1650)
!1661 = !DILocalVariable(name: "c", arg: 1, scope: !1662, file: !1663, line: 233, type: !70)
!1662 = distinct !DISubprogram(name: "c_isdigit", scope: !1663, file: !1663, line: 233, type: !1664, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1666)
!1663 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!148, !70}
!1666 = !{!1661}
!1667 = !DILocation(line: 0, scope: !1662, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 526, column: 7, scope: !1642, inlinedAt: !1650)
!1669 = !DILocation(line: 235, column: 3, scope: !1662, inlinedAt: !1668)
!1670 = !DILocation(line: 526, column: 7, scope: !1643, inlinedAt: !1650)
!1671 = !DILocation(line: 528, column: 7, scope: !1641, inlinedAt: !1650)
!1672 = !DILocation(line: 529, column: 33, scope: !1641, inlinedAt: !1650)
!1673 = !DILocation(line: 530, column: 7, scope: !1641, inlinedAt: !1650)
!1674 = !DILocation(line: 530, column: 14, scope: !1641, inlinedAt: !1650)
!1675 = !DILocation(line: 530, column: 30, scope: !1641, inlinedAt: !1650)
!1676 = !DILocation(line: 538, column: 5, scope: !1642, inlinedAt: !1650)
!1677 = !DILocation(line: 531, column: 15, scope: !1641, inlinedAt: !1650)
!1678 = distinct !DIAssignID()
!1679 = distinct !{!1679, !1673, !1677, !1170}
!1680 = !DILocation(line: 540, column: 3, scope: !1643, inlinedAt: !1650)
!1681 = !DILocation(line: 0, scope: !1618)
!1682 = !DILocation(line: 556, column: 28, scope: !1618)
!1683 = !DILocation(line: 0, scope: !1641, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 556, column: 9, scope: !1618)
!1685 = !DILocation(line: 0, scope: !1643, inlinedAt: !1684)
!1686 = !DILocation(line: 517, column: 15, scope: !1653, inlinedAt: !1684)
!1687 = !DILocation(line: 517, column: 7, scope: !1643, inlinedAt: !1684)
!1688 = !DILocation(line: 522, column: 10, scope: !1643, inlinedAt: !1684)
!1689 = !DILocation(line: 522, column: 27, scope: !1643, inlinedAt: !1684)
!1690 = !DILocation(line: 523, column: 12, scope: !1643, inlinedAt: !1684)
!1691 = !DILocation(line: 522, column: 3, scope: !1643, inlinedAt: !1684)
!1692 = distinct !{!1692, !1691, !1690, !1170}
!1693 = !DILocation(line: 526, column: 18, scope: !1642, inlinedAt: !1684)
!1694 = !DILocation(line: 0, scope: !1662, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 526, column: 7, scope: !1642, inlinedAt: !1684)
!1696 = !DILocation(line: 235, column: 3, scope: !1662, inlinedAt: !1695)
!1697 = !DILocation(line: 526, column: 7, scope: !1643, inlinedAt: !1684)
!1698 = !DILocation(line: 528, column: 7, scope: !1641, inlinedAt: !1684)
!1699 = !DILocation(line: 529, column: 33, scope: !1641, inlinedAt: !1684)
!1700 = !DILocation(line: 557, column: 13, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1618, file: !421, line: 557, column: 11)
!1702 = !DILocation(line: 530, column: 7, scope: !1641, inlinedAt: !1684)
!1703 = !DILocation(line: 530, column: 14, scope: !1641, inlinedAt: !1684)
!1704 = !DILocation(line: 530, column: 30, scope: !1641, inlinedAt: !1684)
!1705 = !DILocation(line: 538, column: 5, scope: !1642, inlinedAt: !1684)
!1706 = !DILocation(line: 557, column: 11, scope: !1618)
!1707 = !DILocation(line: 531, column: 15, scope: !1641, inlinedAt: !1684)
!1708 = distinct !DIAssignID()
!1709 = distinct !{!1709, !1702, !1707, !1170}
!1710 = !DILocation(line: 560, column: 11, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1618, file: !421, line: 560, column: 11)
!1712 = !DILocation(line: 560, column: 11, scope: !1618)
!1713 = !DILocation(line: 546, column: 21, scope: !1611)
!1714 = !DILocation(line: 568, column: 13, scope: !1623)
!1715 = !DILocation(line: 568, column: 30, scope: !1623)
!1716 = !DILocalVariable(name: "quota", scope: !1717, file: !421, line: 489, type: !106)
!1717 = distinct !DISubprogram(name: "cpu_quota", scope: !421, file: !421, line: 487, type: !1718, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!106}
!1720 = !{!1716}
!1721 = !DILocation(line: 0, scope: !1717, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 570, column: 33, scope: !1622)
!1723 = !DILocation(line: 494, column: 11, scope: !1717, inlinedAt: !1722)
!1724 = !DILocation(line: 494, column: 3, scope: !1717, inlinedAt: !1722)
!1725 = !DILocalVariable(name: "cgroup_str", scope: !1726, file: !421, line: 410, type: !101)
!1726 = distinct !DISubprogram(name: "get_cgroup2_cpu_quota", scope: !421, file: !421, line: 400, type: !1718, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1727)
!1727 = !{!1728, !1729, !1764, !1725, !1765, !1766, !1770, !1774, !1775, !1776, !1777, !1782, !1785, !1786, !1789}
!1728 = !DILocalVariable(name: "cpu_quota", scope: !1726, file: !421, line: 402, type: !106)
!1729 = !DILocalVariable(name: "fp", scope: !1726, file: !421, line: 404, type: !1730)
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
!1764 = !DILocalVariable(name: "cgroup", scope: !1726, file: !421, line: 409, type: !101)
!1765 = !DILocalVariable(name: "cgroup_size", scope: !1726, file: !421, line: 411, type: !104)
!1766 = !DILocalVariable(name: "read", scope: !1726, file: !421, line: 412, type: !1767)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1768, line: 108, baseType: !1769)
!1768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !188, line: 194, baseType: !189)
!1770 = !DILocalVariable(name: "end", scope: !1771, file: !421, line: 417, type: !101)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !421, line: 416, column: 9)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !421, line: 415, column: 11)
!1773 = distinct !DILexicalBlock(scope: !1726, file: !421, line: 414, column: 5)
!1774 = !DILocalVariable(name: "mount", scope: !1726, file: !421, line: 426, type: !101)
!1775 = !DILocalVariable(name: "quota_str", scope: !1726, file: !421, line: 431, type: !101)
!1776 = !DILocalVariable(name: "quota_size", scope: !1726, file: !421, line: 432, type: !104)
!1777 = !DILocalVariable(name: "cpu_max_file", scope: !1778, file: !421, line: 440, type: !1779)
!1778 = distinct !DILexicalBlock(scope: !1726, file: !421, line: 434, column: 5)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1780)
!1780 = !{!1781}
!1781 = !DISubrange(count: 4096)
!1782 = !DILocalVariable(name: "quota", scope: !1783, file: !421, line: 448, type: !189)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !421, line: 447, column: 9)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !421, line: 444, column: 11)
!1785 = !DILocalVariable(name: "period", scope: !1783, file: !421, line: 448, type: !189)
!1786 = !DILocalVariable(name: "ncpus", scope: !1787, file: !421, line: 451, type: !952)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !421, line: 450, column: 13)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !421, line: 449, column: 15)
!1789 = !DILocalVariable(name: "last_sep", scope: !1778, file: !421, line: 465, type: !101)
!1790 = !DILocation(line: 0, scope: !1726, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 503, column: 17, scope: !1792, inlinedAt: !1722)
!1792 = distinct !DILexicalBlock(scope: !1717, file: !421, line: 495, column: 5)
!1793 = !DILocation(line: 0, scope: !1778, inlinedAt: !1791)
!1794 = !DILocation(line: 0, scope: !1783, inlinedAt: !1791)
!1795 = !DILocation(line: 404, column: 14, scope: !1726, inlinedAt: !1791)
!1796 = !DILocation(line: 405, column: 9, scope: !1797, inlinedAt: !1791)
!1797 = distinct !DILexicalBlock(scope: !1726, file: !421, line: 405, column: 7)
!1798 = !DILocation(line: 405, column: 7, scope: !1726, inlinedAt: !1791)
!1799 = !DILocation(line: 410, column: 3, scope: !1726, inlinedAt: !1791)
!1800 = !DILocation(line: 410, column: 9, scope: !1726, inlinedAt: !1791)
!1801 = distinct !DIAssignID()
!1802 = !DILocation(line: 411, column: 3, scope: !1726, inlinedAt: !1791)
!1803 = !DILocation(line: 411, column: 10, scope: !1726, inlinedAt: !1791)
!1804 = !{!1514, !1514, i64 0}
!1805 = distinct !DIAssignID()
!1806 = !DILocation(line: 413, column: 3, scope: !1726, inlinedAt: !1791)
!1807 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1808, file: !1504, line: 118, type: !1276)
!1808 = distinct !DISubprogram(name: "getline", scope: !1504, file: !1504, line: 118, type: !1809, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!1769, !1276, !968, !1730}
!1811 = !{!1807, !1812, !1813}
!1812 = !DILocalVariable(name: "__n", arg: 2, scope: !1808, file: !1504, line: 118, type: !968)
!1813 = !DILocalVariable(name: "__stream", arg: 3, scope: !1808, file: !1504, line: 118, type: !1730)
!1814 = !DILocation(line: 0, scope: !1808, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 413, column: 18, scope: !1726, inlinedAt: !1791)
!1816 = !DILocation(line: 120, column: 10, scope: !1808, inlinedAt: !1815)
!1817 = !DILocation(line: 413, column: 59, scope: !1726, inlinedAt: !1791)
!1818 = !DILocation(line: 424, column: 3, scope: !1726, inlinedAt: !1791)
!1819 = !DILocation(line: 427, column: 14, scope: !1820, inlinedAt: !1791)
!1820 = distinct !DILexicalBlock(scope: !1726, file: !421, line: 427, column: 7)
!1821 = !DILocation(line: 415, column: 20, scope: !1772, inlinedAt: !1791)
!1822 = !DILocation(line: 415, column: 11, scope: !1772, inlinedAt: !1791)
!1823 = !DILocation(line: 415, column: 43, scope: !1772, inlinedAt: !1791)
!1824 = !DILocation(line: 415, column: 11, scope: !1773, inlinedAt: !1791)
!1825 = distinct !{!1825, !1806, !1826, !1170}
!1826 = !DILocation(line: 423, column: 5, scope: !1726, inlinedAt: !1791)
!1827 = !DILocation(line: 417, column: 34, scope: !1771, inlinedAt: !1791)
!1828 = !DILocation(line: 417, column: 41, scope: !1771, inlinedAt: !1791)
!1829 = !DILocation(line: 0, scope: !1771, inlinedAt: !1791)
!1830 = !DILocation(line: 418, column: 15, scope: !1831, inlinedAt: !1791)
!1831 = distinct !DILexicalBlock(scope: !1771, file: !421, line: 418, column: 15)
!1832 = !DILocation(line: 418, column: 20, scope: !1831, inlinedAt: !1791)
!1833 = !DILocation(line: 418, column: 15, scope: !1771, inlinedAt: !1791)
!1834 = !DILocation(line: 419, column: 18, scope: !1831, inlinedAt: !1791)
!1835 = !DILocation(line: 420, column: 20, scope: !1771, inlinedAt: !1791)
!1836 = !DILocation(line: 419, column: 13, scope: !1831, inlinedAt: !1791)
!1837 = !DILocation(line: 420, column: 31, scope: !1771, inlinedAt: !1791)
!1838 = !DILocation(line: 371, column: 7, scope: !1839, inlinedAt: !1857)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !421, line: 371, column: 7)
!1840 = distinct !DISubprogram(name: "cgroup2_mount", scope: !421, file: !421, line: 367, type: !1841, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1843)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!101}
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "ret", scope: !1840, file: !421, line: 374, type: !101)
!1845 = !DILocalVariable(name: "fp", scope: !1840, file: !421, line: 378, type: !1730)
!1846 = !DILocalVariable(name: "mnt", scope: !1840, file: !421, line: 381, type: !1847)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mntent", file: !1849, line: 51, size: 320, elements: !1850)
!1849 = !DIFile(filename: "/usr/include/mntent.h", directory: "", checksumkind: CSK_MD5, checksum: "0070e4c80f74d781196301da01c9ab34")
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsname", scope: !1848, file: !1849, line: 53, baseType: !101, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_dir", scope: !1848, file: !1849, line: 54, baseType: !101, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_type", scope: !1848, file: !1849, line: 55, baseType: !101, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_opts", scope: !1848, file: !1849, line: 56, baseType: !101, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_freq", scope: !1848, file: !1849, line: 57, baseType: !70, size: 32, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_passno", scope: !1848, file: !1849, line: 58, baseType: !70, size: 32, offset: 288)
!1857 = distinct !DILocation(line: 427, column: 28, scope: !1820, inlinedAt: !1791)
!1858 = !DILocation(line: 371, column: 58, scope: !1839, inlinedAt: !1857)
!1859 = !DILocation(line: 371, column: 7, scope: !1840, inlinedAt: !1857)
!1860 = !DILocation(line: 372, column: 12, scope: !1839, inlinedAt: !1857)
!1861 = !DILocation(line: 372, column: 5, scope: !1839, inlinedAt: !1857)
!1862 = !DILocation(line: 0, scope: !1840, inlinedAt: !1857)
!1863 = !DILocation(line: 378, column: 14, scope: !1840, inlinedAt: !1857)
!1864 = !DILocation(line: 379, column: 9, scope: !1865, inlinedAt: !1857)
!1865 = distinct !DILexicalBlock(scope: !1840, file: !421, line: 379, column: 7)
!1866 = !DILocation(line: 379, column: 7, scope: !1840, inlinedAt: !1857)
!1867 = !DILocation(line: 382, column: 17, scope: !1840, inlinedAt: !1857)
!1868 = !DILocation(line: 382, column: 33, scope: !1840, inlinedAt: !1857)
!1869 = !DILocation(line: 382, column: 3, scope: !1840, inlinedAt: !1857)
!1870 = !DILocation(line: 384, column: 23, scope: !1871, inlinedAt: !1857)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !421, line: 384, column: 11)
!1872 = distinct !DILexicalBlock(scope: !1840, file: !421, line: 383, column: 5)
!1873 = !{!1874, !1061, i64 16}
!1874 = !{!"mntent", !1061, i64 0, !1061, i64 8, !1061, i64 16, !1061, i64 24, !1124, i64 32, !1124, i64 36}
!1875 = !DILocalVariable(name: "__s1", arg: 1, scope: !1876, file: !1136, line: 1359, type: !107)
!1876 = distinct !DISubprogram(name: "streq", scope: !1136, file: !1136, line: 1359, type: !1137, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1877)
!1877 = !{!1875, !1878}
!1878 = !DILocalVariable(name: "__s2", arg: 2, scope: !1876, file: !1136, line: 1359, type: !107)
!1879 = !DILocation(line: 0, scope: !1876, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 384, column: 11, scope: !1871, inlinedAt: !1857)
!1881 = !DILocation(line: 1361, column: 11, scope: !1876, inlinedAt: !1880)
!1882 = !DILocation(line: 1361, column: 10, scope: !1876, inlinedAt: !1880)
!1883 = !DILocation(line: 384, column: 11, scope: !1872, inlinedAt: !1857)
!1884 = distinct !{!1884, !1869, !1885, !1170}
!1885 = !DILocation(line: 389, column: 5, scope: !1840, inlinedAt: !1857)
!1886 = !DILocation(line: 386, column: 30, scope: !1887, inlinedAt: !1857)
!1887 = distinct !DILexicalBlock(scope: !1871, file: !421, line: 385, column: 9)
!1888 = !{!1874, !1061, i64 8}
!1889 = !DILocation(line: 386, column: 17, scope: !1887, inlinedAt: !1857)
!1890 = !DILocation(line: 387, column: 11, scope: !1887, inlinedAt: !1857)
!1891 = !DILocation(line: 390, column: 3, scope: !1840, inlinedAt: !1857)
!1892 = !DILocation(line: 427, column: 26, scope: !1820, inlinedAt: !1791)
!1893 = !DILocation(line: 427, column: 7, scope: !1726, inlinedAt: !1791)
!1894 = !DILocation(line: 431, column: 3, scope: !1726, inlinedAt: !1791)
!1895 = !DILocation(line: 431, column: 9, scope: !1726, inlinedAt: !1791)
!1896 = distinct !DIAssignID()
!1897 = !DILocation(line: 432, column: 3, scope: !1726, inlinedAt: !1791)
!1898 = !DILocation(line: 432, column: 10, scope: !1726, inlinedAt: !1791)
!1899 = distinct !DIAssignID()
!1900 = !DILocation(line: 433, column: 17, scope: !1726, inlinedAt: !1791)
!1901 = !DILocation(line: 433, column: 20, scope: !1726, inlinedAt: !1791)
!1902 = !DILocation(line: 433, column: 3, scope: !1726, inlinedAt: !1791)
!1903 = !DILocation(line: 440, column: 7, scope: !1778, inlinedAt: !1791)
!1904 = !DILocation(line: 441, column: 7, scope: !1778, inlinedAt: !1791)
!1905 = !DILocation(line: 444, column: 17, scope: !1784, inlinedAt: !1791)
!1906 = !DILocation(line: 444, column: 15, scope: !1784, inlinedAt: !1791)
!1907 = !DILocation(line: 445, column: 11, scope: !1784, inlinedAt: !1791)
!1908 = !DILocation(line: 0, scope: !1808, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 445, column: 14, scope: !1784, inlinedAt: !1791)
!1910 = !DILocation(line: 120, column: 10, scope: !1808, inlinedAt: !1909)
!1911 = !DILocation(line: 445, column: 52, scope: !1784, inlinedAt: !1791)
!1912 = !DILocation(line: 446, column: 11, scope: !1784, inlinedAt: !1791)
!1913 = !DILocation(line: 446, column: 23, scope: !1784, inlinedAt: !1791)
!1914 = !DILocation(line: 446, column: 14, scope: !1784, inlinedAt: !1791)
!1915 = !DILocation(line: 446, column: 44, scope: !1784, inlinedAt: !1791)
!1916 = !DILocation(line: 444, column: 11, scope: !1778, inlinedAt: !1791)
!1917 = !DILocation(line: 448, column: 11, scope: !1783, inlinedAt: !1791)
!1918 = !DILocation(line: 449, column: 15, scope: !1788, inlinedAt: !1791)
!1919 = !DILocation(line: 449, column: 62, scope: !1788, inlinedAt: !1791)
!1920 = !DILocation(line: 449, column: 67, scope: !1788, inlinedAt: !1791)
!1921 = !DILocation(line: 451, column: 38, scope: !1787, inlinedAt: !1791)
!1922 = !DILocation(line: 451, column: 30, scope: !1787, inlinedAt: !1791)
!1923 = !DILocation(line: 451, column: 46, scope: !1787, inlinedAt: !1791)
!1924 = !DILocation(line: 451, column: 44, scope: !1787, inlinedAt: !1791)
!1925 = !DILocation(line: 0, scope: !1787, inlinedAt: !1791)
!1926 = !DILocation(line: 452, column: 29, scope: !1927, inlinedAt: !1791)
!1927 = distinct !DILexicalBlock(scope: !1787, file: !421, line: 452, column: 19)
!1928 = !DILocation(line: 452, column: 42, scope: !1927, inlinedAt: !1791)
!1929 = !DILocation(line: 454, column: 31, scope: !1930, inlinedAt: !1791)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !421, line: 453, column: 17)
!1931 = !DILocation(line: 456, column: 33, scope: !1932, inlinedAt: !1791)
!1932 = distinct !DILexicalBlock(scope: !1930, file: !421, line: 456, column: 23)
!1933 = !DILocation(line: 456, column: 23, scope: !1930, inlinedAt: !1791)
!1934 = !DILocation(line: 457, column: 29, scope: !1932, inlinedAt: !1791)
!1935 = !DILocation(line: 457, column: 21, scope: !1932, inlinedAt: !1791)
!1936 = !DILocation(line: 460, column: 9, scope: !1784, inlinedAt: !1791)
!1937 = !DILocation(line: 460, column: 9, scope: !1783, inlinedAt: !1791)
!1938 = !DILocation(line: 463, column: 9, scope: !1939, inlinedAt: !1791)
!1939 = distinct !DILexicalBlock(scope: !1778, file: !421, line: 462, column: 11)
!1940 = !DILocation(line: 465, column: 24, scope: !1778, inlinedAt: !1791)
!1941 = !DILocation(line: 466, column: 13, scope: !1942, inlinedAt: !1791)
!1942 = distinct !DILexicalBlock(scope: !1778, file: !421, line: 466, column: 11)
!1943 = !DILocation(line: 466, column: 11, scope: !1778, inlinedAt: !1791)
!1944 = !DILocation(line: 472, column: 5, scope: !1726, inlinedAt: !1791)
!1945 = !DILocation(line: 468, column: 20, scope: !1946, inlinedAt: !1791)
!1946 = distinct !DILexicalBlock(scope: !1778, file: !421, line: 468, column: 11)
!1947 = !DILocation(line: 468, column: 30, scope: !1946, inlinedAt: !1791)
!1948 = !DILocation(line: 468, column: 33, scope: !1946, inlinedAt: !1791)
!1949 = !DILocation(line: 468, column: 11, scope: !1778, inlinedAt: !1791)
!1950 = !DILocation(line: 0, scope: !1946, inlinedAt: !1791)
!1951 = !DILocation(line: 474, column: 9, scope: !1726, inlinedAt: !1791)
!1952 = !DILocation(line: 474, column: 3, scope: !1726, inlinedAt: !1791)
!1953 = !DILocation(line: 475, column: 3, scope: !1726, inlinedAt: !1791)
!1954 = !DILocation(line: 476, column: 9, scope: !1726, inlinedAt: !1791)
!1955 = !DILocation(line: 476, column: 3, scope: !1726, inlinedAt: !1791)
!1956 = !DILocation(line: 479, column: 1, scope: !1726, inlinedAt: !1791)
!1957 = !DILocation(line: 0, scope: !1792, inlinedAt: !1722)
!1958 = !DILocation(line: 0, scope: !1622)
!1959 = !DILocation(line: 571, column: 21, scope: !1622)
!1960 = !DILocation(line: 572, column: 5, scope: !1622)
!1961 = !DILocation(line: 574, column: 19, scope: !1626)
!1962 = !DILocation(line: 574, column: 7, scope: !1611)
!1963 = !DILocalVariable(name: "query", arg: 1, scope: !1964, file: !421, line: 238, type: !729)
!1964 = distinct !DISubprogram(name: "num_processors_available", scope: !421, file: !421, line: 238, type: !1612, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !1965)
!1965 = !{!1963, !1966, !1970, !1972, !1975}
!1966 = !DILocalVariable(name: "nprocs", scope: !1967, file: !421, line: 259, type: !106)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !421, line: 258, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !421, line: 256, column: 5)
!1969 = distinct !DILexicalBlock(scope: !1964, file: !421, line: 255, column: 7)
!1970 = !DILocalVariable(name: "nprocs", scope: !1971, file: !421, line: 268, type: !189)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !421, line: 266, column: 7)
!1972 = !DILocalVariable(name: "nprocs", scope: !1973, file: !421, line: 279, type: !189)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !421, line: 277, column: 7)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !421, line: 275, column: 5)
!1975 = !DILocalVariable(name: "nprocs_current", scope: !1976, file: !421, line: 289, type: !106)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !421, line: 288, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !421, line: 287, column: 13)
!1978 = !DILocation(line: 0, scope: !1964, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 576, column: 30, scope: !1625)
!1980 = !DILocation(line: 255, column: 7, scope: !1964, inlinedAt: !1979)
!1981 = !DILocation(line: 259, column: 32, scope: !1967, inlinedAt: !1979)
!1982 = !DILocation(line: 0, scope: !1967, inlinedAt: !1979)
!1983 = !DILocation(line: 261, column: 20, scope: !1984, inlinedAt: !1979)
!1984 = distinct !DILexicalBlock(scope: !1967, file: !421, line: 261, column: 13)
!1985 = !DILocation(line: 268, column: 27, scope: !1971, inlinedAt: !1979)
!1986 = !DILocation(line: 0, scope: !1971, inlinedAt: !1979)
!1987 = !DILocation(line: 269, column: 20, scope: !1988, inlinedAt: !1979)
!1988 = distinct !DILexicalBlock(scope: !1971, file: !421, line: 269, column: 13)
!1989 = !DILocation(line: 279, column: 27, scope: !1973, inlinedAt: !1979)
!1990 = !DILocation(line: 0, scope: !1973, inlinedAt: !1979)
!1991 = !DILocation(line: 287, column: 25, scope: !1977, inlinedAt: !1979)
!1992 = !DILocation(line: 289, column: 44, scope: !1976, inlinedAt: !1979)
!1993 = !DILocation(line: 0, scope: !1976, inlinedAt: !1979)
!1994 = !DILocation(line: 291, column: 45, scope: !1976, inlinedAt: !1979)
!1995 = !DILocation(line: 293, column: 11, scope: !1976, inlinedAt: !1979)
!1996 = !DILocation(line: 296, column: 20, scope: !1997, inlinedAt: !1979)
!1997 = distinct !DILexicalBlock(scope: !1973, file: !421, line: 296, column: 13)
!1998 = !DILocation(line: 357, column: 3, scope: !1964, inlinedAt: !1979)
!1999 = !DILocation(line: 0, scope: !1625)
!2000 = !DILocation(line: 577, column: 21, scope: !1625)
!2001 = !DILocation(line: 578, column: 5, scope: !1625)
!2002 = !DILocation(line: 581, column: 1, scope: !1611)
!2003 = !DISubprogram(name: "strtoul", scope: !1247, file: !1247, line: 181, type: !2004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!106, !1113, !2006, !70}
!2006 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1276)
!2007 = !DISubprogram(name: "sched_getscheduler", scope: !2008, file: !2008, line: 65, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2008 = !DIFile(filename: "/usr/include/sched.h", directory: "", checksumkind: CSK_MD5, checksum: "52ea601aba54a9937a50019367077a72")
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!70, !2011}
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !188, line: 154, baseType: !70)
!2012 = !DISubprogram(name: "__getdelim", scope: !1118, file: !1118, line: 632, type: !2013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1769, !2006, !2015, !70, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !968)
!2016 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1730)
!2017 = !DISubprogram(name: "access", scope: !1387, file: !1387, line: 287, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!70, !107, !70}
!2020 = !DISubprogram(name: "strdup", scope: !1243, file: !1243, line: 187, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2021 = !DISubprogram(name: "setmntent", scope: !1849, file: !1849, line: 64, type: !2022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!1730, !107, !107}
!2024 = !DISubprogram(name: "getmntent", scope: !1849, file: !1849, line: 69, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!1847, !1730}
!2027 = !DISubprogram(name: "endmntent", scope: !1849, file: !1849, line: 85, type: !2028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!70, !1730}
!2030 = !DISubprogram(name: "__builtin___snprintf_chk", scope: !421, file: !421, line: 441, type: !2031, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!70, !2033, !106, !70, !106, !1113, null}
!2033 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!2034 = !DISubprogram(name: "sscanf", linkageName: "__isoc99_sscanf", scope: !1118, file: !1118, line: 439, type: !2035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!70, !1113, !1113, null}
!2037 = !DISubprogram(name: "strrchr", scope: !1243, file: !1243, line: 273, type: !1258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2038 = !DISubprogram(name: "free", scope: !1136, file: !1136, line: 752, type: !2039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{null, !102}
!2041 = distinct !DISubprogram(name: "num_processors_via_affinity_mask", scope: !421, file: !421, line: 73, type: !1718, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !2042)
!2042 = !{!2043, !2045, !2057, !2058, !2061, !2063}
!2043 = !DILocalVariable(name: "alloc_count", scope: !2044, file: !421, line: 137, type: !63)
!2044 = distinct !DILexicalBlock(scope: !2041, file: !421, line: 136, column: 3)
!2045 = !DILocalVariable(name: "set", scope: !2046, file: !421, line: 140, type: !2049)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !421, line: 139, column: 7)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !421, line: 138, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !421, line: 138, column: 5)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpu_set_t", file: !2051, line: 42, baseType: !2052)
!2051 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/cpu-set.h", directory: "", checksumkind: CSK_MD5, checksum: "9b78eb5e247ecb71c5de90bcf65db505")
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2051, line: 39, size: 1024, elements: !2053)
!2053 = !{!2054}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "__bits", scope: !2052, file: !2051, line: 41, baseType: !2055, size: 1024)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 1024, elements: !297)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__cpu_mask", file: !2051, line: 32, baseType: !106)
!2057 = !DILocalVariable(name: "size", scope: !2046, file: !421, line: 144, type: !63)
!2058 = !DILocalVariable(name: "count", scope: !2059, file: !421, line: 147, type: !63)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !421, line: 146, column: 11)
!2060 = distinct !DILexicalBlock(scope: !2046, file: !421, line: 145, column: 13)
!2061 = !DILocalVariable(name: "set", scope: !2062, file: !421, line: 167, type: !2050)
!2062 = distinct !DILexicalBlock(scope: !2041, file: !421, line: 166, column: 3)
!2063 = !DILocalVariable(name: "count", scope: !2064, file: !421, line: 171, type: !106)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !421, line: 170, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !421, line: 169, column: 9)
!2066 = distinct !DIAssignID()
!2067 = !DILocation(line: 0, scope: !2062)
!2068 = !DILocation(line: 0, scope: !2044)
!2069 = !DILocation(line: 138, column: 5, scope: !2044)
!2070 = !DILocation(line: 137, column: 18, scope: !2044)
!2071 = !DILocation(line: 140, column: 26, scope: !2046)
!2072 = !DILocation(line: 0, scope: !2046)
!2073 = !DILocation(line: 141, column: 17, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2046, file: !421, line: 141, column: 13)
!2075 = !DILocation(line: 141, column: 13, scope: !2046)
!2076 = !DILocation(line: 144, column: 29, scope: !2046)
!2077 = !DILocation(line: 145, column: 13, scope: !2060)
!2078 = !DILocation(line: 145, column: 46, scope: !2060)
!2079 = !DILocation(line: 145, column: 13, scope: !2046)
!2080 = !DILocation(line: 147, column: 34, scope: !2059)
!2081 = !DILocation(line: 0, scope: !2059)
!2082 = !DILocation(line: 148, column: 13, scope: !2059)
!2083 = !DILocation(line: 149, column: 20, scope: !2059)
!2084 = !DILocation(line: 151, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2046, file: !421, line: 151, column: 13)
!2086 = !DILocation(line: 151, column: 19, scope: !2085)
!2087 = !DILocation(line: 151, column: 13, scope: !2046)
!2088 = !DILocation(line: 167, column: 5, scope: !2062)
!2089 = !DILocation(line: 169, column: 9, scope: !2065)
!2090 = !DILocation(line: 169, column: 51, scope: !2065)
!2091 = !DILocation(line: 169, column: 9, scope: !2062)
!2092 = !DILocation(line: 175, column: 17, scope: !2064)
!2093 = !DILocation(line: 0, scope: !2064)
!2094 = !DILocation(line: 182, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2064, file: !421, line: 182, column: 13)
!2096 = !DILocation(line: 182, column: 13, scope: !2064)
!2097 = !DILocation(line: 185, column: 3, scope: !2041)
!2098 = !DILocation(line: 232, column: 1, scope: !2041)
!2099 = !DISubprogram(name: "sysconf", scope: !1387, file: !1387, line: 640, type: !2100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!189, !70}
!2102 = !DISubprogram(name: "__sched_cpualloc", scope: !2051, file: !2051, line: 119, type: !2103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2049, !104}
!2105 = !DISubprogram(name: "sched_getaffinity", scope: !2008, file: !2008, line: 134, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!70, !2011, !104, !2049}
!2108 = !DISubprogram(name: "__sched_cpucount", scope: !2051, file: !2051, line: 117, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!70, !104, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2113 = !DISubprogram(name: "__sched_cpufree", scope: !2051, file: !2051, line: 120, type: !2114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{null, !2049}
!2116 = distinct !DISubprogram(name: "set_program_name", scope: !453, file: !453, line: 37, type: !1073, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DILocalVariable(name: "argv0", arg: 1, scope: !2116, file: !453, line: 37, type: !107)
!2119 = !DILocalVariable(name: "slash", scope: !2116, file: !453, line: 44, type: !107)
!2120 = !DILocalVariable(name: "base", scope: !2116, file: !453, line: 45, type: !107)
!2121 = !DILocation(line: 0, scope: !2116)
!2122 = !DILocation(line: 44, column: 23, scope: !2116)
!2123 = !DILocation(line: 45, column: 22, scope: !2116)
!2124 = !DILocation(line: 46, column: 17, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2116, file: !453, line: 46, column: 7)
!2126 = !DILocation(line: 46, column: 9, scope: !2125)
!2127 = !DILocation(line: 46, column: 25, scope: !2125)
!2128 = !DILocation(line: 46, column: 40, scope: !2125)
!2129 = !DILocalVariable(name: "__s1", arg: 1, scope: !2130, file: !1136, line: 974, type: !1271)
!2130 = distinct !DISubprogram(name: "memeq", scope: !1136, file: !1136, line: 974, type: !2131, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!148, !1271, !1271, !104}
!2133 = !{!2129, !2134, !2135}
!2134 = !DILocalVariable(name: "__s2", arg: 2, scope: !2130, file: !1136, line: 974, type: !1271)
!2135 = !DILocalVariable(name: "__n", arg: 3, scope: !2130, file: !1136, line: 974, type: !104)
!2136 = !DILocation(line: 0, scope: !2130, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 46, column: 28, scope: !2125)
!2138 = !DILocation(line: 976, column: 11, scope: !2130, inlinedAt: !2137)
!2139 = !DILocation(line: 976, column: 10, scope: !2130, inlinedAt: !2137)
!2140 = !DILocation(line: 46, column: 7, scope: !2116)
!2141 = !DILocation(line: 49, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !453, line: 49, column: 11)
!2143 = distinct !DILexicalBlock(scope: !2125, file: !453, line: 47, column: 5)
!2144 = !DILocation(line: 49, column: 36, scope: !2142)
!2145 = !DILocation(line: 49, column: 11, scope: !2143)
!2146 = !DILocation(line: 65, column: 16, scope: !2116)
!2147 = !DILocation(line: 71, column: 27, scope: !2116)
!2148 = !DILocation(line: 74, column: 33, scope: !2116)
!2149 = !DILocation(line: 76, column: 1, scope: !2116)
!2150 = distinct !DIAssignID()
!2151 = !DILocation(line: 0, scope: !462)
!2152 = distinct !DIAssignID()
!2153 = !DILocation(line: 40, column: 29, scope: !462)
!2154 = !DILocation(line: 41, column: 19, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !462, file: !463, line: 41, column: 7)
!2156 = !DILocation(line: 41, column: 7, scope: !462)
!2157 = !DILocation(line: 47, column: 3, scope: !462)
!2158 = !DILocation(line: 48, column: 3, scope: !462)
!2159 = !DILocalVariable(name: "ps", arg: 1, scope: !2160, file: !2161, line: 1135, type: !2164)
!2160 = distinct !DISubprogram(name: "mbszero", scope: !2161, file: !2161, line: 1135, type: !2162, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2165)
!2161 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!2165 = !{!2159}
!2166 = !DILocation(line: 0, scope: !2160, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 48, column: 18, scope: !462)
!2168 = !DILocalVariable(name: "__dest", arg: 1, scope: !2169, file: !2170, line: 57, type: !102)
!2169 = distinct !DISubprogram(name: "memset", scope: !2170, file: !2170, line: 57, type: !2171, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2173)
!2170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!102, !102, !70, !104}
!2173 = !{!2168, !2174, !2175}
!2174 = !DILocalVariable(name: "__ch", arg: 2, scope: !2169, file: !2170, line: 57, type: !70)
!2175 = !DILocalVariable(name: "__len", arg: 3, scope: !2169, file: !2170, line: 57, type: !104)
!2176 = !DILocation(line: 0, scope: !2169, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 1137, column: 3, scope: !2160, inlinedAt: !2167)
!2178 = !DILocation(line: 59, column: 10, scope: !2169, inlinedAt: !2177)
!2179 = !DILocation(line: 49, column: 7, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !462, file: !463, line: 49, column: 7)
!2181 = !DILocation(line: 49, column: 39, scope: !2180)
!2182 = !DILocation(line: 49, column: 44, scope: !2180)
!2183 = !DILocation(line: 54, column: 1, scope: !462)
!2184 = !DISubprogram(name: "mbrtoc32", scope: !474, file: !474, line: 57, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!104, !2187, !1113, !104, !2189}
!2187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2164)
!2190 = distinct !DISubprogram(name: "clone_quoting_options", scope: !493, file: !493, line: 113, type: !2191, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2194)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2194 = !{!2195, !2196, !2197}
!2195 = !DILocalVariable(name: "o", arg: 1, scope: !2190, file: !493, line: 113, type: !2193)
!2196 = !DILocalVariable(name: "saved_errno", scope: !2190, file: !493, line: 115, type: !70)
!2197 = !DILocalVariable(name: "p", scope: !2190, file: !493, line: 116, type: !2193)
!2198 = !DILocation(line: 0, scope: !2190)
!2199 = !DILocation(line: 115, column: 21, scope: !2190)
!2200 = !DILocation(line: 116, column: 40, scope: !2190)
!2201 = !DILocation(line: 116, column: 31, scope: !2190)
!2202 = !DILocation(line: 118, column: 9, scope: !2190)
!2203 = !DILocation(line: 119, column: 3, scope: !2190)
!2204 = distinct !DISubprogram(name: "get_quoting_style", scope: !493, file: !493, line: 124, type: !2205, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2209)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!516, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "o", arg: 1, scope: !2204, file: !493, line: 124, type: !2207)
!2211 = !DILocation(line: 0, scope: !2204)
!2212 = !DILocation(line: 126, column: 11, scope: !2204)
!2213 = !DILocation(line: 126, column: 46, scope: !2204)
!2214 = !{!2215, !1124, i64 0}
!2215 = !{!"quoting_options", !1124, i64 0, !1124, i64 4, !1062, i64 8, !1061, i64 40, !1061, i64 48}
!2216 = !DILocation(line: 126, column: 3, scope: !2204)
!2217 = distinct !DISubprogram(name: "set_quoting_style", scope: !493, file: !493, line: 132, type: !2218, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2193, !516}
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "o", arg: 1, scope: !2217, file: !493, line: 132, type: !2193)
!2222 = !DILocalVariable(name: "s", arg: 2, scope: !2217, file: !493, line: 132, type: !516)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 134, column: 4, scope: !2217)
!2225 = !DILocation(line: 134, column: 45, scope: !2217)
!2226 = !DILocation(line: 135, column: 1, scope: !2217)
!2227 = distinct !DISubprogram(name: "set_char_quoting", scope: !493, file: !493, line: 143, type: !2228, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!70, !2193, !4, !70}
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2237, !2238}
!2231 = !DILocalVariable(name: "o", arg: 1, scope: !2227, file: !493, line: 143, type: !2193)
!2232 = !DILocalVariable(name: "c", arg: 2, scope: !2227, file: !493, line: 143, type: !4)
!2233 = !DILocalVariable(name: "i", arg: 3, scope: !2227, file: !493, line: 143, type: !70)
!2234 = !DILocalVariable(name: "uc", scope: !2227, file: !493, line: 145, type: !109)
!2235 = !DILocalVariable(name: "p", scope: !2227, file: !493, line: 146, type: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!2237 = !DILocalVariable(name: "shift", scope: !2227, file: !493, line: 148, type: !70)
!2238 = !DILocalVariable(name: "r", scope: !2227, file: !493, line: 149, type: !63)
!2239 = !DILocation(line: 0, scope: !2227)
!2240 = !DILocation(line: 147, column: 6, scope: !2227)
!2241 = !DILocation(line: 147, column: 41, scope: !2227)
!2242 = !DILocation(line: 147, column: 62, scope: !2227)
!2243 = !DILocation(line: 147, column: 57, scope: !2227)
!2244 = !DILocation(line: 148, column: 15, scope: !2227)
!2245 = !DILocation(line: 149, column: 21, scope: !2227)
!2246 = !DILocation(line: 149, column: 24, scope: !2227)
!2247 = !DILocation(line: 149, column: 34, scope: !2227)
!2248 = !DILocation(line: 150, column: 19, scope: !2227)
!2249 = !DILocation(line: 150, column: 24, scope: !2227)
!2250 = !DILocation(line: 150, column: 6, scope: !2227)
!2251 = !DILocation(line: 151, column: 3, scope: !2227)
!2252 = distinct !DISubprogram(name: "set_quoting_flags", scope: !493, file: !493, line: 159, type: !2253, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2255)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!70, !2193, !70}
!2255 = !{!2256, !2257, !2258}
!2256 = !DILocalVariable(name: "o", arg: 1, scope: !2252, file: !493, line: 159, type: !2193)
!2257 = !DILocalVariable(name: "i", arg: 2, scope: !2252, file: !493, line: 159, type: !70)
!2258 = !DILocalVariable(name: "r", scope: !2252, file: !493, line: 163, type: !70)
!2259 = !DILocation(line: 0, scope: !2252)
!2260 = !DILocation(line: 161, column: 8, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2252, file: !493, line: 161, column: 7)
!2262 = !DILocation(line: 161, column: 7, scope: !2252)
!2263 = !DILocation(line: 163, column: 14, scope: !2252)
!2264 = !{!2215, !1124, i64 4}
!2265 = !DILocation(line: 164, column: 12, scope: !2252)
!2266 = !DILocation(line: 165, column: 3, scope: !2252)
!2267 = distinct !DISubprogram(name: "set_custom_quoting", scope: !493, file: !493, line: 169, type: !2268, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2270)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{null, !2193, !107, !107}
!2270 = !{!2271, !2272, !2273}
!2271 = !DILocalVariable(name: "o", arg: 1, scope: !2267, file: !493, line: 169, type: !2193)
!2272 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2267, file: !493, line: 170, type: !107)
!2273 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2267, file: !493, line: 170, type: !107)
!2274 = !DILocation(line: 0, scope: !2267)
!2275 = !DILocation(line: 172, column: 8, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2267, file: !493, line: 172, column: 7)
!2277 = !DILocation(line: 172, column: 7, scope: !2267)
!2278 = !DILocation(line: 174, column: 12, scope: !2267)
!2279 = !DILocation(line: 175, column: 8, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2267, file: !493, line: 175, column: 7)
!2281 = !DILocation(line: 175, column: 19, scope: !2280)
!2282 = !DILocation(line: 176, column: 5, scope: !2280)
!2283 = !DILocation(line: 177, column: 6, scope: !2267)
!2284 = !DILocation(line: 177, column: 17, scope: !2267)
!2285 = !{!2215, !1061, i64 40}
!2286 = !DILocation(line: 178, column: 6, scope: !2267)
!2287 = !DILocation(line: 178, column: 18, scope: !2267)
!2288 = !{!2215, !1061, i64 48}
!2289 = !DILocation(line: 179, column: 1, scope: !2267)
!2290 = !DISubprogram(name: "abort", scope: !1247, file: !1247, line: 598, type: !417, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2291 = distinct !DISubprogram(name: "quotearg_buffer", scope: !493, file: !493, line: 774, type: !2292, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!104, !101, !104, !107, !104, !2207}
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302}
!2295 = !DILocalVariable(name: "buffer", arg: 1, scope: !2291, file: !493, line: 774, type: !101)
!2296 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2291, file: !493, line: 774, type: !104)
!2297 = !DILocalVariable(name: "arg", arg: 3, scope: !2291, file: !493, line: 775, type: !107)
!2298 = !DILocalVariable(name: "argsize", arg: 4, scope: !2291, file: !493, line: 775, type: !104)
!2299 = !DILocalVariable(name: "o", arg: 5, scope: !2291, file: !493, line: 776, type: !2207)
!2300 = !DILocalVariable(name: "p", scope: !2291, file: !493, line: 778, type: !2207)
!2301 = !DILocalVariable(name: "saved_errno", scope: !2291, file: !493, line: 779, type: !70)
!2302 = !DILocalVariable(name: "r", scope: !2291, file: !493, line: 780, type: !104)
!2303 = !DILocation(line: 0, scope: !2291)
!2304 = !DILocation(line: 778, column: 37, scope: !2291)
!2305 = !DILocation(line: 779, column: 21, scope: !2291)
!2306 = !DILocation(line: 781, column: 43, scope: !2291)
!2307 = !DILocation(line: 781, column: 53, scope: !2291)
!2308 = !DILocation(line: 781, column: 63, scope: !2291)
!2309 = !DILocation(line: 782, column: 43, scope: !2291)
!2310 = !DILocation(line: 782, column: 58, scope: !2291)
!2311 = !DILocation(line: 780, column: 14, scope: !2291)
!2312 = !DILocation(line: 783, column: 9, scope: !2291)
!2313 = !DILocation(line: 784, column: 3, scope: !2291)
!2314 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !493, file: !493, line: 251, type: !2315, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2319)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!104, !101, !104, !107, !104, !516, !70, !2317, !107, !107}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2345, !2347, !2350, !2351, !2352, !2353, !2356, !2357, !2359, !2360, !2363, !2367, !2368, !2376, !2379, !2380, !2381}
!2320 = !DILocalVariable(name: "buffer", arg: 1, scope: !2314, file: !493, line: 251, type: !101)
!2321 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2314, file: !493, line: 251, type: !104)
!2322 = !DILocalVariable(name: "arg", arg: 3, scope: !2314, file: !493, line: 252, type: !107)
!2323 = !DILocalVariable(name: "argsize", arg: 4, scope: !2314, file: !493, line: 252, type: !104)
!2324 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2314, file: !493, line: 253, type: !516)
!2325 = !DILocalVariable(name: "flags", arg: 6, scope: !2314, file: !493, line: 253, type: !70)
!2326 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2314, file: !493, line: 254, type: !2317)
!2327 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2314, file: !493, line: 255, type: !107)
!2328 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2314, file: !493, line: 256, type: !107)
!2329 = !DILocalVariable(name: "unibyte_locale", scope: !2314, file: !493, line: 258, type: !148)
!2330 = !DILocalVariable(name: "len", scope: !2314, file: !493, line: 260, type: !104)
!2331 = !DILocalVariable(name: "orig_buffersize", scope: !2314, file: !493, line: 261, type: !104)
!2332 = !DILocalVariable(name: "quote_string", scope: !2314, file: !493, line: 262, type: !107)
!2333 = !DILocalVariable(name: "quote_string_len", scope: !2314, file: !493, line: 263, type: !104)
!2334 = !DILocalVariable(name: "backslash_escapes", scope: !2314, file: !493, line: 264, type: !148)
!2335 = !DILocalVariable(name: "elide_outer_quotes", scope: !2314, file: !493, line: 265, type: !148)
!2336 = !DILocalVariable(name: "encountered_single_quote", scope: !2314, file: !493, line: 266, type: !148)
!2337 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2314, file: !493, line: 267, type: !148)
!2338 = !DILabel(scope: !2314, name: "process_input", file: !493, line: 308)
!2339 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2314, file: !493, line: 309, type: !148)
!2340 = !DILocalVariable(name: "lq", scope: !2341, file: !493, line: 361, type: !107)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !493, line: 361, column: 11)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !493, line: 360, column: 13)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !493, line: 333, column: 7)
!2344 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 312, column: 5)
!2345 = !DILocalVariable(name: "i", scope: !2346, file: !493, line: 395, type: !104)
!2346 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 395, column: 3)
!2347 = !DILocalVariable(name: "is_right_quote", scope: !2348, file: !493, line: 397, type: !148)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !493, line: 396, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !493, line: 395, column: 3)
!2350 = !DILocalVariable(name: "escaping", scope: !2348, file: !493, line: 398, type: !148)
!2351 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2348, file: !493, line: 399, type: !148)
!2352 = !DILocalVariable(name: "c", scope: !2348, file: !493, line: 417, type: !109)
!2353 = !DILabel(scope: !2354, name: "c_and_shell_escape", file: !493, line: 502)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 478, column: 9)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 419, column: 9)
!2356 = !DILabel(scope: !2354, name: "c_escape", file: !493, line: 507)
!2357 = !DILocalVariable(name: "m", scope: !2358, file: !493, line: 598, type: !104)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 596, column: 11)
!2359 = !DILocalVariable(name: "printable", scope: !2358, file: !493, line: 600, type: !148)
!2360 = !DILocalVariable(name: "mbs", scope: !2361, file: !493, line: 609, type: !577)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !493, line: 608, column: 15)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !493, line: 602, column: 17)
!2363 = !DILocalVariable(name: "w", scope: !2364, file: !493, line: 618, type: !473)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !493, line: 617, column: 19)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !493, line: 616, column: 17)
!2366 = distinct !DILexicalBlock(scope: !2361, file: !493, line: 616, column: 17)
!2367 = !DILocalVariable(name: "bytes", scope: !2364, file: !493, line: 619, type: !104)
!2368 = !DILocalVariable(name: "j", scope: !2369, file: !493, line: 648, type: !104)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !493, line: 648, column: 29)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !493, line: 647, column: 27)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !493, line: 645, column: 29)
!2372 = distinct !DILexicalBlock(scope: !2373, file: !493, line: 636, column: 23)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !493, line: 628, column: 30)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !493, line: 623, column: 30)
!2375 = distinct !DILexicalBlock(scope: !2364, file: !493, line: 621, column: 25)
!2376 = !DILocalVariable(name: "ilim", scope: !2377, file: !493, line: 674, type: !104)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !493, line: 671, column: 15)
!2378 = distinct !DILexicalBlock(scope: !2358, file: !493, line: 670, column: 17)
!2379 = !DILabel(scope: !2348, name: "store_escape", file: !493, line: 709)
!2380 = !DILabel(scope: !2348, name: "store_c", file: !493, line: 712)
!2381 = !DILabel(scope: !2314, name: "force_outer_quoting_style", file: !493, line: 753)
!2382 = distinct !DIAssignID()
!2383 = distinct !DIAssignID()
!2384 = distinct !DIAssignID()
!2385 = distinct !DIAssignID()
!2386 = distinct !DIAssignID()
!2387 = !DILocation(line: 0, scope: !2361)
!2388 = distinct !DIAssignID()
!2389 = !DILocation(line: 0, scope: !2364)
!2390 = !DILocation(line: 0, scope: !2314)
!2391 = !DILocation(line: 258, column: 25, scope: !2314)
!2392 = !DILocation(line: 258, column: 36, scope: !2314)
!2393 = !DILocation(line: 265, column: 8, scope: !2314)
!2394 = !DILocation(line: 267, column: 3, scope: !2314)
!2395 = !DILocation(line: 261, column: 10, scope: !2314)
!2396 = !DILocation(line: 262, column: 15, scope: !2314)
!2397 = !DILocation(line: 263, column: 10, scope: !2314)
!2398 = !DILocation(line: 264, column: 8, scope: !2314)
!2399 = !DILocation(line: 266, column: 8, scope: !2314)
!2400 = !DILocation(line: 267, column: 8, scope: !2314)
!2401 = !DILocation(line: 308, column: 2, scope: !2314)
!2402 = !DILocation(line: 311, column: 3, scope: !2314)
!2403 = !DILocation(line: 318, column: 11, scope: !2344)
!2404 = !DILocation(line: 318, column: 12, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2344, file: !493, line: 318, column: 11)
!2406 = !DILocation(line: 319, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !493, line: 319, column: 9)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !493, line: 319, column: 9)
!2409 = !DILocation(line: 319, column: 9, scope: !2408)
!2410 = !DILocation(line: 0, scope: !568, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 357, column: 26, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !493, line: 335, column: 11)
!2413 = distinct !DILexicalBlock(scope: !2343, file: !493, line: 334, column: 13)
!2414 = !DILocation(line: 199, column: 29, scope: !568, inlinedAt: !2411)
!2415 = !DILocation(line: 201, column: 19, scope: !2416, inlinedAt: !2411)
!2416 = distinct !DILexicalBlock(scope: !568, file: !493, line: 201, column: 7)
!2417 = !DILocation(line: 201, column: 7, scope: !568, inlinedAt: !2411)
!2418 = !DILocation(line: 229, column: 3, scope: !568, inlinedAt: !2411)
!2419 = !DILocation(line: 230, column: 3, scope: !568, inlinedAt: !2411)
!2420 = !DILocalVariable(name: "ps", arg: 1, scope: !2421, file: !2161, line: 1135, type: !2424)
!2421 = distinct !DISubprogram(name: "mbszero", scope: !2161, file: !2161, line: 1135, type: !2422, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2425)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{null, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!2425 = !{!2420}
!2426 = !DILocation(line: 0, scope: !2421, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 230, column: 18, scope: !568, inlinedAt: !2411)
!2428 = !DILocalVariable(name: "__dest", arg: 1, scope: !2429, file: !2170, line: 57, type: !102)
!2429 = distinct !DISubprogram(name: "memset", scope: !2170, file: !2170, line: 57, type: !2171, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2430)
!2430 = !{!2428, !2431, !2432}
!2431 = !DILocalVariable(name: "__ch", arg: 2, scope: !2429, file: !2170, line: 57, type: !70)
!2432 = !DILocalVariable(name: "__len", arg: 3, scope: !2429, file: !2170, line: 57, type: !104)
!2433 = !DILocation(line: 0, scope: !2429, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1137, column: 3, scope: !2421, inlinedAt: !2427)
!2435 = !DILocation(line: 59, column: 10, scope: !2429, inlinedAt: !2434)
!2436 = !DILocation(line: 231, column: 7, scope: !2437, inlinedAt: !2411)
!2437 = distinct !DILexicalBlock(scope: !568, file: !493, line: 231, column: 7)
!2438 = !DILocation(line: 231, column: 40, scope: !2437, inlinedAt: !2411)
!2439 = !DILocation(line: 231, column: 45, scope: !2437, inlinedAt: !2411)
!2440 = !DILocation(line: 235, column: 1, scope: !568, inlinedAt: !2411)
!2441 = !DILocation(line: 0, scope: !568, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 358, column: 27, scope: !2412)
!2443 = !DILocation(line: 199, column: 29, scope: !568, inlinedAt: !2442)
!2444 = !DILocation(line: 201, column: 19, scope: !2416, inlinedAt: !2442)
!2445 = !DILocation(line: 201, column: 7, scope: !568, inlinedAt: !2442)
!2446 = !DILocation(line: 229, column: 3, scope: !568, inlinedAt: !2442)
!2447 = !DILocation(line: 230, column: 3, scope: !568, inlinedAt: !2442)
!2448 = !DILocation(line: 0, scope: !2421, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 230, column: 18, scope: !568, inlinedAt: !2442)
!2450 = !DILocation(line: 0, scope: !2429, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 1137, column: 3, scope: !2421, inlinedAt: !2449)
!2452 = !DILocation(line: 59, column: 10, scope: !2429, inlinedAt: !2451)
!2453 = !DILocation(line: 231, column: 7, scope: !2437, inlinedAt: !2442)
!2454 = !DILocation(line: 231, column: 40, scope: !2437, inlinedAt: !2442)
!2455 = !DILocation(line: 231, column: 45, scope: !2437, inlinedAt: !2442)
!2456 = !DILocation(line: 235, column: 1, scope: !568, inlinedAt: !2442)
!2457 = !DILocation(line: 360, column: 14, scope: !2342)
!2458 = !DILocation(line: 360, column: 13, scope: !2343)
!2459 = !DILocation(line: 0, scope: !2341)
!2460 = !DILocation(line: 361, column: 45, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2341, file: !493, line: 361, column: 11)
!2462 = !DILocation(line: 361, column: 11, scope: !2341)
!2463 = !DILocation(line: 362, column: 13, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !493, line: 362, column: 13)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !493, line: 362, column: 13)
!2466 = !DILocation(line: 362, column: 13, scope: !2465)
!2467 = !DILocation(line: 361, column: 52, scope: !2461)
!2468 = distinct !{!2468, !2462, !2469, !1170}
!2469 = !DILocation(line: 362, column: 13, scope: !2341)
!2470 = !DILocation(line: 260, column: 10, scope: !2314)
!2471 = !DILocation(line: 365, column: 28, scope: !2343)
!2472 = !DILocation(line: 367, column: 7, scope: !2344)
!2473 = !DILocation(line: 370, column: 7, scope: !2344)
!2474 = !DILocation(line: 373, column: 7, scope: !2344)
!2475 = !DILocation(line: 376, column: 12, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2344, file: !493, line: 376, column: 11)
!2477 = !DILocation(line: 376, column: 11, scope: !2344)
!2478 = !DILocation(line: 381, column: 12, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2344, file: !493, line: 381, column: 11)
!2480 = !DILocation(line: 381, column: 11, scope: !2344)
!2481 = !DILocation(line: 382, column: 9, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !493, line: 382, column: 9)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !493, line: 382, column: 9)
!2484 = !DILocation(line: 382, column: 9, scope: !2483)
!2485 = !DILocation(line: 389, column: 7, scope: !2344)
!2486 = !DILocation(line: 392, column: 7, scope: !2344)
!2487 = !DILocation(line: 0, scope: !2346)
!2488 = !DILocation(line: 395, column: 8, scope: !2346)
!2489 = !DILocation(line: 309, column: 8, scope: !2314)
!2490 = !DILocation(line: 395, scope: !2346)
!2491 = !DILocation(line: 395, column: 34, scope: !2349)
!2492 = !DILocation(line: 395, column: 26, scope: !2349)
!2493 = !DILocation(line: 395, column: 48, scope: !2349)
!2494 = !DILocation(line: 395, column: 55, scope: !2349)
!2495 = !DILocation(line: 395, column: 3, scope: !2346)
!2496 = !DILocation(line: 395, column: 67, scope: !2349)
!2497 = !DILocation(line: 0, scope: !2348)
!2498 = !DILocation(line: 402, column: 11, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 401, column: 11)
!2500 = !DILocation(line: 404, column: 17, scope: !2499)
!2501 = !DILocation(line: 405, column: 39, scope: !2499)
!2502 = !DILocation(line: 409, column: 32, scope: !2499)
!2503 = !DILocation(line: 405, column: 19, scope: !2499)
!2504 = !DILocation(line: 405, column: 15, scope: !2499)
!2505 = !DILocation(line: 410, column: 11, scope: !2499)
!2506 = !DILocation(line: 410, column: 25, scope: !2499)
!2507 = !DILocalVariable(name: "__s1", arg: 1, scope: !2508, file: !1136, line: 974, type: !1271)
!2508 = distinct !DISubprogram(name: "memeq", scope: !1136, file: !1136, line: 974, type: !2131, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2509)
!2509 = !{!2507, !2510, !2511}
!2510 = !DILocalVariable(name: "__s2", arg: 2, scope: !2508, file: !1136, line: 974, type: !1271)
!2511 = !DILocalVariable(name: "__n", arg: 3, scope: !2508, file: !1136, line: 974, type: !104)
!2512 = !DILocation(line: 0, scope: !2508, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 410, column: 14, scope: !2499)
!2514 = !DILocation(line: 976, column: 11, scope: !2508, inlinedAt: !2513)
!2515 = !DILocation(line: 976, column: 10, scope: !2508, inlinedAt: !2513)
!2516 = !DILocation(line: 401, column: 11, scope: !2348)
!2517 = !DILocation(line: 417, column: 25, scope: !2348)
!2518 = !DILocation(line: 418, column: 7, scope: !2348)
!2519 = !DILocation(line: 421, column: 15, scope: !2355)
!2520 = !DILocation(line: 423, column: 15, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !493, line: 423, column: 15)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !493, line: 422, column: 13)
!2523 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 421, column: 15)
!2524 = !DILocation(line: 423, column: 15, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !493, line: 423, column: 15)
!2526 = !DILocation(line: 423, column: 15, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !493, line: 423, column: 15)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !493, line: 423, column: 15)
!2529 = distinct !DILexicalBlock(scope: !2525, file: !493, line: 423, column: 15)
!2530 = !DILocation(line: 423, column: 15, scope: !2528)
!2531 = !DILocation(line: 423, column: 15, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !493, line: 423, column: 15)
!2533 = distinct !DILexicalBlock(scope: !2529, file: !493, line: 423, column: 15)
!2534 = !DILocation(line: 423, column: 15, scope: !2533)
!2535 = !DILocation(line: 423, column: 15, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !493, line: 423, column: 15)
!2537 = distinct !DILexicalBlock(scope: !2529, file: !493, line: 423, column: 15)
!2538 = !DILocation(line: 423, column: 15, scope: !2537)
!2539 = !DILocation(line: 423, column: 15, scope: !2529)
!2540 = !DILocation(line: 423, column: 15, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !493, line: 423, column: 15)
!2542 = distinct !DILexicalBlock(scope: !2521, file: !493, line: 423, column: 15)
!2543 = !DILocation(line: 423, column: 15, scope: !2542)
!2544 = !DILocation(line: 431, column: 19, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2522, file: !493, line: 430, column: 19)
!2546 = !DILocation(line: 431, column: 24, scope: !2545)
!2547 = !DILocation(line: 431, column: 28, scope: !2545)
!2548 = !DILocation(line: 431, column: 38, scope: !2545)
!2549 = !DILocation(line: 431, column: 48, scope: !2545)
!2550 = !DILocation(line: 431, column: 59, scope: !2545)
!2551 = !DILocation(line: 433, column: 19, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !493, line: 433, column: 19)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !493, line: 433, column: 19)
!2554 = distinct !DILexicalBlock(scope: !2545, file: !493, line: 432, column: 17)
!2555 = !DILocation(line: 433, column: 19, scope: !2553)
!2556 = !DILocation(line: 434, column: 19, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !493, line: 434, column: 19)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !493, line: 434, column: 19)
!2559 = !DILocation(line: 434, column: 19, scope: !2558)
!2560 = !DILocation(line: 435, column: 17, scope: !2554)
!2561 = !DILocation(line: 442, column: 20, scope: !2523)
!2562 = !DILocation(line: 447, column: 11, scope: !2355)
!2563 = !DILocation(line: 450, column: 19, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 448, column: 13)
!2565 = !DILocation(line: 456, column: 19, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2564, file: !493, line: 455, column: 19)
!2567 = !DILocation(line: 456, column: 24, scope: !2566)
!2568 = !DILocation(line: 456, column: 28, scope: !2566)
!2569 = !DILocation(line: 456, column: 38, scope: !2566)
!2570 = !DILocation(line: 456, column: 41, scope: !2566)
!2571 = !DILocation(line: 456, column: 52, scope: !2566)
!2572 = !DILocation(line: 455, column: 19, scope: !2564)
!2573 = !DILocation(line: 457, column: 25, scope: !2566)
!2574 = !DILocation(line: 457, column: 17, scope: !2566)
!2575 = !DILocation(line: 464, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2566, file: !493, line: 458, column: 19)
!2577 = !DILocation(line: 468, column: 21, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !493, line: 468, column: 21)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !493, line: 468, column: 21)
!2580 = !DILocation(line: 468, column: 21, scope: !2579)
!2581 = !DILocation(line: 469, column: 21, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !493, line: 469, column: 21)
!2583 = distinct !DILexicalBlock(scope: !2576, file: !493, line: 469, column: 21)
!2584 = !DILocation(line: 469, column: 21, scope: !2583)
!2585 = !DILocation(line: 470, column: 21, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !493, line: 470, column: 21)
!2587 = distinct !DILexicalBlock(scope: !2576, file: !493, line: 470, column: 21)
!2588 = !DILocation(line: 470, column: 21, scope: !2587)
!2589 = !DILocation(line: 471, column: 21, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !493, line: 471, column: 21)
!2591 = distinct !DILexicalBlock(scope: !2576, file: !493, line: 471, column: 21)
!2592 = !DILocation(line: 471, column: 21, scope: !2591)
!2593 = !DILocation(line: 472, column: 21, scope: !2576)
!2594 = !DILocation(line: 482, column: 33, scope: !2354)
!2595 = !DILocation(line: 483, column: 33, scope: !2354)
!2596 = !DILocation(line: 485, column: 33, scope: !2354)
!2597 = !DILocation(line: 486, column: 33, scope: !2354)
!2598 = !DILocation(line: 487, column: 33, scope: !2354)
!2599 = !DILocation(line: 490, column: 17, scope: !2354)
!2600 = !DILocation(line: 492, column: 21, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !493, line: 491, column: 15)
!2602 = distinct !DILexicalBlock(scope: !2354, file: !493, line: 490, column: 17)
!2603 = !DILocation(line: 499, column: 35, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2354, file: !493, line: 499, column: 17)
!2605 = !DILocation(line: 499, column: 57, scope: !2604)
!2606 = !DILocation(line: 0, scope: !2354)
!2607 = !DILocation(line: 502, column: 11, scope: !2354)
!2608 = !DILocation(line: 504, column: 17, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2354, file: !493, line: 503, column: 17)
!2610 = !DILocation(line: 507, column: 11, scope: !2354)
!2611 = !DILocation(line: 508, column: 17, scope: !2354)
!2612 = !DILocation(line: 517, column: 15, scope: !2355)
!2613 = !DILocation(line: 517, column: 40, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 517, column: 15)
!2615 = !DILocation(line: 517, column: 47, scope: !2614)
!2616 = !DILocation(line: 517, column: 18, scope: !2614)
!2617 = !DILocation(line: 521, column: 17, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 521, column: 15)
!2619 = !DILocation(line: 521, column: 15, scope: !2355)
!2620 = !DILocation(line: 525, column: 11, scope: !2355)
!2621 = !DILocation(line: 537, column: 15, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 536, column: 15)
!2623 = !DILocation(line: 544, column: 15, scope: !2355)
!2624 = !DILocation(line: 546, column: 19, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !493, line: 545, column: 13)
!2626 = distinct !DILexicalBlock(scope: !2355, file: !493, line: 544, column: 15)
!2627 = !DILocation(line: 549, column: 19, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !493, line: 549, column: 19)
!2629 = !DILocation(line: 549, column: 30, scope: !2628)
!2630 = !DILocation(line: 558, column: 15, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !493, line: 558, column: 15)
!2632 = distinct !DILexicalBlock(scope: !2625, file: !493, line: 558, column: 15)
!2633 = !DILocation(line: 558, column: 15, scope: !2632)
!2634 = !DILocation(line: 559, column: 15, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !493, line: 559, column: 15)
!2636 = distinct !DILexicalBlock(scope: !2625, file: !493, line: 559, column: 15)
!2637 = !DILocation(line: 559, column: 15, scope: !2636)
!2638 = !DILocation(line: 560, column: 15, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !493, line: 560, column: 15)
!2640 = distinct !DILexicalBlock(scope: !2625, file: !493, line: 560, column: 15)
!2641 = !DILocation(line: 560, column: 15, scope: !2640)
!2642 = !DILocation(line: 562, column: 13, scope: !2625)
!2643 = !DILocation(line: 602, column: 17, scope: !2358)
!2644 = !DILocation(line: 0, scope: !2358)
!2645 = !DILocation(line: 605, column: 29, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2362, file: !493, line: 603, column: 15)
!2647 = !DILocation(line: 605, column: 27, scope: !2646)
!2648 = !DILocation(line: 606, column: 15, scope: !2646)
!2649 = !DILocation(line: 609, column: 17, scope: !2361)
!2650 = !DILocation(line: 0, scope: !2421, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 609, column: 32, scope: !2361)
!2652 = !DILocation(line: 0, scope: !2429, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1137, column: 3, scope: !2421, inlinedAt: !2651)
!2654 = !DILocation(line: 59, column: 10, scope: !2429, inlinedAt: !2653)
!2655 = !DILocation(line: 613, column: 29, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2361, file: !493, line: 613, column: 21)
!2657 = !DILocation(line: 613, column: 21, scope: !2361)
!2658 = !DILocation(line: 614, column: 29, scope: !2656)
!2659 = !DILocation(line: 614, column: 19, scope: !2656)
!2660 = !DILocation(line: 618, column: 21, scope: !2364)
!2661 = !DILocation(line: 620, column: 54, scope: !2364)
!2662 = !DILocation(line: 619, column: 36, scope: !2364)
!2663 = !DILocation(line: 621, column: 25, scope: !2364)
!2664 = !DILocation(line: 631, column: 38, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2373, file: !493, line: 629, column: 23)
!2666 = !DILocation(line: 631, column: 48, scope: !2665)
!2667 = !DILocation(line: 626, column: 25, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2374, file: !493, line: 624, column: 23)
!2669 = !DILocation(line: 631, column: 51, scope: !2665)
!2670 = !DILocation(line: 631, column: 25, scope: !2665)
!2671 = !DILocation(line: 632, column: 28, scope: !2665)
!2672 = !DILocation(line: 631, column: 34, scope: !2665)
!2673 = distinct !{!2673, !2670, !2671, !1170}
!2674 = !DILocation(line: 0, scope: !2369)
!2675 = !DILocation(line: 646, column: 29, scope: !2371)
!2676 = !DILocation(line: 649, column: 39, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2369, file: !493, line: 648, column: 29)
!2678 = !DILocation(line: 649, column: 31, scope: !2677)
!2679 = !DILocation(line: 648, column: 60, scope: !2677)
!2680 = !DILocation(line: 648, column: 50, scope: !2677)
!2681 = !DILocation(line: 648, column: 29, scope: !2369)
!2682 = distinct !{!2682, !2681, !2683, !1170}
!2683 = !DILocation(line: 654, column: 33, scope: !2369)
!2684 = !DILocation(line: 657, column: 43, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2372, file: !493, line: 657, column: 29)
!2686 = !DILocalVariable(name: "wc", arg: 1, scope: !2687, file: !2688, line: 865, type: !2691)
!2687 = distinct !DISubprogram(name: "c32isprint", scope: !2688, file: !2688, line: 865, type: !2689, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2693)
!2688 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!70, !2691}
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2692, line: 20, baseType: !63)
!2692 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2693 = !{!2686}
!2694 = !DILocation(line: 0, scope: !2687, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 657, column: 31, scope: !2685)
!2696 = !DILocation(line: 871, column: 10, scope: !2687, inlinedAt: !2695)
!2697 = !DILocation(line: 657, column: 31, scope: !2685)
!2698 = !DILocation(line: 664, column: 23, scope: !2364)
!2699 = !DILocation(line: 665, column: 19, scope: !2365)
!2700 = !DILocation(line: 666, column: 15, scope: !2362)
!2701 = !DILocation(line: 0, scope: !2362)
!2702 = !DILocation(line: 670, column: 19, scope: !2378)
!2703 = !DILocation(line: 670, column: 23, scope: !2378)
!2704 = !DILocation(line: 674, column: 33, scope: !2377)
!2705 = !DILocation(line: 0, scope: !2377)
!2706 = !DILocation(line: 676, column: 17, scope: !2377)
!2707 = !DILocation(line: 398, column: 12, scope: !2348)
!2708 = !DILocation(line: 678, column: 43, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !493, line: 678, column: 25)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !493, line: 677, column: 19)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !493, line: 676, column: 17)
!2712 = distinct !DILexicalBlock(scope: !2377, file: !493, line: 676, column: 17)
!2713 = !DILocation(line: 680, column: 25, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !493, line: 680, column: 25)
!2715 = distinct !DILexicalBlock(scope: !2709, file: !493, line: 679, column: 23)
!2716 = !DILocation(line: 680, column: 25, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2714, file: !493, line: 680, column: 25)
!2718 = !DILocation(line: 680, column: 25, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !493, line: 680, column: 25)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !493, line: 680, column: 25)
!2721 = distinct !DILexicalBlock(scope: !2717, file: !493, line: 680, column: 25)
!2722 = !DILocation(line: 680, column: 25, scope: !2720)
!2723 = !DILocation(line: 680, column: 25, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !493, line: 680, column: 25)
!2725 = distinct !DILexicalBlock(scope: !2721, file: !493, line: 680, column: 25)
!2726 = !DILocation(line: 680, column: 25, scope: !2725)
!2727 = !DILocation(line: 680, column: 25, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !493, line: 680, column: 25)
!2729 = distinct !DILexicalBlock(scope: !2721, file: !493, line: 680, column: 25)
!2730 = !DILocation(line: 680, column: 25, scope: !2729)
!2731 = !DILocation(line: 680, column: 25, scope: !2721)
!2732 = !DILocation(line: 680, column: 25, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !493, line: 680, column: 25)
!2734 = distinct !DILexicalBlock(scope: !2714, file: !493, line: 680, column: 25)
!2735 = !DILocation(line: 680, column: 25, scope: !2734)
!2736 = !DILocation(line: 681, column: 25, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !493, line: 681, column: 25)
!2738 = distinct !DILexicalBlock(scope: !2715, file: !493, line: 681, column: 25)
!2739 = !DILocation(line: 681, column: 25, scope: !2738)
!2740 = !DILocation(line: 682, column: 25, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !493, line: 682, column: 25)
!2742 = distinct !DILexicalBlock(scope: !2715, file: !493, line: 682, column: 25)
!2743 = !DILocation(line: 682, column: 25, scope: !2742)
!2744 = !DILocation(line: 683, column: 38, scope: !2715)
!2745 = !DILocation(line: 683, column: 33, scope: !2715)
!2746 = !DILocation(line: 684, column: 23, scope: !2715)
!2747 = !DILocation(line: 685, column: 30, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2709, file: !493, line: 685, column: 30)
!2749 = !DILocation(line: 685, column: 30, scope: !2709)
!2750 = !DILocation(line: 687, column: 25, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2752, file: !493, line: 687, column: 25)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !493, line: 687, column: 25)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !493, line: 686, column: 23)
!2754 = !DILocation(line: 687, column: 25, scope: !2752)
!2755 = !DILocation(line: 689, column: 23, scope: !2753)
!2756 = !DILocation(line: 690, column: 35, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2710, file: !493, line: 690, column: 25)
!2758 = !DILocation(line: 690, column: 30, scope: !2757)
!2759 = !DILocation(line: 690, column: 25, scope: !2710)
!2760 = !DILocation(line: 692, column: 21, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !493, line: 692, column: 21)
!2762 = distinct !DILexicalBlock(scope: !2710, file: !493, line: 692, column: 21)
!2763 = !DILocation(line: 692, column: 21, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !493, line: 692, column: 21)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !493, line: 692, column: 21)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !493, line: 692, column: 21)
!2767 = !DILocation(line: 692, column: 21, scope: !2765)
!2768 = !DILocation(line: 692, column: 21, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !493, line: 692, column: 21)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !493, line: 692, column: 21)
!2771 = !DILocation(line: 692, column: 21, scope: !2770)
!2772 = !DILocation(line: 692, column: 21, scope: !2766)
!2773 = !DILocation(line: 0, scope: !2710)
!2774 = !DILocation(line: 693, column: 21, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !493, line: 693, column: 21)
!2776 = distinct !DILexicalBlock(scope: !2710, file: !493, line: 693, column: 21)
!2777 = !DILocation(line: 693, column: 21, scope: !2776)
!2778 = !DILocation(line: 694, column: 25, scope: !2710)
!2779 = !DILocation(line: 676, column: 17, scope: !2711)
!2780 = distinct !{!2780, !2781, !2782}
!2781 = !DILocation(line: 676, column: 17, scope: !2712)
!2782 = !DILocation(line: 695, column: 19, scope: !2712)
!2783 = !DILocation(line: 409, column: 30, scope: !2499)
!2784 = !DILocation(line: 702, column: 34, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 702, column: 11)
!2786 = !DILocation(line: 704, column: 14, scope: !2785)
!2787 = !DILocation(line: 705, column: 14, scope: !2785)
!2788 = !DILocation(line: 705, column: 35, scope: !2785)
!2789 = !DILocation(line: 705, column: 17, scope: !2785)
!2790 = !DILocation(line: 705, column: 47, scope: !2785)
!2791 = !DILocation(line: 705, column: 65, scope: !2785)
!2792 = !DILocation(line: 706, column: 11, scope: !2785)
!2793 = !DILocation(line: 702, column: 11, scope: !2348)
!2794 = !DILocation(line: 395, column: 15, scope: !2346)
!2795 = !DILocation(line: 709, column: 5, scope: !2348)
!2796 = !DILocation(line: 710, column: 7, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 710, column: 7)
!2798 = !DILocation(line: 710, column: 7, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2797, file: !493, line: 710, column: 7)
!2800 = !DILocation(line: 710, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !493, line: 710, column: 7)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !493, line: 710, column: 7)
!2803 = distinct !DILexicalBlock(scope: !2799, file: !493, line: 710, column: 7)
!2804 = !DILocation(line: 710, column: 7, scope: !2802)
!2805 = !DILocation(line: 710, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !493, line: 710, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2803, file: !493, line: 710, column: 7)
!2808 = !DILocation(line: 710, column: 7, scope: !2807)
!2809 = !DILocation(line: 710, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !493, line: 710, column: 7)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !493, line: 710, column: 7)
!2812 = !DILocation(line: 710, column: 7, scope: !2811)
!2813 = !DILocation(line: 710, column: 7, scope: !2803)
!2814 = !DILocation(line: 710, column: 7, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !493, line: 710, column: 7)
!2816 = distinct !DILexicalBlock(scope: !2797, file: !493, line: 710, column: 7)
!2817 = !DILocation(line: 710, column: 7, scope: !2816)
!2818 = !DILocation(line: 712, column: 5, scope: !2348)
!2819 = !DILocation(line: 713, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !493, line: 713, column: 7)
!2821 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 713, column: 7)
!2822 = !DILocation(line: 417, column: 21, scope: !2348)
!2823 = !DILocation(line: 713, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !493, line: 713, column: 7)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !493, line: 713, column: 7)
!2826 = distinct !DILexicalBlock(scope: !2820, file: !493, line: 713, column: 7)
!2827 = !DILocation(line: 713, column: 7, scope: !2825)
!2828 = !DILocation(line: 713, column: 7, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !493, line: 713, column: 7)
!2830 = distinct !DILexicalBlock(scope: !2826, file: !493, line: 713, column: 7)
!2831 = !DILocation(line: 713, column: 7, scope: !2830)
!2832 = !DILocation(line: 713, column: 7, scope: !2826)
!2833 = !DILocation(line: 714, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !493, line: 714, column: 7)
!2835 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 714, column: 7)
!2836 = !DILocation(line: 714, column: 7, scope: !2835)
!2837 = !DILocation(line: 716, column: 13, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2348, file: !493, line: 716, column: 11)
!2839 = !DILocation(line: 716, column: 11, scope: !2348)
!2840 = !DILocation(line: 718, column: 5, scope: !2349)
!2841 = !DILocation(line: 395, column: 82, scope: !2349)
!2842 = !DILocation(line: 395, column: 3, scope: !2349)
!2843 = distinct !{!2843, !2495, !2844, !1170}
!2844 = !DILocation(line: 718, column: 5, scope: !2346)
!2845 = !DILocation(line: 720, column: 11, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 720, column: 7)
!2847 = !DILocation(line: 720, column: 16, scope: !2846)
!2848 = !DILocation(line: 728, column: 51, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 728, column: 7)
!2850 = !DILocation(line: 731, column: 11, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !493, line: 731, column: 11)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !493, line: 730, column: 5)
!2853 = !DILocation(line: 731, column: 11, scope: !2852)
!2854 = !DILocation(line: 732, column: 16, scope: !2851)
!2855 = !DILocation(line: 732, column: 9, scope: !2851)
!2856 = !DILocation(line: 736, column: 18, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !493, line: 736, column: 16)
!2858 = !DILocation(line: 736, column: 29, scope: !2857)
!2859 = !DILocation(line: 745, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 745, column: 7)
!2861 = !DILocation(line: 745, column: 20, scope: !2860)
!2862 = !DILocation(line: 746, column: 12, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !493, line: 746, column: 5)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !493, line: 746, column: 5)
!2865 = !DILocation(line: 746, column: 5, scope: !2864)
!2866 = !DILocation(line: 747, column: 7, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !493, line: 747, column: 7)
!2868 = distinct !DILexicalBlock(scope: !2863, file: !493, line: 747, column: 7)
!2869 = !DILocation(line: 747, column: 7, scope: !2868)
!2870 = !DILocation(line: 746, column: 39, scope: !2863)
!2871 = distinct !{!2871, !2865, !2872, !1170}
!2872 = !DILocation(line: 747, column: 7, scope: !2864)
!2873 = !DILocation(line: 749, column: 11, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 749, column: 7)
!2875 = !DILocation(line: 749, column: 7, scope: !2314)
!2876 = !DILocation(line: 750, column: 5, scope: !2874)
!2877 = !DILocation(line: 750, column: 17, scope: !2874)
!2878 = !DILocation(line: 753, column: 2, scope: !2314)
!2879 = !DILocation(line: 756, column: 51, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2314, file: !493, line: 756, column: 7)
!2881 = !DILocation(line: 756, column: 21, scope: !2880)
!2882 = !DILocation(line: 760, column: 42, scope: !2314)
!2883 = !DILocation(line: 758, column: 10, scope: !2314)
!2884 = !DILocation(line: 758, column: 3, scope: !2314)
!2885 = !DILocation(line: 762, column: 1, scope: !2314)
!2886 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1247, file: !1247, line: 98, type: !2887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!104}
!2889 = !DISubprogram(name: "strlen", scope: !1243, file: !1243, line: 407, type: !1644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2890 = !DISubprogram(name: "iswprint", scope: !2891, file: !2891, line: 120, type: !2689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2892 = distinct !DISubprogram(name: "quotearg_alloc", scope: !493, file: !493, line: 788, type: !2893, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!101, !107, !104, !2207}
!2895 = !{!2896, !2897, !2898}
!2896 = !DILocalVariable(name: "arg", arg: 1, scope: !2892, file: !493, line: 788, type: !107)
!2897 = !DILocalVariable(name: "argsize", arg: 2, scope: !2892, file: !493, line: 788, type: !104)
!2898 = !DILocalVariable(name: "o", arg: 3, scope: !2892, file: !493, line: 789, type: !2207)
!2899 = !DILocation(line: 0, scope: !2892)
!2900 = !DILocalVariable(name: "arg", arg: 1, scope: !2901, file: !493, line: 801, type: !107)
!2901 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !493, file: !493, line: 801, type: !2902, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2904)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!101, !107, !104, !968, !2207}
!2904 = !{!2900, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912}
!2905 = !DILocalVariable(name: "argsize", arg: 2, scope: !2901, file: !493, line: 801, type: !104)
!2906 = !DILocalVariable(name: "size", arg: 3, scope: !2901, file: !493, line: 801, type: !968)
!2907 = !DILocalVariable(name: "o", arg: 4, scope: !2901, file: !493, line: 802, type: !2207)
!2908 = !DILocalVariable(name: "p", scope: !2901, file: !493, line: 804, type: !2207)
!2909 = !DILocalVariable(name: "saved_errno", scope: !2901, file: !493, line: 805, type: !70)
!2910 = !DILocalVariable(name: "flags", scope: !2901, file: !493, line: 807, type: !70)
!2911 = !DILocalVariable(name: "bufsize", scope: !2901, file: !493, line: 808, type: !104)
!2912 = !DILocalVariable(name: "buf", scope: !2901, file: !493, line: 812, type: !101)
!2913 = !DILocation(line: 0, scope: !2901, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 791, column: 10, scope: !2892)
!2915 = !DILocation(line: 804, column: 37, scope: !2901, inlinedAt: !2914)
!2916 = !DILocation(line: 805, column: 21, scope: !2901, inlinedAt: !2914)
!2917 = !DILocation(line: 807, column: 18, scope: !2901, inlinedAt: !2914)
!2918 = !DILocation(line: 807, column: 24, scope: !2901, inlinedAt: !2914)
!2919 = !DILocation(line: 808, column: 72, scope: !2901, inlinedAt: !2914)
!2920 = !DILocation(line: 809, column: 56, scope: !2901, inlinedAt: !2914)
!2921 = !DILocation(line: 810, column: 49, scope: !2901, inlinedAt: !2914)
!2922 = !DILocation(line: 811, column: 49, scope: !2901, inlinedAt: !2914)
!2923 = !DILocation(line: 808, column: 20, scope: !2901, inlinedAt: !2914)
!2924 = !DILocation(line: 811, column: 62, scope: !2901, inlinedAt: !2914)
!2925 = !DILocation(line: 812, column: 15, scope: !2901, inlinedAt: !2914)
!2926 = !DILocation(line: 813, column: 60, scope: !2901, inlinedAt: !2914)
!2927 = !DILocation(line: 815, column: 32, scope: !2901, inlinedAt: !2914)
!2928 = !DILocation(line: 815, column: 47, scope: !2901, inlinedAt: !2914)
!2929 = !DILocation(line: 813, column: 3, scope: !2901, inlinedAt: !2914)
!2930 = !DILocation(line: 816, column: 9, scope: !2901, inlinedAt: !2914)
!2931 = !DILocation(line: 791, column: 3, scope: !2892)
!2932 = !DILocation(line: 0, scope: !2901)
!2933 = !DILocation(line: 804, column: 37, scope: !2901)
!2934 = !DILocation(line: 805, column: 21, scope: !2901)
!2935 = !DILocation(line: 807, column: 18, scope: !2901)
!2936 = !DILocation(line: 807, column: 27, scope: !2901)
!2937 = !DILocation(line: 807, column: 24, scope: !2901)
!2938 = !DILocation(line: 808, column: 72, scope: !2901)
!2939 = !DILocation(line: 809, column: 56, scope: !2901)
!2940 = !DILocation(line: 810, column: 49, scope: !2901)
!2941 = !DILocation(line: 811, column: 49, scope: !2901)
!2942 = !DILocation(line: 808, column: 20, scope: !2901)
!2943 = !DILocation(line: 811, column: 62, scope: !2901)
!2944 = !DILocation(line: 812, column: 15, scope: !2901)
!2945 = !DILocation(line: 813, column: 60, scope: !2901)
!2946 = !DILocation(line: 815, column: 32, scope: !2901)
!2947 = !DILocation(line: 815, column: 47, scope: !2901)
!2948 = !DILocation(line: 813, column: 3, scope: !2901)
!2949 = !DILocation(line: 816, column: 9, scope: !2901)
!2950 = !DILocation(line: 817, column: 7, scope: !2901)
!2951 = !DILocation(line: 818, column: 11, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2901, file: !493, line: 817, column: 7)
!2953 = !DILocation(line: 818, column: 5, scope: !2952)
!2954 = !DILocation(line: 819, column: 3, scope: !2901)
!2955 = distinct !DISubprogram(name: "quotearg_free", scope: !493, file: !493, line: 837, type: !417, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2956)
!2956 = !{!2957, !2958}
!2957 = !DILocalVariable(name: "sv", scope: !2955, file: !493, line: 839, type: !591)
!2958 = !DILocalVariable(name: "i", scope: !2959, file: !493, line: 840, type: !70)
!2959 = distinct !DILexicalBlock(scope: !2955, file: !493, line: 840, column: 3)
!2960 = !DILocation(line: 839, column: 24, scope: !2955)
!2961 = !DILocation(line: 0, scope: !2955)
!2962 = !DILocation(line: 0, scope: !2959)
!2963 = !DILocation(line: 840, column: 21, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !493, line: 840, column: 3)
!2965 = !DILocation(line: 840, column: 3, scope: !2959)
!2966 = !DILocation(line: 842, column: 13, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2955, file: !493, line: 842, column: 7)
!2968 = !{!2969, !1061, i64 8}
!2969 = !{!"slotvec", !1514, i64 0, !1061, i64 8}
!2970 = !DILocation(line: 842, column: 17, scope: !2967)
!2971 = !DILocation(line: 842, column: 7, scope: !2955)
!2972 = !DILocation(line: 841, column: 17, scope: !2964)
!2973 = !DILocation(line: 841, column: 5, scope: !2964)
!2974 = !DILocation(line: 840, column: 32, scope: !2964)
!2975 = distinct !{!2975, !2965, !2976, !1170}
!2976 = !DILocation(line: 841, column: 20, scope: !2959)
!2977 = !DILocation(line: 844, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2967, file: !493, line: 843, column: 5)
!2979 = !DILocation(line: 845, column: 21, scope: !2978)
!2980 = !{!2969, !1514, i64 0}
!2981 = !DILocation(line: 846, column: 20, scope: !2978)
!2982 = !DILocation(line: 847, column: 5, scope: !2978)
!2983 = !DILocation(line: 848, column: 10, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2955, file: !493, line: 848, column: 7)
!2985 = !DILocation(line: 848, column: 7, scope: !2955)
!2986 = !DILocation(line: 850, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2984, file: !493, line: 849, column: 5)
!2988 = !DILocation(line: 851, column: 15, scope: !2987)
!2989 = !DILocation(line: 852, column: 5, scope: !2987)
!2990 = !DILocation(line: 853, column: 10, scope: !2955)
!2991 = !DILocation(line: 854, column: 1, scope: !2955)
!2992 = distinct !DISubprogram(name: "quotearg_n", scope: !493, file: !493, line: 919, type: !1240, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !2993)
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "n", arg: 1, scope: !2992, file: !493, line: 919, type: !70)
!2995 = !DILocalVariable(name: "arg", arg: 2, scope: !2992, file: !493, line: 919, type: !107)
!2996 = !DILocation(line: 0, scope: !2992)
!2997 = !DILocation(line: 921, column: 10, scope: !2992)
!2998 = !DILocation(line: 921, column: 3, scope: !2992)
!2999 = distinct !DISubprogram(name: "quotearg_n_options", scope: !493, file: !493, line: 866, type: !3000, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!101, !70, !107, !104, !2207}
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3013, !3014, !3016, !3017, !3018}
!3003 = !DILocalVariable(name: "n", arg: 1, scope: !2999, file: !493, line: 866, type: !70)
!3004 = !DILocalVariable(name: "arg", arg: 2, scope: !2999, file: !493, line: 866, type: !107)
!3005 = !DILocalVariable(name: "argsize", arg: 3, scope: !2999, file: !493, line: 866, type: !104)
!3006 = !DILocalVariable(name: "options", arg: 4, scope: !2999, file: !493, line: 867, type: !2207)
!3007 = !DILocalVariable(name: "saved_errno", scope: !2999, file: !493, line: 869, type: !70)
!3008 = !DILocalVariable(name: "sv", scope: !2999, file: !493, line: 871, type: !591)
!3009 = !DILocalVariable(name: "nslots_max", scope: !2999, file: !493, line: 873, type: !70)
!3010 = !DILocalVariable(name: "preallocated", scope: !3011, file: !493, line: 879, type: !148)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !493, line: 878, column: 5)
!3012 = distinct !DILexicalBlock(scope: !2999, file: !493, line: 877, column: 7)
!3013 = !DILocalVariable(name: "new_nslots", scope: !3011, file: !493, line: 880, type: !981)
!3014 = !DILocalVariable(name: "size", scope: !3015, file: !493, line: 891, type: !104)
!3015 = distinct !DILexicalBlock(scope: !2999, file: !493, line: 890, column: 3)
!3016 = !DILocalVariable(name: "val", scope: !3015, file: !493, line: 892, type: !101)
!3017 = !DILocalVariable(name: "flags", scope: !3015, file: !493, line: 894, type: !70)
!3018 = !DILocalVariable(name: "qsize", scope: !3015, file: !493, line: 895, type: !104)
!3019 = distinct !DIAssignID()
!3020 = !DILocation(line: 0, scope: !3011)
!3021 = !DILocation(line: 0, scope: !2999)
!3022 = !DILocation(line: 869, column: 21, scope: !2999)
!3023 = !DILocation(line: 871, column: 24, scope: !2999)
!3024 = !DILocation(line: 874, column: 17, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2999, file: !493, line: 874, column: 7)
!3026 = !DILocation(line: 875, column: 5, scope: !3025)
!3027 = !DILocation(line: 877, column: 7, scope: !3012)
!3028 = !DILocation(line: 877, column: 14, scope: !3012)
!3029 = !DILocation(line: 877, column: 7, scope: !2999)
!3030 = !DILocation(line: 879, column: 31, scope: !3011)
!3031 = !DILocation(line: 880, column: 7, scope: !3011)
!3032 = !DILocation(line: 880, column: 26, scope: !3011)
!3033 = !DILocation(line: 880, column: 13, scope: !3011)
!3034 = distinct !DIAssignID()
!3035 = !DILocation(line: 882, column: 31, scope: !3011)
!3036 = !DILocation(line: 883, column: 33, scope: !3011)
!3037 = !DILocation(line: 883, column: 42, scope: !3011)
!3038 = !DILocation(line: 883, column: 31, scope: !3011)
!3039 = !DILocation(line: 882, column: 22, scope: !3011)
!3040 = !DILocation(line: 882, column: 15, scope: !3011)
!3041 = !DILocation(line: 884, column: 11, scope: !3011)
!3042 = !DILocation(line: 885, column: 15, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3011, file: !493, line: 884, column: 11)
!3044 = !{i64 0, i64 8, !1804, i64 8, i64 8, !1060}
!3045 = !DILocation(line: 885, column: 9, scope: !3043)
!3046 = !DILocation(line: 886, column: 20, scope: !3011)
!3047 = !DILocation(line: 886, column: 18, scope: !3011)
!3048 = !DILocation(line: 886, column: 32, scope: !3011)
!3049 = !DILocation(line: 886, column: 43, scope: !3011)
!3050 = !DILocation(line: 886, column: 53, scope: !3011)
!3051 = !DILocation(line: 0, scope: !2429, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 886, column: 7, scope: !3011)
!3053 = !DILocation(line: 59, column: 10, scope: !2429, inlinedAt: !3052)
!3054 = !DILocation(line: 887, column: 16, scope: !3011)
!3055 = !DILocation(line: 887, column: 14, scope: !3011)
!3056 = !DILocation(line: 888, column: 5, scope: !3012)
!3057 = !DILocation(line: 888, column: 5, scope: !3011)
!3058 = !DILocation(line: 891, column: 19, scope: !3015)
!3059 = !DILocation(line: 891, column: 25, scope: !3015)
!3060 = !DILocation(line: 0, scope: !3015)
!3061 = !DILocation(line: 892, column: 23, scope: !3015)
!3062 = !DILocation(line: 894, column: 26, scope: !3015)
!3063 = !DILocation(line: 894, column: 32, scope: !3015)
!3064 = !DILocation(line: 896, column: 55, scope: !3015)
!3065 = !DILocation(line: 897, column: 55, scope: !3015)
!3066 = !DILocation(line: 898, column: 55, scope: !3015)
!3067 = !DILocation(line: 899, column: 55, scope: !3015)
!3068 = !DILocation(line: 895, column: 20, scope: !3015)
!3069 = !DILocation(line: 901, column: 14, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3015, file: !493, line: 901, column: 9)
!3071 = !DILocation(line: 901, column: 9, scope: !3015)
!3072 = !DILocation(line: 903, column: 35, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3070, file: !493, line: 902, column: 7)
!3074 = !DILocation(line: 903, column: 20, scope: !3073)
!3075 = !DILocation(line: 904, column: 17, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !493, line: 904, column: 13)
!3077 = !DILocation(line: 904, column: 13, scope: !3073)
!3078 = !DILocation(line: 905, column: 11, scope: !3076)
!3079 = !DILocation(line: 906, column: 27, scope: !3073)
!3080 = !DILocation(line: 906, column: 19, scope: !3073)
!3081 = !DILocation(line: 907, column: 69, scope: !3073)
!3082 = !DILocation(line: 909, column: 44, scope: !3073)
!3083 = !DILocation(line: 910, column: 44, scope: !3073)
!3084 = !DILocation(line: 907, column: 9, scope: !3073)
!3085 = !DILocation(line: 911, column: 7, scope: !3073)
!3086 = !DILocation(line: 913, column: 11, scope: !3015)
!3087 = !DILocation(line: 914, column: 5, scope: !3015)
!3088 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !493, file: !493, line: 925, type: !3089, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!101, !70, !107, !104}
!3091 = !{!3092, !3093, !3094}
!3092 = !DILocalVariable(name: "n", arg: 1, scope: !3088, file: !493, line: 925, type: !70)
!3093 = !DILocalVariable(name: "arg", arg: 2, scope: !3088, file: !493, line: 925, type: !107)
!3094 = !DILocalVariable(name: "argsize", arg: 3, scope: !3088, file: !493, line: 925, type: !104)
!3095 = !DILocation(line: 0, scope: !3088)
!3096 = !DILocation(line: 927, column: 10, scope: !3088)
!3097 = !DILocation(line: 927, column: 3, scope: !3088)
!3098 = distinct !DISubprogram(name: "quotearg", scope: !493, file: !493, line: 931, type: !1249, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3099)
!3099 = !{!3100}
!3100 = !DILocalVariable(name: "arg", arg: 1, scope: !3098, file: !493, line: 931, type: !107)
!3101 = !DILocation(line: 0, scope: !3098)
!3102 = !DILocation(line: 0, scope: !2992, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 933, column: 10, scope: !3098)
!3104 = !DILocation(line: 921, column: 10, scope: !2992, inlinedAt: !3103)
!3105 = !DILocation(line: 933, column: 3, scope: !3098)
!3106 = distinct !DISubprogram(name: "quotearg_mem", scope: !493, file: !493, line: 937, type: !3107, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!101, !107, !104}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "arg", arg: 1, scope: !3106, file: !493, line: 937, type: !107)
!3111 = !DILocalVariable(name: "argsize", arg: 2, scope: !3106, file: !493, line: 937, type: !104)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 0, scope: !3088, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 939, column: 10, scope: !3106)
!3115 = !DILocation(line: 927, column: 10, scope: !3088, inlinedAt: !3114)
!3116 = !DILocation(line: 939, column: 3, scope: !3106)
!3117 = distinct !DISubprogram(name: "quotearg_n_style", scope: !493, file: !493, line: 943, type: !3118, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!101, !70, !516, !107}
!3120 = !{!3121, !3122, !3123, !3124}
!3121 = !DILocalVariable(name: "n", arg: 1, scope: !3117, file: !493, line: 943, type: !70)
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3117, file: !493, line: 943, type: !516)
!3123 = !DILocalVariable(name: "arg", arg: 3, scope: !3117, file: !493, line: 943, type: !107)
!3124 = !DILocalVariable(name: "o", scope: !3117, file: !493, line: 945, type: !2208)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 0, scope: !3117)
!3127 = !DILocation(line: 945, column: 3, scope: !3117)
!3128 = !{!3129}
!3129 = distinct !{!3129, !3130, !"quoting_options_from_style: argument 0"}
!3130 = distinct !{!3130, !"quoting_options_from_style"}
!3131 = !DILocation(line: 945, column: 36, scope: !3117)
!3132 = !DILocalVariable(name: "style", arg: 1, scope: !3133, file: !493, line: 183, type: !516)
!3133 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !493, file: !493, line: 183, type: !3134, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!543, !516}
!3136 = !{!3132, !3137}
!3137 = !DILocalVariable(name: "o", scope: !3133, file: !493, line: 185, type: !543)
!3138 = !DILocation(line: 0, scope: !3133, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 945, column: 36, scope: !3117)
!3140 = !DILocation(line: 185, column: 26, scope: !3133, inlinedAt: !3139)
!3141 = distinct !DIAssignID()
!3142 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3139)
!3143 = distinct !DILexicalBlock(scope: !3133, file: !493, line: 186, column: 7)
!3144 = !DILocation(line: 186, column: 7, scope: !3133, inlinedAt: !3139)
!3145 = !DILocation(line: 187, column: 5, scope: !3143, inlinedAt: !3139)
!3146 = !DILocation(line: 188, column: 11, scope: !3133, inlinedAt: !3139)
!3147 = distinct !DIAssignID()
!3148 = !DILocation(line: 946, column: 10, scope: !3117)
!3149 = !DILocation(line: 947, column: 1, scope: !3117)
!3150 = !DILocation(line: 946, column: 3, scope: !3117)
!3151 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !493, file: !493, line: 950, type: !3152, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!101, !70, !516, !107, !104}
!3154 = !{!3155, !3156, !3157, !3158, !3159}
!3155 = !DILocalVariable(name: "n", arg: 1, scope: !3151, file: !493, line: 950, type: !70)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3151, file: !493, line: 950, type: !516)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !493, line: 951, type: !107)
!3158 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !493, line: 951, type: !104)
!3159 = !DILocalVariable(name: "o", scope: !3151, file: !493, line: 953, type: !2208)
!3160 = distinct !DIAssignID()
!3161 = !DILocation(line: 0, scope: !3151)
!3162 = !DILocation(line: 953, column: 3, scope: !3151)
!3163 = !{!3164}
!3164 = distinct !{!3164, !3165, !"quoting_options_from_style: argument 0"}
!3165 = distinct !{!3165, !"quoting_options_from_style"}
!3166 = !DILocation(line: 953, column: 36, scope: !3151)
!3167 = !DILocation(line: 0, scope: !3133, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 953, column: 36, scope: !3151)
!3169 = !DILocation(line: 185, column: 26, scope: !3133, inlinedAt: !3168)
!3170 = distinct !DIAssignID()
!3171 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3168)
!3172 = !DILocation(line: 186, column: 7, scope: !3133, inlinedAt: !3168)
!3173 = !DILocation(line: 187, column: 5, scope: !3143, inlinedAt: !3168)
!3174 = !DILocation(line: 188, column: 11, scope: !3133, inlinedAt: !3168)
!3175 = distinct !DIAssignID()
!3176 = !DILocation(line: 954, column: 10, scope: !3151)
!3177 = !DILocation(line: 955, column: 1, scope: !3151)
!3178 = !DILocation(line: 954, column: 3, scope: !3151)
!3179 = distinct !DISubprogram(name: "quotearg_style", scope: !493, file: !493, line: 958, type: !3180, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3182)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!101, !516, !107}
!3182 = !{!3183, !3184}
!3183 = !DILocalVariable(name: "s", arg: 1, scope: !3179, file: !493, line: 958, type: !516)
!3184 = !DILocalVariable(name: "arg", arg: 2, scope: !3179, file: !493, line: 958, type: !107)
!3185 = distinct !DIAssignID()
!3186 = !DILocation(line: 0, scope: !3179)
!3187 = !DILocation(line: 0, scope: !3117, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 960, column: 10, scope: !3179)
!3189 = !DILocation(line: 945, column: 3, scope: !3117, inlinedAt: !3188)
!3190 = !{!3191}
!3191 = distinct !{!3191, !3192, !"quoting_options_from_style: argument 0"}
!3192 = distinct !{!3192, !"quoting_options_from_style"}
!3193 = !DILocation(line: 945, column: 36, scope: !3117, inlinedAt: !3188)
!3194 = !DILocation(line: 0, scope: !3133, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 945, column: 36, scope: !3117, inlinedAt: !3188)
!3196 = !DILocation(line: 185, column: 26, scope: !3133, inlinedAt: !3195)
!3197 = distinct !DIAssignID()
!3198 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3195)
!3199 = !DILocation(line: 186, column: 7, scope: !3133, inlinedAt: !3195)
!3200 = !DILocation(line: 187, column: 5, scope: !3143, inlinedAt: !3195)
!3201 = !DILocation(line: 188, column: 11, scope: !3133, inlinedAt: !3195)
!3202 = distinct !DIAssignID()
!3203 = !DILocation(line: 946, column: 10, scope: !3117, inlinedAt: !3188)
!3204 = !DILocation(line: 947, column: 1, scope: !3117, inlinedAt: !3188)
!3205 = !DILocation(line: 960, column: 3, scope: !3179)
!3206 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !493, file: !493, line: 964, type: !3207, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!101, !516, !107, !104}
!3209 = !{!3210, !3211, !3212}
!3210 = !DILocalVariable(name: "s", arg: 1, scope: !3206, file: !493, line: 964, type: !516)
!3211 = !DILocalVariable(name: "arg", arg: 2, scope: !3206, file: !493, line: 964, type: !107)
!3212 = !DILocalVariable(name: "argsize", arg: 3, scope: !3206, file: !493, line: 964, type: !104)
!3213 = distinct !DIAssignID()
!3214 = !DILocation(line: 0, scope: !3206)
!3215 = !DILocation(line: 0, scope: !3151, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 966, column: 10, scope: !3206)
!3217 = !DILocation(line: 953, column: 3, scope: !3151, inlinedAt: !3216)
!3218 = !{!3219}
!3219 = distinct !{!3219, !3220, !"quoting_options_from_style: argument 0"}
!3220 = distinct !{!3220, !"quoting_options_from_style"}
!3221 = !DILocation(line: 953, column: 36, scope: !3151, inlinedAt: !3216)
!3222 = !DILocation(line: 0, scope: !3133, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 953, column: 36, scope: !3151, inlinedAt: !3216)
!3224 = !DILocation(line: 185, column: 26, scope: !3133, inlinedAt: !3223)
!3225 = distinct !DIAssignID()
!3226 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3223)
!3227 = !DILocation(line: 186, column: 7, scope: !3133, inlinedAt: !3223)
!3228 = !DILocation(line: 187, column: 5, scope: !3143, inlinedAt: !3223)
!3229 = !DILocation(line: 188, column: 11, scope: !3133, inlinedAt: !3223)
!3230 = distinct !DIAssignID()
!3231 = !DILocation(line: 954, column: 10, scope: !3151, inlinedAt: !3216)
!3232 = !DILocation(line: 955, column: 1, scope: !3151, inlinedAt: !3216)
!3233 = !DILocation(line: 966, column: 3, scope: !3206)
!3234 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !493, file: !493, line: 970, type: !3235, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3237)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!101, !107, !104, !4}
!3237 = !{!3238, !3239, !3240, !3241}
!3238 = !DILocalVariable(name: "arg", arg: 1, scope: !3234, file: !493, line: 970, type: !107)
!3239 = !DILocalVariable(name: "argsize", arg: 2, scope: !3234, file: !493, line: 970, type: !104)
!3240 = !DILocalVariable(name: "ch", arg: 3, scope: !3234, file: !493, line: 970, type: !4)
!3241 = !DILocalVariable(name: "options", scope: !3234, file: !493, line: 972, type: !543)
!3242 = distinct !DIAssignID()
!3243 = !DILocation(line: 0, scope: !3234)
!3244 = !DILocation(line: 972, column: 3, scope: !3234)
!3245 = !DILocation(line: 973, column: 13, scope: !3234)
!3246 = !{i64 0, i64 4, !1123, i64 4, i64 4, !1123, i64 8, i64 32, !1132, i64 40, i64 8, !1060, i64 48, i64 8, !1060}
!3247 = distinct !DIAssignID()
!3248 = !DILocation(line: 0, scope: !2227, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 974, column: 3, scope: !3234)
!3250 = !DILocation(line: 147, column: 41, scope: !2227, inlinedAt: !3249)
!3251 = !DILocation(line: 147, column: 62, scope: !2227, inlinedAt: !3249)
!3252 = !DILocation(line: 147, column: 57, scope: !2227, inlinedAt: !3249)
!3253 = !DILocation(line: 148, column: 15, scope: !2227, inlinedAt: !3249)
!3254 = !DILocation(line: 149, column: 21, scope: !2227, inlinedAt: !3249)
!3255 = !DILocation(line: 149, column: 24, scope: !2227, inlinedAt: !3249)
!3256 = !DILocation(line: 150, column: 19, scope: !2227, inlinedAt: !3249)
!3257 = !DILocation(line: 150, column: 24, scope: !2227, inlinedAt: !3249)
!3258 = !DILocation(line: 150, column: 6, scope: !2227, inlinedAt: !3249)
!3259 = !DILocation(line: 975, column: 10, scope: !3234)
!3260 = !DILocation(line: 976, column: 1, scope: !3234)
!3261 = !DILocation(line: 975, column: 3, scope: !3234)
!3262 = distinct !DISubprogram(name: "quotearg_char", scope: !493, file: !493, line: 979, type: !3263, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!101, !107, !4}
!3265 = !{!3266, !3267}
!3266 = !DILocalVariable(name: "arg", arg: 1, scope: !3262, file: !493, line: 979, type: !107)
!3267 = !DILocalVariable(name: "ch", arg: 2, scope: !3262, file: !493, line: 979, type: !4)
!3268 = distinct !DIAssignID()
!3269 = !DILocation(line: 0, scope: !3262)
!3270 = !DILocation(line: 0, scope: !3234, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 981, column: 10, scope: !3262)
!3272 = !DILocation(line: 972, column: 3, scope: !3234, inlinedAt: !3271)
!3273 = !DILocation(line: 973, column: 13, scope: !3234, inlinedAt: !3271)
!3274 = distinct !DIAssignID()
!3275 = !DILocation(line: 0, scope: !2227, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 974, column: 3, scope: !3234, inlinedAt: !3271)
!3277 = !DILocation(line: 147, column: 41, scope: !2227, inlinedAt: !3276)
!3278 = !DILocation(line: 147, column: 62, scope: !2227, inlinedAt: !3276)
!3279 = !DILocation(line: 147, column: 57, scope: !2227, inlinedAt: !3276)
!3280 = !DILocation(line: 148, column: 15, scope: !2227, inlinedAt: !3276)
!3281 = !DILocation(line: 149, column: 21, scope: !2227, inlinedAt: !3276)
!3282 = !DILocation(line: 149, column: 24, scope: !2227, inlinedAt: !3276)
!3283 = !DILocation(line: 150, column: 19, scope: !2227, inlinedAt: !3276)
!3284 = !DILocation(line: 150, column: 24, scope: !2227, inlinedAt: !3276)
!3285 = !DILocation(line: 150, column: 6, scope: !2227, inlinedAt: !3276)
!3286 = !DILocation(line: 975, column: 10, scope: !3234, inlinedAt: !3271)
!3287 = !DILocation(line: 976, column: 1, scope: !3234, inlinedAt: !3271)
!3288 = !DILocation(line: 981, column: 3, scope: !3262)
!3289 = distinct !DISubprogram(name: "quotearg_colon", scope: !493, file: !493, line: 985, type: !1249, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "arg", arg: 1, scope: !3289, file: !493, line: 985, type: !107)
!3292 = distinct !DIAssignID()
!3293 = !DILocation(line: 0, scope: !3289)
!3294 = !DILocation(line: 0, scope: !3262, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 987, column: 10, scope: !3289)
!3296 = !DILocation(line: 0, scope: !3234, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 981, column: 10, scope: !3262, inlinedAt: !3295)
!3298 = !DILocation(line: 972, column: 3, scope: !3234, inlinedAt: !3297)
!3299 = !DILocation(line: 973, column: 13, scope: !3234, inlinedAt: !3297)
!3300 = distinct !DIAssignID()
!3301 = !DILocation(line: 0, scope: !2227, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 974, column: 3, scope: !3234, inlinedAt: !3297)
!3303 = !DILocation(line: 147, column: 57, scope: !2227, inlinedAt: !3302)
!3304 = !DILocation(line: 149, column: 21, scope: !2227, inlinedAt: !3302)
!3305 = !DILocation(line: 150, column: 6, scope: !2227, inlinedAt: !3302)
!3306 = !DILocation(line: 975, column: 10, scope: !3234, inlinedAt: !3297)
!3307 = !DILocation(line: 976, column: 1, scope: !3234, inlinedAt: !3297)
!3308 = !DILocation(line: 987, column: 3, scope: !3289)
!3309 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !493, file: !493, line: 991, type: !3107, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3310)
!3310 = !{!3311, !3312}
!3311 = !DILocalVariable(name: "arg", arg: 1, scope: !3309, file: !493, line: 991, type: !107)
!3312 = !DILocalVariable(name: "argsize", arg: 2, scope: !3309, file: !493, line: 991, type: !104)
!3313 = distinct !DIAssignID()
!3314 = !DILocation(line: 0, scope: !3309)
!3315 = !DILocation(line: 0, scope: !3234, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 993, column: 10, scope: !3309)
!3317 = !DILocation(line: 972, column: 3, scope: !3234, inlinedAt: !3316)
!3318 = !DILocation(line: 973, column: 13, scope: !3234, inlinedAt: !3316)
!3319 = distinct !DIAssignID()
!3320 = !DILocation(line: 0, scope: !2227, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 974, column: 3, scope: !3234, inlinedAt: !3316)
!3322 = !DILocation(line: 147, column: 57, scope: !2227, inlinedAt: !3321)
!3323 = !DILocation(line: 149, column: 21, scope: !2227, inlinedAt: !3321)
!3324 = !DILocation(line: 150, column: 6, scope: !2227, inlinedAt: !3321)
!3325 = !DILocation(line: 975, column: 10, scope: !3234, inlinedAt: !3316)
!3326 = !DILocation(line: 976, column: 1, scope: !3234, inlinedAt: !3316)
!3327 = !DILocation(line: 993, column: 3, scope: !3309)
!3328 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !493, file: !493, line: 997, type: !3118, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3329)
!3329 = !{!3330, !3331, !3332, !3333}
!3330 = !DILocalVariable(name: "n", arg: 1, scope: !3328, file: !493, line: 997, type: !70)
!3331 = !DILocalVariable(name: "s", arg: 2, scope: !3328, file: !493, line: 997, type: !516)
!3332 = !DILocalVariable(name: "arg", arg: 3, scope: !3328, file: !493, line: 997, type: !107)
!3333 = !DILocalVariable(name: "options", scope: !3328, file: !493, line: 999, type: !543)
!3334 = distinct !DIAssignID()
!3335 = !DILocation(line: 0, scope: !3328)
!3336 = !DILocation(line: 185, column: 26, scope: !3133, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1000, column: 13, scope: !3328)
!3338 = !DILocation(line: 999, column: 3, scope: !3328)
!3339 = !DILocation(line: 0, scope: !3133, inlinedAt: !3337)
!3340 = !DILocation(line: 186, column: 13, scope: !3143, inlinedAt: !3337)
!3341 = !DILocation(line: 186, column: 7, scope: !3133, inlinedAt: !3337)
!3342 = !DILocation(line: 187, column: 5, scope: !3143, inlinedAt: !3337)
!3343 = !{!3344}
!3344 = distinct !{!3344, !3345, !"quoting_options_from_style: argument 0"}
!3345 = distinct !{!3345, !"quoting_options_from_style"}
!3346 = !DILocation(line: 1000, column: 13, scope: !3328)
!3347 = distinct !DIAssignID()
!3348 = distinct !DIAssignID()
!3349 = !DILocation(line: 0, scope: !2227, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 1001, column: 3, scope: !3328)
!3351 = !DILocation(line: 147, column: 57, scope: !2227, inlinedAt: !3350)
!3352 = !DILocation(line: 149, column: 21, scope: !2227, inlinedAt: !3350)
!3353 = !DILocation(line: 150, column: 6, scope: !2227, inlinedAt: !3350)
!3354 = distinct !DIAssignID()
!3355 = !DILocation(line: 1002, column: 10, scope: !3328)
!3356 = !DILocation(line: 1003, column: 1, scope: !3328)
!3357 = !DILocation(line: 1002, column: 3, scope: !3328)
!3358 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !493, file: !493, line: 1006, type: !3359, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!101, !70, !107, !107, !107}
!3361 = !{!3362, !3363, !3364, !3365}
!3362 = !DILocalVariable(name: "n", arg: 1, scope: !3358, file: !493, line: 1006, type: !70)
!3363 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3358, file: !493, line: 1006, type: !107)
!3364 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3358, file: !493, line: 1007, type: !107)
!3365 = !DILocalVariable(name: "arg", arg: 4, scope: !3358, file: !493, line: 1007, type: !107)
!3366 = distinct !DIAssignID()
!3367 = !DILocation(line: 0, scope: !3358)
!3368 = !DILocalVariable(name: "o", scope: !3369, file: !493, line: 1018, type: !543)
!3369 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !493, file: !493, line: 1014, type: !3370, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!101, !70, !107, !107, !107, !104}
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3368}
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3369, file: !493, line: 1014, type: !70)
!3374 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3369, file: !493, line: 1014, type: !107)
!3375 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3369, file: !493, line: 1015, type: !107)
!3376 = !DILocalVariable(name: "arg", arg: 4, scope: !3369, file: !493, line: 1016, type: !107)
!3377 = !DILocalVariable(name: "argsize", arg: 5, scope: !3369, file: !493, line: 1016, type: !104)
!3378 = !DILocation(line: 0, scope: !3369, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1009, column: 10, scope: !3358)
!3380 = !DILocation(line: 1018, column: 3, scope: !3369, inlinedAt: !3379)
!3381 = !DILocation(line: 1018, column: 30, scope: !3369, inlinedAt: !3379)
!3382 = distinct !DIAssignID()
!3383 = distinct !DIAssignID()
!3384 = !DILocation(line: 0, scope: !2267, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 1019, column: 3, scope: !3369, inlinedAt: !3379)
!3386 = !DILocation(line: 174, column: 12, scope: !2267, inlinedAt: !3385)
!3387 = distinct !DIAssignID()
!3388 = !DILocation(line: 175, column: 8, scope: !2280, inlinedAt: !3385)
!3389 = !DILocation(line: 175, column: 19, scope: !2280, inlinedAt: !3385)
!3390 = !DILocation(line: 176, column: 5, scope: !2280, inlinedAt: !3385)
!3391 = !DILocation(line: 177, column: 6, scope: !2267, inlinedAt: !3385)
!3392 = !DILocation(line: 177, column: 17, scope: !2267, inlinedAt: !3385)
!3393 = distinct !DIAssignID()
!3394 = !DILocation(line: 178, column: 6, scope: !2267, inlinedAt: !3385)
!3395 = !DILocation(line: 178, column: 18, scope: !2267, inlinedAt: !3385)
!3396 = distinct !DIAssignID()
!3397 = !DILocation(line: 1020, column: 10, scope: !3369, inlinedAt: !3379)
!3398 = !DILocation(line: 1021, column: 1, scope: !3369, inlinedAt: !3379)
!3399 = !DILocation(line: 1009, column: 3, scope: !3358)
!3400 = distinct !DIAssignID()
!3401 = !DILocation(line: 0, scope: !3369)
!3402 = !DILocation(line: 1018, column: 3, scope: !3369)
!3403 = !DILocation(line: 1018, column: 30, scope: !3369)
!3404 = distinct !DIAssignID()
!3405 = distinct !DIAssignID()
!3406 = !DILocation(line: 0, scope: !2267, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 1019, column: 3, scope: !3369)
!3408 = !DILocation(line: 174, column: 12, scope: !2267, inlinedAt: !3407)
!3409 = distinct !DIAssignID()
!3410 = !DILocation(line: 175, column: 8, scope: !2280, inlinedAt: !3407)
!3411 = !DILocation(line: 175, column: 19, scope: !2280, inlinedAt: !3407)
!3412 = !DILocation(line: 176, column: 5, scope: !2280, inlinedAt: !3407)
!3413 = !DILocation(line: 177, column: 6, scope: !2267, inlinedAt: !3407)
!3414 = !DILocation(line: 177, column: 17, scope: !2267, inlinedAt: !3407)
!3415 = distinct !DIAssignID()
!3416 = !DILocation(line: 178, column: 6, scope: !2267, inlinedAt: !3407)
!3417 = !DILocation(line: 178, column: 18, scope: !2267, inlinedAt: !3407)
!3418 = distinct !DIAssignID()
!3419 = !DILocation(line: 1020, column: 10, scope: !3369)
!3420 = !DILocation(line: 1021, column: 1, scope: !3369)
!3421 = !DILocation(line: 1020, column: 3, scope: !3369)
!3422 = distinct !DISubprogram(name: "quotearg_custom", scope: !493, file: !493, line: 1024, type: !3423, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3425)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!101, !107, !107, !107}
!3425 = !{!3426, !3427, !3428}
!3426 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3422, file: !493, line: 1024, type: !107)
!3427 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3422, file: !493, line: 1024, type: !107)
!3428 = !DILocalVariable(name: "arg", arg: 3, scope: !3422, file: !493, line: 1025, type: !107)
!3429 = distinct !DIAssignID()
!3430 = !DILocation(line: 0, scope: !3422)
!3431 = !DILocation(line: 0, scope: !3358, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 1027, column: 10, scope: !3422)
!3433 = !DILocation(line: 0, scope: !3369, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 1009, column: 10, scope: !3358, inlinedAt: !3432)
!3435 = !DILocation(line: 1018, column: 3, scope: !3369, inlinedAt: !3434)
!3436 = !DILocation(line: 1018, column: 30, scope: !3369, inlinedAt: !3434)
!3437 = distinct !DIAssignID()
!3438 = distinct !DIAssignID()
!3439 = !DILocation(line: 0, scope: !2267, inlinedAt: !3440)
!3440 = distinct !DILocation(line: 1019, column: 3, scope: !3369, inlinedAt: !3434)
!3441 = !DILocation(line: 174, column: 12, scope: !2267, inlinedAt: !3440)
!3442 = distinct !DIAssignID()
!3443 = !DILocation(line: 175, column: 8, scope: !2280, inlinedAt: !3440)
!3444 = !DILocation(line: 175, column: 19, scope: !2280, inlinedAt: !3440)
!3445 = !DILocation(line: 176, column: 5, scope: !2280, inlinedAt: !3440)
!3446 = !DILocation(line: 177, column: 6, scope: !2267, inlinedAt: !3440)
!3447 = !DILocation(line: 177, column: 17, scope: !2267, inlinedAt: !3440)
!3448 = distinct !DIAssignID()
!3449 = !DILocation(line: 178, column: 6, scope: !2267, inlinedAt: !3440)
!3450 = !DILocation(line: 178, column: 18, scope: !2267, inlinedAt: !3440)
!3451 = distinct !DIAssignID()
!3452 = !DILocation(line: 1020, column: 10, scope: !3369, inlinedAt: !3434)
!3453 = !DILocation(line: 1021, column: 1, scope: !3369, inlinedAt: !3434)
!3454 = !DILocation(line: 1027, column: 3, scope: !3422)
!3455 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !493, file: !493, line: 1031, type: !3456, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!101, !107, !107, !107, !104}
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3455, file: !493, line: 1031, type: !107)
!3460 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3455, file: !493, line: 1031, type: !107)
!3461 = !DILocalVariable(name: "arg", arg: 3, scope: !3455, file: !493, line: 1032, type: !107)
!3462 = !DILocalVariable(name: "argsize", arg: 4, scope: !3455, file: !493, line: 1032, type: !104)
!3463 = distinct !DIAssignID()
!3464 = !DILocation(line: 0, scope: !3455)
!3465 = !DILocation(line: 0, scope: !3369, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1034, column: 10, scope: !3455)
!3467 = !DILocation(line: 1018, column: 3, scope: !3369, inlinedAt: !3466)
!3468 = !DILocation(line: 1018, column: 30, scope: !3369, inlinedAt: !3466)
!3469 = distinct !DIAssignID()
!3470 = distinct !DIAssignID()
!3471 = !DILocation(line: 0, scope: !2267, inlinedAt: !3472)
!3472 = distinct !DILocation(line: 1019, column: 3, scope: !3369, inlinedAt: !3466)
!3473 = !DILocation(line: 174, column: 12, scope: !2267, inlinedAt: !3472)
!3474 = distinct !DIAssignID()
!3475 = !DILocation(line: 175, column: 8, scope: !2280, inlinedAt: !3472)
!3476 = !DILocation(line: 175, column: 19, scope: !2280, inlinedAt: !3472)
!3477 = !DILocation(line: 176, column: 5, scope: !2280, inlinedAt: !3472)
!3478 = !DILocation(line: 177, column: 6, scope: !2267, inlinedAt: !3472)
!3479 = !DILocation(line: 177, column: 17, scope: !2267, inlinedAt: !3472)
!3480 = distinct !DIAssignID()
!3481 = !DILocation(line: 178, column: 6, scope: !2267, inlinedAt: !3472)
!3482 = !DILocation(line: 178, column: 18, scope: !2267, inlinedAt: !3472)
!3483 = distinct !DIAssignID()
!3484 = !DILocation(line: 1020, column: 10, scope: !3369, inlinedAt: !3466)
!3485 = !DILocation(line: 1021, column: 1, scope: !3369, inlinedAt: !3466)
!3486 = !DILocation(line: 1034, column: 3, scope: !3455)
!3487 = distinct !DISubprogram(name: "quote_n_mem", scope: !493, file: !493, line: 1049, type: !3488, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!107, !70, !107, !104}
!3490 = !{!3491, !3492, !3493}
!3491 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !493, line: 1049, type: !70)
!3492 = !DILocalVariable(name: "arg", arg: 2, scope: !3487, file: !493, line: 1049, type: !107)
!3493 = !DILocalVariable(name: "argsize", arg: 3, scope: !3487, file: !493, line: 1049, type: !104)
!3494 = !DILocation(line: 0, scope: !3487)
!3495 = !DILocation(line: 1051, column: 10, scope: !3487)
!3496 = !DILocation(line: 1051, column: 3, scope: !3487)
!3497 = distinct !DISubprogram(name: "quote_mem", scope: !493, file: !493, line: 1055, type: !3498, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3500)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!107, !107, !104}
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "arg", arg: 1, scope: !3497, file: !493, line: 1055, type: !107)
!3502 = !DILocalVariable(name: "argsize", arg: 2, scope: !3497, file: !493, line: 1055, type: !104)
!3503 = !DILocation(line: 0, scope: !3497)
!3504 = !DILocation(line: 0, scope: !3487, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 1057, column: 10, scope: !3497)
!3506 = !DILocation(line: 1051, column: 10, scope: !3487, inlinedAt: !3505)
!3507 = !DILocation(line: 1057, column: 3, scope: !3497)
!3508 = distinct !DISubprogram(name: "quote_n", scope: !493, file: !493, line: 1061, type: !3509, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3511)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!107, !70, !107}
!3511 = !{!3512, !3513}
!3512 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !493, line: 1061, type: !70)
!3513 = !DILocalVariable(name: "arg", arg: 2, scope: !3508, file: !493, line: 1061, type: !107)
!3514 = !DILocation(line: 0, scope: !3508)
!3515 = !DILocation(line: 0, scope: !3487, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 1063, column: 10, scope: !3508)
!3517 = !DILocation(line: 1051, column: 10, scope: !3487, inlinedAt: !3516)
!3518 = !DILocation(line: 1063, column: 3, scope: !3508)
!3519 = distinct !DISubprogram(name: "quote", scope: !493, file: !493, line: 1067, type: !3520, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !514, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!107, !107}
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "arg", arg: 1, scope: !3519, file: !493, line: 1067, type: !107)
!3524 = !DILocation(line: 0, scope: !3519)
!3525 = !DILocation(line: 0, scope: !3508, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 1069, column: 10, scope: !3519)
!3527 = !DILocation(line: 0, scope: !3487, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 1063, column: 10, scope: !3508, inlinedAt: !3526)
!3529 = !DILocation(line: 1051, column: 10, scope: !3487, inlinedAt: !3528)
!3530 = !DILocation(line: 1069, column: 3, scope: !3519)
!3531 = distinct !DISubprogram(name: "version_etc_arn", scope: !606, file: !606, line: 61, type: !3532, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !3569)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{null, !3534, !107, !107, !107, !3568, !104}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3536, file: !165, line: 51, baseType: !70, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3536, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3536, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3536, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3536, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3536, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3536, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3536, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3536, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3536, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3536, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3536, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3536, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3536, file: !165, line: 70, baseType: !3552, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3536, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3536, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3536, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3536, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3536, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3536, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3536, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3536, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3536, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3536, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3536, file: !165, line: 93, baseType: !3552, size: 64, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3536, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3536, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3536, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3536, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575}
!3570 = !DILocalVariable(name: "stream", arg: 1, scope: !3531, file: !606, line: 61, type: !3534)
!3571 = !DILocalVariable(name: "command_name", arg: 2, scope: !3531, file: !606, line: 62, type: !107)
!3572 = !DILocalVariable(name: "package", arg: 3, scope: !3531, file: !606, line: 62, type: !107)
!3573 = !DILocalVariable(name: "version", arg: 4, scope: !3531, file: !606, line: 63, type: !107)
!3574 = !DILocalVariable(name: "authors", arg: 5, scope: !3531, file: !606, line: 64, type: !3568)
!3575 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3531, file: !606, line: 64, type: !104)
!3576 = !DILocation(line: 0, scope: !3531)
!3577 = !DILocation(line: 66, column: 7, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3531, file: !606, line: 66, column: 7)
!3579 = !DILocation(line: 66, column: 7, scope: !3531)
!3580 = !DILocation(line: 67, column: 5, scope: !3578)
!3581 = !DILocation(line: 69, column: 5, scope: !3578)
!3582 = !DILocation(line: 83, column: 3, scope: !3531)
!3583 = !DILocation(line: 85, column: 3, scope: !3531)
!3584 = !DILocation(line: 88, column: 3, scope: !3531)
!3585 = !DILocation(line: 95, column: 3, scope: !3531)
!3586 = !DILocation(line: 97, column: 3, scope: !3531)
!3587 = !DILocation(line: 105, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3531, file: !606, line: 98, column: 5)
!3589 = !DILocation(line: 106, column: 7, scope: !3588)
!3590 = !DILocation(line: 109, column: 7, scope: !3588)
!3591 = !DILocation(line: 110, column: 7, scope: !3588)
!3592 = !DILocation(line: 113, column: 7, scope: !3588)
!3593 = !DILocation(line: 115, column: 7, scope: !3588)
!3594 = !DILocation(line: 120, column: 7, scope: !3588)
!3595 = !DILocation(line: 122, column: 7, scope: !3588)
!3596 = !DILocation(line: 127, column: 7, scope: !3588)
!3597 = !DILocation(line: 129, column: 7, scope: !3588)
!3598 = !DILocation(line: 134, column: 7, scope: !3588)
!3599 = !DILocation(line: 137, column: 7, scope: !3588)
!3600 = !DILocation(line: 142, column: 7, scope: !3588)
!3601 = !DILocation(line: 145, column: 7, scope: !3588)
!3602 = !DILocation(line: 150, column: 7, scope: !3588)
!3603 = !DILocation(line: 154, column: 7, scope: !3588)
!3604 = !DILocation(line: 159, column: 7, scope: !3588)
!3605 = !DILocation(line: 163, column: 7, scope: !3588)
!3606 = !DILocation(line: 170, column: 7, scope: !3588)
!3607 = !DILocation(line: 174, column: 7, scope: !3588)
!3608 = !DILocation(line: 176, column: 1, scope: !3531)
!3609 = distinct !DISubprogram(name: "version_etc_ar", scope: !606, file: !606, line: 183, type: !3610, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3534, !107, !107, !107, !3568}
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618}
!3613 = !DILocalVariable(name: "stream", arg: 1, scope: !3609, file: !606, line: 183, type: !3534)
!3614 = !DILocalVariable(name: "command_name", arg: 2, scope: !3609, file: !606, line: 184, type: !107)
!3615 = !DILocalVariable(name: "package", arg: 3, scope: !3609, file: !606, line: 184, type: !107)
!3616 = !DILocalVariable(name: "version", arg: 4, scope: !3609, file: !606, line: 185, type: !107)
!3617 = !DILocalVariable(name: "authors", arg: 5, scope: !3609, file: !606, line: 185, type: !3568)
!3618 = !DILocalVariable(name: "n_authors", scope: !3609, file: !606, line: 187, type: !104)
!3619 = !DILocation(line: 0, scope: !3609)
!3620 = !DILocation(line: 189, column: 8, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3609, file: !606, line: 189, column: 3)
!3622 = !DILocation(line: 189, scope: !3621)
!3623 = !DILocation(line: 189, column: 23, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3621, file: !606, line: 189, column: 3)
!3625 = !DILocation(line: 189, column: 3, scope: !3621)
!3626 = !DILocation(line: 189, column: 52, scope: !3624)
!3627 = distinct !{!3627, !3625, !3628, !1170}
!3628 = !DILocation(line: 190, column: 5, scope: !3621)
!3629 = !DILocation(line: 191, column: 3, scope: !3609)
!3630 = !DILocation(line: 192, column: 1, scope: !3609)
!3631 = distinct !DISubprogram(name: "version_etc_va", scope: !606, file: !606, line: 199, type: !3632, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !3641)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{null, !3534, !107, !107, !107, !3634}
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3635, file: !606, line: 192, baseType: !63, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3635, file: !606, line: 192, baseType: !63, size: 32, offset: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3635, file: !606, line: 192, baseType: !102, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3635, file: !606, line: 192, baseType: !102, size: 64, offset: 128)
!3641 = !{!3642, !3643, !3644, !3645, !3646, !3647, !3648}
!3642 = !DILocalVariable(name: "stream", arg: 1, scope: !3631, file: !606, line: 199, type: !3534)
!3643 = !DILocalVariable(name: "command_name", arg: 2, scope: !3631, file: !606, line: 200, type: !107)
!3644 = !DILocalVariable(name: "package", arg: 3, scope: !3631, file: !606, line: 200, type: !107)
!3645 = !DILocalVariable(name: "version", arg: 4, scope: !3631, file: !606, line: 201, type: !107)
!3646 = !DILocalVariable(name: "authors", arg: 5, scope: !3631, file: !606, line: 201, type: !3634)
!3647 = !DILocalVariable(name: "n_authors", scope: !3631, file: !606, line: 203, type: !104)
!3648 = !DILocalVariable(name: "authtab", scope: !3631, file: !606, line: 204, type: !3649)
!3649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 640, elements: !50)
!3650 = distinct !DIAssignID()
!3651 = !DILocation(line: 0, scope: !3631)
!3652 = !DILocation(line: 204, column: 3, scope: !3631)
!3653 = !DILocation(line: 208, column: 35, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !606, line: 206, column: 3)
!3655 = distinct !DILexicalBlock(scope: !3631, file: !606, line: 206, column: 3)
!3656 = !DILocation(line: 208, column: 33, scope: !3654)
!3657 = !DILocation(line: 208, column: 67, scope: !3654)
!3658 = !DILocation(line: 206, column: 3, scope: !3655)
!3659 = !DILocation(line: 208, column: 14, scope: !3654)
!3660 = !DILocation(line: 0, scope: !3655)
!3661 = !DILocation(line: 211, column: 3, scope: !3631)
!3662 = !DILocation(line: 213, column: 1, scope: !3631)
!3663 = distinct !DISubprogram(name: "version_etc", scope: !606, file: !606, line: 230, type: !3664, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{null, !3534, !107, !107, !107, null}
!3666 = !{!3667, !3668, !3669, !3670, !3671}
!3667 = !DILocalVariable(name: "stream", arg: 1, scope: !3663, file: !606, line: 230, type: !3534)
!3668 = !DILocalVariable(name: "command_name", arg: 2, scope: !3663, file: !606, line: 231, type: !107)
!3669 = !DILocalVariable(name: "package", arg: 3, scope: !3663, file: !606, line: 231, type: !107)
!3670 = !DILocalVariable(name: "version", arg: 4, scope: !3663, file: !606, line: 232, type: !107)
!3671 = !DILocalVariable(name: "authors", scope: !3663, file: !606, line: 234, type: !3672)
!3672 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1118, line: 52, baseType: !3673)
!3673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1549, line: 12, baseType: !3674)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !606, baseType: !3675)
!3675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3635, size: 192, elements: !45)
!3676 = distinct !DIAssignID()
!3677 = !DILocation(line: 0, scope: !3663)
!3678 = !DILocation(line: 234, column: 3, scope: !3663)
!3679 = !DILocation(line: 235, column: 3, scope: !3663)
!3680 = !DILocation(line: 236, column: 3, scope: !3663)
!3681 = !DILocation(line: 237, column: 3, scope: !3663)
!3682 = !DILocation(line: 238, column: 1, scope: !3663)
!3683 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !606, file: !606, line: 241, type: !417, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !954)
!3684 = !DILocation(line: 243, column: 3, scope: !3683)
!3685 = !DILocation(line: 248, column: 3, scope: !3683)
!3686 = !DILocation(line: 254, column: 3, scope: !3683)
!3687 = !DILocation(line: 259, column: 3, scope: !3683)
!3688 = !DILocation(line: 261, column: 1, scope: !3683)
!3689 = distinct !DISubprogram(name: "xnrealloc", scope: !3690, file: !3690, line: 147, type: !3691, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3693)
!3690 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!102, !102, !104, !104}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "p", arg: 1, scope: !3689, file: !3690, line: 147, type: !102)
!3695 = !DILocalVariable(name: "n", arg: 2, scope: !3689, file: !3690, line: 147, type: !104)
!3696 = !DILocalVariable(name: "s", arg: 3, scope: !3689, file: !3690, line: 147, type: !104)
!3697 = !DILocation(line: 0, scope: !3689)
!3698 = !DILocalVariable(name: "p", arg: 1, scope: !3699, file: !962, line: 83, type: !102)
!3699 = distinct !DISubprogram(name: "xreallocarray", scope: !962, file: !962, line: 83, type: !3691, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3700)
!3700 = !{!3698, !3701, !3702}
!3701 = !DILocalVariable(name: "n", arg: 2, scope: !3699, file: !962, line: 83, type: !104)
!3702 = !DILocalVariable(name: "s", arg: 3, scope: !3699, file: !962, line: 83, type: !104)
!3703 = !DILocation(line: 0, scope: !3699, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 149, column: 10, scope: !3689)
!3705 = !DILocation(line: 85, column: 25, scope: !3699, inlinedAt: !3704)
!3706 = !DILocalVariable(name: "p", arg: 1, scope: !3707, file: !962, line: 37, type: !102)
!3707 = distinct !DISubprogram(name: "check_nonnull", scope: !962, file: !962, line: 37, type: !3708, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!102, !102}
!3710 = !{!3706}
!3711 = !DILocation(line: 0, scope: !3707, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 85, column: 10, scope: !3699, inlinedAt: !3704)
!3713 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3712)
!3714 = distinct !DILexicalBlock(scope: !3707, file: !962, line: 39, column: 7)
!3715 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3712)
!3716 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3712)
!3717 = !DILocation(line: 149, column: 3, scope: !3689)
!3718 = !DILocation(line: 0, scope: !3699)
!3719 = !DILocation(line: 85, column: 25, scope: !3699)
!3720 = !DILocation(line: 0, scope: !3707, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 85, column: 10, scope: !3699)
!3722 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3721)
!3723 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3721)
!3724 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3721)
!3725 = !DILocation(line: 85, column: 3, scope: !3699)
!3726 = distinct !DISubprogram(name: "xmalloc", scope: !962, file: !962, line: 47, type: !3727, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!102, !104}
!3729 = !{!3730}
!3730 = !DILocalVariable(name: "s", arg: 1, scope: !3726, file: !962, line: 47, type: !104)
!3731 = !DILocation(line: 0, scope: !3726)
!3732 = !DILocation(line: 49, column: 25, scope: !3726)
!3733 = !DILocation(line: 0, scope: !3707, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 49, column: 10, scope: !3726)
!3735 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3734)
!3736 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3734)
!3737 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3734)
!3738 = !DILocation(line: 49, column: 3, scope: !3726)
!3739 = !DISubprogram(name: "malloc", scope: !1247, file: !1247, line: 540, type: !3727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3740 = distinct !DISubprogram(name: "ximalloc", scope: !962, file: !962, line: 53, type: !3741, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!102, !981}
!3743 = !{!3744}
!3744 = !DILocalVariable(name: "s", arg: 1, scope: !3740, file: !962, line: 53, type: !981)
!3745 = !DILocation(line: 0, scope: !3740)
!3746 = !DILocalVariable(name: "s", arg: 1, scope: !3747, file: !3748, line: 55, type: !981)
!3747 = distinct !DISubprogram(name: "imalloc", scope: !3748, file: !3748, line: 55, type: !3741, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3749)
!3748 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3749 = !{!3746}
!3750 = !DILocation(line: 0, scope: !3747, inlinedAt: !3751)
!3751 = distinct !DILocation(line: 55, column: 25, scope: !3740)
!3752 = !DILocation(line: 57, column: 26, scope: !3747, inlinedAt: !3751)
!3753 = !DILocation(line: 0, scope: !3707, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 55, column: 10, scope: !3740)
!3755 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3754)
!3756 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3754)
!3757 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3754)
!3758 = !DILocation(line: 55, column: 3, scope: !3740)
!3759 = distinct !DISubprogram(name: "xcharalloc", scope: !962, file: !962, line: 59, type: !3760, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3762)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!101, !104}
!3762 = !{!3763}
!3763 = !DILocalVariable(name: "n", arg: 1, scope: !3759, file: !962, line: 59, type: !104)
!3764 = !DILocation(line: 0, scope: !3759)
!3765 = !DILocation(line: 0, scope: !3726, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 61, column: 10, scope: !3759)
!3767 = !DILocation(line: 49, column: 25, scope: !3726, inlinedAt: !3766)
!3768 = !DILocation(line: 0, scope: !3707, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 49, column: 10, scope: !3726, inlinedAt: !3766)
!3770 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3769)
!3771 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3769)
!3772 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3769)
!3773 = !DILocation(line: 61, column: 3, scope: !3759)
!3774 = distinct !DISubprogram(name: "xrealloc", scope: !962, file: !962, line: 68, type: !3775, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3777)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{!102, !102, !104}
!3777 = !{!3778, !3779}
!3778 = !DILocalVariable(name: "p", arg: 1, scope: !3774, file: !962, line: 68, type: !102)
!3779 = !DILocalVariable(name: "s", arg: 2, scope: !3774, file: !962, line: 68, type: !104)
!3780 = !DILocation(line: 0, scope: !3774)
!3781 = !DILocalVariable(name: "ptr", arg: 1, scope: !3782, file: !3783, line: 2057, type: !102)
!3782 = distinct !DISubprogram(name: "rpl_realloc", scope: !3783, file: !3783, line: 2057, type: !3775, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3784)
!3783 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3784 = !{!3781, !3785}
!3785 = !DILocalVariable(name: "size", arg: 2, scope: !3782, file: !3783, line: 2057, type: !104)
!3786 = !DILocation(line: 0, scope: !3782, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 70, column: 25, scope: !3774)
!3788 = !DILocation(line: 2059, column: 24, scope: !3782, inlinedAt: !3787)
!3789 = !DILocation(line: 2059, column: 10, scope: !3782, inlinedAt: !3787)
!3790 = !DILocation(line: 0, scope: !3707, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 70, column: 10, scope: !3774)
!3792 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3791)
!3793 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3791)
!3794 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3791)
!3795 = !DILocation(line: 70, column: 3, scope: !3774)
!3796 = !DISubprogram(name: "realloc", scope: !1247, file: !1247, line: 551, type: !3775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3797 = distinct !DISubprogram(name: "xirealloc", scope: !962, file: !962, line: 74, type: !3798, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!102, !102, !981}
!3800 = !{!3801, !3802}
!3801 = !DILocalVariable(name: "p", arg: 1, scope: !3797, file: !962, line: 74, type: !102)
!3802 = !DILocalVariable(name: "s", arg: 2, scope: !3797, file: !962, line: 74, type: !981)
!3803 = !DILocation(line: 0, scope: !3797)
!3804 = !DILocalVariable(name: "p", arg: 1, scope: !3805, file: !3748, line: 66, type: !102)
!3805 = distinct !DISubprogram(name: "irealloc", scope: !3748, file: !3748, line: 66, type: !3798, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3806)
!3806 = !{!3804, !3807}
!3807 = !DILocalVariable(name: "s", arg: 2, scope: !3805, file: !3748, line: 66, type: !981)
!3808 = !DILocation(line: 0, scope: !3805, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 76, column: 25, scope: !3797)
!3810 = !DILocation(line: 0, scope: !3782, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 68, column: 26, scope: !3805, inlinedAt: !3809)
!3812 = !DILocation(line: 2059, column: 24, scope: !3782, inlinedAt: !3811)
!3813 = !DILocation(line: 2059, column: 10, scope: !3782, inlinedAt: !3811)
!3814 = !DILocation(line: 0, scope: !3707, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 76, column: 10, scope: !3797)
!3816 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3815)
!3817 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3815)
!3818 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3815)
!3819 = !DILocation(line: 76, column: 3, scope: !3797)
!3820 = distinct !DISubprogram(name: "xireallocarray", scope: !962, file: !962, line: 89, type: !3821, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!102, !102, !981, !981}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "p", arg: 1, scope: !3820, file: !962, line: 89, type: !102)
!3825 = !DILocalVariable(name: "n", arg: 2, scope: !3820, file: !962, line: 89, type: !981)
!3826 = !DILocalVariable(name: "s", arg: 3, scope: !3820, file: !962, line: 89, type: !981)
!3827 = !DILocation(line: 0, scope: !3820)
!3828 = !DILocalVariable(name: "p", arg: 1, scope: !3829, file: !3748, line: 98, type: !102)
!3829 = distinct !DISubprogram(name: "ireallocarray", scope: !3748, file: !3748, line: 98, type: !3821, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3830)
!3830 = !{!3828, !3831, !3832}
!3831 = !DILocalVariable(name: "n", arg: 2, scope: !3829, file: !3748, line: 98, type: !981)
!3832 = !DILocalVariable(name: "s", arg: 3, scope: !3829, file: !3748, line: 98, type: !981)
!3833 = !DILocation(line: 0, scope: !3829, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 91, column: 25, scope: !3820)
!3835 = !DILocation(line: 101, column: 13, scope: !3829, inlinedAt: !3834)
!3836 = !DILocation(line: 0, scope: !3707, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 91, column: 10, scope: !3820)
!3838 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3837)
!3839 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3837)
!3840 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3837)
!3841 = !DILocation(line: 91, column: 3, scope: !3820)
!3842 = distinct !DISubprogram(name: "xnmalloc", scope: !962, file: !962, line: 98, type: !3843, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!102, !104, !104}
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "n", arg: 1, scope: !3842, file: !962, line: 98, type: !104)
!3847 = !DILocalVariable(name: "s", arg: 2, scope: !3842, file: !962, line: 98, type: !104)
!3848 = !DILocation(line: 0, scope: !3842)
!3849 = !DILocation(line: 0, scope: !3699, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 100, column: 10, scope: !3842)
!3851 = !DILocation(line: 85, column: 25, scope: !3699, inlinedAt: !3850)
!3852 = !DILocation(line: 0, scope: !3707, inlinedAt: !3853)
!3853 = distinct !DILocation(line: 85, column: 10, scope: !3699, inlinedAt: !3850)
!3854 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3853)
!3855 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3853)
!3856 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3853)
!3857 = !DILocation(line: 100, column: 3, scope: !3842)
!3858 = distinct !DISubprogram(name: "xinmalloc", scope: !962, file: !962, line: 104, type: !3859, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3861)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!102, !981, !981}
!3861 = !{!3862, !3863}
!3862 = !DILocalVariable(name: "n", arg: 1, scope: !3858, file: !962, line: 104, type: !981)
!3863 = !DILocalVariable(name: "s", arg: 2, scope: !3858, file: !962, line: 104, type: !981)
!3864 = !DILocation(line: 0, scope: !3858)
!3865 = !DILocation(line: 0, scope: !3820, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 106, column: 10, scope: !3858)
!3867 = !DILocation(line: 0, scope: !3829, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 91, column: 25, scope: !3820, inlinedAt: !3866)
!3869 = !DILocation(line: 101, column: 13, scope: !3829, inlinedAt: !3868)
!3870 = !DILocation(line: 0, scope: !3707, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 91, column: 10, scope: !3820, inlinedAt: !3866)
!3872 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3871)
!3873 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3871)
!3874 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3871)
!3875 = !DILocation(line: 106, column: 3, scope: !3858)
!3876 = distinct !DISubprogram(name: "x2realloc", scope: !962, file: !962, line: 116, type: !3877, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3879)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!102, !102, !968}
!3879 = !{!3880, !3881}
!3880 = !DILocalVariable(name: "p", arg: 1, scope: !3876, file: !962, line: 116, type: !102)
!3881 = !DILocalVariable(name: "ps", arg: 2, scope: !3876, file: !962, line: 116, type: !968)
!3882 = !DILocation(line: 0, scope: !3876)
!3883 = !DILocation(line: 0, scope: !965, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 118, column: 10, scope: !3876)
!3885 = !DILocation(line: 178, column: 14, scope: !965, inlinedAt: !3884)
!3886 = !DILocation(line: 180, column: 9, scope: !3887, inlinedAt: !3884)
!3887 = distinct !DILexicalBlock(scope: !965, file: !962, line: 180, column: 7)
!3888 = !DILocation(line: 180, column: 7, scope: !965, inlinedAt: !3884)
!3889 = !DILocation(line: 182, column: 13, scope: !3890, inlinedAt: !3884)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !962, line: 182, column: 11)
!3891 = distinct !DILexicalBlock(scope: !3887, file: !962, line: 181, column: 5)
!3892 = !DILocation(line: 182, column: 11, scope: !3891, inlinedAt: !3884)
!3893 = !DILocation(line: 197, column: 11, scope: !3894, inlinedAt: !3884)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !962, line: 197, column: 11)
!3895 = distinct !DILexicalBlock(scope: !3887, file: !962, line: 195, column: 5)
!3896 = !DILocation(line: 197, column: 11, scope: !3895, inlinedAt: !3884)
!3897 = !DILocation(line: 198, column: 9, scope: !3894, inlinedAt: !3884)
!3898 = !DILocation(line: 0, scope: !3699, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 201, column: 7, scope: !965, inlinedAt: !3884)
!3900 = !DILocation(line: 85, column: 25, scope: !3699, inlinedAt: !3899)
!3901 = !DILocation(line: 0, scope: !3707, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 85, column: 10, scope: !3699, inlinedAt: !3899)
!3903 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3902)
!3904 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3902)
!3905 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3902)
!3906 = !DILocation(line: 202, column: 7, scope: !965, inlinedAt: !3884)
!3907 = !DILocation(line: 118, column: 3, scope: !3876)
!3908 = !DILocation(line: 0, scope: !965)
!3909 = !DILocation(line: 178, column: 14, scope: !965)
!3910 = !DILocation(line: 180, column: 9, scope: !3887)
!3911 = !DILocation(line: 180, column: 7, scope: !965)
!3912 = !DILocation(line: 182, column: 13, scope: !3890)
!3913 = !DILocation(line: 182, column: 11, scope: !3891)
!3914 = !DILocation(line: 190, column: 30, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3890, file: !962, line: 183, column: 9)
!3916 = !DILocation(line: 191, column: 16, scope: !3915)
!3917 = !DILocation(line: 191, column: 13, scope: !3915)
!3918 = !DILocation(line: 192, column: 9, scope: !3915)
!3919 = !DILocation(line: 197, column: 11, scope: !3894)
!3920 = !DILocation(line: 197, column: 11, scope: !3895)
!3921 = !DILocation(line: 198, column: 9, scope: !3894)
!3922 = !DILocation(line: 0, scope: !3699, inlinedAt: !3923)
!3923 = distinct !DILocation(line: 201, column: 7, scope: !965)
!3924 = !DILocation(line: 85, column: 25, scope: !3699, inlinedAt: !3923)
!3925 = !DILocation(line: 0, scope: !3707, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 85, column: 10, scope: !3699, inlinedAt: !3923)
!3927 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3926)
!3928 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3926)
!3929 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3926)
!3930 = !DILocation(line: 202, column: 7, scope: !965)
!3931 = !DILocation(line: 203, column: 3, scope: !965)
!3932 = !DILocation(line: 0, scope: !977)
!3933 = !DILocation(line: 230, column: 14, scope: !977)
!3934 = !DILocation(line: 238, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !977, file: !962, line: 238, column: 7)
!3936 = !DILocation(line: 238, column: 7, scope: !977)
!3937 = !DILocation(line: 240, column: 9, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !977, file: !962, line: 240, column: 7)
!3939 = !DILocation(line: 240, column: 18, scope: !3938)
!3940 = !DILocation(line: 253, column: 8, scope: !977)
!3941 = !DILocation(line: 256, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !977, file: !962, line: 256, column: 7)
!3943 = !DILocation(line: 256, column: 7, scope: !977)
!3944 = !DILocation(line: 258, column: 27, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3942, file: !962, line: 257, column: 5)
!3946 = !DILocation(line: 259, column: 50, scope: !3945)
!3947 = !DILocation(line: 259, column: 32, scope: !3945)
!3948 = !DILocation(line: 260, column: 5, scope: !3945)
!3949 = !DILocation(line: 262, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !977, file: !962, line: 262, column: 7)
!3951 = !DILocation(line: 262, column: 7, scope: !977)
!3952 = !DILocation(line: 263, column: 9, scope: !3950)
!3953 = !DILocation(line: 263, column: 5, scope: !3950)
!3954 = !DILocation(line: 264, column: 9, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !977, file: !962, line: 264, column: 7)
!3956 = !DILocation(line: 264, column: 14, scope: !3955)
!3957 = !DILocation(line: 265, column: 7, scope: !3955)
!3958 = !DILocation(line: 265, column: 11, scope: !3955)
!3959 = !DILocation(line: 266, column: 11, scope: !3955)
!3960 = !DILocation(line: 267, column: 14, scope: !3955)
!3961 = !DILocation(line: 264, column: 7, scope: !977)
!3962 = !DILocation(line: 268, column: 5, scope: !3955)
!3963 = !DILocation(line: 0, scope: !3774, inlinedAt: !3964)
!3964 = distinct !DILocation(line: 269, column: 8, scope: !977)
!3965 = !DILocation(line: 0, scope: !3782, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 70, column: 25, scope: !3774, inlinedAt: !3964)
!3967 = !DILocation(line: 2059, column: 24, scope: !3782, inlinedAt: !3966)
!3968 = !DILocation(line: 2059, column: 10, scope: !3782, inlinedAt: !3966)
!3969 = !DILocation(line: 0, scope: !3707, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 70, column: 10, scope: !3774, inlinedAt: !3964)
!3971 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3970)
!3972 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3970)
!3973 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3970)
!3974 = !DILocation(line: 270, column: 7, scope: !977)
!3975 = !DILocation(line: 271, column: 3, scope: !977)
!3976 = distinct !DISubprogram(name: "xzalloc", scope: !962, file: !962, line: 279, type: !3727, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3977)
!3977 = !{!3978}
!3978 = !DILocalVariable(name: "s", arg: 1, scope: !3976, file: !962, line: 279, type: !104)
!3979 = !DILocation(line: 0, scope: !3976)
!3980 = !DILocalVariable(name: "n", arg: 1, scope: !3981, file: !962, line: 294, type: !104)
!3981 = distinct !DISubprogram(name: "xcalloc", scope: !962, file: !962, line: 294, type: !3843, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !3982)
!3982 = !{!3980, !3983}
!3983 = !DILocalVariable(name: "s", arg: 2, scope: !3981, file: !962, line: 294, type: !104)
!3984 = !DILocation(line: 0, scope: !3981, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 281, column: 10, scope: !3976)
!3986 = !DILocation(line: 296, column: 25, scope: !3981, inlinedAt: !3985)
!3987 = !DILocation(line: 0, scope: !3707, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 296, column: 10, scope: !3981, inlinedAt: !3985)
!3989 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3988)
!3990 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3988)
!3991 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3988)
!3992 = !DILocation(line: 281, column: 3, scope: !3976)
!3993 = !DISubprogram(name: "calloc", scope: !1247, file: !1247, line: 543, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3994 = !DILocation(line: 0, scope: !3981)
!3995 = !DILocation(line: 296, column: 25, scope: !3981)
!3996 = !DILocation(line: 0, scope: !3707, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 296, column: 10, scope: !3981)
!3998 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !3997)
!3999 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !3997)
!4000 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !3997)
!4001 = !DILocation(line: 296, column: 3, scope: !3981)
!4002 = distinct !DISubprogram(name: "xizalloc", scope: !962, file: !962, line: 285, type: !3741, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4003)
!4003 = !{!4004}
!4004 = !DILocalVariable(name: "s", arg: 1, scope: !4002, file: !962, line: 285, type: !981)
!4005 = !DILocation(line: 0, scope: !4002)
!4006 = !DILocalVariable(name: "n", arg: 1, scope: !4007, file: !962, line: 300, type: !981)
!4007 = distinct !DISubprogram(name: "xicalloc", scope: !962, file: !962, line: 300, type: !3859, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4008)
!4008 = !{!4006, !4009}
!4009 = !DILocalVariable(name: "s", arg: 2, scope: !4007, file: !962, line: 300, type: !981)
!4010 = !DILocation(line: 0, scope: !4007, inlinedAt: !4011)
!4011 = distinct !DILocation(line: 287, column: 10, scope: !4002)
!4012 = !DILocalVariable(name: "n", arg: 1, scope: !4013, file: !3748, line: 77, type: !981)
!4013 = distinct !DISubprogram(name: "icalloc", scope: !3748, file: !3748, line: 77, type: !3859, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4014)
!4014 = !{!4012, !4015}
!4015 = !DILocalVariable(name: "s", arg: 2, scope: !4013, file: !3748, line: 77, type: !981)
!4016 = !DILocation(line: 0, scope: !4013, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 302, column: 25, scope: !4007, inlinedAt: !4011)
!4018 = !DILocation(line: 91, column: 10, scope: !4013, inlinedAt: !4017)
!4019 = !DILocation(line: 0, scope: !3707, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 302, column: 10, scope: !4007, inlinedAt: !4011)
!4021 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4020)
!4022 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4020)
!4023 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4020)
!4024 = !DILocation(line: 287, column: 3, scope: !4002)
!4025 = !DILocation(line: 0, scope: !4007)
!4026 = !DILocation(line: 0, scope: !4013, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 302, column: 25, scope: !4007)
!4028 = !DILocation(line: 91, column: 10, scope: !4013, inlinedAt: !4027)
!4029 = !DILocation(line: 0, scope: !3707, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 302, column: 10, scope: !4007)
!4031 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4030)
!4033 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4030)
!4034 = !DILocation(line: 302, column: 3, scope: !4007)
!4035 = distinct !DISubprogram(name: "xmemdup", scope: !962, file: !962, line: 310, type: !4036, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!102, !1271, !104}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "p", arg: 1, scope: !4035, file: !962, line: 310, type: !1271)
!4040 = !DILocalVariable(name: "s", arg: 2, scope: !4035, file: !962, line: 310, type: !104)
!4041 = !DILocation(line: 0, scope: !4035)
!4042 = !DILocation(line: 0, scope: !3726, inlinedAt: !4043)
!4043 = distinct !DILocation(line: 312, column: 18, scope: !4035)
!4044 = !DILocation(line: 49, column: 25, scope: !3726, inlinedAt: !4043)
!4045 = !DILocation(line: 0, scope: !3707, inlinedAt: !4046)
!4046 = distinct !DILocation(line: 49, column: 10, scope: !3726, inlinedAt: !4043)
!4047 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4046)
!4048 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4046)
!4049 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4046)
!4050 = !DILocalVariable(name: "__dest", arg: 1, scope: !4051, file: !2170, line: 26, type: !4054)
!4051 = distinct !DISubprogram(name: "memcpy", scope: !2170, file: !2170, line: 26, type: !4052, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4055)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!102, !4054, !1270, !104}
!4054 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!4055 = !{!4050, !4056, !4057}
!4056 = !DILocalVariable(name: "__src", arg: 2, scope: !4051, file: !2170, line: 26, type: !1270)
!4057 = !DILocalVariable(name: "__len", arg: 3, scope: !4051, file: !2170, line: 26, type: !104)
!4058 = !DILocation(line: 0, scope: !4051, inlinedAt: !4059)
!4059 = distinct !DILocation(line: 312, column: 10, scope: !4035)
!4060 = !DILocation(line: 29, column: 10, scope: !4051, inlinedAt: !4059)
!4061 = !DILocation(line: 312, column: 3, scope: !4035)
!4062 = distinct !DISubprogram(name: "ximemdup", scope: !962, file: !962, line: 316, type: !4063, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!102, !1271, !981}
!4065 = !{!4066, !4067}
!4066 = !DILocalVariable(name: "p", arg: 1, scope: !4062, file: !962, line: 316, type: !1271)
!4067 = !DILocalVariable(name: "s", arg: 2, scope: !4062, file: !962, line: 316, type: !981)
!4068 = !DILocation(line: 0, scope: !4062)
!4069 = !DILocation(line: 0, scope: !3740, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 318, column: 18, scope: !4062)
!4071 = !DILocation(line: 0, scope: !3747, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 55, column: 25, scope: !3740, inlinedAt: !4070)
!4073 = !DILocation(line: 57, column: 26, scope: !3747, inlinedAt: !4072)
!4074 = !DILocation(line: 0, scope: !3707, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 55, column: 10, scope: !3740, inlinedAt: !4070)
!4076 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4075)
!4077 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4075)
!4078 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4075)
!4079 = !DILocation(line: 0, scope: !4051, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 318, column: 10, scope: !4062)
!4081 = !DILocation(line: 29, column: 10, scope: !4051, inlinedAt: !4080)
!4082 = !DILocation(line: 318, column: 3, scope: !4062)
!4083 = distinct !DISubprogram(name: "ximemdup0", scope: !962, file: !962, line: 325, type: !4084, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4086)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!101, !1271, !981}
!4086 = !{!4087, !4088, !4089}
!4087 = !DILocalVariable(name: "p", arg: 1, scope: !4083, file: !962, line: 325, type: !1271)
!4088 = !DILocalVariable(name: "s", arg: 2, scope: !4083, file: !962, line: 325, type: !981)
!4089 = !DILocalVariable(name: "result", scope: !4083, file: !962, line: 327, type: !101)
!4090 = !DILocation(line: 0, scope: !4083)
!4091 = !DILocation(line: 327, column: 30, scope: !4083)
!4092 = !DILocation(line: 0, scope: !3740, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 327, column: 18, scope: !4083)
!4094 = !DILocation(line: 0, scope: !3747, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 55, column: 25, scope: !3740, inlinedAt: !4093)
!4096 = !DILocation(line: 57, column: 26, scope: !3747, inlinedAt: !4095)
!4097 = !DILocation(line: 0, scope: !3707, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 55, column: 10, scope: !3740, inlinedAt: !4093)
!4099 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4098)
!4100 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4098)
!4101 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4098)
!4102 = !DILocation(line: 328, column: 3, scope: !4083)
!4103 = !DILocation(line: 328, column: 13, scope: !4083)
!4104 = !DILocation(line: 0, scope: !4051, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 329, column: 10, scope: !4083)
!4106 = !DILocation(line: 29, column: 10, scope: !4051, inlinedAt: !4105)
!4107 = !DILocation(line: 329, column: 3, scope: !4083)
!4108 = distinct !DISubprogram(name: "xstrdup", scope: !962, file: !962, line: 335, type: !1249, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !961, retainedNodes: !4109)
!4109 = !{!4110}
!4110 = !DILocalVariable(name: "string", arg: 1, scope: !4108, file: !962, line: 335, type: !107)
!4111 = !DILocation(line: 0, scope: !4108)
!4112 = !DILocation(line: 337, column: 27, scope: !4108)
!4113 = !DILocation(line: 337, column: 43, scope: !4108)
!4114 = !DILocation(line: 0, scope: !4035, inlinedAt: !4115)
!4115 = distinct !DILocation(line: 337, column: 10, scope: !4108)
!4116 = !DILocation(line: 0, scope: !3726, inlinedAt: !4117)
!4117 = distinct !DILocation(line: 312, column: 18, scope: !4035, inlinedAt: !4115)
!4118 = !DILocation(line: 49, column: 25, scope: !3726, inlinedAt: !4117)
!4119 = !DILocation(line: 0, scope: !3707, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 49, column: 10, scope: !3726, inlinedAt: !4117)
!4121 = !DILocation(line: 39, column: 8, scope: !3714, inlinedAt: !4120)
!4122 = !DILocation(line: 39, column: 7, scope: !3707, inlinedAt: !4120)
!4123 = !DILocation(line: 40, column: 5, scope: !3714, inlinedAt: !4120)
!4124 = !DILocation(line: 0, scope: !4051, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 312, column: 10, scope: !4035, inlinedAt: !4115)
!4126 = !DILocation(line: 29, column: 10, scope: !4051, inlinedAt: !4125)
!4127 = !DILocation(line: 337, column: 3, scope: !4108)
!4128 = distinct !DISubprogram(name: "xalloc_die", scope: !696, file: !696, line: 32, type: !417, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4129)
!4129 = !{!4130}
!4130 = !DILocalVariable(name: "__errstatus", scope: !4131, file: !696, line: 34, type: !4132)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !696, line: 34, column: 3)
!4132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!4133 = !DILocation(line: 34, column: 3, scope: !4131)
!4134 = !DILocation(line: 0, scope: !4131)
!4135 = !DILocation(line: 40, column: 3, scope: !4128)
!4136 = distinct !DISubprogram(name: "xnumtoumax", scope: !703, file: !703, line: 42, type: !4137, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4139)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!1018, !107, !70, !1018, !1018, !107, !107, !70, !70}
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4152, !4153, !4154}
!4140 = !DILocalVariable(name: "n_str", arg: 1, scope: !4136, file: !703, line: 42, type: !107)
!4141 = !DILocalVariable(name: "base", arg: 2, scope: !4136, file: !703, line: 42, type: !70)
!4142 = !DILocalVariable(name: "min", arg: 3, scope: !4136, file: !703, line: 42, type: !1018)
!4143 = !DILocalVariable(name: "max", arg: 4, scope: !4136, file: !703, line: 42, type: !1018)
!4144 = !DILocalVariable(name: "suffixes", arg: 5, scope: !4136, file: !703, line: 43, type: !107)
!4145 = !DILocalVariable(name: "err", arg: 6, scope: !4136, file: !703, line: 43, type: !107)
!4146 = !DILocalVariable(name: "err_exit", arg: 7, scope: !4136, file: !703, line: 43, type: !70)
!4147 = !DILocalVariable(name: "flags", arg: 8, scope: !4136, file: !703, line: 44, type: !70)
!4148 = !DILocalVariable(name: "tnum", scope: !4136, file: !703, line: 46, type: !1018)
!4149 = !DILocalVariable(name: "r", scope: !4136, file: !703, line: 46, type: !1018)
!4150 = !DILocalVariable(name: "s_err", scope: !4136, file: !703, line: 47, type: !4151)
!4151 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1002, line: 43, baseType: !1001)
!4152 = !DILocalVariable(name: "overflow_errno", scope: !4136, file: !703, line: 50, type: !70)
!4153 = !DILocalVariable(name: "e", scope: !4136, file: !703, line: 75, type: !70)
!4154 = !DILocalVariable(name: "__errstatus", scope: !4155, file: !703, line: 80, type: !4132)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !703, line: 80, column: 5)
!4156 = distinct !DILexicalBlock(scope: !4136, file: !703, line: 77, column: 7)
!4157 = distinct !DIAssignID()
!4158 = !DILocation(line: 0, scope: !4136)
!4159 = !DILocation(line: 46, column: 3, scope: !4136)
!4160 = !DILocation(line: 47, column: 24, scope: !4136)
!4161 = !DILocation(line: 52, column: 13, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4136, file: !703, line: 52, column: 7)
!4163 = !DILocation(line: 52, column: 7, scope: !4136)
!4164 = !DILocation(line: 54, column: 11, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4166, file: !703, line: 54, column: 11)
!4166 = distinct !DILexicalBlock(scope: !4162, file: !703, line: 53, column: 5)
!4167 = !DILocation(line: 54, column: 16, scope: !4165)
!4168 = !DILocation(line: 54, column: 11, scope: !4166)
!4169 = !DILocation(line: 57, column: 34, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4165, file: !703, line: 55, column: 9)
!4171 = !DILocation(line: 57, column: 28, scope: !4170)
!4172 = !DILocation(line: 58, column: 15, scope: !4170)
!4173 = !DILocation(line: 60, column: 9, scope: !4170)
!4174 = !DILocation(line: 61, column: 20, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4165, file: !703, line: 61, column: 16)
!4176 = !DILocation(line: 61, column: 16, scope: !4165)
!4177 = !DILocation(line: 64, column: 34, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4175, file: !703, line: 62, column: 9)
!4179 = !DILocation(line: 64, column: 28, scope: !4178)
!4180 = !DILocation(line: 65, column: 15, scope: !4178)
!4181 = !DILocation(line: 67, column: 9, scope: !4178)
!4182 = !DILocation(line: 75, column: 17, scope: !4136)
!4183 = !DILocation(line: 75, column: 11, scope: !4136)
!4184 = !DILocation(line: 78, column: 10, scope: !4156)
!4185 = !DILocation(line: 77, column: 16, scope: !4156)
!4186 = !DILocation(line: 79, column: 14, scope: !4156)
!4187 = !DILocation(line: 80, column: 5, scope: !4156)
!4188 = !DILocation(line: 82, column: 3, scope: !4136)
!4189 = !DILocation(line: 82, column: 9, scope: !4136)
!4190 = !DILocation(line: 84, column: 1, scope: !4136)
!4191 = !DILocation(line: 83, column: 3, scope: !4136)
!4192 = distinct !DISubprogram(name: "xdectoumax", scope: !703, file: !703, line: 92, type: !4193, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !998, retainedNodes: !4195)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{!1018, !107, !1018, !1018, !107, !107, !70}
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201}
!4196 = !DILocalVariable(name: "n_str", arg: 1, scope: !4192, file: !703, line: 92, type: !107)
!4197 = !DILocalVariable(name: "min", arg: 2, scope: !4192, file: !703, line: 92, type: !1018)
!4198 = !DILocalVariable(name: "max", arg: 3, scope: !4192, file: !703, line: 92, type: !1018)
!4199 = !DILocalVariable(name: "suffixes", arg: 4, scope: !4192, file: !703, line: 93, type: !107)
!4200 = !DILocalVariable(name: "err", arg: 5, scope: !4192, file: !703, line: 93, type: !107)
!4201 = !DILocalVariable(name: "err_exit", arg: 6, scope: !4192, file: !703, line: 93, type: !70)
!4202 = distinct !DIAssignID()
!4203 = !DILocation(line: 0, scope: !4192)
!4204 = !DILocation(line: 0, scope: !4136, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 95, column: 10, scope: !4192)
!4206 = !DILocation(line: 46, column: 3, scope: !4136, inlinedAt: !4205)
!4207 = !DILocation(line: 47, column: 24, scope: !4136, inlinedAt: !4205)
!4208 = !DILocation(line: 0, scope: !4165, inlinedAt: !4205)
!4209 = !DILocation(line: 52, column: 13, scope: !4162, inlinedAt: !4205)
!4210 = !DILocation(line: 52, column: 7, scope: !4136, inlinedAt: !4205)
!4211 = !DILocation(line: 54, column: 11, scope: !4165, inlinedAt: !4205)
!4212 = !DILocation(line: 54, column: 16, scope: !4165, inlinedAt: !4205)
!4213 = !DILocation(line: 54, column: 11, scope: !4166, inlinedAt: !4205)
!4214 = !DILocation(line: 75, column: 17, scope: !4136, inlinedAt: !4205)
!4215 = !DILocation(line: 75, column: 11, scope: !4136, inlinedAt: !4205)
!4216 = !DILocation(line: 77, column: 16, scope: !4156, inlinedAt: !4205)
!4217 = !DILocation(line: 78, column: 10, scope: !4156, inlinedAt: !4205)
!4218 = !DILocation(line: 80, column: 5, scope: !4156, inlinedAt: !4205)
!4219 = !DILocation(line: 82, column: 3, scope: !4136, inlinedAt: !4205)
!4220 = !DILocation(line: 82, column: 9, scope: !4136, inlinedAt: !4205)
!4221 = !DILocation(line: 84, column: 1, scope: !4136, inlinedAt: !4205)
!4222 = !DILocation(line: 95, column: 3, scope: !4192)
!4223 = distinct !DISubprogram(name: "xstrtoumax", scope: !4224, file: !4224, line: 71, type: !4225, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4229)
!4224 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!4227, !107, !1276, !70, !4228, !107}
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !1016, line: 43, baseType: !1015)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!4229 = !{!4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4240, !4241, !4242, !4243, !4246, !4247}
!4230 = !DILocalVariable(name: "nptr", arg: 1, scope: !4223, file: !4224, line: 71, type: !107)
!4231 = !DILocalVariable(name: "endptr", arg: 2, scope: !4223, file: !4224, line: 71, type: !1276)
!4232 = !DILocalVariable(name: "base", arg: 3, scope: !4223, file: !4224, line: 71, type: !70)
!4233 = !DILocalVariable(name: "val", arg: 4, scope: !4223, file: !4224, line: 72, type: !4228)
!4234 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4223, file: !4224, line: 72, type: !107)
!4235 = !DILocalVariable(name: "t_ptr", scope: !4223, file: !4224, line: 74, type: !101)
!4236 = !DILocalVariable(name: "p", scope: !4223, file: !4224, line: 75, type: !1276)
!4237 = !DILocalVariable(name: "q", scope: !4238, file: !4224, line: 79, type: !107)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !4224, line: 78, column: 5)
!4239 = distinct !DILexicalBlock(scope: !4223, file: !4224, line: 77, column: 7)
!4240 = !DILocalVariable(name: "ch", scope: !4238, file: !4224, line: 80, type: !109)
!4241 = !DILocalVariable(name: "tmp", scope: !4223, file: !4224, line: 91, type: !1018)
!4242 = !DILocalVariable(name: "err", scope: !4223, file: !4224, line: 92, type: !4227)
!4243 = !DILocalVariable(name: "xbase", scope: !4244, file: !4224, line: 126, type: !70)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !4224, line: 119, column: 5)
!4245 = distinct !DILexicalBlock(scope: !4223, file: !4224, line: 118, column: 7)
!4246 = !DILocalVariable(name: "suffixes", scope: !4244, file: !4224, line: 127, type: !70)
!4247 = !DILocalVariable(name: "overflow", scope: !4244, file: !4224, line: 156, type: !4227)
!4248 = distinct !DIAssignID()
!4249 = !DILocation(line: 0, scope: !4223)
!4250 = !DILocation(line: 74, column: 3, scope: !4223)
!4251 = !DILocation(line: 75, column: 14, scope: !4223)
!4252 = !DILocation(line: 0, scope: !4238)
!4253 = !DILocation(line: 81, column: 7, scope: !4238)
!4254 = !DILocation(line: 81, column: 14, scope: !4238)
!4255 = !DILocation(line: 82, column: 15, scope: !4238)
!4256 = distinct !{!4256, !4253, !4257, !1170}
!4257 = !DILocation(line: 82, column: 17, scope: !4238)
!4258 = !DILocation(line: 83, column: 14, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4238, file: !4224, line: 83, column: 11)
!4260 = !DILocation(line: 83, column: 11, scope: !4238)
!4261 = !DILocation(line: 85, column: 14, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4259, file: !4224, line: 84, column: 9)
!4263 = !DILocation(line: 90, column: 3, scope: !4223)
!4264 = !DILocation(line: 90, column: 9, scope: !4223)
!4265 = !DILocation(line: 91, column: 20, scope: !4223)
!4266 = !DILocation(line: 94, column: 7, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4223, file: !4224, line: 94, column: 7)
!4268 = !DILocation(line: 94, column: 10, scope: !4267)
!4269 = !DILocation(line: 94, column: 7, scope: !4223)
!4270 = !DILocation(line: 98, column: 14, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4272, file: !4224, line: 98, column: 11)
!4272 = distinct !DILexicalBlock(scope: !4267, file: !4224, line: 95, column: 5)
!4273 = !DILocation(line: 98, column: 29, scope: !4271)
!4274 = !DILocation(line: 98, column: 32, scope: !4271)
!4275 = !DILocation(line: 98, column: 38, scope: !4271)
!4276 = !DILocation(line: 98, column: 41, scope: !4271)
!4277 = !DILocation(line: 98, column: 11, scope: !4272)
!4278 = !DILocation(line: 102, column: 12, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4267, file: !4224, line: 102, column: 12)
!4280 = !DILocation(line: 102, column: 12, scope: !4267)
!4281 = !DILocation(line: 107, column: 5, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4279, file: !4224, line: 103, column: 5)
!4283 = !DILocation(line: 112, column: 8, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4223, file: !4224, line: 112, column: 7)
!4285 = !DILocation(line: 112, column: 7, scope: !4223)
!4286 = !DILocation(line: 114, column: 12, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !4224, line: 113, column: 5)
!4288 = !DILocation(line: 115, column: 7, scope: !4287)
!4289 = !DILocation(line: 118, column: 7, scope: !4245)
!4290 = !DILocation(line: 118, column: 11, scope: !4245)
!4291 = !DILocation(line: 118, column: 7, scope: !4223)
!4292 = !DILocation(line: 120, column: 12, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4244, file: !4224, line: 120, column: 11)
!4294 = !DILocation(line: 120, column: 11, scope: !4244)
!4295 = !DILocation(line: 122, column: 16, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4293, file: !4224, line: 121, column: 9)
!4297 = !DILocation(line: 123, column: 22, scope: !4296)
!4298 = !DILocation(line: 123, column: 11, scope: !4296)
!4299 = !DILocation(line: 0, scope: !4244)
!4300 = !DILocation(line: 128, column: 7, scope: !4244)
!4301 = !DILocation(line: 140, column: 15, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !4224, line: 140, column: 15)
!4303 = distinct !DILexicalBlock(scope: !4244, file: !4224, line: 129, column: 9)
!4304 = !DILocation(line: 140, column: 15, scope: !4303)
!4305 = !DILocation(line: 141, column: 21, scope: !4302)
!4306 = !DILocation(line: 141, column: 13, scope: !4302)
!4307 = !DILocation(line: 144, column: 21, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4309, file: !4224, line: 144, column: 21)
!4309 = distinct !DILexicalBlock(scope: !4302, file: !4224, line: 142, column: 15)
!4310 = !DILocation(line: 144, column: 29, scope: !4308)
!4311 = !DILocation(line: 144, column: 21, scope: !4309)
!4312 = !DILocation(line: 152, column: 17, scope: !4309)
!4313 = !DILocation(line: 157, column: 7, scope: !4244)
!4314 = !DILocalVariable(name: "err", scope: !4315, file: !4224, line: 64, type: !4227)
!4315 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4224, file: !4224, line: 62, type: !4316, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4318)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!4227, !4228, !70, !70}
!4318 = !{!4319, !4320, !4321, !4314}
!4319 = !DILocalVariable(name: "x", arg: 1, scope: !4315, file: !4224, line: 62, type: !4228)
!4320 = !DILocalVariable(name: "base", arg: 2, scope: !4315, file: !4224, line: 62, type: !70)
!4321 = !DILocalVariable(name: "power", arg: 3, scope: !4315, file: !4224, line: 62, type: !70)
!4322 = !DILocation(line: 0, scope: !4315, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 219, column: 22, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4244, file: !4224, line: 158, column: 9)
!4325 = !DILocalVariable(name: "x", arg: 1, scope: !4326, file: !4224, line: 47, type: !4228)
!4326 = distinct !DISubprogram(name: "bkm_scale", scope: !4224, file: !4224, line: 47, type: !4327, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!4227, !4228, !70}
!4329 = !{!4325, !4330, !4331}
!4330 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4326, file: !4224, line: 47, type: !70)
!4331 = !DILocalVariable(name: "scaled", scope: !4326, file: !4224, line: 49, type: !1018)
!4332 = !DILocation(line: 0, scope: !4326, inlinedAt: !4333)
!4333 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4323)
!4334 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4333)
!4335 = distinct !DILexicalBlock(scope: !4326, file: !4224, line: 50, column: 7)
!4336 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4333)
!4337 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4323)
!4338 = !DILocation(line: 227, column: 11, scope: !4244)
!4339 = !DILocation(line: 0, scope: !4315, inlinedAt: !4340)
!4340 = distinct !DILocation(line: 215, column: 22, scope: !4324)
!4341 = !DILocation(line: 0, scope: !4326, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4340)
!4343 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4342)
!4344 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4342)
!4345 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4340)
!4346 = !DILocation(line: 0, scope: !4315, inlinedAt: !4347)
!4347 = distinct !DILocation(line: 202, column: 22, scope: !4324)
!4348 = !DILocation(line: 0, scope: !4326, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4347)
!4350 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4349)
!4351 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4349)
!4352 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4347)
!4353 = !DILocation(line: 0, scope: !4315, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 198, column: 22, scope: !4324)
!4355 = !DILocation(line: 0, scope: !4326, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4354)
!4357 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4356)
!4358 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4356)
!4359 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4354)
!4360 = !DILocation(line: 0, scope: !4315, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 194, column: 22, scope: !4324)
!4362 = !DILocation(line: 0, scope: !4326, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4361)
!4364 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4363)
!4365 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4363)
!4366 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4361)
!4367 = !DILocation(line: 0, scope: !4315, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 175, column: 22, scope: !4324)
!4369 = !DILocation(line: 0, scope: !4326, inlinedAt: !4370)
!4370 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4368)
!4371 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4370)
!4372 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4370)
!4373 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4368)
!4374 = !DILocation(line: 0, scope: !4326, inlinedAt: !4375)
!4375 = distinct !DILocation(line: 160, column: 22, scope: !4324)
!4376 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4375)
!4377 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4375)
!4378 = !DILocation(line: 161, column: 11, scope: !4324)
!4379 = !DILocation(line: 0, scope: !4326, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 167, column: 22, scope: !4324)
!4381 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4380)
!4382 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4380)
!4383 = !DILocation(line: 168, column: 11, scope: !4324)
!4384 = !DILocation(line: 0, scope: !4315, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 180, column: 22, scope: !4324)
!4386 = !DILocation(line: 0, scope: !4326, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4385)
!4388 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4387)
!4389 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4387)
!4390 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4385)
!4391 = !DILocation(line: 0, scope: !4315, inlinedAt: !4392)
!4392 = distinct !DILocation(line: 185, column: 22, scope: !4324)
!4393 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4394)
!4394 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4392)
!4395 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4394)
!4396 = !DILocation(line: 0, scope: !4326, inlinedAt: !4394)
!4397 = !DILocation(line: 0, scope: !4315, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 190, column: 22, scope: !4324)
!4399 = !DILocation(line: 0, scope: !4326, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4398)
!4401 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4400)
!4402 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4400)
!4403 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4398)
!4404 = !DILocation(line: 0, scope: !4315, inlinedAt: !4405)
!4405 = distinct !DILocation(line: 207, column: 22, scope: !4324)
!4406 = !DILocation(line: 0, scope: !4326, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 66, column: 12, scope: !4315, inlinedAt: !4405)
!4408 = !DILocation(line: 50, column: 7, scope: !4335, inlinedAt: !4407)
!4409 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4407)
!4410 = !DILocation(line: 66, column: 9, scope: !4315, inlinedAt: !4405)
!4411 = !DILocation(line: 0, scope: !4326, inlinedAt: !4412)
!4412 = distinct !DILocation(line: 211, column: 22, scope: !4324)
!4413 = !DILocation(line: 50, column: 7, scope: !4326, inlinedAt: !4412)
!4414 = !DILocation(line: 212, column: 11, scope: !4324)
!4415 = !DILocation(line: 0, scope: !4324)
!4416 = !DILocation(line: 228, column: 10, scope: !4244)
!4417 = !DILocation(line: 229, column: 11, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4244, file: !4224, line: 229, column: 11)
!4419 = !DILocation(line: 229, column: 11, scope: !4244)
!4420 = !DILocation(line: 223, column: 16, scope: !4324)
!4421 = !DILocation(line: 224, column: 22, scope: !4324)
!4422 = !DILocation(line: 100, column: 11, scope: !4272)
!4423 = !DILocation(line: 92, column: 16, scope: !4223)
!4424 = !DILocation(line: 233, column: 8, scope: !4223)
!4425 = !DILocation(line: 234, column: 3, scope: !4223)
!4426 = !DILocation(line: 235, column: 1, scope: !4223)
!4427 = !DISubprogram(name: "strtoumax", scope: !4428, file: !4428, line: 301, type: !4429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4428 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!1018, !1113, !2006, !70}
!4431 = distinct !DISubprogram(name: "rpl_fopen", scope: !1022, file: !1022, line: 46, type: !4432, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4468)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!4434, !107, !107}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4437)
!4437 = !{!4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4436, file: !165, line: 51, baseType: !70, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4436, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4436, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4436, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4436, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4436, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4436, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4436, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4436, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4436, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4436, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4436, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4436, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4436, file: !165, line: 70, baseType: !4452, size: 64, offset: 832)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4436, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4436, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4436, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4436, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4436, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4436, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4436, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4436, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4436, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4436, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4436, file: !165, line: 93, baseType: !4452, size: 64, offset: 1344)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4436, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4436, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4436, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4436, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474, !4478, !4480, !4481, !4486, !4489, !4490}
!4469 = !DILocalVariable(name: "filename", arg: 1, scope: !4431, file: !1022, line: 46, type: !107)
!4470 = !DILocalVariable(name: "mode", arg: 2, scope: !4431, file: !1022, line: 46, type: !107)
!4471 = !DILocalVariable(name: "open_direction", scope: !4431, file: !1022, line: 54, type: !70)
!4472 = !DILocalVariable(name: "open_flags", scope: !4431, file: !1022, line: 55, type: !70)
!4473 = !DILocalVariable(name: "open_flags_gnu", scope: !4431, file: !1022, line: 57, type: !148)
!4474 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4431, file: !1022, line: 59, type: !4475)
!4475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4476)
!4476 = !{!4477}
!4477 = !DISubrange(count: 81)
!4478 = !DILocalVariable(name: "p", scope: !4479, file: !1022, line: 62, type: !107)
!4479 = distinct !DILexicalBlock(scope: !4431, file: !1022, line: 61, column: 3)
!4480 = !DILocalVariable(name: "q", scope: !4479, file: !1022, line: 64, type: !101)
!4481 = !DILocalVariable(name: "len", scope: !4482, file: !1022, line: 128, type: !104)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !1022, line: 127, column: 9)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !1022, line: 68, column: 7)
!4484 = distinct !DILexicalBlock(scope: !4485, file: !1022, line: 67, column: 5)
!4485 = distinct !DILexicalBlock(scope: !4479, file: !1022, line: 67, column: 5)
!4486 = !DILocalVariable(name: "fd", scope: !4487, file: !1022, line: 199, type: !70)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !1022, line: 198, column: 5)
!4488 = distinct !DILexicalBlock(scope: !4431, file: !1022, line: 197, column: 7)
!4489 = !DILocalVariable(name: "fp", scope: !4487, file: !1022, line: 204, type: !4434)
!4490 = !DILocalVariable(name: "saved_errno", scope: !4491, file: !1022, line: 207, type: !70)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !1022, line: 206, column: 9)
!4492 = distinct !DILexicalBlock(scope: !4487, file: !1022, line: 205, column: 11)
!4493 = distinct !DIAssignID()
!4494 = !DILocation(line: 0, scope: !4431)
!4495 = !DILocation(line: 59, column: 3, scope: !4431)
!4496 = !DILocation(line: 0, scope: !4479)
!4497 = !DILocation(line: 67, column: 5, scope: !4479)
!4498 = !DILocation(line: 54, column: 7, scope: !4431)
!4499 = !DILocation(line: 67, column: 12, scope: !4484)
!4500 = !DILocation(line: 67, column: 5, scope: !4485)
!4501 = !DILocation(line: 74, column: 19, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !1022, line: 74, column: 17)
!4503 = distinct !DILexicalBlock(scope: !4483, file: !1022, line: 70, column: 11)
!4504 = !DILocation(line: 74, column: 17, scope: !4503)
!4505 = !DILocation(line: 75, column: 17, scope: !4502)
!4506 = !DILocation(line: 75, column: 20, scope: !4502)
!4507 = !DILocation(line: 75, column: 15, scope: !4502)
!4508 = !DILocation(line: 80, column: 24, scope: !4503)
!4509 = !DILocation(line: 82, column: 19, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4503, file: !1022, line: 82, column: 17)
!4511 = !DILocation(line: 82, column: 17, scope: !4503)
!4512 = !DILocation(line: 83, column: 17, scope: !4510)
!4513 = !DILocation(line: 83, column: 20, scope: !4510)
!4514 = !DILocation(line: 83, column: 15, scope: !4510)
!4515 = !DILocation(line: 88, column: 24, scope: !4503)
!4516 = !DILocation(line: 90, column: 19, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4503, file: !1022, line: 90, column: 17)
!4518 = !DILocation(line: 90, column: 17, scope: !4503)
!4519 = !DILocation(line: 91, column: 17, scope: !4517)
!4520 = !DILocation(line: 91, column: 20, scope: !4517)
!4521 = !DILocation(line: 91, column: 15, scope: !4517)
!4522 = !DILocation(line: 100, column: 19, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4503, file: !1022, line: 100, column: 17)
!4524 = !DILocation(line: 100, column: 17, scope: !4503)
!4525 = !DILocation(line: 101, column: 17, scope: !4523)
!4526 = !DILocation(line: 101, column: 20, scope: !4523)
!4527 = !DILocation(line: 101, column: 15, scope: !4523)
!4528 = !DILocation(line: 107, column: 19, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4503, file: !1022, line: 107, column: 17)
!4530 = !DILocation(line: 107, column: 17, scope: !4503)
!4531 = !DILocation(line: 108, column: 17, scope: !4529)
!4532 = !DILocation(line: 108, column: 20, scope: !4529)
!4533 = !DILocation(line: 108, column: 15, scope: !4529)
!4534 = !DILocation(line: 113, column: 24, scope: !4503)
!4535 = !DILocation(line: 115, column: 13, scope: !4503)
!4536 = !DILocation(line: 117, column: 24, scope: !4503)
!4537 = !DILocation(line: 119, column: 13, scope: !4503)
!4538 = !DILocation(line: 128, column: 24, scope: !4482)
!4539 = !DILocation(line: 0, scope: !4482)
!4540 = !DILocation(line: 129, column: 48, scope: !4541)
!4541 = distinct !DILexicalBlock(scope: !4482, file: !1022, line: 129, column: 15)
!4542 = !DILocation(line: 129, column: 15, scope: !4482)
!4543 = !DILocalVariable(name: "__dest", arg: 1, scope: !4544, file: !2170, line: 26, type: !4054)
!4544 = distinct !DISubprogram(name: "memcpy", scope: !2170, file: !2170, line: 26, type: !4052, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4545)
!4545 = !{!4543, !4546, !4547}
!4546 = !DILocalVariable(name: "__src", arg: 2, scope: !4544, file: !2170, line: 26, type: !1270)
!4547 = !DILocalVariable(name: "__len", arg: 3, scope: !4544, file: !2170, line: 26, type: !104)
!4548 = !DILocation(line: 0, scope: !4544, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 131, column: 11, scope: !4482)
!4550 = !DILocation(line: 29, column: 10, scope: !4544, inlinedAt: !4549)
!4551 = !DILocation(line: 132, column: 13, scope: !4482)
!4552 = !DILocation(line: 135, column: 9, scope: !4483)
!4553 = !DILocation(line: 67, column: 25, scope: !4484)
!4554 = !DILocation(line: 67, column: 5, scope: !4484)
!4555 = distinct !{!4555, !4500, !4556, !1170}
!4556 = !DILocation(line: 136, column: 7, scope: !4485)
!4557 = !DILocation(line: 138, column: 8, scope: !4479)
!4558 = !DILocation(line: 197, column: 7, scope: !4488)
!4559 = !DILocation(line: 197, column: 7, scope: !4431)
!4560 = !DILocation(line: 199, column: 47, scope: !4487)
!4561 = !DILocation(line: 199, column: 16, scope: !4487)
!4562 = !DILocation(line: 0, scope: !4487)
!4563 = !DILocation(line: 201, column: 14, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4487, file: !1022, line: 201, column: 11)
!4565 = !DILocation(line: 201, column: 11, scope: !4487)
!4566 = !DILocation(line: 204, column: 18, scope: !4487)
!4567 = !DILocation(line: 205, column: 14, scope: !4492)
!4568 = !DILocation(line: 205, column: 11, scope: !4487)
!4569 = !DILocation(line: 207, column: 29, scope: !4491)
!4570 = !DILocation(line: 0, scope: !4491)
!4571 = !DILocation(line: 208, column: 11, scope: !4491)
!4572 = !DILocation(line: 209, column: 17, scope: !4491)
!4573 = !DILocation(line: 210, column: 9, scope: !4491)
!4574 = !DILocalVariable(name: "filename", arg: 1, scope: !4575, file: !1022, line: 30, type: !107)
!4575 = distinct !DISubprogram(name: "orig_fopen", scope: !1022, file: !1022, line: 30, type: !4432, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4576)
!4576 = !{!4574, !4577}
!4577 = !DILocalVariable(name: "mode", arg: 2, scope: !4575, file: !1022, line: 30, type: !107)
!4578 = !DILocation(line: 0, scope: !4575, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 219, column: 10, scope: !4431)
!4580 = !DILocation(line: 32, column: 10, scope: !4575, inlinedAt: !4579)
!4581 = !DILocation(line: 219, column: 3, scope: !4431)
!4582 = !DILocation(line: 220, column: 1, scope: !4431)
!4583 = !DISubprogram(name: "open", scope: !1536, file: !1536, line: 181, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!70, !107, !70, null}
!4586 = !DISubprogram(name: "fdopen", scope: !1118, file: !1118, line: 293, type: !4587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!4434, !70, !107}
!4589 = !DISubprogram(name: "close", scope: !1387, file: !1387, line: 358, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4590 = !DISubprogram(name: "fopen", scope: !1118, file: !1118, line: 258, type: !4591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!4434, !1113, !1113}
!4593 = distinct !DISubprogram(name: "close_stream", scope: !1024, file: !1024, line: 55, type: !4594, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1023, retainedNodes: !4630)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!70, !4596}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4598)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4598, file: !165, line: 51, baseType: !70, size: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4598, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4598, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4598, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4598, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4598, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4598, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4598, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4598, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4598, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4598, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4598, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4598, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4598, file: !165, line: 70, baseType: !4614, size: 64, offset: 832)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4598, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4598, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4598, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4598, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4598, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4598, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4598, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4598, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4598, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4598, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4598, file: !165, line: 93, baseType: !4614, size: 64, offset: 1344)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4598, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4598, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4598, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4598, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4630 = !{!4631, !4632, !4634, !4635}
!4631 = !DILocalVariable(name: "stream", arg: 1, scope: !4593, file: !1024, line: 55, type: !4596)
!4632 = !DILocalVariable(name: "some_pending", scope: !4593, file: !1024, line: 57, type: !4633)
!4633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4634 = !DILocalVariable(name: "prev_fail", scope: !4593, file: !1024, line: 58, type: !4633)
!4635 = !DILocalVariable(name: "fclose_fail", scope: !4593, file: !1024, line: 59, type: !4633)
!4636 = !DILocation(line: 0, scope: !4593)
!4637 = !DILocation(line: 57, column: 30, scope: !4593)
!4638 = !DILocalVariable(name: "__stream", arg: 1, scope: !4639, file: !1504, line: 135, type: !4596)
!4639 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1504, file: !1504, line: 135, type: !4594, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1023, retainedNodes: !4640)
!4640 = !{!4638}
!4641 = !DILocation(line: 0, scope: !4639, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 58, column: 27, scope: !4593)
!4643 = !DILocation(line: 137, column: 10, scope: !4639, inlinedAt: !4642)
!4644 = !{!1513, !1124, i64 0}
!4645 = !DILocation(line: 58, column: 43, scope: !4593)
!4646 = !DILocation(line: 59, column: 29, scope: !4593)
!4647 = !DILocation(line: 59, column: 45, scope: !4593)
!4648 = !DILocation(line: 69, column: 17, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4593, file: !1024, line: 69, column: 7)
!4650 = !DILocation(line: 57, column: 50, scope: !4593)
!4651 = !DILocation(line: 69, column: 33, scope: !4649)
!4652 = !DILocation(line: 69, column: 53, scope: !4649)
!4653 = !DILocation(line: 69, column: 59, scope: !4649)
!4654 = !DILocation(line: 69, column: 7, scope: !4593)
!4655 = !DILocation(line: 71, column: 11, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4649, file: !1024, line: 70, column: 5)
!4657 = !DILocation(line: 72, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4656, file: !1024, line: 71, column: 11)
!4659 = !DILocation(line: 72, column: 15, scope: !4658)
!4660 = !DILocation(line: 77, column: 1, scope: !4593)
!4661 = !DISubprogram(name: "__fpending", scope: !4662, file: !4662, line: 75, type: !4663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4662 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!104, !4596}
!4665 = distinct !DISubprogram(name: "rpl_fclose", scope: !1026, file: !1026, line: 58, type: !4666, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4702)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!70, !4668}
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4670)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4671)
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4670, file: !165, line: 51, baseType: !70, size: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4670, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4670, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4670, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4670, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4670, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4670, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4670, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4670, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4670, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4670, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4670, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4670, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4670, file: !165, line: 70, baseType: !4686, size: 64, offset: 832)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4670, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4670, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4670, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4670, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4670, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4670, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4670, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4670, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4670, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4670, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4670, file: !165, line: 93, baseType: !4686, size: 64, offset: 1344)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4670, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4670, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4670, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4670, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4702 = !{!4703, !4704, !4705, !4706}
!4703 = !DILocalVariable(name: "fp", arg: 1, scope: !4665, file: !1026, line: 58, type: !4668)
!4704 = !DILocalVariable(name: "saved_errno", scope: !4665, file: !1026, line: 60, type: !70)
!4705 = !DILocalVariable(name: "fd", scope: !4665, file: !1026, line: 63, type: !70)
!4706 = !DILocalVariable(name: "result", scope: !4665, file: !1026, line: 74, type: !70)
!4707 = !DILocation(line: 0, scope: !4665)
!4708 = !DILocation(line: 63, column: 12, scope: !4665)
!4709 = !DILocation(line: 64, column: 10, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4665, file: !1026, line: 64, column: 7)
!4711 = !DILocation(line: 64, column: 7, scope: !4665)
!4712 = !DILocation(line: 65, column: 12, scope: !4710)
!4713 = !DILocation(line: 65, column: 5, scope: !4710)
!4714 = !DILocation(line: 70, column: 9, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4665, file: !1026, line: 70, column: 7)
!4716 = !DILocation(line: 70, column: 23, scope: !4715)
!4717 = !DILocation(line: 70, column: 33, scope: !4715)
!4718 = !DILocation(line: 70, column: 26, scope: !4715)
!4719 = !DILocation(line: 70, column: 59, scope: !4715)
!4720 = !DILocation(line: 71, column: 7, scope: !4715)
!4721 = !DILocation(line: 71, column: 10, scope: !4715)
!4722 = !DILocation(line: 70, column: 7, scope: !4665)
!4723 = !DILocation(line: 100, column: 12, scope: !4665)
!4724 = !DILocation(line: 105, column: 7, scope: !4665)
!4725 = !DILocation(line: 72, column: 19, scope: !4715)
!4726 = !DILocation(line: 105, column: 19, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4665, file: !1026, line: 105, column: 7)
!4728 = !DILocation(line: 107, column: 13, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4727, file: !1026, line: 106, column: 5)
!4730 = !DILocation(line: 109, column: 5, scope: !4729)
!4731 = !DILocation(line: 112, column: 1, scope: !4665)
!4732 = !DISubprogram(name: "fileno", scope: !1118, file: !1118, line: 809, type: !4666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4733 = !DISubprogram(name: "fclose", scope: !1118, file: !1118, line: 178, type: !4666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4734 = !DISubprogram(name: "__freading", scope: !4662, file: !4662, line: 51, type: !4666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4735 = !DISubprogram(name: "lseek", scope: !1387, file: !1387, line: 339, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!187, !70, !187, !70}
!4738 = distinct !DISubprogram(name: "rpl_fflush", scope: !1028, file: !1028, line: 130, type: !4739, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4775)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{!70, !4741}
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4743)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4743, file: !165, line: 51, baseType: !70, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4743, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4743, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4743, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4743, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4743, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4743, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4743, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4743, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4743, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4743, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4743, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4743, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4743, file: !165, line: 70, baseType: !4759, size: 64, offset: 832)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4743, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4743, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4743, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4743, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4743, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4743, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4743, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4743, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4743, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4743, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4743, file: !165, line: 93, baseType: !4759, size: 64, offset: 1344)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4743, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4743, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4743, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4743, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4775 = !{!4776}
!4776 = !DILocalVariable(name: "stream", arg: 1, scope: !4738, file: !1028, line: 130, type: !4741)
!4777 = !DILocation(line: 0, scope: !4738)
!4778 = !DILocation(line: 151, column: 14, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4738, file: !1028, line: 151, column: 7)
!4780 = !DILocation(line: 151, column: 22, scope: !4779)
!4781 = !DILocation(line: 151, column: 27, scope: !4779)
!4782 = !DILocation(line: 151, column: 7, scope: !4738)
!4783 = !DILocation(line: 152, column: 12, scope: !4779)
!4784 = !DILocation(line: 152, column: 5, scope: !4779)
!4785 = !DILocalVariable(name: "fp", arg: 1, scope: !4786, file: !1028, line: 42, type: !4741)
!4786 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1028, file: !1028, line: 42, type: !4787, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4789)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !4741}
!4789 = !{!4785}
!4790 = !DILocation(line: 0, scope: !4786, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 157, column: 3, scope: !4738)
!4792 = !DILocation(line: 44, column: 12, scope: !4793, inlinedAt: !4791)
!4793 = distinct !DILexicalBlock(scope: !4786, file: !1028, line: 44, column: 7)
!4794 = !DILocation(line: 44, column: 19, scope: !4793, inlinedAt: !4791)
!4795 = !DILocation(line: 44, column: 7, scope: !4786, inlinedAt: !4791)
!4796 = !DILocation(line: 46, column: 5, scope: !4793, inlinedAt: !4791)
!4797 = !DILocation(line: 159, column: 10, scope: !4738)
!4798 = !DILocation(line: 159, column: 3, scope: !4738)
!4799 = !DILocation(line: 236, column: 1, scope: !4738)
!4800 = !DISubprogram(name: "fflush", scope: !1118, file: !1118, line: 230, type: !4739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4801 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1030, file: !1030, line: 28, type: !4802, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1029, retainedNodes: !4839)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!70, !4804, !4838, !70}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !4806)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !4807)
!4807 = !{!4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4806, file: !165, line: 51, baseType: !70, size: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4806, file: !165, line: 54, baseType: !101, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4806, file: !165, line: 55, baseType: !101, size: 64, offset: 128)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4806, file: !165, line: 56, baseType: !101, size: 64, offset: 192)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4806, file: !165, line: 57, baseType: !101, size: 64, offset: 256)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4806, file: !165, line: 58, baseType: !101, size: 64, offset: 320)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4806, file: !165, line: 59, baseType: !101, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4806, file: !165, line: 60, baseType: !101, size: 64, offset: 448)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4806, file: !165, line: 61, baseType: !101, size: 64, offset: 512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4806, file: !165, line: 64, baseType: !101, size: 64, offset: 576)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4806, file: !165, line: 65, baseType: !101, size: 64, offset: 640)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4806, file: !165, line: 66, baseType: !101, size: 64, offset: 704)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4806, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4806, file: !165, line: 70, baseType: !4822, size: 64, offset: 832)
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4806, file: !165, line: 72, baseType: !70, size: 32, offset: 896)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4806, file: !165, line: 73, baseType: !70, size: 32, offset: 928)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4806, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4806, file: !165, line: 77, baseType: !103, size: 16, offset: 1024)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4806, file: !165, line: 78, baseType: !192, size: 8, offset: 1040)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4806, file: !165, line: 79, baseType: !44, size: 8, offset: 1048)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4806, file: !165, line: 81, baseType: !195, size: 64, offset: 1088)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4806, file: !165, line: 89, baseType: !198, size: 64, offset: 1152)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4806, file: !165, line: 91, baseType: !200, size: 64, offset: 1216)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4806, file: !165, line: 92, baseType: !203, size: 64, offset: 1280)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4806, file: !165, line: 93, baseType: !4822, size: 64, offset: 1344)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4806, file: !165, line: 94, baseType: !102, size: 64, offset: 1408)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4806, file: !165, line: 95, baseType: !104, size: 64, offset: 1472)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4806, file: !165, line: 96, baseType: !70, size: 32, offset: 1536)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4806, file: !165, line: 98, baseType: !210, size: 160, offset: 1568)
!4838 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1118, line: 63, baseType: !187)
!4839 = !{!4840, !4841, !4842, !4843}
!4840 = !DILocalVariable(name: "fp", arg: 1, scope: !4801, file: !1030, line: 28, type: !4804)
!4841 = !DILocalVariable(name: "offset", arg: 2, scope: !4801, file: !1030, line: 28, type: !4838)
!4842 = !DILocalVariable(name: "whence", arg: 3, scope: !4801, file: !1030, line: 28, type: !70)
!4843 = !DILocalVariable(name: "pos", scope: !4844, file: !1030, line: 123, type: !4838)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !1030, line: 119, column: 5)
!4845 = distinct !DILexicalBlock(scope: !4801, file: !1030, line: 55, column: 7)
!4846 = !DILocation(line: 0, scope: !4801)
!4847 = !DILocation(line: 55, column: 12, scope: !4845)
!4848 = !{!1513, !1061, i64 16}
!4849 = !DILocation(line: 55, column: 33, scope: !4845)
!4850 = !{!1513, !1061, i64 8}
!4851 = !DILocation(line: 55, column: 25, scope: !4845)
!4852 = !DILocation(line: 56, column: 7, scope: !4845)
!4853 = !DILocation(line: 56, column: 15, scope: !4845)
!4854 = !DILocation(line: 56, column: 37, scope: !4845)
!4855 = !{!1513, !1061, i64 32}
!4856 = !DILocation(line: 56, column: 29, scope: !4845)
!4857 = !DILocation(line: 57, column: 7, scope: !4845)
!4858 = !DILocation(line: 57, column: 15, scope: !4845)
!4859 = !{!1513, !1061, i64 72}
!4860 = !DILocation(line: 57, column: 29, scope: !4845)
!4861 = !DILocation(line: 55, column: 7, scope: !4801)
!4862 = !DILocation(line: 123, column: 26, scope: !4844)
!4863 = !DILocation(line: 123, column: 19, scope: !4844)
!4864 = !DILocation(line: 0, scope: !4844)
!4865 = !DILocation(line: 124, column: 15, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4844, file: !1030, line: 124, column: 11)
!4867 = !DILocation(line: 124, column: 11, scope: !4844)
!4868 = !DILocation(line: 135, column: 19, scope: !4844)
!4869 = !DILocation(line: 136, column: 12, scope: !4844)
!4870 = !DILocation(line: 136, column: 20, scope: !4844)
!4871 = !{!1513, !1514, i64 144}
!4872 = !DILocation(line: 167, column: 7, scope: !4844)
!4873 = !DILocation(line: 169, column: 10, scope: !4801)
!4874 = !DILocation(line: 169, column: 3, scope: !4801)
!4875 = !DILocation(line: 170, column: 1, scope: !4801)
!4876 = !DISubprogram(name: "fseeko", scope: !1118, file: !1118, line: 736, type: !4877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!70, !4804, !187, !70}
!4879 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !706, file: !706, line: 100, type: !4880, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !4883)
!4880 = !DISubroutineType(types: !4881)
!4881 = !{!104, !2188, !107, !104, !4882}
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!4883 = !{!4884, !4885, !4886, !4887, !4888}
!4884 = !DILocalVariable(name: "pwc", arg: 1, scope: !4879, file: !706, line: 100, type: !2188)
!4885 = !DILocalVariable(name: "s", arg: 2, scope: !4879, file: !706, line: 100, type: !107)
!4886 = !DILocalVariable(name: "n", arg: 3, scope: !4879, file: !706, line: 100, type: !104)
!4887 = !DILocalVariable(name: "ps", arg: 4, scope: !4879, file: !706, line: 100, type: !4882)
!4888 = !DILocalVariable(name: "ret", scope: !4879, file: !706, line: 130, type: !104)
!4889 = !DILocation(line: 0, scope: !4879)
!4890 = !DILocation(line: 105, column: 9, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4879, file: !706, line: 105, column: 7)
!4892 = !DILocation(line: 105, column: 7, scope: !4879)
!4893 = !DILocation(line: 117, column: 10, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4879, file: !706, line: 117, column: 7)
!4895 = !DILocation(line: 117, column: 7, scope: !4879)
!4896 = !DILocation(line: 130, column: 16, scope: !4879)
!4897 = !DILocation(line: 135, column: 11, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4879, file: !706, line: 135, column: 7)
!4899 = !DILocation(line: 135, column: 25, scope: !4898)
!4900 = !DILocation(line: 135, column: 30, scope: !4898)
!4901 = !DILocation(line: 135, column: 7, scope: !4879)
!4902 = !DILocalVariable(name: "ps", arg: 1, scope: !4903, file: !2161, line: 1135, type: !4882)
!4903 = distinct !DISubprogram(name: "mbszero", scope: !2161, file: !2161, line: 1135, type: !4904, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{null, !4882}
!4906 = !{!4902}
!4907 = !DILocation(line: 0, scope: !4903, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 137, column: 5, scope: !4898)
!4909 = !DILocalVariable(name: "__dest", arg: 1, scope: !4910, file: !2170, line: 57, type: !102)
!4910 = distinct !DISubprogram(name: "memset", scope: !2170, file: !2170, line: 57, type: !2171, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !4911)
!4911 = !{!4909, !4912, !4913}
!4912 = !DILocalVariable(name: "__ch", arg: 2, scope: !4910, file: !2170, line: 57, type: !70)
!4913 = !DILocalVariable(name: "__len", arg: 3, scope: !4910, file: !2170, line: 57, type: !104)
!4914 = !DILocation(line: 0, scope: !4910, inlinedAt: !4915)
!4915 = distinct !DILocation(line: 1137, column: 3, scope: !4903, inlinedAt: !4908)
!4916 = !DILocation(line: 59, column: 10, scope: !4910, inlinedAt: !4915)
!4917 = !DILocation(line: 137, column: 5, scope: !4898)
!4918 = !DILocation(line: 138, column: 11, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4879, file: !706, line: 138, column: 7)
!4920 = !DILocation(line: 138, column: 7, scope: !4879)
!4921 = !DILocation(line: 139, column: 5, scope: !4919)
!4922 = !DILocation(line: 143, column: 26, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4879, file: !706, line: 143, column: 7)
!4924 = !DILocation(line: 143, column: 41, scope: !4923)
!4925 = !DILocation(line: 143, column: 7, scope: !4879)
!4926 = !DILocation(line: 145, column: 15, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !706, line: 145, column: 11)
!4928 = distinct !DILexicalBlock(scope: !4923, file: !706, line: 144, column: 5)
!4929 = !DILocation(line: 145, column: 11, scope: !4928)
!4930 = !DILocation(line: 146, column: 32, scope: !4927)
!4931 = !DILocation(line: 146, column: 16, scope: !4927)
!4932 = !DILocation(line: 146, column: 14, scope: !4927)
!4933 = !DILocation(line: 146, column: 9, scope: !4927)
!4934 = !DILocation(line: 286, column: 1, scope: !4879)
!4935 = !DISubprogram(name: "mbsinit", scope: !4936, file: !4936, line: 293, type: !4937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4936 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!70, !4939}
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!4941 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1032, file: !1032, line: 27, type: !3691, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4942)
!4942 = !{!4943, !4944, !4945, !4946}
!4943 = !DILocalVariable(name: "ptr", arg: 1, scope: !4941, file: !1032, line: 27, type: !102)
!4944 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4941, file: !1032, line: 27, type: !104)
!4945 = !DILocalVariable(name: "size", arg: 3, scope: !4941, file: !1032, line: 27, type: !104)
!4946 = !DILocalVariable(name: "nbytes", scope: !4941, file: !1032, line: 29, type: !104)
!4947 = !DILocation(line: 0, scope: !4941)
!4948 = !DILocation(line: 30, column: 7, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4941, file: !1032, line: 30, column: 7)
!4950 = !DILocation(line: 30, column: 7, scope: !4941)
!4951 = !DILocation(line: 32, column: 7, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4949, file: !1032, line: 31, column: 5)
!4953 = !DILocation(line: 32, column: 13, scope: !4952)
!4954 = !DILocation(line: 33, column: 7, scope: !4952)
!4955 = !DILocalVariable(name: "ptr", arg: 1, scope: !4956, file: !3783, line: 2057, type: !102)
!4956 = distinct !DISubprogram(name: "rpl_realloc", scope: !3783, file: !3783, line: 2057, type: !3775, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4957)
!4957 = !{!4955, !4958}
!4958 = !DILocalVariable(name: "size", arg: 2, scope: !4956, file: !3783, line: 2057, type: !104)
!4959 = !DILocation(line: 0, scope: !4956, inlinedAt: !4960)
!4960 = distinct !DILocation(line: 37, column: 10, scope: !4941)
!4961 = !DILocation(line: 2059, column: 24, scope: !4956, inlinedAt: !4960)
!4962 = !DILocation(line: 2059, column: 10, scope: !4956, inlinedAt: !4960)
!4963 = !DILocation(line: 37, column: 3, scope: !4941)
!4964 = !DILocation(line: 38, column: 1, scope: !4941)
!4965 = distinct !DISubprogram(name: "hard_locale", scope: !724, file: !724, line: 28, type: !1664, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4966)
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "category", arg: 1, scope: !4965, file: !724, line: 28, type: !70)
!4968 = !DILocalVariable(name: "locale", scope: !4965, file: !724, line: 30, type: !4969)
!4969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4970)
!4970 = !{!4971}
!4971 = !DISubrange(count: 257)
!4972 = distinct !DIAssignID()
!4973 = !DILocation(line: 0, scope: !4965)
!4974 = !DILocation(line: 30, column: 3, scope: !4965)
!4975 = !DILocation(line: 32, column: 7, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4965, file: !724, line: 32, column: 7)
!4977 = !DILocation(line: 32, column: 7, scope: !4965)
!4978 = !DILocalVariable(name: "__s1", arg: 1, scope: !4979, file: !1136, line: 1359, type: !107)
!4979 = distinct !DISubprogram(name: "streq", scope: !1136, file: !1136, line: 1359, type: !1137, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1033, retainedNodes: !4980)
!4980 = !{!4978, !4981}
!4981 = !DILocalVariable(name: "__s2", arg: 2, scope: !4979, file: !1136, line: 1359, type: !107)
!4982 = !DILocation(line: 0, scope: !4979, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 35, column: 9, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4965, file: !724, line: 35, column: 7)
!4985 = !DILocation(line: 1361, column: 11, scope: !4979, inlinedAt: !4983)
!4986 = !DILocation(line: 35, column: 29, scope: !4984)
!4987 = !DILocation(line: 0, scope: !4979, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 35, column: 32, scope: !4984)
!4989 = !DILocation(line: 1361, column: 11, scope: !4979, inlinedAt: !4988)
!4990 = !DILocation(line: 1361, column: 10, scope: !4979, inlinedAt: !4988)
!4991 = !DILocation(line: 35, column: 7, scope: !4965)
!4992 = !DILocation(line: 46, column: 3, scope: !4965)
!4993 = !DILocation(line: 47, column: 1, scope: !4965)
!4994 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1038, file: !1038, line: 154, type: !4995, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4997)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!70, !70, !101, !104}
!4997 = !{!4998, !4999, !5000}
!4998 = !DILocalVariable(name: "category", arg: 1, scope: !4994, file: !1038, line: 154, type: !70)
!4999 = !DILocalVariable(name: "buf", arg: 2, scope: !4994, file: !1038, line: 154, type: !101)
!5000 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4994, file: !1038, line: 154, type: !104)
!5001 = !DILocation(line: 0, scope: !4994)
!5002 = !DILocation(line: 159, column: 10, scope: !4994)
!5003 = !DILocation(line: 159, column: 3, scope: !4994)
!5004 = distinct !DISubprogram(name: "setlocale_null", scope: !1038, file: !1038, line: 186, type: !5005, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!107, !70}
!5007 = !{!5008}
!5008 = !DILocalVariable(name: "category", arg: 1, scope: !5004, file: !1038, line: 186, type: !70)
!5009 = !DILocation(line: 0, scope: !5004)
!5010 = !DILocation(line: 189, column: 10, scope: !5004)
!5011 = !DILocation(line: 189, column: 3, scope: !5004)
!5012 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1040, file: !1040, line: 35, type: !5005, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5013)
!5013 = !{!5014, !5015}
!5014 = !DILocalVariable(name: "category", arg: 1, scope: !5012, file: !1040, line: 35, type: !70)
!5015 = !DILocalVariable(name: "result", scope: !5012, file: !1040, line: 37, type: !107)
!5016 = !DILocation(line: 0, scope: !5012)
!5017 = !DILocation(line: 37, column: 24, scope: !5012)
!5018 = !DILocation(line: 62, column: 3, scope: !5012)
!5019 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1040, file: !1040, line: 66, type: !4995, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5020)
!5020 = !{!5021, !5022, !5023, !5024, !5025}
!5021 = !DILocalVariable(name: "category", arg: 1, scope: !5019, file: !1040, line: 66, type: !70)
!5022 = !DILocalVariable(name: "buf", arg: 2, scope: !5019, file: !1040, line: 66, type: !101)
!5023 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5019, file: !1040, line: 66, type: !104)
!5024 = !DILocalVariable(name: "result", scope: !5019, file: !1040, line: 111, type: !107)
!5025 = !DILocalVariable(name: "length", scope: !5026, file: !1040, line: 125, type: !104)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !1040, line: 124, column: 5)
!5027 = distinct !DILexicalBlock(scope: !5019, file: !1040, line: 113, column: 7)
!5028 = !DILocation(line: 0, scope: !5019)
!5029 = !DILocation(line: 0, scope: !5012, inlinedAt: !5030)
!5030 = distinct !DILocation(line: 111, column: 24, scope: !5019)
!5031 = !DILocation(line: 37, column: 24, scope: !5012, inlinedAt: !5030)
!5032 = !DILocation(line: 113, column: 14, scope: !5027)
!5033 = !DILocation(line: 113, column: 7, scope: !5019)
!5034 = !DILocation(line: 116, column: 19, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !1040, line: 116, column: 11)
!5036 = distinct !DILexicalBlock(scope: !5027, file: !1040, line: 114, column: 5)
!5037 = !DILocation(line: 116, column: 11, scope: !5036)
!5038 = !DILocation(line: 120, column: 16, scope: !5035)
!5039 = !DILocation(line: 120, column: 9, scope: !5035)
!5040 = !DILocation(line: 125, column: 23, scope: !5026)
!5041 = !DILocation(line: 0, scope: !5026)
!5042 = !DILocation(line: 126, column: 18, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5026, file: !1040, line: 126, column: 11)
!5044 = !DILocation(line: 126, column: 11, scope: !5026)
!5045 = !DILocation(line: 128, column: 39, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5043, file: !1040, line: 127, column: 9)
!5047 = !DILocalVariable(name: "__dest", arg: 1, scope: !5048, file: !2170, line: 26, type: !4054)
!5048 = distinct !DISubprogram(name: "memcpy", scope: !2170, file: !2170, line: 26, type: !4052, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5049)
!5049 = !{!5047, !5050, !5051}
!5050 = !DILocalVariable(name: "__src", arg: 2, scope: !5048, file: !2170, line: 26, type: !1270)
!5051 = !DILocalVariable(name: "__len", arg: 3, scope: !5048, file: !2170, line: 26, type: !104)
!5052 = !DILocation(line: 0, scope: !5048, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 128, column: 11, scope: !5046)
!5054 = !DILocation(line: 29, column: 10, scope: !5048, inlinedAt: !5053)
!5055 = !DILocation(line: 129, column: 11, scope: !5046)
!5056 = !DILocation(line: 133, column: 23, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !1040, line: 133, column: 15)
!5058 = distinct !DILexicalBlock(scope: !5043, file: !1040, line: 132, column: 9)
!5059 = !DILocation(line: 133, column: 15, scope: !5058)
!5060 = !DILocation(line: 138, column: 44, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5057, file: !1040, line: 134, column: 13)
!5062 = !DILocation(line: 0, scope: !5048, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 138, column: 15, scope: !5061)
!5064 = !DILocation(line: 29, column: 10, scope: !5048, inlinedAt: !5063)
!5065 = !DILocation(line: 139, column: 15, scope: !5061)
!5066 = !DILocation(line: 139, column: 32, scope: !5061)
!5067 = !DILocation(line: 140, column: 13, scope: !5061)
!5068 = !DILocation(line: 0, scope: !5027)
!5069 = !DILocation(line: 145, column: 1, scope: !5019)
