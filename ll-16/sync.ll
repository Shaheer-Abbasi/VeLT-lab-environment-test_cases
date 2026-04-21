; ModuleID = 'src/sync.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1, !dbg !57
@long_options = internal constant [5 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !62
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !119
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !124
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1, !dbg !129
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1, !dbg !134
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1, !dbg !139
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !144
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !227
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !229
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !231
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !236
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !276
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !278
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !280
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !285
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !290
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !295
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !300
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !302
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !304
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !306
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !320
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !322
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !324
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !329
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !334
@.str.52 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !339
@.str.53 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1, !dbg !341
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !343
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !345
@.str.56 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1, !dbg !347
@.str.57 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1, !dbg !349
@.str.58 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1, !dbg !354
@.str.59 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1, !dbg !356
@.str.21 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !371
@Version = dso_local local_unnamed_addr global ptr @.str.21, align 8, !dbg !374
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !378
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !391
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !383
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !385
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !387
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !389
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !393
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !399
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !436
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !401
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !426
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !428
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !430
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !432
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !434
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !438
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !440
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !445
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !450
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !468
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !474
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !476
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !478
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !509
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !512
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !514
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !516
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !518
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !520
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !522
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !524
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !526
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !528
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 8, !dbg !530
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !541
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !555
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !593
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !600
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !557
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !602
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !545
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !562
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !564
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !566
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !568
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !570
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !608
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !611
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !613
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !615
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !617
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !619
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !624
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !629
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !631
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !636
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !641
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !646
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !648
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !650
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !655
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !660
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !665
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !670
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !672
@.str.19.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !674
@.str.20.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !676
@.str.21.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !678
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !680
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !682
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !687
@exit_failure = dso_local global i32 1, align 4, !dbg !695
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !701
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !704
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !706
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !708
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !711
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !726
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !729

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !805, metadata !DIExpression()), !dbg !806
  %2 = icmp eq i32 %0, 0, !dbg !807
  br i1 %2, label %8, label %3, !dbg !809

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !810, !tbaa !812
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !810
  %6 = load ptr, ptr @program_name, align 8, !dbg !810, !tbaa !812
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !810
  br label %33, !dbg !810

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !816
  %10 = load ptr, ptr @program_name, align 8, !dbg !816, !tbaa !812
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !816
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !818
  %13 = load ptr, ptr @stdout, align 8, !dbg !818, !tbaa !812
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !818
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !819
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !819
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !820
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !820
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !821
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !822
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !823, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr poison, metadata !835, metadata !DIExpression()), !dbg !840
  tail call void @emit_bug_reporting_address() #37, !dbg !842
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !843
  call void @llvm.dbg.value(metadata ptr %19, metadata !838, metadata !DIExpression()), !dbg !840
  %20 = icmp eq ptr %19, null, !dbg !844
  br i1 %20, label %28, label %21, !dbg !846

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #38, !dbg !847
  %23 = icmp eq i32 %22, 0, !dbg !847
  br i1 %23, label %28, label %24, !dbg !848

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !849
  %26 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !812
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !849
  br label %28, !dbg !851

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !835, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !839, metadata !DIExpression()), !dbg !840
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !852
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #37, !dbg !852
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !853
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #37, !dbg !853
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !854
  unreachable, !dbg !854
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !855 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !860 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !866 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !869 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !872
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !873, !tbaa !874
  %3 = icmp eq i32 %2, -1, !dbg !876
  br i1 %3, label %4, label %16, !dbg !877

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #37, !dbg !878
  call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !879
  %6 = icmp eq ptr %5, null, !dbg !880
  br i1 %6, label %14, label %7, !dbg !881

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !882, !tbaa !883
  %9 = icmp eq i8 %8, 0, !dbg !882
  br i1 %9, label %14, label %10, !dbg !884

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !885, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !891, metadata !DIExpression()), !dbg !892
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #38, !dbg !894
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !901, !tbaa !812
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !901
  br label %122, !dbg !903

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !872
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #38, !dbg !904
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !905
  call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !872
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !906
  call void @llvm.dbg.value(metadata ptr %25, metadata !158, metadata !DIExpression()), !dbg !872
  %26 = icmp eq ptr %25, null, !dbg !907
  br i1 %26, label %54, label %27, !dbg !908

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !909
  br i1 %28, label %54, label %29, !dbg !910

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()), !dbg !911
  %30 = icmp ult ptr %24, %25, !dbg !912
  br i1 %30, label %31, label %52, !dbg !913

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !872
  %33 = load ptr, ptr %32, align 8, !tbaa !812
  br label %34, !dbg !913

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !159, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i64 %36, metadata !163, metadata !DIExpression()), !dbg !911
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !914
  call void @llvm.dbg.value(metadata ptr %37, metadata !159, metadata !DIExpression()), !dbg !911
  %38 = load i8, ptr %35, align 1, !dbg !914, !tbaa !883
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !914
  %41 = load i16, ptr %40, align 2, !dbg !914, !tbaa !915
  %42 = freeze i16 %41, !dbg !917
  %43 = lshr i16 %42, 13, !dbg !917
  %44 = and i16 %43, 1, !dbg !917
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !918
  call void @llvm.dbg.value(metadata i64 %46, metadata !163, metadata !DIExpression()), !dbg !911
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

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !872
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %55, metadata !158, metadata !DIExpression()), !dbg !872
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #38, !dbg !925
  call void @llvm.dbg.value(metadata i64 %57, metadata !164, metadata !DIExpression()), !dbg !872
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !926
  call void @llvm.dbg.value(metadata ptr %58, metadata !165, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !872
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr %60, metadata !165, metadata !DIExpression()), !dbg !872
  %62 = load i8, ptr %60, align 1, !dbg !928, !tbaa !883
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !929

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !930
  %65 = load i8, ptr %64, align 1, !dbg !933, !tbaa !883
  %66 = icmp ne i8 %65, 45, !dbg !934
  %67 = select i1 %66, i1 %61, i1 false, !dbg !935
  br label %68, !dbg !935

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !872
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !936
  %71 = load ptr, ptr %70, align 8, !dbg !936, !tbaa !812
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !936
  %74 = load i16, ptr %73, align 2, !dbg !936, !tbaa !915
  %75 = and i16 %74, 8192, !dbg !936
  %76 = icmp eq i16 %75, 0, !dbg !936
  br i1 %76, label %90, label %77, !dbg !938

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !939
  br i1 %78, label %92, label %79, !dbg !942

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !943
  %81 = load i8, ptr %80, align 1, !dbg !943, !tbaa !883
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !943
  %84 = load i16, ptr %83, align 2, !dbg !943, !tbaa !915
  %85 = and i16 %84, 8192, !dbg !943
  %86 = icmp eq i16 %85, 0, !dbg !943
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !944
  br i1 %89, label %90, label %92, !dbg !944

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !945
  call void @llvm.dbg.value(metadata ptr %91, metadata !165, metadata !DIExpression()), !dbg !872
  br label %59, !dbg !927, !llvm.loop !946

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !948
  %94 = load ptr, ptr @stdout, align 8, !dbg !948, !tbaa !812
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !885, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !222, metadata !DIExpression()), !dbg !872
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !969
  %97 = icmp eq i32 %96, 0, !dbg !969
  br i1 %97, label %101, label %98, !dbg !971

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #38, !dbg !972
  %100 = icmp eq i32 %99, 0, !dbg !972
  br i1 %100, label %101, label %104, !dbg !973

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !974
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !974
  br label %107, !dbg !976

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !977
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !977
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !812
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %108), !dbg !979
  %110 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !812
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !980
  %112 = ptrtoint ptr %60 to i64, !dbg !981
  %113 = sub i64 %112, %93, !dbg !981
  %114 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !812
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !981
  %116 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !812
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !982
  %118 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !812
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !983
  %120 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !812
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !984
  br label %122, !dbg !985

122:                                              ; preds = %107, %19
  ret void, !dbg !985
}

; Function Attrs: nounwind
declare !dbg !986 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !990 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !994 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !996 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !999 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1002 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1005 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1008 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1014 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1015 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1021 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1026, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata ptr %1, metadata !1027, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8 0, metadata !1028, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8 0, metadata !1029, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8 1, metadata !1030, metadata !DIExpression()), !dbg !1034
  %3 = load ptr, ptr %1, align 8, !dbg !1035, !tbaa !812
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1036
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #37, !dbg !1037
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #37, !dbg !1038
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #37, !dbg !1039
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1040
  br label %8, !dbg !1041

8:                                                ; preds = %14, %2
  %9 = phi i1 [ true, %14 ], [ false, %2 ]
  %10 = phi i1 [ %15, %14 ], [ false, %2 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1028, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1034
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %11, metadata !1031, metadata !DIExpression()), !dbg !1034
  switch i32 %11, label %22 [
    i32 -1, label %23
    i32 100, label %12
    i32 102, label %14
    i32 -2, label %16
    i32 -3, label %17
  ], !dbg !1041

12:                                               ; preds = %8, %12
  call void @llvm.dbg.value(metadata i8 poison, metadata !1028, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1034
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %13, metadata !1031, metadata !DIExpression()), !dbg !1034
  switch i32 %13, label %22 [
    i32 -1, label %23
    i32 100, label %12
    i32 102, label %14
    i32 -2, label %16
    i32 -3, label %17
  ], !dbg !1041, !llvm.loop !1043

14:                                               ; preds = %12, %8
  %15 = phi i1 [ %10, %8 ], [ true, %12 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1029, metadata !DIExpression()), !dbg !1034
  br label %8, !dbg !1046, !llvm.loop !1049

16:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #41, !dbg !1050
  unreachable, !dbg !1050

17:                                               ; preds = %8, %12
  %18 = load ptr, ptr @stdout, align 8, !dbg !1051, !tbaa !812
  %19 = load ptr, ptr @Version, align 8, !dbg !1051, !tbaa !812
  %20 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !1051
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1051
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef null) #37, !dbg !1051
  tail call void @exit(i32 noundef 0) #39, !dbg !1051
  unreachable, !dbg !1051

22:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #41, !dbg !1052
  unreachable, !dbg !1052

23:                                               ; preds = %8, %12
  %24 = phi i1 [ true, %12 ], [ %10, %8 ]
  %25 = load i32, ptr @optind, align 4, !dbg !1053, !tbaa !874
  %26 = icmp sge i32 %25, %0, !dbg !1054
  call void @llvm.dbg.value(metadata i1 %26, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1034
  %27 = and i1 %24, %9, !dbg !1055
  br i1 %27, label %28, label %30, !dbg !1055

28:                                               ; preds = %23
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1057
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %29) #37, !dbg !1057
  unreachable, !dbg !1057

30:                                               ; preds = %23
  %31 = select i1 %26, i1 %24, i1 false, !dbg !1058
  br i1 %31, label %32, label %34, !dbg !1058

32:                                               ; preds = %30
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1060
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %33) #37, !dbg !1060
  unreachable, !dbg !1060

34:                                               ; preds = %30
  %35 = zext i1 %24 to i32, !dbg !1061
  %36 = select i1 %9, i32 2, i32 %35, !dbg !1061
  %37 = select i1 %26, i32 3, i32 %36, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %37, metadata !1033, metadata !DIExpression()), !dbg !1034
  br i1 %26, label %38, label %39, !dbg !1063

38:                                               ; preds = %34
  tail call void @sync() #37, !dbg !1064
  br label %98, !dbg !1064

39:                                               ; preds = %34, %89
  %40 = phi i32 [ %93, %89 ], [ %25, %34 ]
  %41 = phi i1 [ %91, %89 ], [ true, %34 ]
  %42 = sext i32 %40 to i64, !dbg !1066
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42, !dbg !1066
  %44 = load ptr, ptr %43, align 8, !dbg !1066, !tbaa !812
  call void @llvm.dbg.value(metadata i32 %37, metadata !1070, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata ptr %44, metadata !1075, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 2048, metadata !1076, metadata !DIExpression()), !dbg !1086
  %45 = tail call i32 (ptr, i32, ...) @open(ptr noundef %44, i32 noundef 2048) #37, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %45, metadata !1077, metadata !DIExpression()), !dbg !1086
  %46 = icmp slt i32 %45, 0, !dbg !1089
  br i1 %46, label %47, label %52, !dbg !1090

47:                                               ; preds = %39
  %48 = tail call ptr @__errno_location() #40, !dbg !1091
  %49 = load i32, ptr %48, align 4, !dbg !1091, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %49, metadata !1078, metadata !DIExpression()), !dbg !1092
  %50 = tail call i32 (ptr, i32, ...) @open(ptr noundef %44, i32 noundef 2049) #37, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %50, metadata !1077, metadata !DIExpression()), !dbg !1086
  %51 = icmp sgt i32 %50, -1, !dbg !1095
  br i1 %51, label %52, label %84, !dbg !1097

52:                                               ; preds = %47, %39
  %53 = phi i32 [ %45, %39 ], [ %50, %47 ], !dbg !1086
  call void @llvm.dbg.value(metadata i32 %53, metadata !1077, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 1, metadata !1081, metadata !DIExpression()), !dbg !1086
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %53, i32 noundef 3) #37, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %54, metadata !1082, metadata !DIExpression()), !dbg !1086
  %55 = icmp eq i32 %54, -1, !dbg !1099
  br i1 %55, label %71, label %56, !dbg !1101

56:                                               ; preds = %52
  %57 = and i32 %54, -2049, !dbg !1102
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %53, i32 noundef 4, i32 noundef %57) #37, !dbg !1103
  %59 = icmp slt i32 %58, 0, !dbg !1104
  br i1 %59, label %71, label %60, !dbg !1105

60:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i8 poison, metadata !1081, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 -1, metadata !1083, metadata !DIExpression()), !dbg !1106
  switch i32 %37, label %67 [
    i32 1, label %61
    i32 0, label %63
    i32 2, label %65
  ], !dbg !1107

61:                                               ; preds = %60
  %62 = tail call i32 @fdatasync(i32 noundef %53) #37, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %62, metadata !1083, metadata !DIExpression()), !dbg !1106
  br label %68, !dbg !1110

63:                                               ; preds = %60
  %64 = tail call i32 @fsync(i32 noundef %53) #37, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %64, metadata !1083, metadata !DIExpression()), !dbg !1106
  br label %68, !dbg !1112

65:                                               ; preds = %60
  %66 = tail call i32 @syncfs(i32 noundef %53) #37, !dbg !1113
  call void @llvm.dbg.value(metadata i32 %66, metadata !1083, metadata !DIExpression()), !dbg !1106
  br label %68, !dbg !1114

67:                                               ; preds = %60
  unreachable, !dbg !1115

68:                                               ; preds = %65, %63, %61
  %69 = phi i32 [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], !dbg !1116
  call void @llvm.dbg.value(metadata i32 %69, metadata !1083, metadata !DIExpression()), !dbg !1106
  %70 = icmp slt i32 %69, 0, !dbg !1117
  br i1 %70, label %71, label %77, !dbg !1119

71:                                               ; preds = %68, %56, %52
  %72 = phi ptr [ @.str.57, %52 ], [ @.str.57, %56 ], [ @.str.58, %68 ]
  %73 = tail call ptr @__errno_location() #40, !dbg !1086
  %74 = load i32, ptr %73, align 4, !dbg !1086, !tbaa !874
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %72, i32 noundef 5) #37, !dbg !1086
  %76 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %44) #37, !dbg !1086
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %74, ptr noundef %75, ptr noundef %76) #37, !dbg !1086
  br label %77, !dbg !1120

77:                                               ; preds = %71, %68
  %78 = phi i1 [ true, %68 ], [ false, %71 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1081, metadata !DIExpression()), !dbg !1086
  %79 = tail call i32 @close(i32 noundef %53) #37, !dbg !1120
  %80 = icmp slt i32 %79, 0, !dbg !1122
  br i1 %80, label %81, label %89, !dbg !1123

81:                                               ; preds = %77
  %82 = tail call ptr @__errno_location() #40, !dbg !1124
  %83 = load i32, ptr %82, align 4, !dbg !1124, !tbaa !874
  call void @llvm.dbg.value(metadata i8 0, metadata !1081, metadata !DIExpression()), !dbg !1086
  br label %84, !dbg !1126

84:                                               ; preds = %81, %47
  %85 = phi ptr [ @.str.59, %81 ], [ @.str.56, %47 ]
  %86 = phi i32 [ %83, %81 ], [ %49, %47 ]
  %87 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %85, i32 noundef 5) #37, !dbg !1086
  %88 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %44) #37, !dbg !1086
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %86, ptr noundef %87, ptr noundef %88) #37, !dbg !1086
  br label %89, !dbg !1127

89:                                               ; preds = %77, %84
  %90 = phi i1 [ %78, %77 ], [ false, %84 ], !dbg !1086
  %91 = and i1 %41, %90, !dbg !1128
  call void @llvm.dbg.value(metadata i1 %91, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1034
  %92 = load i32, ptr @optind, align 4, !dbg !1129, !tbaa !874
  %93 = add nsw i32 %92, 1, !dbg !1129
  store i32 %93, ptr @optind, align 4, !dbg !1129, !tbaa !874
  call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1034
  %94 = icmp slt i32 %93, %0, !dbg !1130
  br i1 %94, label %39, label %95, !dbg !1131, !llvm.loop !1132

95:                                               ; preds = %89
  %96 = xor i1 %91, true, !dbg !1134
  %97 = zext i1 %96 to i32, !dbg !1134
  br label %98, !dbg !1134

98:                                               ; preds = %95, %38
  %99 = phi i32 [ 0, %38 ], [ %97, %95 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1034
  ret i32 %99, !dbg !1135
}

; Function Attrs: nounwind
declare !dbg !1136 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1139 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1140 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1143 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1149 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1151 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1155 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1159 i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare !dbg !1162 i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1163 i32 @syncfs(i32 noundef) local_unnamed_addr #2

declare !dbg !1164 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1165 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1167, metadata !DIExpression()), !dbg !1168
  store ptr %0, ptr @file_name, align 8, !dbg !1169, !tbaa !812
  ret void, !dbg !1170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1171 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1175, metadata !DIExpression()), !dbg !1176
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1177, !tbaa !1178
  ret void, !dbg !1180
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1181 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1186, !tbaa !812
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1187
  %3 = icmp eq i32 %2, 0, !dbg !1188
  br i1 %3, label %22, label %4, !dbg !1189

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1190, !tbaa !1178, !range !1191, !noundef !859
  %6 = icmp eq i8 %5, 0, !dbg !1190
  br i1 %6, label %11, label %7, !dbg !1192

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1193
  %9 = load i32, ptr %8, align 4, !dbg !1193, !tbaa !874
  %10 = icmp eq i32 %9, 32, !dbg !1194
  br i1 %10, label %22, label %11, !dbg !1195

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #37, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %12, metadata !1183, metadata !DIExpression()), !dbg !1197
  %13 = load ptr, ptr @file_name, align 8, !dbg !1198, !tbaa !812
  %14 = icmp eq ptr %13, null, !dbg !1198
  %15 = tail call ptr @__errno_location() #40, !dbg !1200
  %16 = load i32, ptr %15, align 4, !dbg !1200, !tbaa !874
  br i1 %14, label %19, label %17, !dbg !1201

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1202
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #37, !dbg !1202
  br label %20, !dbg !1202

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #37, !dbg !1203
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1204, !tbaa !874
  tail call void @_exit(i32 noundef %21) #39, !dbg !1205
  unreachable, !dbg !1205

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1206, !tbaa !812
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1208
  %25 = icmp eq i32 %24, 0, !dbg !1209
  br i1 %25, label %28, label %26, !dbg !1210

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1211, !tbaa !874
  tail call void @_exit(i32 noundef %27) #39, !dbg !1212
  unreachable, !dbg !1212

28:                                               ; preds = %22
  ret void, !dbg !1213
}

; Function Attrs: noreturn
declare !dbg !1214 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1215 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1219, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i32 %1, metadata !1220, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr %2, metadata !1221, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1222, metadata !DIExpression()), !dbg !1224
  tail call fastcc void @flush_stdout(), !dbg !1225
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1226, !tbaa !812
  %7 = icmp eq ptr %6, null, !dbg !1226
  br i1 %7, label %9, label %8, !dbg !1228

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1229
  br label %13, !dbg !1229

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1230, !tbaa !812
  %11 = tail call ptr @getprogname() #38, !dbg !1230
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %11) #37, !dbg !1230
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1232, !tbaa.struct !1233
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1232
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1232
  ret void, !dbg !1234
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1235 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1237, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i32 1, metadata !1239, metadata !DIExpression()), !dbg !1242
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1245
  %2 = icmp slt i32 %1, 0, !dbg !1246
  br i1 %2, label %6, label %3, !dbg !1247

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !812
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1248
  br label %6, !dbg !1248

6:                                                ; preds = %3, %0
  ret void, !dbg !1249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1250 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1252, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata i32 %1, metadata !1253, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.value(metadata ptr %2, metadata !1254, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1255, metadata !DIExpression()), !dbg !1257
  %7 = load ptr, ptr @stderr, align 8, !dbg !1258, !tbaa !812
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1259, !noalias !1303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1307
  call void @llvm.dbg.value(metadata ptr %7, metadata !1299, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %2, metadata !1300, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1301, metadata !DIExpression()), !dbg !1309
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1259
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1259, !noalias !1303
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1310, !tbaa !874
  %10 = add i32 %9, 1, !dbg !1310
  store i32 %10, ptr @error_message_count, align 4, !dbg !1310, !tbaa !874
  %11 = icmp eq i32 %1, 0, !dbg !1311
  br i1 %11, label %21, label %12, !dbg !1313

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1324
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1318, metadata !DIExpression()), !dbg !1325
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %13, metadata !1317, metadata !DIExpression()), !dbg !1322
  %14 = icmp eq ptr %13, null, !dbg !1327
  br i1 %14, label %15, label %17, !dbg !1329

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #37, !dbg !1330
  call void @llvm.dbg.value(metadata ptr %16, metadata !1317, metadata !DIExpression()), !dbg !1322
  br label %17, !dbg !1331

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1322
  call void @llvm.dbg.value(metadata ptr %18, metadata !1317, metadata !DIExpression()), !dbg !1322
  %19 = load ptr, ptr @stderr, align 8, !dbg !1332, !tbaa !812
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %18) #37, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1333
  br label %21, !dbg !1334

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1335, !tbaa !812
  call void @llvm.dbg.value(metadata i32 10, metadata !1336, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata ptr %22, metadata !1342, metadata !DIExpression()), !dbg !1343
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1345
  %24 = load ptr, ptr %23, align 8, !dbg !1345, !tbaa !1346
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1345
  %26 = load ptr, ptr %25, align 8, !dbg !1345, !tbaa !1349
  %27 = icmp ult ptr %24, %26, !dbg !1345
  br i1 %27, label %30, label %28, !dbg !1345, !prof !1350

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1345
  br label %32, !dbg !1345

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1345
  store ptr %31, ptr %23, align 8, !dbg !1345, !tbaa !1346
  store i8 10, ptr %24, align 1, !dbg !1345, !tbaa !883
  br label %32, !dbg !1345

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1351, !tbaa !812
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1351
  %35 = icmp eq i32 %0, 0, !dbg !1352
  br i1 %35, label %37, label %36, !dbg !1354

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1355
  unreachable, !dbg !1355

37:                                               ; preds = %32
  ret void, !dbg !1356
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1357 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1360 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1363 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1366 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1369 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1372 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1376, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i32 %1, metadata !1377, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %2, metadata !1378, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1381
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1379, metadata !DIExpression()), !dbg !1382
  call void @llvm.va_start(ptr nonnull %4), !dbg !1383
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1384, !tbaa.struct !1233
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1384
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1384
  call void @llvm.va_end(ptr nonnull %4), !dbg !1385
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1386
  ret void, !dbg !1386
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !403 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !420, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %1, metadata !421, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %2, metadata !422, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %3, metadata !423, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %4, metadata !424, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.declare(metadata ptr %5, metadata !425, metadata !DIExpression()), !dbg !1388
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1389, !tbaa !874
  %9 = icmp eq i32 %8, 0, !dbg !1389
  br i1 %9, label %24, label %10, !dbg !1391

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1392, !tbaa !874
  %12 = icmp eq i32 %11, %3, !dbg !1395
  br i1 %12, label %13, label %23, !dbg !1396

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1397, !tbaa !812
  %15 = icmp eq ptr %14, %2, !dbg !1398
  br i1 %15, label %37, label %16, !dbg !1399

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1400
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1401
  br i1 %19, label %20, label %23, !dbg !1401

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1402
  %22 = icmp eq i32 %21, 0, !dbg !1403
  br i1 %22, label %37, label %23, !dbg !1404

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1405, !tbaa !812
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1406, !tbaa !874
  br label %24, !dbg !1407

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1408
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1409, !tbaa !812
  %26 = icmp eq ptr %25, null, !dbg !1409
  br i1 %26, label %28, label %27, !dbg !1411

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1412
  br label %32, !dbg !1412

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1413, !tbaa !812
  %30 = tail call ptr @getprogname() #38, !dbg !1413
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %30) #37, !dbg !1413
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1415, !tbaa !812
  %34 = icmp eq ptr %2, null, !dbg !1415
  %35 = select i1 %34, ptr @.str.3.35, ptr @.str.2.36, !dbg !1415
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1415
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1416, !tbaa.struct !1233
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1416
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1416
  br label %37, !dbg !1417

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1417
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1418 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1422, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i32 %1, metadata !1423, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr %2, metadata !1424, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i32 %3, metadata !1425, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr %4, metadata !1426, metadata !DIExpression()), !dbg !1428
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1427, metadata !DIExpression()), !dbg !1430
  call void @llvm.va_start(ptr nonnull %6), !dbg !1431
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1432, !tbaa.struct !1233
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1432
  call void @llvm.va_end(ptr nonnull %6), !dbg !1433
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1434
  ret void, !dbg !1434
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1435 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1437, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata i32 %1, metadata !1438, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #37, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1439, metadata !DIExpression()), !dbg !1464
  call void @llvm.va_start(ptr nonnull %3), !dbg !1465
  call void @llvm.dbg.value(metadata i32 -1, metadata !1450, metadata !DIExpression()), !dbg !1462
  switch i32 %1, label %96 [
    i32 0, label %4
    i32 1030, label %23
    i32 1, label %75
    i32 3, label %75
    i32 1025, label %75
    i32 9, label %75
    i32 1032, label %75
    i32 1034, label %75
    i32 11, label %75
    i32 1033, label %77
    i32 1031, label %77
    i32 10, label %77
    i32 1026, label %77
    i32 2, label %77
    i32 4, label %77
    i32 1024, label %77
    i32 8, label %77
  ], !dbg !1466

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1467
  %6 = load i32, ptr %5, align 8, !dbg !1467
  %7 = icmp sgt i32 %6, -1, !dbg !1467
  br i1 %7, label %16, label %8, !dbg !1467

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1467
  store i32 %9, ptr %5, align 8, !dbg !1467
  %10 = icmp ult i32 %6, -7, !dbg !1467
  br i1 %10, label %11, label %16, !dbg !1467

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1467
  %13 = load ptr, ptr %12, align 8, !dbg !1467
  %14 = sext i32 %6 to i64, !dbg !1467
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1467
  br label %19, !dbg !1467

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1467
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1467
  store ptr %18, ptr %3, align 8, !dbg !1467
  br label %19, !dbg !1467

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1467
  %21 = load i32, ptr %20, align 8, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %21, metadata !1451, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %21, metadata !1472, metadata !DIExpression()), !dbg !1474
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #37, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %22, metadata !1473, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %22, metadata !1450, metadata !DIExpression()), !dbg !1462
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1477
  %25 = load i32, ptr %24, align 8, !dbg !1477
  %26 = icmp sgt i32 %25, -1, !dbg !1477
  br i1 %26, label %35, label %27, !dbg !1477

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1477
  store i32 %28, ptr %24, align 8, !dbg !1477
  %29 = icmp ult i32 %25, -7, !dbg !1477
  br i1 %29, label %30, label %35, !dbg !1477

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1477
  %32 = load ptr, ptr %31, align 8, !dbg !1477
  %33 = sext i32 %25 to i64, !dbg !1477
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !1477
  br label %38, !dbg !1477

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !1477
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !1477
  store ptr %37, ptr %3, align 8, !dbg !1477
  br label %38, !dbg !1477

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1477
  %40 = load i32, ptr %39, align 8, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %40, metadata !1454, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 %0, metadata !459, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i32 %40, metadata !460, metadata !DIExpression()), !dbg !1479
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1481, !tbaa !874
  %42 = icmp sgt i32 %41, -1, !dbg !1483
  br i1 %42, label %43, label %55, !dbg !1484

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #37, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %44, metadata !461, metadata !DIExpression()), !dbg !1479
  %45 = icmp sgt i32 %44, -1, !dbg !1487
  br i1 %45, label %50, label %46, !dbg !1489

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #40, !dbg !1490
  %48 = load i32, ptr %47, align 4, !dbg !1490, !tbaa !874
  %49 = icmp eq i32 %48, 22, !dbg !1491
  br i1 %49, label %51, label %50, !dbg !1492

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1493, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %44, metadata !461, metadata !DIExpression()), !dbg !1479
  br label %115, !dbg !1495

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %40, metadata !1472, metadata !DIExpression()), !dbg !1496
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #37, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %52, metadata !1473, metadata !DIExpression()), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %52, metadata !461, metadata !DIExpression()), !dbg !1479
  %53 = icmp sgt i32 %52, -1, !dbg !1500
  br i1 %53, label %54, label %115, !dbg !1502

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1503, !tbaa !874
  br label %59, !dbg !1504

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %40, metadata !1472, metadata !DIExpression()), !dbg !1505
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #37, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %56, metadata !1473, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %56, metadata !461, metadata !DIExpression()), !dbg !1479
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1508
  call void @llvm.dbg.value(metadata i32 %61, metadata !461, metadata !DIExpression()), !dbg !1479
  %62 = icmp sgt i32 %61, -1, !dbg !1509
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1495
  br i1 %63, label %64, label %115, !dbg !1495

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #37, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %65, metadata !462, metadata !DIExpression()), !dbg !1511
  %66 = icmp slt i32 %65, 0, !dbg !1512
  br i1 %66, label %71, label %67, !dbg !1513

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1514
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #37, !dbg !1515
  %70 = icmp eq i32 %69, -1, !dbg !1516
  br i1 %70, label %71, label %115, !dbg !1517

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #40, !dbg !1518
  %73 = load i32, ptr %72, align 4, !dbg !1518, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %73, metadata !465, metadata !DIExpression()), !dbg !1519
  %74 = call i32 @close(i32 noundef %61) #37, !dbg !1520
  store i32 %73, ptr %72, align 4, !dbg !1521, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !461, metadata !DIExpression()), !dbg !1479
  br label %115, !dbg !1522

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #37, !dbg !1523
  call void @llvm.dbg.value(metadata i32 %76, metadata !1450, metadata !DIExpression()), !dbg !1462
  br label %115, !dbg !1524

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1525
  %79 = load i32, ptr %78, align 8, !dbg !1525
  %80 = icmp sgt i32 %79, -1, !dbg !1525
  br i1 %80, label %89, label %81, !dbg !1525

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1525
  store i32 %82, ptr %78, align 8, !dbg !1525
  %83 = icmp ult i32 %79, -7, !dbg !1525
  br i1 %83, label %84, label %89, !dbg !1525

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1525
  %86 = load ptr, ptr %85, align 8, !dbg !1525
  %87 = sext i32 %79 to i64, !dbg !1525
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1525
  br label %92, !dbg !1525

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1525
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1525
  store ptr %91, ptr %3, align 8, !dbg !1525
  br label %92, !dbg !1525

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1525
  %94 = load i32, ptr %93, align 8, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %94, metadata !1456, metadata !DIExpression()), !dbg !1526
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #37, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %95, metadata !1450, metadata !DIExpression()), !dbg !1462
  br label %115, !dbg !1528

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1529
  %98 = load i32, ptr %97, align 8, !dbg !1529
  %99 = icmp sgt i32 %98, -1, !dbg !1529
  br i1 %99, label %108, label %100, !dbg !1529

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1529
  store i32 %101, ptr %97, align 8, !dbg !1529
  %102 = icmp ult i32 %98, -7, !dbg !1529
  br i1 %102, label %103, label %108, !dbg !1529

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1529
  %105 = load ptr, ptr %104, align 8, !dbg !1529
  %106 = sext i32 %98 to i64, !dbg !1529
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1529
  br label %111, !dbg !1529

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1529
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1529
  store ptr %110, ptr %3, align 8, !dbg !1529
  br label %111, !dbg !1529

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1529
  %113 = load ptr, ptr %112, align 8, !dbg !1529
  call void @llvm.dbg.value(metadata ptr %113, metadata !1460, metadata !DIExpression()), !dbg !1530
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #37, !dbg !1531
  call void @llvm.dbg.value(metadata i32 %114, metadata !1450, metadata !DIExpression()), !dbg !1462
  br label %115, !dbg !1532

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1533
  call void @llvm.dbg.value(metadata i32 %116, metadata !1450, metadata !DIExpression()), !dbg !1462
  call void @llvm.va_end(ptr nonnull %3), !dbg !1534
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #37, !dbg !1535
  ret i32 %116, !dbg !1536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1537 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1540, !tbaa !812
  ret ptr %1, !dbg !1541
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1542 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !1547
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1548
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1547
  %3 = icmp eq ptr %2, null, !dbg !1549
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1549
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %5, metadata !1546, metadata !DIExpression()), !dbg !1547
  %6 = ptrtoint ptr %5 to i64, !dbg !1550
  %7 = ptrtoint ptr %0 to i64, !dbg !1550
  %8 = sub i64 %6, %7, !dbg !1550
  %9 = icmp sgt i64 %8, 6, !dbg !1552
  br i1 %9, label %10, label %19, !dbg !1553

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1554
  call void @llvm.dbg.value(metadata ptr %11, metadata !1555, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1560, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i64 7, metadata !1561, metadata !DIExpression()), !dbg !1562
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1564
  %13 = icmp eq i32 %12, 0, !dbg !1565
  br i1 %13, label %14, label %19, !dbg !1566

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1544, metadata !DIExpression()), !dbg !1547
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #38, !dbg !1567
  %16 = icmp eq i32 %15, 0, !dbg !1570
  %17 = select i1 %16, i64 3, i64 0, !dbg !1571
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1571
  br label %19, !dbg !1571

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1547
  call void @llvm.dbg.value(metadata ptr %21, metadata !1546, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %20, metadata !1544, metadata !DIExpression()), !dbg !1547
  store ptr %20, ptr @program_name, align 8, !dbg !1572, !tbaa !812
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1573, !tbaa !812
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1574, !tbaa !812
  ret void, !dbg !1575
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1576 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !480 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !487, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata ptr %1, metadata !488, metadata !DIExpression()), !dbg !1577
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1578
  call void @llvm.dbg.value(metadata ptr %5, metadata !489, metadata !DIExpression()), !dbg !1577
  %6 = icmp eq ptr %5, %0, !dbg !1579
  br i1 %6, label %7, label %14, !dbg !1581

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1582
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1583
  call void @llvm.dbg.declare(metadata ptr %4, metadata !495, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.value(metadata ptr %4, metadata !1585, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %4, metadata !1594, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i32 0, metadata !1600, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i64 8, metadata !1601, metadata !DIExpression()), !dbg !1602
  store i64 0, ptr %4, align 8, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %3, metadata !490, metadata !DIExpression(DW_OP_deref)), !dbg !1577
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1605
  %9 = icmp eq i64 %8, 2, !dbg !1607
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !490, metadata !DIExpression()), !dbg !1577
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1608
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1577
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1609
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1609
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1577
  ret ptr %15, !dbg !1609
}

; Function Attrs: nounwind
declare !dbg !1610 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1616 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1621, metadata !DIExpression()), !dbg !1624
  %2 = tail call ptr @__errno_location() #40, !dbg !1625
  %3 = load i32, ptr %2, align 4, !dbg !1625, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %3, metadata !1622, metadata !DIExpression()), !dbg !1624
  %4 = icmp eq ptr %0, null, !dbg !1626
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1626
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #43, !dbg !1627
  call void @llvm.dbg.value(metadata ptr %6, metadata !1623, metadata !DIExpression()), !dbg !1624
  store i32 %3, ptr %2, align 4, !dbg !1628, !tbaa !874
  ret ptr %6, !dbg !1629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1630 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1636, metadata !DIExpression()), !dbg !1637
  %2 = icmp eq ptr %0, null, !dbg !1638
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1638
  %4 = load i32, ptr %3, align 8, !dbg !1639, !tbaa !1640
  ret i32 %4, !dbg !1642
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1643 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1647, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i32 %1, metadata !1648, metadata !DIExpression()), !dbg !1649
  %3 = icmp eq ptr %0, null, !dbg !1650
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1650
  store i32 %1, ptr %4, align 8, !dbg !1651, !tbaa !1640
  ret void, !dbg !1652
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1653 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1657, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %1, metadata !1658, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i32 %2, metadata !1659, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 %1, metadata !1660, metadata !DIExpression()), !dbg !1665
  %4 = icmp eq ptr %0, null, !dbg !1666
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1666
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1667
  %7 = lshr i8 %1, 5, !dbg !1668
  %8 = zext i8 %7 to i64, !dbg !1668
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %9, metadata !1661, metadata !DIExpression()), !dbg !1665
  %10 = and i8 %1, 31, !dbg !1670
  %11 = zext i8 %10 to i32, !dbg !1670
  call void @llvm.dbg.value(metadata i32 %11, metadata !1663, metadata !DIExpression()), !dbg !1665
  %12 = load i32, ptr %9, align 4, !dbg !1671, !tbaa !874
  %13 = lshr i32 %12, %11, !dbg !1672
  %14 = and i32 %13, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %14, metadata !1664, metadata !DIExpression()), !dbg !1665
  %15 = xor i32 %13, %2, !dbg !1674
  %16 = and i32 %15, 1, !dbg !1674
  %17 = shl nuw i32 %16, %11, !dbg !1675
  %18 = xor i32 %17, %12, !dbg !1676
  store i32 %18, ptr %9, align 4, !dbg !1676, !tbaa !874
  ret i32 %14, !dbg !1677
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1678 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1682, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %1, metadata !1683, metadata !DIExpression()), !dbg !1685
  %3 = icmp eq ptr %0, null, !dbg !1686
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %4, metadata !1682, metadata !DIExpression()), !dbg !1685
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1689
  %6 = load i32, ptr %5, align 4, !dbg !1689, !tbaa !1690
  call void @llvm.dbg.value(metadata i32 %6, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i32 %1, ptr %5, align 4, !dbg !1691, !tbaa !1690
  ret i32 %6, !dbg !1692
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1693 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1697, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %2, metadata !1699, metadata !DIExpression()), !dbg !1700
  %4 = icmp eq ptr %0, null, !dbg !1701
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !1700
  store i32 10, ptr %5, align 8, !dbg !1704, !tbaa !1640
  %6 = icmp ne ptr %1, null, !dbg !1705
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1707
  br i1 %8, label %10, label %9, !dbg !1707

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1708
  unreachable, !dbg !1708

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1709
  store ptr %1, ptr %11, align 8, !dbg !1710, !tbaa !1711
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1712
  store ptr %2, ptr %12, align 8, !dbg !1713, !tbaa !1714
  ret void, !dbg !1715
}

; Function Attrs: noreturn nounwind
declare !dbg !1716 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1717 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1721, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %1, metadata !1722, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %2, metadata !1723, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i64 %3, metadata !1724, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %4, metadata !1725, metadata !DIExpression()), !dbg !1729
  %6 = icmp eq ptr %4, null, !dbg !1730
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %7, metadata !1726, metadata !DIExpression()), !dbg !1729
  %8 = tail call ptr @__errno_location() #40, !dbg !1731
  %9 = load i32, ptr %8, align 4, !dbg !1731, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %9, metadata !1727, metadata !DIExpression()), !dbg !1729
  %10 = load i32, ptr %7, align 8, !dbg !1732, !tbaa !1640
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1733
  %12 = load i32, ptr %11, align 4, !dbg !1733, !tbaa !1690
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1734
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1735
  %15 = load ptr, ptr %14, align 8, !dbg !1735, !tbaa !1711
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1736
  %17 = load ptr, ptr %16, align 8, !dbg !1736, !tbaa !1714
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %18, metadata !1728, metadata !DIExpression()), !dbg !1729
  store i32 %9, ptr %8, align 4, !dbg !1738, !tbaa !874
  ret i64 %18, !dbg !1739
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1740 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1746, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %1, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %2, metadata !1748, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %3, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %4, metadata !1750, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %5, metadata !1751, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %6, metadata !1752, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %7, metadata !1753, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %8, metadata !1754, metadata !DIExpression()), !dbg !1808
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1809
  %17 = icmp eq i64 %16, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i1 %17, metadata !1755, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr null, metadata !1758, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1759, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %5, metadata !1761, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1763, metadata !DIExpression()), !dbg !1808
  %18 = and i32 %5, 2, !dbg !1811
  %19 = icmp ne i32 %18, 0, !dbg !1811
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1811

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1812
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1813
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1814
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %34, metadata !1759, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %33, metadata !1758, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %32, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %31, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %30, metadata !1754, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %29, metadata !1753, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %28, metadata !1750, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.label(metadata !1801), !dbg !1815
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1808
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
  ], !dbg !1816

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 5, metadata !1750, metadata !DIExpression()), !dbg !1808
  br label %102, !dbg !1817

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 5, metadata !1750, metadata !DIExpression()), !dbg !1808
  br i1 %36, label %102, label %42, !dbg !1817

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1818
  br i1 %43, label %102, label %44, !dbg !1822

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1818, !tbaa !883
  br label %102, !dbg !1818

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !576, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %28, metadata !577, metadata !DIExpression()), !dbg !1823
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #37, !dbg !1827
  call void @llvm.dbg.value(metadata ptr %46, metadata !578, metadata !DIExpression()), !dbg !1823
  %47 = icmp eq ptr %46, @.str.11.74, !dbg !1828
  br i1 %47, label %48, label %57, !dbg !1830

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1831
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %13, metadata !580, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %13, metadata !1834, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %13, metadata !1842, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !1847
  store i64 0, ptr %13, align 8, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %12, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !1823
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1850
  %50 = icmp eq i64 %49, 3, !dbg !1852
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !579, metadata !DIExpression()), !dbg !1823
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1853
  %54 = icmp eq i32 %28, 9, !dbg !1853
  %55 = select i1 %54, ptr @.str.10.76, ptr @.str.12.77, !dbg !1853
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1853
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1854
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1854
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1823
  call void @llvm.dbg.value(metadata ptr %58, metadata !1753, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !576, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i32 %28, metadata !577, metadata !DIExpression()), !dbg !1855
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #37, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %59, metadata !578, metadata !DIExpression()), !dbg !1855
  %60 = icmp eq ptr %59, @.str.12.77, !dbg !1858
  br i1 %60, label %61, label %70, !dbg !1859

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1861
  call void @llvm.dbg.declare(metadata ptr %11, metadata !580, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata ptr %11, metadata !1834, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %11, metadata !1842, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !1865
  store i64 0, ptr %11, align 8, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %10, metadata !579, metadata !DIExpression(DW_OP_deref)), !dbg !1855
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1868
  %63 = icmp eq i64 %62, 3, !dbg !1869
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !579, metadata !DIExpression()), !dbg !1855
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1870
  %67 = icmp eq i32 %28, 9, !dbg !1870
  %68 = select i1 %67, ptr @.str.10.76, ptr @.str.12.77, !dbg !1870
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1870
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1871
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1871
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1754, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %71, metadata !1753, metadata !DIExpression()), !dbg !1808
  br i1 %36, label %88, label %73, !dbg !1872

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1765, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1808
  %74 = load i8, ptr %71, align 1, !dbg !1874, !tbaa !883
  %75 = icmp eq i8 %74, 0, !dbg !1876
  br i1 %75, label %88, label %76, !dbg !1876

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1765, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %79, metadata !1756, metadata !DIExpression()), !dbg !1808
  %80 = icmp ult i64 %79, %39, !dbg !1877
  br i1 %80, label %81, label %83, !dbg !1880

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1877
  store i8 %77, ptr %82, align 1, !dbg !1877, !tbaa !883
  br label %83, !dbg !1877

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %84, metadata !1756, metadata !DIExpression()), !dbg !1808
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %85, metadata !1765, metadata !DIExpression()), !dbg !1873
  %86 = load i8, ptr %85, align 1, !dbg !1874, !tbaa !883
  %87 = icmp eq i8 %86, 0, !dbg !1876
  br i1 %87, label %88, label %76, !dbg !1876, !llvm.loop !1882

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1884
  call void @llvm.dbg.value(metadata i64 %89, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %72, metadata !1758, metadata !DIExpression()), !dbg !1808
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %90, metadata !1759, metadata !DIExpression()), !dbg !1808
  br label %102, !dbg !1886

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1808
  br label %93, !dbg !1887

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1808
  br i1 %36, label %102, label %96, !dbg !1888

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 2, metadata !1750, metadata !DIExpression()), !dbg !1808
  br label %102, !dbg !1889

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 2, metadata !1750, metadata !DIExpression()), !dbg !1808
  br i1 %36, label %102, label %96, !dbg !1889

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1890
  br i1 %98, label %102, label %99, !dbg !1894

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1890, !tbaa !883
  br label %102, !dbg !1890

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1808
  br label %102, !dbg !1895

101:                                              ; preds = %27
  call void @abort() #39, !dbg !1896
  unreachable, !dbg !1896

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1884
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.76, %42 ], [ @.str.10.76, %44 ], [ @.str.10.76, %41 ], [ %33, %27 ], [ @.str.12.77, %96 ], [ @.str.12.77, %99 ], [ @.str.12.77, %95 ], [ @.str.10.76, %40 ], [ @.str.12.77, %93 ], [ @.str.12.77, %92 ], !dbg !1808
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1808
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %108, metadata !1759, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %107, metadata !1758, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %106, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %105, metadata !1754, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata ptr %104, metadata !1753, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i32 %103, metadata !1750, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 0, metadata !1770, metadata !DIExpression()), !dbg !1897
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
  br label %122, !dbg !1898

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1884
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1812
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1899
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %129, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %125, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %124, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %123, metadata !1749, metadata !DIExpression()), !dbg !1808
  %131 = icmp eq i64 %123, -1, !dbg !1900
  br i1 %131, label %132, label %136, !dbg !1901

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1902
  %134 = load i8, ptr %133, align 1, !dbg !1902, !tbaa !883
  %135 = icmp eq i8 %134, 0, !dbg !1903
  br i1 %135, label %579, label %138, !dbg !1904

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1905
  br i1 %137, label %579, label %138, !dbg !1904

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1906
  br i1 %114, label %139, label %152, !dbg !1907

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1909
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1910
  br i1 %141, label %142, label %144, !dbg !1910

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %143, metadata !1749, metadata !DIExpression()), !dbg !1808
  br label %144, !dbg !1912

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1912
  call void @llvm.dbg.value(metadata i64 %145, metadata !1749, metadata !DIExpression()), !dbg !1808
  %146 = icmp ugt i64 %140, %145, !dbg !1913
  br i1 %146, label %152, label %147, !dbg !1914

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %148, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %107, metadata !1919, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %108, metadata !1920, metadata !DIExpression()), !dbg !1921
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1923
  %150 = icmp eq i32 %149, 0, !dbg !1924
  %151 = and i1 %150, %110, !dbg !1925
  br i1 %151, label %630, label %152, !dbg !1925

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %153, metadata !1749, metadata !DIExpression()), !dbg !1808
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1926
  %156 = load i8, ptr %155, align 1, !dbg !1926, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %156, metadata !1777, metadata !DIExpression()), !dbg !1906
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
  ], !dbg !1927

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1928

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1929

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1906
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1933
  br i1 %160, label %177, label %161, !dbg !1933

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1935
  br i1 %162, label %163, label %165, !dbg !1939

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1935
  store i8 39, ptr %164, align 1, !dbg !1935, !tbaa !883
  br label %165, !dbg !1935

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %166, metadata !1756, metadata !DIExpression()), !dbg !1808
  %167 = icmp ult i64 %166, %130, !dbg !1940
  br i1 %167, label %168, label %170, !dbg !1943

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1940
  store i8 36, ptr %169, align 1, !dbg !1940, !tbaa !883
  br label %170, !dbg !1940

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %171, metadata !1756, metadata !DIExpression()), !dbg !1808
  %172 = icmp ult i64 %171, %130, !dbg !1944
  br i1 %172, label %173, label %175, !dbg !1947

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1944
  store i8 39, ptr %174, align 1, !dbg !1944, !tbaa !883
  br label %175, !dbg !1944

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %176, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %177, !dbg !1948

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1808
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %178, metadata !1756, metadata !DIExpression()), !dbg !1808
  %180 = icmp ult i64 %178, %130, !dbg !1949
  br i1 %180, label %181, label %183, !dbg !1952

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1949
  store i8 92, ptr %182, align 1, !dbg !1949, !tbaa !883
  br label %183, !dbg !1949

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %184, metadata !1756, metadata !DIExpression()), !dbg !1808
  br i1 %111, label %185, label %482, !dbg !1953

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1955
  %187 = icmp ult i64 %186, %153, !dbg !1956
  br i1 %187, label %188, label %439, !dbg !1957

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1958
  %190 = load i8, ptr %189, align 1, !dbg !1958, !tbaa !883
  %191 = add i8 %190, -48, !dbg !1959
  %192 = icmp ult i8 %191, 10, !dbg !1959
  br i1 %192, label %193, label %439, !dbg !1959

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1960
  br i1 %194, label %195, label %197, !dbg !1964

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1960
  store i8 48, ptr %196, align 1, !dbg !1960, !tbaa !883
  br label %197, !dbg !1960

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %198, metadata !1756, metadata !DIExpression()), !dbg !1808
  %199 = icmp ult i64 %198, %130, !dbg !1965
  br i1 %199, label %200, label %202, !dbg !1968

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1965
  store i8 48, ptr %201, align 1, !dbg !1965, !tbaa !883
  br label %202, !dbg !1965

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %203, metadata !1756, metadata !DIExpression()), !dbg !1808
  br label %439, !dbg !1969

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1970

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1971

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1972

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1974

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1976
  %210 = icmp ult i64 %209, %153, !dbg !1977
  br i1 %210, label %211, label %439, !dbg !1978

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1979
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1980
  %214 = load i8, ptr %213, align 1, !dbg !1980, !tbaa !883
  %215 = icmp eq i8 %214, 63, !dbg !1981
  br i1 %215, label %216, label %439, !dbg !1982

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1983
  %218 = load i8, ptr %217, align 1, !dbg !1983, !tbaa !883
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
  ], !dbg !1984

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1985

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %209, metadata !1770, metadata !DIExpression()), !dbg !1897
  %221 = icmp ult i64 %124, %130, !dbg !1987
  br i1 %221, label %222, label %224, !dbg !1990

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1987
  store i8 63, ptr %223, align 1, !dbg !1987, !tbaa !883
  br label %224, !dbg !1987

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %225, metadata !1756, metadata !DIExpression()), !dbg !1808
  %226 = icmp ult i64 %225, %130, !dbg !1991
  br i1 %226, label %227, label %229, !dbg !1994

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1991
  store i8 34, ptr %228, align 1, !dbg !1991, !tbaa !883
  br label %229, !dbg !1991

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %230, metadata !1756, metadata !DIExpression()), !dbg !1808
  %231 = icmp ult i64 %230, %130, !dbg !1995
  br i1 %231, label %232, label %234, !dbg !1998

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1995
  store i8 34, ptr %233, align 1, !dbg !1995, !tbaa !883
  br label %234, !dbg !1995

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %235, metadata !1756, metadata !DIExpression()), !dbg !1808
  %236 = icmp ult i64 %235, %130, !dbg !1999
  br i1 %236, label %237, label %239, !dbg !2002

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1999
  store i8 63, ptr %238, align 1, !dbg !1999, !tbaa !883
  br label %239, !dbg !1999

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %240, metadata !1756, metadata !DIExpression()), !dbg !1808
  br label %439, !dbg !2003

241:                                              ; preds = %152
  br label %251, !dbg !2004

242:                                              ; preds = %152
  br label %251, !dbg !2005

243:                                              ; preds = %152
  br label %249, !dbg !2006

244:                                              ; preds = %152
  br label %249, !dbg !2007

245:                                              ; preds = %152
  br label %251, !dbg !2008

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2009

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2010

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2013

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2015
  call void @llvm.dbg.label(metadata !1802), !dbg !2016
  br i1 %119, label %621, label %251, !dbg !2017

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2015
  call void @llvm.dbg.label(metadata !1804), !dbg !2019
  br i1 %109, label %493, label %450, !dbg !2020

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2021

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2022, !tbaa !883
  %256 = icmp eq i8 %255, 0, !dbg !2024
  br i1 %256, label %257, label %439, !dbg !2025

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2026
  br i1 %258, label %259, label %439, !dbg !2028

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1906
  br label %260, !dbg !2029

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1776, metadata !DIExpression()), !dbg !1906
  br i1 %116, label %262, label %439, !dbg !2030

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2032

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1776, metadata !DIExpression()), !dbg !1906
  br i1 %116, label %264, label %439, !dbg !2033

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2034

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2037
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2039
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2039
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2039
  call void @llvm.dbg.value(metadata i64 %270, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %269, metadata !1757, metadata !DIExpression()), !dbg !1808
  %271 = icmp ult i64 %124, %270, !dbg !2040
  br i1 %271, label %272, label %274, !dbg !2043

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2040
  store i8 39, ptr %273, align 1, !dbg !2040, !tbaa !883
  br label %274, !dbg !2040

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %275, metadata !1756, metadata !DIExpression()), !dbg !1808
  %276 = icmp ult i64 %275, %270, !dbg !2044
  br i1 %276, label %277, label %279, !dbg !2047

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2044
  store i8 92, ptr %278, align 1, !dbg !2044, !tbaa !883
  br label %279, !dbg !2044

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %280, metadata !1756, metadata !DIExpression()), !dbg !1808
  %281 = icmp ult i64 %280, %270, !dbg !2048
  br i1 %281, label %282, label %284, !dbg !2051

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2048
  store i8 39, ptr %283, align 1, !dbg !2048, !tbaa !883
  br label %284, !dbg !2048

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %285, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %439, !dbg !2052

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2053

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1778, metadata !DIExpression()), !dbg !2054
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !2055
  %289 = load ptr, ptr %288, align 8, !dbg !2055, !tbaa !812
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2055
  %292 = load i16, ptr %291, align 2, !dbg !2055, !tbaa !915
  %293 = and i16 %292, 16384, !dbg !2055
  %294 = icmp ne i16 %293, 0, !dbg !2057
  call void @llvm.dbg.value(metadata i1 %294, metadata !1781, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2054
  br label %337, !dbg !2058

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1782, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata ptr %14, metadata !1834, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata ptr %14, metadata !1842, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i64 8, metadata !1846, metadata !DIExpression()), !dbg !2063
  store i64 0, ptr %14, align 8, !dbg !2065
  call void @llvm.dbg.value(metadata i64 0, metadata !1778, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 1, metadata !1781, metadata !DIExpression()), !dbg !2054
  %296 = icmp eq i64 %153, -1, !dbg !2066
  br i1 %296, label %297, label %299, !dbg !2068

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %298, metadata !1749, metadata !DIExpression()), !dbg !1808
  br label %299, !dbg !2070

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1906
  call void @llvm.dbg.value(metadata i64 %300, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !2071
  %301 = sub i64 %300, %129, !dbg !2072
  call void @llvm.dbg.value(metadata ptr %15, metadata !1785, metadata !DIExpression(DW_OP_deref)), !dbg !2073
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %302, metadata !1789, metadata !DIExpression()), !dbg !2073
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2075

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1778, metadata !DIExpression()), !dbg !2054
  %304 = icmp ugt i64 %300, %129, !dbg !2076
  br i1 %304, label %306, label %332, !dbg !2078

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1781, metadata !DIExpression()), !dbg !2054
  br label %332, !dbg !2079

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1778, metadata !DIExpression()), !dbg !2054
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2081
  %310 = load i8, ptr %309, align 1, !dbg !2081, !tbaa !883
  %311 = icmp eq i8 %310, 0, !dbg !2078
  br i1 %311, label %332, label %312, !dbg !2082

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %313, metadata !1778, metadata !DIExpression()), !dbg !2054
  %314 = add i64 %313, %129, !dbg !2084
  %315 = icmp eq i64 %313, %301, !dbg !2076
  br i1 %315, label %332, label %306, !dbg !2078, !llvm.loop !2085

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2086
  %319 = and i1 %318, %110, !dbg !2086
  call void @llvm.dbg.value(metadata i64 1, metadata !1790, metadata !DIExpression()), !dbg !2087
  br i1 %319, label %320, label %328, !dbg !2086

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1790, metadata !DIExpression()), !dbg !2087
  %322 = add i64 %321, %129, !dbg !2088
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2090
  %324 = load i8, ptr %323, align 1, !dbg !2090, !tbaa !883
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2091

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %326, metadata !1790, metadata !DIExpression()), !dbg !2087
  %327 = icmp eq i64 %326, %302, !dbg !2093
  br i1 %327, label %328, label %320, !dbg !2094, !llvm.loop !2095

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2097, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %329, metadata !1785, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 %329, metadata !2099, metadata !DIExpression()), !dbg !2107
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !2109
  %331 = icmp ne i32 %330, 0, !dbg !2110
  call void @llvm.dbg.value(metadata i8 poison, metadata !1781, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %302, metadata !1778, metadata !DIExpression()), !dbg !2054
  br label %332, !dbg !2111

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1781, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %333, metadata !1778, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2113
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1781, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 0, metadata !1778, metadata !DIExpression()), !dbg !2054
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !2112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !2113
  call void @llvm.dbg.label(metadata !1807), !dbg !2114
  %336 = select i1 %109, i32 4, i32 2, !dbg !2115
  br label %626, !dbg !2115

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1906
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2117
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1781, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %339, metadata !1778, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i64 %338, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i1 %340, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1906
  %341 = icmp ult i64 %339, 2, !dbg !2118
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2119
  br i1 %343, label %439, label %344, !dbg !2119

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %345, metadata !1798, metadata !DIExpression()), !dbg !2121
  br label %346, !dbg !2122

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1808
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1897
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2123
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1906
  call void @llvm.dbg.value(metadata i8 %352, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %351, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %349, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %347, metadata !1756, metadata !DIExpression()), !dbg !1808
  br i1 %342, label %397, label %353, !dbg !2124

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2129

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1906
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2132
  br i1 %355, label %372, label %356, !dbg !2132

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2134
  br i1 %357, label %358, label %360, !dbg !2138

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2134
  store i8 39, ptr %359, align 1, !dbg !2134, !tbaa !883
  br label %360, !dbg !2134

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %361, metadata !1756, metadata !DIExpression()), !dbg !1808
  %362 = icmp ult i64 %361, %130, !dbg !2139
  br i1 %362, label %363, label %365, !dbg !2142

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2139
  store i8 36, ptr %364, align 1, !dbg !2139, !tbaa !883
  br label %365, !dbg !2139

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %366, metadata !1756, metadata !DIExpression()), !dbg !1808
  %367 = icmp ult i64 %366, %130, !dbg !2143
  br i1 %367, label %368, label %370, !dbg !2146

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2143
  store i8 39, ptr %369, align 1, !dbg !2143, !tbaa !883
  br label %370, !dbg !2143

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %371, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %372, !dbg !2147

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1808
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %373, metadata !1756, metadata !DIExpression()), !dbg !1808
  %375 = icmp ult i64 %373, %130, !dbg !2148
  br i1 %375, label %376, label %378, !dbg !2151

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2148
  store i8 92, ptr %377, align 1, !dbg !2148, !tbaa !883
  br label %378, !dbg !2148

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %379, metadata !1756, metadata !DIExpression()), !dbg !1808
  %380 = icmp ult i64 %379, %130, !dbg !2152
  br i1 %380, label %381, label %385, !dbg !2155

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2152
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2152
  store i8 %383, ptr %384, align 1, !dbg !2152, !tbaa !883
  br label %385, !dbg !2152

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %386, metadata !1756, metadata !DIExpression()), !dbg !1808
  %387 = icmp ult i64 %386, %130, !dbg !2156
  br i1 %387, label %388, label %393, !dbg !2159

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2156
  %391 = or i8 %390, 48, !dbg !2156
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2156
  store i8 %391, ptr %392, align 1, !dbg !2156, !tbaa !883
  br label %393, !dbg !2156

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %394, metadata !1756, metadata !DIExpression()), !dbg !1808
  %395 = and i8 %352, 7, !dbg !2160
  %396 = or i8 %395, 48, !dbg !2161
  call void @llvm.dbg.value(metadata i8 %396, metadata !1777, metadata !DIExpression()), !dbg !1906
  br label %404, !dbg !2162

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2163

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2164
  br i1 %399, label %400, label %402, !dbg !2169

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2164
  store i8 92, ptr %401, align 1, !dbg !2164, !tbaa !883
  br label %402, !dbg !2164

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %403, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1906
  br label %404, !dbg !2170

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1808
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1906
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1906
  call void @llvm.dbg.value(metadata i8 %409, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %408, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %405, metadata !1756, metadata !DIExpression()), !dbg !1808
  %410 = add i64 %349, 1, !dbg !2171
  %411 = icmp ugt i64 %345, %410, !dbg !2173
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2174

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2175
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2175
  br i1 %415, label %416, label %427, !dbg !2175

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2178
  br i1 %417, label %418, label %420, !dbg !2182

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2178
  store i8 39, ptr %419, align 1, !dbg !2178, !tbaa !883
  br label %420, !dbg !2178

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %421, metadata !1756, metadata !DIExpression()), !dbg !1808
  %422 = icmp ult i64 %421, %130, !dbg !2183
  br i1 %422, label %423, label %425, !dbg !2186

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2183
  store i8 39, ptr %424, align 1, !dbg !2183, !tbaa !883
  br label %425, !dbg !2183

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %426, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %427, !dbg !2187

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2188
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %428, metadata !1756, metadata !DIExpression()), !dbg !1808
  %430 = icmp ult i64 %428, %130, !dbg !2189
  br i1 %430, label %431, label %433, !dbg !2192

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2189
  store i8 %409, ptr %432, align 1, !dbg !2189, !tbaa !883
  br label %433, !dbg !2189

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %434, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %410, metadata !1770, metadata !DIExpression()), !dbg !1897
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2193
  %436 = load i8, ptr %435, align 1, !dbg !2193, !tbaa !883
  call void @llvm.dbg.value(metadata i8 %436, metadata !1777, metadata !DIExpression()), !dbg !1906
  br label %346, !dbg !2194, !llvm.loop !2195

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i1 %340, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %408, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %349, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %405, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %338, metadata !1749, metadata !DIExpression()), !dbg !1808
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2198
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1808
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1812
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1897
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1906
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %448, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1776, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %445, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %442, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %441, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %440, metadata !1749, metadata !DIExpression()), !dbg !1808
  br i1 %112, label %461, label %450, !dbg !2199

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
  br i1 %121, label %462, label %482, !dbg !2201

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2202

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
  %473 = lshr i8 %464, 5, !dbg !2203
  %474 = zext i8 %473 to i64, !dbg !2203
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2204
  %476 = load i32, ptr %475, align 4, !dbg !2204, !tbaa !874
  %477 = and i8 %464, 31, !dbg !2205
  %478 = zext i8 %477 to i32, !dbg !2205
  %479 = shl nuw i32 1, %478, !dbg !2206
  %480 = and i32 %476, %479, !dbg !2206
  %481 = icmp eq i32 %480, 0, !dbg !2206
  br i1 %481, label %482, label %493, !dbg !2207

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
  br i1 %154, label %493, label %529, !dbg !2208

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2198
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1808
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1812
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2209
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1906
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %501, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1776, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %499, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %496, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %495, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %494, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.label(metadata !1805), !dbg !2210
  br i1 %110, label %621, label %503, !dbg !2211

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1775, metadata !DIExpression()), !dbg !1906
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2213
  br i1 %504, label %521, label %505, !dbg !2213

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2215
  br i1 %506, label %507, label %509, !dbg !2219

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2215
  store i8 39, ptr %508, align 1, !dbg !2215, !tbaa !883
  br label %509, !dbg !2215

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %510, metadata !1756, metadata !DIExpression()), !dbg !1808
  %511 = icmp ult i64 %510, %502, !dbg !2220
  br i1 %511, label %512, label %514, !dbg !2223

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2220
  store i8 36, ptr %513, align 1, !dbg !2220, !tbaa !883
  br label %514, !dbg !2220

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %515, metadata !1756, metadata !DIExpression()), !dbg !1808
  %516 = icmp ult i64 %515, %502, !dbg !2224
  br i1 %516, label %517, label %519, !dbg !2227

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2224
  store i8 39, ptr %518, align 1, !dbg !2224, !tbaa !883
  br label %519, !dbg !2224

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %520, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 1, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %521, !dbg !2228

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1906
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %522, metadata !1756, metadata !DIExpression()), !dbg !1808
  %524 = icmp ult i64 %522, %502, !dbg !2229
  br i1 %524, label %525, label %527, !dbg !2232

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2229
  store i8 92, ptr %526, align 1, !dbg !2229, !tbaa !883
  br label %527, !dbg !2229

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %502, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %501, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1776, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %499, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %496, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %528, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %494, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.label(metadata !1806), !dbg !2233
  br label %553, !dbg !2234

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2198
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1808
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1812
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2209
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2237
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 %538, metadata !1777, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1776, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1775, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %535, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %532, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %531, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %530, metadata !1749, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.label(metadata !1806), !dbg !2233
  %540 = xor i1 %534, true, !dbg !2234
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2234
  br i1 %541, label %553, label %542, !dbg !2234

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2238
  br i1 %543, label %544, label %546, !dbg !2242

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2238
  store i8 39, ptr %545, align 1, !dbg !2238, !tbaa !883
  br label %546, !dbg !2238

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %547, metadata !1756, metadata !DIExpression()), !dbg !1808
  %548 = icmp ult i64 %547, %539, !dbg !2243
  br i1 %548, label %549, label %551, !dbg !2246

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2243
  store i8 39, ptr %550, align 1, !dbg !2243, !tbaa !883
  br label %551, !dbg !2243

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %552, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1764, metadata !DIExpression()), !dbg !1808
  br label %553, !dbg !2247

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1906
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %561, metadata !1756, metadata !DIExpression()), !dbg !1808
  %563 = icmp ult i64 %561, %554, !dbg !2248
  br i1 %563, label %564, label %566, !dbg !2251

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2248
  store i8 %555, ptr %565, align 1, !dbg !2248, !tbaa !883
  br label %566, !dbg !2248

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %567, metadata !1756, metadata !DIExpression()), !dbg !1808
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2252
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1808
  br label %569, !dbg !2253

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2198
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1808
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1812
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2209
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %576, metadata !1770, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 poison, metadata !1764, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %572, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %571, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %570, metadata !1749, metadata !DIExpression()), !dbg !1808
  %578 = add i64 %576, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %578, metadata !1770, metadata !DIExpression()), !dbg !1897
  br label %122, !dbg !2255, !llvm.loop !2256

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1747, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1763, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 poison, metadata !1762, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %125, metadata !1757, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %124, metadata !1756, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %123, metadata !1749, metadata !DIExpression()), !dbg !1808
  %580 = icmp ne i64 %124, 0, !dbg !2258
  %581 = xor i1 %110, true, !dbg !2260
  %582 = or i1 %580, %581, !dbg !2260
  %583 = or i1 %582, %111, !dbg !2260
  br i1 %583, label %584, label %621, !dbg !2260

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2261
  %586 = xor i1 %126, true, !dbg !2261
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2261
  br i1 %587, label %595, label %588, !dbg !2261

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2263

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2265
  br label %636, !dbg !2267

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2268
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2270
  br i1 %594, label %27, label %595, !dbg !2270

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2271
  %598 = or i1 %597, %596, !dbg !2273
  br i1 %598, label %614, label %599, !dbg !2273

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1758, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %124, metadata !1756, metadata !DIExpression()), !dbg !1808
  %600 = load i8, ptr %107, align 1, !dbg !2274, !tbaa !883
  %601 = icmp eq i8 %600, 0, !dbg !2277
  br i1 %601, label %614, label %602, !dbg !2277

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1758, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i64 %605, metadata !1756, metadata !DIExpression()), !dbg !1808
  %606 = icmp ult i64 %605, %130, !dbg !2278
  br i1 %606, label %607, label %609, !dbg !2281

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2278
  store i8 %603, ptr %608, align 1, !dbg !2278, !tbaa !883
  br label %609, !dbg !2278

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %610, metadata !1756, metadata !DIExpression()), !dbg !1808
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2282
  call void @llvm.dbg.value(metadata ptr %611, metadata !1758, metadata !DIExpression()), !dbg !1808
  %612 = load i8, ptr %611, align 1, !dbg !2274, !tbaa !883
  %613 = icmp eq i8 %612, 0, !dbg !2277
  br i1 %613, label %614, label %602, !dbg !2277, !llvm.loop !2283

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1884
  call void @llvm.dbg.value(metadata i64 %615, metadata !1756, metadata !DIExpression()), !dbg !1808
  %616 = icmp ult i64 %615, %130, !dbg !2285
  br i1 %616, label %617, label %636, !dbg !2287

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2288
  store i8 0, ptr %618, align 1, !dbg !2289, !tbaa !883
  br label %636, !dbg !2288

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1807), !dbg !2114
  %620 = icmp eq i32 %103, 2, !dbg !2290
  br i1 %620, label %626, label %630, !dbg !2115

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1807), !dbg !2114
  %624 = icmp eq i32 %103, 2, !dbg !2290
  %625 = select i1 %109, i32 4, i32 2, !dbg !2115
  br i1 %624, label %626, label %630, !dbg !2115

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2115

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1750, metadata !DIExpression()), !dbg !1808
  %634 = and i32 %5, -3, !dbg !2291
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2292
  br label %636, !dbg !2293

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2294
}

; Function Attrs: nounwind
declare !dbg !2295 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2298 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2301 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2303 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2307, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %1, metadata !2308, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %2, metadata !2309, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata ptr %0, metadata !2311, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata i64 %1, metadata !2316, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr null, metadata !2317, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr %2, metadata !2318, metadata !DIExpression()), !dbg !2324
  %4 = icmp eq ptr %2, null, !dbg !2326
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %5, metadata !2319, metadata !DIExpression()), !dbg !2324
  %6 = tail call ptr @__errno_location() #40, !dbg !2327
  %7 = load i32, ptr %6, align 4, !dbg !2327, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2320, metadata !DIExpression()), !dbg !2324
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2328
  %9 = load i32, ptr %8, align 4, !dbg !2328, !tbaa !1690
  %10 = or i32 %9, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %10, metadata !2321, metadata !DIExpression()), !dbg !2324
  %11 = load i32, ptr %5, align 8, !dbg !2330, !tbaa !1640
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2331
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2332
  %14 = load ptr, ptr %13, align 8, !dbg !2332, !tbaa !1711
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2333
  %16 = load ptr, ptr %15, align 8, !dbg !2333, !tbaa !1714
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2334
  %18 = add i64 %17, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %18, metadata !2322, metadata !DIExpression()), !dbg !2324
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %19, metadata !2323, metadata !DIExpression()), !dbg !2324
  %20 = load i32, ptr %5, align 8, !dbg !2337, !tbaa !1640
  %21 = load ptr, ptr %13, align 8, !dbg !2338, !tbaa !1711
  %22 = load ptr, ptr %15, align 8, !dbg !2339, !tbaa !1714
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2340
  store i32 %7, ptr %6, align 4, !dbg !2341, !tbaa !874
  ret ptr %19, !dbg !2342
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2312 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2311, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %1, metadata !2316, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata ptr %2, metadata !2317, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata ptr %3, metadata !2318, metadata !DIExpression()), !dbg !2343
  %5 = icmp eq ptr %3, null, !dbg !2344
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2344
  call void @llvm.dbg.value(metadata ptr %6, metadata !2319, metadata !DIExpression()), !dbg !2343
  %7 = tail call ptr @__errno_location() #40, !dbg !2345
  %8 = load i32, ptr %7, align 4, !dbg !2345, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %8, metadata !2320, metadata !DIExpression()), !dbg !2343
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2346
  %10 = load i32, ptr %9, align 4, !dbg !2346, !tbaa !1690
  %11 = icmp eq ptr %2, null, !dbg !2347
  %12 = zext i1 %11 to i32, !dbg !2347
  %13 = or i32 %10, %12, !dbg !2348
  call void @llvm.dbg.value(metadata i32 %13, metadata !2321, metadata !DIExpression()), !dbg !2343
  %14 = load i32, ptr %6, align 8, !dbg !2349, !tbaa !1640
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2350
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2351
  %17 = load ptr, ptr %16, align 8, !dbg !2351, !tbaa !1711
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2352
  %19 = load ptr, ptr %18, align 8, !dbg !2352, !tbaa !1714
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2353
  %21 = add i64 %20, 1, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %21, metadata !2322, metadata !DIExpression()), !dbg !2343
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %22, metadata !2323, metadata !DIExpression()), !dbg !2343
  %23 = load i32, ptr %6, align 8, !dbg !2356, !tbaa !1640
  %24 = load ptr, ptr %16, align 8, !dbg !2357, !tbaa !1711
  %25 = load ptr, ptr %18, align 8, !dbg !2358, !tbaa !1714
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2359
  store i32 %8, ptr %7, align 4, !dbg !2360, !tbaa !874
  br i1 %11, label %28, label %27, !dbg !2361

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2362, !tbaa !2364
  br label %28, !dbg !2365

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2367 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2372, !tbaa !812
  call void @llvm.dbg.value(metadata ptr %1, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 1, metadata !2370, metadata !DIExpression()), !dbg !2374
  %2 = load i32, ptr @nslots, align 4, !tbaa !874
  call void @llvm.dbg.value(metadata i32 1, metadata !2370, metadata !DIExpression()), !dbg !2374
  %3 = icmp sgt i32 %2, 1, !dbg !2375
  br i1 %3, label %4, label %6, !dbg !2377

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2375
  br label %10, !dbg !2377

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2378
  %8 = load ptr, ptr %7, align 8, !dbg !2378, !tbaa !2380
  %9 = icmp eq ptr %8, @slot0, !dbg !2382
  br i1 %9, label %17, label %16, !dbg !2383

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2370, metadata !DIExpression()), !dbg !2374
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2384
  %13 = load ptr, ptr %12, align 8, !dbg !2384, !tbaa !2380
  tail call void @free(ptr noundef %13) #37, !dbg !2385
  %14 = add nuw nsw i64 %11, 1, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %14, metadata !2370, metadata !DIExpression()), !dbg !2374
  %15 = icmp eq i64 %14, %5, !dbg !2375
  br i1 %15, label %6, label %10, !dbg !2377, !llvm.loop !2387

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2389
  store i64 256, ptr @slotvec0, align 8, !dbg !2391, !tbaa !2392
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2393, !tbaa !2380
  br label %17, !dbg !2394

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2395
  br i1 %18, label %20, label %19, !dbg !2397

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2398
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2400, !tbaa !812
  br label %20, !dbg !2401

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2402, !tbaa !874
  ret void, !dbg !2403
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2404 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2407 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata ptr %1, metadata !2410, metadata !DIExpression()), !dbg !2411
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2412
  ret ptr %3, !dbg !2413
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2414 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %1, metadata !2419, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %2, metadata !2420, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata ptr %3, metadata !2421, metadata !DIExpression()), !dbg !2434
  %6 = tail call ptr @__errno_location() #40, !dbg !2435
  %7 = load i32, ptr %6, align 4, !dbg !2435, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %7, metadata !2422, metadata !DIExpression()), !dbg !2434
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2436, !tbaa !812
  call void @llvm.dbg.value(metadata ptr %8, metadata !2423, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2424, metadata !DIExpression()), !dbg !2434
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2437
  br i1 %9, label %10, label %11, !dbg !2437

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2439
  unreachable, !dbg !2439

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2440, !tbaa !874
  %13 = icmp sgt i32 %12, %0, !dbg !2441
  br i1 %13, label %32, label %14, !dbg !2442

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2443
  call void @llvm.dbg.value(metadata i1 %15, metadata !2425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2445
  %16 = sext i32 %12 to i64, !dbg !2446
  call void @llvm.dbg.value(metadata i64 %16, metadata !2428, metadata !DIExpression()), !dbg !2444
  store i64 %16, ptr %5, align 8, !dbg !2447, !tbaa !2364
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2448
  %18 = add nuw nsw i32 %0, 1, !dbg !2449
  %19 = sub i32 %18, %12, !dbg !2450
  %20 = sext i32 %19 to i64, !dbg !2451
  call void @llvm.dbg.value(metadata ptr %5, metadata !2428, metadata !DIExpression(DW_OP_deref)), !dbg !2444
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %21, metadata !2423, metadata !DIExpression()), !dbg !2434
  store ptr %21, ptr @slotvec, align 8, !dbg !2453, !tbaa !812
  br i1 %15, label %22, label %23, !dbg !2454

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2455, !tbaa.struct !2457
  br label %23, !dbg !2458

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2459, !tbaa !874
  %25 = sext i32 %24 to i64, !dbg !2460
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2460
  %27 = load i64, ptr %5, align 8, !dbg !2461, !tbaa !2364
  call void @llvm.dbg.value(metadata i64 %27, metadata !2428, metadata !DIExpression()), !dbg !2444
  %28 = sub nsw i64 %27, %25, !dbg !2462
  %29 = shl i64 %28, 4, !dbg !2463
  call void @llvm.dbg.value(metadata ptr %26, metadata !1842, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 0, metadata !1845, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i64 %29, metadata !1846, metadata !DIExpression()), !dbg !2464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2466
  %30 = load i64, ptr %5, align 8, !dbg !2467, !tbaa !2364
  call void @llvm.dbg.value(metadata i64 %30, metadata !2428, metadata !DIExpression()), !dbg !2444
  %31 = trunc i64 %30 to i32, !dbg !2467
  store i32 %31, ptr @nslots, align 4, !dbg !2468, !tbaa !874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2469
  br label %32, !dbg !2470

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2434
  call void @llvm.dbg.value(metadata ptr %33, metadata !2423, metadata !DIExpression()), !dbg !2434
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2471
  %36 = load i64, ptr %35, align 8, !dbg !2472, !tbaa !2392
  call void @llvm.dbg.value(metadata i64 %36, metadata !2429, metadata !DIExpression()), !dbg !2473
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2474
  %38 = load ptr, ptr %37, align 8, !dbg !2474, !tbaa !2380
  call void @llvm.dbg.value(metadata ptr %38, metadata !2431, metadata !DIExpression()), !dbg !2473
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2475
  %40 = load i32, ptr %39, align 4, !dbg !2475, !tbaa !1690
  %41 = or i32 %40, 1, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %41, metadata !2432, metadata !DIExpression()), !dbg !2473
  %42 = load i32, ptr %3, align 8, !dbg !2477, !tbaa !1640
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2478
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2479
  %45 = load ptr, ptr %44, align 8, !dbg !2479, !tbaa !1711
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2480
  %47 = load ptr, ptr %46, align 8, !dbg !2480, !tbaa !1714
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2481
  call void @llvm.dbg.value(metadata i64 %48, metadata !2433, metadata !DIExpression()), !dbg !2473
  %49 = icmp ugt i64 %36, %48, !dbg !2482
  br i1 %49, label %60, label %50, !dbg !2484

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2485
  call void @llvm.dbg.value(metadata i64 %51, metadata !2429, metadata !DIExpression()), !dbg !2473
  store i64 %51, ptr %35, align 8, !dbg !2487, !tbaa !2392
  %52 = icmp eq ptr %38, @slot0, !dbg !2488
  br i1 %52, label %54, label %53, !dbg !2490

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2491
  br label %54, !dbg !2491

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %55, metadata !2431, metadata !DIExpression()), !dbg !2473
  store ptr %55, ptr %37, align 8, !dbg !2493, !tbaa !2380
  %56 = load i32, ptr %3, align 8, !dbg !2494, !tbaa !1640
  %57 = load ptr, ptr %44, align 8, !dbg !2495, !tbaa !1711
  %58 = load ptr, ptr %46, align 8, !dbg !2496, !tbaa !1714
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2497
  br label %60, !dbg !2498

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2473
  call void @llvm.dbg.value(metadata ptr %61, metadata !2431, metadata !DIExpression()), !dbg !2473
  store i32 %7, ptr %6, align 4, !dbg !2499, !tbaa !874
  ret ptr %61, !dbg !2500
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata ptr %1, metadata !2506, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %2, metadata !2507, metadata !DIExpression()), !dbg !2508
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2509
  ret ptr %4, !dbg !2510
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2511 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2515
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2517
  ret ptr %2, !dbg !2518
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 %1, metadata !2524, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i32 0, metadata !2505, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata ptr %0, metadata !2506, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 %1, metadata !2507, metadata !DIExpression()), !dbg !2526
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2528
  ret ptr %3, !dbg !2529
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2530 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2534, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !2536, metadata !DIExpression()), !dbg !2538
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2539
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2537, metadata !DIExpression()), !dbg !2540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541), !dbg !2544
  call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2553, !alias.scope !2541
  %5 = icmp eq i32 %1, 10, !dbg !2554
  br i1 %5, label %6, label %7, !dbg !2556

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2557, !noalias !2541
  unreachable, !dbg !2557

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2558, !tbaa !1640, !alias.scope !2541
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2559
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2560
  ret ptr %8, !dbg !2561
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2562 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2566, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %1, metadata !2567, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %2, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %3, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2572
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2570, metadata !DIExpression()), !dbg !2573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2574), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2550, metadata !DIExpression()), !dbg !2580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2580, !alias.scope !2574
  %6 = icmp eq i32 %1, 10, !dbg !2581
  br i1 %6, label %7, label %8, !dbg !2582

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2583, !noalias !2574
  unreachable, !dbg !2583

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2584, !tbaa !1640, !alias.scope !2574
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2585
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2586
  ret ptr %9, !dbg !2587
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2588 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata ptr %1, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %0, metadata !2535, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %1, metadata !2536, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2537, metadata !DIExpression()), !dbg !2598
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2599), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2550, metadata !DIExpression()), !dbg !2605
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2605, !alias.scope !2599
  %4 = icmp eq i32 %0, 10, !dbg !2606
  br i1 %4, label %5, label %6, !dbg !2607

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2608, !noalias !2599
  unreachable, !dbg !2608

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2609, !tbaa !1640, !alias.scope !2599
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2611
  ret ptr %7, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %2, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2566, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %0, metadata !2567, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2568, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %2, metadata !2569, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2570, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2550, metadata !DIExpression()), !dbg !2631
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2631, !alias.scope !2625
  %5 = icmp eq i32 %0, 10, !dbg !2632
  br i1 %5, label %6, label %7, !dbg !2633

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2634, !noalias !2625
  unreachable, !dbg !2634

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2635, !tbaa !1640, !alias.scope !2625
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2637
  ret ptr %8, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2639 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %2, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2648
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2650, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %4, metadata !1657, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 %2, metadata !1658, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 1, metadata !1659, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 %2, metadata !1660, metadata !DIExpression()), !dbg !2652
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2654
  %6 = lshr i8 %2, 5, !dbg !2655
  %7 = zext i8 %6 to i64, !dbg !2655
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2656
  call void @llvm.dbg.value(metadata ptr %8, metadata !1661, metadata !DIExpression()), !dbg !2652
  %9 = and i8 %2, 31, !dbg !2657
  %10 = zext i8 %9 to i32, !dbg !2657
  call void @llvm.dbg.value(metadata i32 %10, metadata !1663, metadata !DIExpression()), !dbg !2652
  %11 = load i32, ptr %8, align 4, !dbg !2658, !tbaa !874
  %12 = lshr i32 %11, %10, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %12, metadata !1664, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2652
  %13 = and i32 %12, 1, !dbg !2660
  %14 = xor i32 %13, 1, !dbg !2660
  %15 = shl nuw i32 %14, %10, !dbg !2661
  %16 = xor i32 %15, %11, !dbg !2662
  store i32 %16, ptr %8, align 4, !dbg !2662, !tbaa !874
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2663
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2664
  ret ptr %17, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2666 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 %1, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i64 -1, metadata !2644, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 %1, metadata !2645, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2646, metadata !DIExpression()), !dbg !2676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2677, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %3, metadata !1657, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %1, metadata !1658, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 1, metadata !1659, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8 %1, metadata !1660, metadata !DIExpression()), !dbg !2678
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2680
  %5 = lshr i8 %1, 5, !dbg !2681
  %6 = zext i8 %5 to i64, !dbg !2681
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %7, metadata !1661, metadata !DIExpression()), !dbg !2678
  %8 = and i8 %1, 31, !dbg !2683
  %9 = zext i8 %8 to i32, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %9, metadata !1663, metadata !DIExpression()), !dbg !2678
  %10 = load i32, ptr %7, align 4, !dbg !2684, !tbaa !874
  %11 = lshr i32 %10, %9, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %11, metadata !1664, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2678
  %12 = and i32 %11, 1, !dbg !2686
  %13 = xor i32 %12, 1, !dbg !2686
  %14 = shl nuw i32 %13, %9, !dbg !2687
  %15 = xor i32 %14, %10, !dbg !2688
  store i32 %15, ptr %7, align 4, !dbg !2688, !tbaa !874
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2689
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2690
  ret ptr %16, !dbg !2691
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2692 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8 58, metadata !2671, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 -1, metadata !2644, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8 58, metadata !2645, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2700
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2646, metadata !DIExpression()), !dbg !2701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2702, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %2, metadata !1657, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 1, metadata !1659, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i8 58, metadata !1660, metadata !DIExpression()), !dbg !2703
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2705
  call void @llvm.dbg.value(metadata ptr %3, metadata !1661, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i32 26, metadata !1663, metadata !DIExpression()), !dbg !2703
  %4 = load i32, ptr %3, align 4, !dbg !2706, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %4, metadata !1664, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2703
  %5 = or i32 %4, 67108864, !dbg !2707
  store i32 %5, ptr %3, align 4, !dbg !2707, !tbaa !874
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2708
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2709
  ret ptr %6, !dbg !2710
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2711 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i64 %1, metadata !2714, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %1, metadata !2644, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 58, metadata !2645, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2718
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2646, metadata !DIExpression()), !dbg !2719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2720, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %3, metadata !1657, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 1, metadata !1659, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i8 58, metadata !1660, metadata !DIExpression()), !dbg !2721
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2723
  call void @llvm.dbg.value(metadata ptr %4, metadata !1661, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 26, metadata !1663, metadata !DIExpression()), !dbg !2721
  %5 = load i32, ptr %4, align 4, !dbg !2724, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %5, metadata !1664, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2721
  %6 = or i32 %5, 67108864, !dbg !2725
  store i32 %6, ptr %4, align 4, !dbg !2725, !tbaa !874
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2726
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2727
  ret ptr %7, !dbg !2728
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2729 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2550, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2735
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %1, metadata !2732, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %2, metadata !2733, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2734, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2740
  %5 = icmp eq i32 %1, 10, !dbg !2741
  br i1 %5, label %6, label %7, !dbg !2742

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2743, !noalias !2744
  unreachable, !dbg !2743

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2740
  store i32 %1, ptr %4, align 8, !dbg !2747, !tbaa.struct !2651
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2747
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %4, metadata !1657, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 58, metadata !1658, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 1, metadata !1659, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i8 58, metadata !1660, metadata !DIExpression()), !dbg !2748
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %9, metadata !1661, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 26, metadata !1663, metadata !DIExpression()), !dbg !2748
  %10 = load i32, ptr %9, align 4, !dbg !2751, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %10, metadata !1664, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2748
  %11 = or i32 %10, 67108864, !dbg !2752
  store i32 %11, ptr %9, align 4, !dbg !2752, !tbaa !874
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2753
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2754
  ret ptr %12, !dbg !2755
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2756 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %1, metadata !2761, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %2, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata ptr %3, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %1, metadata !2770, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata ptr %3, metadata !2772, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i64 -1, metadata !2773, metadata !DIExpression()), !dbg !2775
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2777
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2774, metadata !DIExpression()), !dbg !2778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2779, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %2, metadata !1699, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !2780
  store i32 10, ptr %5, align 8, !dbg !2782, !tbaa !1640
  %6 = icmp ne ptr %1, null, !dbg !2783
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2784
  br i1 %8, label %10, label %9, !dbg !2784

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2785
  unreachable, !dbg !2785

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2786
  store ptr %1, ptr %11, align 8, !dbg !2787, !tbaa !1711
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2788
  store ptr %2, ptr %12, align 8, !dbg !2789, !tbaa !1714
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2790
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2791
  ret ptr %13, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2766 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2765, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %1, metadata !2770, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %2, metadata !2771, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata ptr %3, metadata !2772, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %4, metadata !2773, metadata !DIExpression()), !dbg !2793
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2794
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2774, metadata !DIExpression()), !dbg !2795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2796, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %6, metadata !1697, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %1, metadata !1698, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %2, metadata !1699, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %6, metadata !1697, metadata !DIExpression()), !dbg !2797
  store i32 10, ptr %6, align 8, !dbg !2799, !tbaa !1640
  %7 = icmp ne ptr %1, null, !dbg !2800
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2801
  br i1 %9, label %11, label %10, !dbg !2801

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2802
  unreachable, !dbg !2802

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2803
  store ptr %1, ptr %12, align 8, !dbg !2804, !tbaa !1711
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2805
  store ptr %2, ptr %13, align 8, !dbg !2806, !tbaa !1714
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2807
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2808
  ret ptr %14, !dbg !2809
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2810 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2814, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %1, metadata !2815, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %2, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %0, metadata !2761, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %1, metadata !2762, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %2, metadata !2763, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i32 0, metadata !2765, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata ptr %0, metadata !2770, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata ptr %1, metadata !2771, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata ptr %2, metadata !2772, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 -1, metadata !2773, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2822
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2774, metadata !DIExpression()), !dbg !2823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2824, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %4, metadata !1697, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %0, metadata !1698, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %1, metadata !1699, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %4, metadata !1697, metadata !DIExpression()), !dbg !2825
  store i32 10, ptr %4, align 8, !dbg !2827, !tbaa !1640
  %5 = icmp ne ptr %0, null, !dbg !2828
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2829
  br i1 %7, label %9, label %8, !dbg !2829

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2830
  unreachable, !dbg !2830

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2831
  store ptr %0, ptr %10, align 8, !dbg !2832, !tbaa !1711
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2833
  store ptr %1, ptr %11, align 8, !dbg !2834, !tbaa !1714
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2835
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2836
  ret ptr %12, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2838 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata ptr %2, metadata !2844, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %3, metadata !2845, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i32 0, metadata !2765, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %0, metadata !2770, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %1, metadata !2771, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %2, metadata !2772, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %3, metadata !2773, metadata !DIExpression()), !dbg !2847
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2849
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2774, metadata !DIExpression()), !dbg !2850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2851, !tbaa.struct !2651
  call void @llvm.dbg.value(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %0, metadata !1698, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %1, metadata !1699, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %5, metadata !1697, metadata !DIExpression()), !dbg !2852
  store i32 10, ptr %5, align 8, !dbg !2854, !tbaa !1640
  %6 = icmp ne ptr %0, null, !dbg !2855
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2856
  br i1 %8, label %10, label %9, !dbg !2856

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2857
  unreachable, !dbg !2857

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2858
  store ptr %0, ptr %11, align 8, !dbg !2859, !tbaa !1711
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2860
  store ptr %1, ptr %12, align 8, !dbg !2861, !tbaa !1714
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2862
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2863
  ret ptr %13, !dbg !2864
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2865 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2869, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %1, metadata !2870, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 %2, metadata !2871, metadata !DIExpression()), !dbg !2872
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2873
  ret ptr %4, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2875 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %1, metadata !2880, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i32 0, metadata !2869, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %1, metadata !2871, metadata !DIExpression()), !dbg !2882
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2884
  ret ptr %3, !dbg !2885
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %1, metadata !2891, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 %0, metadata !2869, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %1, metadata !2870, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 -1, metadata !2871, metadata !DIExpression()), !dbg !2893
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2895
  ret ptr %3, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2897 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 0, metadata !2890, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2869, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i64 -1, metadata !2871, metadata !DIExpression()), !dbg !2905
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2907
  ret ptr %2, !dbg !2908
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2909 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2948, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %1, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %2, metadata !2950, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %3, metadata !2951, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %5, metadata !2953, metadata !DIExpression()), !dbg !2954
  %7 = icmp eq ptr %1, null, !dbg !2955
  br i1 %7, label %10, label %8, !dbg !2957

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2958
  br label %12, !dbg !2958

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #37, !dbg !2959
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #37, !dbg !2960
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2960
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !2961
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #37, !dbg !2962
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #37, !dbg !2962
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !2963
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
  ], !dbg !2964

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #37, !dbg !2965
  %21 = load ptr, ptr %4, align 8, !dbg !2965, !tbaa !812
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2965
  br label %147, !dbg !2967

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #37, !dbg !2968
  %25 = load ptr, ptr %4, align 8, !dbg !2968, !tbaa !812
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2968
  %27 = load ptr, ptr %26, align 8, !dbg !2968, !tbaa !812
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2968
  br label %147, !dbg !2969

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #37, !dbg !2970
  %31 = load ptr, ptr %4, align 8, !dbg !2970, !tbaa !812
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2970
  %33 = load ptr, ptr %32, align 8, !dbg !2970, !tbaa !812
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2970
  %35 = load ptr, ptr %34, align 8, !dbg !2970, !tbaa !812
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2970
  br label %147, !dbg !2971

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #37, !dbg !2972
  %39 = load ptr, ptr %4, align 8, !dbg !2972, !tbaa !812
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2972
  %41 = load ptr, ptr %40, align 8, !dbg !2972, !tbaa !812
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2972
  %43 = load ptr, ptr %42, align 8, !dbg !2972, !tbaa !812
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2972
  %45 = load ptr, ptr %44, align 8, !dbg !2972, !tbaa !812
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2972
  br label %147, !dbg !2973

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #37, !dbg !2974
  %49 = load ptr, ptr %4, align 8, !dbg !2974, !tbaa !812
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2974
  %51 = load ptr, ptr %50, align 8, !dbg !2974, !tbaa !812
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2974
  %53 = load ptr, ptr %52, align 8, !dbg !2974, !tbaa !812
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2974
  %55 = load ptr, ptr %54, align 8, !dbg !2974, !tbaa !812
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2974
  %57 = load ptr, ptr %56, align 8, !dbg !2974, !tbaa !812
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2974
  br label %147, !dbg !2975

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #37, !dbg !2976
  %61 = load ptr, ptr %4, align 8, !dbg !2976, !tbaa !812
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2976
  %63 = load ptr, ptr %62, align 8, !dbg !2976, !tbaa !812
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2976
  %65 = load ptr, ptr %64, align 8, !dbg !2976, !tbaa !812
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2976
  %67 = load ptr, ptr %66, align 8, !dbg !2976, !tbaa !812
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2976
  %69 = load ptr, ptr %68, align 8, !dbg !2976, !tbaa !812
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2976
  %71 = load ptr, ptr %70, align 8, !dbg !2976, !tbaa !812
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2976
  br label %147, !dbg !2977

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #37, !dbg !2978
  %75 = load ptr, ptr %4, align 8, !dbg !2978, !tbaa !812
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2978
  %77 = load ptr, ptr %76, align 8, !dbg !2978, !tbaa !812
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2978
  %79 = load ptr, ptr %78, align 8, !dbg !2978, !tbaa !812
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2978
  %81 = load ptr, ptr %80, align 8, !dbg !2978, !tbaa !812
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2978
  %83 = load ptr, ptr %82, align 8, !dbg !2978, !tbaa !812
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2978
  %85 = load ptr, ptr %84, align 8, !dbg !2978, !tbaa !812
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2978
  %87 = load ptr, ptr %86, align 8, !dbg !2978, !tbaa !812
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2978
  br label %147, !dbg !2979

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #37, !dbg !2980
  %91 = load ptr, ptr %4, align 8, !dbg !2980, !tbaa !812
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2980
  %93 = load ptr, ptr %92, align 8, !dbg !2980, !tbaa !812
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2980
  %95 = load ptr, ptr %94, align 8, !dbg !2980, !tbaa !812
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2980
  %97 = load ptr, ptr %96, align 8, !dbg !2980, !tbaa !812
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2980
  %99 = load ptr, ptr %98, align 8, !dbg !2980, !tbaa !812
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2980
  %101 = load ptr, ptr %100, align 8, !dbg !2980, !tbaa !812
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2980
  %103 = load ptr, ptr %102, align 8, !dbg !2980, !tbaa !812
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2980
  %105 = load ptr, ptr %104, align 8, !dbg !2980, !tbaa !812
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2980
  br label %147, !dbg !2981

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #37, !dbg !2982
  %109 = load ptr, ptr %4, align 8, !dbg !2982, !tbaa !812
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2982
  %111 = load ptr, ptr %110, align 8, !dbg !2982, !tbaa !812
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2982
  %113 = load ptr, ptr %112, align 8, !dbg !2982, !tbaa !812
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2982
  %115 = load ptr, ptr %114, align 8, !dbg !2982, !tbaa !812
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2982
  %117 = load ptr, ptr %116, align 8, !dbg !2982, !tbaa !812
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2982
  %119 = load ptr, ptr %118, align 8, !dbg !2982, !tbaa !812
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2982
  %121 = load ptr, ptr %120, align 8, !dbg !2982, !tbaa !812
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2982
  %123 = load ptr, ptr %122, align 8, !dbg !2982, !tbaa !812
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2982
  %125 = load ptr, ptr %124, align 8, !dbg !2982, !tbaa !812
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2982
  br label %147, !dbg !2983

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #37, !dbg !2984
  %129 = load ptr, ptr %4, align 8, !dbg !2984, !tbaa !812
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2984
  %131 = load ptr, ptr %130, align 8, !dbg !2984, !tbaa !812
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2984
  %133 = load ptr, ptr %132, align 8, !dbg !2984, !tbaa !812
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2984
  %135 = load ptr, ptr %134, align 8, !dbg !2984, !tbaa !812
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2984
  %137 = load ptr, ptr %136, align 8, !dbg !2984, !tbaa !812
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2984
  %139 = load ptr, ptr %138, align 8, !dbg !2984, !tbaa !812
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2984
  %141 = load ptr, ptr %140, align 8, !dbg !2984, !tbaa !812
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2984
  %143 = load ptr, ptr %142, align 8, !dbg !2984, !tbaa !812
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2984
  %145 = load ptr, ptr %144, align 8, !dbg !2984, !tbaa !812
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2984
  br label %147, !dbg !2985

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2986
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2987 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2991, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %1, metadata !2992, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %3, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %4, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 0, metadata !2996, metadata !DIExpression()), !dbg !2997
  br label %6, !dbg !2998

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3000
  call void @llvm.dbg.value(metadata i64 %7, metadata !2996, metadata !DIExpression()), !dbg !2997
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3001
  %9 = load ptr, ptr %8, align 8, !dbg !3001, !tbaa !812
  %10 = icmp eq ptr %9, null, !dbg !3003
  %11 = add i64 %7, 1, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %11, metadata !2996, metadata !DIExpression()), !dbg !2997
  br i1 %10, label %12, label %6, !dbg !3003, !llvm.loop !3005

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3009 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3024, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %1, metadata !3025, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !3026, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata ptr %3, metadata !3027, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3028, metadata !DIExpression()), !dbg !3033
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !3034
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3030, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 0, metadata !3029, metadata !DIExpression()), !dbg !3032
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3029, metadata !DIExpression()), !dbg !3032
  %10 = icmp sgt i32 %9, -1, !dbg !3036
  br i1 %10, label %18, label %11, !dbg !3036

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3036
  store i32 %12, ptr %7, align 8, !dbg !3036
  %13 = icmp ult i32 %9, -7, !dbg !3036
  br i1 %13, label %14, label %18, !dbg !3036

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3036
  %16 = sext i32 %9 to i64, !dbg !3036
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3036
  br label %22, !dbg !3036

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3036
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3036
  store ptr %21, ptr %4, align 8, !dbg !3036
  br label %22, !dbg !3036

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3036
  %25 = load ptr, ptr %24, align 8, !dbg !3036
  store ptr %25, ptr %6, align 8, !dbg !3039, !tbaa !812
  %26 = icmp eq ptr %25, null, !dbg !3040
  br i1 %26, label %197, label %27, !dbg !3041

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 1, metadata !3029, metadata !DIExpression()), !dbg !3032
  %28 = icmp sgt i32 %23, -1, !dbg !3036
  br i1 %28, label %36, label %29, !dbg !3036

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3036
  store i32 %30, ptr %7, align 8, !dbg !3036
  %31 = icmp ult i32 %23, -7, !dbg !3036
  br i1 %31, label %32, label %36, !dbg !3036

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3036
  %34 = sext i32 %23 to i64, !dbg !3036
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3036
  br label %40, !dbg !3036

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3036
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3036
  store ptr %39, ptr %4, align 8, !dbg !3036
  br label %40, !dbg !3036

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3036
  %43 = load ptr, ptr %42, align 8, !dbg !3036
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3042
  store ptr %43, ptr %44, align 8, !dbg !3039, !tbaa !812
  %45 = icmp eq ptr %43, null, !dbg !3040
  br i1 %45, label %197, label %46, !dbg !3041

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 2, metadata !3029, metadata !DIExpression()), !dbg !3032
  %47 = icmp sgt i32 %41, -1, !dbg !3036
  br i1 %47, label %55, label %48, !dbg !3036

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3036
  store i32 %49, ptr %7, align 8, !dbg !3036
  %50 = icmp ult i32 %41, -7, !dbg !3036
  br i1 %50, label %51, label %55, !dbg !3036

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3036
  %53 = sext i32 %41 to i64, !dbg !3036
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3036
  br label %59, !dbg !3036

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3036
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3036
  store ptr %58, ptr %4, align 8, !dbg !3036
  br label %59, !dbg !3036

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3036
  %62 = load ptr, ptr %61, align 8, !dbg !3036
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3042
  store ptr %62, ptr %63, align 8, !dbg !3039, !tbaa !812
  %64 = icmp eq ptr %62, null, !dbg !3040
  br i1 %64, label %197, label %65, !dbg !3041

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 3, metadata !3029, metadata !DIExpression()), !dbg !3032
  %66 = icmp sgt i32 %60, -1, !dbg !3036
  br i1 %66, label %74, label %67, !dbg !3036

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3036
  store i32 %68, ptr %7, align 8, !dbg !3036
  %69 = icmp ult i32 %60, -7, !dbg !3036
  br i1 %69, label %70, label %74, !dbg !3036

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3036
  %72 = sext i32 %60 to i64, !dbg !3036
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3036
  br label %78, !dbg !3036

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3036
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3036
  store ptr %77, ptr %4, align 8, !dbg !3036
  br label %78, !dbg !3036

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3036
  %81 = load ptr, ptr %80, align 8, !dbg !3036
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3042
  store ptr %81, ptr %82, align 8, !dbg !3039, !tbaa !812
  %83 = icmp eq ptr %81, null, !dbg !3040
  br i1 %83, label %197, label %84, !dbg !3041

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 4, metadata !3029, metadata !DIExpression()), !dbg !3032
  %85 = icmp sgt i32 %79, -1, !dbg !3036
  br i1 %85, label %93, label %86, !dbg !3036

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3036
  store i32 %87, ptr %7, align 8, !dbg !3036
  %88 = icmp ult i32 %79, -7, !dbg !3036
  br i1 %88, label %89, label %93, !dbg !3036

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3036
  %91 = sext i32 %79 to i64, !dbg !3036
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3036
  br label %97, !dbg !3036

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3036
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3036
  store ptr %96, ptr %4, align 8, !dbg !3036
  br label %97, !dbg !3036

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3036
  %100 = load ptr, ptr %99, align 8, !dbg !3036
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3042
  store ptr %100, ptr %101, align 8, !dbg !3039, !tbaa !812
  %102 = icmp eq ptr %100, null, !dbg !3040
  br i1 %102, label %197, label %103, !dbg !3041

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 5, metadata !3029, metadata !DIExpression()), !dbg !3032
  %104 = icmp sgt i32 %98, -1, !dbg !3036
  br i1 %104, label %112, label %105, !dbg !3036

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3036
  store i32 %106, ptr %7, align 8, !dbg !3036
  %107 = icmp ult i32 %98, -7, !dbg !3036
  br i1 %107, label %108, label %112, !dbg !3036

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3036
  %110 = sext i32 %98 to i64, !dbg !3036
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3036
  br label %116, !dbg !3036

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3036
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3036
  store ptr %115, ptr %4, align 8, !dbg !3036
  br label %116, !dbg !3036

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3036
  %119 = load ptr, ptr %118, align 8, !dbg !3036
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3042
  store ptr %119, ptr %120, align 8, !dbg !3039, !tbaa !812
  %121 = icmp eq ptr %119, null, !dbg !3040
  br i1 %121, label %197, label %122, !dbg !3041

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 6, metadata !3029, metadata !DIExpression()), !dbg !3032
  %123 = icmp sgt i32 %117, -1, !dbg !3036
  br i1 %123, label %131, label %124, !dbg !3036

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3036
  store i32 %125, ptr %7, align 8, !dbg !3036
  %126 = icmp ult i32 %117, -7, !dbg !3036
  br i1 %126, label %127, label %131, !dbg !3036

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3036
  %129 = sext i32 %117 to i64, !dbg !3036
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3036
  br label %135, !dbg !3036

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3036
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3036
  store ptr %134, ptr %4, align 8, !dbg !3036
  br label %135, !dbg !3036

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3036
  %138 = load ptr, ptr %137, align 8, !dbg !3036
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3042
  store ptr %138, ptr %139, align 8, !dbg !3039, !tbaa !812
  %140 = icmp eq ptr %138, null, !dbg !3040
  br i1 %140, label %197, label %141, !dbg !3041

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 7, metadata !3029, metadata !DIExpression()), !dbg !3032
  %142 = icmp sgt i32 %136, -1, !dbg !3036
  br i1 %142, label %150, label %143, !dbg !3036

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3036
  store i32 %144, ptr %7, align 8, !dbg !3036
  %145 = icmp ult i32 %136, -7, !dbg !3036
  br i1 %145, label %146, label %150, !dbg !3036

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3036
  %148 = sext i32 %136 to i64, !dbg !3036
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3036
  br label %154, !dbg !3036

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3036
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3036
  store ptr %153, ptr %4, align 8, !dbg !3036
  br label %154, !dbg !3036

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3036
  %157 = load ptr, ptr %156, align 8, !dbg !3036
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3042
  store ptr %157, ptr %158, align 8, !dbg !3039, !tbaa !812
  %159 = icmp eq ptr %157, null, !dbg !3040
  br i1 %159, label %197, label %160, !dbg !3041

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 8, metadata !3029, metadata !DIExpression()), !dbg !3032
  %161 = icmp sgt i32 %155, -1, !dbg !3036
  br i1 %161, label %169, label %162, !dbg !3036

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3036
  store i32 %163, ptr %7, align 8, !dbg !3036
  %164 = icmp ult i32 %155, -7, !dbg !3036
  br i1 %164, label %165, label %169, !dbg !3036

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3036
  %167 = sext i32 %155 to i64, !dbg !3036
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3036
  br label %173, !dbg !3036

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3036
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3036
  store ptr %172, ptr %4, align 8, !dbg !3036
  br label %173, !dbg !3036

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3036
  %176 = load ptr, ptr %175, align 8, !dbg !3036
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3042
  store ptr %176, ptr %177, align 8, !dbg !3039, !tbaa !812
  %178 = icmp eq ptr %176, null, !dbg !3040
  br i1 %178, label %197, label %179, !dbg !3041

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3029, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 9, metadata !3029, metadata !DIExpression()), !dbg !3032
  %180 = icmp sgt i32 %174, -1, !dbg !3036
  br i1 %180, label %188, label %181, !dbg !3036

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3036
  store i32 %182, ptr %7, align 8, !dbg !3036
  %183 = icmp ult i32 %174, -7, !dbg !3036
  br i1 %183, label %184, label %188, !dbg !3036

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3036
  %186 = sext i32 %174 to i64, !dbg !3036
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3036
  br label %191, !dbg !3036

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3036
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3036
  store ptr %190, ptr %4, align 8, !dbg !3036
  br label %191, !dbg !3036

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3036
  %193 = load ptr, ptr %192, align 8, !dbg !3036
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3042
  store ptr %193, ptr %194, align 8, !dbg !3039, !tbaa !812
  %195 = icmp eq ptr %193, null, !dbg !3040
  %196 = select i1 %195, i64 9, i64 10, !dbg !3041
  br label %197, !dbg !3041

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3043
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3044
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !3045
  ret void, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3046 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %1, metadata !3051, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %2, metadata !3052, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %3, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !3056
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3054, metadata !DIExpression()), !dbg !3057
  call void @llvm.va_start(ptr nonnull %5), !dbg !3058
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !3059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3059, !tbaa.struct !1233
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3059
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !3059
  call void @llvm.va_end(ptr nonnull %5), !dbg !3060
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !3061
  ret void, !dbg !3061
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3062 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3063, !tbaa !812
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3063
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #37, !dbg !3064
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.104) #37, !dbg !3064
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19.105, i32 noundef 5) #37, !dbg !3065
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.106, ptr noundef nonnull @.str.21.107) #37, !dbg !3065
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !3066
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !3066
  ret void, !dbg !3067
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3068 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %2, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %2, metadata !3081, metadata !DIExpression()), !dbg !3082
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !3090
  %5 = icmp eq ptr %4, null, !dbg !3092
  br i1 %5, label %6, label %7, !dbg !3094

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3095
  unreachable, !dbg !3095

7:                                                ; preds = %3
  ret ptr %4, !dbg !3096
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3078 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3080, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %2, metadata !3081, metadata !DIExpression()), !dbg !3097
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !3099
  %5 = icmp eq ptr %4, null, !dbg !3101
  br i1 %5, label %6, label %7, !dbg !3102

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3103
  unreachable, !dbg !3103

7:                                                ; preds = %3
  ret ptr %4, !dbg !3104
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3105 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3110
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3111
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3112
  %3 = icmp eq ptr %2, null, !dbg !3114
  br i1 %3, label %4, label %5, !dbg !3115

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3116
  unreachable, !dbg !3116

5:                                                ; preds = %1
  ret ptr %2, !dbg !3117
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3118 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3119 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %0, metadata !3125, metadata !DIExpression()), !dbg !3129
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3132
  %3 = icmp eq ptr %2, null, !dbg !3134
  br i1 %3, label %4, label %5, !dbg !3135

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3136
  unreachable, !dbg !3136

5:                                                ; preds = %1
  ret ptr %2, !dbg !3137
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3138 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3144
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3147
  %3 = icmp eq ptr %2, null, !dbg !3149
  br i1 %3, label %4, label %5, !dbg !3150

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3151
  unreachable, !dbg !3151

5:                                                ; preds = %1
  ret ptr %2, !dbg !3152
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3153 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()), !dbg !3165
  %3 = icmp eq i64 %1, 0, !dbg !3167
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3167
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %5, metadata !3085, metadata !DIExpression()), !dbg !3169
  %6 = icmp eq ptr %5, null, !dbg !3171
  br i1 %6, label %7, label %8, !dbg !3172

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3173
  unreachable, !dbg !3173

8:                                                ; preds = %2
  ret ptr %5, !dbg !3174
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3175 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %0, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %1, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %1, metadata !3164, metadata !DIExpression()), !dbg !3189
  %3 = icmp eq i64 %1, 0, !dbg !3191
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3191
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #43, !dbg !3192
  call void @llvm.dbg.value(metadata ptr %5, metadata !3085, metadata !DIExpression()), !dbg !3193
  %6 = icmp eq ptr %5, null, !dbg !3195
  br i1 %6, label %7, label %8, !dbg !3196

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3197
  unreachable, !dbg !3197

8:                                                ; preds = %2
  ret ptr %5, !dbg !3198
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3199 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 %2, metadata !3205, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata ptr %0, metadata !3207, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %1, metadata !3210, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !3211, metadata !DIExpression()), !dbg !3212
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3214
  call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !3215
  %5 = icmp eq ptr %4, null, !dbg !3217
  br i1 %5, label %6, label %7, !dbg !3218

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3219
  unreachable, !dbg !3219

7:                                                ; preds = %3
  ret ptr %4, !dbg !3220
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3221 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr null, metadata !3077, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %0, metadata !3080, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3228
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3230
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3231
  %4 = icmp eq ptr %3, null, !dbg !3233
  br i1 %4, label %5, label %6, !dbg !3234

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3235
  unreachable, !dbg !3235

6:                                                ; preds = %2
  ret ptr %3, !dbg !3236
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3237 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr null, metadata !3203, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr null, metadata !3207, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %0, metadata !3210, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3246
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3249
  %4 = icmp eq ptr %3, null, !dbg !3251
  br i1 %4, label %5, label %6, !dbg !3252

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3253
  unreachable, !dbg !3253

6:                                                ; preds = %2
  ret ptr %3, !dbg !3254
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3255 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3259, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %1, metadata !3260, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata ptr %0, metadata !749, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %1, metadata !750, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 1, metadata !751, metadata !DIExpression()), !dbg !3262
  %3 = load i64, ptr %1, align 8, !dbg !3264, !tbaa !2364
  call void @llvm.dbg.value(metadata i64 %3, metadata !752, metadata !DIExpression()), !dbg !3262
  %4 = icmp eq ptr %0, null, !dbg !3265
  br i1 %4, label %5, label %8, !dbg !3267

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3268
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3271
  br label %15, !dbg !3271

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3272
  %10 = add nuw i64 %9, 1, !dbg !3272
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3272
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3272
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %13, metadata !752, metadata !DIExpression()), !dbg !3262
  br i1 %12, label %14, label %15, !dbg !3275

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3276
  unreachable, !dbg !3276

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3262
  call void @llvm.dbg.value(metadata i64 %16, metadata !752, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %16, metadata !3080, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 1, metadata !3081, metadata !DIExpression()), !dbg !3277
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %17, metadata !3085, metadata !DIExpression()), !dbg !3280
  %18 = icmp eq ptr %17, null, !dbg !3282
  br i1 %18, label %19, label %20, !dbg !3283

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3284
  unreachable, !dbg !3284

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !749, metadata !DIExpression()), !dbg !3262
  store i64 %16, ptr %1, align 8, !dbg !3285, !tbaa !2364
  ret ptr %17, !dbg !3286
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !749, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr %1, metadata !750, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %2, metadata !751, metadata !DIExpression()), !dbg !3287
  %4 = load i64, ptr %1, align 8, !dbg !3288, !tbaa !2364
  call void @llvm.dbg.value(metadata i64 %4, metadata !752, metadata !DIExpression()), !dbg !3287
  %5 = icmp eq ptr %0, null, !dbg !3289
  br i1 %5, label %6, label %13, !dbg !3290

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3291
  br i1 %7, label %8, label %20, !dbg !3292

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3293
  call void @llvm.dbg.value(metadata i64 %9, metadata !752, metadata !DIExpression()), !dbg !3287
  %10 = icmp ugt i64 %2, 128, !dbg !3295
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3296
  call void @llvm.dbg.value(metadata i64 %12, metadata !752, metadata !DIExpression()), !dbg !3287
  br label %20, !dbg !3297

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3298
  %15 = add nuw i64 %14, 1, !dbg !3298
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3298
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3298
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %18, metadata !752, metadata !DIExpression()), !dbg !3287
  br i1 %17, label %19, label %20, !dbg !3299

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3300
  unreachable, !dbg !3300

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3287
  call void @llvm.dbg.value(metadata i64 %21, metadata !752, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %21, metadata !3080, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %2, metadata !3081, metadata !DIExpression()), !dbg !3301
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %22, metadata !3085, metadata !DIExpression()), !dbg !3304
  %23 = icmp eq ptr %22, null, !dbg !3306
  br i1 %23, label %24, label %25, !dbg !3307

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3308
  unreachable, !dbg !3308

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !749, metadata !DIExpression()), !dbg !3287
  store i64 %21, ptr %1, align 8, !dbg !3309, !tbaa !2364
  ret ptr %22, !dbg !3310
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !756 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !764, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %1, metadata !765, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %2, metadata !766, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %3, metadata !767, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %4, metadata !768, metadata !DIExpression()), !dbg !3311
  %6 = load i64, ptr %1, align 8, !dbg !3312, !tbaa !2364
  call void @llvm.dbg.value(metadata i64 %6, metadata !769, metadata !DIExpression()), !dbg !3311
  %7 = ashr i64 %6, 1, !dbg !3313
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3313
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3313
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %10, metadata !770, metadata !DIExpression()), !dbg !3311
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %11, metadata !770, metadata !DIExpression()), !dbg !3311
  %12 = icmp sgt i64 %3, -1, !dbg !3316
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3318
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %15, metadata !770, metadata !DIExpression()), !dbg !3311
  %16 = icmp slt i64 %4, 0, !dbg !3319
  br i1 %16, label %17, label %30, !dbg !3319

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3319
  br i1 %18, label %19, label %24, !dbg !3319

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3319
  %21 = udiv i64 9223372036854775807, %20, !dbg !3319
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3319
  br i1 %23, label %46, label %43, !dbg !3319

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3319
  br i1 %25, label %43, label %26, !dbg !3319

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3319
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3319
  %29 = icmp ult i64 %28, %15, !dbg !3319
  br i1 %29, label %46, label %43, !dbg !3319

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3319
  br i1 %31, label %43, label %32, !dbg !3319

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3319
  br i1 %33, label %34, label %40, !dbg !3319

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3319
  br i1 %35, label %43, label %36, !dbg !3319

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3319
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3319
  %39 = icmp ult i64 %38, %4, !dbg !3319
  br i1 %39, label %46, label %43, !dbg !3319

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3319
  br i1 %42, label %46, label %43, !dbg !3319

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !771, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3311
  %44 = mul i64 %15, %4, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %44, metadata !771, metadata !DIExpression()), !dbg !3311
  %45 = icmp slt i64 %44, 128, !dbg !3319
  br i1 %45, label %46, label %52, !dbg !3319

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !772, metadata !DIExpression()), !dbg !3311
  %48 = sdiv i64 %47, %4, !dbg !3320
  call void @llvm.dbg.value(metadata i64 %48, metadata !770, metadata !DIExpression()), !dbg !3311
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %51, metadata !771, metadata !DIExpression()), !dbg !3311
  br label %52, !dbg !3324

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3311
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3311
  call void @llvm.dbg.value(metadata i64 %54, metadata !771, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %53, metadata !770, metadata !DIExpression()), !dbg !3311
  %55 = icmp eq ptr %0, null, !dbg !3325
  br i1 %55, label %56, label %57, !dbg !3327

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3328, !tbaa !2364
  br label %57, !dbg !3329

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3330
  %59 = icmp slt i64 %58, %2, !dbg !3332
  br i1 %59, label %60, label %97, !dbg !3333

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3334
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3334
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %63, metadata !770, metadata !DIExpression()), !dbg !3311
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3335
  br i1 %66, label %96, label %67, !dbg !3335

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3336

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3336
  br i1 %69, label %70, label %75, !dbg !3336

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3336
  %72 = udiv i64 9223372036854775807, %71, !dbg !3336
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3336
  br i1 %74, label %96, label %94, !dbg !3336

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3336
  br i1 %76, label %94, label %77, !dbg !3336

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3336
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3336
  %80 = icmp ult i64 %79, %63, !dbg !3336
  br i1 %80, label %96, label %94, !dbg !3336

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3336
  br i1 %82, label %94, label %83, !dbg !3336

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3336
  br i1 %84, label %85, label %91, !dbg !3336

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3336
  br i1 %86, label %94, label %87, !dbg !3336

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3336
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3336
  %90 = icmp ult i64 %89, %4, !dbg !3336
  br i1 %90, label %96, label %94, !dbg !3336

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3336
  br i1 %93, label %96, label %94, !dbg !3336

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !771, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3311
  %95 = mul i64 %63, %4, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %95, metadata !771, metadata !DIExpression()), !dbg !3311
  br label %97, !dbg !3337

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !3338
  unreachable, !dbg !3338

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3311
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3311
  call void @llvm.dbg.value(metadata i64 %99, metadata !771, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %98, metadata !770, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3157, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %99, metadata !3158, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %99, metadata !3164, metadata !DIExpression()), !dbg !3341
  %100 = icmp eq i64 %99, 0, !dbg !3343
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3343
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #43, !dbg !3344
  call void @llvm.dbg.value(metadata ptr %102, metadata !3085, metadata !DIExpression()), !dbg !3345
  %103 = icmp eq ptr %102, null, !dbg !3347
  br i1 %103, label %104, label %105, !dbg !3348

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !3349
  unreachable, !dbg !3349

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !764, metadata !DIExpression()), !dbg !3311
  store i64 %98, ptr %1, align 8, !dbg !3350, !tbaa !2364
  ret ptr %102, !dbg !3351
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3352 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3354, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %0, metadata !3356, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i64 1, metadata !3359, metadata !DIExpression()), !dbg !3360
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3362
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3363
  %3 = icmp eq ptr %2, null, !dbg !3365
  br i1 %3, label %4, label %5, !dbg !3366

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3367
  unreachable, !dbg !3367

5:                                                ; preds = %1
  ret ptr %2, !dbg !3368
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3369 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3357 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3356, metadata !DIExpression()), !dbg !3370
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3370
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3372
  %4 = icmp eq ptr %3, null, !dbg !3374
  br i1 %4, label %5, label %6, !dbg !3375

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3376
  unreachable, !dbg !3376

6:                                                ; preds = %2
  ret ptr %3, !dbg !3377
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3378 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3380, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %0, metadata !3382, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 1, metadata !3385, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %0, metadata !3388, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 1, metadata !3391, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %0, metadata !3388, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 1, metadata !3391, metadata !DIExpression()), !dbg !3392
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3395
  %3 = icmp eq ptr %2, null, !dbg !3397
  br i1 %3, label %4, label %5, !dbg !3398

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3399
  unreachable, !dbg !3399

5:                                                ; preds = %1
  ret ptr %2, !dbg !3400
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3383 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3382, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %1, metadata !3385, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %0, metadata !3388, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3391, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %0, metadata !3388, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i64 %1, metadata !3391, metadata !DIExpression()), !dbg !3402
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3404
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3405
  %4 = icmp eq ptr %3, null, !dbg !3407
  br i1 %4, label %5, label %6, !dbg !3408

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3409
  unreachable, !dbg !3409

6:                                                ; preds = %2
  ret ptr %3, !dbg !3410
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3411 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i64 %1, metadata !3109, metadata !DIExpression()), !dbg !3418
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3420
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3421
  %4 = icmp eq ptr %3, null, !dbg !3423
  br i1 %4, label %5, label %6, !dbg !3424

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3425
  unreachable, !dbg !3425

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3426, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3434
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3436
  ret ptr %3, !dbg !3437
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3438 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3443, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3125, metadata !DIExpression()), !dbg !3447
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3449
  call void @llvm.dbg.value(metadata ptr %3, metadata !3085, metadata !DIExpression()), !dbg !3450
  %4 = icmp eq ptr %3, null, !dbg !3452
  br i1 %4, label %5, label %6, !dbg !3453

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3454
  unreachable, !dbg !3454

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3426, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3455
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3457
  ret ptr %3, !dbg !3458
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3459 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3463, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3464, metadata !DIExpression()), !dbg !3466
  %3 = add nsw i64 %1, 1, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %3, metadata !3123, metadata !DIExpression()), !dbg !3468
  call void @llvm.dbg.value(metadata i64 %3, metadata !3125, metadata !DIExpression()), !dbg !3470
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3472
  call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !3473
  %5 = icmp eq ptr %4, null, !dbg !3475
  br i1 %5, label %6, label %7, !dbg !3476

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3477
  unreachable, !dbg !3477

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3465, metadata !DIExpression()), !dbg !3466
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3478
  store i8 0, ptr %8, align 1, !dbg !3479, !tbaa !883
  call void @llvm.dbg.value(metadata ptr %4, metadata !3426, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3480
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()), !dbg !3480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3482
  ret ptr %4, !dbg !3483
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3486, metadata !DIExpression()), !dbg !3487
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3488
  %3 = add i64 %2, 1, !dbg !3489
  call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %3, metadata !3416, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %3, metadata !3109, metadata !DIExpression()), !dbg !3492
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %4, metadata !3085, metadata !DIExpression()), !dbg !3495
  %5 = icmp eq ptr %4, null, !dbg !3497
  br i1 %5, label %6, label %7, !dbg !3498

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3499
  unreachable, !dbg !3499

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3426, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %3, metadata !3433, metadata !DIExpression()), !dbg !3500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3502
  ret ptr %4, !dbg !3503
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3504 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3509, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %1, metadata !3506, metadata !DIExpression()), !dbg !3510
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.118, ptr noundef nonnull @.str.2.119, i32 noundef 5) #37, !dbg !3509
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef %2) #37, !dbg !3509
  %3 = icmp eq i32 %1, 0, !dbg !3509
  tail call void @llvm.assume(i1 %3), !dbg !3509
  tail call void @abort() #39, !dbg !3511
  unreachable, !dbg !3511
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3512 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3550, metadata !DIExpression()), !dbg !3555
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3556
  call void @llvm.dbg.value(metadata i1 poison, metadata !3551, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3555
  call void @llvm.dbg.value(metadata ptr %0, metadata !3557, metadata !DIExpression()), !dbg !3560
  %3 = load i32, ptr %0, align 8, !dbg !3562, !tbaa !3563
  %4 = and i32 %3, 32, !dbg !3564
  %5 = icmp eq i32 %4, 0, !dbg !3564
  call void @llvm.dbg.value(metadata i1 %5, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3555
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3565
  %7 = icmp eq i32 %6, 0, !dbg !3566
  call void @llvm.dbg.value(metadata i1 %7, metadata !3554, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3555
  br i1 %5, label %8, label %18, !dbg !3567

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3569
  call void @llvm.dbg.value(metadata i1 %9, metadata !3551, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3555
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3570
  %11 = xor i1 %7, true, !dbg !3570
  %12 = sext i1 %11 to i32, !dbg !3570
  br i1 %10, label %21, label %13, !dbg !3570

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3571
  %15 = load i32, ptr %14, align 4, !dbg !3571, !tbaa !874
  %16 = icmp ne i32 %15, 9, !dbg !3572
  %17 = sext i1 %16 to i32, !dbg !3573
  br label %21, !dbg !3573

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3574

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3576
  store i32 0, ptr %20, align 4, !dbg !3578, !tbaa !874
  br label %21, !dbg !3576

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3555
  ret i32 %22, !dbg !3579
}

; Function Attrs: nounwind
declare !dbg !3580 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3623, metadata !DIExpression()), !dbg !3626
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3627
  call void @llvm.dbg.value(metadata i32 %2, metadata !3624, metadata !DIExpression()), !dbg !3626
  %3 = icmp slt i32 %2, 0, !dbg !3628
  br i1 %3, label %4, label %6, !dbg !3630

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3631
  br label %24, !dbg !3632

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3633
  %8 = icmp eq i32 %7, 0, !dbg !3633
  br i1 %8, label %13, label %9, !dbg !3635

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3636
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3637
  %12 = icmp eq i64 %11, -1, !dbg !3638
  br i1 %12, label %16, label %13, !dbg !3639

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3640
  %15 = icmp eq i32 %14, 0, !dbg !3640
  br i1 %15, label %16, label %18, !dbg !3641

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3623, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3626
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %17, metadata !3625, metadata !DIExpression()), !dbg !3626
  br label %24, !dbg !3643

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3644
  %20 = load i32, ptr %19, align 4, !dbg !3644, !tbaa !874
  call void @llvm.dbg.value(metadata i32 %20, metadata !3623, metadata !DIExpression()), !dbg !3626
  call void @llvm.dbg.value(metadata i32 0, metadata !3625, metadata !DIExpression()), !dbg !3626
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3642
  call void @llvm.dbg.value(metadata i32 %21, metadata !3625, metadata !DIExpression()), !dbg !3626
  %22 = icmp eq i32 %20, 0, !dbg !3645
  br i1 %22, label %24, label %23, !dbg !3643

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3647, !tbaa !874
  call void @llvm.dbg.value(metadata i32 -1, metadata !3625, metadata !DIExpression()), !dbg !3626
  br label %24, !dbg !3649

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3626
  ret i32 %25, !dbg !3650
}

; Function Attrs: nofree nounwind
declare !dbg !3651 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3652 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3653 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3654 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3657 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3695, metadata !DIExpression()), !dbg !3696
  %2 = icmp eq ptr %0, null, !dbg !3697
  br i1 %2, label %6, label %3, !dbg !3699

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3700
  %5 = icmp eq i32 %4, 0, !dbg !3700
  br i1 %5, label %6, label %8, !dbg !3701

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3702
  br label %16, !dbg !3703

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3709
  %9 = load i32, ptr %0, align 8, !dbg !3711, !tbaa !3563
  %10 = and i32 %9, 256, !dbg !3713
  %11 = icmp eq i32 %10, 0, !dbg !3713
  br i1 %11, label %14, label %12, !dbg !3714

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3715
  br label %14, !dbg !3715

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3716
  br label %16, !dbg !3717

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3696
  ret i32 %17, !dbg !3718
}

; Function Attrs: nofree nounwind
declare !dbg !3719 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3720 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3759, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i64 %1, metadata !3760, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata i32 %2, metadata !3761, metadata !DIExpression()), !dbg !3765
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3766
  %5 = load ptr, ptr %4, align 8, !dbg !3766, !tbaa !3767
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3768
  %7 = load ptr, ptr %6, align 8, !dbg !3768, !tbaa !3769
  %8 = icmp eq ptr %5, %7, !dbg !3770
  br i1 %8, label %9, label %27, !dbg !3771

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3772
  %11 = load ptr, ptr %10, align 8, !dbg !3772, !tbaa !1346
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3773
  %13 = load ptr, ptr %12, align 8, !dbg !3773, !tbaa !3774
  %14 = icmp eq ptr %11, %13, !dbg !3775
  br i1 %14, label %15, label %27, !dbg !3776

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3777
  %17 = load ptr, ptr %16, align 8, !dbg !3777, !tbaa !3778
  %18 = icmp eq ptr %17, null, !dbg !3779
  br i1 %18, label %19, label %27, !dbg !3780

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3781
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3782
  call void @llvm.dbg.value(metadata i64 %21, metadata !3762, metadata !DIExpression()), !dbg !3783
  %22 = icmp eq i64 %21, -1, !dbg !3784
  br i1 %22, label %29, label %23, !dbg !3786

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3787, !tbaa !3563
  %25 = and i32 %24, -17, !dbg !3787
  store i32 %25, ptr %0, align 8, !dbg !3787, !tbaa !3563
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3788
  store i64 %21, ptr %26, align 8, !dbg !3789, !tbaa !3790
  br label %29, !dbg !3791

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3792
  br label %29, !dbg !3793

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3765
  ret i32 %30, !dbg !3794
}

; Function Attrs: nofree nounwind
declare !dbg !3795 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3798 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3803, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %1, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata i64 %2, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %3, metadata !3806, metadata !DIExpression()), !dbg !3808
  %5 = icmp eq ptr %1, null, !dbg !3809
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3811
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3811
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3811
  call void @llvm.dbg.value(metadata i64 %8, metadata !3805, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %7, metadata !3804, metadata !DIExpression()), !dbg !3808
  call void @llvm.dbg.value(metadata ptr %6, metadata !3803, metadata !DIExpression()), !dbg !3808
  %9 = icmp eq ptr %3, null, !dbg !3812
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3814
  call void @llvm.dbg.value(metadata ptr %10, metadata !3806, metadata !DIExpression()), !dbg !3808
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !3815
  call void @llvm.dbg.value(metadata i64 %11, metadata !3807, metadata !DIExpression()), !dbg !3808
  %12 = icmp ult i64 %11, -3, !dbg !3816
  br i1 %12, label %13, label %17, !dbg !3818

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !3819
  %15 = icmp eq i32 %14, 0, !dbg !3819
  br i1 %15, label %16, label %29, !dbg !3820

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3821, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata ptr %10, metadata !3828, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 0, metadata !3831, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 8, metadata !3832, metadata !DIExpression()), !dbg !3833
  store i64 0, ptr %10, align 1, !dbg !3835
  br label %29, !dbg !3836

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3837
  br i1 %18, label %19, label %20, !dbg !3839

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3840
  unreachable, !dbg !3840

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3841

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3843
  br i1 %23, label %29, label %24, !dbg !3844

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3845
  br i1 %25, label %29, label %26, !dbg !3848

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3849, !tbaa !883
  %28 = zext i8 %27 to i32, !dbg !3850
  store i32 %28, ptr %6, align 4, !dbg !3851, !tbaa !874
  br label %29, !dbg !3852

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3808
  ret i64 %30, !dbg !3853
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3854 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3860 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3862, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %1, metadata !3863, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 %2, metadata !3864, metadata !DIExpression()), !dbg !3866
  %4 = icmp eq i64 %2, 0, !dbg !3867
  br i1 %4, label %8, label %5, !dbg !3867

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3867
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3867
  br i1 %7, label %13, label %8, !dbg !3867

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3865, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3866
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3865, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3866
  %9 = mul i64 %2, %1, !dbg !3867
  call void @llvm.dbg.value(metadata i64 %9, metadata !3865, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata ptr %0, metadata !3869, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %9, metadata !3872, metadata !DIExpression()), !dbg !3873
  %10 = icmp eq i64 %9, 0, !dbg !3875
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3875
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #43, !dbg !3876
  br label %15, !dbg !3877

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3865, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3866
  %14 = tail call ptr @__errno_location() #40, !dbg !3878
  store i32 12, ptr %14, align 4, !dbg !3880, !tbaa !874
  br label %15, !dbg !3881

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3866
  ret ptr %16, !dbg !3882
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3883 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3887, metadata !DIExpression()), !dbg !3892
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3893
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3888, metadata !DIExpression()), !dbg !3894
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3895
  %4 = icmp eq i32 %3, 0, !dbg !3895
  br i1 %4, label %5, label %12, !dbg !3897

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3898, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata ptr @.str.136, metadata !3901, metadata !DIExpression()), !dbg !3902
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.136, i64 2), !dbg !3905
  %7 = icmp eq i32 %6, 0, !dbg !3906
  br i1 %7, label %11, label %8, !dbg !3907

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3898, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata ptr @.str.1.137, metadata !3901, metadata !DIExpression()), !dbg !3908
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.137, i64 6), !dbg !3910
  %10 = icmp eq i32 %9, 0, !dbg !3911
  br i1 %10, label %11, label %12, !dbg !3912

11:                                               ; preds = %8, %5
  br label %12, !dbg !3913

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3892
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3914
  ret i1 %13, !dbg !3914
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3915 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3919, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata ptr %1, metadata !3920, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i64 %2, metadata !3921, metadata !DIExpression()), !dbg !3922
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3923
  ret i32 %4, !dbg !3924
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3925 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3929, metadata !DIExpression()), !dbg !3930
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3931
  ret ptr %2, !dbg !3932
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3933 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3937
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3938
  call void @llvm.dbg.value(metadata ptr %2, metadata !3936, metadata !DIExpression()), !dbg !3937
  ret ptr %2, !dbg !3939
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3940 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3942, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata ptr %1, metadata !3943, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i64 %2, metadata !3944, metadata !DIExpression()), !dbg !3949
  call void @llvm.dbg.value(metadata i32 %0, metadata !3935, metadata !DIExpression()), !dbg !3950
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %4, metadata !3936, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata ptr %4, metadata !3945, metadata !DIExpression()), !dbg !3949
  %5 = icmp eq ptr %4, null, !dbg !3953
  br i1 %5, label %6, label %9, !dbg !3954

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3955
  br i1 %7, label %19, label %8, !dbg !3958

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3959, !tbaa !883
  br label %19, !dbg !3960

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3961
  call void @llvm.dbg.value(metadata i64 %10, metadata !3946, metadata !DIExpression()), !dbg !3962
  %11 = icmp ult i64 %10, %2, !dbg !3963
  br i1 %11, label %12, label %14, !dbg !3965

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3966
  call void @llvm.dbg.value(metadata ptr %1, metadata !3968, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i64 %13, metadata !3972, metadata !DIExpression()), !dbg !3973
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !3975
  br label %19, !dbg !3976

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3977
  br i1 %15, label %19, label %16, !dbg !3980

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3981
  call void @llvm.dbg.value(metadata ptr %1, metadata !3968, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata ptr %4, metadata !3971, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.value(metadata i64 %17, metadata !3972, metadata !DIExpression()), !dbg !3983
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3985
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3986
  store i8 0, ptr %18, align 1, !dbg !3987, !tbaa !883
  br label %19, !dbg !3988

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3989
  ret i32 %20, !dbg !3990
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
attributes #11 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !376, !380, !395, !697, !456, !731, !470, !484, !532, !733, !689, !740, !774, !776, !778, !780, !782, !713, !784, !787, !789, !791}
!llvm.ident = !{!793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793, !793}
!llvm.module.flags = !{!794, !795, !796, !797, !798, !799, !800}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sync.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b8dff623ed78e0f8980b4530e39b085")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1096, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 137)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 68)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 71)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "long_options", scope: !64, file: !2, line: 45, type: !361, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !108, globals: !118, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !72, !79, !94}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 337, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !2, line: 37, baseType: !73, size: 32, elements: !74)
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MODE_FILE", value: 0)
!76 = !DIEnumerator(name: "MODE_DATA", value: 1)
!77 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!78 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !80, line: 46, baseType: !73, size: 32, elements: !81)
!80 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!82 = !DIEnumerator(name: "_ISupper", value: 256)
!83 = !DIEnumerator(name: "_ISlower", value: 512)
!84 = !DIEnumerator(name: "_ISalpha", value: 1024)
!85 = !DIEnumerator(name: "_ISdigit", value: 2048)
!86 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!87 = !DIEnumerator(name: "_ISspace", value: 8192)
!88 = !DIEnumerator(name: "_ISprint", value: 16384)
!89 = !DIEnumerator(name: "_ISgraph", value: 32768)
!90 = !DIEnumerator(name: "_ISblank", value: 1)
!91 = !DIEnumerator(name: "_IScntrl", value: 2)
!92 = !DIEnumerator(name: "_ISpunct", value: 4)
!93 = !DIEnumerator(name: "_ISalnum", value: 8)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !95, line: 42, baseType: !73, size: 32, elements: !96)
!95 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107}
!97 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!98 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!99 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!100 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!101 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!102 = !DIEnumerator(name: "c_quoting_style", value: 5)
!103 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!104 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!105 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!106 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!107 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!108 = !{!109, !110, !68, !111, !112, !115, !117}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !119, !124, !129, !134, !139, !144, !227, !229, !231, !236, !241, !246, !248, !250, !252, !254, !256, !258, !263, !268, !270, !272, !274, !276, !278, !280, !285, !290, !295, !300, !302, !304, !306, !308, !313, !318, !320, !322, !324, !329, !334, !339, !341, !343, !345, !62, !347, !349, !354, !356}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 14)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 13)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 18)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 45)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 35)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !146, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !147, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !149)
!147 = !DISubroutineType(cc: DW_CC_nocall, types: !148)
!148 = !{null, !115, !115}
!149 = !{!150, !151, !152, !155, !157, !158, !159, !163, !164, !165, !166, !168, !221, !222, !223, !225, !226}
!150 = !DILocalVariable(name: "program", arg: 1, scope: !146, file: !67, line: 573, type: !115)
!151 = !DILocalVariable(name: "option", arg: 2, scope: !146, file: !67, line: 573, type: !115)
!152 = !DILocalVariable(name: "term", scope: !153, file: !67, line: 585, type: !115)
!153 = distinct !DILexicalBlock(scope: !154, file: !67, line: 582, column: 5)
!154 = distinct !DILexicalBlock(scope: !146, file: !67, line: 581, column: 7)
!155 = !DILocalVariable(name: "double_space", scope: !146, file: !67, line: 594, type: !156)
!156 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!157 = !DILocalVariable(name: "first_word", scope: !146, file: !67, line: 595, type: !115)
!158 = !DILocalVariable(name: "option_text", scope: !146, file: !67, line: 596, type: !115)
!159 = !DILocalVariable(name: "s", scope: !160, file: !67, line: 608, type: !115)
!160 = distinct !DILexicalBlock(scope: !161, file: !67, line: 605, column: 5)
!161 = distinct !DILexicalBlock(scope: !162, file: !67, line: 604, column: 12)
!162 = distinct !DILexicalBlock(scope: !146, file: !67, line: 597, column: 7)
!163 = !DILocalVariable(name: "spaces", scope: !160, file: !67, line: 609, type: !112)
!164 = !DILocalVariable(name: "anchor_len", scope: !146, file: !67, line: 620, type: !112)
!165 = !DILocalVariable(name: "desc_text", scope: !146, file: !67, line: 625, type: !115)
!166 = !DILocalVariable(name: "__ptr", scope: !167, file: !67, line: 644, type: !115)
!167 = distinct !DILexicalBlock(scope: !146, file: !67, line: 644, column: 3)
!168 = !DILocalVariable(name: "__stream", scope: !167, file: !67, line: 644, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !172)
!171 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !174)
!173 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !190, !192, !193, !194, !198, !199, !201, !202, !205, !207, !210, !213, !214, !215, !216, !217}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 51, baseType: !68, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 36, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 70, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !196, line: 152, baseType: !197)
!196 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!197 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 43, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !196, line: 153, baseType: !197)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !172, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !173, line: 37, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !172, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !173, line: 38, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !172, file: !173, line: 93, baseType: !191, size: 64, offset: 1344)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !172, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 20)
!221 = !DILocalVariable(name: "__cnt", scope: !167, file: !67, line: 644, type: !112)
!222 = !DILocalVariable(name: "url_program", scope: !146, file: !67, line: 648, type: !115)
!223 = !DILocalVariable(name: "__ptr", scope: !224, file: !67, line: 686, type: !115)
!224 = distinct !DILexicalBlock(scope: !146, file: !67, line: 686, column: 3)
!225 = !DILocalVariable(name: "__stream", scope: !224, file: !67, line: 686, type: !169)
!226 = !DILocalVariable(name: "__cnt", scope: !224, file: !67, line: 686, type: !112)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !19, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !19, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 4)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 6)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 2)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !19, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !233, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !59, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !19, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !238, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !238, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 7)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 8)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !260, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 17)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 40)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 15)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 61)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !59, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !19, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !19, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !265, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 16)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 22)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !292, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !233, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !29, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 27)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 51)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 12)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !336, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !19, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !265, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !282, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 36)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !282, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 19)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 1280, elements: !20)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !364, line: 50, size: 256, elements: !365)
!364 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!365 = !{!366, !367, !368, !370}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !364, line: 52, baseType: !115, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !363, file: !364, line: 55, baseType: !68, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !363, file: !364, line: 56, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !364, line: 57, baseType: !68, size: 32, offset: 192)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !373, line: 3, type: !292, isLocal: true, isDefinition: true)
!373 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "Version", scope: !376, file: !373, line: 3, type: !115, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C11, file: !373, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !377, splitDebugInlining: false, nameTableKind: None)
!377 = !{!371, !374}
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "file_name", scope: !380, file: !381, line: 45, type: !115, isLocal: true, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C11, file: !381, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !382, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!382 = !{!383, !385, !387, !389, !378, !391}
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !381, line: 121, type: !260, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !381, line: 121, type: !336, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !381, line: 123, type: !260, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !381, line: 126, type: !59, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !380, file: !381, line: 55, type: !156, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !395, file: !396, line: 66, type: !447, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!397 = !{!110, !117}
!398 = !{!399, !401, !426, !428, !430, !432, !393, !434, !436, !438, !440, !445}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !396, line: 272, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_file_name", scope: !403, file: !396, line: 304, type: !115, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "verror_at_line", scope: !396, file: !396, line: 298, type: !404, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !419)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !68, !68, !115, !73, !115, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !407, line: 52, baseType: !408)
!407 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !409, line: 14, baseType: !410)
!409 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !411, baseType: !412)
!411 = !DIFile(filename: "lib/error.c", directory: "/src")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !413)
!413 = !{!414, !415, !416, !417, !418}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !412, file: !411, baseType: !110, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !412, file: !411, baseType: !110, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !412, file: !411, baseType: !110, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !412, file: !411, baseType: !68, size: 32, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !412, file: !411, baseType: !68, size: 32, offset: 224)
!419 = !{!420, !421, !422, !423, !424, !425}
!420 = !DILocalVariable(name: "status", arg: 1, scope: !403, file: !396, line: 298, type: !68)
!421 = !DILocalVariable(name: "errnum", arg: 2, scope: !403, file: !396, line: 298, type: !68)
!422 = !DILocalVariable(name: "file_name", arg: 3, scope: !403, file: !396, line: 298, type: !115)
!423 = !DILocalVariable(name: "line_number", arg: 4, scope: !403, file: !396, line: 298, type: !73)
!424 = !DILocalVariable(name: "message", arg: 5, scope: !403, file: !396, line: 298, type: !115)
!425 = !DILocalVariable(name: "args", arg: 6, scope: !403, file: !396, line: 298, type: !406)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "old_line_number", scope: !403, file: !396, line: 305, type: !73, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !396, line: 338, type: !233, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !265, isLocal: true, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !243, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(name: "error_message_count", scope: !395, file: !396, line: 69, type: !73, isLocal: false, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !395, file: !396, line: 295, type: !68, isLocal: false, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !260, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 21)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !396, line: 214, type: !19, isLocal: true, isDefinition: true)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null}
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !452, file: !453, line: 506, type: !68, isLocal: true, isDefinition: true)
!452 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !453, file: !453, line: 485, type: !454, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !458)
!453 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!454 = !DISubroutineType(types: !455)
!455 = !{!68, !68, !68}
!456 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !457, splitDebugInlining: false, nameTableKind: None)
!457 = !{!450}
!458 = !{!459, !460, !461, !462, !465}
!459 = !DILocalVariable(name: "fd", arg: 1, scope: !452, file: !453, line: 485, type: !68)
!460 = !DILocalVariable(name: "target", arg: 2, scope: !452, file: !453, line: 485, type: !68)
!461 = !DILocalVariable(name: "result", scope: !452, file: !453, line: 487, type: !68)
!462 = !DILocalVariable(name: "flags", scope: !463, file: !453, line: 530, type: !68)
!463 = distinct !DILexicalBlock(scope: !464, file: !453, line: 529, column: 5)
!464 = distinct !DILexicalBlock(scope: !452, file: !453, line: 528, column: 7)
!465 = !DILocalVariable(name: "saved_errno", scope: !466, file: !453, line: 533, type: !68)
!466 = distinct !DILexicalBlock(scope: !467, file: !453, line: 532, column: 9)
!467 = distinct !DILexicalBlock(scope: !463, file: !453, line: 531, column: 11)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "program_name", scope: !470, file: !471, line: 31, type: !115, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C11, file: !471, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !472, globals: !473, splitDebugInlining: false, nameTableKind: None)
!471 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!472 = !{!109}
!473 = !{!468, !474, !476}
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !471, line: 46, type: !265, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !471, line: 49, type: !233, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "utf07FF", scope: !480, file: !481, line: 46, type: !508, isLocal: true, isDefinition: true)
!480 = distinct !DISubprogram(name: "proper_name_lite", scope: !481, file: !481, line: 38, type: !482, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !486)
!481 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!482 = !DISubroutineType(types: !483)
!483 = !{!115, !115, !115}
!484 = distinct !DICompileUnit(language: DW_LANG_C11, file: !481, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !485, splitDebugInlining: false, nameTableKind: None)
!485 = !{!478}
!486 = !{!487, !488, !489, !490, !495}
!487 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !480, file: !481, line: 38, type: !115)
!488 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !480, file: !481, line: 38, type: !115)
!489 = !DILocalVariable(name: "translation", scope: !480, file: !481, line: 40, type: !115)
!490 = !DILocalVariable(name: "w", scope: !480, file: !481, line: 47, type: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !492, line: 37, baseType: !493)
!492 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !196, line: 57, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !196, line: 42, baseType: !73)
!495 = !DILocalVariable(name: "mbs", scope: !480, file: !481, line: 48, type: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !497, line: 6, baseType: !498)
!497 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !499, line: 21, baseType: !500)
!499 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 13, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !500, file: !499, line: 15, baseType: !68, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !500, file: !499, line: 20, baseType: !504, size: 32, offset: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !499, line: 16, size: 32, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !504, file: !499, line: 18, baseType: !73, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !504, file: !499, line: 19, baseType: !233, size: 32)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !244)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !511, line: 78, type: !265, isLocal: true, isDefinition: true)
!511 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !511, line: 79, type: !238, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !511, line: 80, type: !126, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !511, line: 81, type: !126, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !511, line: 82, type: !218, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !511, line: 83, type: !243, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !511, line: 84, type: !265, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(scope: null, file: !511, line: 85, type: !260, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !511, line: 86, type: !260, isLocal: true, isDefinition: true)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !511, line: 87, type: !265, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !532, file: !511, line: 76, type: !604, isLocal: false, isDefinition: true)
!532 = distinct !DICompileUnit(language: DW_LANG_C11, file: !511, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !533, retainedTypes: !539, globals: !540, splitDebugInlining: false, nameTableKind: None)
!533 = !{!94, !534, !79}
!534 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !95, line: 254, baseType: !73, size: 32, elements: !535)
!535 = !{!536, !537, !538}
!536 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!537 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!538 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!539 = !{!68, !111, !112}
!540 = !{!509, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !541, !545, !555, !557, !562, !564, !566, !568, !570, !593, !600, !602}
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !532, file: !511, line: 92, type: !543, isLocal: false, isDefinition: true)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 320, elements: !50)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !532, file: !511, line: 1040, type: !547, isLocal: false, isDefinition: true)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !511, line: 56, size: 448, elements: !548)
!548 = !{!549, !550, !551, !553, !554}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !547, file: !511, line: 59, baseType: !94, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !511, line: 62, baseType: !68, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !547, file: !511, line: 66, baseType: !552, size: 256, offset: 64)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !266)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !547, file: !511, line: 69, baseType: !115, size: 64, offset: 320)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !547, file: !511, line: 72, baseType: !115, size: 64, offset: 384)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !532, file: !511, line: 107, type: !547, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "slot0", scope: !532, file: !511, line: 831, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 256)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !511, line: 321, type: !243, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !511, line: 357, type: !243, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !511, line: 358, type: !243, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !511, line: 199, type: !260, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "quote", scope: !572, file: !511, line: 228, type: !591, isLocal: true, isDefinition: true)
!572 = distinct !DISubprogram(name: "gettext_quote", scope: !511, file: !511, line: 197, type: !573, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !575)
!573 = !DISubroutineType(types: !574)
!574 = !{!115, !115, !94}
!575 = !{!576, !577, !578, !579, !580}
!576 = !DILocalVariable(name: "msgid", arg: 1, scope: !572, file: !511, line: 197, type: !115)
!577 = !DILocalVariable(name: "s", arg: 2, scope: !572, file: !511, line: 197, type: !94)
!578 = !DILocalVariable(name: "translation", scope: !572, file: !511, line: 199, type: !115)
!579 = !DILocalVariable(name: "w", scope: !572, file: !511, line: 229, type: !491)
!580 = !DILocalVariable(name: "mbs", scope: !572, file: !511, line: 230, type: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !497, line: 6, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !499, line: 21, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 13, size: 64, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !583, file: !499, line: 15, baseType: !68, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !583, file: !499, line: 20, baseType: !587, size: 32, offset: 32)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !499, line: 16, size: 32, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !587, file: !499, line: 18, baseType: !73, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !587, file: !499, line: 19, baseType: !233, size: 32)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !592)
!592 = !{!245, !235}
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "slotvec", scope: !532, file: !511, line: 834, type: !595, isLocal: true, isDefinition: true)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !511, line: 823, size: 128, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !511, line: 825, baseType: !112, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !596, file: !511, line: 826, baseType: !109, size: 64, offset: 64)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "nslots", scope: !532, file: !511, line: 832, type: !68, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "slotvec0", scope: !532, file: !511, line: 833, type: !596, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 704, elements: !606)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!606 = !{!607}
!607 = !DISubrange(count: 11)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !610, line: 67, type: !336, isLocal: true, isDefinition: true)
!610 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !610, line: 69, type: !260, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !610, line: 83, type: !260, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !610, line: 83, type: !233, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !610, line: 85, type: !243, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !610, line: 88, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 171)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !610, line: 88, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 34)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !610, line: 105, type: !310, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !610, line: 109, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 23)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !610, line: 113, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 28)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !610, line: 120, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 32)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !610, line: 127, type: !351, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !610, line: 134, type: !287, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !610, line: 142, type: !652, isLocal: true, isDefinition: true)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !653)
!653 = !{!654}
!654 = !DISubrange(count: 44)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !610, line: 150, type: !657, isLocal: true, isDefinition: true)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 48)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !610, line: 159, type: !662, isLocal: true, isDefinition: true)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 52)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !610, line: 170, type: !667, isLocal: true, isDefinition: true)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 60)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !610, line: 248, type: !218, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !610, line: 248, type: !315, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !610, line: 254, type: !218, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !610, line: 254, type: !121, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !610, line: 254, type: !287, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !610, line: 259, type: !3, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !610, line: 259, type: !684, isLocal: true, isDefinition: true)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 29)
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !689, file: !690, line: 26, type: !692, isLocal: false, isDefinition: true)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !691, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!691 = !{!687}
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !693)
!693 = !{!694}
!694 = !DISubrange(count: 47)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "exit_failure", scope: !697, file: !698, line: 24, type: !700, isLocal: false, isDefinition: true)
!697 = distinct !DICompileUnit(language: DW_LANG_C11, file: !698, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !699, splitDebugInlining: false, nameTableKind: None)
!698 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!699 = !{!695}
!700 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(scope: null, file: !703, line: 34, type: !59, isLocal: true, isDefinition: true)
!703 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !703, line: 34, type: !260, isLocal: true, isDefinition: true)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !703, line: 34, type: !282, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !710, line: 108, type: !44, isLocal: true, isDefinition: true)
!710 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!711 = !DIGlobalVariableExpression(var: !712, expr: !DIExpression())
!712 = distinct !DIGlobalVariable(name: "internal_state", scope: !713, file: !710, line: 97, type: !716, isLocal: true, isDefinition: true)
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !714, globals: !715, splitDebugInlining: false, nameTableKind: None)
!714 = !{!110, !112, !117}
!715 = !{!708, !711}
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !497, line: 6, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !499, line: 21, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 13, size: 64, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !718, file: !499, line: 15, baseType: !68, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !718, file: !499, line: 20, baseType: !722, size: 32, offset: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !499, line: 16, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !722, file: !499, line: 18, baseType: !73, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !722, file: !499, line: 19, baseType: !233, size: 32)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !728, line: 35, type: !243, isLocal: true, isDefinition: true)
!728 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !728, line: 35, type: !238, isLocal: true, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !610, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !734, retainedTypes: !738, globals: !739, splitDebugInlining: false, nameTableKind: None)
!734 = !{!735}
!735 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !610, line: 40, baseType: !73, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!738 = !{!110}
!739 = !{!608, !611, !613, !615, !617, !619, !624, !629, !631, !636, !641, !646, !648, !650, !655, !660, !665, !670, !672, !674, !676, !678, !680, !682}
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !742, retainedTypes: !773, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!742 = !{!743, !755}
!743 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !744, file: !741, line: 188, baseType: !73, size: 32, elements: !753)
!744 = distinct !DISubprogram(name: "x2nrealloc", scope: !741, file: !741, line: 176, type: !745, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !748)
!745 = !DISubroutineType(types: !746)
!746 = !{!110, !110, !747, !112}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!748 = !{!749, !750, !751, !752}
!749 = !DILocalVariable(name: "p", arg: 1, scope: !744, file: !741, line: 176, type: !110)
!750 = !DILocalVariable(name: "pn", arg: 2, scope: !744, file: !741, line: 176, type: !747)
!751 = !DILocalVariable(name: "s", arg: 3, scope: !744, file: !741, line: 176, type: !112)
!752 = !DILocalVariable(name: "n", scope: !744, file: !741, line: 178, type: !112)
!753 = !{!754}
!754 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!755 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !756, file: !741, line: 228, baseType: !73, size: 32, elements: !753)
!756 = distinct !DISubprogram(name: "xpalloc", scope: !741, file: !741, line: 223, type: !757, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !763)
!757 = !DISubroutineType(types: !758)
!758 = !{!110, !110, !759, !760, !762, !760}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !761, line: 130, baseType: !762)
!761 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !113, line: 35, baseType: !197)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772}
!764 = !DILocalVariable(name: "pa", arg: 1, scope: !756, file: !741, line: 223, type: !110)
!765 = !DILocalVariable(name: "pn", arg: 2, scope: !756, file: !741, line: 223, type: !759)
!766 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !756, file: !741, line: 223, type: !760)
!767 = !DILocalVariable(name: "n_max", arg: 4, scope: !756, file: !741, line: 223, type: !762)
!768 = !DILocalVariable(name: "s", arg: 5, scope: !756, file: !741, line: 223, type: !760)
!769 = !DILocalVariable(name: "n0", scope: !756, file: !741, line: 230, type: !760)
!770 = !DILocalVariable(name: "n", scope: !756, file: !741, line: 237, type: !760)
!771 = !DILocalVariable(name: "nbytes", scope: !756, file: !741, line: 248, type: !760)
!772 = !DILocalVariable(name: "adjusted_nbytes", scope: !756, file: !741, line: 252, type: !760)
!773 = !{!109, !110, !156, !197, !114}
!774 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !775, splitDebugInlining: false, nameTableKind: None)
!775 = !{!701, !704, !706}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !777, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!777 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !738, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !738, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !786, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!786 = !{!156, !114, !110}
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !788, splitDebugInlining: false, nameTableKind: None)
!788 = !{!726, !729}
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !738, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!793 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!794 = !{i32 7, !"Dwarf Version", i32 5}
!795 = !{i32 2, !"Debug Info Version", i32 3}
!796 = !{i32 1, !"wchar_size", i32 4}
!797 = !{i32 8, !"PIC Level", i32 2}
!798 = !{i32 7, !"PIE Level", i32 2}
!799 = !{i32 7, !"uwtable", i32 2}
!800 = !{i32 7, !"frame-pointer", i32 1}
!801 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 55, type: !802, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !68}
!804 = !{!805}
!805 = !DILocalVariable(name: "status", arg: 1, scope: !801, file: !2, line: 55, type: !68)
!806 = !DILocation(line: 0, scope: !801)
!807 = !DILocation(line: 57, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !801, file: !2, line: 57, column: 7)
!809 = !DILocation(line: 57, column: 7, scope: !801)
!810 = !DILocation(line: 58, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !808, file: !2, line: 58, column: 5)
!812 = !{!813, !813, i64 0}
!813 = !{!"any pointer", !814, i64 0}
!814 = !{!"omnipotent char", !815, i64 0}
!815 = !{!"Simple C/C++ TBAA"}
!816 = !DILocation(line: 61, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !808, file: !2, line: 60, column: 5)
!818 = !DILocation(line: 62, column: 7, scope: !817)
!819 = !DILocation(line: 70, column: 7, scope: !817)
!820 = !DILocation(line: 73, column: 7, scope: !817)
!821 = !DILocation(line: 76, column: 7, scope: !817)
!822 = !DILocation(line: 77, column: 7, scope: !817)
!823 = !DILocalVariable(name: "program", arg: 1, scope: !824, file: !67, line: 836, type: !115)
!824 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !825, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !115}
!827 = !{!823, !828, !835, !836, !838, !839}
!828 = !DILocalVariable(name: "infomap", scope: !824, file: !67, line: 838, type: !829)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 896, elements: !261)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !824, file: !67, line: 838, size: 128, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !831, file: !67, line: 838, baseType: !115, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !831, file: !67, line: 838, baseType: !115, size: 64, offset: 64)
!835 = !DILocalVariable(name: "node", scope: !824, file: !67, line: 848, type: !115)
!836 = !DILocalVariable(name: "map_prog", scope: !824, file: !67, line: 849, type: !837)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!838 = !DILocalVariable(name: "lc_messages", scope: !824, file: !67, line: 861, type: !115)
!839 = !DILocalVariable(name: "url_program", scope: !824, file: !67, line: 874, type: !115)
!840 = !DILocation(line: 0, scope: !824, inlinedAt: !841)
!841 = distinct !DILocation(line: 78, column: 7, scope: !817)
!842 = !DILocation(line: 857, column: 3, scope: !824, inlinedAt: !841)
!843 = !DILocation(line: 861, column: 29, scope: !824, inlinedAt: !841)
!844 = !DILocation(line: 862, column: 7, scope: !845, inlinedAt: !841)
!845 = distinct !DILexicalBlock(scope: !824, file: !67, line: 862, column: 7)
!846 = !DILocation(line: 862, column: 19, scope: !845, inlinedAt: !841)
!847 = !DILocation(line: 862, column: 22, scope: !845, inlinedAt: !841)
!848 = !DILocation(line: 862, column: 7, scope: !824, inlinedAt: !841)
!849 = !DILocation(line: 868, column: 7, scope: !850, inlinedAt: !841)
!850 = distinct !DILexicalBlock(scope: !845, file: !67, line: 863, column: 5)
!851 = !DILocation(line: 870, column: 5, scope: !850, inlinedAt: !841)
!852 = !DILocation(line: 875, column: 3, scope: !824, inlinedAt: !841)
!853 = !DILocation(line: 877, column: 3, scope: !824, inlinedAt: !841)
!854 = !DILocation(line: 80, column: 3, scope: !801)
!855 = !DISubprogram(name: "dcgettext", scope: !856, file: !856, line: 51, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!856 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!857 = !DISubroutineType(types: !858)
!858 = !{!109, !115, !115, !68}
!859 = !{}
!860 = !DISubprogram(name: "__fprintf_chk", scope: !861, file: !861, line: 93, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!861 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!862 = !DISubroutineType(types: !863)
!863 = !{!68, !864, !68, !865, null}
!864 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!865 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!866 = !DISubprogram(name: "__printf_chk", scope: !861, file: !861, line: 95, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!867 = !DISubroutineType(types: !868)
!868 = !{!68, !68, !865, null}
!869 = !DISubprogram(name: "fputs_unlocked", scope: !407, file: !407, line: 691, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!870 = !DISubroutineType(types: !871)
!871 = !{!68, !865, !864}
!872 = !DILocation(line: 0, scope: !146)
!873 = !DILocation(line: 581, column: 7, scope: !154)
!874 = !{!875, !875, i64 0}
!875 = !{!"int", !814, i64 0}
!876 = !DILocation(line: 581, column: 19, scope: !154)
!877 = !DILocation(line: 581, column: 7, scope: !146)
!878 = !DILocation(line: 585, column: 26, scope: !153)
!879 = !DILocation(line: 0, scope: !153)
!880 = !DILocation(line: 586, column: 23, scope: !153)
!881 = !DILocation(line: 586, column: 28, scope: !153)
!882 = !DILocation(line: 586, column: 32, scope: !153)
!883 = !{!814, !814, i64 0}
!884 = !DILocation(line: 586, column: 38, scope: !153)
!885 = !DILocalVariable(name: "__s1", arg: 1, scope: !886, file: !887, line: 1359, type: !115)
!886 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !890)
!887 = !DIFile(filename: "./lib/string.h", directory: "/src")
!888 = !DISubroutineType(types: !889)
!889 = !{!156, !115, !115}
!890 = !{!885, !891}
!891 = !DILocalVariable(name: "__s2", arg: 2, scope: !886, file: !887, line: 1359, type: !115)
!892 = !DILocation(line: 0, scope: !886, inlinedAt: !893)
!893 = distinct !DILocation(line: 586, column: 41, scope: !153)
!894 = !DILocation(line: 1361, column: 11, scope: !886, inlinedAt: !893)
!895 = !DILocation(line: 1361, column: 10, scope: !886, inlinedAt: !893)
!896 = !DILocation(line: 586, column: 19, scope: !153)
!897 = !DILocation(line: 587, column: 5, scope: !153)
!898 = !DILocation(line: 588, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !146, file: !67, line: 588, column: 7)
!900 = !DILocation(line: 588, column: 7, scope: !146)
!901 = !DILocation(line: 590, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !899, file: !67, line: 589, column: 5)
!903 = !DILocation(line: 591, column: 7, scope: !902)
!904 = !DILocation(line: 595, column: 37, scope: !146)
!905 = !DILocation(line: 595, column: 35, scope: !146)
!906 = !DILocation(line: 596, column: 29, scope: !146)
!907 = !DILocation(line: 597, column: 8, scope: !162)
!908 = !DILocation(line: 597, column: 7, scope: !146)
!909 = !DILocation(line: 604, column: 24, scope: !161)
!910 = !DILocation(line: 604, column: 12, scope: !162)
!911 = !DILocation(line: 0, scope: !160)
!912 = !DILocation(line: 610, column: 16, scope: !160)
!913 = !DILocation(line: 610, column: 7, scope: !160)
!914 = !DILocation(line: 611, column: 21, scope: !160)
!915 = !{!916, !916, i64 0}
!916 = !{!"short", !814, i64 0}
!917 = !DILocation(line: 611, column: 19, scope: !160)
!918 = !DILocation(line: 611, column: 16, scope: !160)
!919 = !DILocation(line: 610, column: 30, scope: !160)
!920 = distinct !{!920, !913, !914, !921}
!921 = !{!"llvm.loop.mustprogress"}
!922 = !DILocation(line: 612, column: 18, scope: !923)
!923 = distinct !DILexicalBlock(scope: !160, file: !67, line: 612, column: 11)
!924 = !DILocation(line: 612, column: 11, scope: !160)
!925 = !DILocation(line: 620, column: 23, scope: !146)
!926 = !DILocation(line: 625, column: 39, scope: !146)
!927 = !DILocation(line: 626, column: 3, scope: !146)
!928 = !DILocation(line: 626, column: 10, scope: !146)
!929 = !DILocation(line: 626, column: 21, scope: !146)
!930 = !DILocation(line: 628, column: 44, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !67, line: 628, column: 11)
!932 = distinct !DILexicalBlock(scope: !146, file: !67, line: 627, column: 5)
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
!945 = !DILocation(line: 640, column: 16, scope: !932)
!946 = distinct !{!946, !927, !947, !921}
!947 = !DILocation(line: 641, column: 5, scope: !146)
!948 = !DILocation(line: 644, column: 3, scope: !146)
!949 = !DILocation(line: 0, scope: !886, inlinedAt: !950)
!950 = distinct !DILocation(line: 648, column: 31, scope: !146)
!951 = !DILocation(line: 0, scope: !886, inlinedAt: !952)
!952 = distinct !DILocation(line: 649, column: 31, scope: !146)
!953 = !DILocation(line: 0, scope: !886, inlinedAt: !954)
!954 = distinct !DILocation(line: 650, column: 31, scope: !146)
!955 = !DILocation(line: 0, scope: !886, inlinedAt: !956)
!956 = distinct !DILocation(line: 651, column: 31, scope: !146)
!957 = !DILocation(line: 0, scope: !886, inlinedAt: !958)
!958 = distinct !DILocation(line: 652, column: 31, scope: !146)
!959 = !DILocation(line: 0, scope: !886, inlinedAt: !960)
!960 = distinct !DILocation(line: 653, column: 31, scope: !146)
!961 = !DILocation(line: 0, scope: !886, inlinedAt: !962)
!962 = distinct !DILocation(line: 654, column: 31, scope: !146)
!963 = !DILocation(line: 0, scope: !886, inlinedAt: !964)
!964 = distinct !DILocation(line: 655, column: 31, scope: !146)
!965 = !DILocation(line: 0, scope: !886, inlinedAt: !966)
!966 = distinct !DILocation(line: 656, column: 31, scope: !146)
!967 = !DILocation(line: 0, scope: !886, inlinedAt: !968)
!968 = distinct !DILocation(line: 657, column: 31, scope: !146)
!969 = !DILocation(line: 663, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !146, file: !67, line: 663, column: 7)
!971 = !DILocation(line: 664, column: 7, scope: !970)
!972 = !DILocation(line: 664, column: 10, scope: !970)
!973 = !DILocation(line: 663, column: 7, scope: !146)
!974 = !DILocation(line: 669, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !970, file: !67, line: 665, column: 5)
!976 = !DILocation(line: 671, column: 5, scope: !975)
!977 = !DILocation(line: 676, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !67, line: 673, column: 5)
!979 = !DILocation(line: 679, column: 3, scope: !146)
!980 = !DILocation(line: 683, column: 3, scope: !146)
!981 = !DILocation(line: 686, column: 3, scope: !146)
!982 = !DILocation(line: 688, column: 3, scope: !146)
!983 = !DILocation(line: 691, column: 3, scope: !146)
!984 = !DILocation(line: 695, column: 3, scope: !146)
!985 = !DILocation(line: 696, column: 1, scope: !146)
!986 = !DISubprogram(name: "setlocale", scope: !987, file: !987, line: 122, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!987 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!988 = !DISubroutineType(types: !989)
!989 = !{!109, !68, !115}
!990 = !DISubprogram(name: "strncmp", scope: !991, file: !991, line: 159, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!991 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!992 = !DISubroutineType(types: !993)
!993 = !{!68, !115, !115, !112}
!994 = !DISubprogram(name: "exit", scope: !995, file: !995, line: 624, type: !802, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!995 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!996 = !DISubprogram(name: "getenv", scope: !995, file: !995, line: 641, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!997 = !DISubroutineType(types: !998)
!998 = !{!109, !115}
!999 = !DISubprogram(name: "strcmp", scope: !991, file: !991, line: 156, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!68, !115, !115}
!1002 = !DISubprogram(name: "strspn", scope: !991, file: !991, line: 297, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!114, !115, !115}
!1005 = !DISubprogram(name: "strchr", scope: !991, file: !991, line: 246, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!109, !115, !68}
!1008 = !DISubprogram(name: "__ctype_b_loc", scope: !80, file: !80, line: 79, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1014 = !DISubprogram(name: "strcspn", scope: !991, file: !991, line: 293, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1015 = !DISubprogram(name: "fwrite_unlocked", scope: !407, file: !407, line: 704, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!112, !1018, !112, !112, !864}
!1018 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1021 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 166, type: !1022, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1025)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!68, !68, !1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1026 = !DILocalVariable(name: "argc", arg: 1, scope: !1021, file: !2, line: 166, type: !68)
!1027 = !DILocalVariable(name: "argv", arg: 2, scope: !1021, file: !2, line: 166, type: !1024)
!1028 = !DILocalVariable(name: "arg_data", scope: !1021, file: !2, line: 168, type: !156)
!1029 = !DILocalVariable(name: "arg_file_system", scope: !1021, file: !2, line: 168, type: !156)
!1030 = !DILocalVariable(name: "ok", scope: !1021, file: !2, line: 169, type: !156)
!1031 = !DILocalVariable(name: "c", scope: !1021, file: !2, line: 179, type: !68)
!1032 = !DILocalVariable(name: "args_specified", scope: !1021, file: !2, line: 202, type: !156)
!1033 = !DILocalVariable(name: "mode", scope: !1021, file: !2, line: 211, type: !72)
!1034 = !DILocation(line: 0, scope: !1021)
!1035 = !DILocation(line: 172, column: 21, scope: !1021)
!1036 = !DILocation(line: 172, column: 3, scope: !1021)
!1037 = !DILocation(line: 173, column: 3, scope: !1021)
!1038 = !DILocation(line: 174, column: 3, scope: !1021)
!1039 = !DILocation(line: 175, column: 3, scope: !1021)
!1040 = !DILocation(line: 177, column: 3, scope: !1021)
!1041 = !DILocation(line: 180, column: 3, scope: !1021)
!1042 = !DILocation(line: 180, column: 15, scope: !1021)
!1043 = distinct !{!1043, !1041, !1044, !921, !1045}
!1044 = !DILocation(line: 200, column: 5, scope: !1021)
!1045 = !{!"llvm.loop.peeled.count", i32 1}
!1046 = !DILocation(line: 191, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 184, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 182, column: 5)
!1049 = distinct !{!1049, !1041, !1044, !921}
!1050 = !DILocation(line: 193, column: 9, scope: !1047)
!1051 = !DILocation(line: 195, column: 9, scope: !1047)
!1052 = !DILocation(line: 198, column: 11, scope: !1047)
!1053 = !DILocation(line: 202, column: 25, scope: !1021)
!1054 = !DILocation(line: 202, column: 32, scope: !1021)
!1055 = !DILocation(line: 204, column: 16, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 204, column: 7)
!1057 = !DILocation(line: 205, column: 5, scope: !1056)
!1058 = !DILocation(line: 208, column: 23, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 208, column: 7)
!1060 = !DILocation(line: 209, column: 5, scope: !1059)
!1061 = !DILocation(line: 212, column: 24, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 212, column: 7)
!1063 = !DILocation(line: 221, column: 7, scope: !1021)
!1064 = !DILocation(line: 222, column: 5, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 221, column: 7)
!1066 = !DILocation(line: 226, column: 31, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 225, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 225, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 224, column: 5)
!1070 = !DILocalVariable(name: "mode", arg: 1, scope: !1071, file: !2, line: 87, type: !72)
!1071 = distinct !DISubprogram(name: "sync_arg", scope: !2, file: !2, line: 87, type: !1072, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!156, !72, !115}
!1074 = !{!1070, !1075, !1076, !1077, !1078, !1081, !1082, !1083}
!1075 = !DILocalVariable(name: "file", arg: 2, scope: !1071, file: !2, line: 87, type: !115)
!1076 = !DILocalVariable(name: "open_flags", scope: !1071, file: !2, line: 89, type: !68)
!1077 = !DILocalVariable(name: "fd", scope: !1071, file: !2, line: 99, type: !68)
!1078 = !DILocalVariable(name: "rd_errno", scope: !1079, file: !2, line: 104, type: !68)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 101, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 100, column: 7)
!1081 = !DILocalVariable(name: "ret", scope: !1071, file: !2, line: 114, type: !156)
!1082 = !DILocalVariable(name: "fdflags", scope: !1071, file: !2, line: 117, type: !68)
!1083 = !DILocalVariable(name: "sync_status", scope: !1084, file: !2, line: 128, type: !68)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 127, column: 5)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 126, column: 7)
!1086 = !DILocation(line: 0, scope: !1071, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 226, column: 15, scope: !1067)
!1088 = !DILocation(line: 99, column: 12, scope: !1071, inlinedAt: !1087)
!1089 = !DILocation(line: 100, column: 10, scope: !1080, inlinedAt: !1087)
!1090 = !DILocation(line: 100, column: 7, scope: !1071, inlinedAt: !1087)
!1091 = !DILocation(line: 104, column: 22, scope: !1079, inlinedAt: !1087)
!1092 = !DILocation(line: 0, scope: !1079, inlinedAt: !1087)
!1093 = !DILocation(line: 106, column: 14, scope: !1094, inlinedAt: !1087)
!1094 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 105, column: 11)
!1095 = !DILocation(line: 107, column: 14, scope: !1096, inlinedAt: !1087)
!1096 = distinct !DILexicalBlock(scope: !1079, file: !2, line: 107, column: 11)
!1097 = !DILocation(line: 107, column: 11, scope: !1079, inlinedAt: !1087)
!1098 = !DILocation(line: 117, column: 17, scope: !1071, inlinedAt: !1087)
!1099 = !DILocation(line: 118, column: 15, scope: !1100, inlinedAt: !1087)
!1100 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 118, column: 7)
!1101 = !DILocation(line: 119, column: 7, scope: !1100, inlinedAt: !1087)
!1102 = !DILocation(line: 119, column: 38, scope: !1100, inlinedAt: !1087)
!1103 = !DILocation(line: 119, column: 10, scope: !1100, inlinedAt: !1087)
!1104 = !DILocation(line: 119, column: 53, scope: !1100, inlinedAt: !1087)
!1105 = !DILocation(line: 118, column: 7, scope: !1071, inlinedAt: !1087)
!1106 = !DILocation(line: 0, scope: !1084, inlinedAt: !1087)
!1107 = !DILocation(line: 130, column: 7, scope: !1084, inlinedAt: !1087)
!1108 = !DILocation(line: 133, column: 25, scope: !1109, inlinedAt: !1087)
!1109 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 131, column: 9)
!1110 = !DILocation(line: 134, column: 11, scope: !1109, inlinedAt: !1087)
!1111 = !DILocation(line: 137, column: 25, scope: !1109, inlinedAt: !1087)
!1112 = !DILocation(line: 138, column: 11, scope: !1109, inlinedAt: !1087)
!1113 = !DILocation(line: 142, column: 25, scope: !1109, inlinedAt: !1087)
!1114 = !DILocation(line: 143, column: 11, scope: !1109, inlinedAt: !1087)
!1115 = !DILocation(line: 146, column: 11, scope: !1109, inlinedAt: !1087)
!1116 = !DILocation(line: 0, scope: !1109, inlinedAt: !1087)
!1117 = !DILocation(line: 149, column: 23, scope: !1118, inlinedAt: !1087)
!1118 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 149, column: 11)
!1119 = !DILocation(line: 149, column: 11, scope: !1084, inlinedAt: !1087)
!1120 = !DILocation(line: 156, column: 7, scope: !1121, inlinedAt: !1087)
!1121 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 156, column: 7)
!1122 = !DILocation(line: 156, column: 18, scope: !1121, inlinedAt: !1087)
!1123 = !DILocation(line: 156, column: 7, scope: !1071, inlinedAt: !1087)
!1124 = !DILocation(line: 158, column: 7, scope: !1125, inlinedAt: !1087)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 157, column: 5)
!1126 = !DILocation(line: 160, column: 5, scope: !1125, inlinedAt: !1087)
!1127 = !DILocation(line: 163, column: 1, scope: !1071, inlinedAt: !1087)
!1128 = !DILocation(line: 226, column: 12, scope: !1067)
!1129 = !DILocation(line: 225, column: 35, scope: !1067)
!1130 = !DILocation(line: 225, column: 21, scope: !1067)
!1131 = !DILocation(line: 225, column: 7, scope: !1068)
!1132 = distinct !{!1132, !1131, !1133, !921}
!1133 = !DILocation(line: 226, column: 43, scope: !1068)
!1134 = !DILocation(line: 229, column: 10, scope: !1021)
!1135 = !DILocation(line: 229, column: 3, scope: !1021)
!1136 = !DISubprogram(name: "bindtextdomain", scope: !856, file: !856, line: 86, type: !1137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!109, !115, !115}
!1139 = !DISubprogram(name: "textdomain", scope: !856, file: !856, line: 82, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1140 = !DISubprogram(name: "atexit", scope: !995, file: !995, line: 602, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!68, !447}
!1143 = !DISubprogram(name: "getopt_long", scope: !364, file: !364, line: 66, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!68, !68, !1146, !115, !1148, !369}
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1149 = !DISubprogram(name: "sync", scope: !1150, file: !1150, line: 1005, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1150 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1151 = !DISubprogram(name: "open", scope: !1152, file: !1152, line: 181, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1152 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!68, !115, !68, null}
!1155 = !DISubprogram(name: "__errno_location", scope: !1156, file: !1156, line: 37, type: !1157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1156 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!369}
!1159 = !DISubprogram(name: "fdatasync", scope: !1150, file: !1150, line: 1150, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!68, !68}
!1162 = !DISubprogram(name: "fsync", scope: !1150, file: !1150, line: 989, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1163 = !DISubprogram(name: "syncfs", scope: !1150, file: !1150, line: 995, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1164 = !DISubprogram(name: "close", scope: !1150, file: !1150, line: 358, type: !1160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1165 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !381, file: !381, line: 50, type: !825, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1166)
!1166 = !{!1167}
!1167 = !DILocalVariable(name: "file", arg: 1, scope: !1165, file: !381, line: 50, type: !115)
!1168 = !DILocation(line: 0, scope: !1165)
!1169 = !DILocation(line: 52, column: 13, scope: !1165)
!1170 = !DILocation(line: 53, column: 1, scope: !1165)
!1171 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !381, file: !381, line: 87, type: !1172, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !156}
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "ignore", arg: 1, scope: !1171, file: !381, line: 87, type: !156)
!1176 = !DILocation(line: 0, scope: !1171)
!1177 = !DILocation(line: 89, column: 16, scope: !1171)
!1178 = !{!1179, !1179, i64 0}
!1179 = !{!"_Bool", !814, i64 0}
!1180 = !DILocation(line: 90, column: 1, scope: !1171)
!1181 = distinct !DISubprogram(name: "close_stdout", scope: !381, file: !381, line: 116, type: !448, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1182)
!1182 = !{!1183}
!1183 = !DILocalVariable(name: "write_error", scope: !1184, file: !381, line: 121, type: !115)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !381, line: 120, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !381, line: 118, column: 7)
!1186 = !DILocation(line: 118, column: 21, scope: !1185)
!1187 = !DILocation(line: 118, column: 7, scope: !1185)
!1188 = !DILocation(line: 118, column: 29, scope: !1185)
!1189 = !DILocation(line: 119, column: 7, scope: !1185)
!1190 = !DILocation(line: 119, column: 12, scope: !1185)
!1191 = !{i8 0, i8 2}
!1192 = !DILocation(line: 119, column: 25, scope: !1185)
!1193 = !DILocation(line: 119, column: 28, scope: !1185)
!1194 = !DILocation(line: 119, column: 34, scope: !1185)
!1195 = !DILocation(line: 118, column: 7, scope: !1181)
!1196 = !DILocation(line: 121, column: 33, scope: !1184)
!1197 = !DILocation(line: 0, scope: !1184)
!1198 = !DILocation(line: 122, column: 11, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1184, file: !381, line: 122, column: 11)
!1200 = !DILocation(line: 0, scope: !1199)
!1201 = !DILocation(line: 122, column: 11, scope: !1184)
!1202 = !DILocation(line: 123, column: 9, scope: !1199)
!1203 = !DILocation(line: 126, column: 9, scope: !1199)
!1204 = !DILocation(line: 128, column: 14, scope: !1184)
!1205 = !DILocation(line: 128, column: 7, scope: !1184)
!1206 = !DILocation(line: 133, column: 42, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1181, file: !381, line: 133, column: 7)
!1208 = !DILocation(line: 133, column: 28, scope: !1207)
!1209 = !DILocation(line: 133, column: 50, scope: !1207)
!1210 = !DILocation(line: 133, column: 7, scope: !1181)
!1211 = !DILocation(line: 134, column: 12, scope: !1207)
!1212 = !DILocation(line: 134, column: 5, scope: !1207)
!1213 = !DILocation(line: 135, column: 1, scope: !1181)
!1214 = !DISubprogram(name: "_exit", scope: !1150, file: !1150, line: 624, type: !802, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1215 = distinct !DISubprogram(name: "verror", scope: !396, file: !396, line: 251, type: !1216, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1218)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !68, !68, !115, !406}
!1218 = !{!1219, !1220, !1221, !1222}
!1219 = !DILocalVariable(name: "status", arg: 1, scope: !1215, file: !396, line: 251, type: !68)
!1220 = !DILocalVariable(name: "errnum", arg: 2, scope: !1215, file: !396, line: 251, type: !68)
!1221 = !DILocalVariable(name: "message", arg: 3, scope: !1215, file: !396, line: 251, type: !115)
!1222 = !DILocalVariable(name: "args", arg: 4, scope: !1215, file: !396, line: 251, type: !406)
!1223 = !DILocation(line: 0, scope: !1215)
!1224 = !DILocation(line: 251, column: 1, scope: !1215)
!1225 = !DILocation(line: 261, column: 3, scope: !1215)
!1226 = !DILocation(line: 265, column: 7, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1215, file: !396, line: 265, column: 7)
!1228 = !DILocation(line: 265, column: 7, scope: !1215)
!1229 = !DILocation(line: 266, column: 5, scope: !1227)
!1230 = !DILocation(line: 272, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !396, line: 268, column: 5)
!1232 = !DILocation(line: 276, column: 3, scope: !1215)
!1233 = !{i64 0, i64 8, !812, i64 8, i64 8, !812, i64 16, i64 8, !812, i64 24, i64 4, !874, i64 28, i64 4, !874}
!1234 = !DILocation(line: 282, column: 1, scope: !1215)
!1235 = distinct !DISubprogram(name: "flush_stdout", scope: !396, file: !396, line: 163, type: !448, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1236)
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "stdout_fd", scope: !1235, file: !396, line: 166, type: !68)
!1238 = !DILocation(line: 0, scope: !1235)
!1239 = !DILocalVariable(name: "fd", arg: 1, scope: !1240, file: !396, line: 145, type: !68)
!1240 = distinct !DISubprogram(name: "is_open", scope: !396, file: !396, line: 145, type: !1160, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1241)
!1241 = !{!1239}
!1242 = !DILocation(line: 0, scope: !1240, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 182, column: 25, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1235, file: !396, line: 182, column: 7)
!1245 = !DILocation(line: 157, column: 15, scope: !1240, inlinedAt: !1243)
!1246 = !DILocation(line: 157, column: 12, scope: !1240, inlinedAt: !1243)
!1247 = !DILocation(line: 182, column: 7, scope: !1235)
!1248 = !DILocation(line: 184, column: 5, scope: !1244)
!1249 = !DILocation(line: 185, column: 1, scope: !1235)
!1250 = distinct !DISubprogram(name: "error_tail", scope: !396, file: !396, line: 219, type: !1216, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DILocalVariable(name: "status", arg: 1, scope: !1250, file: !396, line: 219, type: !68)
!1253 = !DILocalVariable(name: "errnum", arg: 2, scope: !1250, file: !396, line: 219, type: !68)
!1254 = !DILocalVariable(name: "message", arg: 3, scope: !1250, file: !396, line: 219, type: !115)
!1255 = !DILocalVariable(name: "args", arg: 4, scope: !1250, file: !396, line: 219, type: !406)
!1256 = !DILocation(line: 0, scope: !1250)
!1257 = !DILocation(line: 219, column: 1, scope: !1250)
!1258 = !DILocation(line: 229, column: 13, scope: !1250)
!1259 = !DILocation(line: 135, column: 10, scope: !1260, inlinedAt: !1302)
!1260 = distinct !DISubprogram(name: "vfprintf", scope: !861, file: !861, line: 132, type: !1261, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1298)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!68, !1263, !865, !408}
!1263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1264)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1266, file: !173, line: 51, baseType: !68, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1266, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1266, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1266, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1266, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1266, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1266, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1266, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1266, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1266, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1266, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1266, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1266, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1266, file: !173, line: 70, baseType: !1282, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1266, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1266, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1266, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1266, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1266, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1266, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1266, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1266, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1266, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1266, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1266, file: !173, line: 93, baseType: !1282, size: 64, offset: 1344)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1266, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1266, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1266, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1266, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!1298 = !{!1299, !1300, !1301}
!1299 = !DILocalVariable(name: "__stream", arg: 1, scope: !1260, file: !861, line: 132, type: !1263)
!1300 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1260, file: !861, line: 133, type: !865)
!1301 = !DILocalVariable(name: "__ap", arg: 3, scope: !1260, file: !861, line: 133, type: !408)
!1302 = distinct !DILocation(line: 229, column: 3, scope: !1250)
!1303 = !{!1304, !1306}
!1304 = distinct !{!1304, !1305, !"vfprintf.inline: argument 0"}
!1305 = distinct !{!1305, !"vfprintf.inline"}
!1306 = distinct !{!1306, !1305, !"vfprintf.inline: argument 1"}
!1307 = !DILocation(line: 229, column: 3, scope: !1250)
!1308 = !DILocation(line: 0, scope: !1260, inlinedAt: !1302)
!1309 = !DILocation(line: 133, column: 49, scope: !1260, inlinedAt: !1302)
!1310 = !DILocation(line: 232, column: 3, scope: !1250)
!1311 = !DILocation(line: 233, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1250, file: !396, line: 233, column: 7)
!1313 = !DILocation(line: 233, column: 7, scope: !1250)
!1314 = !DILocalVariable(name: "errnum", arg: 1, scope: !1315, file: !396, line: 188, type: !68)
!1315 = distinct !DISubprogram(name: "print_errno_message", scope: !396, file: !396, line: 188, type: !802, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1316)
!1316 = !{!1314, !1317, !1318}
!1317 = !DILocalVariable(name: "s", scope: !1315, file: !396, line: 190, type: !115)
!1318 = !DILocalVariable(name: "errbuf", scope: !1315, file: !396, line: 193, type: !1319)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 1024)
!1322 = !DILocation(line: 0, scope: !1315, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 234, column: 5, scope: !1312)
!1324 = !DILocation(line: 193, column: 3, scope: !1315, inlinedAt: !1323)
!1325 = !DILocation(line: 193, column: 8, scope: !1315, inlinedAt: !1323)
!1326 = !DILocation(line: 195, column: 7, scope: !1315, inlinedAt: !1323)
!1327 = !DILocation(line: 207, column: 9, scope: !1328, inlinedAt: !1323)
!1328 = distinct !DILexicalBlock(scope: !1315, file: !396, line: 207, column: 7)
!1329 = !DILocation(line: 207, column: 7, scope: !1315, inlinedAt: !1323)
!1330 = !DILocation(line: 208, column: 9, scope: !1328, inlinedAt: !1323)
!1331 = !DILocation(line: 208, column: 5, scope: !1328, inlinedAt: !1323)
!1332 = !DILocation(line: 214, column: 3, scope: !1315, inlinedAt: !1323)
!1333 = !DILocation(line: 216, column: 1, scope: !1315, inlinedAt: !1323)
!1334 = !DILocation(line: 234, column: 5, scope: !1312)
!1335 = !DILocation(line: 238, column: 3, scope: !1250)
!1336 = !DILocalVariable(name: "__c", arg: 1, scope: !1337, file: !1338, line: 101, type: !68)
!1337 = distinct !DISubprogram(name: "putc_unlocked", scope: !1338, file: !1338, line: 101, type: !1339, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1341)
!1338 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!68, !68, !1264}
!1341 = !{!1336, !1342}
!1342 = !DILocalVariable(name: "__stream", arg: 2, scope: !1337, file: !1338, line: 101, type: !1264)
!1343 = !DILocation(line: 0, scope: !1337, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 238, column: 3, scope: !1250)
!1345 = !DILocation(line: 103, column: 10, scope: !1337, inlinedAt: !1344)
!1346 = !{!1347, !813, i64 40}
!1347 = !{!"_IO_FILE", !875, i64 0, !813, i64 8, !813, i64 16, !813, i64 24, !813, i64 32, !813, i64 40, !813, i64 48, !813, i64 56, !813, i64 64, !813, i64 72, !813, i64 80, !813, i64 88, !813, i64 96, !813, i64 104, !875, i64 112, !875, i64 116, !1348, i64 120, !916, i64 128, !814, i64 130, !814, i64 131, !813, i64 136, !1348, i64 144, !813, i64 152, !813, i64 160, !813, i64 168, !813, i64 176, !1348, i64 184, !875, i64 192, !814, i64 196}
!1348 = !{!"long", !814, i64 0}
!1349 = !{!1347, !813, i64 48}
!1350 = !{!"branch_weights", i32 2000, i32 1}
!1351 = !DILocation(line: 240, column: 3, scope: !1250)
!1352 = !DILocation(line: 241, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1250, file: !396, line: 241, column: 7)
!1354 = !DILocation(line: 241, column: 7, scope: !1250)
!1355 = !DILocation(line: 242, column: 5, scope: !1353)
!1356 = !DILocation(line: 243, column: 1, scope: !1250)
!1357 = !DISubprogram(name: "__vfprintf_chk", scope: !861, file: !861, line: 96, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!68, !1263, !68, !865, !408}
!1360 = !DISubprogram(name: "strerror_r", scope: !991, file: !991, line: 444, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!109, !68, !109, !112}
!1363 = !DISubprogram(name: "__overflow", scope: !407, file: !407, line: 886, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!68, !1264, !68}
!1366 = !DISubprogram(name: "fflush_unlocked", scope: !407, file: !407, line: 239, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!68, !1264}
!1369 = !DISubprogram(name: "fcntl", scope: !1152, file: !1152, line: 149, type: !1370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!68, !68, !68, null}
!1372 = distinct !DISubprogram(name: "error", scope: !396, file: !396, line: 285, type: !1373, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !68, !68, !115, null}
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DILocalVariable(name: "status", arg: 1, scope: !1372, file: !396, line: 285, type: !68)
!1377 = !DILocalVariable(name: "errnum", arg: 2, scope: !1372, file: !396, line: 285, type: !68)
!1378 = !DILocalVariable(name: "message", arg: 3, scope: !1372, file: !396, line: 285, type: !115)
!1379 = !DILocalVariable(name: "ap", scope: !1372, file: !396, line: 287, type: !406)
!1380 = !DILocation(line: 0, scope: !1372)
!1381 = !DILocation(line: 287, column: 3, scope: !1372)
!1382 = !DILocation(line: 287, column: 11, scope: !1372)
!1383 = !DILocation(line: 288, column: 3, scope: !1372)
!1384 = !DILocation(line: 289, column: 3, scope: !1372)
!1385 = !DILocation(line: 290, column: 3, scope: !1372)
!1386 = !DILocation(line: 291, column: 1, scope: !1372)
!1387 = !DILocation(line: 0, scope: !403)
!1388 = !DILocation(line: 298, column: 1, scope: !403)
!1389 = !DILocation(line: 302, column: 7, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !403, file: !396, line: 302, column: 7)
!1391 = !DILocation(line: 302, column: 7, scope: !403)
!1392 = !DILocation(line: 307, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !396, line: 307, column: 11)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !396, line: 303, column: 5)
!1395 = !DILocation(line: 307, column: 27, scope: !1393)
!1396 = !DILocation(line: 308, column: 11, scope: !1393)
!1397 = !DILocation(line: 308, column: 28, scope: !1393)
!1398 = !DILocation(line: 308, column: 25, scope: !1393)
!1399 = !DILocation(line: 309, column: 15, scope: !1393)
!1400 = !DILocation(line: 309, column: 33, scope: !1393)
!1401 = !DILocation(line: 310, column: 19, scope: !1393)
!1402 = !DILocation(line: 311, column: 22, scope: !1393)
!1403 = !DILocation(line: 311, column: 56, scope: !1393)
!1404 = !DILocation(line: 307, column: 11, scope: !1394)
!1405 = !DILocation(line: 316, column: 21, scope: !1394)
!1406 = !DILocation(line: 317, column: 23, scope: !1394)
!1407 = !DILocation(line: 318, column: 5, scope: !1394)
!1408 = !DILocation(line: 327, column: 3, scope: !403)
!1409 = !DILocation(line: 331, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !403, file: !396, line: 331, column: 7)
!1411 = !DILocation(line: 331, column: 7, scope: !403)
!1412 = !DILocation(line: 332, column: 5, scope: !1410)
!1413 = !DILocation(line: 338, column: 7, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !396, line: 334, column: 5)
!1415 = !DILocation(line: 346, column: 3, scope: !403)
!1416 = !DILocation(line: 350, column: 3, scope: !403)
!1417 = !DILocation(line: 356, column: 1, scope: !403)
!1418 = distinct !DISubprogram(name: "error_at_line", scope: !396, file: !396, line: 359, type: !1419, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1421)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !68, !68, !115, !73, !115, null}
!1421 = !{!1422, !1423, !1424, !1425, !1426, !1427}
!1422 = !DILocalVariable(name: "status", arg: 1, scope: !1418, file: !396, line: 359, type: !68)
!1423 = !DILocalVariable(name: "errnum", arg: 2, scope: !1418, file: !396, line: 359, type: !68)
!1424 = !DILocalVariable(name: "file_name", arg: 3, scope: !1418, file: !396, line: 359, type: !115)
!1425 = !DILocalVariable(name: "line_number", arg: 4, scope: !1418, file: !396, line: 360, type: !73)
!1426 = !DILocalVariable(name: "message", arg: 5, scope: !1418, file: !396, line: 360, type: !115)
!1427 = !DILocalVariable(name: "ap", scope: !1418, file: !396, line: 362, type: !406)
!1428 = !DILocation(line: 0, scope: !1418)
!1429 = !DILocation(line: 362, column: 3, scope: !1418)
!1430 = !DILocation(line: 362, column: 11, scope: !1418)
!1431 = !DILocation(line: 363, column: 3, scope: !1418)
!1432 = !DILocation(line: 364, column: 3, scope: !1418)
!1433 = !DILocation(line: 366, column: 3, scope: !1418)
!1434 = !DILocation(line: 367, column: 1, scope: !1418)
!1435 = distinct !DISubprogram(name: "rpl_fcntl", scope: !453, file: !453, line: 202, type: !1370, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439, !1450, !1451, !1454, !1456, !1460}
!1437 = !DILocalVariable(name: "fd", arg: 1, scope: !1435, file: !453, line: 202, type: !68)
!1438 = !DILocalVariable(name: "action", arg: 2, scope: !1435, file: !453, line: 202, type: !68)
!1439 = !DILocalVariable(name: "arg", scope: !1435, file: !453, line: 208, type: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !409, line: 22, baseType: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1442, baseType: !1443)
!1442 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1443, file: !1442, line: 208, baseType: !110, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1443, file: !1442, line: 208, baseType: !110, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1443, file: !1442, line: 208, baseType: !110, size: 64, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1443, file: !1442, line: 208, baseType: !68, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1443, file: !1442, line: 208, baseType: !68, size: 32, offset: 224)
!1450 = !DILocalVariable(name: "result", scope: !1435, file: !453, line: 211, type: !68)
!1451 = !DILocalVariable(name: "target", scope: !1452, file: !453, line: 216, type: !68)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !453, line: 215, column: 7)
!1453 = distinct !DILexicalBlock(scope: !1435, file: !453, line: 213, column: 5)
!1454 = !DILocalVariable(name: "target", scope: !1455, file: !453, line: 223, type: !68)
!1455 = distinct !DILexicalBlock(scope: !1453, file: !453, line: 222, column: 7)
!1456 = !DILocalVariable(name: "x", scope: !1457, file: !453, line: 418, type: !68)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !453, line: 417, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !453, line: 261, column: 11)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !453, line: 258, column: 7)
!1460 = !DILocalVariable(name: "p", scope: !1461, file: !453, line: 426, type: !110)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !453, line: 425, column: 13)
!1462 = !DILocation(line: 0, scope: !1435)
!1463 = !DILocation(line: 208, column: 3, scope: !1435)
!1464 = !DILocation(line: 208, column: 11, scope: !1435)
!1465 = !DILocation(line: 209, column: 3, scope: !1435)
!1466 = !DILocation(line: 212, column: 3, scope: !1435)
!1467 = !DILocation(line: 216, column: 22, scope: !1452)
!1468 = !DILocation(line: 0, scope: !1452)
!1469 = !DILocalVariable(name: "fd", arg: 1, scope: !1470, file: !453, line: 444, type: !68)
!1470 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !453, file: !453, line: 444, type: !454, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1471)
!1471 = !{!1469, !1472, !1473}
!1472 = !DILocalVariable(name: "target", arg: 2, scope: !1470, file: !453, line: 444, type: !68)
!1473 = !DILocalVariable(name: "result", scope: !1470, file: !453, line: 446, type: !68)
!1474 = !DILocation(line: 0, scope: !1470, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 217, column: 18, scope: !1452)
!1476 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1475)
!1477 = !DILocation(line: 223, column: 22, scope: !1455)
!1478 = !DILocation(line: 0, scope: !1455)
!1479 = !DILocation(line: 0, scope: !452, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 224, column: 18, scope: !1455)
!1481 = !DILocation(line: 507, column: 12, scope: !1482, inlinedAt: !1480)
!1482 = distinct !DILexicalBlock(scope: !452, file: !453, line: 507, column: 7)
!1483 = !DILocation(line: 507, column: 9, scope: !1482, inlinedAt: !1480)
!1484 = !DILocation(line: 507, column: 7, scope: !452, inlinedAt: !1480)
!1485 = !DILocation(line: 509, column: 16, scope: !1486, inlinedAt: !1480)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !453, line: 508, column: 5)
!1487 = !DILocation(line: 510, column: 13, scope: !1488, inlinedAt: !1480)
!1488 = distinct !DILexicalBlock(scope: !1486, file: !453, line: 510, column: 11)
!1489 = !DILocation(line: 510, column: 23, scope: !1488, inlinedAt: !1480)
!1490 = !DILocation(line: 510, column: 26, scope: !1488, inlinedAt: !1480)
!1491 = !DILocation(line: 510, column: 32, scope: !1488, inlinedAt: !1480)
!1492 = !DILocation(line: 510, column: 11, scope: !1486, inlinedAt: !1480)
!1493 = !DILocation(line: 512, column: 30, scope: !1494, inlinedAt: !1480)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !453, line: 511, column: 9)
!1495 = !DILocation(line: 528, column: 19, scope: !464, inlinedAt: !1480)
!1496 = !DILocation(line: 0, scope: !1470, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 520, column: 20, scope: !1498, inlinedAt: !1480)
!1498 = distinct !DILexicalBlock(scope: !1488, file: !453, line: 519, column: 9)
!1499 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1497)
!1500 = !DILocation(line: 521, column: 22, scope: !1501, inlinedAt: !1480)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !453, line: 521, column: 15)
!1502 = !DILocation(line: 521, column: 15, scope: !1498, inlinedAt: !1480)
!1503 = !DILocation(line: 522, column: 32, scope: !1501, inlinedAt: !1480)
!1504 = !DILocation(line: 522, column: 13, scope: !1501, inlinedAt: !1480)
!1505 = !DILocation(line: 0, scope: !1470, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 527, column: 14, scope: !1482, inlinedAt: !1480)
!1507 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1506)
!1508 = !DILocation(line: 0, scope: !1482, inlinedAt: !1480)
!1509 = !DILocation(line: 528, column: 9, scope: !464, inlinedAt: !1480)
!1510 = !DILocation(line: 530, column: 19, scope: !463, inlinedAt: !1480)
!1511 = !DILocation(line: 0, scope: !463, inlinedAt: !1480)
!1512 = !DILocation(line: 531, column: 17, scope: !467, inlinedAt: !1480)
!1513 = !DILocation(line: 531, column: 21, scope: !467, inlinedAt: !1480)
!1514 = !DILocation(line: 531, column: 54, scope: !467, inlinedAt: !1480)
!1515 = !DILocation(line: 531, column: 24, scope: !467, inlinedAt: !1480)
!1516 = !DILocation(line: 531, column: 68, scope: !467, inlinedAt: !1480)
!1517 = !DILocation(line: 531, column: 11, scope: !463, inlinedAt: !1480)
!1518 = !DILocation(line: 533, column: 29, scope: !466, inlinedAt: !1480)
!1519 = !DILocation(line: 0, scope: !466, inlinedAt: !1480)
!1520 = !DILocation(line: 534, column: 11, scope: !466, inlinedAt: !1480)
!1521 = !DILocation(line: 535, column: 17, scope: !466, inlinedAt: !1480)
!1522 = !DILocation(line: 537, column: 9, scope: !466, inlinedAt: !1480)
!1523 = !DILocation(line: 329, column: 22, scope: !1458)
!1524 = !DILocation(line: 330, column: 13, scope: !1458)
!1525 = !DILocation(line: 418, column: 23, scope: !1457)
!1526 = !DILocation(line: 0, scope: !1457)
!1527 = !DILocation(line: 419, column: 24, scope: !1457)
!1528 = !DILocation(line: 421, column: 13, scope: !1458)
!1529 = !DILocation(line: 426, column: 25, scope: !1461)
!1530 = !DILocation(line: 0, scope: !1461)
!1531 = !DILocation(line: 427, column: 24, scope: !1461)
!1532 = !DILocation(line: 429, column: 13, scope: !1458)
!1533 = !DILocation(line: 0, scope: !1453)
!1534 = !DILocation(line: 438, column: 3, scope: !1435)
!1535 = !DILocation(line: 441, column: 1, scope: !1435)
!1536 = !DILocation(line: 440, column: 3, scope: !1435)
!1537 = distinct !DISubprogram(name: "getprogname", scope: !732, file: !732, line: 54, type: !1538, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !859)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!115}
!1540 = !DILocation(line: 58, column: 10, scope: !1537)
!1541 = !DILocation(line: 58, column: 3, scope: !1537)
!1542 = distinct !DISubprogram(name: "set_program_name", scope: !471, file: !471, line: 37, type: !825, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DILocalVariable(name: "argv0", arg: 1, scope: !1542, file: !471, line: 37, type: !115)
!1545 = !DILocalVariable(name: "slash", scope: !1542, file: !471, line: 44, type: !115)
!1546 = !DILocalVariable(name: "base", scope: !1542, file: !471, line: 45, type: !115)
!1547 = !DILocation(line: 0, scope: !1542)
!1548 = !DILocation(line: 44, column: 23, scope: !1542)
!1549 = !DILocation(line: 45, column: 22, scope: !1542)
!1550 = !DILocation(line: 46, column: 17, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1542, file: !471, line: 46, column: 7)
!1552 = !DILocation(line: 46, column: 9, scope: !1551)
!1553 = !DILocation(line: 46, column: 25, scope: !1551)
!1554 = !DILocation(line: 46, column: 40, scope: !1551)
!1555 = !DILocalVariable(name: "__s1", arg: 1, scope: !1556, file: !887, line: 974, type: !1019)
!1556 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1557, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!156, !1019, !1019, !112}
!1559 = !{!1555, !1560, !1561}
!1560 = !DILocalVariable(name: "__s2", arg: 2, scope: !1556, file: !887, line: 974, type: !1019)
!1561 = !DILocalVariable(name: "__n", arg: 3, scope: !1556, file: !887, line: 974, type: !112)
!1562 = !DILocation(line: 0, scope: !1556, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 46, column: 28, scope: !1551)
!1564 = !DILocation(line: 976, column: 11, scope: !1556, inlinedAt: !1563)
!1565 = !DILocation(line: 976, column: 10, scope: !1556, inlinedAt: !1563)
!1566 = !DILocation(line: 46, column: 7, scope: !1542)
!1567 = !DILocation(line: 49, column: 11, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !471, line: 49, column: 11)
!1569 = distinct !DILexicalBlock(scope: !1551, file: !471, line: 47, column: 5)
!1570 = !DILocation(line: 49, column: 36, scope: !1568)
!1571 = !DILocation(line: 49, column: 11, scope: !1569)
!1572 = !DILocation(line: 65, column: 16, scope: !1542)
!1573 = !DILocation(line: 71, column: 27, scope: !1542)
!1574 = !DILocation(line: 74, column: 33, scope: !1542)
!1575 = !DILocation(line: 76, column: 1, scope: !1542)
!1576 = !DISubprogram(name: "strrchr", scope: !991, file: !991, line: 273, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1577 = !DILocation(line: 0, scope: !480)
!1578 = !DILocation(line: 40, column: 29, scope: !480)
!1579 = !DILocation(line: 41, column: 19, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !480, file: !481, line: 41, column: 7)
!1581 = !DILocation(line: 41, column: 7, scope: !480)
!1582 = !DILocation(line: 47, column: 3, scope: !480)
!1583 = !DILocation(line: 48, column: 3, scope: !480)
!1584 = !DILocation(line: 48, column: 13, scope: !480)
!1585 = !DILocalVariable(name: "ps", arg: 1, scope: !1586, file: !1587, line: 1135, type: !1590)
!1586 = distinct !DISubprogram(name: "mbszero", scope: !1587, file: !1587, line: 1135, type: !1588, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1591)
!1587 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1591 = !{!1585}
!1592 = !DILocation(line: 0, scope: !1586, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 48, column: 18, scope: !480)
!1594 = !DILocalVariable(name: "__dest", arg: 1, scope: !1595, file: !1596, line: 57, type: !110)
!1595 = distinct !DISubprogram(name: "memset", scope: !1596, file: !1596, line: 57, type: !1597, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !1599)
!1596 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!110, !110, !68, !112}
!1599 = !{!1594, !1600, !1601}
!1600 = !DILocalVariable(name: "__ch", arg: 2, scope: !1595, file: !1596, line: 57, type: !68)
!1601 = !DILocalVariable(name: "__len", arg: 3, scope: !1595, file: !1596, line: 57, type: !112)
!1602 = !DILocation(line: 0, scope: !1595, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 1137, column: 3, scope: !1586, inlinedAt: !1593)
!1604 = !DILocation(line: 59, column: 10, scope: !1595, inlinedAt: !1603)
!1605 = !DILocation(line: 49, column: 7, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !480, file: !481, line: 49, column: 7)
!1607 = !DILocation(line: 49, column: 39, scope: !1606)
!1608 = !DILocation(line: 49, column: 44, scope: !1606)
!1609 = !DILocation(line: 54, column: 1, scope: !480)
!1610 = !DISubprogram(name: "mbrtoc32", scope: !492, file: !492, line: 57, type: !1611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!112, !1613, !865, !112, !1615}
!1613 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1614)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1590)
!1616 = distinct !DISubprogram(name: "clone_quoting_options", scope: !511, file: !511, line: 113, type: !1617, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1620)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1619, !1619}
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!1620 = !{!1621, !1622, !1623}
!1621 = !DILocalVariable(name: "o", arg: 1, scope: !1616, file: !511, line: 113, type: !1619)
!1622 = !DILocalVariable(name: "saved_errno", scope: !1616, file: !511, line: 115, type: !68)
!1623 = !DILocalVariable(name: "p", scope: !1616, file: !511, line: 116, type: !1619)
!1624 = !DILocation(line: 0, scope: !1616)
!1625 = !DILocation(line: 115, column: 21, scope: !1616)
!1626 = !DILocation(line: 116, column: 40, scope: !1616)
!1627 = !DILocation(line: 116, column: 31, scope: !1616)
!1628 = !DILocation(line: 118, column: 9, scope: !1616)
!1629 = !DILocation(line: 119, column: 3, scope: !1616)
!1630 = distinct !DISubprogram(name: "get_quoting_style", scope: !511, file: !511, line: 124, type: !1631, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1635)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!94, !1633}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!1635 = !{!1636}
!1636 = !DILocalVariable(name: "o", arg: 1, scope: !1630, file: !511, line: 124, type: !1633)
!1637 = !DILocation(line: 0, scope: !1630)
!1638 = !DILocation(line: 126, column: 11, scope: !1630)
!1639 = !DILocation(line: 126, column: 46, scope: !1630)
!1640 = !{!1641, !814, i64 0}
!1641 = !{!"quoting_options", !814, i64 0, !875, i64 4, !814, i64 8, !813, i64 40, !813, i64 48}
!1642 = !DILocation(line: 126, column: 3, scope: !1630)
!1643 = distinct !DISubprogram(name: "set_quoting_style", scope: !511, file: !511, line: 132, type: !1644, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1619, !94}
!1646 = !{!1647, !1648}
!1647 = !DILocalVariable(name: "o", arg: 1, scope: !1643, file: !511, line: 132, type: !1619)
!1648 = !DILocalVariable(name: "s", arg: 2, scope: !1643, file: !511, line: 132, type: !94)
!1649 = !DILocation(line: 0, scope: !1643)
!1650 = !DILocation(line: 134, column: 4, scope: !1643)
!1651 = !DILocation(line: 134, column: 45, scope: !1643)
!1652 = !DILocation(line: 135, column: 1, scope: !1643)
!1653 = distinct !DISubprogram(name: "set_char_quoting", scope: !511, file: !511, line: 143, type: !1654, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1656)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!68, !1619, !4, !68}
!1656 = !{!1657, !1658, !1659, !1660, !1661, !1663, !1664}
!1657 = !DILocalVariable(name: "o", arg: 1, scope: !1653, file: !511, line: 143, type: !1619)
!1658 = !DILocalVariable(name: "c", arg: 2, scope: !1653, file: !511, line: 143, type: !4)
!1659 = !DILocalVariable(name: "i", arg: 3, scope: !1653, file: !511, line: 143, type: !68)
!1660 = !DILocalVariable(name: "uc", scope: !1653, file: !511, line: 145, type: !117)
!1661 = !DILocalVariable(name: "p", scope: !1653, file: !511, line: 146, type: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1663 = !DILocalVariable(name: "shift", scope: !1653, file: !511, line: 148, type: !68)
!1664 = !DILocalVariable(name: "r", scope: !1653, file: !511, line: 149, type: !73)
!1665 = !DILocation(line: 0, scope: !1653)
!1666 = !DILocation(line: 147, column: 6, scope: !1653)
!1667 = !DILocation(line: 147, column: 41, scope: !1653)
!1668 = !DILocation(line: 147, column: 62, scope: !1653)
!1669 = !DILocation(line: 147, column: 57, scope: !1653)
!1670 = !DILocation(line: 148, column: 15, scope: !1653)
!1671 = !DILocation(line: 149, column: 21, scope: !1653)
!1672 = !DILocation(line: 149, column: 24, scope: !1653)
!1673 = !DILocation(line: 149, column: 34, scope: !1653)
!1674 = !DILocation(line: 150, column: 19, scope: !1653)
!1675 = !DILocation(line: 150, column: 24, scope: !1653)
!1676 = !DILocation(line: 150, column: 6, scope: !1653)
!1677 = !DILocation(line: 151, column: 3, scope: !1653)
!1678 = distinct !DISubprogram(name: "set_quoting_flags", scope: !511, file: !511, line: 159, type: !1679, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!68, !1619, !68}
!1681 = !{!1682, !1683, !1684}
!1682 = !DILocalVariable(name: "o", arg: 1, scope: !1678, file: !511, line: 159, type: !1619)
!1683 = !DILocalVariable(name: "i", arg: 2, scope: !1678, file: !511, line: 159, type: !68)
!1684 = !DILocalVariable(name: "r", scope: !1678, file: !511, line: 163, type: !68)
!1685 = !DILocation(line: 0, scope: !1678)
!1686 = !DILocation(line: 161, column: 8, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1678, file: !511, line: 161, column: 7)
!1688 = !DILocation(line: 161, column: 7, scope: !1678)
!1689 = !DILocation(line: 163, column: 14, scope: !1678)
!1690 = !{!1641, !875, i64 4}
!1691 = !DILocation(line: 164, column: 12, scope: !1678)
!1692 = !DILocation(line: 165, column: 3, scope: !1678)
!1693 = distinct !DISubprogram(name: "set_custom_quoting", scope: !511, file: !511, line: 169, type: !1694, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1619, !115, !115}
!1696 = !{!1697, !1698, !1699}
!1697 = !DILocalVariable(name: "o", arg: 1, scope: !1693, file: !511, line: 169, type: !1619)
!1698 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1693, file: !511, line: 170, type: !115)
!1699 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1693, file: !511, line: 170, type: !115)
!1700 = !DILocation(line: 0, scope: !1693)
!1701 = !DILocation(line: 172, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1693, file: !511, line: 172, column: 7)
!1703 = !DILocation(line: 172, column: 7, scope: !1693)
!1704 = !DILocation(line: 174, column: 12, scope: !1693)
!1705 = !DILocation(line: 175, column: 8, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1693, file: !511, line: 175, column: 7)
!1707 = !DILocation(line: 175, column: 19, scope: !1706)
!1708 = !DILocation(line: 176, column: 5, scope: !1706)
!1709 = !DILocation(line: 177, column: 6, scope: !1693)
!1710 = !DILocation(line: 177, column: 17, scope: !1693)
!1711 = !{!1641, !813, i64 40}
!1712 = !DILocation(line: 178, column: 6, scope: !1693)
!1713 = !DILocation(line: 178, column: 18, scope: !1693)
!1714 = !{!1641, !813, i64 48}
!1715 = !DILocation(line: 179, column: 1, scope: !1693)
!1716 = !DISubprogram(name: "abort", scope: !995, file: !995, line: 598, type: !448, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !859)
!1717 = distinct !DISubprogram(name: "quotearg_buffer", scope: !511, file: !511, line: 774, type: !1718, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1720)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!112, !109, !112, !115, !112, !1633}
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1721 = !DILocalVariable(name: "buffer", arg: 1, scope: !1717, file: !511, line: 774, type: !109)
!1722 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1717, file: !511, line: 774, type: !112)
!1723 = !DILocalVariable(name: "arg", arg: 3, scope: !1717, file: !511, line: 775, type: !115)
!1724 = !DILocalVariable(name: "argsize", arg: 4, scope: !1717, file: !511, line: 775, type: !112)
!1725 = !DILocalVariable(name: "o", arg: 5, scope: !1717, file: !511, line: 776, type: !1633)
!1726 = !DILocalVariable(name: "p", scope: !1717, file: !511, line: 778, type: !1633)
!1727 = !DILocalVariable(name: "saved_errno", scope: !1717, file: !511, line: 779, type: !68)
!1728 = !DILocalVariable(name: "r", scope: !1717, file: !511, line: 780, type: !112)
!1729 = !DILocation(line: 0, scope: !1717)
!1730 = !DILocation(line: 778, column: 37, scope: !1717)
!1731 = !DILocation(line: 779, column: 21, scope: !1717)
!1732 = !DILocation(line: 781, column: 43, scope: !1717)
!1733 = !DILocation(line: 781, column: 53, scope: !1717)
!1734 = !DILocation(line: 781, column: 63, scope: !1717)
!1735 = !DILocation(line: 782, column: 43, scope: !1717)
!1736 = !DILocation(line: 782, column: 58, scope: !1717)
!1737 = !DILocation(line: 780, column: 14, scope: !1717)
!1738 = !DILocation(line: 783, column: 9, scope: !1717)
!1739 = !DILocation(line: 784, column: 3, scope: !1717)
!1740 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !511, file: !511, line: 251, type: !1741, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1745)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!112, !109, !112, !115, !112, !94, !68, !1743, !115, !115}
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1745 = !{!1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1770, !1772, !1775, !1776, !1777, !1778, !1781, !1782, !1785, !1789, !1790, !1798, !1801, !1802, !1804, !1805, !1806, !1807}
!1746 = !DILocalVariable(name: "buffer", arg: 1, scope: !1740, file: !511, line: 251, type: !109)
!1747 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1740, file: !511, line: 251, type: !112)
!1748 = !DILocalVariable(name: "arg", arg: 3, scope: !1740, file: !511, line: 252, type: !115)
!1749 = !DILocalVariable(name: "argsize", arg: 4, scope: !1740, file: !511, line: 252, type: !112)
!1750 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1740, file: !511, line: 253, type: !94)
!1751 = !DILocalVariable(name: "flags", arg: 6, scope: !1740, file: !511, line: 253, type: !68)
!1752 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1740, file: !511, line: 254, type: !1743)
!1753 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1740, file: !511, line: 255, type: !115)
!1754 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1740, file: !511, line: 256, type: !115)
!1755 = !DILocalVariable(name: "unibyte_locale", scope: !1740, file: !511, line: 258, type: !156)
!1756 = !DILocalVariable(name: "len", scope: !1740, file: !511, line: 260, type: !112)
!1757 = !DILocalVariable(name: "orig_buffersize", scope: !1740, file: !511, line: 261, type: !112)
!1758 = !DILocalVariable(name: "quote_string", scope: !1740, file: !511, line: 262, type: !115)
!1759 = !DILocalVariable(name: "quote_string_len", scope: !1740, file: !511, line: 263, type: !112)
!1760 = !DILocalVariable(name: "backslash_escapes", scope: !1740, file: !511, line: 264, type: !156)
!1761 = !DILocalVariable(name: "elide_outer_quotes", scope: !1740, file: !511, line: 265, type: !156)
!1762 = !DILocalVariable(name: "encountered_single_quote", scope: !1740, file: !511, line: 266, type: !156)
!1763 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1740, file: !511, line: 267, type: !156)
!1764 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1740, file: !511, line: 309, type: !156)
!1765 = !DILocalVariable(name: "lq", scope: !1766, file: !511, line: 361, type: !115)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !511, line: 361, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !511, line: 360, column: 13)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !511, line: 333, column: 7)
!1769 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 312, column: 5)
!1770 = !DILocalVariable(name: "i", scope: !1771, file: !511, line: 395, type: !112)
!1771 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 395, column: 3)
!1772 = !DILocalVariable(name: "is_right_quote", scope: !1773, file: !511, line: 397, type: !156)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !511, line: 396, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !511, line: 395, column: 3)
!1775 = !DILocalVariable(name: "escaping", scope: !1773, file: !511, line: 398, type: !156)
!1776 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1773, file: !511, line: 399, type: !156)
!1777 = !DILocalVariable(name: "c", scope: !1773, file: !511, line: 417, type: !117)
!1778 = !DILocalVariable(name: "m", scope: !1779, file: !511, line: 598, type: !112)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 596, column: 11)
!1780 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 419, column: 9)
!1781 = !DILocalVariable(name: "printable", scope: !1779, file: !511, line: 600, type: !156)
!1782 = !DILocalVariable(name: "mbs", scope: !1783, file: !511, line: 609, type: !581)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !511, line: 608, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !511, line: 602, column: 17)
!1785 = !DILocalVariable(name: "w", scope: !1786, file: !511, line: 618, type: !491)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !511, line: 617, column: 19)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !511, line: 616, column: 17)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !511, line: 616, column: 17)
!1789 = !DILocalVariable(name: "bytes", scope: !1786, file: !511, line: 619, type: !112)
!1790 = !DILocalVariable(name: "j", scope: !1791, file: !511, line: 648, type: !112)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !511, line: 648, column: 29)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !511, line: 647, column: 27)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !511, line: 645, column: 29)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !511, line: 636, column: 23)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !511, line: 628, column: 30)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !511, line: 623, column: 30)
!1797 = distinct !DILexicalBlock(scope: !1786, file: !511, line: 621, column: 25)
!1798 = !DILocalVariable(name: "ilim", scope: !1799, file: !511, line: 674, type: !112)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !511, line: 671, column: 15)
!1800 = distinct !DILexicalBlock(scope: !1779, file: !511, line: 670, column: 17)
!1801 = !DILabel(scope: !1740, name: "process_input", file: !511, line: 308)
!1802 = !DILabel(scope: !1803, name: "c_and_shell_escape", file: !511, line: 502)
!1803 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 478, column: 9)
!1804 = !DILabel(scope: !1803, name: "c_escape", file: !511, line: 507)
!1805 = !DILabel(scope: !1773, name: "store_escape", file: !511, line: 709)
!1806 = !DILabel(scope: !1773, name: "store_c", file: !511, line: 712)
!1807 = !DILabel(scope: !1740, name: "force_outer_quoting_style", file: !511, line: 753)
!1808 = !DILocation(line: 0, scope: !1740)
!1809 = !DILocation(line: 258, column: 25, scope: !1740)
!1810 = !DILocation(line: 258, column: 36, scope: !1740)
!1811 = !DILocation(line: 267, column: 3, scope: !1740)
!1812 = !DILocation(line: 261, column: 10, scope: !1740)
!1813 = !DILocation(line: 262, column: 15, scope: !1740)
!1814 = !DILocation(line: 263, column: 10, scope: !1740)
!1815 = !DILocation(line: 308, column: 2, scope: !1740)
!1816 = !DILocation(line: 311, column: 3, scope: !1740)
!1817 = !DILocation(line: 318, column: 11, scope: !1769)
!1818 = !DILocation(line: 319, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !511, line: 319, column: 9)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !511, line: 319, column: 9)
!1821 = distinct !DILexicalBlock(scope: !1769, file: !511, line: 318, column: 11)
!1822 = !DILocation(line: 319, column: 9, scope: !1820)
!1823 = !DILocation(line: 0, scope: !572, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 357, column: 26, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !511, line: 335, column: 11)
!1826 = distinct !DILexicalBlock(scope: !1768, file: !511, line: 334, column: 13)
!1827 = !DILocation(line: 199, column: 29, scope: !572, inlinedAt: !1824)
!1828 = !DILocation(line: 201, column: 19, scope: !1829, inlinedAt: !1824)
!1829 = distinct !DILexicalBlock(scope: !572, file: !511, line: 201, column: 7)
!1830 = !DILocation(line: 201, column: 7, scope: !572, inlinedAt: !1824)
!1831 = !DILocation(line: 229, column: 3, scope: !572, inlinedAt: !1824)
!1832 = !DILocation(line: 230, column: 3, scope: !572, inlinedAt: !1824)
!1833 = !DILocation(line: 230, column: 13, scope: !572, inlinedAt: !1824)
!1834 = !DILocalVariable(name: "ps", arg: 1, scope: !1835, file: !1587, line: 1135, type: !1838)
!1835 = distinct !DISubprogram(name: "mbszero", scope: !1587, file: !1587, line: 1135, type: !1836, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1839)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{null, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!1839 = !{!1834}
!1840 = !DILocation(line: 0, scope: !1835, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 230, column: 18, scope: !572, inlinedAt: !1824)
!1842 = !DILocalVariable(name: "__dest", arg: 1, scope: !1843, file: !1596, line: 57, type: !110)
!1843 = distinct !DISubprogram(name: "memset", scope: !1596, file: !1596, line: 57, type: !1597, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1844)
!1844 = !{!1842, !1845, !1846}
!1845 = !DILocalVariable(name: "__ch", arg: 2, scope: !1843, file: !1596, line: 57, type: !68)
!1846 = !DILocalVariable(name: "__len", arg: 3, scope: !1843, file: !1596, line: 57, type: !112)
!1847 = !DILocation(line: 0, scope: !1843, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !1841)
!1849 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !1848)
!1850 = !DILocation(line: 231, column: 7, scope: !1851, inlinedAt: !1824)
!1851 = distinct !DILexicalBlock(scope: !572, file: !511, line: 231, column: 7)
!1852 = !DILocation(line: 231, column: 40, scope: !1851, inlinedAt: !1824)
!1853 = !DILocation(line: 231, column: 45, scope: !1851, inlinedAt: !1824)
!1854 = !DILocation(line: 235, column: 1, scope: !572, inlinedAt: !1824)
!1855 = !DILocation(line: 0, scope: !572, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 358, column: 27, scope: !1825)
!1857 = !DILocation(line: 199, column: 29, scope: !572, inlinedAt: !1856)
!1858 = !DILocation(line: 201, column: 19, scope: !1829, inlinedAt: !1856)
!1859 = !DILocation(line: 201, column: 7, scope: !572, inlinedAt: !1856)
!1860 = !DILocation(line: 229, column: 3, scope: !572, inlinedAt: !1856)
!1861 = !DILocation(line: 230, column: 3, scope: !572, inlinedAt: !1856)
!1862 = !DILocation(line: 230, column: 13, scope: !572, inlinedAt: !1856)
!1863 = !DILocation(line: 0, scope: !1835, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 230, column: 18, scope: !572, inlinedAt: !1856)
!1865 = !DILocation(line: 0, scope: !1843, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !1864)
!1867 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !1866)
!1868 = !DILocation(line: 231, column: 7, scope: !1851, inlinedAt: !1856)
!1869 = !DILocation(line: 231, column: 40, scope: !1851, inlinedAt: !1856)
!1870 = !DILocation(line: 231, column: 45, scope: !1851, inlinedAt: !1856)
!1871 = !DILocation(line: 235, column: 1, scope: !572, inlinedAt: !1856)
!1872 = !DILocation(line: 360, column: 13, scope: !1768)
!1873 = !DILocation(line: 0, scope: !1766)
!1874 = !DILocation(line: 361, column: 45, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1766, file: !511, line: 361, column: 11)
!1876 = !DILocation(line: 361, column: 11, scope: !1766)
!1877 = !DILocation(line: 362, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !511, line: 362, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !511, line: 362, column: 13)
!1880 = !DILocation(line: 362, column: 13, scope: !1879)
!1881 = !DILocation(line: 361, column: 52, scope: !1875)
!1882 = distinct !{!1882, !1876, !1883, !921}
!1883 = !DILocation(line: 362, column: 13, scope: !1766)
!1884 = !DILocation(line: 260, column: 10, scope: !1740)
!1885 = !DILocation(line: 365, column: 28, scope: !1768)
!1886 = !DILocation(line: 367, column: 7, scope: !1769)
!1887 = !DILocation(line: 370, column: 7, scope: !1769)
!1888 = !DILocation(line: 376, column: 11, scope: !1769)
!1889 = !DILocation(line: 381, column: 11, scope: !1769)
!1890 = !DILocation(line: 382, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !511, line: 382, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !511, line: 382, column: 9)
!1893 = distinct !DILexicalBlock(scope: !1769, file: !511, line: 381, column: 11)
!1894 = !DILocation(line: 382, column: 9, scope: !1892)
!1895 = !DILocation(line: 389, column: 7, scope: !1769)
!1896 = !DILocation(line: 392, column: 7, scope: !1769)
!1897 = !DILocation(line: 0, scope: !1771)
!1898 = !DILocation(line: 395, column: 8, scope: !1771)
!1899 = !DILocation(line: 395, scope: !1771)
!1900 = !DILocation(line: 395, column: 34, scope: !1774)
!1901 = !DILocation(line: 395, column: 26, scope: !1774)
!1902 = !DILocation(line: 395, column: 48, scope: !1774)
!1903 = !DILocation(line: 395, column: 55, scope: !1774)
!1904 = !DILocation(line: 395, column: 3, scope: !1771)
!1905 = !DILocation(line: 395, column: 67, scope: !1774)
!1906 = !DILocation(line: 0, scope: !1773)
!1907 = !DILocation(line: 402, column: 11, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 401, column: 11)
!1909 = !DILocation(line: 404, column: 17, scope: !1908)
!1910 = !DILocation(line: 405, column: 39, scope: !1908)
!1911 = !DILocation(line: 409, column: 32, scope: !1908)
!1912 = !DILocation(line: 405, column: 19, scope: !1908)
!1913 = !DILocation(line: 405, column: 15, scope: !1908)
!1914 = !DILocation(line: 410, column: 11, scope: !1908)
!1915 = !DILocation(line: 410, column: 25, scope: !1908)
!1916 = !DILocalVariable(name: "__s1", arg: 1, scope: !1917, file: !887, line: 974, type: !1019)
!1917 = distinct !DISubprogram(name: "memeq", scope: !887, file: !887, line: 974, type: !1557, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !1918)
!1918 = !{!1916, !1919, !1920}
!1919 = !DILocalVariable(name: "__s2", arg: 2, scope: !1917, file: !887, line: 974, type: !1019)
!1920 = !DILocalVariable(name: "__n", arg: 3, scope: !1917, file: !887, line: 974, type: !112)
!1921 = !DILocation(line: 0, scope: !1917, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 410, column: 14, scope: !1908)
!1923 = !DILocation(line: 976, column: 11, scope: !1917, inlinedAt: !1922)
!1924 = !DILocation(line: 976, column: 10, scope: !1917, inlinedAt: !1922)
!1925 = !DILocation(line: 401, column: 11, scope: !1773)
!1926 = !DILocation(line: 417, column: 25, scope: !1773)
!1927 = !DILocation(line: 418, column: 7, scope: !1773)
!1928 = !DILocation(line: 421, column: 15, scope: !1780)
!1929 = !DILocation(line: 423, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !511, line: 423, column: 15)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !511, line: 422, column: 13)
!1932 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 421, column: 15)
!1933 = !DILocation(line: 423, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !511, line: 423, column: 15)
!1935 = !DILocation(line: 423, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !511, line: 423, column: 15)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !511, line: 423, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !511, line: 423, column: 15)
!1939 = !DILocation(line: 423, column: 15, scope: !1937)
!1940 = !DILocation(line: 423, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !511, line: 423, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1938, file: !511, line: 423, column: 15)
!1943 = !DILocation(line: 423, column: 15, scope: !1942)
!1944 = !DILocation(line: 423, column: 15, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !511, line: 423, column: 15)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !511, line: 423, column: 15)
!1947 = !DILocation(line: 423, column: 15, scope: !1946)
!1948 = !DILocation(line: 423, column: 15, scope: !1938)
!1949 = !DILocation(line: 423, column: 15, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !511, line: 423, column: 15)
!1951 = distinct !DILexicalBlock(scope: !1930, file: !511, line: 423, column: 15)
!1952 = !DILocation(line: 423, column: 15, scope: !1951)
!1953 = !DILocation(line: 431, column: 19, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1931, file: !511, line: 430, column: 19)
!1955 = !DILocation(line: 431, column: 24, scope: !1954)
!1956 = !DILocation(line: 431, column: 28, scope: !1954)
!1957 = !DILocation(line: 431, column: 38, scope: !1954)
!1958 = !DILocation(line: 431, column: 48, scope: !1954)
!1959 = !DILocation(line: 431, column: 59, scope: !1954)
!1960 = !DILocation(line: 433, column: 19, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !511, line: 433, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !511, line: 433, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1954, file: !511, line: 432, column: 17)
!1964 = !DILocation(line: 433, column: 19, scope: !1962)
!1965 = !DILocation(line: 434, column: 19, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !511, line: 434, column: 19)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !511, line: 434, column: 19)
!1968 = !DILocation(line: 434, column: 19, scope: !1967)
!1969 = !DILocation(line: 435, column: 17, scope: !1963)
!1970 = !DILocation(line: 442, column: 20, scope: !1932)
!1971 = !DILocation(line: 447, column: 11, scope: !1780)
!1972 = !DILocation(line: 450, column: 19, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 448, column: 13)
!1974 = !DILocation(line: 456, column: 19, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1973, file: !511, line: 455, column: 19)
!1976 = !DILocation(line: 456, column: 24, scope: !1975)
!1977 = !DILocation(line: 456, column: 28, scope: !1975)
!1978 = !DILocation(line: 456, column: 38, scope: !1975)
!1979 = !DILocation(line: 456, column: 47, scope: !1975)
!1980 = !DILocation(line: 456, column: 41, scope: !1975)
!1981 = !DILocation(line: 456, column: 52, scope: !1975)
!1982 = !DILocation(line: 455, column: 19, scope: !1973)
!1983 = !DILocation(line: 457, column: 25, scope: !1975)
!1984 = !DILocation(line: 457, column: 17, scope: !1975)
!1985 = !DILocation(line: 464, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1975, file: !511, line: 458, column: 19)
!1987 = !DILocation(line: 468, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !511, line: 468, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !511, line: 468, column: 21)
!1990 = !DILocation(line: 468, column: 21, scope: !1989)
!1991 = !DILocation(line: 469, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !511, line: 469, column: 21)
!1993 = distinct !DILexicalBlock(scope: !1986, file: !511, line: 469, column: 21)
!1994 = !DILocation(line: 469, column: 21, scope: !1993)
!1995 = !DILocation(line: 470, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !511, line: 470, column: 21)
!1997 = distinct !DILexicalBlock(scope: !1986, file: !511, line: 470, column: 21)
!1998 = !DILocation(line: 470, column: 21, scope: !1997)
!1999 = !DILocation(line: 471, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !511, line: 471, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1986, file: !511, line: 471, column: 21)
!2002 = !DILocation(line: 471, column: 21, scope: !2001)
!2003 = !DILocation(line: 472, column: 21, scope: !1986)
!2004 = !DILocation(line: 482, column: 33, scope: !1803)
!2005 = !DILocation(line: 483, column: 33, scope: !1803)
!2006 = !DILocation(line: 485, column: 33, scope: !1803)
!2007 = !DILocation(line: 486, column: 33, scope: !1803)
!2008 = !DILocation(line: 487, column: 33, scope: !1803)
!2009 = !DILocation(line: 490, column: 17, scope: !1803)
!2010 = !DILocation(line: 492, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !511, line: 491, column: 15)
!2012 = distinct !DILexicalBlock(scope: !1803, file: !511, line: 490, column: 17)
!2013 = !DILocation(line: 499, column: 35, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1803, file: !511, line: 499, column: 17)
!2015 = !DILocation(line: 0, scope: !1803)
!2016 = !DILocation(line: 502, column: 11, scope: !1803)
!2017 = !DILocation(line: 504, column: 17, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1803, file: !511, line: 503, column: 17)
!2019 = !DILocation(line: 507, column: 11, scope: !1803)
!2020 = !DILocation(line: 508, column: 17, scope: !1803)
!2021 = !DILocation(line: 517, column: 15, scope: !1780)
!2022 = !DILocation(line: 517, column: 40, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 517, column: 15)
!2024 = !DILocation(line: 517, column: 47, scope: !2023)
!2025 = !DILocation(line: 517, column: 18, scope: !2023)
!2026 = !DILocation(line: 521, column: 17, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 521, column: 15)
!2028 = !DILocation(line: 521, column: 15, scope: !1780)
!2029 = !DILocation(line: 525, column: 11, scope: !1780)
!2030 = !DILocation(line: 537, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 536, column: 15)
!2032 = !DILocation(line: 536, column: 15, scope: !1780)
!2033 = !DILocation(line: 544, column: 15, scope: !1780)
!2034 = !DILocation(line: 546, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !511, line: 545, column: 13)
!2036 = distinct !DILexicalBlock(scope: !1780, file: !511, line: 544, column: 15)
!2037 = !DILocation(line: 549, column: 19, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2035, file: !511, line: 549, column: 19)
!2039 = !DILocation(line: 549, column: 30, scope: !2038)
!2040 = !DILocation(line: 558, column: 15, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !511, line: 558, column: 15)
!2042 = distinct !DILexicalBlock(scope: !2035, file: !511, line: 558, column: 15)
!2043 = !DILocation(line: 558, column: 15, scope: !2042)
!2044 = !DILocation(line: 559, column: 15, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !511, line: 559, column: 15)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !511, line: 559, column: 15)
!2047 = !DILocation(line: 559, column: 15, scope: !2046)
!2048 = !DILocation(line: 560, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !511, line: 560, column: 15)
!2050 = distinct !DILexicalBlock(scope: !2035, file: !511, line: 560, column: 15)
!2051 = !DILocation(line: 560, column: 15, scope: !2050)
!2052 = !DILocation(line: 562, column: 13, scope: !2035)
!2053 = !DILocation(line: 602, column: 17, scope: !1779)
!2054 = !DILocation(line: 0, scope: !1779)
!2055 = !DILocation(line: 605, column: 29, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1784, file: !511, line: 603, column: 15)
!2057 = !DILocation(line: 605, column: 41, scope: !2056)
!2058 = !DILocation(line: 606, column: 15, scope: !2056)
!2059 = !DILocation(line: 609, column: 17, scope: !1783)
!2060 = !DILocation(line: 609, column: 27, scope: !1783)
!2061 = !DILocation(line: 0, scope: !1835, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 609, column: 32, scope: !1783)
!2063 = !DILocation(line: 0, scope: !1843, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 1137, column: 3, scope: !1835, inlinedAt: !2062)
!2065 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !2064)
!2066 = !DILocation(line: 613, column: 29, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1783, file: !511, line: 613, column: 21)
!2068 = !DILocation(line: 613, column: 21, scope: !1783)
!2069 = !DILocation(line: 614, column: 29, scope: !2067)
!2070 = !DILocation(line: 614, column: 19, scope: !2067)
!2071 = !DILocation(line: 618, column: 21, scope: !1786)
!2072 = !DILocation(line: 620, column: 54, scope: !1786)
!2073 = !DILocation(line: 0, scope: !1786)
!2074 = !DILocation(line: 619, column: 36, scope: !1786)
!2075 = !DILocation(line: 621, column: 25, scope: !1786)
!2076 = !DILocation(line: 631, column: 38, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1795, file: !511, line: 629, column: 23)
!2078 = !DILocation(line: 631, column: 48, scope: !2077)
!2079 = !DILocation(line: 626, column: 25, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1796, file: !511, line: 624, column: 23)
!2081 = !DILocation(line: 631, column: 51, scope: !2077)
!2082 = !DILocation(line: 631, column: 25, scope: !2077)
!2083 = !DILocation(line: 632, column: 28, scope: !2077)
!2084 = !DILocation(line: 631, column: 34, scope: !2077)
!2085 = distinct !{!2085, !2082, !2083, !921}
!2086 = !DILocation(line: 646, column: 29, scope: !1793)
!2087 = !DILocation(line: 0, scope: !1791)
!2088 = !DILocation(line: 649, column: 49, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1791, file: !511, line: 648, column: 29)
!2090 = !DILocation(line: 649, column: 39, scope: !2089)
!2091 = !DILocation(line: 649, column: 31, scope: !2089)
!2092 = !DILocation(line: 648, column: 60, scope: !2089)
!2093 = !DILocation(line: 648, column: 50, scope: !2089)
!2094 = !DILocation(line: 648, column: 29, scope: !1791)
!2095 = distinct !{!2095, !2094, !2096, !921}
!2096 = !DILocation(line: 654, column: 33, scope: !1791)
!2097 = !DILocation(line: 657, column: 43, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1794, file: !511, line: 657, column: 29)
!2099 = !DILocalVariable(name: "wc", arg: 1, scope: !2100, file: !2101, line: 865, type: !2104)
!2100 = distinct !DISubprogram(name: "c32isprint", scope: !2101, file: !2101, line: 865, type: !2102, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2106)
!2101 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!68, !2104}
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2105, line: 20, baseType: !73)
!2105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2106 = !{!2099}
!2107 = !DILocation(line: 0, scope: !2100, inlinedAt: !2108)
!2108 = distinct !DILocation(line: 657, column: 31, scope: !2098)
!2109 = !DILocation(line: 871, column: 10, scope: !2100, inlinedAt: !2108)
!2110 = !DILocation(line: 657, column: 31, scope: !2098)
!2111 = !DILocation(line: 664, column: 23, scope: !1786)
!2112 = !DILocation(line: 665, column: 19, scope: !1787)
!2113 = !DILocation(line: 666, column: 15, scope: !1784)
!2114 = !DILocation(line: 753, column: 2, scope: !1740)
!2115 = !DILocation(line: 756, column: 51, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 756, column: 7)
!2117 = !DILocation(line: 0, scope: !1784)
!2118 = !DILocation(line: 670, column: 19, scope: !1800)
!2119 = !DILocation(line: 670, column: 23, scope: !1800)
!2120 = !DILocation(line: 674, column: 33, scope: !1799)
!2121 = !DILocation(line: 0, scope: !1799)
!2122 = !DILocation(line: 676, column: 17, scope: !1799)
!2123 = !DILocation(line: 398, column: 12, scope: !1773)
!2124 = !DILocation(line: 678, column: 43, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !511, line: 678, column: 25)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !511, line: 677, column: 19)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !511, line: 676, column: 17)
!2128 = distinct !DILexicalBlock(scope: !1799, file: !511, line: 676, column: 17)
!2129 = !DILocation(line: 680, column: 25, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !511, line: 680, column: 25)
!2131 = distinct !DILexicalBlock(scope: !2125, file: !511, line: 679, column: 23)
!2132 = !DILocation(line: 680, column: 25, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !511, line: 680, column: 25)
!2134 = !DILocation(line: 680, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !511, line: 680, column: 25)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !511, line: 680, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !511, line: 680, column: 25)
!2138 = !DILocation(line: 680, column: 25, scope: !2136)
!2139 = !DILocation(line: 680, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !511, line: 680, column: 25)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !511, line: 680, column: 25)
!2142 = !DILocation(line: 680, column: 25, scope: !2141)
!2143 = !DILocation(line: 680, column: 25, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !511, line: 680, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2137, file: !511, line: 680, column: 25)
!2146 = !DILocation(line: 680, column: 25, scope: !2145)
!2147 = !DILocation(line: 680, column: 25, scope: !2137)
!2148 = !DILocation(line: 680, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !511, line: 680, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2130, file: !511, line: 680, column: 25)
!2151 = !DILocation(line: 680, column: 25, scope: !2150)
!2152 = !DILocation(line: 681, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !511, line: 681, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2131, file: !511, line: 681, column: 25)
!2155 = !DILocation(line: 681, column: 25, scope: !2154)
!2156 = !DILocation(line: 682, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !511, line: 682, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2131, file: !511, line: 682, column: 25)
!2159 = !DILocation(line: 682, column: 25, scope: !2158)
!2160 = !DILocation(line: 683, column: 38, scope: !2131)
!2161 = !DILocation(line: 683, column: 33, scope: !2131)
!2162 = !DILocation(line: 684, column: 23, scope: !2131)
!2163 = !DILocation(line: 685, column: 30, scope: !2125)
!2164 = !DILocation(line: 687, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !511, line: 687, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !511, line: 687, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !511, line: 686, column: 23)
!2168 = distinct !DILexicalBlock(scope: !2125, file: !511, line: 685, column: 30)
!2169 = !DILocation(line: 687, column: 25, scope: !2166)
!2170 = !DILocation(line: 689, column: 23, scope: !2167)
!2171 = !DILocation(line: 690, column: 35, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2126, file: !511, line: 690, column: 25)
!2173 = !DILocation(line: 690, column: 30, scope: !2172)
!2174 = !DILocation(line: 690, column: 25, scope: !2126)
!2175 = !DILocation(line: 692, column: 21, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !511, line: 692, column: 21)
!2177 = distinct !DILexicalBlock(scope: !2126, file: !511, line: 692, column: 21)
!2178 = !DILocation(line: 692, column: 21, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !511, line: 692, column: 21)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !511, line: 692, column: 21)
!2181 = distinct !DILexicalBlock(scope: !2176, file: !511, line: 692, column: 21)
!2182 = !DILocation(line: 692, column: 21, scope: !2180)
!2183 = !DILocation(line: 692, column: 21, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !511, line: 692, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2181, file: !511, line: 692, column: 21)
!2186 = !DILocation(line: 692, column: 21, scope: !2185)
!2187 = !DILocation(line: 692, column: 21, scope: !2181)
!2188 = !DILocation(line: 0, scope: !2126)
!2189 = !DILocation(line: 693, column: 21, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !511, line: 693, column: 21)
!2191 = distinct !DILexicalBlock(scope: !2126, file: !511, line: 693, column: 21)
!2192 = !DILocation(line: 693, column: 21, scope: !2191)
!2193 = !DILocation(line: 694, column: 25, scope: !2126)
!2194 = !DILocation(line: 676, column: 17, scope: !2127)
!2195 = distinct !{!2195, !2196, !2197}
!2196 = !DILocation(line: 676, column: 17, scope: !2128)
!2197 = !DILocation(line: 695, column: 19, scope: !2128)
!2198 = !DILocation(line: 409, column: 30, scope: !1908)
!2199 = !DILocation(line: 702, column: 34, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 702, column: 11)
!2201 = !DILocation(line: 704, column: 14, scope: !2200)
!2202 = !DILocation(line: 705, column: 14, scope: !2200)
!2203 = !DILocation(line: 705, column: 35, scope: !2200)
!2204 = !DILocation(line: 705, column: 17, scope: !2200)
!2205 = !DILocation(line: 705, column: 47, scope: !2200)
!2206 = !DILocation(line: 705, column: 65, scope: !2200)
!2207 = !DILocation(line: 706, column: 11, scope: !2200)
!2208 = !DILocation(line: 702, column: 11, scope: !1773)
!2209 = !DILocation(line: 395, column: 15, scope: !1771)
!2210 = !DILocation(line: 709, column: 5, scope: !1773)
!2211 = !DILocation(line: 710, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 710, column: 7)
!2213 = !DILocation(line: 710, column: 7, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !511, line: 710, column: 7)
!2215 = !DILocation(line: 710, column: 7, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !511, line: 710, column: 7)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !511, line: 710, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !511, line: 710, column: 7)
!2219 = !DILocation(line: 710, column: 7, scope: !2217)
!2220 = !DILocation(line: 710, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !511, line: 710, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !511, line: 710, column: 7)
!2223 = !DILocation(line: 710, column: 7, scope: !2222)
!2224 = !DILocation(line: 710, column: 7, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !511, line: 710, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2218, file: !511, line: 710, column: 7)
!2227 = !DILocation(line: 710, column: 7, scope: !2226)
!2228 = !DILocation(line: 710, column: 7, scope: !2218)
!2229 = !DILocation(line: 710, column: 7, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !511, line: 710, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2212, file: !511, line: 710, column: 7)
!2232 = !DILocation(line: 710, column: 7, scope: !2231)
!2233 = !DILocation(line: 712, column: 5, scope: !1773)
!2234 = !DILocation(line: 713, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !511, line: 713, column: 7)
!2236 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 713, column: 7)
!2237 = !DILocation(line: 417, column: 21, scope: !1773)
!2238 = !DILocation(line: 713, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !511, line: 713, column: 7)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !511, line: 713, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2235, file: !511, line: 713, column: 7)
!2242 = !DILocation(line: 713, column: 7, scope: !2240)
!2243 = !DILocation(line: 713, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !511, line: 713, column: 7)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !511, line: 713, column: 7)
!2246 = !DILocation(line: 713, column: 7, scope: !2245)
!2247 = !DILocation(line: 713, column: 7, scope: !2241)
!2248 = !DILocation(line: 714, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !511, line: 714, column: 7)
!2250 = distinct !DILexicalBlock(scope: !1773, file: !511, line: 714, column: 7)
!2251 = !DILocation(line: 714, column: 7, scope: !2250)
!2252 = !DILocation(line: 716, column: 11, scope: !1773)
!2253 = !DILocation(line: 718, column: 5, scope: !1774)
!2254 = !DILocation(line: 395, column: 82, scope: !1774)
!2255 = !DILocation(line: 395, column: 3, scope: !1774)
!2256 = distinct !{!2256, !1904, !2257, !921}
!2257 = !DILocation(line: 718, column: 5, scope: !1771)
!2258 = !DILocation(line: 720, column: 11, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 720, column: 7)
!2260 = !DILocation(line: 720, column: 16, scope: !2259)
!2261 = !DILocation(line: 728, column: 51, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 728, column: 7)
!2263 = !DILocation(line: 731, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2262, file: !511, line: 730, column: 5)
!2265 = !DILocation(line: 732, column: 16, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2264, file: !511, line: 731, column: 11)
!2267 = !DILocation(line: 732, column: 9, scope: !2266)
!2268 = !DILocation(line: 736, column: 18, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !511, line: 736, column: 16)
!2270 = !DILocation(line: 736, column: 29, scope: !2269)
!2271 = !DILocation(line: 745, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 745, column: 7)
!2273 = !DILocation(line: 745, column: 20, scope: !2272)
!2274 = !DILocation(line: 746, column: 12, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !511, line: 746, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2272, file: !511, line: 746, column: 5)
!2277 = !DILocation(line: 746, column: 5, scope: !2276)
!2278 = !DILocation(line: 747, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !511, line: 747, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !511, line: 747, column: 7)
!2281 = !DILocation(line: 747, column: 7, scope: !2280)
!2282 = !DILocation(line: 746, column: 39, scope: !2275)
!2283 = distinct !{!2283, !2277, !2284, !921}
!2284 = !DILocation(line: 747, column: 7, scope: !2276)
!2285 = !DILocation(line: 749, column: 11, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !1740, file: !511, line: 749, column: 7)
!2287 = !DILocation(line: 749, column: 7, scope: !1740)
!2288 = !DILocation(line: 750, column: 5, scope: !2286)
!2289 = !DILocation(line: 750, column: 17, scope: !2286)
!2290 = !DILocation(line: 756, column: 21, scope: !2116)
!2291 = !DILocation(line: 760, column: 42, scope: !1740)
!2292 = !DILocation(line: 758, column: 10, scope: !1740)
!2293 = !DILocation(line: 758, column: 3, scope: !1740)
!2294 = !DILocation(line: 762, column: 1, scope: !1740)
!2295 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !995, file: !995, line: 98, type: !2296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!112}
!2298 = !DISubprogram(name: "strlen", scope: !991, file: !991, line: 407, type: !2299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!114, !115}
!2301 = !DISubprogram(name: "iswprint", scope: !2302, file: !2302, line: 120, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2302 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2303 = distinct !DISubprogram(name: "quotearg_alloc", scope: !511, file: !511, line: 788, type: !2304, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2306)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!109, !115, !112, !1633}
!2306 = !{!2307, !2308, !2309}
!2307 = !DILocalVariable(name: "arg", arg: 1, scope: !2303, file: !511, line: 788, type: !115)
!2308 = !DILocalVariable(name: "argsize", arg: 2, scope: !2303, file: !511, line: 788, type: !112)
!2309 = !DILocalVariable(name: "o", arg: 3, scope: !2303, file: !511, line: 789, type: !1633)
!2310 = !DILocation(line: 0, scope: !2303)
!2311 = !DILocalVariable(name: "arg", arg: 1, scope: !2312, file: !511, line: 801, type: !115)
!2312 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !511, file: !511, line: 801, type: !2313, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!109, !115, !112, !747, !1633}
!2315 = !{!2311, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323}
!2316 = !DILocalVariable(name: "argsize", arg: 2, scope: !2312, file: !511, line: 801, type: !112)
!2317 = !DILocalVariable(name: "size", arg: 3, scope: !2312, file: !511, line: 801, type: !747)
!2318 = !DILocalVariable(name: "o", arg: 4, scope: !2312, file: !511, line: 802, type: !1633)
!2319 = !DILocalVariable(name: "p", scope: !2312, file: !511, line: 804, type: !1633)
!2320 = !DILocalVariable(name: "saved_errno", scope: !2312, file: !511, line: 805, type: !68)
!2321 = !DILocalVariable(name: "flags", scope: !2312, file: !511, line: 807, type: !68)
!2322 = !DILocalVariable(name: "bufsize", scope: !2312, file: !511, line: 808, type: !112)
!2323 = !DILocalVariable(name: "buf", scope: !2312, file: !511, line: 812, type: !109)
!2324 = !DILocation(line: 0, scope: !2312, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 791, column: 10, scope: !2303)
!2326 = !DILocation(line: 804, column: 37, scope: !2312, inlinedAt: !2325)
!2327 = !DILocation(line: 805, column: 21, scope: !2312, inlinedAt: !2325)
!2328 = !DILocation(line: 807, column: 18, scope: !2312, inlinedAt: !2325)
!2329 = !DILocation(line: 807, column: 24, scope: !2312, inlinedAt: !2325)
!2330 = !DILocation(line: 808, column: 72, scope: !2312, inlinedAt: !2325)
!2331 = !DILocation(line: 809, column: 56, scope: !2312, inlinedAt: !2325)
!2332 = !DILocation(line: 810, column: 49, scope: !2312, inlinedAt: !2325)
!2333 = !DILocation(line: 811, column: 49, scope: !2312, inlinedAt: !2325)
!2334 = !DILocation(line: 808, column: 20, scope: !2312, inlinedAt: !2325)
!2335 = !DILocation(line: 811, column: 62, scope: !2312, inlinedAt: !2325)
!2336 = !DILocation(line: 812, column: 15, scope: !2312, inlinedAt: !2325)
!2337 = !DILocation(line: 813, column: 60, scope: !2312, inlinedAt: !2325)
!2338 = !DILocation(line: 815, column: 32, scope: !2312, inlinedAt: !2325)
!2339 = !DILocation(line: 815, column: 47, scope: !2312, inlinedAt: !2325)
!2340 = !DILocation(line: 813, column: 3, scope: !2312, inlinedAt: !2325)
!2341 = !DILocation(line: 816, column: 9, scope: !2312, inlinedAt: !2325)
!2342 = !DILocation(line: 791, column: 3, scope: !2303)
!2343 = !DILocation(line: 0, scope: !2312)
!2344 = !DILocation(line: 804, column: 37, scope: !2312)
!2345 = !DILocation(line: 805, column: 21, scope: !2312)
!2346 = !DILocation(line: 807, column: 18, scope: !2312)
!2347 = !DILocation(line: 807, column: 27, scope: !2312)
!2348 = !DILocation(line: 807, column: 24, scope: !2312)
!2349 = !DILocation(line: 808, column: 72, scope: !2312)
!2350 = !DILocation(line: 809, column: 56, scope: !2312)
!2351 = !DILocation(line: 810, column: 49, scope: !2312)
!2352 = !DILocation(line: 811, column: 49, scope: !2312)
!2353 = !DILocation(line: 808, column: 20, scope: !2312)
!2354 = !DILocation(line: 811, column: 62, scope: !2312)
!2355 = !DILocation(line: 812, column: 15, scope: !2312)
!2356 = !DILocation(line: 813, column: 60, scope: !2312)
!2357 = !DILocation(line: 815, column: 32, scope: !2312)
!2358 = !DILocation(line: 815, column: 47, scope: !2312)
!2359 = !DILocation(line: 813, column: 3, scope: !2312)
!2360 = !DILocation(line: 816, column: 9, scope: !2312)
!2361 = !DILocation(line: 817, column: 7, scope: !2312)
!2362 = !DILocation(line: 818, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2312, file: !511, line: 817, column: 7)
!2364 = !{!1348, !1348, i64 0}
!2365 = !DILocation(line: 818, column: 5, scope: !2363)
!2366 = !DILocation(line: 819, column: 3, scope: !2312)
!2367 = distinct !DISubprogram(name: "quotearg_free", scope: !511, file: !511, line: 837, type: !448, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2368)
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "sv", scope: !2367, file: !511, line: 839, type: !595)
!2370 = !DILocalVariable(name: "i", scope: !2371, file: !511, line: 840, type: !68)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !511, line: 840, column: 3)
!2372 = !DILocation(line: 839, column: 24, scope: !2367)
!2373 = !DILocation(line: 0, scope: !2367)
!2374 = !DILocation(line: 0, scope: !2371)
!2375 = !DILocation(line: 840, column: 21, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2371, file: !511, line: 840, column: 3)
!2377 = !DILocation(line: 840, column: 3, scope: !2371)
!2378 = !DILocation(line: 842, column: 13, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2367, file: !511, line: 842, column: 7)
!2380 = !{!2381, !813, i64 8}
!2381 = !{!"slotvec", !1348, i64 0, !813, i64 8}
!2382 = !DILocation(line: 842, column: 17, scope: !2379)
!2383 = !DILocation(line: 842, column: 7, scope: !2367)
!2384 = !DILocation(line: 841, column: 17, scope: !2376)
!2385 = !DILocation(line: 841, column: 5, scope: !2376)
!2386 = !DILocation(line: 840, column: 32, scope: !2376)
!2387 = distinct !{!2387, !2377, !2388, !921}
!2388 = !DILocation(line: 841, column: 20, scope: !2371)
!2389 = !DILocation(line: 844, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2379, file: !511, line: 843, column: 5)
!2391 = !DILocation(line: 845, column: 21, scope: !2390)
!2392 = !{!2381, !1348, i64 0}
!2393 = !DILocation(line: 846, column: 20, scope: !2390)
!2394 = !DILocation(line: 847, column: 5, scope: !2390)
!2395 = !DILocation(line: 848, column: 10, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2367, file: !511, line: 848, column: 7)
!2397 = !DILocation(line: 848, column: 7, scope: !2367)
!2398 = !DILocation(line: 850, column: 7, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !511, line: 849, column: 5)
!2400 = !DILocation(line: 851, column: 15, scope: !2399)
!2401 = !DILocation(line: 852, column: 5, scope: !2399)
!2402 = !DILocation(line: 853, column: 10, scope: !2367)
!2403 = !DILocation(line: 854, column: 1, scope: !2367)
!2404 = !DISubprogram(name: "free", scope: !1587, file: !1587, line: 786, type: !2405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !110}
!2407 = distinct !DISubprogram(name: "quotearg_n", scope: !511, file: !511, line: 919, type: !988, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2408)
!2408 = !{!2409, !2410}
!2409 = !DILocalVariable(name: "n", arg: 1, scope: !2407, file: !511, line: 919, type: !68)
!2410 = !DILocalVariable(name: "arg", arg: 2, scope: !2407, file: !511, line: 919, type: !115)
!2411 = !DILocation(line: 0, scope: !2407)
!2412 = !DILocation(line: 921, column: 10, scope: !2407)
!2413 = !DILocation(line: 921, column: 3, scope: !2407)
!2414 = distinct !DISubprogram(name: "quotearg_n_options", scope: !511, file: !511, line: 866, type: !2415, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!109, !68, !115, !112, !1633}
!2417 = !{!2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2428, !2429, !2431, !2432, !2433}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !511, line: 866, type: !68)
!2419 = !DILocalVariable(name: "arg", arg: 2, scope: !2414, file: !511, line: 866, type: !115)
!2420 = !DILocalVariable(name: "argsize", arg: 3, scope: !2414, file: !511, line: 866, type: !112)
!2421 = !DILocalVariable(name: "options", arg: 4, scope: !2414, file: !511, line: 867, type: !1633)
!2422 = !DILocalVariable(name: "saved_errno", scope: !2414, file: !511, line: 869, type: !68)
!2423 = !DILocalVariable(name: "sv", scope: !2414, file: !511, line: 871, type: !595)
!2424 = !DILocalVariable(name: "nslots_max", scope: !2414, file: !511, line: 873, type: !68)
!2425 = !DILocalVariable(name: "preallocated", scope: !2426, file: !511, line: 879, type: !156)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !511, line: 878, column: 5)
!2427 = distinct !DILexicalBlock(scope: !2414, file: !511, line: 877, column: 7)
!2428 = !DILocalVariable(name: "new_nslots", scope: !2426, file: !511, line: 880, type: !760)
!2429 = !DILocalVariable(name: "size", scope: !2430, file: !511, line: 891, type: !112)
!2430 = distinct !DILexicalBlock(scope: !2414, file: !511, line: 890, column: 3)
!2431 = !DILocalVariable(name: "val", scope: !2430, file: !511, line: 892, type: !109)
!2432 = !DILocalVariable(name: "flags", scope: !2430, file: !511, line: 894, type: !68)
!2433 = !DILocalVariable(name: "qsize", scope: !2430, file: !511, line: 895, type: !112)
!2434 = !DILocation(line: 0, scope: !2414)
!2435 = !DILocation(line: 869, column: 21, scope: !2414)
!2436 = !DILocation(line: 871, column: 24, scope: !2414)
!2437 = !DILocation(line: 874, column: 17, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2414, file: !511, line: 874, column: 7)
!2439 = !DILocation(line: 875, column: 5, scope: !2438)
!2440 = !DILocation(line: 877, column: 7, scope: !2427)
!2441 = !DILocation(line: 877, column: 14, scope: !2427)
!2442 = !DILocation(line: 877, column: 7, scope: !2414)
!2443 = !DILocation(line: 879, column: 31, scope: !2426)
!2444 = !DILocation(line: 0, scope: !2426)
!2445 = !DILocation(line: 880, column: 7, scope: !2426)
!2446 = !DILocation(line: 880, column: 26, scope: !2426)
!2447 = !DILocation(line: 880, column: 13, scope: !2426)
!2448 = !DILocation(line: 882, column: 31, scope: !2426)
!2449 = !DILocation(line: 883, column: 33, scope: !2426)
!2450 = !DILocation(line: 883, column: 42, scope: !2426)
!2451 = !DILocation(line: 883, column: 31, scope: !2426)
!2452 = !DILocation(line: 882, column: 22, scope: !2426)
!2453 = !DILocation(line: 882, column: 15, scope: !2426)
!2454 = !DILocation(line: 884, column: 11, scope: !2426)
!2455 = !DILocation(line: 885, column: 15, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2426, file: !511, line: 884, column: 11)
!2457 = !{i64 0, i64 8, !2364, i64 8, i64 8, !812}
!2458 = !DILocation(line: 885, column: 9, scope: !2456)
!2459 = !DILocation(line: 886, column: 20, scope: !2426)
!2460 = !DILocation(line: 886, column: 18, scope: !2426)
!2461 = !DILocation(line: 886, column: 32, scope: !2426)
!2462 = !DILocation(line: 886, column: 43, scope: !2426)
!2463 = !DILocation(line: 886, column: 53, scope: !2426)
!2464 = !DILocation(line: 0, scope: !1843, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 886, column: 7, scope: !2426)
!2466 = !DILocation(line: 59, column: 10, scope: !1843, inlinedAt: !2465)
!2467 = !DILocation(line: 887, column: 16, scope: !2426)
!2468 = !DILocation(line: 887, column: 14, scope: !2426)
!2469 = !DILocation(line: 888, column: 5, scope: !2427)
!2470 = !DILocation(line: 888, column: 5, scope: !2426)
!2471 = !DILocation(line: 891, column: 19, scope: !2430)
!2472 = !DILocation(line: 891, column: 25, scope: !2430)
!2473 = !DILocation(line: 0, scope: !2430)
!2474 = !DILocation(line: 892, column: 23, scope: !2430)
!2475 = !DILocation(line: 894, column: 26, scope: !2430)
!2476 = !DILocation(line: 894, column: 32, scope: !2430)
!2477 = !DILocation(line: 896, column: 55, scope: !2430)
!2478 = !DILocation(line: 897, column: 55, scope: !2430)
!2479 = !DILocation(line: 898, column: 55, scope: !2430)
!2480 = !DILocation(line: 899, column: 55, scope: !2430)
!2481 = !DILocation(line: 895, column: 20, scope: !2430)
!2482 = !DILocation(line: 901, column: 14, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2430, file: !511, line: 901, column: 9)
!2484 = !DILocation(line: 901, column: 9, scope: !2430)
!2485 = !DILocation(line: 903, column: 35, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2483, file: !511, line: 902, column: 7)
!2487 = !DILocation(line: 903, column: 20, scope: !2486)
!2488 = !DILocation(line: 904, column: 17, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2486, file: !511, line: 904, column: 13)
!2490 = !DILocation(line: 904, column: 13, scope: !2486)
!2491 = !DILocation(line: 905, column: 11, scope: !2489)
!2492 = !DILocation(line: 906, column: 27, scope: !2486)
!2493 = !DILocation(line: 906, column: 19, scope: !2486)
!2494 = !DILocation(line: 907, column: 69, scope: !2486)
!2495 = !DILocation(line: 909, column: 44, scope: !2486)
!2496 = !DILocation(line: 910, column: 44, scope: !2486)
!2497 = !DILocation(line: 907, column: 9, scope: !2486)
!2498 = !DILocation(line: 911, column: 7, scope: !2486)
!2499 = !DILocation(line: 913, column: 11, scope: !2430)
!2500 = !DILocation(line: 914, column: 5, scope: !2430)
!2501 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !511, file: !511, line: 925, type: !2502, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!109, !68, !115, !112}
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "n", arg: 1, scope: !2501, file: !511, line: 925, type: !68)
!2506 = !DILocalVariable(name: "arg", arg: 2, scope: !2501, file: !511, line: 925, type: !115)
!2507 = !DILocalVariable(name: "argsize", arg: 3, scope: !2501, file: !511, line: 925, type: !112)
!2508 = !DILocation(line: 0, scope: !2501)
!2509 = !DILocation(line: 927, column: 10, scope: !2501)
!2510 = !DILocation(line: 927, column: 3, scope: !2501)
!2511 = distinct !DISubprogram(name: "quotearg", scope: !511, file: !511, line: 931, type: !997, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2512)
!2512 = !{!2513}
!2513 = !DILocalVariable(name: "arg", arg: 1, scope: !2511, file: !511, line: 931, type: !115)
!2514 = !DILocation(line: 0, scope: !2511)
!2515 = !DILocation(line: 0, scope: !2407, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 933, column: 10, scope: !2511)
!2517 = !DILocation(line: 921, column: 10, scope: !2407, inlinedAt: !2516)
!2518 = !DILocation(line: 933, column: 3, scope: !2511)
!2519 = distinct !DISubprogram(name: "quotearg_mem", scope: !511, file: !511, line: 937, type: !2520, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!109, !115, !112}
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "arg", arg: 1, scope: !2519, file: !511, line: 937, type: !115)
!2524 = !DILocalVariable(name: "argsize", arg: 2, scope: !2519, file: !511, line: 937, type: !112)
!2525 = !DILocation(line: 0, scope: !2519)
!2526 = !DILocation(line: 0, scope: !2501, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 939, column: 10, scope: !2519)
!2528 = !DILocation(line: 927, column: 10, scope: !2501, inlinedAt: !2527)
!2529 = !DILocation(line: 939, column: 3, scope: !2519)
!2530 = distinct !DISubprogram(name: "quotearg_n_style", scope: !511, file: !511, line: 943, type: !2531, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!109, !68, !94, !115}
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DILocalVariable(name: "n", arg: 1, scope: !2530, file: !511, line: 943, type: !68)
!2535 = !DILocalVariable(name: "s", arg: 2, scope: !2530, file: !511, line: 943, type: !94)
!2536 = !DILocalVariable(name: "arg", arg: 3, scope: !2530, file: !511, line: 943, type: !115)
!2537 = !DILocalVariable(name: "o", scope: !2530, file: !511, line: 945, type: !1634)
!2538 = !DILocation(line: 0, scope: !2530)
!2539 = !DILocation(line: 945, column: 3, scope: !2530)
!2540 = !DILocation(line: 945, column: 32, scope: !2530)
!2541 = !{!2542}
!2542 = distinct !{!2542, !2543, !"quoting_options_from_style: argument 0"}
!2543 = distinct !{!2543, !"quoting_options_from_style"}
!2544 = !DILocation(line: 945, column: 36, scope: !2530)
!2545 = !DILocalVariable(name: "style", arg: 1, scope: !2546, file: !511, line: 183, type: !94)
!2546 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !511, file: !511, line: 183, type: !2547, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!547, !94}
!2549 = !{!2545, !2550}
!2550 = !DILocalVariable(name: "o", scope: !2546, file: !511, line: 185, type: !547)
!2551 = !DILocation(line: 0, scope: !2546, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 945, column: 36, scope: !2530)
!2553 = !DILocation(line: 185, column: 26, scope: !2546, inlinedAt: !2552)
!2554 = !DILocation(line: 186, column: 13, scope: !2555, inlinedAt: !2552)
!2555 = distinct !DILexicalBlock(scope: !2546, file: !511, line: 186, column: 7)
!2556 = !DILocation(line: 186, column: 7, scope: !2546, inlinedAt: !2552)
!2557 = !DILocation(line: 187, column: 5, scope: !2555, inlinedAt: !2552)
!2558 = !DILocation(line: 188, column: 11, scope: !2546, inlinedAt: !2552)
!2559 = !DILocation(line: 946, column: 10, scope: !2530)
!2560 = !DILocation(line: 947, column: 1, scope: !2530)
!2561 = !DILocation(line: 946, column: 3, scope: !2530)
!2562 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !511, file: !511, line: 950, type: !2563, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!109, !68, !94, !115, !112}
!2565 = !{!2566, !2567, !2568, !2569, !2570}
!2566 = !DILocalVariable(name: "n", arg: 1, scope: !2562, file: !511, line: 950, type: !68)
!2567 = !DILocalVariable(name: "s", arg: 2, scope: !2562, file: !511, line: 950, type: !94)
!2568 = !DILocalVariable(name: "arg", arg: 3, scope: !2562, file: !511, line: 951, type: !115)
!2569 = !DILocalVariable(name: "argsize", arg: 4, scope: !2562, file: !511, line: 951, type: !112)
!2570 = !DILocalVariable(name: "o", scope: !2562, file: !511, line: 953, type: !1634)
!2571 = !DILocation(line: 0, scope: !2562)
!2572 = !DILocation(line: 953, column: 3, scope: !2562)
!2573 = !DILocation(line: 953, column: 32, scope: !2562)
!2574 = !{!2575}
!2575 = distinct !{!2575, !2576, !"quoting_options_from_style: argument 0"}
!2576 = distinct !{!2576, !"quoting_options_from_style"}
!2577 = !DILocation(line: 953, column: 36, scope: !2562)
!2578 = !DILocation(line: 0, scope: !2546, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 953, column: 36, scope: !2562)
!2580 = !DILocation(line: 185, column: 26, scope: !2546, inlinedAt: !2579)
!2581 = !DILocation(line: 186, column: 13, scope: !2555, inlinedAt: !2579)
!2582 = !DILocation(line: 186, column: 7, scope: !2546, inlinedAt: !2579)
!2583 = !DILocation(line: 187, column: 5, scope: !2555, inlinedAt: !2579)
!2584 = !DILocation(line: 188, column: 11, scope: !2546, inlinedAt: !2579)
!2585 = !DILocation(line: 954, column: 10, scope: !2562)
!2586 = !DILocation(line: 955, column: 1, scope: !2562)
!2587 = !DILocation(line: 954, column: 3, scope: !2562)
!2588 = distinct !DISubprogram(name: "quotearg_style", scope: !511, file: !511, line: 958, type: !2589, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!109, !94, !115}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "s", arg: 1, scope: !2588, file: !511, line: 958, type: !94)
!2593 = !DILocalVariable(name: "arg", arg: 2, scope: !2588, file: !511, line: 958, type: !115)
!2594 = !DILocation(line: 0, scope: !2588)
!2595 = !DILocation(line: 0, scope: !2530, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 960, column: 10, scope: !2588)
!2597 = !DILocation(line: 945, column: 3, scope: !2530, inlinedAt: !2596)
!2598 = !DILocation(line: 945, column: 32, scope: !2530, inlinedAt: !2596)
!2599 = !{!2600}
!2600 = distinct !{!2600, !2601, !"quoting_options_from_style: argument 0"}
!2601 = distinct !{!2601, !"quoting_options_from_style"}
!2602 = !DILocation(line: 945, column: 36, scope: !2530, inlinedAt: !2596)
!2603 = !DILocation(line: 0, scope: !2546, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 945, column: 36, scope: !2530, inlinedAt: !2596)
!2605 = !DILocation(line: 185, column: 26, scope: !2546, inlinedAt: !2604)
!2606 = !DILocation(line: 186, column: 13, scope: !2555, inlinedAt: !2604)
!2607 = !DILocation(line: 186, column: 7, scope: !2546, inlinedAt: !2604)
!2608 = !DILocation(line: 187, column: 5, scope: !2555, inlinedAt: !2604)
!2609 = !DILocation(line: 188, column: 11, scope: !2546, inlinedAt: !2604)
!2610 = !DILocation(line: 946, column: 10, scope: !2530, inlinedAt: !2596)
!2611 = !DILocation(line: 947, column: 1, scope: !2530, inlinedAt: !2596)
!2612 = !DILocation(line: 960, column: 3, scope: !2588)
!2613 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !511, file: !511, line: 964, type: !2614, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2616)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!109, !94, !115, !112}
!2616 = !{!2617, !2618, !2619}
!2617 = !DILocalVariable(name: "s", arg: 1, scope: !2613, file: !511, line: 964, type: !94)
!2618 = !DILocalVariable(name: "arg", arg: 2, scope: !2613, file: !511, line: 964, type: !115)
!2619 = !DILocalVariable(name: "argsize", arg: 3, scope: !2613, file: !511, line: 964, type: !112)
!2620 = !DILocation(line: 0, scope: !2613)
!2621 = !DILocation(line: 0, scope: !2562, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 966, column: 10, scope: !2613)
!2623 = !DILocation(line: 953, column: 3, scope: !2562, inlinedAt: !2622)
!2624 = !DILocation(line: 953, column: 32, scope: !2562, inlinedAt: !2622)
!2625 = !{!2626}
!2626 = distinct !{!2626, !2627, !"quoting_options_from_style: argument 0"}
!2627 = distinct !{!2627, !"quoting_options_from_style"}
!2628 = !DILocation(line: 953, column: 36, scope: !2562, inlinedAt: !2622)
!2629 = !DILocation(line: 0, scope: !2546, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 953, column: 36, scope: !2562, inlinedAt: !2622)
!2631 = !DILocation(line: 185, column: 26, scope: !2546, inlinedAt: !2630)
!2632 = !DILocation(line: 186, column: 13, scope: !2555, inlinedAt: !2630)
!2633 = !DILocation(line: 186, column: 7, scope: !2546, inlinedAt: !2630)
!2634 = !DILocation(line: 187, column: 5, scope: !2555, inlinedAt: !2630)
!2635 = !DILocation(line: 188, column: 11, scope: !2546, inlinedAt: !2630)
!2636 = !DILocation(line: 954, column: 10, scope: !2562, inlinedAt: !2622)
!2637 = !DILocation(line: 955, column: 1, scope: !2562, inlinedAt: !2622)
!2638 = !DILocation(line: 966, column: 3, scope: !2613)
!2639 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !511, file: !511, line: 970, type: !2640, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!109, !115, !112, !4}
!2642 = !{!2643, !2644, !2645, !2646}
!2643 = !DILocalVariable(name: "arg", arg: 1, scope: !2639, file: !511, line: 970, type: !115)
!2644 = !DILocalVariable(name: "argsize", arg: 2, scope: !2639, file: !511, line: 970, type: !112)
!2645 = !DILocalVariable(name: "ch", arg: 3, scope: !2639, file: !511, line: 970, type: !4)
!2646 = !DILocalVariable(name: "options", scope: !2639, file: !511, line: 972, type: !547)
!2647 = !DILocation(line: 0, scope: !2639)
!2648 = !DILocation(line: 972, column: 3, scope: !2639)
!2649 = !DILocation(line: 972, column: 26, scope: !2639)
!2650 = !DILocation(line: 973, column: 13, scope: !2639)
!2651 = !{i64 0, i64 4, !883, i64 4, i64 4, !874, i64 8, i64 32, !883, i64 40, i64 8, !812, i64 48, i64 8, !812}
!2652 = !DILocation(line: 0, scope: !1653, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 974, column: 3, scope: !2639)
!2654 = !DILocation(line: 147, column: 41, scope: !1653, inlinedAt: !2653)
!2655 = !DILocation(line: 147, column: 62, scope: !1653, inlinedAt: !2653)
!2656 = !DILocation(line: 147, column: 57, scope: !1653, inlinedAt: !2653)
!2657 = !DILocation(line: 148, column: 15, scope: !1653, inlinedAt: !2653)
!2658 = !DILocation(line: 149, column: 21, scope: !1653, inlinedAt: !2653)
!2659 = !DILocation(line: 149, column: 24, scope: !1653, inlinedAt: !2653)
!2660 = !DILocation(line: 150, column: 19, scope: !1653, inlinedAt: !2653)
!2661 = !DILocation(line: 150, column: 24, scope: !1653, inlinedAt: !2653)
!2662 = !DILocation(line: 150, column: 6, scope: !1653, inlinedAt: !2653)
!2663 = !DILocation(line: 975, column: 10, scope: !2639)
!2664 = !DILocation(line: 976, column: 1, scope: !2639)
!2665 = !DILocation(line: 975, column: 3, scope: !2639)
!2666 = distinct !DISubprogram(name: "quotearg_char", scope: !511, file: !511, line: 979, type: !2667, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!109, !115, !4}
!2669 = !{!2670, !2671}
!2670 = !DILocalVariable(name: "arg", arg: 1, scope: !2666, file: !511, line: 979, type: !115)
!2671 = !DILocalVariable(name: "ch", arg: 2, scope: !2666, file: !511, line: 979, type: !4)
!2672 = !DILocation(line: 0, scope: !2666)
!2673 = !DILocation(line: 0, scope: !2639, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 981, column: 10, scope: !2666)
!2675 = !DILocation(line: 972, column: 3, scope: !2639, inlinedAt: !2674)
!2676 = !DILocation(line: 972, column: 26, scope: !2639, inlinedAt: !2674)
!2677 = !DILocation(line: 973, column: 13, scope: !2639, inlinedAt: !2674)
!2678 = !DILocation(line: 0, scope: !1653, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 974, column: 3, scope: !2639, inlinedAt: !2674)
!2680 = !DILocation(line: 147, column: 41, scope: !1653, inlinedAt: !2679)
!2681 = !DILocation(line: 147, column: 62, scope: !1653, inlinedAt: !2679)
!2682 = !DILocation(line: 147, column: 57, scope: !1653, inlinedAt: !2679)
!2683 = !DILocation(line: 148, column: 15, scope: !1653, inlinedAt: !2679)
!2684 = !DILocation(line: 149, column: 21, scope: !1653, inlinedAt: !2679)
!2685 = !DILocation(line: 149, column: 24, scope: !1653, inlinedAt: !2679)
!2686 = !DILocation(line: 150, column: 19, scope: !1653, inlinedAt: !2679)
!2687 = !DILocation(line: 150, column: 24, scope: !1653, inlinedAt: !2679)
!2688 = !DILocation(line: 150, column: 6, scope: !1653, inlinedAt: !2679)
!2689 = !DILocation(line: 975, column: 10, scope: !2639, inlinedAt: !2674)
!2690 = !DILocation(line: 976, column: 1, scope: !2639, inlinedAt: !2674)
!2691 = !DILocation(line: 981, column: 3, scope: !2666)
!2692 = distinct !DISubprogram(name: "quotearg_colon", scope: !511, file: !511, line: 985, type: !997, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2693)
!2693 = !{!2694}
!2694 = !DILocalVariable(name: "arg", arg: 1, scope: !2692, file: !511, line: 985, type: !115)
!2695 = !DILocation(line: 0, scope: !2692)
!2696 = !DILocation(line: 0, scope: !2666, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 987, column: 10, scope: !2692)
!2698 = !DILocation(line: 0, scope: !2639, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 981, column: 10, scope: !2666, inlinedAt: !2697)
!2700 = !DILocation(line: 972, column: 3, scope: !2639, inlinedAt: !2699)
!2701 = !DILocation(line: 972, column: 26, scope: !2639, inlinedAt: !2699)
!2702 = !DILocation(line: 973, column: 13, scope: !2639, inlinedAt: !2699)
!2703 = !DILocation(line: 0, scope: !1653, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 974, column: 3, scope: !2639, inlinedAt: !2699)
!2705 = !DILocation(line: 147, column: 57, scope: !1653, inlinedAt: !2704)
!2706 = !DILocation(line: 149, column: 21, scope: !1653, inlinedAt: !2704)
!2707 = !DILocation(line: 150, column: 6, scope: !1653, inlinedAt: !2704)
!2708 = !DILocation(line: 975, column: 10, scope: !2639, inlinedAt: !2699)
!2709 = !DILocation(line: 976, column: 1, scope: !2639, inlinedAt: !2699)
!2710 = !DILocation(line: 987, column: 3, scope: !2692)
!2711 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !511, file: !511, line: 991, type: !2520, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "arg", arg: 1, scope: !2711, file: !511, line: 991, type: !115)
!2714 = !DILocalVariable(name: "argsize", arg: 2, scope: !2711, file: !511, line: 991, type: !112)
!2715 = !DILocation(line: 0, scope: !2711)
!2716 = !DILocation(line: 0, scope: !2639, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 993, column: 10, scope: !2711)
!2718 = !DILocation(line: 972, column: 3, scope: !2639, inlinedAt: !2717)
!2719 = !DILocation(line: 972, column: 26, scope: !2639, inlinedAt: !2717)
!2720 = !DILocation(line: 973, column: 13, scope: !2639, inlinedAt: !2717)
!2721 = !DILocation(line: 0, scope: !1653, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 974, column: 3, scope: !2639, inlinedAt: !2717)
!2723 = !DILocation(line: 147, column: 57, scope: !1653, inlinedAt: !2722)
!2724 = !DILocation(line: 149, column: 21, scope: !1653, inlinedAt: !2722)
!2725 = !DILocation(line: 150, column: 6, scope: !1653, inlinedAt: !2722)
!2726 = !DILocation(line: 975, column: 10, scope: !2639, inlinedAt: !2717)
!2727 = !DILocation(line: 976, column: 1, scope: !2639, inlinedAt: !2717)
!2728 = !DILocation(line: 993, column: 3, scope: !2711)
!2729 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !511, file: !511, line: 997, type: !2531, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2730)
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !511, line: 997, type: !68)
!2732 = !DILocalVariable(name: "s", arg: 2, scope: !2729, file: !511, line: 997, type: !94)
!2733 = !DILocalVariable(name: "arg", arg: 3, scope: !2729, file: !511, line: 997, type: !115)
!2734 = !DILocalVariable(name: "options", scope: !2729, file: !511, line: 999, type: !547)
!2735 = !DILocation(line: 185, column: 26, scope: !2546, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1000, column: 13, scope: !2729)
!2737 = !DILocation(line: 0, scope: !2729)
!2738 = !DILocation(line: 999, column: 3, scope: !2729)
!2739 = !DILocation(line: 999, column: 26, scope: !2729)
!2740 = !DILocation(line: 0, scope: !2546, inlinedAt: !2736)
!2741 = !DILocation(line: 186, column: 13, scope: !2555, inlinedAt: !2736)
!2742 = !DILocation(line: 186, column: 7, scope: !2546, inlinedAt: !2736)
!2743 = !DILocation(line: 187, column: 5, scope: !2555, inlinedAt: !2736)
!2744 = !{!2745}
!2745 = distinct !{!2745, !2746, !"quoting_options_from_style: argument 0"}
!2746 = distinct !{!2746, !"quoting_options_from_style"}
!2747 = !DILocation(line: 1000, column: 13, scope: !2729)
!2748 = !DILocation(line: 0, scope: !1653, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1001, column: 3, scope: !2729)
!2750 = !DILocation(line: 147, column: 57, scope: !1653, inlinedAt: !2749)
!2751 = !DILocation(line: 149, column: 21, scope: !1653, inlinedAt: !2749)
!2752 = !DILocation(line: 150, column: 6, scope: !1653, inlinedAt: !2749)
!2753 = !DILocation(line: 1002, column: 10, scope: !2729)
!2754 = !DILocation(line: 1003, column: 1, scope: !2729)
!2755 = !DILocation(line: 1002, column: 3, scope: !2729)
!2756 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !511, file: !511, line: 1006, type: !2757, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!109, !68, !115, !115, !115}
!2759 = !{!2760, !2761, !2762, !2763}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2756, file: !511, line: 1006, type: !68)
!2761 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2756, file: !511, line: 1006, type: !115)
!2762 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2756, file: !511, line: 1007, type: !115)
!2763 = !DILocalVariable(name: "arg", arg: 4, scope: !2756, file: !511, line: 1007, type: !115)
!2764 = !DILocation(line: 0, scope: !2756)
!2765 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !511, line: 1014, type: !68)
!2766 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !511, file: !511, line: 1014, type: !2767, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!109, !68, !115, !115, !115, !112}
!2769 = !{!2765, !2770, !2771, !2772, !2773, !2774}
!2770 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2766, file: !511, line: 1014, type: !115)
!2771 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2766, file: !511, line: 1015, type: !115)
!2772 = !DILocalVariable(name: "arg", arg: 4, scope: !2766, file: !511, line: 1016, type: !115)
!2773 = !DILocalVariable(name: "argsize", arg: 5, scope: !2766, file: !511, line: 1016, type: !112)
!2774 = !DILocalVariable(name: "o", scope: !2766, file: !511, line: 1018, type: !547)
!2775 = !DILocation(line: 0, scope: !2766, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1009, column: 10, scope: !2756)
!2777 = !DILocation(line: 1018, column: 3, scope: !2766, inlinedAt: !2776)
!2778 = !DILocation(line: 1018, column: 26, scope: !2766, inlinedAt: !2776)
!2779 = !DILocation(line: 1018, column: 30, scope: !2766, inlinedAt: !2776)
!2780 = !DILocation(line: 0, scope: !1693, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1019, column: 3, scope: !2766, inlinedAt: !2776)
!2782 = !DILocation(line: 174, column: 12, scope: !1693, inlinedAt: !2781)
!2783 = !DILocation(line: 175, column: 8, scope: !1706, inlinedAt: !2781)
!2784 = !DILocation(line: 175, column: 19, scope: !1706, inlinedAt: !2781)
!2785 = !DILocation(line: 176, column: 5, scope: !1706, inlinedAt: !2781)
!2786 = !DILocation(line: 177, column: 6, scope: !1693, inlinedAt: !2781)
!2787 = !DILocation(line: 177, column: 17, scope: !1693, inlinedAt: !2781)
!2788 = !DILocation(line: 178, column: 6, scope: !1693, inlinedAt: !2781)
!2789 = !DILocation(line: 178, column: 18, scope: !1693, inlinedAt: !2781)
!2790 = !DILocation(line: 1020, column: 10, scope: !2766, inlinedAt: !2776)
!2791 = !DILocation(line: 1021, column: 1, scope: !2766, inlinedAt: !2776)
!2792 = !DILocation(line: 1009, column: 3, scope: !2756)
!2793 = !DILocation(line: 0, scope: !2766)
!2794 = !DILocation(line: 1018, column: 3, scope: !2766)
!2795 = !DILocation(line: 1018, column: 26, scope: !2766)
!2796 = !DILocation(line: 1018, column: 30, scope: !2766)
!2797 = !DILocation(line: 0, scope: !1693, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 1019, column: 3, scope: !2766)
!2799 = !DILocation(line: 174, column: 12, scope: !1693, inlinedAt: !2798)
!2800 = !DILocation(line: 175, column: 8, scope: !1706, inlinedAt: !2798)
!2801 = !DILocation(line: 175, column: 19, scope: !1706, inlinedAt: !2798)
!2802 = !DILocation(line: 176, column: 5, scope: !1706, inlinedAt: !2798)
!2803 = !DILocation(line: 177, column: 6, scope: !1693, inlinedAt: !2798)
!2804 = !DILocation(line: 177, column: 17, scope: !1693, inlinedAt: !2798)
!2805 = !DILocation(line: 178, column: 6, scope: !1693, inlinedAt: !2798)
!2806 = !DILocation(line: 178, column: 18, scope: !1693, inlinedAt: !2798)
!2807 = !DILocation(line: 1020, column: 10, scope: !2766)
!2808 = !DILocation(line: 1021, column: 1, scope: !2766)
!2809 = !DILocation(line: 1020, column: 3, scope: !2766)
!2810 = distinct !DISubprogram(name: "quotearg_custom", scope: !511, file: !511, line: 1024, type: !2811, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!109, !115, !115, !115}
!2813 = !{!2814, !2815, !2816}
!2814 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2810, file: !511, line: 1024, type: !115)
!2815 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2810, file: !511, line: 1024, type: !115)
!2816 = !DILocalVariable(name: "arg", arg: 3, scope: !2810, file: !511, line: 1025, type: !115)
!2817 = !DILocation(line: 0, scope: !2810)
!2818 = !DILocation(line: 0, scope: !2756, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1027, column: 10, scope: !2810)
!2820 = !DILocation(line: 0, scope: !2766, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1009, column: 10, scope: !2756, inlinedAt: !2819)
!2822 = !DILocation(line: 1018, column: 3, scope: !2766, inlinedAt: !2821)
!2823 = !DILocation(line: 1018, column: 26, scope: !2766, inlinedAt: !2821)
!2824 = !DILocation(line: 1018, column: 30, scope: !2766, inlinedAt: !2821)
!2825 = !DILocation(line: 0, scope: !1693, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1019, column: 3, scope: !2766, inlinedAt: !2821)
!2827 = !DILocation(line: 174, column: 12, scope: !1693, inlinedAt: !2826)
!2828 = !DILocation(line: 175, column: 8, scope: !1706, inlinedAt: !2826)
!2829 = !DILocation(line: 175, column: 19, scope: !1706, inlinedAt: !2826)
!2830 = !DILocation(line: 176, column: 5, scope: !1706, inlinedAt: !2826)
!2831 = !DILocation(line: 177, column: 6, scope: !1693, inlinedAt: !2826)
!2832 = !DILocation(line: 177, column: 17, scope: !1693, inlinedAt: !2826)
!2833 = !DILocation(line: 178, column: 6, scope: !1693, inlinedAt: !2826)
!2834 = !DILocation(line: 178, column: 18, scope: !1693, inlinedAt: !2826)
!2835 = !DILocation(line: 1020, column: 10, scope: !2766, inlinedAt: !2821)
!2836 = !DILocation(line: 1021, column: 1, scope: !2766, inlinedAt: !2821)
!2837 = !DILocation(line: 1027, column: 3, scope: !2810)
!2838 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !511, file: !511, line: 1031, type: !2839, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!109, !115, !115, !115, !112}
!2841 = !{!2842, !2843, !2844, !2845}
!2842 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2838, file: !511, line: 1031, type: !115)
!2843 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2838, file: !511, line: 1031, type: !115)
!2844 = !DILocalVariable(name: "arg", arg: 3, scope: !2838, file: !511, line: 1032, type: !115)
!2845 = !DILocalVariable(name: "argsize", arg: 4, scope: !2838, file: !511, line: 1032, type: !112)
!2846 = !DILocation(line: 0, scope: !2838)
!2847 = !DILocation(line: 0, scope: !2766, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1034, column: 10, scope: !2838)
!2849 = !DILocation(line: 1018, column: 3, scope: !2766, inlinedAt: !2848)
!2850 = !DILocation(line: 1018, column: 26, scope: !2766, inlinedAt: !2848)
!2851 = !DILocation(line: 1018, column: 30, scope: !2766, inlinedAt: !2848)
!2852 = !DILocation(line: 0, scope: !1693, inlinedAt: !2853)
!2853 = distinct !DILocation(line: 1019, column: 3, scope: !2766, inlinedAt: !2848)
!2854 = !DILocation(line: 174, column: 12, scope: !1693, inlinedAt: !2853)
!2855 = !DILocation(line: 175, column: 8, scope: !1706, inlinedAt: !2853)
!2856 = !DILocation(line: 175, column: 19, scope: !1706, inlinedAt: !2853)
!2857 = !DILocation(line: 176, column: 5, scope: !1706, inlinedAt: !2853)
!2858 = !DILocation(line: 177, column: 6, scope: !1693, inlinedAt: !2853)
!2859 = !DILocation(line: 177, column: 17, scope: !1693, inlinedAt: !2853)
!2860 = !DILocation(line: 178, column: 6, scope: !1693, inlinedAt: !2853)
!2861 = !DILocation(line: 178, column: 18, scope: !1693, inlinedAt: !2853)
!2862 = !DILocation(line: 1020, column: 10, scope: !2766, inlinedAt: !2848)
!2863 = !DILocation(line: 1021, column: 1, scope: !2766, inlinedAt: !2848)
!2864 = !DILocation(line: 1034, column: 3, scope: !2838)
!2865 = distinct !DISubprogram(name: "quote_n_mem", scope: !511, file: !511, line: 1049, type: !2866, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!115, !68, !115, !112}
!2868 = !{!2869, !2870, !2871}
!2869 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !511, line: 1049, type: !68)
!2870 = !DILocalVariable(name: "arg", arg: 2, scope: !2865, file: !511, line: 1049, type: !115)
!2871 = !DILocalVariable(name: "argsize", arg: 3, scope: !2865, file: !511, line: 1049, type: !112)
!2872 = !DILocation(line: 0, scope: !2865)
!2873 = !DILocation(line: 1051, column: 10, scope: !2865)
!2874 = !DILocation(line: 1051, column: 3, scope: !2865)
!2875 = distinct !DISubprogram(name: "quote_mem", scope: !511, file: !511, line: 1055, type: !2876, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2878)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!115, !115, !112}
!2878 = !{!2879, !2880}
!2879 = !DILocalVariable(name: "arg", arg: 1, scope: !2875, file: !511, line: 1055, type: !115)
!2880 = !DILocalVariable(name: "argsize", arg: 2, scope: !2875, file: !511, line: 1055, type: !112)
!2881 = !DILocation(line: 0, scope: !2875)
!2882 = !DILocation(line: 0, scope: !2865, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 1057, column: 10, scope: !2875)
!2884 = !DILocation(line: 1051, column: 10, scope: !2865, inlinedAt: !2883)
!2885 = !DILocation(line: 1057, column: 3, scope: !2875)
!2886 = distinct !DISubprogram(name: "quote_n", scope: !511, file: !511, line: 1061, type: !2887, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2889)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{!115, !68, !115}
!2889 = !{!2890, !2891}
!2890 = !DILocalVariable(name: "n", arg: 1, scope: !2886, file: !511, line: 1061, type: !68)
!2891 = !DILocalVariable(name: "arg", arg: 2, scope: !2886, file: !511, line: 1061, type: !115)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 0, scope: !2865, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 1063, column: 10, scope: !2886)
!2895 = !DILocation(line: 1051, column: 10, scope: !2865, inlinedAt: !2894)
!2896 = !DILocation(line: 1063, column: 3, scope: !2886)
!2897 = distinct !DISubprogram(name: "quote", scope: !511, file: !511, line: 1067, type: !2898, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !532, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!115, !115}
!2900 = !{!2901}
!2901 = !DILocalVariable(name: "arg", arg: 1, scope: !2897, file: !511, line: 1067, type: !115)
!2902 = !DILocation(line: 0, scope: !2897)
!2903 = !DILocation(line: 0, scope: !2886, inlinedAt: !2904)
!2904 = distinct !DILocation(line: 1069, column: 10, scope: !2897)
!2905 = !DILocation(line: 0, scope: !2865, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1063, column: 10, scope: !2886, inlinedAt: !2904)
!2907 = !DILocation(line: 1051, column: 10, scope: !2865, inlinedAt: !2906)
!2908 = !DILocation(line: 1069, column: 3, scope: !2897)
!2909 = distinct !DISubprogram(name: "version_etc_arn", scope: !610, file: !610, line: 61, type: !2910, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !2947)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2912, !115, !115, !115, !2946, !112}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !2914)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2914, file: !173, line: 51, baseType: !68, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2914, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2914, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2914, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2914, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2914, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2914, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2914, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2914, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2914, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2914, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2914, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2914, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2914, file: !173, line: 70, baseType: !2930, size: 64, offset: 832)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2914, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2914, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2914, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2914, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2914, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2914, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2914, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2914, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2914, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2914, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2914, file: !173, line: 93, baseType: !2930, size: 64, offset: 1344)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2914, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2914, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2914, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2914, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953}
!2948 = !DILocalVariable(name: "stream", arg: 1, scope: !2909, file: !610, line: 61, type: !2912)
!2949 = !DILocalVariable(name: "command_name", arg: 2, scope: !2909, file: !610, line: 62, type: !115)
!2950 = !DILocalVariable(name: "package", arg: 3, scope: !2909, file: !610, line: 62, type: !115)
!2951 = !DILocalVariable(name: "version", arg: 4, scope: !2909, file: !610, line: 63, type: !115)
!2952 = !DILocalVariable(name: "authors", arg: 5, scope: !2909, file: !610, line: 64, type: !2946)
!2953 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2909, file: !610, line: 64, type: !112)
!2954 = !DILocation(line: 0, scope: !2909)
!2955 = !DILocation(line: 66, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2909, file: !610, line: 66, column: 7)
!2957 = !DILocation(line: 66, column: 7, scope: !2909)
!2958 = !DILocation(line: 67, column: 5, scope: !2956)
!2959 = !DILocation(line: 69, column: 5, scope: !2956)
!2960 = !DILocation(line: 83, column: 3, scope: !2909)
!2961 = !DILocation(line: 85, column: 3, scope: !2909)
!2962 = !DILocation(line: 88, column: 3, scope: !2909)
!2963 = !DILocation(line: 95, column: 3, scope: !2909)
!2964 = !DILocation(line: 97, column: 3, scope: !2909)
!2965 = !DILocation(line: 105, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2909, file: !610, line: 98, column: 5)
!2967 = !DILocation(line: 106, column: 7, scope: !2966)
!2968 = !DILocation(line: 109, column: 7, scope: !2966)
!2969 = !DILocation(line: 110, column: 7, scope: !2966)
!2970 = !DILocation(line: 113, column: 7, scope: !2966)
!2971 = !DILocation(line: 115, column: 7, scope: !2966)
!2972 = !DILocation(line: 120, column: 7, scope: !2966)
!2973 = !DILocation(line: 122, column: 7, scope: !2966)
!2974 = !DILocation(line: 127, column: 7, scope: !2966)
!2975 = !DILocation(line: 129, column: 7, scope: !2966)
!2976 = !DILocation(line: 134, column: 7, scope: !2966)
!2977 = !DILocation(line: 137, column: 7, scope: !2966)
!2978 = !DILocation(line: 142, column: 7, scope: !2966)
!2979 = !DILocation(line: 145, column: 7, scope: !2966)
!2980 = !DILocation(line: 150, column: 7, scope: !2966)
!2981 = !DILocation(line: 154, column: 7, scope: !2966)
!2982 = !DILocation(line: 159, column: 7, scope: !2966)
!2983 = !DILocation(line: 163, column: 7, scope: !2966)
!2984 = !DILocation(line: 170, column: 7, scope: !2966)
!2985 = !DILocation(line: 174, column: 7, scope: !2966)
!2986 = !DILocation(line: 176, column: 1, scope: !2909)
!2987 = distinct !DISubprogram(name: "version_etc_ar", scope: !610, file: !610, line: 183, type: !2988, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2912, !115, !115, !115, !2946}
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996}
!2991 = !DILocalVariable(name: "stream", arg: 1, scope: !2987, file: !610, line: 183, type: !2912)
!2992 = !DILocalVariable(name: "command_name", arg: 2, scope: !2987, file: !610, line: 184, type: !115)
!2993 = !DILocalVariable(name: "package", arg: 3, scope: !2987, file: !610, line: 184, type: !115)
!2994 = !DILocalVariable(name: "version", arg: 4, scope: !2987, file: !610, line: 185, type: !115)
!2995 = !DILocalVariable(name: "authors", arg: 5, scope: !2987, file: !610, line: 185, type: !2946)
!2996 = !DILocalVariable(name: "n_authors", scope: !2987, file: !610, line: 187, type: !112)
!2997 = !DILocation(line: 0, scope: !2987)
!2998 = !DILocation(line: 189, column: 8, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2987, file: !610, line: 189, column: 3)
!3000 = !DILocation(line: 189, scope: !2999)
!3001 = !DILocation(line: 189, column: 23, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2999, file: !610, line: 189, column: 3)
!3003 = !DILocation(line: 189, column: 3, scope: !2999)
!3004 = !DILocation(line: 189, column: 52, scope: !3002)
!3005 = distinct !{!3005, !3003, !3006, !921}
!3006 = !DILocation(line: 190, column: 5, scope: !2999)
!3007 = !DILocation(line: 191, column: 3, scope: !2987)
!3008 = !DILocation(line: 192, column: 1, scope: !2987)
!3009 = distinct !DISubprogram(name: "version_etc_va", scope: !610, file: !610, line: 199, type: !3010, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3023)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{null, !2912, !115, !115, !115, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !407, line: 52, baseType: !3013)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !409, line: 14, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3015, baseType: !3016)
!3015 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3017)
!3017 = !{!3018, !3019, !3020, !3021, !3022}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3016, file: !3015, line: 192, baseType: !110, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3016, file: !3015, line: 192, baseType: !110, size: 64, offset: 64)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3016, file: !3015, line: 192, baseType: !110, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3016, file: !3015, line: 192, baseType: !68, size: 32, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3016, file: !3015, line: 192, baseType: !68, size: 32, offset: 224)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029, !3030}
!3024 = !DILocalVariable(name: "stream", arg: 1, scope: !3009, file: !610, line: 199, type: !2912)
!3025 = !DILocalVariable(name: "command_name", arg: 2, scope: !3009, file: !610, line: 200, type: !115)
!3026 = !DILocalVariable(name: "package", arg: 3, scope: !3009, file: !610, line: 200, type: !115)
!3027 = !DILocalVariable(name: "version", arg: 4, scope: !3009, file: !610, line: 201, type: !115)
!3028 = !DILocalVariable(name: "authors", arg: 5, scope: !3009, file: !610, line: 201, type: !3012)
!3029 = !DILocalVariable(name: "n_authors", scope: !3009, file: !610, line: 203, type: !112)
!3030 = !DILocalVariable(name: "authtab", scope: !3009, file: !610, line: 204, type: !3031)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !50)
!3032 = !DILocation(line: 0, scope: !3009)
!3033 = !DILocation(line: 201, column: 46, scope: !3009)
!3034 = !DILocation(line: 204, column: 3, scope: !3009)
!3035 = !DILocation(line: 204, column: 15, scope: !3009)
!3036 = !DILocation(line: 208, column: 35, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !610, line: 206, column: 3)
!3038 = distinct !DILexicalBlock(scope: !3009, file: !610, line: 206, column: 3)
!3039 = !DILocation(line: 208, column: 33, scope: !3037)
!3040 = !DILocation(line: 208, column: 67, scope: !3037)
!3041 = !DILocation(line: 206, column: 3, scope: !3038)
!3042 = !DILocation(line: 208, column: 14, scope: !3037)
!3043 = !DILocation(line: 0, scope: !3038)
!3044 = !DILocation(line: 211, column: 3, scope: !3009)
!3045 = !DILocation(line: 213, column: 1, scope: !3009)
!3046 = distinct !DISubprogram(name: "version_etc", scope: !610, file: !610, line: 230, type: !3047, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{null, !2912, !115, !115, !115, null}
!3049 = !{!3050, !3051, !3052, !3053, !3054}
!3050 = !DILocalVariable(name: "stream", arg: 1, scope: !3046, file: !610, line: 230, type: !2912)
!3051 = !DILocalVariable(name: "command_name", arg: 2, scope: !3046, file: !610, line: 231, type: !115)
!3052 = !DILocalVariable(name: "package", arg: 3, scope: !3046, file: !610, line: 231, type: !115)
!3053 = !DILocalVariable(name: "version", arg: 4, scope: !3046, file: !610, line: 232, type: !115)
!3054 = !DILocalVariable(name: "authors", scope: !3046, file: !610, line: 234, type: !3012)
!3055 = !DILocation(line: 0, scope: !3046)
!3056 = !DILocation(line: 234, column: 3, scope: !3046)
!3057 = !DILocation(line: 234, column: 11, scope: !3046)
!3058 = !DILocation(line: 235, column: 3, scope: !3046)
!3059 = !DILocation(line: 236, column: 3, scope: !3046)
!3060 = !DILocation(line: 237, column: 3, scope: !3046)
!3061 = !DILocation(line: 238, column: 1, scope: !3046)
!3062 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !610, file: !610, line: 241, type: !448, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !859)
!3063 = !DILocation(line: 243, column: 3, scope: !3062)
!3064 = !DILocation(line: 248, column: 3, scope: !3062)
!3065 = !DILocation(line: 254, column: 3, scope: !3062)
!3066 = !DILocation(line: 259, column: 3, scope: !3062)
!3067 = !DILocation(line: 261, column: 1, scope: !3062)
!3068 = distinct !DISubprogram(name: "xnrealloc", scope: !3069, file: !3069, line: 147, type: !3070, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3072)
!3069 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!110, !110, !112, !112}
!3072 = !{!3073, !3074, !3075}
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3068, file: !3069, line: 147, type: !110)
!3074 = !DILocalVariable(name: "n", arg: 2, scope: !3068, file: !3069, line: 147, type: !112)
!3075 = !DILocalVariable(name: "s", arg: 3, scope: !3068, file: !3069, line: 147, type: !112)
!3076 = !DILocation(line: 0, scope: !3068)
!3077 = !DILocalVariable(name: "p", arg: 1, scope: !3078, file: !741, line: 83, type: !110)
!3078 = distinct !DISubprogram(name: "xreallocarray", scope: !741, file: !741, line: 83, type: !3070, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3079)
!3079 = !{!3077, !3080, !3081}
!3080 = !DILocalVariable(name: "n", arg: 2, scope: !3078, file: !741, line: 83, type: !112)
!3081 = !DILocalVariable(name: "s", arg: 3, scope: !3078, file: !741, line: 83, type: !112)
!3082 = !DILocation(line: 0, scope: !3078, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 149, column: 10, scope: !3068)
!3084 = !DILocation(line: 85, column: 25, scope: !3078, inlinedAt: !3083)
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !741, line: 37, type: !110)
!3086 = distinct !DISubprogram(name: "check_nonnull", scope: !741, file: !741, line: 37, type: !3087, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!110, !110}
!3089 = !{!3085}
!3090 = !DILocation(line: 0, scope: !3086, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 85, column: 10, scope: !3078, inlinedAt: !3083)
!3092 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3091)
!3093 = distinct !DILexicalBlock(scope: !3086, file: !741, line: 39, column: 7)
!3094 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3091)
!3095 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3091)
!3096 = !DILocation(line: 149, column: 3, scope: !3068)
!3097 = !DILocation(line: 0, scope: !3078)
!3098 = !DILocation(line: 85, column: 25, scope: !3078)
!3099 = !DILocation(line: 0, scope: !3086, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 85, column: 10, scope: !3078)
!3101 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3100)
!3102 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3100)
!3103 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3100)
!3104 = !DILocation(line: 85, column: 3, scope: !3078)
!3105 = distinct !DISubprogram(name: "xmalloc", scope: !741, file: !741, line: 47, type: !3106, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!110, !112}
!3108 = !{!3109}
!3109 = !DILocalVariable(name: "s", arg: 1, scope: !3105, file: !741, line: 47, type: !112)
!3110 = !DILocation(line: 0, scope: !3105)
!3111 = !DILocation(line: 49, column: 25, scope: !3105)
!3112 = !DILocation(line: 0, scope: !3086, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 49, column: 10, scope: !3105)
!3114 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3113)
!3115 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3113)
!3116 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3113)
!3117 = !DILocation(line: 49, column: 3, scope: !3105)
!3118 = !DISubprogram(name: "malloc", scope: !995, file: !995, line: 540, type: !3106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3119 = distinct !DISubprogram(name: "ximalloc", scope: !741, file: !741, line: 53, type: !3120, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!110, !760}
!3122 = !{!3123}
!3123 = !DILocalVariable(name: "s", arg: 1, scope: !3119, file: !741, line: 53, type: !760)
!3124 = !DILocation(line: 0, scope: !3119)
!3125 = !DILocalVariable(name: "s", arg: 1, scope: !3126, file: !3127, line: 55, type: !760)
!3126 = distinct !DISubprogram(name: "imalloc", scope: !3127, file: !3127, line: 55, type: !3120, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3128)
!3127 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3128 = !{!3125}
!3129 = !DILocation(line: 0, scope: !3126, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 55, column: 25, scope: !3119)
!3131 = !DILocation(line: 57, column: 26, scope: !3126, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !3086, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 55, column: 10, scope: !3119)
!3134 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3133)
!3137 = !DILocation(line: 55, column: 3, scope: !3119)
!3138 = distinct !DISubprogram(name: "xcharalloc", scope: !741, file: !741, line: 59, type: !3139, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!109, !112}
!3141 = !{!3142}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !741, line: 59, type: !112)
!3143 = !DILocation(line: 0, scope: !3138)
!3144 = !DILocation(line: 0, scope: !3105, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 61, column: 10, scope: !3138)
!3146 = !DILocation(line: 49, column: 25, scope: !3105, inlinedAt: !3145)
!3147 = !DILocation(line: 0, scope: !3086, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 49, column: 10, scope: !3105, inlinedAt: !3145)
!3149 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3148)
!3150 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3148)
!3151 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3148)
!3152 = !DILocation(line: 61, column: 3, scope: !3138)
!3153 = distinct !DISubprogram(name: "xrealloc", scope: !741, file: !741, line: 68, type: !3154, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!110, !110, !112}
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "p", arg: 1, scope: !3153, file: !741, line: 68, type: !110)
!3158 = !DILocalVariable(name: "s", arg: 2, scope: !3153, file: !741, line: 68, type: !112)
!3159 = !DILocation(line: 0, scope: !3153)
!3160 = !DILocalVariable(name: "ptr", arg: 1, scope: !3161, file: !3162, line: 2057, type: !110)
!3161 = distinct !DISubprogram(name: "rpl_realloc", scope: !3162, file: !3162, line: 2057, type: !3154, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3163)
!3162 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3163 = !{!3160, !3164}
!3164 = !DILocalVariable(name: "size", arg: 2, scope: !3161, file: !3162, line: 2057, type: !112)
!3165 = !DILocation(line: 0, scope: !3161, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 70, column: 25, scope: !3153)
!3167 = !DILocation(line: 2059, column: 24, scope: !3161, inlinedAt: !3166)
!3168 = !DILocation(line: 2059, column: 10, scope: !3161, inlinedAt: !3166)
!3169 = !DILocation(line: 0, scope: !3086, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 70, column: 10, scope: !3153)
!3171 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3170)
!3172 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3170)
!3173 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3170)
!3174 = !DILocation(line: 70, column: 3, scope: !3153)
!3175 = !DISubprogram(name: "realloc", scope: !995, file: !995, line: 551, type: !3154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3176 = distinct !DISubprogram(name: "xirealloc", scope: !741, file: !741, line: 74, type: !3177, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3179)
!3177 = !DISubroutineType(types: !3178)
!3178 = !{!110, !110, !760}
!3179 = !{!3180, !3181}
!3180 = !DILocalVariable(name: "p", arg: 1, scope: !3176, file: !741, line: 74, type: !110)
!3181 = !DILocalVariable(name: "s", arg: 2, scope: !3176, file: !741, line: 74, type: !760)
!3182 = !DILocation(line: 0, scope: !3176)
!3183 = !DILocalVariable(name: "p", arg: 1, scope: !3184, file: !3127, line: 66, type: !110)
!3184 = distinct !DISubprogram(name: "irealloc", scope: !3127, file: !3127, line: 66, type: !3177, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3185)
!3185 = !{!3183, !3186}
!3186 = !DILocalVariable(name: "s", arg: 2, scope: !3184, file: !3127, line: 66, type: !760)
!3187 = !DILocation(line: 0, scope: !3184, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 76, column: 25, scope: !3176)
!3189 = !DILocation(line: 0, scope: !3161, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 68, column: 26, scope: !3184, inlinedAt: !3188)
!3191 = !DILocation(line: 2059, column: 24, scope: !3161, inlinedAt: !3190)
!3192 = !DILocation(line: 2059, column: 10, scope: !3161, inlinedAt: !3190)
!3193 = !DILocation(line: 0, scope: !3086, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 76, column: 10, scope: !3176)
!3195 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3194)
!3196 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3194)
!3197 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3194)
!3198 = !DILocation(line: 76, column: 3, scope: !3176)
!3199 = distinct !DISubprogram(name: "xireallocarray", scope: !741, file: !741, line: 89, type: !3200, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!110, !110, !760, !760}
!3202 = !{!3203, !3204, !3205}
!3203 = !DILocalVariable(name: "p", arg: 1, scope: !3199, file: !741, line: 89, type: !110)
!3204 = !DILocalVariable(name: "n", arg: 2, scope: !3199, file: !741, line: 89, type: !760)
!3205 = !DILocalVariable(name: "s", arg: 3, scope: !3199, file: !741, line: 89, type: !760)
!3206 = !DILocation(line: 0, scope: !3199)
!3207 = !DILocalVariable(name: "p", arg: 1, scope: !3208, file: !3127, line: 98, type: !110)
!3208 = distinct !DISubprogram(name: "ireallocarray", scope: !3127, file: !3127, line: 98, type: !3200, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3209)
!3209 = !{!3207, !3210, !3211}
!3210 = !DILocalVariable(name: "n", arg: 2, scope: !3208, file: !3127, line: 98, type: !760)
!3211 = !DILocalVariable(name: "s", arg: 3, scope: !3208, file: !3127, line: 98, type: !760)
!3212 = !DILocation(line: 0, scope: !3208, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 91, column: 25, scope: !3199)
!3214 = !DILocation(line: 101, column: 13, scope: !3208, inlinedAt: !3213)
!3215 = !DILocation(line: 0, scope: !3086, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 91, column: 10, scope: !3199)
!3217 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3216)
!3218 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3216)
!3219 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3216)
!3220 = !DILocation(line: 91, column: 3, scope: !3199)
!3221 = distinct !DISubprogram(name: "xnmalloc", scope: !741, file: !741, line: 98, type: !3222, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3224)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!110, !112, !112}
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !741, line: 98, type: !112)
!3226 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !741, line: 98, type: !112)
!3227 = !DILocation(line: 0, scope: !3221)
!3228 = !DILocation(line: 0, scope: !3078, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 100, column: 10, scope: !3221)
!3230 = !DILocation(line: 85, column: 25, scope: !3078, inlinedAt: !3229)
!3231 = !DILocation(line: 0, scope: !3086, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 85, column: 10, scope: !3078, inlinedAt: !3229)
!3233 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3232)
!3234 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3232)
!3235 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3232)
!3236 = !DILocation(line: 100, column: 3, scope: !3221)
!3237 = distinct !DISubprogram(name: "xinmalloc", scope: !741, file: !741, line: 104, type: !3238, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!110, !760, !760}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3237, file: !741, line: 104, type: !760)
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3237, file: !741, line: 104, type: !760)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 0, scope: !3199, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 106, column: 10, scope: !3237)
!3246 = !DILocation(line: 0, scope: !3208, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 91, column: 25, scope: !3199, inlinedAt: !3245)
!3248 = !DILocation(line: 101, column: 13, scope: !3208, inlinedAt: !3247)
!3249 = !DILocation(line: 0, scope: !3086, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 91, column: 10, scope: !3199, inlinedAt: !3245)
!3251 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3250)
!3254 = !DILocation(line: 106, column: 3, scope: !3237)
!3255 = distinct !DISubprogram(name: "x2realloc", scope: !741, file: !741, line: 116, type: !3256, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3258)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!110, !110, !747}
!3258 = !{!3259, !3260}
!3259 = !DILocalVariable(name: "p", arg: 1, scope: !3255, file: !741, line: 116, type: !110)
!3260 = !DILocalVariable(name: "ps", arg: 2, scope: !3255, file: !741, line: 116, type: !747)
!3261 = !DILocation(line: 0, scope: !3255)
!3262 = !DILocation(line: 0, scope: !744, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 118, column: 10, scope: !3255)
!3264 = !DILocation(line: 178, column: 14, scope: !744, inlinedAt: !3263)
!3265 = !DILocation(line: 180, column: 9, scope: !3266, inlinedAt: !3263)
!3266 = distinct !DILexicalBlock(scope: !744, file: !741, line: 180, column: 7)
!3267 = !DILocation(line: 180, column: 7, scope: !744, inlinedAt: !3263)
!3268 = !DILocation(line: 182, column: 13, scope: !3269, inlinedAt: !3263)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !741, line: 182, column: 11)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !741, line: 181, column: 5)
!3271 = !DILocation(line: 182, column: 11, scope: !3270, inlinedAt: !3263)
!3272 = !DILocation(line: 197, column: 11, scope: !3273, inlinedAt: !3263)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !741, line: 197, column: 11)
!3274 = distinct !DILexicalBlock(scope: !3266, file: !741, line: 195, column: 5)
!3275 = !DILocation(line: 197, column: 11, scope: !3274, inlinedAt: !3263)
!3276 = !DILocation(line: 198, column: 9, scope: !3273, inlinedAt: !3263)
!3277 = !DILocation(line: 0, scope: !3078, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 201, column: 7, scope: !744, inlinedAt: !3263)
!3279 = !DILocation(line: 85, column: 25, scope: !3078, inlinedAt: !3278)
!3280 = !DILocation(line: 0, scope: !3086, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 85, column: 10, scope: !3078, inlinedAt: !3278)
!3282 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3281)
!3283 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3281)
!3284 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3281)
!3285 = !DILocation(line: 202, column: 7, scope: !744, inlinedAt: !3263)
!3286 = !DILocation(line: 118, column: 3, scope: !3255)
!3287 = !DILocation(line: 0, scope: !744)
!3288 = !DILocation(line: 178, column: 14, scope: !744)
!3289 = !DILocation(line: 180, column: 9, scope: !3266)
!3290 = !DILocation(line: 180, column: 7, scope: !744)
!3291 = !DILocation(line: 182, column: 13, scope: !3269)
!3292 = !DILocation(line: 182, column: 11, scope: !3270)
!3293 = !DILocation(line: 190, column: 30, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3269, file: !741, line: 183, column: 9)
!3295 = !DILocation(line: 191, column: 16, scope: !3294)
!3296 = !DILocation(line: 191, column: 13, scope: !3294)
!3297 = !DILocation(line: 192, column: 9, scope: !3294)
!3298 = !DILocation(line: 197, column: 11, scope: !3273)
!3299 = !DILocation(line: 197, column: 11, scope: !3274)
!3300 = !DILocation(line: 198, column: 9, scope: !3273)
!3301 = !DILocation(line: 0, scope: !3078, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 201, column: 7, scope: !744)
!3303 = !DILocation(line: 85, column: 25, scope: !3078, inlinedAt: !3302)
!3304 = !DILocation(line: 0, scope: !3086, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 85, column: 10, scope: !3078, inlinedAt: !3302)
!3306 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3305)
!3307 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3305)
!3308 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3305)
!3309 = !DILocation(line: 202, column: 7, scope: !744)
!3310 = !DILocation(line: 203, column: 3, scope: !744)
!3311 = !DILocation(line: 0, scope: !756)
!3312 = !DILocation(line: 230, column: 14, scope: !756)
!3313 = !DILocation(line: 238, column: 7, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !756, file: !741, line: 238, column: 7)
!3315 = !DILocation(line: 238, column: 7, scope: !756)
!3316 = !DILocation(line: 240, column: 9, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !756, file: !741, line: 240, column: 7)
!3318 = !DILocation(line: 240, column: 18, scope: !3317)
!3319 = !DILocation(line: 253, column: 8, scope: !756)
!3320 = !DILocation(line: 258, column: 27, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !741, line: 257, column: 5)
!3322 = distinct !DILexicalBlock(scope: !756, file: !741, line: 256, column: 7)
!3323 = !DILocation(line: 259, column: 32, scope: !3321)
!3324 = !DILocation(line: 260, column: 5, scope: !3321)
!3325 = !DILocation(line: 262, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !756, file: !741, line: 262, column: 7)
!3327 = !DILocation(line: 262, column: 7, scope: !756)
!3328 = !DILocation(line: 263, column: 9, scope: !3326)
!3329 = !DILocation(line: 263, column: 5, scope: !3326)
!3330 = !DILocation(line: 264, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !756, file: !741, line: 264, column: 7)
!3332 = !DILocation(line: 264, column: 14, scope: !3331)
!3333 = !DILocation(line: 265, column: 7, scope: !3331)
!3334 = !DILocation(line: 265, column: 11, scope: !3331)
!3335 = !DILocation(line: 266, column: 11, scope: !3331)
!3336 = !DILocation(line: 267, column: 14, scope: !3331)
!3337 = !DILocation(line: 264, column: 7, scope: !756)
!3338 = !DILocation(line: 268, column: 5, scope: !3331)
!3339 = !DILocation(line: 0, scope: !3153, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 269, column: 8, scope: !756)
!3341 = !DILocation(line: 0, scope: !3161, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 70, column: 25, scope: !3153, inlinedAt: !3340)
!3343 = !DILocation(line: 2059, column: 24, scope: !3161, inlinedAt: !3342)
!3344 = !DILocation(line: 2059, column: 10, scope: !3161, inlinedAt: !3342)
!3345 = !DILocation(line: 0, scope: !3086, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 70, column: 10, scope: !3153, inlinedAt: !3340)
!3347 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3346)
!3348 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3346)
!3349 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3346)
!3350 = !DILocation(line: 270, column: 7, scope: !756)
!3351 = !DILocation(line: 271, column: 3, scope: !756)
!3352 = distinct !DISubprogram(name: "xzalloc", scope: !741, file: !741, line: 279, type: !3106, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3353)
!3353 = !{!3354}
!3354 = !DILocalVariable(name: "s", arg: 1, scope: !3352, file: !741, line: 279, type: !112)
!3355 = !DILocation(line: 0, scope: !3352)
!3356 = !DILocalVariable(name: "n", arg: 1, scope: !3357, file: !741, line: 294, type: !112)
!3357 = distinct !DISubprogram(name: "xcalloc", scope: !741, file: !741, line: 294, type: !3222, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3358)
!3358 = !{!3356, !3359}
!3359 = !DILocalVariable(name: "s", arg: 2, scope: !3357, file: !741, line: 294, type: !112)
!3360 = !DILocation(line: 0, scope: !3357, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 281, column: 10, scope: !3352)
!3362 = !DILocation(line: 296, column: 25, scope: !3357, inlinedAt: !3361)
!3363 = !DILocation(line: 0, scope: !3086, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 296, column: 10, scope: !3357, inlinedAt: !3361)
!3365 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3364)
!3366 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3364)
!3367 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3364)
!3368 = !DILocation(line: 281, column: 3, scope: !3352)
!3369 = !DISubprogram(name: "calloc", scope: !995, file: !995, line: 543, type: !3222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3370 = !DILocation(line: 0, scope: !3357)
!3371 = !DILocation(line: 296, column: 25, scope: !3357)
!3372 = !DILocation(line: 0, scope: !3086, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 296, column: 10, scope: !3357)
!3374 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3373)
!3375 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3373)
!3376 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3373)
!3377 = !DILocation(line: 296, column: 3, scope: !3357)
!3378 = distinct !DISubprogram(name: "xizalloc", scope: !741, file: !741, line: 285, type: !3120, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3379)
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "s", arg: 1, scope: !3378, file: !741, line: 285, type: !760)
!3381 = !DILocation(line: 0, scope: !3378)
!3382 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !741, line: 300, type: !760)
!3383 = distinct !DISubprogram(name: "xicalloc", scope: !741, file: !741, line: 300, type: !3238, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3384)
!3384 = !{!3382, !3385}
!3385 = !DILocalVariable(name: "s", arg: 2, scope: !3383, file: !741, line: 300, type: !760)
!3386 = !DILocation(line: 0, scope: !3383, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 287, column: 10, scope: !3378)
!3388 = !DILocalVariable(name: "n", arg: 1, scope: !3389, file: !3127, line: 77, type: !760)
!3389 = distinct !DISubprogram(name: "icalloc", scope: !3127, file: !3127, line: 77, type: !3238, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3390)
!3390 = !{!3388, !3391}
!3391 = !DILocalVariable(name: "s", arg: 2, scope: !3389, file: !3127, line: 77, type: !760)
!3392 = !DILocation(line: 0, scope: !3389, inlinedAt: !3393)
!3393 = distinct !DILocation(line: 302, column: 25, scope: !3383, inlinedAt: !3387)
!3394 = !DILocation(line: 91, column: 10, scope: !3389, inlinedAt: !3393)
!3395 = !DILocation(line: 0, scope: !3086, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 302, column: 10, scope: !3383, inlinedAt: !3387)
!3397 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3396)
!3398 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3396)
!3399 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3396)
!3400 = !DILocation(line: 287, column: 3, scope: !3378)
!3401 = !DILocation(line: 0, scope: !3383)
!3402 = !DILocation(line: 0, scope: !3389, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 302, column: 25, scope: !3383)
!3404 = !DILocation(line: 91, column: 10, scope: !3389, inlinedAt: !3403)
!3405 = !DILocation(line: 0, scope: !3086, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 302, column: 10, scope: !3383)
!3407 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3406)
!3408 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3406)
!3409 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3406)
!3410 = !DILocation(line: 302, column: 3, scope: !3383)
!3411 = distinct !DISubprogram(name: "xmemdup", scope: !741, file: !741, line: 310, type: !3412, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!110, !1019, !112}
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "p", arg: 1, scope: !3411, file: !741, line: 310, type: !1019)
!3416 = !DILocalVariable(name: "s", arg: 2, scope: !3411, file: !741, line: 310, type: !112)
!3417 = !DILocation(line: 0, scope: !3411)
!3418 = !DILocation(line: 0, scope: !3105, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 312, column: 18, scope: !3411)
!3420 = !DILocation(line: 49, column: 25, scope: !3105, inlinedAt: !3419)
!3421 = !DILocation(line: 0, scope: !3086, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 49, column: 10, scope: !3105, inlinedAt: !3419)
!3423 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3422)
!3424 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3422)
!3425 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3422)
!3426 = !DILocalVariable(name: "__dest", arg: 1, scope: !3427, file: !1596, line: 26, type: !3430)
!3427 = distinct !DISubprogram(name: "memcpy", scope: !1596, file: !1596, line: 26, type: !3428, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3431)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!110, !3430, !1018, !112}
!3430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!3431 = !{!3426, !3432, !3433}
!3432 = !DILocalVariable(name: "__src", arg: 2, scope: !3427, file: !1596, line: 26, type: !1018)
!3433 = !DILocalVariable(name: "__len", arg: 3, scope: !3427, file: !1596, line: 26, type: !112)
!3434 = !DILocation(line: 0, scope: !3427, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 312, column: 10, scope: !3411)
!3436 = !DILocation(line: 29, column: 10, scope: !3427, inlinedAt: !3435)
!3437 = !DILocation(line: 312, column: 3, scope: !3411)
!3438 = distinct !DISubprogram(name: "ximemdup", scope: !741, file: !741, line: 316, type: !3439, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3441)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!110, !1019, !760}
!3441 = !{!3442, !3443}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3438, file: !741, line: 316, type: !1019)
!3443 = !DILocalVariable(name: "s", arg: 2, scope: !3438, file: !741, line: 316, type: !760)
!3444 = !DILocation(line: 0, scope: !3438)
!3445 = !DILocation(line: 0, scope: !3119, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 318, column: 18, scope: !3438)
!3447 = !DILocation(line: 0, scope: !3126, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 55, column: 25, scope: !3119, inlinedAt: !3446)
!3449 = !DILocation(line: 57, column: 26, scope: !3126, inlinedAt: !3448)
!3450 = !DILocation(line: 0, scope: !3086, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 55, column: 10, scope: !3119, inlinedAt: !3446)
!3452 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3451)
!3453 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3451)
!3454 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3451)
!3455 = !DILocation(line: 0, scope: !3427, inlinedAt: !3456)
!3456 = distinct !DILocation(line: 318, column: 10, scope: !3438)
!3457 = !DILocation(line: 29, column: 10, scope: !3427, inlinedAt: !3456)
!3458 = !DILocation(line: 318, column: 3, scope: !3438)
!3459 = distinct !DISubprogram(name: "ximemdup0", scope: !741, file: !741, line: 325, type: !3460, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!109, !1019, !760}
!3462 = !{!3463, !3464, !3465}
!3463 = !DILocalVariable(name: "p", arg: 1, scope: !3459, file: !741, line: 325, type: !1019)
!3464 = !DILocalVariable(name: "s", arg: 2, scope: !3459, file: !741, line: 325, type: !760)
!3465 = !DILocalVariable(name: "result", scope: !3459, file: !741, line: 327, type: !109)
!3466 = !DILocation(line: 0, scope: !3459)
!3467 = !DILocation(line: 327, column: 30, scope: !3459)
!3468 = !DILocation(line: 0, scope: !3119, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 327, column: 18, scope: !3459)
!3470 = !DILocation(line: 0, scope: !3126, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 55, column: 25, scope: !3119, inlinedAt: !3469)
!3472 = !DILocation(line: 57, column: 26, scope: !3126, inlinedAt: !3471)
!3473 = !DILocation(line: 0, scope: !3086, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 55, column: 10, scope: !3119, inlinedAt: !3469)
!3475 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3474)
!3476 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3474)
!3477 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3474)
!3478 = !DILocation(line: 328, column: 3, scope: !3459)
!3479 = !DILocation(line: 328, column: 13, scope: !3459)
!3480 = !DILocation(line: 0, scope: !3427, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 329, column: 10, scope: !3459)
!3482 = !DILocation(line: 29, column: 10, scope: !3427, inlinedAt: !3481)
!3483 = !DILocation(line: 329, column: 3, scope: !3459)
!3484 = distinct !DISubprogram(name: "xstrdup", scope: !741, file: !741, line: 335, type: !997, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3485)
!3485 = !{!3486}
!3486 = !DILocalVariable(name: "string", arg: 1, scope: !3484, file: !741, line: 335, type: !115)
!3487 = !DILocation(line: 0, scope: !3484)
!3488 = !DILocation(line: 337, column: 27, scope: !3484)
!3489 = !DILocation(line: 337, column: 43, scope: !3484)
!3490 = !DILocation(line: 0, scope: !3411, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 337, column: 10, scope: !3484)
!3492 = !DILocation(line: 0, scope: !3105, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 312, column: 18, scope: !3411, inlinedAt: !3491)
!3494 = !DILocation(line: 49, column: 25, scope: !3105, inlinedAt: !3493)
!3495 = !DILocation(line: 0, scope: !3086, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 49, column: 10, scope: !3105, inlinedAt: !3493)
!3497 = !DILocation(line: 39, column: 8, scope: !3093, inlinedAt: !3496)
!3498 = !DILocation(line: 39, column: 7, scope: !3086, inlinedAt: !3496)
!3499 = !DILocation(line: 40, column: 5, scope: !3093, inlinedAt: !3496)
!3500 = !DILocation(line: 0, scope: !3427, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 312, column: 10, scope: !3411, inlinedAt: !3491)
!3502 = !DILocation(line: 29, column: 10, scope: !3427, inlinedAt: !3501)
!3503 = !DILocation(line: 337, column: 3, scope: !3484)
!3504 = distinct !DISubprogram(name: "xalloc_die", scope: !703, file: !703, line: 32, type: !448, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !774, retainedNodes: !3505)
!3505 = !{!3506}
!3506 = !DILocalVariable(name: "__errstatus", scope: !3507, file: !703, line: 34, type: !3508)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !703, line: 34, column: 3)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3509 = !DILocation(line: 34, column: 3, scope: !3507)
!3510 = !DILocation(line: 0, scope: !3507)
!3511 = !DILocation(line: 40, column: 3, scope: !3504)
!3512 = distinct !DISubprogram(name: "close_stream", scope: !777, file: !777, line: 55, type: !3513, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3549)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!68, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3517)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3517, file: !173, line: 51, baseType: !68, size: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3517, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3517, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3517, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3517, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3517, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3517, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3517, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3517, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3517, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3517, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3517, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3517, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3517, file: !173, line: 70, baseType: !3533, size: 64, offset: 832)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3517, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3517, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3517, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3517, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3517, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3517, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3517, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3517, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3517, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3517, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3517, file: !173, line: 93, baseType: !3533, size: 64, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3517, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3517, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3517, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3517, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3549 = !{!3550, !3551, !3553, !3554}
!3550 = !DILocalVariable(name: "stream", arg: 1, scope: !3512, file: !777, line: 55, type: !3515)
!3551 = !DILocalVariable(name: "some_pending", scope: !3512, file: !777, line: 57, type: !3552)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3553 = !DILocalVariable(name: "prev_fail", scope: !3512, file: !777, line: 58, type: !3552)
!3554 = !DILocalVariable(name: "fclose_fail", scope: !3512, file: !777, line: 59, type: !3552)
!3555 = !DILocation(line: 0, scope: !3512)
!3556 = !DILocation(line: 57, column: 30, scope: !3512)
!3557 = !DILocalVariable(name: "__stream", arg: 1, scope: !3558, file: !1338, line: 135, type: !3515)
!3558 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1338, file: !1338, line: 135, type: !3513, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3559)
!3559 = !{!3557}
!3560 = !DILocation(line: 0, scope: !3558, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 58, column: 27, scope: !3512)
!3562 = !DILocation(line: 137, column: 10, scope: !3558, inlinedAt: !3561)
!3563 = !{!1347, !875, i64 0}
!3564 = !DILocation(line: 58, column: 43, scope: !3512)
!3565 = !DILocation(line: 59, column: 29, scope: !3512)
!3566 = !DILocation(line: 59, column: 45, scope: !3512)
!3567 = !DILocation(line: 69, column: 17, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3512, file: !777, line: 69, column: 7)
!3569 = !DILocation(line: 57, column: 50, scope: !3512)
!3570 = !DILocation(line: 69, column: 33, scope: !3568)
!3571 = !DILocation(line: 69, column: 53, scope: !3568)
!3572 = !DILocation(line: 69, column: 59, scope: !3568)
!3573 = !DILocation(line: 69, column: 7, scope: !3512)
!3574 = !DILocation(line: 71, column: 11, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3568, file: !777, line: 70, column: 5)
!3576 = !DILocation(line: 72, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3575, file: !777, line: 71, column: 11)
!3578 = !DILocation(line: 72, column: 15, scope: !3577)
!3579 = !DILocation(line: 77, column: 1, scope: !3512)
!3580 = !DISubprogram(name: "__fpending", scope: !3581, file: !3581, line: 75, type: !3582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3581 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!112, !3515}
!3584 = distinct !DISubprogram(name: "rpl_fclose", scope: !779, file: !779, line: 58, type: !3585, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3621)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!68, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3589)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3589, file: !173, line: 51, baseType: !68, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3589, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3589, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3589, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3589, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3589, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3589, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3589, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3589, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3589, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3589, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3589, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3589, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3589, file: !173, line: 70, baseType: !3605, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3589, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3589, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3589, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3589, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3589, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3589, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3589, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3589, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3589, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3589, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3589, file: !173, line: 93, baseType: !3605, size: 64, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3589, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3589, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3589, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3589, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3621 = !{!3622, !3623, !3624, !3625}
!3622 = !DILocalVariable(name: "fp", arg: 1, scope: !3584, file: !779, line: 58, type: !3587)
!3623 = !DILocalVariable(name: "saved_errno", scope: !3584, file: !779, line: 60, type: !68)
!3624 = !DILocalVariable(name: "fd", scope: !3584, file: !779, line: 63, type: !68)
!3625 = !DILocalVariable(name: "result", scope: !3584, file: !779, line: 74, type: !68)
!3626 = !DILocation(line: 0, scope: !3584)
!3627 = !DILocation(line: 63, column: 12, scope: !3584)
!3628 = !DILocation(line: 64, column: 10, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3584, file: !779, line: 64, column: 7)
!3630 = !DILocation(line: 64, column: 7, scope: !3584)
!3631 = !DILocation(line: 65, column: 12, scope: !3629)
!3632 = !DILocation(line: 65, column: 5, scope: !3629)
!3633 = !DILocation(line: 70, column: 9, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3584, file: !779, line: 70, column: 7)
!3635 = !DILocation(line: 70, column: 23, scope: !3634)
!3636 = !DILocation(line: 70, column: 33, scope: !3634)
!3637 = !DILocation(line: 70, column: 26, scope: !3634)
!3638 = !DILocation(line: 70, column: 59, scope: !3634)
!3639 = !DILocation(line: 71, column: 7, scope: !3634)
!3640 = !DILocation(line: 71, column: 10, scope: !3634)
!3641 = !DILocation(line: 70, column: 7, scope: !3584)
!3642 = !DILocation(line: 100, column: 12, scope: !3584)
!3643 = !DILocation(line: 105, column: 7, scope: !3584)
!3644 = !DILocation(line: 72, column: 19, scope: !3634)
!3645 = !DILocation(line: 105, column: 19, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3584, file: !779, line: 105, column: 7)
!3647 = !DILocation(line: 107, column: 13, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3646, file: !779, line: 106, column: 5)
!3649 = !DILocation(line: 109, column: 5, scope: !3648)
!3650 = !DILocation(line: 112, column: 1, scope: !3584)
!3651 = !DISubprogram(name: "fileno", scope: !407, file: !407, line: 809, type: !3585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3652 = !DISubprogram(name: "fclose", scope: !407, file: !407, line: 178, type: !3585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3653 = !DISubprogram(name: "__freading", scope: !3581, file: !3581, line: 51, type: !3585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3654 = !DISubprogram(name: "lseek", scope: !1150, file: !1150, line: 339, type: !3655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!195, !68, !195, !68}
!3657 = distinct !DISubprogram(name: "rpl_fflush", scope: !781, file: !781, line: 130, type: !3658, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3694)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!68, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3662, file: !173, line: 51, baseType: !68, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3662, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3662, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3662, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3662, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3662, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3662, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3662, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3662, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3662, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3662, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3662, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3662, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3662, file: !173, line: 70, baseType: !3678, size: 64, offset: 832)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3662, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3662, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3662, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3662, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3662, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3662, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3662, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3662, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3662, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3662, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3662, file: !173, line: 93, baseType: !3678, size: 64, offset: 1344)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3662, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3662, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3662, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3662, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3694 = !{!3695}
!3695 = !DILocalVariable(name: "stream", arg: 1, scope: !3657, file: !781, line: 130, type: !3660)
!3696 = !DILocation(line: 0, scope: !3657)
!3697 = !DILocation(line: 151, column: 14, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3657, file: !781, line: 151, column: 7)
!3699 = !DILocation(line: 151, column: 22, scope: !3698)
!3700 = !DILocation(line: 151, column: 27, scope: !3698)
!3701 = !DILocation(line: 151, column: 7, scope: !3657)
!3702 = !DILocation(line: 152, column: 12, scope: !3698)
!3703 = !DILocation(line: 152, column: 5, scope: !3698)
!3704 = !DILocalVariable(name: "fp", arg: 1, scope: !3705, file: !781, line: 42, type: !3660)
!3705 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !781, file: !781, line: 42, type: !3706, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3708)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{null, !3660}
!3708 = !{!3704}
!3709 = !DILocation(line: 0, scope: !3705, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 157, column: 3, scope: !3657)
!3711 = !DILocation(line: 44, column: 12, scope: !3712, inlinedAt: !3710)
!3712 = distinct !DILexicalBlock(scope: !3705, file: !781, line: 44, column: 7)
!3713 = !DILocation(line: 44, column: 19, scope: !3712, inlinedAt: !3710)
!3714 = !DILocation(line: 44, column: 7, scope: !3705, inlinedAt: !3710)
!3715 = !DILocation(line: 46, column: 5, scope: !3712, inlinedAt: !3710)
!3716 = !DILocation(line: 159, column: 10, scope: !3657)
!3717 = !DILocation(line: 159, column: 3, scope: !3657)
!3718 = !DILocation(line: 236, column: 1, scope: !3657)
!3719 = !DISubprogram(name: "fflush", scope: !407, file: !407, line: 230, type: !3658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3720 = distinct !DISubprogram(name: "rpl_fseeko", scope: !783, file: !783, line: 28, type: !3721, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3758)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!68, !3723, !3757, !68}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3725)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3726)
!3726 = !{!3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3725, file: !173, line: 51, baseType: !68, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3725, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3725, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3725, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3725, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3725, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3725, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3725, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3725, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3725, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3725, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3725, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3725, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3725, file: !173, line: 70, baseType: !3741, size: 64, offset: 832)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3725, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3725, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3725, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3725, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3725, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3725, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3725, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3725, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3725, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3725, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3725, file: !173, line: 93, baseType: !3741, size: 64, offset: 1344)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3725, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3725, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3725, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3725, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !407, line: 63, baseType: !195)
!3758 = !{!3759, !3760, !3761, !3762}
!3759 = !DILocalVariable(name: "fp", arg: 1, scope: !3720, file: !783, line: 28, type: !3723)
!3760 = !DILocalVariable(name: "offset", arg: 2, scope: !3720, file: !783, line: 28, type: !3757)
!3761 = !DILocalVariable(name: "whence", arg: 3, scope: !3720, file: !783, line: 28, type: !68)
!3762 = !DILocalVariable(name: "pos", scope: !3763, file: !783, line: 123, type: !3757)
!3763 = distinct !DILexicalBlock(scope: !3764, file: !783, line: 119, column: 5)
!3764 = distinct !DILexicalBlock(scope: !3720, file: !783, line: 55, column: 7)
!3765 = !DILocation(line: 0, scope: !3720)
!3766 = !DILocation(line: 55, column: 12, scope: !3764)
!3767 = !{!1347, !813, i64 16}
!3768 = !DILocation(line: 55, column: 33, scope: !3764)
!3769 = !{!1347, !813, i64 8}
!3770 = !DILocation(line: 55, column: 25, scope: !3764)
!3771 = !DILocation(line: 56, column: 7, scope: !3764)
!3772 = !DILocation(line: 56, column: 15, scope: !3764)
!3773 = !DILocation(line: 56, column: 37, scope: !3764)
!3774 = !{!1347, !813, i64 32}
!3775 = !DILocation(line: 56, column: 29, scope: !3764)
!3776 = !DILocation(line: 57, column: 7, scope: !3764)
!3777 = !DILocation(line: 57, column: 15, scope: !3764)
!3778 = !{!1347, !813, i64 72}
!3779 = !DILocation(line: 57, column: 29, scope: !3764)
!3780 = !DILocation(line: 55, column: 7, scope: !3720)
!3781 = !DILocation(line: 123, column: 26, scope: !3763)
!3782 = !DILocation(line: 123, column: 19, scope: !3763)
!3783 = !DILocation(line: 0, scope: !3763)
!3784 = !DILocation(line: 124, column: 15, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3763, file: !783, line: 124, column: 11)
!3786 = !DILocation(line: 124, column: 11, scope: !3763)
!3787 = !DILocation(line: 135, column: 19, scope: !3763)
!3788 = !DILocation(line: 136, column: 12, scope: !3763)
!3789 = !DILocation(line: 136, column: 20, scope: !3763)
!3790 = !{!1347, !1348, i64 144}
!3791 = !DILocation(line: 167, column: 7, scope: !3763)
!3792 = !DILocation(line: 169, column: 10, scope: !3720)
!3793 = !DILocation(line: 169, column: 3, scope: !3720)
!3794 = !DILocation(line: 170, column: 1, scope: !3720)
!3795 = !DISubprogram(name: "fseeko", scope: !407, file: !407, line: 736, type: !3796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!68, !3723, !195, !68}
!3798 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !710, file: !710, line: 100, type: !3799, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3802)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!112, !1614, !115, !112, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!3802 = !{!3803, !3804, !3805, !3806, !3807}
!3803 = !DILocalVariable(name: "pwc", arg: 1, scope: !3798, file: !710, line: 100, type: !1614)
!3804 = !DILocalVariable(name: "s", arg: 2, scope: !3798, file: !710, line: 100, type: !115)
!3805 = !DILocalVariable(name: "n", arg: 3, scope: !3798, file: !710, line: 100, type: !112)
!3806 = !DILocalVariable(name: "ps", arg: 4, scope: !3798, file: !710, line: 100, type: !3801)
!3807 = !DILocalVariable(name: "ret", scope: !3798, file: !710, line: 130, type: !112)
!3808 = !DILocation(line: 0, scope: !3798)
!3809 = !DILocation(line: 105, column: 9, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3798, file: !710, line: 105, column: 7)
!3811 = !DILocation(line: 105, column: 7, scope: !3798)
!3812 = !DILocation(line: 117, column: 10, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3798, file: !710, line: 117, column: 7)
!3814 = !DILocation(line: 117, column: 7, scope: !3798)
!3815 = !DILocation(line: 130, column: 16, scope: !3798)
!3816 = !DILocation(line: 135, column: 11, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3798, file: !710, line: 135, column: 7)
!3818 = !DILocation(line: 135, column: 25, scope: !3817)
!3819 = !DILocation(line: 135, column: 30, scope: !3817)
!3820 = !DILocation(line: 135, column: 7, scope: !3798)
!3821 = !DILocalVariable(name: "ps", arg: 1, scope: !3822, file: !1587, line: 1135, type: !3801)
!3822 = distinct !DISubprogram(name: "mbszero", scope: !1587, file: !1587, line: 1135, type: !3823, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3825)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3801}
!3825 = !{!3821}
!3826 = !DILocation(line: 0, scope: !3822, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 137, column: 5, scope: !3817)
!3828 = !DILocalVariable(name: "__dest", arg: 1, scope: !3829, file: !1596, line: 57, type: !110)
!3829 = distinct !DISubprogram(name: "memset", scope: !1596, file: !1596, line: 57, type: !1597, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3830)
!3830 = !{!3828, !3831, !3832}
!3831 = !DILocalVariable(name: "__ch", arg: 2, scope: !3829, file: !1596, line: 57, type: !68)
!3832 = !DILocalVariable(name: "__len", arg: 3, scope: !3829, file: !1596, line: 57, type: !112)
!3833 = !DILocation(line: 0, scope: !3829, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 1137, column: 3, scope: !3822, inlinedAt: !3827)
!3835 = !DILocation(line: 59, column: 10, scope: !3829, inlinedAt: !3834)
!3836 = !DILocation(line: 137, column: 5, scope: !3817)
!3837 = !DILocation(line: 138, column: 11, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3798, file: !710, line: 138, column: 7)
!3839 = !DILocation(line: 138, column: 7, scope: !3798)
!3840 = !DILocation(line: 139, column: 5, scope: !3838)
!3841 = !DILocation(line: 143, column: 26, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3798, file: !710, line: 143, column: 7)
!3843 = !DILocation(line: 143, column: 41, scope: !3842)
!3844 = !DILocation(line: 143, column: 7, scope: !3798)
!3845 = !DILocation(line: 145, column: 15, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !710, line: 145, column: 11)
!3847 = distinct !DILexicalBlock(scope: !3842, file: !710, line: 144, column: 5)
!3848 = !DILocation(line: 145, column: 11, scope: !3847)
!3849 = !DILocation(line: 146, column: 32, scope: !3846)
!3850 = !DILocation(line: 146, column: 16, scope: !3846)
!3851 = !DILocation(line: 146, column: 14, scope: !3846)
!3852 = !DILocation(line: 146, column: 9, scope: !3846)
!3853 = !DILocation(line: 286, column: 1, scope: !3798)
!3854 = !DISubprogram(name: "mbsinit", scope: !3855, file: !3855, line: 293, type: !3856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !859)
!3855 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!68, !3858}
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!3860 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !785, file: !785, line: 27, type: !3070, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3861)
!3861 = !{!3862, !3863, !3864, !3865}
!3862 = !DILocalVariable(name: "ptr", arg: 1, scope: !3860, file: !785, line: 27, type: !110)
!3863 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3860, file: !785, line: 27, type: !112)
!3864 = !DILocalVariable(name: "size", arg: 3, scope: !3860, file: !785, line: 27, type: !112)
!3865 = !DILocalVariable(name: "nbytes", scope: !3860, file: !785, line: 29, type: !112)
!3866 = !DILocation(line: 0, scope: !3860)
!3867 = !DILocation(line: 30, column: 7, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3860, file: !785, line: 30, column: 7)
!3869 = !DILocalVariable(name: "ptr", arg: 1, scope: !3870, file: !3162, line: 2057, type: !110)
!3870 = distinct !DISubprogram(name: "rpl_realloc", scope: !3162, file: !3162, line: 2057, type: !3154, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3871)
!3871 = !{!3869, !3872}
!3872 = !DILocalVariable(name: "size", arg: 2, scope: !3870, file: !3162, line: 2057, type: !112)
!3873 = !DILocation(line: 0, scope: !3870, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 37, column: 10, scope: !3860)
!3875 = !DILocation(line: 2059, column: 24, scope: !3870, inlinedAt: !3874)
!3876 = !DILocation(line: 2059, column: 10, scope: !3870, inlinedAt: !3874)
!3877 = !DILocation(line: 37, column: 3, scope: !3860)
!3878 = !DILocation(line: 32, column: 7, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3868, file: !785, line: 31, column: 5)
!3880 = !DILocation(line: 32, column: 13, scope: !3879)
!3881 = !DILocation(line: 33, column: 7, scope: !3879)
!3882 = !DILocation(line: 38, column: 1, scope: !3860)
!3883 = distinct !DISubprogram(name: "hard_locale", scope: !728, file: !728, line: 28, type: !3884, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!156, !68}
!3886 = !{!3887, !3888}
!3887 = !DILocalVariable(name: "category", arg: 1, scope: !3883, file: !728, line: 28, type: !68)
!3888 = !DILocalVariable(name: "locale", scope: !3883, file: !728, line: 30, type: !3889)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3890)
!3890 = !{!3891}
!3891 = !DISubrange(count: 257)
!3892 = !DILocation(line: 0, scope: !3883)
!3893 = !DILocation(line: 30, column: 3, scope: !3883)
!3894 = !DILocation(line: 30, column: 8, scope: !3883)
!3895 = !DILocation(line: 32, column: 7, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3883, file: !728, line: 32, column: 7)
!3897 = !DILocation(line: 32, column: 7, scope: !3883)
!3898 = !DILocalVariable(name: "__s1", arg: 1, scope: !3899, file: !887, line: 1359, type: !115)
!3899 = distinct !DISubprogram(name: "streq", scope: !887, file: !887, line: 1359, type: !888, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !3900)
!3900 = !{!3898, !3901}
!3901 = !DILocalVariable(name: "__s2", arg: 2, scope: !3899, file: !887, line: 1359, type: !115)
!3902 = !DILocation(line: 0, scope: !3899, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 35, column: 9, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3883, file: !728, line: 35, column: 7)
!3905 = !DILocation(line: 1361, column: 11, scope: !3899, inlinedAt: !3903)
!3906 = !DILocation(line: 1361, column: 10, scope: !3899, inlinedAt: !3903)
!3907 = !DILocation(line: 35, column: 29, scope: !3904)
!3908 = !DILocation(line: 0, scope: !3899, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 35, column: 32, scope: !3904)
!3910 = !DILocation(line: 1361, column: 11, scope: !3899, inlinedAt: !3909)
!3911 = !DILocation(line: 1361, column: 10, scope: !3899, inlinedAt: !3909)
!3912 = !DILocation(line: 35, column: 7, scope: !3883)
!3913 = !DILocation(line: 46, column: 3, scope: !3883)
!3914 = !DILocation(line: 47, column: 1, scope: !3883)
!3915 = distinct !DISubprogram(name: "setlocale_null_r", scope: !790, file: !790, line: 154, type: !3916, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!68, !68, !109, !112}
!3918 = !{!3919, !3920, !3921}
!3919 = !DILocalVariable(name: "category", arg: 1, scope: !3915, file: !790, line: 154, type: !68)
!3920 = !DILocalVariable(name: "buf", arg: 2, scope: !3915, file: !790, line: 154, type: !109)
!3921 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3915, file: !790, line: 154, type: !112)
!3922 = !DILocation(line: 0, scope: !3915)
!3923 = !DILocation(line: 159, column: 10, scope: !3915)
!3924 = !DILocation(line: 159, column: 3, scope: !3915)
!3925 = distinct !DISubprogram(name: "setlocale_null", scope: !790, file: !790, line: 186, type: !3926, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!115, !68}
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "category", arg: 1, scope: !3925, file: !790, line: 186, type: !68)
!3930 = !DILocation(line: 0, scope: !3925)
!3931 = !DILocation(line: 189, column: 10, scope: !3925)
!3932 = !DILocation(line: 189, column: 3, scope: !3925)
!3933 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !792, file: !792, line: 35, type: !3926, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !3934)
!3934 = !{!3935, !3936}
!3935 = !DILocalVariable(name: "category", arg: 1, scope: !3933, file: !792, line: 35, type: !68)
!3936 = !DILocalVariable(name: "result", scope: !3933, file: !792, line: 37, type: !115)
!3937 = !DILocation(line: 0, scope: !3933)
!3938 = !DILocation(line: 37, column: 24, scope: !3933)
!3939 = !DILocation(line: 62, column: 3, scope: !3933)
!3940 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !792, file: !792, line: 66, type: !3916, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946}
!3942 = !DILocalVariable(name: "category", arg: 1, scope: !3940, file: !792, line: 66, type: !68)
!3943 = !DILocalVariable(name: "buf", arg: 2, scope: !3940, file: !792, line: 66, type: !109)
!3944 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3940, file: !792, line: 66, type: !112)
!3945 = !DILocalVariable(name: "result", scope: !3940, file: !792, line: 111, type: !115)
!3946 = !DILocalVariable(name: "length", scope: !3947, file: !792, line: 125, type: !112)
!3947 = distinct !DILexicalBlock(scope: !3948, file: !792, line: 124, column: 5)
!3948 = distinct !DILexicalBlock(scope: !3940, file: !792, line: 113, column: 7)
!3949 = !DILocation(line: 0, scope: !3940)
!3950 = !DILocation(line: 0, scope: !3933, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 111, column: 24, scope: !3940)
!3952 = !DILocation(line: 37, column: 24, scope: !3933, inlinedAt: !3951)
!3953 = !DILocation(line: 113, column: 14, scope: !3948)
!3954 = !DILocation(line: 113, column: 7, scope: !3940)
!3955 = !DILocation(line: 116, column: 19, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !792, line: 116, column: 11)
!3957 = distinct !DILexicalBlock(scope: !3948, file: !792, line: 114, column: 5)
!3958 = !DILocation(line: 116, column: 11, scope: !3957)
!3959 = !DILocation(line: 120, column: 16, scope: !3956)
!3960 = !DILocation(line: 120, column: 9, scope: !3956)
!3961 = !DILocation(line: 125, column: 23, scope: !3947)
!3962 = !DILocation(line: 0, scope: !3947)
!3963 = !DILocation(line: 126, column: 18, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3947, file: !792, line: 126, column: 11)
!3965 = !DILocation(line: 126, column: 11, scope: !3947)
!3966 = !DILocation(line: 128, column: 39, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3964, file: !792, line: 127, column: 9)
!3968 = !DILocalVariable(name: "__dest", arg: 1, scope: !3969, file: !1596, line: 26, type: !3430)
!3969 = distinct !DISubprogram(name: "memcpy", scope: !1596, file: !1596, line: 26, type: !3428, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !3970)
!3970 = !{!3968, !3971, !3972}
!3971 = !DILocalVariable(name: "__src", arg: 2, scope: !3969, file: !1596, line: 26, type: !1018)
!3972 = !DILocalVariable(name: "__len", arg: 3, scope: !3969, file: !1596, line: 26, type: !112)
!3973 = !DILocation(line: 0, scope: !3969, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 128, column: 11, scope: !3967)
!3975 = !DILocation(line: 29, column: 10, scope: !3969, inlinedAt: !3974)
!3976 = !DILocation(line: 129, column: 11, scope: !3967)
!3977 = !DILocation(line: 133, column: 23, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !792, line: 133, column: 15)
!3979 = distinct !DILexicalBlock(scope: !3964, file: !792, line: 132, column: 9)
!3980 = !DILocation(line: 133, column: 15, scope: !3979)
!3981 = !DILocation(line: 138, column: 44, scope: !3982)
!3982 = distinct !DILexicalBlock(scope: !3978, file: !792, line: 134, column: 13)
!3983 = !DILocation(line: 0, scope: !3969, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 138, column: 15, scope: !3982)
!3985 = !DILocation(line: 29, column: 10, scope: !3969, inlinedAt: !3984)
!3986 = !DILocation(line: 139, column: 15, scope: !3982)
!3987 = !DILocation(line: 139, column: 32, scope: !3982)
!3988 = !DILocation(line: 140, column: 13, scope: !3982)
!3989 = !DILocation(line: 0, scope: !3948)
!3990 = !DILocation(line: 145, column: 1, scope: !3940)
