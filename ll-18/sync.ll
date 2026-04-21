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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !435
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !401
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !425
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !427
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !429
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !431
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !433
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !437
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !439
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !444
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !449
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !467
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !473
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !475
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !477
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !508
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !511
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !513
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !515
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !517
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !519
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !521
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !523
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !525
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !527
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 8, !dbg !529
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !542
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !556
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !594
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !601
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !558
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !603
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !546
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !563
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !565
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !567
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !569
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !571
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !609
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !612
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !614
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !616
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !618
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !620
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !625
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !630
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !632
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !637
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !642
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !647
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !649
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !651
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !656
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !661
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !666
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !671
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !673
@.str.19.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !675
@.str.20.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !677
@.str.21.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !679
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !681
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !683
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !688
@exit_failure = dso_local global i32 1, align 4, !dbg !696
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !702
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !705
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !707
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !709
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !712
@.str.136 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !727
@.str.1.137 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !730

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !803 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !807, metadata !DIExpression()), !dbg !808
  %2 = icmp eq i32 %0, 0, !dbg !809
  br i1 %2, label %8, label %3, !dbg !811

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !812, !tbaa !814
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !812
  %6 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !814
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !812
  br label %33, !dbg !812

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !818
  %10 = load ptr, ptr @program_name, align 8, !dbg !818, !tbaa !814
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !818
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !820
  %13 = load ptr, ptr @stdout, align 8, !dbg !820, !tbaa !814
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !820
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !821
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !821
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !822
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !822
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !823
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !823
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !824
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !824
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata !844, metadata !838, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata ptr poison, metadata !837, metadata !DIExpression()), !dbg !842
  tail call void @emit_bug_reporting_address() #38, !dbg !845
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !846
  call void @llvm.dbg.value(metadata ptr %19, metadata !840, metadata !DIExpression()), !dbg !842
  %20 = icmp eq ptr %19, null, !dbg !847
  br i1 %20, label %28, label %21, !dbg !849

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #39, !dbg !850
  %23 = icmp eq i32 %22, 0, !dbg !850
  br i1 %23, label %28, label %24, !dbg !851

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !852
  %26 = load ptr, ptr @stdout, align 8, !dbg !852, !tbaa !814
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !852
  br label %28, !dbg !854

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !837, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !841, metadata !DIExpression()), !dbg !842
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !855
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #38, !dbg !855
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !856
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #38, !dbg !856
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !857
  unreachable, !dbg !857
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !858 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !862 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !868 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !871 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !874
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !874
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !875, !tbaa !876
  %3 = icmp eq i32 %2, -1, !dbg !878
  br i1 %3, label %4, label %16, !dbg !879

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #38, !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !881
  %6 = icmp eq ptr %5, null, !dbg !882
  br i1 %6, label %14, label %7, !dbg !883

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !884, !tbaa !885
  %9 = icmp eq i8 %8, 0, !dbg !884
  br i1 %9, label %14, label %10, !dbg !886

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !887, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !893, metadata !DIExpression()), !dbg !894
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #39, !dbg !896
  %12 = icmp eq i32 %11, 0, !dbg !897
  %13 = zext i1 %12 to i32, !dbg !886
  br label %14, !dbg !886

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !898, !tbaa !876
  br label %16, !dbg !899

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !900
  %18 = icmp eq i32 %17, 0, !dbg !900
  br i1 %18, label %22, label %19, !dbg !902

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !903, !tbaa !814
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !903
  br label %121, !dbg !905

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !874
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #39, !dbg !906
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !907
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !874
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !908
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !158, metadata !DIExpression()), !dbg !874
  %26 = icmp eq ptr %25, null, !dbg !909
  br i1 %26, label %53, label %27, !dbg !910

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !911
  br i1 %28, label %53, label %29, !dbg !912

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()), !dbg !913
  %30 = icmp ult ptr %24, %25, !dbg !914
  br i1 %30, label %31, label %53, !dbg !915

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !874
  %33 = load ptr, ptr %32, align 8, !tbaa !814
  br label %34, !dbg !915

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !159, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !163, metadata !DIExpression()), !dbg !913
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !916
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !159, metadata !DIExpression()), !dbg !913
  %38 = load i8, ptr %35, align 1, !dbg !916, !tbaa !885
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !916
  %41 = load i16, ptr %40, align 2, !dbg !916, !tbaa !917
  %42 = freeze i16 %41, !dbg !919
  %43 = lshr i16 %42, 13, !dbg !919
  %44 = and i16 %43, 1, !dbg !919
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !920
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !163, metadata !DIExpression()), !dbg !913
  %47 = icmp ult ptr %37, %25, !dbg !914
  %48 = icmp ult i64 %46, 2, !dbg !921
  %49 = select i1 %47, i1 %48, i1 false, !dbg !921
  br i1 %49, label %34, label %50, !dbg !915, !llvm.loop !922

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !920
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !924
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !926
  br label %53, !dbg !926

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !874
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !874
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !158, metadata !DIExpression()), !dbg !874
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.20) #39, !dbg !927
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !164, metadata !DIExpression()), !dbg !874
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !928
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !165, metadata !DIExpression()), !dbg !874
  br label %58, !dbg !929

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !874
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !874
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !165, metadata !DIExpression()), !dbg !874
  %61 = load i8, ptr %59, align 1, !dbg !930, !tbaa !885
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !931

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !932
  %64 = load i8, ptr %63, align 1, !dbg !935, !tbaa !885
  %65 = icmp ne i8 %64, 45, !dbg !936
  %66 = select i1 %65, i1 %60, i1 false, !dbg !937
  br label %67, !dbg !937

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !874
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !938
  %70 = load ptr, ptr %69, align 8, !dbg !938, !tbaa !814
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !938
  %73 = load i16, ptr %72, align 2, !dbg !938, !tbaa !917
  %74 = and i16 %73, 8192, !dbg !938
  %75 = icmp eq i16 %74, 0, !dbg !938
  br i1 %75, label %89, label %76, !dbg !940

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !941
  br i1 %77, label %91, label %78, !dbg !944

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !945
  %80 = load i8, ptr %79, align 1, !dbg !945, !tbaa !885
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !945
  %83 = load i16, ptr %82, align 2, !dbg !945, !tbaa !917
  %84 = and i16 %83, 8192, !dbg !945
  %85 = icmp eq i16 %84, 0, !dbg !945
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !946
  br i1 %88, label %89, label %91, !dbg !946

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !165, metadata !DIExpression()), !dbg !874
  br label %58, !dbg !929, !llvm.loop !948

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !874
  %92 = ptrtoint ptr %24 to i64, !dbg !950
  %93 = load ptr, ptr @stdout, align 8, !dbg !950, !tbaa !814
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !950
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !887, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata !844, metadata !893, metadata !DIExpression()), !dbg !969
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !222, metadata !DIExpression()), !dbg !874
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #39, !dbg !971
  %96 = icmp eq i32 %95, 0, !dbg !971
  br i1 %96, label %100, label %97, !dbg !973

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #39, !dbg !974
  %99 = icmp eq i32 %98, 0, !dbg !974
  br i1 %99, label %100, label %103, !dbg !975

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !976
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !976
  br label %106, !dbg !978

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !979
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !979
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !814
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %107), !dbg !981
  %109 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !814
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %109), !dbg !982
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !983
  %112 = sub i64 %111, %92, !dbg !983
  %113 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !814
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !983
  %115 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !814
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %115), !dbg !984
  %117 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !814
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %117), !dbg !985
  %119 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !814
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !986
  br label %121, !dbg !987

121:                                              ; preds = %106, %19
  ret void, !dbg !987
}

; Function Attrs: nounwind
declare !dbg !988 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !992 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !996 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !998 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1001 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1004 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1007 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1010 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1016 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1017 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1023 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1028, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1029, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1030, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1031, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1032, metadata !DIExpression()), !dbg !1036
  %3 = load ptr, ptr %1, align 8, !dbg !1037, !tbaa !814
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1038
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1039
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1040
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1041
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1042
  br label %8, !dbg !1043

8:                                                ; preds = %14, %2
  %9 = phi i1 [ true, %14 ], [ false, %2 ]
  %10 = phi i1 [ %15, %14 ], [ false, %2 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1031, metadata !DIExpression()), !dbg !1036
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1033, metadata !DIExpression()), !dbg !1036
  switch i32 %11, label %.loopexit6 [
    i32 -1, label %.loopexit7
    i32 100, label %.preheader1
    i32 102, label %14
    i32 -2, label %.loopexit8
    i32 -3, label %.loopexit9
  ], !dbg !1043

.preheader1:                                      ; preds = %8
  br label %12, !dbg !1043

12:                                               ; preds = %.preheader1, %12
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1031, metadata !DIExpression()), !dbg !1036
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1033, metadata !DIExpression()), !dbg !1036
  switch i32 %13, label %.loopexit [
    i32 -1, label %.loopexit2
    i32 100, label %12
    i32 102, label %.loopexit3
    i32 -2, label %.loopexit4
    i32 -3, label %.loopexit5
  ], !dbg !1043, !llvm.loop !1045

.loopexit3:                                       ; preds = %12
  br label %14, !dbg !1048

14:                                               ; preds = %.loopexit3, %8
  %15 = phi i1 [ %10, %8 ], [ true, %.loopexit3 ]
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1031, metadata !DIExpression()), !dbg !1036
  br label %8, !dbg !1048, !llvm.loop !1051

.loopexit4:                                       ; preds = %12
  br label %16, !dbg !1052

.loopexit8:                                       ; preds = %8
  br label %16, !dbg !1052

16:                                               ; preds = %.loopexit8, %.loopexit4
  tail call void @usage(i32 noundef 0) #42, !dbg !1052
  unreachable, !dbg !1052

.loopexit5:                                       ; preds = %12
  br label %17, !dbg !1053

.loopexit9:                                       ; preds = %8
  br label %17, !dbg !1053

17:                                               ; preds = %.loopexit9, %.loopexit5
  %18 = load ptr, ptr @stdout, align 8, !dbg !1053, !tbaa !814
  %19 = load ptr, ptr @Version, align 8, !dbg !1053, !tbaa !814
  %20 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1053
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1053
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef null) #38, !dbg !1053
  tail call void @exit(i32 noundef 0) #40, !dbg !1053
  unreachable, !dbg !1053

.loopexit:                                        ; preds = %12
  br label %22, !dbg !1054

.loopexit6:                                       ; preds = %8
  br label %22, !dbg !1054

22:                                               ; preds = %.loopexit6, %.loopexit
  tail call void @usage(i32 noundef 1) #42, !dbg !1054
  unreachable, !dbg !1054

.loopexit2:                                       ; preds = %12
  %.lcssa23 = phi i1 [ %9, %12 ]
  br label %23, !dbg !1055

.loopexit7:                                       ; preds = %8
  %.lcssa19 = phi i1 [ %9, %8 ]
  %.lcssa11 = phi i1 [ %10, %8 ]
  br label %23, !dbg !1055

23:                                               ; preds = %.loopexit7, %.loopexit2
  %24 = phi i1 [ %.lcssa23, %.loopexit2 ], [ %.lcssa19, %.loopexit7 ]
  %25 = phi i1 [ true, %.loopexit2 ], [ %.lcssa11, %.loopexit7 ]
  %26 = load i32, ptr @optind, align 4, !dbg !1055, !tbaa !876
  %27 = icmp sge i32 %26, %0, !dbg !1056
  tail call void @llvm.dbg.value(metadata i1 %27, metadata !1034, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1036
  %28 = and i1 %25, %24, !dbg !1057
  br i1 %28, label %29, label %31, !dbg !1057

29:                                               ; preds = %23
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1059
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %30) #38, !dbg !1059
  unreachable, !dbg !1059

31:                                               ; preds = %23
  %32 = and i1 %27, %25, !dbg !1060
  br i1 %32, label %33, label %35, !dbg !1060

33:                                               ; preds = %31
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %34) #38, !dbg !1062
  unreachable, !dbg !1062

35:                                               ; preds = %31
  %36 = zext i1 %25 to i32, !dbg !1063
  %37 = select i1 %24, i32 2, i32 %36, !dbg !1063
  %38 = select i1 %27, i32 3, i32 %37, !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !1035, metadata !DIExpression()), !dbg !1036
  br i1 %27, label %39, label %.preheader, !dbg !1065

.preheader:                                       ; preds = %35
  br label %40, !dbg !1066

39:                                               ; preds = %35
  tail call void @sync() #38, !dbg !1070
  br label %99, !dbg !1070

40:                                               ; preds = %.preheader, %90
  %41 = phi i32 [ %94, %90 ], [ %26, %.preheader ]
  %42 = phi i1 [ %92, %90 ], [ true, %.preheader ]
  %43 = sext i32 %41 to i64, !dbg !1071
  %44 = getelementptr inbounds ptr, ptr %1, i64 %43, !dbg !1071
  %45 = load ptr, ptr %44, align 8, !dbg !1071, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %38, metadata !1073, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %45, metadata !1078, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 2048, metadata !1079, metadata !DIExpression()), !dbg !1089
  %46 = tail call i32 (ptr, i32, ...) @open(ptr noundef %45, i32 noundef 2048) #38, !dbg !1091
  call void @llvm.dbg.value(metadata i32 %46, metadata !1080, metadata !DIExpression()), !dbg !1089
  %47 = icmp slt i32 %46, 0, !dbg !1092
  br i1 %47, label %48, label %53, !dbg !1093

48:                                               ; preds = %40
  %49 = tail call ptr @__errno_location() #41, !dbg !1094
  %50 = load i32, ptr %49, align 4, !dbg !1094, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %50, metadata !1081, metadata !DIExpression()), !dbg !1095
  %51 = tail call i32 (ptr, i32, ...) @open(ptr noundef %45, i32 noundef 2049) #38, !dbg !1096
  call void @llvm.dbg.value(metadata i32 %51, metadata !1080, metadata !DIExpression()), !dbg !1089
  %52 = icmp sgt i32 %51, -1, !dbg !1098
  br i1 %52, label %53, label %85, !dbg !1100

53:                                               ; preds = %48, %40
  %54 = phi i32 [ %46, %40 ], [ %51, %48 ], !dbg !1089
  call void @llvm.dbg.value(metadata i32 %54, metadata !1080, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1084, metadata !DIExpression()), !dbg !1089
  %55 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %54, i32 noundef 3) #38, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %55, metadata !1085, metadata !DIExpression()), !dbg !1089
  %56 = icmp eq i32 %55, -1, !dbg !1102
  br i1 %56, label %72, label %57, !dbg !1104

57:                                               ; preds = %53
  %58 = and i32 %55, -2049, !dbg !1105
  %59 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %54, i32 noundef 4, i32 noundef %58) #38, !dbg !1106
  %60 = icmp slt i32 %59, 0, !dbg !1107
  br i1 %60, label %72, label %61, !dbg !1108

61:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i8 poison, metadata !1084, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 -1, metadata !1086, metadata !DIExpression()), !dbg !1109
  switch i32 %38, label %68 [
    i32 1, label %62
    i32 0, label %64
    i32 2, label %66
  ], !dbg !1110

62:                                               ; preds = %61
  %63 = tail call i32 @fdatasync(i32 noundef %54) #38, !dbg !1111
  call void @llvm.dbg.value(metadata i32 %63, metadata !1086, metadata !DIExpression()), !dbg !1109
  br label %69, !dbg !1113

64:                                               ; preds = %61
  %65 = tail call i32 @fsync(i32 noundef %54) #38, !dbg !1114
  call void @llvm.dbg.value(metadata i32 %65, metadata !1086, metadata !DIExpression()), !dbg !1109
  br label %69, !dbg !1115

66:                                               ; preds = %61
  %67 = tail call i32 @syncfs(i32 noundef %54) #38, !dbg !1116
  call void @llvm.dbg.value(metadata i32 %67, metadata !1086, metadata !DIExpression()), !dbg !1109
  br label %69, !dbg !1117

68:                                               ; preds = %61
  unreachable, !dbg !1118

69:                                               ; preds = %66, %64, %62
  %70 = phi i32 [ %67, %66 ], [ %65, %64 ], [ %63, %62 ], !dbg !1119
  call void @llvm.dbg.value(metadata i32 %70, metadata !1086, metadata !DIExpression()), !dbg !1109
  %71 = icmp slt i32 %70, 0, !dbg !1120
  br i1 %71, label %72, label %78, !dbg !1122

72:                                               ; preds = %69, %57, %53
  %73 = phi ptr [ @.str.57, %53 ], [ @.str.57, %57 ], [ @.str.58, %69 ]
  %74 = tail call ptr @__errno_location() #41, !dbg !1089
  %75 = load i32, ptr %74, align 4, !dbg !1089, !tbaa !876
  %76 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %73, i32 noundef 5) #38, !dbg !1089
  %77 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %45) #38, !dbg !1089
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %75, ptr noundef %76, ptr noundef %77) #38, !dbg !1089
  br label %78, !dbg !1123

78:                                               ; preds = %72, %69
  %79 = phi i1 [ true, %69 ], [ false, %72 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1084, metadata !DIExpression()), !dbg !1089
  %80 = tail call i32 @close(i32 noundef %54) #38, !dbg !1123
  %81 = icmp slt i32 %80, 0, !dbg !1125
  br i1 %81, label %82, label %90, !dbg !1126

82:                                               ; preds = %78
  %83 = tail call ptr @__errno_location() #41, !dbg !1127
  %84 = load i32, ptr %83, align 4, !dbg !1127, !tbaa !876
  call void @llvm.dbg.value(metadata i8 0, metadata !1084, metadata !DIExpression()), !dbg !1089
  br label %85, !dbg !1129

85:                                               ; preds = %82, %48
  %86 = phi ptr [ @.str.59, %82 ], [ @.str.56, %48 ]
  %87 = phi i32 [ %84, %82 ], [ %50, %48 ]
  %88 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %86, i32 noundef 5) #38, !dbg !1089
  %89 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %45) #38, !dbg !1089
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %87, ptr noundef %88, ptr noundef %89) #38, !dbg !1089
  br label %90, !dbg !1130

90:                                               ; preds = %78, %85
  %91 = phi i1 [ %79, %78 ], [ false, %85 ], !dbg !1089
  %92 = and i1 %42, %91, !dbg !1131
  tail call void @llvm.dbg.value(metadata i1 %92, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1036
  %93 = load i32, ptr @optind, align 4, !dbg !1132, !tbaa !876
  %94 = add nsw i32 %93, 1, !dbg !1132
  store i32 %94, ptr @optind, align 4, !dbg !1132, !tbaa !876
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1032, metadata !DIExpression()), !dbg !1036
  %95 = icmp slt i32 %94, %0, !dbg !1133
  br i1 %95, label %40, label %96, !dbg !1066, !llvm.loop !1134

96:                                               ; preds = %90
  %.lcssa = phi i1 [ %92, %90 ], !dbg !1131
  %97 = xor i1 %.lcssa, true, !dbg !1136
  %98 = zext i1 %97 to i32, !dbg !1136
  br label %99, !dbg !1136

99:                                               ; preds = %96, %39
  %100 = phi i32 [ 0, %39 ], [ %98, %96 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1032, metadata !DIExpression()), !dbg !1036
  ret i32 %100, !dbg !1137
}

; Function Attrs: nounwind
declare !dbg !1138 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1141 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1142 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1145 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1151 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1153 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1157 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1161 i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare !dbg !1164 i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1165 i32 @syncfs(i32 noundef) local_unnamed_addr #2

declare !dbg !1166 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1167 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1169, metadata !DIExpression()), !dbg !1170
  store ptr %0, ptr @file_name, align 8, !dbg !1171, !tbaa !814
  ret void, !dbg !1172
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #12 !dbg !1173 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1179, !tbaa !1180
  ret void, !dbg !1182
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1183 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1188, !tbaa !814
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1189
  %3 = icmp eq i32 %2, 0, !dbg !1190
  br i1 %3, label %22, label %4, !dbg !1191

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1192, !tbaa !1180, !range !1193, !noundef !844
  %6 = icmp eq i8 %5, 0, !dbg !1192
  br i1 %6, label %11, label %7, !dbg !1194

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1195
  %9 = load i32, ptr %8, align 4, !dbg !1195, !tbaa !876
  %10 = icmp eq i32 %9, 32, !dbg !1196
  br i1 %10, label %22, label %11, !dbg !1197

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #38, !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1185, metadata !DIExpression()), !dbg !1199
  %13 = load ptr, ptr @file_name, align 8, !dbg !1200, !tbaa !814
  %14 = icmp eq ptr %13, null, !dbg !1200
  %15 = tail call ptr @__errno_location() #41, !dbg !1202
  %16 = load i32, ptr %15, align 4, !dbg !1202, !tbaa !876
  br i1 %14, label %19, label %17, !dbg !1203

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1204
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #38, !dbg !1204
  br label %20, !dbg !1204

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #38, !dbg !1205
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1206, !tbaa !876
  tail call void @_exit(i32 noundef %21) #40, !dbg !1207
  unreachable, !dbg !1207

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1208, !tbaa !814
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1210
  %25 = icmp eq i32 %24, 0, !dbg !1211
  br i1 %25, label %28, label %26, !dbg !1212

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1213, !tbaa !876
  tail call void @_exit(i32 noundef %27) #40, !dbg !1214
  unreachable, !dbg !1214

28:                                               ; preds = %22
  ret void, !dbg !1215
}

; Function Attrs: noreturn
declare !dbg !1216 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #14 !dbg !1217 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1221, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1222, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1223, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1224, metadata !DIExpression(DW_OP_deref)), !dbg !1225
  tail call fastcc void @flush_stdout(), !dbg !1226
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1227, !tbaa !814
  %7 = icmp eq ptr %6, null, !dbg !1227
  br i1 %7, label %9, label %8, !dbg !1229

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !1230
  br label %13, !dbg !1230

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1231, !tbaa !814
  %11 = tail call ptr @getprogname() #39, !dbg !1231
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %11) #38, !dbg !1231
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1233, !tbaa.struct !1234
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1233
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1233
  ret void, !dbg !1235
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1236 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1238, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i32 1, metadata !1240, metadata !DIExpression()), !dbg !1243
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1246
  %2 = icmp slt i32 %1, 0, !dbg !1247
  br i1 %2, label %6, label %3, !dbg !1248

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1249, !tbaa !814
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1249
  br label %6, !dbg !1249

6:                                                ; preds = %3, %0
  ret void, !dbg !1250
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1251 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1257
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1253, metadata !DIExpression()), !dbg !1258
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1254, metadata !DIExpression()), !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1258
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1256, metadata !DIExpression(DW_OP_deref)), !dbg !1258
  %7 = load ptr, ptr @stderr, align 8, !dbg !1259, !tbaa !814
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1260, !noalias !1304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1308
  call void @llvm.dbg.value(metadata ptr %7, metadata !1300, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %2, metadata !1301, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr poison, metadata !1302, metadata !DIExpression(DW_OP_deref)), !dbg !1309
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !1260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1260, !noalias !1304
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1310, !tbaa !876
  %10 = add i32 %9, 1, !dbg !1310
  store i32 %10, ptr @error_message_count, align 4, !dbg !1310, !tbaa !876
  %11 = icmp eq i32 %1, 0, !dbg !1311
  br i1 %11, label %21, label %12, !dbg !1313

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1314, metadata !DIExpression(), metadata !1257, metadata ptr %5, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %1, metadata !1317, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1324
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1325
  call void @llvm.dbg.value(metadata ptr %13, metadata !1318, metadata !DIExpression()), !dbg !1322
  %14 = icmp eq ptr %13, null, !dbg !1326
  br i1 %14, label %15, label %17, !dbg !1328

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #38, !dbg !1329
  call void @llvm.dbg.value(metadata ptr %16, metadata !1318, metadata !DIExpression()), !dbg !1322
  br label %17, !dbg !1330

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1322
  call void @llvm.dbg.value(metadata ptr %18, metadata !1318, metadata !DIExpression()), !dbg !1322
  %19 = load ptr, ptr @stderr, align 8, !dbg !1331, !tbaa !814
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %18) #38, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1332
  br label %21, !dbg !1333

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1334, !tbaa !814
  call void @llvm.dbg.value(metadata i32 10, metadata !1335, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata ptr %22, metadata !1341, metadata !DIExpression()), !dbg !1342
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1344
  %24 = load ptr, ptr %23, align 8, !dbg !1344, !tbaa !1345
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1344
  %26 = load ptr, ptr %25, align 8, !dbg !1344, !tbaa !1348
  %27 = icmp ult ptr %24, %26, !dbg !1344
  br i1 %27, label %30, label %28, !dbg !1344, !prof !1349

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !1344
  br label %32, !dbg !1344

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1344
  store ptr %31, ptr %23, align 8, !dbg !1344, !tbaa !1345
  store i8 10, ptr %24, align 1, !dbg !1344, !tbaa !885
  br label %32, !dbg !1344

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1350, !tbaa !814
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !1350
  %35 = icmp eq i32 %0, 0, !dbg !1351
  br i1 %35, label %37, label %36, !dbg !1353

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !1354
  unreachable, !dbg !1354

37:                                               ; preds = %32
  ret void, !dbg !1355
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1356 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1359 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1362 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1365 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1368 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1371 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1378, metadata !DIExpression(), metadata !1379, metadata ptr %4, metadata !DIExpression()), !dbg !1380
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1375, metadata !DIExpression()), !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1376, metadata !DIExpression()), !dbg !1380
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1377, metadata !DIExpression()), !dbg !1380
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !1381
  call void @llvm.va_start(ptr nonnull %4), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !1383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1383, !tbaa.struct !1234
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !1383
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !1383
  call void @llvm.va_end(ptr nonnull %4), !dbg !1384
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !1385
  ret void, !dbg !1385
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #14 !dbg !403 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !419, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !420, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !422, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !423, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !424, metadata !DIExpression(DW_OP_deref)), !dbg !1386
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1387, !tbaa !876
  %9 = icmp eq i32 %8, 0, !dbg !1387
  br i1 %9, label %24, label %10, !dbg !1389

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1390, !tbaa !876
  %12 = icmp eq i32 %11, %3, !dbg !1393
  br i1 %12, label %13, label %23, !dbg !1394

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1395, !tbaa !814
  %15 = icmp eq ptr %14, %2, !dbg !1396
  br i1 %15, label %37, label %16, !dbg !1397

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1398
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1399
  br i1 %19, label %20, label %23, !dbg !1399

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1400
  %22 = icmp eq i32 %21, 0, !dbg !1401
  br i1 %22, label %37, label %23, !dbg !1402

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1403, !tbaa !814
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1404, !tbaa !876
  br label %24, !dbg !1405

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1406
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1407, !tbaa !814
  %26 = icmp eq ptr %25, null, !dbg !1407
  br i1 %26, label %28, label %27, !dbg !1409

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !1410
  br label %32, !dbg !1410

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1411, !tbaa !814
  %30 = tail call ptr @getprogname() #39, !dbg !1411
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %30) #38, !dbg !1411
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1413, !tbaa !814
  %34 = icmp eq ptr %2, null, !dbg !1413
  %35 = select i1 %34, ptr @.str.3.35, ptr @.str.2.36, !dbg !1413
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !1413
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1414, !tbaa.struct !1234
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1414
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1414
  br label %37, !dbg !1415

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1415
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1416 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1425, metadata !DIExpression(), metadata !1426, metadata ptr %6, metadata !DIExpression()), !dbg !1427
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1420, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1421, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1422, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1423, metadata !DIExpression()), !dbg !1427
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1424, metadata !DIExpression()), !dbg !1427
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !1428
  call void @llvm.va_start(ptr nonnull %6), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1430, !tbaa.struct !1234
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !1430
  call void @llvm.va_end(ptr nonnull %6), !dbg !1431
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !1432
  ret void, !dbg !1432
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1433 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !1460
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1437, metadata !DIExpression(), metadata !1460, metadata ptr %3, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1435, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1436, metadata !DIExpression()), !dbg !1461
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #38, !dbg !1462
  call void @llvm.va_start(ptr nonnull %3), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1448, metadata !DIExpression()), !dbg !1461
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
  ], !dbg !1464

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1465
  %6 = load i32, ptr %5, align 8, !dbg !1465
  %7 = icmp sgt i32 %6, -1, !dbg !1465
  br i1 %7, label %16, label %8, !dbg !1465

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1465
  store i32 %9, ptr %5, align 8, !dbg !1465, !DIAssignID !1466
  call void @llvm.dbg.assign(metadata i32 %9, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1466, metadata ptr %5, metadata !DIExpression()), !dbg !1461
  %10 = icmp ult i32 %6, -7, !dbg !1465
  br i1 %10, label %11, label %16, !dbg !1465

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1465
  %13 = load ptr, ptr %12, align 8, !dbg !1465
  %14 = sext i32 %6 to i64, !dbg !1465
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1465
  br label %19, !dbg !1465

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1465
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1465
  store ptr %18, ptr %3, align 8, !dbg !1465, !DIAssignID !1467
  call void @llvm.dbg.assign(metadata ptr %18, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1467, metadata ptr %3, metadata !DIExpression()), !dbg !1461
  br label %19, !dbg !1465

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1465
  %21 = load i32, ptr %20, align 8, !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1449, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %21, metadata !1472, metadata !DIExpression()), !dbg !1474
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #38, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %22, metadata !1473, metadata !DIExpression()), !dbg !1474
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1448, metadata !DIExpression()), !dbg !1461
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1477
  %25 = load i32, ptr %24, align 8, !dbg !1477
  %26 = icmp sgt i32 %25, -1, !dbg !1477
  br i1 %26, label %35, label %27, !dbg !1477

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1477
  store i32 %28, ptr %24, align 8, !dbg !1477, !DIAssignID !1478
  call void @llvm.dbg.assign(metadata i32 %28, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1478, metadata ptr %24, metadata !DIExpression()), !dbg !1461
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
  store ptr %37, ptr %3, align 8, !dbg !1477, !DIAssignID !1479
  call void @llvm.dbg.assign(metadata ptr %37, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1479, metadata ptr %3, metadata !DIExpression()), !dbg !1461
  br label %38, !dbg !1477

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1477
  %40 = load i32, ptr %39, align 8, !dbg !1477
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1452, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %0, metadata !458, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata i32 %40, metadata !459, metadata !DIExpression()), !dbg !1481
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1483, !tbaa !876
  %42 = icmp sgt i32 %41, -1, !dbg !1485
  br i1 %42, label %43, label %55, !dbg !1486

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #38, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %44, metadata !460, metadata !DIExpression()), !dbg !1481
  %45 = icmp sgt i32 %44, -1, !dbg !1489
  br i1 %45, label %50, label %46, !dbg !1491

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #41, !dbg !1492
  %48 = load i32, ptr %47, align 4, !dbg !1492, !tbaa !876
  %49 = icmp eq i32 %48, 22, !dbg !1493
  br i1 %49, label %51, label %50, !dbg !1494

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1495, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %44, metadata !460, metadata !DIExpression()), !dbg !1481
  br label %115, !dbg !1497

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i32 %40, metadata !1472, metadata !DIExpression()), !dbg !1498
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #38, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %52, metadata !1473, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i32 %52, metadata !460, metadata !DIExpression()), !dbg !1481
  %53 = icmp sgt i32 %52, -1, !dbg !1502
  br i1 %53, label %54, label %115, !dbg !1504

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1505, !tbaa !876
  br label %59, !dbg !1506

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1469, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %40, metadata !1472, metadata !DIExpression()), !dbg !1507
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #38, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %56, metadata !1473, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i32 %56, metadata !460, metadata !DIExpression()), !dbg !1481
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1510
  call void @llvm.dbg.value(metadata i32 %61, metadata !460, metadata !DIExpression()), !dbg !1481
  %62 = icmp sgt i32 %61, -1, !dbg !1511
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1497
  br i1 %63, label %64, label %115, !dbg !1497

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #38, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %65, metadata !461, metadata !DIExpression()), !dbg !1513
  %66 = icmp slt i32 %65, 0, !dbg !1514
  br i1 %66, label %71, label %67, !dbg !1515

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1516
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #38, !dbg !1517
  %70 = icmp eq i32 %69, -1, !dbg !1518
  br i1 %70, label %71, label %115, !dbg !1519

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #41, !dbg !1520
  %73 = load i32, ptr %72, align 4, !dbg !1520, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %73, metadata !464, metadata !DIExpression()), !dbg !1521
  %74 = call i32 @close(i32 noundef %61) #38, !dbg !1522
  store i32 %73, ptr %72, align 4, !dbg !1523, !tbaa !876
  call void @llvm.dbg.value(metadata i32 -1, metadata !460, metadata !DIExpression()), !dbg !1481
  br label %115, !dbg !1524

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #38, !dbg !1525
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1448, metadata !DIExpression()), !dbg !1461
  br label %115, !dbg !1526

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1527
  %79 = load i32, ptr %78, align 8, !dbg !1527
  %80 = icmp sgt i32 %79, -1, !dbg !1527
  br i1 %80, label %89, label %81, !dbg !1527

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1527
  store i32 %82, ptr %78, align 8, !dbg !1527, !DIAssignID !1528
  call void @llvm.dbg.assign(metadata i32 %82, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1528, metadata ptr %78, metadata !DIExpression()), !dbg !1461
  %83 = icmp ult i32 %79, -7, !dbg !1527
  br i1 %83, label %84, label %89, !dbg !1527

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1527
  %86 = load ptr, ptr %85, align 8, !dbg !1527
  %87 = sext i32 %79 to i64, !dbg !1527
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1527
  br label %92, !dbg !1527

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1527
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1527
  store ptr %91, ptr %3, align 8, !dbg !1527, !DIAssignID !1529
  call void @llvm.dbg.assign(metadata ptr %91, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1529, metadata ptr %3, metadata !DIExpression()), !dbg !1461
  br label %92, !dbg !1527

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1527
  %94 = load i32, ptr %93, align 8, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1454, metadata !DIExpression()), !dbg !1530
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #38, !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !1448, metadata !DIExpression()), !dbg !1461
  br label %115, !dbg !1532

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1533
  %98 = load i32, ptr %97, align 8, !dbg !1533
  %99 = icmp sgt i32 %98, -1, !dbg !1533
  br i1 %99, label %108, label %100, !dbg !1533

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1533
  store i32 %101, ptr %97, align 8, !dbg !1533, !DIAssignID !1534
  call void @llvm.dbg.assign(metadata i32 %101, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1534, metadata ptr %97, metadata !DIExpression()), !dbg !1461
  %102 = icmp ult i32 %98, -7, !dbg !1533
  br i1 %102, label %103, label %108, !dbg !1533

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1533
  %105 = load ptr, ptr %104, align 8, !dbg !1533
  %106 = sext i32 %98 to i64, !dbg !1533
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1533
  br label %111, !dbg !1533

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1533
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1533
  store ptr %110, ptr %3, align 8, !dbg !1533, !DIAssignID !1535
  call void @llvm.dbg.assign(metadata ptr %110, metadata !1437, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1535, metadata ptr %3, metadata !DIExpression()), !dbg !1461
  br label %111, !dbg !1533

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1533
  %113 = load ptr, ptr %112, align 8, !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1458, metadata !DIExpression()), !dbg !1536
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #38, !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !1448, metadata !DIExpression()), !dbg !1461
  br label %115, !dbg !1538

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1448, metadata !DIExpression()), !dbg !1461
  call void @llvm.va_end(ptr nonnull %3), !dbg !1540
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #38, !dbg !1541
  ret i32 %116, !dbg !1542
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #18 !dbg !1543 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1546, !tbaa !814
  ret ptr %1, !dbg !1547
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #19 !dbg !1548 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1553
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1554
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1553
  %3 = icmp eq ptr %2, null, !dbg !1555
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1555
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1552, metadata !DIExpression()), !dbg !1553
  %6 = ptrtoint ptr %5 to i64, !dbg !1556
  %7 = ptrtoint ptr %0 to i64, !dbg !1556
  %8 = sub i64 %6, %7, !dbg !1556
  %9 = icmp sgt i64 %8, 6, !dbg !1558
  br i1 %9, label %10, label %19, !dbg !1559

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %11, metadata !1561, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 7, metadata !1567, metadata !DIExpression()), !dbg !1568
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1570
  %13 = icmp eq i32 %12, 0, !dbg !1571
  br i1 %13, label %14, label %19, !dbg !1572

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1550, metadata !DIExpression()), !dbg !1553
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #39, !dbg !1573
  %16 = icmp eq i32 %15, 0, !dbg !1576
  %17 = select i1 %16, i64 3, i64 0, !dbg !1577
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1577
  br label %19, !dbg !1577

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1552, metadata !DIExpression()), !dbg !1553
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1550, metadata !DIExpression()), !dbg !1553
  store ptr %20, ptr @program_name, align 8, !dbg !1578, !tbaa !814
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1579, !tbaa !814
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1580, !tbaa !814
  ret void, !dbg !1581
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1582 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !479 {
  %3 = alloca i32, align 4, !DIAssignID !1583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !489, metadata !DIExpression(), metadata !1583, metadata ptr %3, metadata !DIExpression()), !dbg !1584
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !494, metadata !DIExpression(), metadata !1585, metadata ptr %4, metadata !DIExpression()), !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !486, metadata !DIExpression()), !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !487, metadata !DIExpression()), !dbg !1584
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !488, metadata !DIExpression()), !dbg !1584
  %6 = icmp eq ptr %5, %0, !dbg !1587
  br i1 %6, label %7, label %14, !dbg !1589

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1590
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata ptr %4, metadata !1601, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 0, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i64 8, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i64 0, ptr %4, align 8, !dbg !1611
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1612
  %9 = icmp eq i64 %8, 2, !dbg !1614
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1615
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1584
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1616
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1616
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1584
  ret ptr %15, !dbg !1616
}

; Function Attrs: nounwind
declare !dbg !1617 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1623 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1628, metadata !DIExpression()), !dbg !1631
  %2 = tail call ptr @__errno_location() #41, !dbg !1632
  %3 = load i32, ptr %2, align 4, !dbg !1632, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1629, metadata !DIExpression()), !dbg !1631
  %4 = icmp eq ptr %0, null, !dbg !1633
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1633
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !1634
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1630, metadata !DIExpression()), !dbg !1631
  store i32 %3, ptr %2, align 4, !dbg !1635, !tbaa !876
  ret ptr %6, !dbg !1636
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #21 !dbg !1637 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1643, metadata !DIExpression()), !dbg !1644
  %2 = icmp eq ptr %0, null, !dbg !1645
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1645
  %4 = load i32, ptr %3, align 8, !dbg !1646, !tbaa !1647
  ret i32 %4, !dbg !1649
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1650 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1654, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1655, metadata !DIExpression()), !dbg !1656
  %3 = icmp eq ptr %0, null, !dbg !1657
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1657
  store i32 %1, ptr %4, align 8, !dbg !1658, !tbaa !1647
  ret void, !dbg !1659
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1660 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1664, metadata !DIExpression()), !dbg !1672
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1665, metadata !DIExpression()), !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1666, metadata !DIExpression()), !dbg !1672
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1667, metadata !DIExpression()), !dbg !1672
  %4 = icmp eq ptr %0, null, !dbg !1673
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1673
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1674
  %7 = lshr i8 %1, 5, !dbg !1675
  %8 = zext nneg i8 %7 to i64, !dbg !1675
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1668, metadata !DIExpression()), !dbg !1672
  %10 = and i8 %1, 31, !dbg !1677
  %11 = zext nneg i8 %10 to i32, !dbg !1677
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1670, metadata !DIExpression()), !dbg !1672
  %12 = load i32, ptr %9, align 4, !dbg !1678, !tbaa !876
  %13 = lshr i32 %12, %11, !dbg !1679
  %14 = and i32 %13, 1, !dbg !1680
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1671, metadata !DIExpression()), !dbg !1672
  %15 = xor i32 %13, %2, !dbg !1681
  %16 = and i32 %15, 1, !dbg !1681
  %17 = shl nuw i32 %16, %11, !dbg !1682
  %18 = xor i32 %17, %12, !dbg !1683
  store i32 %18, ptr %9, align 4, !dbg !1683, !tbaa !876
  ret i32 %14, !dbg !1684
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1685 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1689, metadata !DIExpression()), !dbg !1692
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1690, metadata !DIExpression()), !dbg !1692
  %3 = icmp eq ptr %0, null, !dbg !1693
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1695
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1689, metadata !DIExpression()), !dbg !1692
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1696
  %6 = load i32, ptr %5, align 4, !dbg !1696, !tbaa !1697
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i32 %1, ptr %5, align 4, !dbg !1698, !tbaa !1697
  ret i32 %6, !dbg !1699
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1700 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1704, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1705, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1706, metadata !DIExpression()), !dbg !1707
  %4 = icmp eq ptr %0, null, !dbg !1708
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1710
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !1707
  store i32 10, ptr %5, align 8, !dbg !1711, !tbaa !1647
  %6 = icmp ne ptr %1, null, !dbg !1712
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1714
  br i1 %8, label %10, label %9, !dbg !1714

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1715
  unreachable, !dbg !1715

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1716
  store ptr %1, ptr %11, align 8, !dbg !1717, !tbaa !1718
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1719
  store ptr %2, ptr %12, align 8, !dbg !1720, !tbaa !1721
  ret void, !dbg !1722
}

; Function Attrs: noreturn nounwind
declare !dbg !1723 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1728, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1729, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1730, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1731, metadata !DIExpression()), !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1732, metadata !DIExpression()), !dbg !1736
  %6 = icmp eq ptr %4, null, !dbg !1737
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1737
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1733, metadata !DIExpression()), !dbg !1736
  %8 = tail call ptr @__errno_location() #41, !dbg !1738
  %9 = load i32, ptr %8, align 4, !dbg !1738, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1734, metadata !DIExpression()), !dbg !1736
  %10 = load i32, ptr %7, align 8, !dbg !1739, !tbaa !1647
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1740
  %12 = load i32, ptr %11, align 4, !dbg !1740, !tbaa !1697
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1741
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1742
  %15 = load ptr, ptr %14, align 8, !dbg !1742, !tbaa !1718
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1743
  %17 = load ptr, ptr %16, align 8, !dbg !1743, !tbaa !1721
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1735, metadata !DIExpression()), !dbg !1736
  store i32 %9, ptr %8, align 4, !dbg !1745, !tbaa !876
  ret i64 %18, !dbg !1746
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1747 {
  %10 = alloca i32, align 4, !DIAssignID !1815
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1816
  %12 = alloca i32, align 4, !DIAssignID !1817
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1818
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1793, metadata !DIExpression(), metadata !1819, metadata ptr %14, metadata !DIExpression()), !dbg !1820
  %15 = alloca i32, align 4, !DIAssignID !1821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1796, metadata !DIExpression(), metadata !1821, metadata ptr %15, metadata !DIExpression()), !dbg !1822
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1753, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1755, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1756, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1757, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1758, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1759, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1760, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1761, metadata !DIExpression()), !dbg !1823
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1824
  %17 = icmp eq i64 %16, 1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1765, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1768, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1823
  %18 = and i32 %5, 2, !dbg !1826
  %19 = icmp ne i32 %18, 0, !dbg !1826
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1826

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1827
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1828
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1829
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1766, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1765, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1756, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1761, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1760, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1757, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.label(metadata !1771), !dbg !1830
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1823
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
  ], !dbg !1831

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1757, metadata !DIExpression()), !dbg !1823
  br label %101, !dbg !1832

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1757, metadata !DIExpression()), !dbg !1823
  br i1 %36, label %101, label %42, !dbg !1832

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1833
  br i1 %43, label %101, label %44, !dbg !1837

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1833, !tbaa !885
  br label %101, !dbg !1833

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !1817, metadata ptr %12, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.assign(metadata i1 undef, metadata !581, metadata !DIExpression(), metadata !1818, metadata ptr %13, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !577, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 %28, metadata !578, metadata !DIExpression()), !dbg !1838
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #38, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %46, metadata !579, metadata !DIExpression()), !dbg !1838
  %47 = icmp eq ptr %46, @.str.11.74, !dbg !1843
  br i1 %47, label %48, label %57, !dbg !1845

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1846
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1847
  call void @llvm.dbg.value(metadata ptr %13, metadata !1848, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata ptr %13, metadata !1856, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i32 0, metadata !1859, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata i64 8, metadata !1860, metadata !DIExpression()), !dbg !1861
  store i64 0, ptr %13, align 8, !dbg !1863
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1864
  %50 = icmp eq i64 %49, 3, !dbg !1866
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1867
  %54 = icmp eq i32 %28, 9, !dbg !1867
  %55 = select i1 %54, ptr @.str.10.76, ptr @.str.12.77, !dbg !1867
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1867
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1868
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1868
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1838
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1760, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !580, metadata !DIExpression(), metadata !1815, metadata ptr %10, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !581, metadata !DIExpression(), metadata !1816, metadata ptr %11, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !577, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i32 %28, metadata !578, metadata !DIExpression()), !dbg !1869
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #38, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %59, metadata !579, metadata !DIExpression()), !dbg !1869
  %60 = icmp eq ptr %59, @.str.12.77, !dbg !1872
  br i1 %60, label %61, label %70, !dbg !1873

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1874
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %11, metadata !1848, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata ptr %11, metadata !1856, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i32 0, metadata !1859, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i64 8, metadata !1860, metadata !DIExpression()), !dbg !1878
  store i64 0, ptr %11, align 8, !dbg !1880
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1881
  %63 = icmp eq i64 %62, 3, !dbg !1882
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1883
  %67 = icmp eq i32 %28, 9, !dbg !1883
  %68 = select i1 %67, ptr @.str.10.76, ptr @.str.12.77, !dbg !1883
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1884
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1884
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1761, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1760, metadata !DIExpression()), !dbg !1823
  br i1 %36, label %88, label %73, !dbg !1885

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1773, metadata !DIExpression()), !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1823
  %74 = load i8, ptr %71, align 1, !dbg !1887, !tbaa !885
  %75 = icmp eq i8 %74, 0, !dbg !1889
  br i1 %75, label %88, label %.preheader11, !dbg !1889

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1889

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1773, metadata !DIExpression()), !dbg !1886
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1763, metadata !DIExpression()), !dbg !1823
  %80 = icmp ult i64 %79, %39, !dbg !1890
  br i1 %80, label %81, label %83, !dbg !1893

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1890
  store i8 %77, ptr %82, align 1, !dbg !1890, !tbaa !885
  br label %83, !dbg !1890

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1893
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1763, metadata !DIExpression()), !dbg !1823
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1894
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1773, metadata !DIExpression()), !dbg !1886
  %86 = load i8, ptr %85, align 1, !dbg !1887, !tbaa !885
  %87 = icmp eq i8 %86, 0, !dbg !1889
  br i1 %87, label %.loopexit12, label %76, !dbg !1889, !llvm.loop !1895

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1893
  br label %88, !dbg !1897

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1765, metadata !DIExpression()), !dbg !1823
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !1897
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1766, metadata !DIExpression()), !dbg !1823
  br label %101, !dbg !1899

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1768, metadata !DIExpression()), !dbg !1823
  br label %101, !dbg !1900

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1757, metadata !DIExpression()), !dbg !1823
  br label %101, !dbg !1901

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  br i1 %36, label %101, label %95, !dbg !1902

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1757, metadata !DIExpression()), !dbg !1823
  br i1 %36, label %101, label %95, !dbg !1901

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1903
  br i1 %97, label %101, label %98, !dbg !1907

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1903, !tbaa !885
  br label %101, !dbg !1903

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1768, metadata !DIExpression()), !dbg !1823
  br label %101, !dbg !1908

100:                                              ; preds = %27
  call void @abort() #40, !dbg !1909
  unreachable, !dbg !1909

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1898
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.76, %42 ], [ @.str.10.76, %44 ], [ @.str.10.76, %41 ], [ %33, %27 ], [ @.str.12.77, %95 ], [ @.str.12.77, %98 ], [ @.str.12.77, %94 ], [ @.str.10.76, %40 ], [ @.str.12.77, %91 ], [ @.str.12.77, %92 ], [ @.str.12.77, %93 ], !dbg !1823
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1823
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1768, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1767, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1766, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1765, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1761, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1760, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1757, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1778, metadata !DIExpression()), !dbg !1910
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
  br label %121, !dbg !1911

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1898
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1827
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1912
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1756, metadata !DIExpression()), !dbg !1823
  %130 = icmp eq i64 %122, -1, !dbg !1913
  br i1 %130, label %131, label %135, !dbg !1914

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1915
  %133 = load i8, ptr %132, align 1, !dbg !1915, !tbaa !885
  %134 = icmp eq i8 %133, 0, !dbg !1916
  br i1 %134, label %573, label %137, !dbg !1917

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1918
  br i1 %136, label %573, label %137, !dbg !1917

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1784, metadata !DIExpression()), !dbg !1919
  br i1 %113, label %138, label %151, !dbg !1920

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1922
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1923
  br i1 %140, label %141, label %143, !dbg !1923

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1756, metadata !DIExpression()), !dbg !1823
  br label %143, !dbg !1925

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1756, metadata !DIExpression()), !dbg !1823
  %145 = icmp ugt i64 %139, %144, !dbg !1926
  br i1 %145, label %151, label %146, !dbg !1927

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %147, metadata !1929, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %106, metadata !1932, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %107, metadata !1933, metadata !DIExpression()), !dbg !1934
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1936
  %149 = icmp eq i32 %148, 0, !dbg !1937
  %150 = and i1 %149, %109, !dbg !1938
  br i1 %150, label %.loopexit7, label %151, !dbg !1938

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1756, metadata !DIExpression()), !dbg !1823
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1939
  %155 = load i8, ptr %154, align 1, !dbg !1939, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1785, metadata !DIExpression()), !dbg !1919
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
  ], !dbg !1940

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1941

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1942

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1783, metadata !DIExpression()), !dbg !1919
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1946
  br i1 %159, label %176, label %160, !dbg !1946

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1948
  br i1 %161, label %162, label %164, !dbg !1952

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1948
  store i8 39, ptr %163, align 1, !dbg !1948, !tbaa !885
  br label %164, !dbg !1948

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1952
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1763, metadata !DIExpression()), !dbg !1823
  %166 = icmp ult i64 %165, %129, !dbg !1953
  br i1 %166, label %167, label %169, !dbg !1956

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1953
  store i8 36, ptr %168, align 1, !dbg !1953, !tbaa !885
  br label %169, !dbg !1953

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1956
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1763, metadata !DIExpression()), !dbg !1823
  %171 = icmp ult i64 %170, %129, !dbg !1957
  br i1 %171, label %172, label %174, !dbg !1960

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1957
  store i8 39, ptr %173, align 1, !dbg !1957, !tbaa !885
  br label %174, !dbg !1957

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1960
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %176, !dbg !1961

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1823
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1763, metadata !DIExpression()), !dbg !1823
  %179 = icmp ult i64 %177, %129, !dbg !1962
  br i1 %179, label %180, label %182, !dbg !1965

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1962
  store i8 92, ptr %181, align 1, !dbg !1962, !tbaa !885
  br label %182, !dbg !1962

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1763, metadata !DIExpression()), !dbg !1823
  br i1 %110, label %184, label %476, !dbg !1966

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1968
  %186 = icmp ult i64 %185, %152, !dbg !1969
  br i1 %186, label %187, label %433, !dbg !1970

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1971
  %189 = load i8, ptr %188, align 1, !dbg !1971, !tbaa !885
  %190 = add i8 %189, -48, !dbg !1972
  %191 = icmp ult i8 %190, 10, !dbg !1972
  br i1 %191, label %192, label %433, !dbg !1972

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1973
  br i1 %193, label %194, label %196, !dbg !1977

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1973
  store i8 48, ptr %195, align 1, !dbg !1973, !tbaa !885
  br label %196, !dbg !1973

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1977
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1763, metadata !DIExpression()), !dbg !1823
  %198 = icmp ult i64 %197, %129, !dbg !1978
  br i1 %198, label %199, label %201, !dbg !1981

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1978
  store i8 48, ptr %200, align 1, !dbg !1978, !tbaa !885
  br label %201, !dbg !1978

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1981
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1763, metadata !DIExpression()), !dbg !1823
  br label %433, !dbg !1982

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1983

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1984

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1985

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1987

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1989
  %209 = icmp ult i64 %208, %152, !dbg !1990
  br i1 %209, label %210, label %433, !dbg !1991

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1992
  %212 = load i8, ptr %211, align 1, !dbg !1992, !tbaa !885
  %213 = icmp eq i8 %212, 63, !dbg !1993
  br i1 %213, label %214, label %433, !dbg !1994

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1995
  %216 = load i8, ptr %215, align 1, !dbg !1995, !tbaa !885
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
  ], !dbg !1996

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1997

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1778, metadata !DIExpression()), !dbg !1910
  %219 = icmp ult i64 %123, %129, !dbg !1999
  br i1 %219, label %220, label %222, !dbg !2002

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1999
  store i8 63, ptr %221, align 1, !dbg !1999, !tbaa !885
  br label %222, !dbg !1999

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1763, metadata !DIExpression()), !dbg !1823
  %224 = icmp ult i64 %223, %129, !dbg !2003
  br i1 %224, label %225, label %227, !dbg !2006

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2003
  store i8 34, ptr %226, align 1, !dbg !2003, !tbaa !885
  br label %227, !dbg !2003

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1763, metadata !DIExpression()), !dbg !1823
  %229 = icmp ult i64 %228, %129, !dbg !2007
  br i1 %229, label %230, label %232, !dbg !2010

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2007
  store i8 34, ptr %231, align 1, !dbg !2007, !tbaa !885
  br label %232, !dbg !2007

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2010
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1763, metadata !DIExpression()), !dbg !1823
  %234 = icmp ult i64 %233, %129, !dbg !2011
  br i1 %234, label %235, label %237, !dbg !2014

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2011
  store i8 63, ptr %236, align 1, !dbg !2011, !tbaa !885
  br label %237, !dbg !2011

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2014
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1763, metadata !DIExpression()), !dbg !1823
  br label %433, !dbg !2015

239:                                              ; preds = %151
  br label %249, !dbg !2016

240:                                              ; preds = %151
  br label %249, !dbg !2017

241:                                              ; preds = %151
  br label %247, !dbg !2018

242:                                              ; preds = %151
  br label %247, !dbg !2019

243:                                              ; preds = %151
  br label %249, !dbg !2020

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2021

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2022

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2025

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2027
  call void @llvm.dbg.label(metadata !1786), !dbg !2028
  br i1 %118, label %.loopexit8, label %249, !dbg !2029

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2027
  call void @llvm.dbg.label(metadata !1789), !dbg !2031
  br i1 %108, label %487, label %444, !dbg !2032

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2033

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2034, !tbaa !885
  %254 = icmp eq i8 %253, 0, !dbg !2036
  br i1 %254, label %255, label %433, !dbg !2037

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2038
  br i1 %256, label %257, label %433, !dbg !2040

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !1919
  br label %258, !dbg !2041

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !1919
  br i1 %115, label %260, label %433, !dbg !2042

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2044

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1784, metadata !DIExpression()), !dbg !1919
  br i1 %115, label %262, label %433, !dbg !2045

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2046

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2049
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2051
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2051
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2051
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1764, metadata !DIExpression()), !dbg !1823
  %269 = icmp ult i64 %123, %268, !dbg !2052
  br i1 %269, label %270, label %272, !dbg !2055

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2052
  store i8 39, ptr %271, align 1, !dbg !2052, !tbaa !885
  br label %272, !dbg !2052

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1763, metadata !DIExpression()), !dbg !1823
  %274 = icmp ult i64 %273, %268, !dbg !2056
  br i1 %274, label %275, label %277, !dbg !2059

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2056
  store i8 92, ptr %276, align 1, !dbg !2056, !tbaa !885
  br label %277, !dbg !2056

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1763, metadata !DIExpression()), !dbg !1823
  %279 = icmp ult i64 %278, %268, !dbg !2060
  br i1 %279, label %280, label %282, !dbg !2063

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2060
  store i8 39, ptr %281, align 1, !dbg !2060, !tbaa !885
  br label %282, !dbg !2060

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2063
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %433, !dbg !2064

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2065

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1790, metadata !DIExpression()), !dbg !2066
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !2067
  %287 = load ptr, ptr %286, align 8, !dbg !2067, !tbaa !814
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2067
  %290 = load i16, ptr %289, align 2, !dbg !2067, !tbaa !917
  %291 = and i16 %290, 16384, !dbg !2067
  %292 = icmp ne i16 %291, 0, !dbg !2069
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1792, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2066
  br label %334, !dbg !2070

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %14, metadata !1848, metadata !DIExpression()), !dbg !2072
  call void @llvm.dbg.value(metadata ptr %14, metadata !1856, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 0, metadata !1859, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i64 8, metadata !1860, metadata !DIExpression()), !dbg !2074
  store i64 0, ptr %14, align 8, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1792, metadata !DIExpression()), !dbg !2066
  %294 = icmp eq i64 %152, -1, !dbg !2077
  br i1 %294, label %295, label %297, !dbg !2079

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2080
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1756, metadata !DIExpression()), !dbg !1823
  br label %297, !dbg !2081

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1756, metadata !DIExpression()), !dbg !1823
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2082
  %299 = sub i64 %298, %128, !dbg !2083
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1800, metadata !DIExpression()), !dbg !1822
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2085

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !2066
  %302 = icmp ult i64 %128, %298, !dbg !2086
  br i1 %302, label %.preheader5, label %329, !dbg !2088

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2089

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1792, metadata !DIExpression()), !dbg !2066
  br label %329, !dbg !2090

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1790, metadata !DIExpression()), !dbg !2066
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2092
  %308 = load i8, ptr %307, align 1, !dbg !2092, !tbaa !885
  %309 = icmp eq i8 %308, 0, !dbg !2088
  br i1 %309, label %.loopexit6, label %310, !dbg !2089

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1790, metadata !DIExpression()), !dbg !2066
  %312 = add i64 %311, %128, !dbg !2094
  %313 = icmp eq i64 %311, %299, !dbg !2086
  br i1 %313, label %.loopexit6, label %304, !dbg !2088, !llvm.loop !2095

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1801, metadata !DIExpression()), !dbg !2096
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2097
  %317 = and i1 %316, %109, !dbg !2097
  br i1 %317, label %.preheader3, label %325, !dbg !2097

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2098

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1801, metadata !DIExpression()), !dbg !2096
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2099
  %321 = load i8, ptr %320, align 1, !dbg !2099, !tbaa !885
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2101

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1801, metadata !DIExpression()), !dbg !2096
  %324 = icmp eq i64 %323, %300, !dbg !2103
  br i1 %324, label %.loopexit4, label %318, !dbg !2098, !llvm.loop !2104

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2106

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2106, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %326, metadata !2108, metadata !DIExpression()), !dbg !2116
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !2118
  %328 = icmp ne i32 %327, 0, !dbg !2119
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1792, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1790, metadata !DIExpression()), !dbg !2066
  br label %329, !dbg !2120

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2121

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1792, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1790, metadata !DIExpression()), !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2122
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1792, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1790, metadata !DIExpression()), !dbg !2066
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2121
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2122
  call void @llvm.dbg.label(metadata !1814), !dbg !2123
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2124
  br label %624, !dbg !2124

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1919
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2126
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1792, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1790, metadata !DIExpression()), !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1756, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1919
  %338 = icmp ult i64 %336, 2, !dbg !2127
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2128
  br i1 %340, label %433, label %341, !dbg !2128

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1809, metadata !DIExpression()), !dbg !2130
  br label %343, !dbg !2131

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1823
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1910
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1763, metadata !DIExpression()), !dbg !1823
  br i1 %339, label %394, label %350, !dbg !2132

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2137

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1783, metadata !DIExpression()), !dbg !1919
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2140
  br i1 %352, label %369, label %353, !dbg !2140

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2142
  br i1 %354, label %355, label %357, !dbg !2146

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2142
  store i8 39, ptr %356, align 1, !dbg !2142, !tbaa !885
  br label %357, !dbg !2142

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2146
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1763, metadata !DIExpression()), !dbg !1823
  %359 = icmp ult i64 %358, %129, !dbg !2147
  br i1 %359, label %360, label %362, !dbg !2150

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2147
  store i8 36, ptr %361, align 1, !dbg !2147, !tbaa !885
  br label %362, !dbg !2147

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2150
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1763, metadata !DIExpression()), !dbg !1823
  %364 = icmp ult i64 %363, %129, !dbg !2151
  br i1 %364, label %365, label %367, !dbg !2154

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2151
  store i8 39, ptr %366, align 1, !dbg !2151, !tbaa !885
  br label %367, !dbg !2151

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2154
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %369, !dbg !2155

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1823
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1763, metadata !DIExpression()), !dbg !1823
  %372 = icmp ult i64 %370, %129, !dbg !2156
  br i1 %372, label %373, label %375, !dbg !2159

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2156
  store i8 92, ptr %374, align 1, !dbg !2156, !tbaa !885
  br label %375, !dbg !2156

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2159
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1763, metadata !DIExpression()), !dbg !1823
  %377 = icmp ult i64 %376, %129, !dbg !2160
  br i1 %377, label %378, label %382, !dbg !2163

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2160
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2160
  store i8 %380, ptr %381, align 1, !dbg !2160, !tbaa !885
  br label %382, !dbg !2160

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2163
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1763, metadata !DIExpression()), !dbg !1823
  %384 = icmp ult i64 %383, %129, !dbg !2164
  br i1 %384, label %385, label %390, !dbg !2167

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2164
  %388 = or disjoint i8 %387, 48, !dbg !2164
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2164
  store i8 %388, ptr %389, align 1, !dbg !2164, !tbaa !885
  br label %390, !dbg !2164

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1763, metadata !DIExpression()), !dbg !1823
  %392 = and i8 %349, 7, !dbg !2168
  %393 = or disjoint i8 %392, 48, !dbg !2169
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1785, metadata !DIExpression()), !dbg !1919
  br label %401, !dbg !2170

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2171

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2172
  br i1 %396, label %397, label %399, !dbg !2177

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2172
  store i8 92, ptr %398, align 1, !dbg !2172, !tbaa !885
  br label %399, !dbg !2172

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2177
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1780, metadata !DIExpression()), !dbg !1919
  br label %401, !dbg !2178

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1823
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1763, metadata !DIExpression()), !dbg !1823
  %407 = add i64 %346, 1, !dbg !2179
  %408 = icmp ugt i64 %342, %407, !dbg !2181
  br i1 %408, label %409, label %.loopexit2, !dbg !2182

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2183
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2183
  br i1 %411, label %423, label %412, !dbg !2183

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2186
  br i1 %413, label %414, label %416, !dbg !2190

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2186
  store i8 39, ptr %415, align 1, !dbg !2186, !tbaa !885
  br label %416, !dbg !2186

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1763, metadata !DIExpression()), !dbg !1823
  %418 = icmp ult i64 %417, %129, !dbg !2191
  br i1 %418, label %419, label %421, !dbg !2194

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2191
  store i8 39, ptr %420, align 1, !dbg !2191, !tbaa !885
  br label %421, !dbg !2191

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2194
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %423, !dbg !2195

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2196
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1763, metadata !DIExpression()), !dbg !1823
  %426 = icmp ult i64 %424, %129, !dbg !2197
  br i1 %426, label %427, label %429, !dbg !2200

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2197
  store i8 %406, ptr %428, align 1, !dbg !2197, !tbaa !885
  br label %429, !dbg !2197

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1778, metadata !DIExpression()), !dbg !1910
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2201
  %432 = load i8, ptr %431, align 1, !dbg !2201, !tbaa !885
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1785, metadata !DIExpression()), !dbg !1919
  br label %343, !dbg !2202, !llvm.loop !2203

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2206
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1823
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1827
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1910
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1919
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1780, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1756, metadata !DIExpression()), !dbg !1823
  br i1 %111, label %455, label %444, !dbg !2207

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
  br i1 %120, label %456, label %476, !dbg !2209

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2210

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
  %467 = lshr i8 %458, 5, !dbg !2211
  %468 = zext nneg i8 %467 to i64, !dbg !2211
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2212
  %470 = load i32, ptr %469, align 4, !dbg !2212, !tbaa !876
  %471 = and i8 %458, 31, !dbg !2213
  %472 = zext nneg i8 %471 to i32, !dbg !2213
  %473 = shl nuw i32 1, %472, !dbg !2214
  %474 = and i32 %470, %473, !dbg !2214
  %475 = icmp eq i32 %474, 0, !dbg !2214
  br i1 %475, label %476, label %487, !dbg !2215

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
  br i1 %153, label %487, label %523, !dbg !2216

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2206
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1823
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1827
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2217
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1919
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1756, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.label(metadata !1812), !dbg !2218
  br i1 %109, label %.loopexit8, label %497, !dbg !2219

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1783, metadata !DIExpression()), !dbg !1919
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2221
  br i1 %498, label %515, label %499, !dbg !2221

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2223
  br i1 %500, label %501, label %503, !dbg !2227

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2223
  store i8 39, ptr %502, align 1, !dbg !2223, !tbaa !885
  br label %503, !dbg !2223

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1763, metadata !DIExpression()), !dbg !1823
  %505 = icmp ult i64 %504, %496, !dbg !2228
  br i1 %505, label %506, label %508, !dbg !2231

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2228
  store i8 36, ptr %507, align 1, !dbg !2228, !tbaa !885
  br label %508, !dbg !2228

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2231
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1763, metadata !DIExpression()), !dbg !1823
  %510 = icmp ult i64 %509, %496, !dbg !2232
  br i1 %510, label %511, label %513, !dbg !2235

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2232
  store i8 39, ptr %512, align 1, !dbg !2232, !tbaa !885
  br label %513, !dbg !2232

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2235
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %515, !dbg !2236

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1919
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1763, metadata !DIExpression()), !dbg !1823
  %518 = icmp ult i64 %516, %496, !dbg !2237
  br i1 %518, label %519, label %521, !dbg !2240

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2237
  store i8 92, ptr %520, align 1, !dbg !2237, !tbaa !885
  br label %521, !dbg !2237

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1756, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.label(metadata !1813), !dbg !2241
  br label %547, !dbg !2242

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1823
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1919
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1910
  br label %523, !dbg !2242

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2206
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1823
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1827
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2217
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2245
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1785, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1784, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1783, metadata !DIExpression()), !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1756, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.label(metadata !1813), !dbg !2241
  %534 = xor i1 %528, true, !dbg !2242
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2242
  br i1 %535, label %547, label %536, !dbg !2242

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2246
  br i1 %537, label %538, label %540, !dbg !2250

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2246
  store i8 39, ptr %539, align 1, !dbg !2246, !tbaa !885
  br label %540, !dbg !2246

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2250
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1763, metadata !DIExpression()), !dbg !1823
  %542 = icmp ult i64 %541, %533, !dbg !2251
  br i1 %542, label %543, label %545, !dbg !2254

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2251
  store i8 39, ptr %544, align 1, !dbg !2251, !tbaa !885
  br label %545, !dbg !2251

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2254
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1823
  br label %547, !dbg !2255

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1919
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1763, metadata !DIExpression()), !dbg !1823
  %557 = icmp ult i64 %555, %548, !dbg !2256
  br i1 %557, label %558, label %560, !dbg !2259

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2256
  store i8 %549, ptr %559, align 1, !dbg !2256, !tbaa !885
  br label %560, !dbg !2256

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1763, metadata !DIExpression()), !dbg !1823
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2260
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !1823
  br label %563, !dbg !2261

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2206
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1823
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1827
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2217
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1778, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1756, metadata !DIExpression()), !dbg !1823
  %572 = add i64 %570, 1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1778, metadata !DIExpression()), !dbg !1910
  br label %121, !dbg !2263, !llvm.loop !2264

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1898
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1827
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1754, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1770, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1764, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1763, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1756, metadata !DIExpression()), !dbg !1823
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2266
  %575 = xor i1 %109, true, !dbg !2268
  %576 = or i1 %574, %575, !dbg !2268
  %577 = or i1 %576, %110, !dbg !2268
  br i1 %577, label %578, label %.loopexit13, !dbg !2268

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2269
  %580 = xor i1 %.lcssa38, true, !dbg !2269
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2269
  br i1 %581, label %589, label %582, !dbg !2269

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2271

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1827
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2273
  br label %638, !dbg !2275

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2276
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2278
  br i1 %588, label %27, label %589, !dbg !2278

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1823
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1898
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2279
  %592 = or i1 %591, %590, !dbg !2281
  br i1 %592, label %608, label %593, !dbg !2281

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1765, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1763, metadata !DIExpression()), !dbg !1823
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2282, !tbaa !885
  %595 = icmp eq i8 %594, 0, !dbg !2285
  br i1 %595, label %608, label %.preheader, !dbg !2285

.preheader:                                       ; preds = %593
  br label %596, !dbg !2285

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1765, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1763, metadata !DIExpression()), !dbg !1823
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2286
  br i1 %600, label %601, label %603, !dbg !2289

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2286
  store i8 %597, ptr %602, align 1, !dbg !2286, !tbaa !885
  br label %603, !dbg !2286

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1763, metadata !DIExpression()), !dbg !1823
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2290
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1765, metadata !DIExpression()), !dbg !1823
  %606 = load i8, ptr %605, align 1, !dbg !2282, !tbaa !885
  %607 = icmp eq i8 %606, 0, !dbg !2285
  br i1 %607, label %.loopexit, label %596, !dbg !2285, !llvm.loop !2291

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2289
  br label %608, !dbg !2293

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1763, metadata !DIExpression()), !dbg !1823
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2293
  br i1 %610, label %611, label %638, !dbg !2295

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2296
  store i8 0, ptr %612, align 1, !dbg !2297, !tbaa !885
  br label %638, !dbg !2296

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1814), !dbg !2123
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2298
  br i1 %614, label %624, label %630, !dbg !2124

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1919
  br label %615, !dbg !2298

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2298

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2298

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1814), !dbg !2123
  %622 = icmp eq i32 %616, 2, !dbg !2298
  %623 = select i1 %619, i32 4, i32 2, !dbg !2124
  br i1 %622, label %624, label %630, !dbg !2124

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2124

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1925
  br label %630, !dbg !2299

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1757, metadata !DIExpression()), !dbg !1823
  %636 = and i32 %5, -3, !dbg !2299
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2300
  br label %638, !dbg !2301

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2302
}

; Function Attrs: nounwind
declare !dbg !2303 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2306 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2309 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2311 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2315, metadata !DIExpression()), !dbg !2318
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2316, metadata !DIExpression()), !dbg !2318
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2317, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %0, metadata !2319, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr null, metadata !2325, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr %2, metadata !2326, metadata !DIExpression()), !dbg !2332
  %4 = icmp eq ptr %2, null, !dbg !2334
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2334
  call void @llvm.dbg.value(metadata ptr %5, metadata !2327, metadata !DIExpression()), !dbg !2332
  %6 = tail call ptr @__errno_location() #41, !dbg !2335
  %7 = load i32, ptr %6, align 4, !dbg !2335, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %7, metadata !2328, metadata !DIExpression()), !dbg !2332
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2336
  %9 = load i32, ptr %8, align 4, !dbg !2336, !tbaa !1697
  %10 = or i32 %9, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %10, metadata !2329, metadata !DIExpression()), !dbg !2332
  %11 = load i32, ptr %5, align 8, !dbg !2338, !tbaa !1647
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2339
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2340
  %14 = load ptr, ptr %13, align 8, !dbg !2340, !tbaa !1718
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2341
  %16 = load ptr, ptr %15, align 8, !dbg !2341, !tbaa !1721
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2342
  %18 = add i64 %17, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %18, metadata !2330, metadata !DIExpression()), !dbg !2332
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2344
  call void @llvm.dbg.value(metadata ptr %19, metadata !2331, metadata !DIExpression()), !dbg !2332
  %20 = load i32, ptr %5, align 8, !dbg !2345, !tbaa !1647
  %21 = load ptr, ptr %13, align 8, !dbg !2346, !tbaa !1718
  %22 = load ptr, ptr %15, align 8, !dbg !2347, !tbaa !1721
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2348
  store i32 %7, ptr %6, align 4, !dbg !2349, !tbaa !876
  ret ptr %19, !dbg !2350
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2319, metadata !DIExpression()), !dbg !2351
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2325, metadata !DIExpression()), !dbg !2351
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2326, metadata !DIExpression()), !dbg !2351
  %5 = icmp eq ptr %3, null, !dbg !2352
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2352
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2327, metadata !DIExpression()), !dbg !2351
  %7 = tail call ptr @__errno_location() #41, !dbg !2353
  %8 = load i32, ptr %7, align 4, !dbg !2353, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2328, metadata !DIExpression()), !dbg !2351
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2354
  %10 = load i32, ptr %9, align 4, !dbg !2354, !tbaa !1697
  %11 = icmp eq ptr %2, null, !dbg !2355
  %12 = zext i1 %11 to i32, !dbg !2355
  %13 = or i32 %10, %12, !dbg !2356
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2329, metadata !DIExpression()), !dbg !2351
  %14 = load i32, ptr %6, align 8, !dbg !2357, !tbaa !1647
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2358
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2359
  %17 = load ptr, ptr %16, align 8, !dbg !2359, !tbaa !1718
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2360
  %19 = load ptr, ptr %18, align 8, !dbg !2360, !tbaa !1721
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2361
  %21 = add i64 %20, 1, !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2330, metadata !DIExpression()), !dbg !2351
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2363
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2331, metadata !DIExpression()), !dbg !2351
  %23 = load i32, ptr %6, align 8, !dbg !2364, !tbaa !1647
  %24 = load ptr, ptr %16, align 8, !dbg !2365, !tbaa !1718
  %25 = load ptr, ptr %18, align 8, !dbg !2366, !tbaa !1721
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2367
  store i32 %8, ptr %7, align 4, !dbg !2368, !tbaa !876
  br i1 %11, label %28, label %27, !dbg !2369

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2370, !tbaa !2372
  br label %28, !dbg !2373

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2374
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2375 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2380, !tbaa !814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2377, metadata !DIExpression()), !dbg !2381
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2378, metadata !DIExpression()), !dbg !2382
  %2 = load i32, ptr @nslots, align 4, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2378, metadata !DIExpression()), !dbg !2382
  %3 = icmp sgt i32 %2, 1, !dbg !2383
  br i1 %3, label %4, label %6, !dbg !2385

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2383
  br label %10, !dbg !2385

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2386

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2386
  %8 = load ptr, ptr %7, align 8, !dbg !2386, !tbaa !2388
  %9 = icmp eq ptr %8, @slot0, !dbg !2390
  br i1 %9, label %17, label %16, !dbg !2391

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2378, metadata !DIExpression()), !dbg !2382
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2392
  %13 = load ptr, ptr %12, align 8, !dbg !2392, !tbaa !2388
  tail call void @free(ptr noundef %13) #38, !dbg !2393
  %14 = add nuw nsw i64 %11, 1, !dbg !2394
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2378, metadata !DIExpression()), !dbg !2382
  %15 = icmp eq i64 %14, %5, !dbg !2383
  br i1 %15, label %.loopexit, label %10, !dbg !2385, !llvm.loop !2395

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2397
  store i64 256, ptr @slotvec0, align 8, !dbg !2399, !tbaa !2400
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2401, !tbaa !2388
  br label %17, !dbg !2402

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2403
  br i1 %18, label %20, label %19, !dbg !2405

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2406
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2408, !tbaa !814
  br label %20, !dbg !2409

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2410, !tbaa !876
  ret void, !dbg !2411
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2412 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2415 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2418, metadata !DIExpression()), !dbg !2419
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2420
  ret ptr %3, !dbg !2421
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2422 {
  %5 = alloca i64, align 8, !DIAssignID !2442
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2436, metadata !DIExpression(), metadata !2442, metadata ptr %5, metadata !DIExpression()), !dbg !2443
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2427, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2428, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2429, metadata !DIExpression()), !dbg !2444
  %6 = tail call ptr @__errno_location() #41, !dbg !2445
  %7 = load i32, ptr %6, align 4, !dbg !2445, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2430, metadata !DIExpression()), !dbg !2444
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2446, !tbaa !814
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2431, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2432, metadata !DIExpression()), !dbg !2444
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2447
  br i1 %9, label %10, label %11, !dbg !2447

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2449
  unreachable, !dbg !2449

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2450, !tbaa !876
  %13 = icmp sgt i32 %12, %0, !dbg !2451
  br i1 %13, label %32, label %14, !dbg !2452

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2453
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2433, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2454
  %16 = sext i32 %12 to i64, !dbg !2455
  store i64 %16, ptr %5, align 8, !dbg !2456, !tbaa !2372, !DIAssignID !2457
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2436, metadata !DIExpression(), metadata !2457, metadata ptr %5, metadata !DIExpression()), !dbg !2443
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2458
  %18 = add nuw nsw i32 %0, 1, !dbg !2459
  %19 = sub i32 %18, %12, !dbg !2460
  %20 = sext i32 %19 to i64, !dbg !2461
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2431, metadata !DIExpression()), !dbg !2444
  store ptr %21, ptr @slotvec, align 8, !dbg !2463, !tbaa !814
  br i1 %15, label %22, label %23, !dbg !2464

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2465, !tbaa.struct !2467
  br label %23, !dbg !2468

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2469, !tbaa !876
  %25 = sext i32 %24 to i64, !dbg !2470
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2470
  %27 = load i64, ptr %5, align 8, !dbg !2471, !tbaa !2372
  %28 = sub nsw i64 %27, %25, !dbg !2472
  %29 = shl i64 %28, 4, !dbg !2473
  call void @llvm.dbg.value(metadata ptr %26, metadata !1856, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !1859, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %29, metadata !1860, metadata !DIExpression()), !dbg !2474
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2476
  %30 = load i64, ptr %5, align 8, !dbg !2477, !tbaa !2372
  %31 = trunc i64 %30 to i32, !dbg !2477
  store i32 %31, ptr @nslots, align 4, !dbg !2478, !tbaa !876
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2479
  br label %32, !dbg !2480

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2444
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2431, metadata !DIExpression()), !dbg !2444
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2481
  %36 = load i64, ptr %35, align 8, !dbg !2482, !tbaa !2400
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2437, metadata !DIExpression()), !dbg !2483
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2484
  %38 = load ptr, ptr %37, align 8, !dbg !2484, !tbaa !2388
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2439, metadata !DIExpression()), !dbg !2483
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2485
  %40 = load i32, ptr %39, align 4, !dbg !2485, !tbaa !1697
  %41 = or i32 %40, 1, !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2440, metadata !DIExpression()), !dbg !2483
  %42 = load i32, ptr %3, align 8, !dbg !2487, !tbaa !1647
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2488
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2489
  %45 = load ptr, ptr %44, align 8, !dbg !2489, !tbaa !1718
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2490
  %47 = load ptr, ptr %46, align 8, !dbg !2490, !tbaa !1721
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2491
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2441, metadata !DIExpression()), !dbg !2483
  %49 = icmp ugt i64 %36, %48, !dbg !2492
  br i1 %49, label %60, label %50, !dbg !2494

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2437, metadata !DIExpression()), !dbg !2483
  store i64 %51, ptr %35, align 8, !dbg !2497, !tbaa !2400
  %52 = icmp eq ptr %38, @slot0, !dbg !2498
  br i1 %52, label %54, label %53, !dbg !2500

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2501
  br label %54, !dbg !2501

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2439, metadata !DIExpression()), !dbg !2483
  store ptr %55, ptr %37, align 8, !dbg !2503, !tbaa !2388
  %56 = load i32, ptr %3, align 8, !dbg !2504, !tbaa !1647
  %57 = load ptr, ptr %44, align 8, !dbg !2505, !tbaa !1718
  %58 = load ptr, ptr %46, align 8, !dbg !2506, !tbaa !1721
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2507
  br label %60, !dbg !2508

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2483
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2439, metadata !DIExpression()), !dbg !2483
  store i32 %7, ptr %6, align 4, !dbg !2509, !tbaa !876
  ret ptr %61, !dbg !2510
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2511 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2515, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2516, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2517, metadata !DIExpression()), !dbg !2518
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2519
  ret ptr %4, !dbg !2520
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 0, metadata !2417, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %0, metadata !2418, metadata !DIExpression()), !dbg !2525
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2527
  ret ptr %2, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 0, metadata !2515, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %1, metadata !2517, metadata !DIExpression()), !dbg !2536
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2538
  ret ptr %3, !dbg !2539
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2540 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2548
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2547, metadata !DIExpression(), metadata !2548, metadata ptr %4, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2544, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2545, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2550
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2551), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %1, metadata !2555, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2563, !alias.scope !2551, !DIAssignID !2564
  call void @llvm.dbg.assign(metadata i8 0, metadata !2547, metadata !DIExpression(), metadata !2564, metadata ptr %4, metadata !DIExpression()), !dbg !2549
  %5 = icmp eq i32 %1, 10, !dbg !2565
  br i1 %5, label %6, label %7, !dbg !2567

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2568, !noalias !2551
  unreachable, !dbg !2568

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2569, !tbaa !1647, !alias.scope !2551, !DIAssignID !2570
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2570, metadata ptr %4, metadata !DIExpression()), !dbg !2549
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2572
  ret ptr %8, !dbg !2573
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2574 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2583
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2582, metadata !DIExpression(), metadata !2583, metadata ptr %5, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2579, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2580, metadata !DIExpression()), !dbg !2584
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2581, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2585
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2586), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %1, metadata !2555, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2560, metadata !DIExpression()), !dbg !2592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2592, !alias.scope !2586, !DIAssignID !2593
  call void @llvm.dbg.assign(metadata i8 0, metadata !2582, metadata !DIExpression(), metadata !2593, metadata ptr %5, metadata !DIExpression()), !dbg !2584
  %6 = icmp eq i32 %1, 10, !dbg !2594
  br i1 %6, label %7, label %8, !dbg !2595

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2596, !noalias !2586
  unreachable, !dbg !2596

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2597, !tbaa !1647, !alias.scope !2586, !DIAssignID !2598
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2582, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2598, metadata ptr %5, metadata !DIExpression()), !dbg !2584
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2600
  ret ptr %9, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2602 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2608
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2547, metadata !DIExpression(), metadata !2608, metadata ptr %3, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2545, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %1, metadata !2546, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2612
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2613), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2560, metadata !DIExpression()), !dbg !2619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2619, !alias.scope !2613, !DIAssignID !2620
  call void @llvm.dbg.assign(metadata i8 0, metadata !2547, metadata !DIExpression(), metadata !2620, metadata ptr %3, metadata !DIExpression()), !dbg !2610
  %4 = icmp eq i32 %0, 10, !dbg !2621
  br i1 %4, label %5, label %6, !dbg !2622

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2623, !noalias !2613
  unreachable, !dbg !2623

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2624, !tbaa !1647, !alias.scope !2613, !DIAssignID !2625
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2625, metadata ptr %3, metadata !DIExpression()), !dbg !2610
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2626
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2627
  ret ptr %7, !dbg !2628
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2629 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2636
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2634, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2582, metadata !DIExpression(), metadata !2636, metadata ptr %4, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %0, metadata !2579, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %1, metadata !2580, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %2, metadata !2581, metadata !DIExpression()), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641), !dbg !2644
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2560, metadata !DIExpression()), !dbg !2647
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2647, !alias.scope !2641, !DIAssignID !2648
  call void @llvm.dbg.assign(metadata i8 0, metadata !2582, metadata !DIExpression(), metadata !2648, metadata ptr %4, metadata !DIExpression()), !dbg !2638
  %5 = icmp eq i32 %0, 10, !dbg !2649
  br i1 %5, label %6, label %7, !dbg !2650

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2651, !noalias !2641
  unreachable, !dbg !2651

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2652, !tbaa !1647, !alias.scope !2641, !DIAssignID !2653
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2582, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2653, metadata ptr %4, metadata !DIExpression()), !dbg !2638
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2654
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2655
  ret ptr %8, !dbg !2656
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2657 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2665, metadata ptr %4, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2668, !tbaa.struct !2669, !DIAssignID !2670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2670, metadata ptr %4, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1664, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1665, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2671
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1667, metadata !DIExpression()), !dbg !2671
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2673
  %6 = lshr i8 %2, 5, !dbg !2674
  %7 = zext nneg i8 %6 to i64, !dbg !2674
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2675
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1668, metadata !DIExpression()), !dbg !2671
  %9 = and i8 %2, 31, !dbg !2676
  %10 = zext nneg i8 %9 to i32, !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1670, metadata !DIExpression()), !dbg !2671
  %11 = load i32, ptr %8, align 4, !dbg !2677, !tbaa !876
  %12 = lshr i32 %11, %10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1671, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2671
  %13 = and i32 %12, 1, !dbg !2679
  %14 = xor i32 %13, 1, !dbg !2679
  %15 = shl nuw i32 %14, %10, !dbg !2680
  %16 = xor i32 %15, %11, !dbg !2681
  store i32 %16, ptr %8, align 4, !dbg !2681, !tbaa !876
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2683
  ret ptr %17, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2685 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2691
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2689, metadata !DIExpression()), !dbg !2692
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2691, metadata ptr %3, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 -1, metadata !2662, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8 %1, metadata !2663, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2696, !tbaa.struct !2669, !DIAssignID !2697
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2697, metadata ptr %3, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %3, metadata !1664, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8 %1, metadata !1665, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i8 %1, metadata !1667, metadata !DIExpression()), !dbg !2698
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2700
  %5 = lshr i8 %1, 5, !dbg !2701
  %6 = zext nneg i8 %5 to i64, !dbg !2701
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %7, metadata !1668, metadata !DIExpression()), !dbg !2698
  %8 = and i8 %1, 31, !dbg !2703
  %9 = zext nneg i8 %8 to i32, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %9, metadata !1670, metadata !DIExpression()), !dbg !2698
  %10 = load i32, ptr %7, align 4, !dbg !2704, !tbaa !876
  %11 = lshr i32 %10, %9, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %11, metadata !1671, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2698
  %12 = and i32 %11, 1, !dbg !2706
  %13 = xor i32 %12, 1, !dbg !2706
  %14 = shl nuw i32 %13, %9, !dbg !2707
  %15 = xor i32 %14, %10, !dbg !2708
  store i32 %15, ptr %7, align 4, !dbg !2708, !tbaa !876
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2710
  ret ptr %16, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2712 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2715
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %0, metadata !2689, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8 58, metadata !2690, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2715, metadata ptr %2, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 -1, metadata !2662, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8 58, metadata !2663, metadata !DIExpression()), !dbg !2719
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2722, !tbaa.struct !2669, !DIAssignID !2723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2723, metadata ptr %2, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %2, metadata !1664, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 58, metadata !1665, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2724
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2726
  call void @llvm.dbg.value(metadata ptr %3, metadata !1668, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 26, metadata !1670, metadata !DIExpression()), !dbg !2724
  %4 = load i32, ptr %3, align 4, !dbg !2727, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %4, metadata !1671, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2724
  %5 = or i32 %4, 67108864, !dbg !2728
  store i32 %5, ptr %3, align 4, !dbg !2728, !tbaa !876
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2729
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2730
  ret ptr %6, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2732 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2736
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2737
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2736, metadata ptr %3, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2661, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %1, metadata !2662, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8 58, metadata !2663, metadata !DIExpression()), !dbg !2738
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2740
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2741, !tbaa.struct !2669, !DIAssignID !2742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2664, metadata !DIExpression(), metadata !2742, metadata ptr %3, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %3, metadata !1664, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 58, metadata !1665, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2743
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2745
  call void @llvm.dbg.value(metadata ptr %4, metadata !1668, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 26, metadata !1670, metadata !DIExpression()), !dbg !2743
  %5 = load i32, ptr %4, align 4, !dbg !2746, !tbaa !876
  call void @llvm.dbg.value(metadata i32 %5, metadata !1671, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2743
  %6 = or i32 %5, 67108864, !dbg !2747
  store i32 %6, ptr %4, align 4, !dbg !2747, !tbaa !876
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2748
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2749
  ret ptr %7, !dbg !2750
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2751 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2757
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(), metadata !2757, metadata ptr %4, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2560, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2759
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2758
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2754, metadata !DIExpression()), !dbg !2758
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2755, metadata !DIExpression()), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %1, metadata !2555, metadata !DIExpression()), !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2762
  %5 = icmp eq i32 %1, 10, !dbg !2763
  br i1 %5, label %6, label %7, !dbg !2764

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2765, !noalias !2766
  unreachable, !dbg !2765

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2560, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2762
  store i32 %1, ptr %4, align 8, !dbg !2769, !tbaa.struct !2669, !DIAssignID !2770
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2769
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2769
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2770, metadata ptr %4, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2771, metadata ptr %8, metadata !DIExpression()), !dbg !2758
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1664, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1665, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2772
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2774
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1668, metadata !DIExpression()), !dbg !2772
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1670, metadata !DIExpression()), !dbg !2772
  %10 = load i32, ptr %9, align 4, !dbg !2775, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1671, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2772
  %11 = or i32 %10, 67108864, !dbg !2776
  store i32 %11, ptr %9, align 4, !dbg !2776, !tbaa !876, !DIAssignID !2777
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2756, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2777, metadata ptr %9, metadata !DIExpression()), !dbg !2758
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2778
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2779
  ret ptr %12, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2781 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2789
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2785, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2786, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2787, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2788, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2789, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %1, metadata !2797, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %2, metadata !2798, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %3, metadata !2799, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i64 -1, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2804, !tbaa.struct !2669, !DIAssignID !2805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2805, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2806, metadata ptr undef, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %1, metadata !1705, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %2, metadata !1706, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !2807
  store i32 10, ptr %5, align 8, !dbg !2809, !tbaa !1647, !DIAssignID !2810
  call void @llvm.dbg.assign(metadata i32 10, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2810, metadata ptr %5, metadata !DIExpression()), !dbg !2801
  %6 = icmp ne ptr %1, null, !dbg !2811
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2812
  br i1 %8, label %10, label %9, !dbg !2812

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2813
  unreachable, !dbg !2813

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2814
  store ptr %1, ptr %11, align 8, !dbg !2815, !tbaa !1718, !DIAssignID !2816
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2816, metadata ptr %11, metadata !DIExpression()), !dbg !2801
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2817
  store ptr %2, ptr %12, align 8, !dbg !2818, !tbaa !1721, !DIAssignID !2819
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2819, metadata ptr %12, metadata !DIExpression()), !dbg !2801
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2820
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2821
  ret ptr %13, !dbg !2822
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2792 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2823, metadata ptr %6, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2796, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2797, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2798, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2799, metadata !DIExpression()), !dbg !2824
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2800, metadata !DIExpression()), !dbg !2824
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2826, !tbaa.struct !2669, !DIAssignID !2827
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2827, metadata ptr %6, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2828, metadata ptr undef, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata ptr %6, metadata !1704, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %1, metadata !1705, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %2, metadata !1706, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata ptr %6, metadata !1704, metadata !DIExpression()), !dbg !2829
  store i32 10, ptr %6, align 8, !dbg !2831, !tbaa !1647, !DIAssignID !2832
  call void @llvm.dbg.assign(metadata i32 10, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2832, metadata ptr %6, metadata !DIExpression()), !dbg !2824
  %7 = icmp ne ptr %1, null, !dbg !2833
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2834
  br i1 %9, label %11, label %10, !dbg !2834

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2835
  unreachable, !dbg !2835

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2836
  store ptr %1, ptr %12, align 8, !dbg !2837, !tbaa !1718, !DIAssignID !2838
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2838, metadata ptr %12, metadata !DIExpression()), !dbg !2824
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2839
  store ptr %2, ptr %13, align 8, !dbg !2840, !tbaa !1721, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2841, metadata ptr %13, metadata !DIExpression()), !dbg !2824
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2842
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2843
  ret ptr %14, !dbg !2844
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2845 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2852
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2849, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2850, metadata !DIExpression()), !dbg !2853
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i32 0, metadata !2785, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %1, metadata !2787, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata ptr %2, metadata !2788, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2852, metadata ptr %4, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %0, metadata !2797, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %1, metadata !2798, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %2, metadata !2799, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i64 -1, metadata !2800, metadata !DIExpression()), !dbg !2856
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2859, !tbaa.struct !2669, !DIAssignID !2860
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2860, metadata ptr %4, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2861, metadata ptr undef, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata ptr %4, metadata !1704, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %0, metadata !1705, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %1, metadata !1706, metadata !DIExpression()), !dbg !2862
  call void @llvm.dbg.value(metadata ptr %4, metadata !1704, metadata !DIExpression()), !dbg !2862
  store i32 10, ptr %4, align 8, !dbg !2864, !tbaa !1647, !DIAssignID !2865
  call void @llvm.dbg.assign(metadata i32 10, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2865, metadata ptr %4, metadata !DIExpression()), !dbg !2856
  %5 = icmp ne ptr %0, null, !dbg !2866
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2867
  br i1 %7, label %9, label %8, !dbg !2867

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2868
  unreachable, !dbg !2868

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2869
  store ptr %0, ptr %10, align 8, !dbg !2870, !tbaa !1718, !DIAssignID !2871
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2871, metadata ptr %10, metadata !DIExpression()), !dbg !2856
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2872
  store ptr %1, ptr %11, align 8, !dbg !2873, !tbaa !1721, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2874, metadata ptr %11, metadata !DIExpression()), !dbg !2856
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2875
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2876
  ret ptr %12, !dbg !2877
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2878 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2886
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2887
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2883, metadata !DIExpression()), !dbg !2887
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2884, metadata !DIExpression()), !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2886, metadata ptr %5, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i32 0, metadata !2796, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %0, metadata !2797, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %1, metadata !2798, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %2, metadata !2799, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %3, metadata !2800, metadata !DIExpression()), !dbg !2888
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2891, !tbaa.struct !2669, !DIAssignID !2892
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(), metadata !2892, metadata ptr %5, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2893, metadata ptr undef, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %0, metadata !1705, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %1, metadata !1706, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata ptr %5, metadata !1704, metadata !DIExpression()), !dbg !2894
  store i32 10, ptr %5, align 8, !dbg !2896, !tbaa !1647, !DIAssignID !2897
  call void @llvm.dbg.assign(metadata i32 10, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2897, metadata ptr %5, metadata !DIExpression()), !dbg !2888
  %6 = icmp ne ptr %0, null, !dbg !2898
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2899
  br i1 %8, label %10, label %9, !dbg !2899

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2900
  unreachable, !dbg !2900

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2901
  store ptr %0, ptr %11, align 8, !dbg !2902, !tbaa !1718, !DIAssignID !2903
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2903, metadata ptr %11, metadata !DIExpression()), !dbg !2888
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2904
  store ptr %1, ptr %12, align 8, !dbg !2905, !tbaa !1721, !DIAssignID !2906
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2791, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2906, metadata ptr %12, metadata !DIExpression()), !dbg !2888
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2907
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2908
  ret ptr %13, !dbg !2909
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2910 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2916, metadata !DIExpression()), !dbg !2917
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2918
  ret ptr %4, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2920 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2925, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()), !dbg !2927
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2929
  ret ptr %3, !dbg !2930
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2931 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2935, metadata !DIExpression()), !dbg !2937
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 -1, metadata !2916, metadata !DIExpression()), !dbg !2938
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2940
  ret ptr %3, !dbg !2941
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2942 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i32 0, metadata !2935, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2936, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 0, metadata !2914, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %0, metadata !2915, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 -1, metadata !2916, metadata !DIExpression()), !dbg !2950
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2952
  ret ptr %2, !dbg !2953
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2994, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2995, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2996, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2997, metadata !DIExpression()), !dbg !2999
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2998, metadata !DIExpression()), !dbg !2999
  %7 = icmp eq ptr %1, null, !dbg !3000
  br i1 %7, label %10, label %8, !dbg !3002

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3003
  br label %12, !dbg !3003

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #38, !dbg !3004
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #38, !dbg !3005
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3005
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3006
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #38, !dbg !3007
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #38, !dbg !3007
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3008
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
  ], !dbg !3009

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #38, !dbg !3010
  %21 = load ptr, ptr %4, align 8, !dbg !3010, !tbaa !814
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3010
  br label %147, !dbg !3012

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #38, !dbg !3013
  %25 = load ptr, ptr %4, align 8, !dbg !3013, !tbaa !814
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3013
  %27 = load ptr, ptr %26, align 8, !dbg !3013, !tbaa !814
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3013
  br label %147, !dbg !3014

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #38, !dbg !3015
  %31 = load ptr, ptr %4, align 8, !dbg !3015, !tbaa !814
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3015
  %33 = load ptr, ptr %32, align 8, !dbg !3015, !tbaa !814
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3015
  %35 = load ptr, ptr %34, align 8, !dbg !3015, !tbaa !814
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3015
  br label %147, !dbg !3016

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #38, !dbg !3017
  %39 = load ptr, ptr %4, align 8, !dbg !3017, !tbaa !814
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3017
  %41 = load ptr, ptr %40, align 8, !dbg !3017, !tbaa !814
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3017
  %43 = load ptr, ptr %42, align 8, !dbg !3017, !tbaa !814
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3017
  %45 = load ptr, ptr %44, align 8, !dbg !3017, !tbaa !814
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3017
  br label %147, !dbg !3018

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #38, !dbg !3019
  %49 = load ptr, ptr %4, align 8, !dbg !3019, !tbaa !814
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3019
  %51 = load ptr, ptr %50, align 8, !dbg !3019, !tbaa !814
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3019
  %53 = load ptr, ptr %52, align 8, !dbg !3019, !tbaa !814
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3019
  %55 = load ptr, ptr %54, align 8, !dbg !3019, !tbaa !814
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3019
  %57 = load ptr, ptr %56, align 8, !dbg !3019, !tbaa !814
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3019
  br label %147, !dbg !3020

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !3021
  %61 = load ptr, ptr %4, align 8, !dbg !3021, !tbaa !814
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3021
  %63 = load ptr, ptr %62, align 8, !dbg !3021, !tbaa !814
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3021
  %65 = load ptr, ptr %64, align 8, !dbg !3021, !tbaa !814
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3021
  %67 = load ptr, ptr %66, align 8, !dbg !3021, !tbaa !814
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3021
  %69 = load ptr, ptr %68, align 8, !dbg !3021, !tbaa !814
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3021
  %71 = load ptr, ptr %70, align 8, !dbg !3021, !tbaa !814
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3021
  br label %147, !dbg !3022

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #38, !dbg !3023
  %75 = load ptr, ptr %4, align 8, !dbg !3023, !tbaa !814
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3023
  %77 = load ptr, ptr %76, align 8, !dbg !3023, !tbaa !814
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3023
  %79 = load ptr, ptr %78, align 8, !dbg !3023, !tbaa !814
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3023
  %81 = load ptr, ptr %80, align 8, !dbg !3023, !tbaa !814
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3023
  %83 = load ptr, ptr %82, align 8, !dbg !3023, !tbaa !814
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3023
  %85 = load ptr, ptr %84, align 8, !dbg !3023, !tbaa !814
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3023
  %87 = load ptr, ptr %86, align 8, !dbg !3023, !tbaa !814
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3023
  br label %147, !dbg !3024

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #38, !dbg !3025
  %91 = load ptr, ptr %4, align 8, !dbg !3025, !tbaa !814
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3025
  %93 = load ptr, ptr %92, align 8, !dbg !3025, !tbaa !814
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3025
  %95 = load ptr, ptr %94, align 8, !dbg !3025, !tbaa !814
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3025
  %97 = load ptr, ptr %96, align 8, !dbg !3025, !tbaa !814
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3025
  %99 = load ptr, ptr %98, align 8, !dbg !3025, !tbaa !814
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3025
  %101 = load ptr, ptr %100, align 8, !dbg !3025, !tbaa !814
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3025
  %103 = load ptr, ptr %102, align 8, !dbg !3025, !tbaa !814
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3025
  %105 = load ptr, ptr %104, align 8, !dbg !3025, !tbaa !814
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3025
  br label %147, !dbg !3026

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #38, !dbg !3027
  %109 = load ptr, ptr %4, align 8, !dbg !3027, !tbaa !814
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3027
  %111 = load ptr, ptr %110, align 8, !dbg !3027, !tbaa !814
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3027
  %113 = load ptr, ptr %112, align 8, !dbg !3027, !tbaa !814
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3027
  %115 = load ptr, ptr %114, align 8, !dbg !3027, !tbaa !814
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3027
  %117 = load ptr, ptr %116, align 8, !dbg !3027, !tbaa !814
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3027
  %119 = load ptr, ptr %118, align 8, !dbg !3027, !tbaa !814
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3027
  %121 = load ptr, ptr %120, align 8, !dbg !3027, !tbaa !814
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3027
  %123 = load ptr, ptr %122, align 8, !dbg !3027, !tbaa !814
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3027
  %125 = load ptr, ptr %124, align 8, !dbg !3027, !tbaa !814
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3027
  br label %147, !dbg !3028

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #38, !dbg !3029
  %129 = load ptr, ptr %4, align 8, !dbg !3029, !tbaa !814
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3029
  %131 = load ptr, ptr %130, align 8, !dbg !3029, !tbaa !814
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3029
  %133 = load ptr, ptr %132, align 8, !dbg !3029, !tbaa !814
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3029
  %135 = load ptr, ptr %134, align 8, !dbg !3029, !tbaa !814
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3029
  %137 = load ptr, ptr %136, align 8, !dbg !3029, !tbaa !814
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3029
  %139 = load ptr, ptr %138, align 8, !dbg !3029, !tbaa !814
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3029
  %141 = load ptr, ptr %140, align 8, !dbg !3029, !tbaa !814
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3029
  %143 = load ptr, ptr %142, align 8, !dbg !3029, !tbaa !814
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3029
  %145 = load ptr, ptr %144, align 8, !dbg !3029, !tbaa !814
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3029
  br label %147, !dbg !3030

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3031
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3032 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3037, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3038, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3039, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3040, metadata !DIExpression()), !dbg !3042
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3041, metadata !DIExpression()), !dbg !3042
  br label %6, !dbg !3043

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3041, metadata !DIExpression()), !dbg !3042
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3046
  %9 = load ptr, ptr %8, align 8, !dbg !3046, !tbaa !814
  %10 = icmp eq ptr %9, null, !dbg !3048
  %11 = add i64 %7, 1, !dbg !3049
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3041, metadata !DIExpression()), !dbg !3042
  br i1 %10, label %12, label %6, !dbg !3048, !llvm.loop !3050

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3045
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3052
  ret void, !dbg !3053
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3054 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3076
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3074, metadata !DIExpression(), metadata !3076, metadata ptr %6, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3068, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3069, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3070, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3071, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3072, metadata !DIExpression(DW_OP_deref)), !dbg !3077
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3077
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3073, metadata !DIExpression()), !dbg !3077
  %10 = icmp sgt i32 %9, -1, !dbg !3079
  br i1 %10, label %18, label %11, !dbg !3079

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3079
  store i32 %12, ptr %7, align 8, !dbg !3079
  %13 = icmp ult i32 %9, -7, !dbg !3079
  br i1 %13, label %14, label %18, !dbg !3079

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3079
  %16 = sext i32 %9 to i64, !dbg !3079
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3079
  br label %22, !dbg !3079

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3079
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3079
  store ptr %21, ptr %4, align 8, !dbg !3079
  br label %22, !dbg !3079

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3079
  %25 = load ptr, ptr %24, align 8, !dbg !3079
  store ptr %25, ptr %6, align 8, !dbg !3082, !tbaa !814
  %26 = icmp eq ptr %25, null, !dbg !3083
  br i1 %26, label %197, label %27, !dbg !3084

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3073, metadata !DIExpression()), !dbg !3077
  %28 = icmp sgt i32 %23, -1, !dbg !3079
  br i1 %28, label %36, label %29, !dbg !3079

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3079
  store i32 %30, ptr %7, align 8, !dbg !3079
  %31 = icmp ult i32 %23, -7, !dbg !3079
  br i1 %31, label %32, label %36, !dbg !3079

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3079
  %34 = sext i32 %23 to i64, !dbg !3079
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3079
  br label %40, !dbg !3079

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3079
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3079
  store ptr %39, ptr %4, align 8, !dbg !3079
  br label %40, !dbg !3079

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3079
  %43 = load ptr, ptr %42, align 8, !dbg !3079
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3085
  store ptr %43, ptr %44, align 8, !dbg !3082, !tbaa !814
  %45 = icmp eq ptr %43, null, !dbg !3083
  br i1 %45, label %197, label %46, !dbg !3084

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3073, metadata !DIExpression()), !dbg !3077
  %47 = icmp sgt i32 %41, -1, !dbg !3079
  br i1 %47, label %55, label %48, !dbg !3079

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3079
  store i32 %49, ptr %7, align 8, !dbg !3079
  %50 = icmp ult i32 %41, -7, !dbg !3079
  br i1 %50, label %51, label %55, !dbg !3079

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3079
  %53 = sext i32 %41 to i64, !dbg !3079
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3079
  br label %59, !dbg !3079

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3079
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3079
  store ptr %58, ptr %4, align 8, !dbg !3079
  br label %59, !dbg !3079

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3079
  %62 = load ptr, ptr %61, align 8, !dbg !3079
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3085
  store ptr %62, ptr %63, align 8, !dbg !3082, !tbaa !814
  %64 = icmp eq ptr %62, null, !dbg !3083
  br i1 %64, label %197, label %65, !dbg !3084

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3073, metadata !DIExpression()), !dbg !3077
  %66 = icmp sgt i32 %60, -1, !dbg !3079
  br i1 %66, label %74, label %67, !dbg !3079

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3079
  store i32 %68, ptr %7, align 8, !dbg !3079
  %69 = icmp ult i32 %60, -7, !dbg !3079
  br i1 %69, label %70, label %74, !dbg !3079

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3079
  %72 = sext i32 %60 to i64, !dbg !3079
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3079
  br label %78, !dbg !3079

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3079
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3079
  store ptr %77, ptr %4, align 8, !dbg !3079
  br label %78, !dbg !3079

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3079
  %81 = load ptr, ptr %80, align 8, !dbg !3079
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3085
  store ptr %81, ptr %82, align 8, !dbg !3082, !tbaa !814
  %83 = icmp eq ptr %81, null, !dbg !3083
  br i1 %83, label %197, label %84, !dbg !3084

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3073, metadata !DIExpression()), !dbg !3077
  %85 = icmp sgt i32 %79, -1, !dbg !3079
  br i1 %85, label %93, label %86, !dbg !3079

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3079
  store i32 %87, ptr %7, align 8, !dbg !3079
  %88 = icmp ult i32 %79, -7, !dbg !3079
  br i1 %88, label %89, label %93, !dbg !3079

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3079
  %91 = sext i32 %79 to i64, !dbg !3079
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3079
  br label %97, !dbg !3079

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3079
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3079
  store ptr %96, ptr %4, align 8, !dbg !3079
  br label %97, !dbg !3079

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3079
  %100 = load ptr, ptr %99, align 8, !dbg !3079
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3085
  store ptr %100, ptr %101, align 8, !dbg !3082, !tbaa !814
  %102 = icmp eq ptr %100, null, !dbg !3083
  br i1 %102, label %197, label %103, !dbg !3084

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3073, metadata !DIExpression()), !dbg !3077
  %104 = icmp sgt i32 %98, -1, !dbg !3079
  br i1 %104, label %112, label %105, !dbg !3079

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3079
  store i32 %106, ptr %7, align 8, !dbg !3079
  %107 = icmp ult i32 %98, -7, !dbg !3079
  br i1 %107, label %108, label %112, !dbg !3079

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3079
  %110 = sext i32 %98 to i64, !dbg !3079
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3079
  br label %116, !dbg !3079

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3079
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3079
  store ptr %115, ptr %4, align 8, !dbg !3079
  br label %116, !dbg !3079

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3079
  %119 = load ptr, ptr %118, align 8, !dbg !3079
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3085
  store ptr %119, ptr %120, align 8, !dbg !3082, !tbaa !814
  %121 = icmp eq ptr %119, null, !dbg !3083
  br i1 %121, label %197, label %122, !dbg !3084

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3073, metadata !DIExpression()), !dbg !3077
  %123 = icmp sgt i32 %117, -1, !dbg !3079
  br i1 %123, label %131, label %124, !dbg !3079

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3079
  store i32 %125, ptr %7, align 8, !dbg !3079
  %126 = icmp ult i32 %117, -7, !dbg !3079
  br i1 %126, label %127, label %131, !dbg !3079

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3079
  %129 = sext i32 %117 to i64, !dbg !3079
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3079
  br label %135, !dbg !3079

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3079
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3079
  store ptr %134, ptr %4, align 8, !dbg !3079
  br label %135, !dbg !3079

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3079
  %138 = load ptr, ptr %137, align 8, !dbg !3079
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3085
  store ptr %138, ptr %139, align 8, !dbg !3082, !tbaa !814
  %140 = icmp eq ptr %138, null, !dbg !3083
  br i1 %140, label %197, label %141, !dbg !3084

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3073, metadata !DIExpression()), !dbg !3077
  %142 = icmp sgt i32 %136, -1, !dbg !3079
  br i1 %142, label %150, label %143, !dbg !3079

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3079
  store i32 %144, ptr %7, align 8, !dbg !3079
  %145 = icmp ult i32 %136, -7, !dbg !3079
  br i1 %145, label %146, label %150, !dbg !3079

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3079
  %148 = sext i32 %136 to i64, !dbg !3079
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3079
  br label %154, !dbg !3079

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3079
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3079
  store ptr %153, ptr %4, align 8, !dbg !3079
  br label %154, !dbg !3079

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3079
  %157 = load ptr, ptr %156, align 8, !dbg !3079
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3085
  store ptr %157, ptr %158, align 8, !dbg !3082, !tbaa !814
  %159 = icmp eq ptr %157, null, !dbg !3083
  br i1 %159, label %197, label %160, !dbg !3084

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3073, metadata !DIExpression()), !dbg !3077
  %161 = icmp sgt i32 %155, -1, !dbg !3079
  br i1 %161, label %169, label %162, !dbg !3079

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3079
  store i32 %163, ptr %7, align 8, !dbg !3079
  %164 = icmp ult i32 %155, -7, !dbg !3079
  br i1 %164, label %165, label %169, !dbg !3079

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3079
  %167 = sext i32 %155 to i64, !dbg !3079
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3079
  br label %173, !dbg !3079

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3079
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3079
  store ptr %172, ptr %4, align 8, !dbg !3079
  br label %173, !dbg !3079

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3079
  %176 = load ptr, ptr %175, align 8, !dbg !3079
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3085
  store ptr %176, ptr %177, align 8, !dbg !3082, !tbaa !814
  %178 = icmp eq ptr %176, null, !dbg !3083
  br i1 %178, label %197, label %179, !dbg !3084

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3073, metadata !DIExpression()), !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3073, metadata !DIExpression()), !dbg !3077
  %180 = icmp sgt i32 %174, -1, !dbg !3079
  br i1 %180, label %188, label %181, !dbg !3079

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3079
  store i32 %182, ptr %7, align 8, !dbg !3079
  %183 = icmp ult i32 %174, -7, !dbg !3079
  br i1 %183, label %184, label %188, !dbg !3079

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3079
  %186 = sext i32 %174 to i64, !dbg !3079
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3079
  br label %191, !dbg !3079

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3079
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3079
  store ptr %190, ptr %4, align 8, !dbg !3079
  br label %191, !dbg !3079

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3079
  %193 = load ptr, ptr %192, align 8, !dbg !3079
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3085
  store ptr %193, ptr %194, align 8, !dbg !3082, !tbaa !814
  %195 = icmp eq ptr %193, null, !dbg !3083
  %196 = select i1 %195, i64 9, i64 10, !dbg !3084
  br label %197, !dbg !3084

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3086
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3087
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3088
  ret void, !dbg !3088
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3089 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3097, metadata !DIExpression(), metadata !3098, metadata ptr %5, metadata !DIExpression()), !dbg !3099
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3094, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3095, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3096, metadata !DIExpression()), !dbg !3099
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !3100
  call void @llvm.va_start(ptr nonnull %5), !dbg !3101
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !3102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3102, !tbaa.struct !1234
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3102
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !3102
  call void @llvm.va_end(ptr nonnull %5), !dbg !3103
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !3104
  ret void, !dbg !3104
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3105 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3106, !tbaa !814
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3106
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #38, !dbg !3107
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.104) #38, !dbg !3107
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19.105, i32 noundef 5) #38, !dbg !3108
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.106, ptr noundef nonnull @.str.21.107) #38, !dbg !3108
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !3109
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3109
  ret void, !dbg !3110
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3111 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3118, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64 %2, metadata !3124, metadata !DIExpression()), !dbg !3125
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3127
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3133
  %5 = icmp eq ptr %4, null, !dbg !3135
  br i1 %5, label %6, label %7, !dbg !3137

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3138
  unreachable, !dbg !3138

7:                                                ; preds = %3
  ret ptr %4, !dbg !3139
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3140
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3124, metadata !DIExpression()), !dbg !3140
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3142
  %5 = icmp eq ptr %4, null, !dbg !3144
  br i1 %5, label %6, label %7, !dbg !3145

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3146
  unreachable, !dbg !3146

7:                                                ; preds = %3
  ret ptr %4, !dbg !3147
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3152, metadata !DIExpression()), !dbg !3153
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3155
  %3 = icmp eq ptr %2, null, !dbg !3157
  br i1 %3, label %4, label %5, !dbg !3158

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3159
  unreachable, !dbg !3159

5:                                                ; preds = %1
  ret ptr %2, !dbg !3160
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3161 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3162 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3166, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %0, metadata !3168, metadata !DIExpression()), !dbg !3172
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3175
  %3 = icmp eq ptr %2, null, !dbg !3177
  br i1 %3, label %4, label %5, !dbg !3178

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3179
  unreachable, !dbg !3179

5:                                                ; preds = %1
  ret ptr %2, !dbg !3180
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %0, metadata !3152, metadata !DIExpression()), !dbg !3187
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3190
  %3 = icmp eq ptr %2, null, !dbg !3192
  br i1 %3, label %4, label %5, !dbg !3193

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3194
  unreachable, !dbg !3194

5:                                                ; preds = %1
  ret ptr %2, !dbg !3195
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3196 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3201, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3208
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3210
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3211
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3212
  %5 = icmp eq ptr %4, null, !dbg !3214
  br i1 %5, label %6, label %7, !dbg !3215

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3216
  unreachable, !dbg !3216

7:                                                ; preds = %2
  ret ptr %4, !dbg !3217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3218 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3219 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3223, metadata !DIExpression()), !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %0, metadata !3226, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3229, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %1, metadata !3207, metadata !DIExpression()), !dbg !3232
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3234
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3236
  %5 = icmp eq ptr %4, null, !dbg !3238
  br i1 %5, label %6, label %7, !dbg !3239

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3240
  unreachable, !dbg !3240

7:                                                ; preds = %2
  ret ptr %4, !dbg !3241
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3246, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !3250, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()), !dbg !3255
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3258
  %5 = icmp eq ptr %4, null, !dbg !3260
  br i1 %5, label %6, label %7, !dbg !3261

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3262
  unreachable, !dbg !3262

7:                                                ; preds = %3
  ret ptr %4, !dbg !3263
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3264 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr null, metadata !3120, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3271
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3273
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3274
  %4 = icmp eq ptr %3, null, !dbg !3276
  br i1 %4, label %5, label %6, !dbg !3277

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3278
  unreachable, !dbg !3278

6:                                                ; preds = %2
  ret ptr %3, !dbg !3279
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3280 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr null, metadata !3246, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %0, metadata !3247, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata ptr null, metadata !3250, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %0, metadata !3253, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3289
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3292
  %4 = icmp eq ptr %3, null, !dbg !3294
  br i1 %4, label %5, label %6, !dbg !3295

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3296
  unreachable, !dbg !3296

6:                                                ; preds = %2
  ret ptr %3, !dbg !3297
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3298 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3302, metadata !DIExpression()), !dbg !3304
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata ptr %0, metadata !750, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %1, metadata !751, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 1, metadata !752, metadata !DIExpression()), !dbg !3305
  %3 = load i64, ptr %1, align 8, !dbg !3307, !tbaa !2372
  call void @llvm.dbg.value(metadata i64 %3, metadata !753, metadata !DIExpression()), !dbg !3305
  %4 = icmp eq ptr %0, null, !dbg !3308
  br i1 %4, label %5, label %8, !dbg !3310

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3311
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3314
  br label %15, !dbg !3314

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3315
  %10 = add nuw i64 %9, 1, !dbg !3315
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3315
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3315
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3315
  call void @llvm.dbg.value(metadata i64 %13, metadata !753, metadata !DIExpression()), !dbg !3305
  br i1 %12, label %14, label %15, !dbg !3318

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3319
  unreachable, !dbg !3319

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3305
  call void @llvm.dbg.value(metadata i64 %16, metadata !753, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %16, metadata !3123, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 1, metadata !3124, metadata !DIExpression()), !dbg !3320
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %17, metadata !3128, metadata !DIExpression()), !dbg !3323
  %18 = icmp eq ptr %17, null, !dbg !3325
  br i1 %18, label %19, label %20, !dbg !3326

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3327
  unreachable, !dbg !3327

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !750, metadata !DIExpression()), !dbg !3305
  store i64 %16, ptr %1, align 8, !dbg !3328, !tbaa !2372
  ret ptr %17, !dbg !3329
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !745 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !750, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !751, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !752, metadata !DIExpression()), !dbg !3330
  %4 = load i64, ptr %1, align 8, !dbg !3331, !tbaa !2372
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !753, metadata !DIExpression()), !dbg !3330
  %5 = icmp eq ptr %0, null, !dbg !3332
  br i1 %5, label %6, label %13, !dbg !3333

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3334
  br i1 %7, label %8, label %20, !dbg !3335

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3336
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !753, metadata !DIExpression()), !dbg !3330
  %10 = icmp ugt i64 %2, 128, !dbg !3338
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3339
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !753, metadata !DIExpression()), !dbg !3330
  br label %20, !dbg !3340

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3341
  %15 = add nuw i64 %14, 1, !dbg !3341
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3341
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3341
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3341
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !753, metadata !DIExpression()), !dbg !3330
  br i1 %17, label %19, label %20, !dbg !3342

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3343
  unreachable, !dbg !3343

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !753, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %21, metadata !3123, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %2, metadata !3124, metadata !DIExpression()), !dbg !3344
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %22, metadata !3128, metadata !DIExpression()), !dbg !3347
  %23 = icmp eq ptr %22, null, !dbg !3349
  br i1 %23, label %24, label %25, !dbg !3350

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3351
  unreachable, !dbg !3351

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !750, metadata !DIExpression()), !dbg !3330
  store i64 %21, ptr %1, align 8, !dbg !3352, !tbaa !2372
  ret ptr %22, !dbg !3353
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !766, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !767, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !768, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !769, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !770, metadata !DIExpression()), !dbg !3354
  %6 = load i64, ptr %1, align 8, !dbg !3355, !tbaa !2372
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !771, metadata !DIExpression()), !dbg !3354
  %7 = ashr i64 %6, 1, !dbg !3356
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3356
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3356
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3356
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !772, metadata !DIExpression()), !dbg !3354
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !772, metadata !DIExpression()), !dbg !3354
  %12 = icmp sgt i64 %3, -1, !dbg !3359
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3361
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !772, metadata !DIExpression()), !dbg !3354
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3362
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3362
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !773, metadata !DIExpression()), !dbg !3354
  %18 = icmp slt i64 %17, 128, !dbg !3362
  %19 = select i1 %18, i64 128, i64 0, !dbg !3362
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !774, metadata !DIExpression()), !dbg !3354
  %21 = icmp eq i64 %20, 0, !dbg !3363
  br i1 %21, label %28, label %22, !dbg !3365

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3366
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !772, metadata !DIExpression()), !dbg !3354
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3368
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !773, metadata !DIExpression()), !dbg !3354
  br label %28, !dbg !3369

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3354
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !773, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !772, metadata !DIExpression()), !dbg !3354
  %31 = icmp eq ptr %0, null, !dbg !3370
  br i1 %31, label %32, label %33, !dbg !3372

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3373, !tbaa !2372
  br label %33, !dbg !3374

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3375
  %35 = icmp slt i64 %34, %2, !dbg !3377
  br i1 %35, label %36, label %48, !dbg !3378

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3379
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3379
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3379
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !772, metadata !DIExpression()), !dbg !3354
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3380
  br i1 %42, label %47, label %43, !dbg !3380

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3381
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3381
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !773, metadata !DIExpression()), !dbg !3354
  br i1 %45, label %47, label %48, !dbg !3382

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !3383
  unreachable, !dbg !3383

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3354
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !773, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !772, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3200, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %50, metadata !3201, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %50, metadata !3207, metadata !DIExpression()), !dbg !3386
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3388
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #44, !dbg !3389
  call void @llvm.dbg.value(metadata ptr %52, metadata !3128, metadata !DIExpression()), !dbg !3390
  %53 = icmp eq ptr %52, null, !dbg !3392
  br i1 %53, label %54, label %55, !dbg !3393

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !3394
  unreachable, !dbg !3394

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !766, metadata !DIExpression()), !dbg !3354
  store i64 %49, ptr %1, align 8, !dbg !3395, !tbaa !2372
  ret ptr %52, !dbg !3396
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3397 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3399, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %0, metadata !3401, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.value(metadata i64 1, metadata !3404, metadata !DIExpression()), !dbg !3405
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3407
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3408
  %3 = icmp eq ptr %2, null, !dbg !3410
  br i1 %3, label %4, label %5, !dbg !3411

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3412
  unreachable, !dbg !3412

5:                                                ; preds = %1
  ret ptr %2, !dbg !3413
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3414 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3402 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3401, metadata !DIExpression()), !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3404, metadata !DIExpression()), !dbg !3415
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3416
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3417
  %4 = icmp eq ptr %3, null, !dbg !3419
  br i1 %4, label %5, label %6, !dbg !3420

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3421
  unreachable, !dbg !3421

6:                                                ; preds = %2
  ret ptr %3, !dbg !3422
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3423 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3425, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 1, metadata !3430, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 1, metadata !3436, metadata !DIExpression()), !dbg !3437
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3439
  call void @llvm.dbg.value(metadata ptr %2, metadata !3128, metadata !DIExpression()), !dbg !3440
  %3 = icmp eq ptr %2, null, !dbg !3442
  br i1 %3, label %4, label %5, !dbg !3443

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3444
  unreachable, !dbg !3444

5:                                                ; preds = %1
  ret ptr %2, !dbg !3445
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3428 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3427, metadata !DIExpression()), !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3447
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3449
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3450
  %4 = icmp eq ptr %3, null, !dbg !3452
  br i1 %4, label %5, label %6, !dbg !3453

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3454
  unreachable, !dbg !3454

6:                                                ; preds = %2
  ret ptr %3, !dbg !3455
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3462
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3461, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3463
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3466
  %4 = icmp eq ptr %3, null, !dbg !3468
  br i1 %4, label %5, label %6, !dbg !3469

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3470
  unreachable, !dbg !3470

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3471, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3479
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3481
  ret ptr %3, !dbg !3482
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3166, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %1, metadata !3168, metadata !DIExpression()), !dbg !3492
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3494
  call void @llvm.dbg.value(metadata ptr %3, metadata !3128, metadata !DIExpression()), !dbg !3495
  %4 = icmp eq ptr %3, null, !dbg !3497
  br i1 %4, label %5, label %6, !dbg !3498

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3499
  unreachable, !dbg !3499

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3471, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3500
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3502
  ret ptr %3, !dbg !3503
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3508, metadata !DIExpression()), !dbg !3511
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()), !dbg !3511
  %3 = add nsw i64 %1, 1, !dbg !3512
  call void @llvm.dbg.value(metadata i64 %3, metadata !3166, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %3, metadata !3168, metadata !DIExpression()), !dbg !3515
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3517
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3518
  %5 = icmp eq ptr %4, null, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3521

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3522
  unreachable, !dbg !3522

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3510, metadata !DIExpression()), !dbg !3511
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3523
  store i8 0, ptr %8, align 1, !dbg !3524, !tbaa !885
  call void @llvm.dbg.value(metadata ptr %4, metadata !3471, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3478, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3527
  ret ptr %4, !dbg !3528
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3532
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3533
  %3 = add i64 %2, 1, !dbg !3534
  call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %3, metadata !3461, metadata !DIExpression()), !dbg !3535
  call void @llvm.dbg.value(metadata i64 %3, metadata !3152, metadata !DIExpression()), !dbg !3537
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %4, metadata !3128, metadata !DIExpression()), !dbg !3540
  %5 = icmp eq ptr %4, null, !dbg !3542
  br i1 %5, label %6, label %7, !dbg !3543

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3544
  unreachable, !dbg !3544

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3471, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %0, metadata !3477, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %3, metadata !3478, metadata !DIExpression()), !dbg !3545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3547
  ret ptr %4, !dbg !3548
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3549 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3554, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3551, metadata !DIExpression()), !dbg !3555
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.118, ptr noundef nonnull @.str.2.119, i32 noundef 5) #38, !dbg !3554
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef %2) #38, !dbg !3554
  %3 = icmp eq i32 %1, 0, !dbg !3554
  tail call void @llvm.assume(i1 %3), !dbg !3554
  tail call void @abort() #40, !dbg !3556
  unreachable, !dbg !3556
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3557 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3595, metadata !DIExpression()), !dbg !3600
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3601
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3596, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3600
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3602, metadata !DIExpression()), !dbg !3605
  %3 = load i32, ptr %0, align 8, !dbg !3607, !tbaa !3608
  %4 = and i32 %3, 32, !dbg !3609
  %5 = icmp eq i32 %4, 0, !dbg !3609
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3600
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3610
  %7 = icmp eq i32 %6, 0, !dbg !3611
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3599, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3600
  br i1 %5, label %8, label %18, !dbg !3612

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3614
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3596, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3600
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3615
  %11 = xor i1 %7, true, !dbg !3615
  %12 = sext i1 %11 to i32, !dbg !3615
  br i1 %10, label %21, label %13, !dbg !3615

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3616
  %15 = load i32, ptr %14, align 4, !dbg !3616, !tbaa !876
  %16 = icmp ne i32 %15, 9, !dbg !3617
  %17 = sext i1 %16 to i32, !dbg !3618
  br label %21, !dbg !3618

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3619

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3621
  store i32 0, ptr %20, align 4, !dbg !3623, !tbaa !876
  br label %21, !dbg !3621

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3600
  ret i32 %22, !dbg !3624
}

; Function Attrs: nounwind
declare !dbg !3625 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3629 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3671
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3672
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3669, metadata !DIExpression()), !dbg !3671
  %3 = icmp slt i32 %2, 0, !dbg !3673
  br i1 %3, label %4, label %6, !dbg !3675

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3676
  br label %24, !dbg !3677

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3678
  %8 = icmp eq i32 %7, 0, !dbg !3678
  br i1 %8, label %13, label %9, !dbg !3680

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3681
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3682
  %12 = icmp eq i64 %11, -1, !dbg !3683
  br i1 %12, label %16, label %13, !dbg !3684

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3685
  %15 = icmp eq i32 %14, 0, !dbg !3685
  br i1 %15, label %16, label %18, !dbg !3686

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3687
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3670, metadata !DIExpression()), !dbg !3671
  br label %24, !dbg !3688

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3689
  %20 = load i32, ptr %19, align 4, !dbg !3689, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3668, metadata !DIExpression()), !dbg !3671
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3670, metadata !DIExpression()), !dbg !3671
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3687
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3670, metadata !DIExpression()), !dbg !3671
  %22 = icmp eq i32 %20, 0, !dbg !3690
  br i1 %22, label %24, label %23, !dbg !3688

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3692, !tbaa !876
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3670, metadata !DIExpression()), !dbg !3671
  br label %24, !dbg !3694

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3671
  ret i32 %25, !dbg !3695
}

; Function Attrs: nofree nounwind
declare !dbg !3696 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3697 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3698 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3699 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3740, metadata !DIExpression()), !dbg !3741
  %2 = icmp eq ptr %0, null, !dbg !3742
  br i1 %2, label %6, label %3, !dbg !3744

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3745
  %5 = icmp eq i32 %4, 0, !dbg !3745
  br i1 %5, label %6, label %8, !dbg !3746

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3747
  br label %16, !dbg !3748

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3754
  %9 = load i32, ptr %0, align 8, !dbg !3756, !tbaa !3608
  %10 = and i32 %9, 256, !dbg !3758
  %11 = icmp eq i32 %10, 0, !dbg !3758
  br i1 %11, label %14, label %12, !dbg !3759

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3760
  br label %14, !dbg !3760

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3761
  br label %16, !dbg !3762

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3741
  ret i32 %17, !dbg !3763
}

; Function Attrs: nofree nounwind
declare !dbg !3764 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3765 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3804, metadata !DIExpression()), !dbg !3810
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3810
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3806, metadata !DIExpression()), !dbg !3810
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3811
  %5 = load ptr, ptr %4, align 8, !dbg !3811, !tbaa !3812
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3813
  %7 = load ptr, ptr %6, align 8, !dbg !3813, !tbaa !3814
  %8 = icmp eq ptr %5, %7, !dbg !3815
  br i1 %8, label %9, label %27, !dbg !3816

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3817
  %11 = load ptr, ptr %10, align 8, !dbg !3817, !tbaa !1345
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3818
  %13 = load ptr, ptr %12, align 8, !dbg !3818, !tbaa !3819
  %14 = icmp eq ptr %11, %13, !dbg !3820
  br i1 %14, label %15, label %27, !dbg !3821

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3822
  %17 = load ptr, ptr %16, align 8, !dbg !3822, !tbaa !3823
  %18 = icmp eq ptr %17, null, !dbg !3824
  br i1 %18, label %19, label %27, !dbg !3825

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3826
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3827
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3807, metadata !DIExpression()), !dbg !3828
  %22 = icmp eq i64 %21, -1, !dbg !3829
  br i1 %22, label %29, label %23, !dbg !3831

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3832, !tbaa !3608
  %25 = and i32 %24, -17, !dbg !3832
  store i32 %25, ptr %0, align 8, !dbg !3832, !tbaa !3608
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3833
  store i64 %21, ptr %26, align 8, !dbg !3834, !tbaa !3835
  br label %29, !dbg !3836

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3837
  br label %29, !dbg !3838

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3810
  ret i32 %30, !dbg !3839
}

; Function Attrs: nofree nounwind
declare !dbg !3840 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3843 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3848, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3849, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3850, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3851, metadata !DIExpression()), !dbg !3853
  %5 = icmp eq ptr %1, null, !dbg !3854
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3856
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3856
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3856
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3850, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3849, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3848, metadata !DIExpression()), !dbg !3853
  %9 = icmp eq ptr %3, null, !dbg !3857
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3859
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3851, metadata !DIExpression()), !dbg !3853
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3852, metadata !DIExpression()), !dbg !3853
  %12 = icmp ult i64 %11, -3, !dbg !3861
  br i1 %12, label %13, label %17, !dbg !3863

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3864
  %15 = icmp eq i32 %14, 0, !dbg !3864
  br i1 %15, label %16, label %29, !dbg !3865

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3866, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata ptr %10, metadata !3873, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i32 0, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 8, metadata !3877, metadata !DIExpression()), !dbg !3878
  store i64 0, ptr %10, align 1, !dbg !3880
  br label %29, !dbg !3881

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3882
  br i1 %18, label %19, label %20, !dbg !3884

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3885
  unreachable, !dbg !3885

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3886

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !3888
  br i1 %23, label %29, label %24, !dbg !3889

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3890
  br i1 %25, label %29, label %26, !dbg !3893

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3894, !tbaa !885
  %28 = zext i8 %27 to i32, !dbg !3895
  store i32 %28, ptr %6, align 4, !dbg !3896, !tbaa !876
  br label %29, !dbg !3897

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3853
  ret i64 %30, !dbg !3898
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3899 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3907, metadata !DIExpression()), !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3908, metadata !DIExpression()), !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3909, metadata !DIExpression()), !dbg !3911
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3912
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3910, metadata !DIExpression()), !dbg !3911
  br i1 %5, label %6, label %8, !dbg !3914

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !3915
  store i32 12, ptr %7, align 4, !dbg !3917, !tbaa !876
  br label %12, !dbg !3918

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3912
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %0, metadata !3919, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %9, metadata !3922, metadata !DIExpression()), !dbg !3923
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3925
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !3926
  br label %12, !dbg !3927

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3911
  ret ptr %13, !dbg !3928
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3929 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3934, metadata !DIExpression(), metadata !3938, metadata ptr %2, metadata !DIExpression()), !dbg !3939
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3933, metadata !DIExpression()), !dbg !3939
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3940
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3941
  %4 = icmp eq i32 %3, 0, !dbg !3941
  br i1 %4, label %5, label %12, !dbg !3943

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3944, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr @.str.136, metadata !3947, metadata !DIExpression()), !dbg !3948
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.136, i64 2), !dbg !3951
  %7 = icmp eq i32 %6, 0, !dbg !3952
  br i1 %7, label %11, label %8, !dbg !3953

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3944, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr @.str.1.137, metadata !3947, metadata !DIExpression()), !dbg !3954
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.137, i64 6), !dbg !3956
  %10 = icmp eq i32 %9, 0, !dbg !3957
  br i1 %10, label %11, label %12, !dbg !3958

11:                                               ; preds = %8, %5
  br label %12, !dbg !3959

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3939
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3960
  ret i1 %13, !dbg !3960
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3961 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3965, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3967, metadata !DIExpression()), !dbg !3968
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3969
  ret i32 %4, !dbg !3970
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3971 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !3976
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3977
  ret ptr %2, !dbg !3978
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3979 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3983
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3984
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3982, metadata !DIExpression()), !dbg !3983
  ret ptr %2, !dbg !3985
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3986 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !3995
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3989, metadata !DIExpression()), !dbg !3995
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3990, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 %0, metadata !3981, metadata !DIExpression()), !dbg !3996
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !3998
  call void @llvm.dbg.value(metadata ptr %4, metadata !3982, metadata !DIExpression()), !dbg !3996
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3991, metadata !DIExpression()), !dbg !3995
  %5 = icmp eq ptr %4, null, !dbg !3999
  br i1 %5, label %6, label %9, !dbg !4000

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4001
  br i1 %7, label %19, label %8, !dbg !4004

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4005, !tbaa !885
  br label %19, !dbg !4006

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4007
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3992, metadata !DIExpression()), !dbg !4008
  %11 = icmp ult i64 %10, %2, !dbg !4009
  br i1 %11, label %12, label %14, !dbg !4011

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4012
  call void @llvm.dbg.value(metadata ptr %1, metadata !4014, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata ptr %4, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.value(metadata i64 %13, metadata !4018, metadata !DIExpression()), !dbg !4019
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4021
  br label %19, !dbg !4022

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4023
  br i1 %15, label %19, label %16, !dbg !4026

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4027
  call void @llvm.dbg.value(metadata ptr %1, metadata !4014, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata ptr %4, metadata !4017, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64 %17, metadata !4018, metadata !DIExpression()), !dbg !4029
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4031
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4032
  store i8 0, ptr %18, align 1, !dbg !4033, !tbaa !885
  br label %19, !dbg !4034

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4035
  ret i32 %20, !dbg !4036
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
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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

!llvm.dbg.cu = !{!64, !376, !380, !395, !698, !455, !732, !469, !483, !531, !734, !690, !741, !776, !778, !780, !782, !784, !714, !786, !788, !790, !792}
!llvm.ident = !{!794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794, !794}
!llvm.module.flags = !{!795, !796, !797, !798, !799, !800, !801, !802}

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
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/sync.o -MD -MP -MF src/.deps/sync.Tpo -c src/sync.c -o src/.sync.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !108, globals: !118, splitDebugInlining: false, nameTableKind: None)
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
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 18, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!376 = distinct !DICompileUnit(language: DW_LANG_C11, file: !373, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !377, splitDebugInlining: false, nameTableKind: None)
!377 = !{!371, !374}
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "file_name", scope: !380, file: !381, line: 45, type: !115, isLocal: true, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C11, file: !381, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !382, splitDebugInlining: false, nameTableKind: None)
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
!394 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !395, file: !396, line: 66, type: !446, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!397 = !{!110, !117}
!398 = !{!399, !401, !425, !427, !429, !431, !393, !433, !435, !437, !439, !444}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !396, line: 272, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_file_name", scope: !403, file: !396, line: 304, type: !115, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "verror_at_line", scope: !396, file: !396, line: 298, type: !404, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !418)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !68, !68, !115, !73, !115, !406}
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !407, line: 52, baseType: !408)
!407 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !409, line: 12, baseType: !410)
!409 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !396, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !412)
!412 = !{!413, !414, !415, !416, !417}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !411, file: !396, baseType: !110, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !411, file: !396, baseType: !110, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !411, file: !396, baseType: !110, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !411, file: !396, baseType: !68, size: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !411, file: !396, baseType: !68, size: 32, offset: 224)
!418 = !{!419, !420, !421, !422, !423, !424}
!419 = !DILocalVariable(name: "status", arg: 1, scope: !403, file: !396, line: 298, type: !68)
!420 = !DILocalVariable(name: "errnum", arg: 2, scope: !403, file: !396, line: 298, type: !68)
!421 = !DILocalVariable(name: "file_name", arg: 3, scope: !403, file: !396, line: 298, type: !115)
!422 = !DILocalVariable(name: "line_number", arg: 4, scope: !403, file: !396, line: 298, type: !73)
!423 = !DILocalVariable(name: "message", arg: 5, scope: !403, file: !396, line: 298, type: !115)
!424 = !DILocalVariable(name: "args", arg: 6, scope: !403, file: !396, line: 298, type: !406)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(name: "old_line_number", scope: !403, file: !396, line: 305, type: !73, isLocal: true, isDefinition: true)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !396, line: 338, type: !233, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !265, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !243, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "error_message_count", scope: !395, file: !396, line: 69, type: !73, isLocal: false, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !395, file: !396, line: 295, type: !68, isLocal: false, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !260, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 21)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !396, line: 214, type: !19, isLocal: true, isDefinition: true)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null}
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !451, file: !452, line: 506, type: !68, isLocal: true, isDefinition: true)
!451 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !452, file: !452, line: 485, type: !453, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !457)
!452 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!453 = !DISubroutineType(types: !454)
!454 = !{!68, !68, !68}
!455 = distinct !DICompileUnit(language: DW_LANG_C11, file: !452, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !456, splitDebugInlining: false, nameTableKind: None)
!456 = !{!449}
!457 = !{!458, !459, !460, !461, !464}
!458 = !DILocalVariable(name: "fd", arg: 1, scope: !451, file: !452, line: 485, type: !68)
!459 = !DILocalVariable(name: "target", arg: 2, scope: !451, file: !452, line: 485, type: !68)
!460 = !DILocalVariable(name: "result", scope: !451, file: !452, line: 487, type: !68)
!461 = !DILocalVariable(name: "flags", scope: !462, file: !452, line: 530, type: !68)
!462 = distinct !DILexicalBlock(scope: !463, file: !452, line: 529, column: 5)
!463 = distinct !DILexicalBlock(scope: !451, file: !452, line: 528, column: 7)
!464 = !DILocalVariable(name: "saved_errno", scope: !465, file: !452, line: 533, type: !68)
!465 = distinct !DILexicalBlock(scope: !466, file: !452, line: 532, column: 9)
!466 = distinct !DILexicalBlock(scope: !462, file: !452, line: 531, column: 11)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(name: "program_name", scope: !469, file: !470, line: 31, type: !115, isLocal: false, isDefinition: true)
!469 = distinct !DICompileUnit(language: DW_LANG_C11, file: !470, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !471, globals: !472, splitDebugInlining: false, nameTableKind: None)
!470 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!471 = !{!110, !109}
!472 = !{!467, !473, !475}
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !470, line: 46, type: !265, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !470, line: 49, type: !233, isLocal: true, isDefinition: true)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "utf07FF", scope: !479, file: !480, line: 46, type: !507, isLocal: true, isDefinition: true)
!479 = distinct !DISubprogram(name: "proper_name_lite", scope: !480, file: !480, line: 38, type: !481, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !485)
!480 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!481 = !DISubroutineType(types: !482)
!482 = !{!115, !115, !115}
!483 = distinct !DICompileUnit(language: DW_LANG_C11, file: !480, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !484, splitDebugInlining: false, nameTableKind: None)
!484 = !{!477}
!485 = !{!486, !487, !488, !489, !494}
!486 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !479, file: !480, line: 38, type: !115)
!487 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !479, file: !480, line: 38, type: !115)
!488 = !DILocalVariable(name: "translation", scope: !479, file: !480, line: 40, type: !115)
!489 = !DILocalVariable(name: "w", scope: !479, file: !480, line: 47, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !491, line: 37, baseType: !492)
!491 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !196, line: 57, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !196, line: 42, baseType: !73)
!494 = !DILocalVariable(name: "mbs", scope: !479, file: !480, line: 48, type: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !496, line: 6, baseType: !497)
!496 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !498, line: 21, baseType: !499)
!498 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 13, size: 64, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !499, file: !498, line: 15, baseType: !68, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !499, file: !498, line: 20, baseType: !503, size: 32, offset: 32)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !498, line: 16, size: 32, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !503, file: !498, line: 18, baseType: !73, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !503, file: !498, line: 19, baseType: !233, size: 32)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !244)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !510, line: 78, type: !265, isLocal: true, isDefinition: true)
!510 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !510, line: 79, type: !238, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !510, line: 80, type: !126, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !510, line: 81, type: !126, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !510, line: 82, type: !218, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !510, line: 83, type: !243, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !510, line: 84, type: !265, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !510, line: 85, type: !260, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !510, line: 86, type: !260, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !510, line: 87, type: !265, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !531, file: !510, line: 76, type: !605, isLocal: false, isDefinition: true)
!531 = distinct !DICompileUnit(language: DW_LANG_C11, file: !510, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !532, retainedTypes: !540, globals: !541, splitDebugInlining: false, nameTableKind: None)
!532 = !{!533, !535, !79}
!533 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !534, line: 42, baseType: !73, size: 32, elements: !96)
!534 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!535 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !534, line: 254, baseType: !73, size: 32, elements: !536)
!536 = !{!537, !538, !539}
!537 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!538 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!539 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!540 = !{!110, !68, !111, !112}
!541 = !{!508, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !542, !546, !556, !558, !563, !565, !567, !569, !571, !594, !601, !603}
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !531, file: !510, line: 92, type: !544, isLocal: false, isDefinition: true)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 320, elements: !50)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !531, file: !510, line: 1040, type: !548, isLocal: false, isDefinition: true)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !510, line: 56, size: 448, elements: !549)
!549 = !{!550, !551, !552, !554, !555}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !548, file: !510, line: 59, baseType: !533, size: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !510, line: 62, baseType: !68, size: 32, offset: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !548, file: !510, line: 66, baseType: !553, size: 256, offset: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !266)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !548, file: !510, line: 69, baseType: !115, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !548, file: !510, line: 72, baseType: !115, size: 64, offset: 384)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !531, file: !510, line: 107, type: !548, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "slot0", scope: !531, file: !510, line: 831, type: !560, isLocal: true, isDefinition: true)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 256)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !510, line: 321, type: !243, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !510, line: 357, type: !243, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !510, line: 358, type: !243, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !510, line: 199, type: !260, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(name: "quote", scope: !573, file: !510, line: 228, type: !592, isLocal: true, isDefinition: true)
!573 = distinct !DISubprogram(name: "gettext_quote", scope: !510, file: !510, line: 197, type: !574, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!115, !115, !533}
!576 = !{!577, !578, !579, !580, !581}
!577 = !DILocalVariable(name: "msgid", arg: 1, scope: !573, file: !510, line: 197, type: !115)
!578 = !DILocalVariable(name: "s", arg: 2, scope: !573, file: !510, line: 197, type: !533)
!579 = !DILocalVariable(name: "translation", scope: !573, file: !510, line: 199, type: !115)
!580 = !DILocalVariable(name: "w", scope: !573, file: !510, line: 229, type: !490)
!581 = !DILocalVariable(name: "mbs", scope: !573, file: !510, line: 230, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !496, line: 6, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !498, line: 21, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 13, size: 64, elements: !585)
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !584, file: !498, line: 15, baseType: !68, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !584, file: !498, line: 20, baseType: !588, size: 32, offset: 32)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !498, line: 16, size: 32, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !588, file: !498, line: 18, baseType: !73, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !588, file: !498, line: 19, baseType: !233, size: 32)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !593)
!593 = !{!245, !235}
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "slotvec", scope: !531, file: !510, line: 834, type: !596, isLocal: true, isDefinition: true)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !510, line: 823, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !597, file: !510, line: 825, baseType: !112, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !597, file: !510, line: 826, baseType: !109, size: 64, offset: 64)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "nslots", scope: !531, file: !510, line: 832, type: !68, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(name: "slotvec0", scope: !531, file: !510, line: 833, type: !597, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 704, elements: !607)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!607 = !{!608}
!608 = !DISubrange(count: 11)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !611, line: 67, type: !336, isLocal: true, isDefinition: true)
!611 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !611, line: 69, type: !260, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !611, line: 83, type: !260, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !611, line: 83, type: !233, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !611, line: 85, type: !243, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !611, line: 88, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 171)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !611, line: 88, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 34)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !611, line: 105, type: !310, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !611, line: 109, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 23)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !611, line: 113, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 28)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !611, line: 120, type: !644, isLocal: true, isDefinition: true)
!644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !645)
!645 = !{!646}
!646 = !DISubrange(count: 32)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !611, line: 127, type: !351, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !611, line: 134, type: !287, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !611, line: 142, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 44)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !611, line: 150, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 48)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !611, line: 159, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 52)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !611, line: 170, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 60)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !611, line: 248, type: !218, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !611, line: 248, type: !315, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !218, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !121, isLocal: true, isDefinition: true)
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !611, line: 254, type: !287, isLocal: true, isDefinition: true)
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(scope: null, file: !611, line: 259, type: !3, isLocal: true, isDefinition: true)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(scope: null, file: !611, line: 259, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 29)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !690, file: !691, line: 26, type: !693, isLocal: false, isDefinition: true)
!690 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !692, splitDebugInlining: false, nameTableKind: None)
!691 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!692 = !{!688}
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !694)
!694 = !{!695}
!695 = !DISubrange(count: 47)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(name: "exit_failure", scope: !698, file: !699, line: 24, type: !701, isLocal: false, isDefinition: true)
!698 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !700, splitDebugInlining: false, nameTableKind: None)
!699 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!700 = !{!696}
!701 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !704, line: 34, type: !59, isLocal: true, isDefinition: true)
!704 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !704, line: 34, type: !260, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !704, line: 34, type: !282, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(scope: null, file: !711, line: 108, type: !44, isLocal: true, isDefinition: true)
!711 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "internal_state", scope: !714, file: !711, line: 97, type: !717, isLocal: true, isDefinition: true)
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !715, globals: !716, splitDebugInlining: false, nameTableKind: None)
!715 = !{!110, !112, !117}
!716 = !{!709, !712}
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !496, line: 6, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !498, line: 21, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !498, line: 13, size: 64, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !719, file: !498, line: 15, baseType: !68, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !719, file: !498, line: 20, baseType: !723, size: 32, offset: 32)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !498, line: 16, size: 32, elements: !724)
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !723, file: !498, line: 18, baseType: !73, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !723, file: !498, line: 19, baseType: !233, size: 32)
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(scope: null, file: !729, line: 35, type: !243, isLocal: true, isDefinition: true)
!729 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !729, line: 35, type: !238, isLocal: true, isDefinition: true)
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !611, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !735, retainedTypes: !739, globals: !740, splitDebugInlining: false, nameTableKind: None)
!735 = !{!736}
!736 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !611, line: 40, baseType: !73, size: 32, elements: !737)
!737 = !{!738}
!738 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!739 = !{!110}
!740 = !{!609, !612, !614, !616, !618, !620, !625, !630, !632, !637, !642, !647, !649, !651, !656, !661, !666, !671, !673, !675, !677, !679, !681, !683}
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !742, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !743, retainedTypes: !775, splitDebugInlining: false, nameTableKind: None)
!742 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!743 = !{!744, !756}
!744 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !745, file: !742, line: 188, baseType: !73, size: 32, elements: !754)
!745 = distinct !DISubprogram(name: "x2nrealloc", scope: !742, file: !742, line: 176, type: !746, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !749)
!746 = !DISubroutineType(types: !747)
!747 = !{!110, !110, !748, !112}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!749 = !{!750, !751, !752, !753}
!750 = !DILocalVariable(name: "p", arg: 1, scope: !745, file: !742, line: 176, type: !110)
!751 = !DILocalVariable(name: "pn", arg: 2, scope: !745, file: !742, line: 176, type: !748)
!752 = !DILocalVariable(name: "s", arg: 3, scope: !745, file: !742, line: 176, type: !112)
!753 = !DILocalVariable(name: "n", scope: !745, file: !742, line: 178, type: !112)
!754 = !{!755}
!755 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!756 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !757, file: !742, line: 228, baseType: !73, size: 32, elements: !754)
!757 = distinct !DISubprogram(name: "xpalloc", scope: !742, file: !742, line: 223, type: !758, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !765)
!758 = !DISubroutineType(types: !759)
!759 = !{!110, !110, !760, !761, !763, !761}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !762, line: 130, baseType: !763)
!762 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !764, line: 18, baseType: !197)
!764 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774}
!766 = !DILocalVariable(name: "pa", arg: 1, scope: !757, file: !742, line: 223, type: !110)
!767 = !DILocalVariable(name: "pn", arg: 2, scope: !757, file: !742, line: 223, type: !760)
!768 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !757, file: !742, line: 223, type: !761)
!769 = !DILocalVariable(name: "n_max", arg: 4, scope: !757, file: !742, line: 223, type: !763)
!770 = !DILocalVariable(name: "s", arg: 5, scope: !757, file: !742, line: 223, type: !761)
!771 = !DILocalVariable(name: "n0", scope: !757, file: !742, line: 230, type: !761)
!772 = !DILocalVariable(name: "n", scope: !757, file: !742, line: 237, type: !761)
!773 = !DILocalVariable(name: "nbytes", scope: !757, file: !742, line: 248, type: !761)
!774 = !DILocalVariable(name: "adjusted_nbytes", scope: !757, file: !742, line: 252, type: !761)
!775 = !{!109, !110}
!776 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !777, splitDebugInlining: false, nameTableKind: None)
!777 = !{!702, !705, !707}
!778 = distinct !DICompileUnit(language: DW_LANG_C11, file: !779, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!779 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!780 = distinct !DICompileUnit(language: DW_LANG_C11, file: !781, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!781 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!782 = distinct !DICompileUnit(language: DW_LANG_C11, file: !783, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, splitDebugInlining: false, nameTableKind: None)
!783 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!784 = distinct !DICompileUnit(language: DW_LANG_C11, file: !785, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, splitDebugInlining: false, nameTableKind: None)
!785 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!786 = distinct !DICompileUnit(language: DW_LANG_C11, file: !787, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, splitDebugInlining: false, nameTableKind: None)
!787 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !789, splitDebugInlining: false, nameTableKind: None)
!789 = !{!727, !730}
!790 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!791 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!792 = distinct !DICompileUnit(language: DW_LANG_C11, file: !793, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !739, splitDebugInlining: false, nameTableKind: None)
!793 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!794 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!795 = !{i32 7, !"Dwarf Version", i32 5}
!796 = !{i32 2, !"Debug Info Version", i32 3}
!797 = !{i32 1, !"wchar_size", i32 4}
!798 = !{i32 8, !"PIC Level", i32 2}
!799 = !{i32 7, !"PIE Level", i32 2}
!800 = !{i32 7, !"uwtable", i32 2}
!801 = !{i32 7, !"frame-pointer", i32 1}
!802 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!803 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 55, type: !804, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !806)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !68}
!806 = !{!807}
!807 = !DILocalVariable(name: "status", arg: 1, scope: !803, file: !2, line: 55, type: !68)
!808 = !DILocation(line: 0, scope: !803)
!809 = !DILocation(line: 57, column: 14, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !2, line: 57, column: 7)
!811 = !DILocation(line: 57, column: 7, scope: !803)
!812 = !DILocation(line: 58, column: 5, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !2, line: 58, column: 5)
!814 = !{!815, !815, i64 0}
!815 = !{!"any pointer", !816, i64 0}
!816 = !{!"omnipotent char", !817, i64 0}
!817 = !{!"Simple C/C++ TBAA"}
!818 = !DILocation(line: 61, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !810, file: !2, line: 60, column: 5)
!820 = !DILocation(line: 62, column: 7, scope: !819)
!821 = !DILocation(line: 70, column: 7, scope: !819)
!822 = !DILocation(line: 73, column: 7, scope: !819)
!823 = !DILocation(line: 76, column: 7, scope: !819)
!824 = !DILocation(line: 77, column: 7, scope: !819)
!825 = !DILocalVariable(name: "program", arg: 1, scope: !826, file: !67, line: 836, type: !115)
!826 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !827, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !115}
!829 = !{!825, !830, !837, !838, !840, !841}
!830 = !DILocalVariable(name: "infomap", scope: !826, file: !67, line: 838, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 896, elements: !261)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !826, file: !67, line: 838, size: 128, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !833, file: !67, line: 838, baseType: !115, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !833, file: !67, line: 838, baseType: !115, size: 64, offset: 64)
!837 = !DILocalVariable(name: "node", scope: !826, file: !67, line: 848, type: !115)
!838 = !DILocalVariable(name: "map_prog", scope: !826, file: !67, line: 849, type: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!840 = !DILocalVariable(name: "lc_messages", scope: !826, file: !67, line: 861, type: !115)
!841 = !DILocalVariable(name: "url_program", scope: !826, file: !67, line: 874, type: !115)
!842 = !DILocation(line: 0, scope: !826, inlinedAt: !843)
!843 = distinct !DILocation(line: 78, column: 7, scope: !819)
!844 = !{}
!845 = !DILocation(line: 857, column: 3, scope: !826, inlinedAt: !843)
!846 = !DILocation(line: 861, column: 29, scope: !826, inlinedAt: !843)
!847 = !DILocation(line: 862, column: 7, scope: !848, inlinedAt: !843)
!848 = distinct !DILexicalBlock(scope: !826, file: !67, line: 862, column: 7)
!849 = !DILocation(line: 862, column: 19, scope: !848, inlinedAt: !843)
!850 = !DILocation(line: 862, column: 22, scope: !848, inlinedAt: !843)
!851 = !DILocation(line: 862, column: 7, scope: !826, inlinedAt: !843)
!852 = !DILocation(line: 868, column: 7, scope: !853, inlinedAt: !843)
!853 = distinct !DILexicalBlock(scope: !848, file: !67, line: 863, column: 5)
!854 = !DILocation(line: 870, column: 5, scope: !853, inlinedAt: !843)
!855 = !DILocation(line: 875, column: 3, scope: !826, inlinedAt: !843)
!856 = !DILocation(line: 877, column: 3, scope: !826, inlinedAt: !843)
!857 = !DILocation(line: 80, column: 3, scope: !803)
!858 = !DISubprogram(name: "dcgettext", scope: !859, file: !859, line: 51, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!859 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!860 = !DISubroutineType(types: !861)
!861 = !{!109, !115, !115, !68}
!862 = !DISubprogram(name: "__fprintf_chk", scope: !863, file: !863, line: 93, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!864 = !DISubroutineType(types: !865)
!865 = !{!68, !866, !68, !867, null}
!866 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!867 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!868 = !DISubprogram(name: "__printf_chk", scope: !863, file: !863, line: 95, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!869 = !DISubroutineType(types: !870)
!870 = !{!68, !68, !867, null}
!871 = !DISubprogram(name: "fputs_unlocked", scope: !407, file: !407, line: 691, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!68, !867, !866}
!874 = !DILocation(line: 0, scope: !146)
!875 = !DILocation(line: 581, column: 7, scope: !154)
!876 = !{!877, !877, i64 0}
!877 = !{!"int", !816, i64 0}
!878 = !DILocation(line: 581, column: 19, scope: !154)
!879 = !DILocation(line: 581, column: 7, scope: !146)
!880 = !DILocation(line: 585, column: 26, scope: !153)
!881 = !DILocation(line: 0, scope: !153)
!882 = !DILocation(line: 586, column: 23, scope: !153)
!883 = !DILocation(line: 586, column: 28, scope: !153)
!884 = !DILocation(line: 586, column: 32, scope: !153)
!885 = !{!816, !816, i64 0}
!886 = !DILocation(line: 586, column: 38, scope: !153)
!887 = !DILocalVariable(name: "__s1", arg: 1, scope: !888, file: !889, line: 1359, type: !115)
!888 = distinct !DISubprogram(name: "streq", scope: !889, file: !889, line: 1359, type: !890, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !892)
!889 = !DIFile(filename: "./lib/string.h", directory: "/src")
!890 = !DISubroutineType(types: !891)
!891 = !{!156, !115, !115}
!892 = !{!887, !893}
!893 = !DILocalVariable(name: "__s2", arg: 2, scope: !888, file: !889, line: 1359, type: !115)
!894 = !DILocation(line: 0, scope: !888, inlinedAt: !895)
!895 = distinct !DILocation(line: 586, column: 41, scope: !153)
!896 = !DILocation(line: 1361, column: 11, scope: !888, inlinedAt: !895)
!897 = !DILocation(line: 1361, column: 10, scope: !888, inlinedAt: !895)
!898 = !DILocation(line: 586, column: 19, scope: !153)
!899 = !DILocation(line: 587, column: 5, scope: !153)
!900 = !DILocation(line: 588, column: 7, scope: !901)
!901 = distinct !DILexicalBlock(scope: !146, file: !67, line: 588, column: 7)
!902 = !DILocation(line: 588, column: 7, scope: !146)
!903 = !DILocation(line: 590, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !901, file: !67, line: 589, column: 5)
!905 = !DILocation(line: 591, column: 7, scope: !904)
!906 = !DILocation(line: 595, column: 37, scope: !146)
!907 = !DILocation(line: 595, column: 35, scope: !146)
!908 = !DILocation(line: 596, column: 29, scope: !146)
!909 = !DILocation(line: 597, column: 8, scope: !162)
!910 = !DILocation(line: 597, column: 7, scope: !146)
!911 = !DILocation(line: 604, column: 24, scope: !161)
!912 = !DILocation(line: 604, column: 12, scope: !162)
!913 = !DILocation(line: 0, scope: !160)
!914 = !DILocation(line: 610, column: 16, scope: !160)
!915 = !DILocation(line: 610, column: 7, scope: !160)
!916 = !DILocation(line: 611, column: 21, scope: !160)
!917 = !{!918, !918, i64 0}
!918 = !{!"short", !816, i64 0}
!919 = !DILocation(line: 611, column: 19, scope: !160)
!920 = !DILocation(line: 611, column: 16, scope: !160)
!921 = !DILocation(line: 610, column: 30, scope: !160)
!922 = distinct !{!922, !915, !916, !923}
!923 = !{!"llvm.loop.mustprogress"}
!924 = !DILocation(line: 612, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !160, file: !67, line: 612, column: 11)
!926 = !DILocation(line: 612, column: 11, scope: !160)
!927 = !DILocation(line: 620, column: 23, scope: !146)
!928 = !DILocation(line: 625, column: 39, scope: !146)
!929 = !DILocation(line: 626, column: 3, scope: !146)
!930 = !DILocation(line: 626, column: 10, scope: !146)
!931 = !DILocation(line: 626, column: 21, scope: !146)
!932 = !DILocation(line: 628, column: 44, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !67, line: 628, column: 11)
!934 = distinct !DILexicalBlock(scope: !146, file: !67, line: 627, column: 5)
!935 = !DILocation(line: 628, column: 32, scope: !933)
!936 = !DILocation(line: 628, column: 49, scope: !933)
!937 = !DILocation(line: 628, column: 11, scope: !934)
!938 = !DILocation(line: 630, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !67, line: 630, column: 11)
!940 = !DILocation(line: 630, column: 11, scope: !934)
!941 = !DILocation(line: 632, column: 26, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !67, line: 632, column: 15)
!943 = distinct !DILexicalBlock(scope: !939, file: !67, line: 631, column: 9)
!944 = !DILocation(line: 632, column: 34, scope: !942)
!945 = !DILocation(line: 632, column: 37, scope: !942)
!946 = !DILocation(line: 632, column: 15, scope: !943)
!947 = !DILocation(line: 640, column: 16, scope: !934)
!948 = distinct !{!948, !929, !949, !923}
!949 = !DILocation(line: 641, column: 5, scope: !146)
!950 = !DILocation(line: 644, column: 3, scope: !146)
!951 = !DILocation(line: 0, scope: !888, inlinedAt: !952)
!952 = distinct !DILocation(line: 648, column: 31, scope: !146)
!953 = !DILocation(line: 0, scope: !888, inlinedAt: !954)
!954 = distinct !DILocation(line: 649, column: 31, scope: !146)
!955 = !DILocation(line: 0, scope: !888, inlinedAt: !956)
!956 = distinct !DILocation(line: 650, column: 31, scope: !146)
!957 = !DILocation(line: 0, scope: !888, inlinedAt: !958)
!958 = distinct !DILocation(line: 651, column: 31, scope: !146)
!959 = !DILocation(line: 0, scope: !888, inlinedAt: !960)
!960 = distinct !DILocation(line: 652, column: 31, scope: !146)
!961 = !DILocation(line: 0, scope: !888, inlinedAt: !962)
!962 = distinct !DILocation(line: 653, column: 31, scope: !146)
!963 = !DILocation(line: 0, scope: !888, inlinedAt: !964)
!964 = distinct !DILocation(line: 654, column: 31, scope: !146)
!965 = !DILocation(line: 0, scope: !888, inlinedAt: !966)
!966 = distinct !DILocation(line: 655, column: 31, scope: !146)
!967 = !DILocation(line: 0, scope: !888, inlinedAt: !968)
!968 = distinct !DILocation(line: 656, column: 31, scope: !146)
!969 = !DILocation(line: 0, scope: !888, inlinedAt: !970)
!970 = distinct !DILocation(line: 657, column: 31, scope: !146)
!971 = !DILocation(line: 663, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !146, file: !67, line: 663, column: 7)
!973 = !DILocation(line: 664, column: 7, scope: !972)
!974 = !DILocation(line: 664, column: 10, scope: !972)
!975 = !DILocation(line: 663, column: 7, scope: !146)
!976 = !DILocation(line: 669, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !972, file: !67, line: 665, column: 5)
!978 = !DILocation(line: 671, column: 5, scope: !977)
!979 = !DILocation(line: 676, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !972, file: !67, line: 673, column: 5)
!981 = !DILocation(line: 679, column: 3, scope: !146)
!982 = !DILocation(line: 683, column: 3, scope: !146)
!983 = !DILocation(line: 686, column: 3, scope: !146)
!984 = !DILocation(line: 688, column: 3, scope: !146)
!985 = !DILocation(line: 691, column: 3, scope: !146)
!986 = !DILocation(line: 695, column: 3, scope: !146)
!987 = !DILocation(line: 696, column: 1, scope: !146)
!988 = !DISubprogram(name: "setlocale", scope: !989, file: !989, line: 122, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!990 = !DISubroutineType(types: !991)
!991 = !{!109, !68, !115}
!992 = !DISubprogram(name: "strncmp", scope: !993, file: !993, line: 159, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!994 = !DISubroutineType(types: !995)
!995 = !{!68, !115, !115, !112}
!996 = !DISubprogram(name: "exit", scope: !997, file: !997, line: 624, type: !804, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!997 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!998 = !DISubprogram(name: "getenv", scope: !997, file: !997, line: 641, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!109, !115}
!1001 = !DISubprogram(name: "strcmp", scope: !993, file: !993, line: 156, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!68, !115, !115}
!1004 = !DISubprogram(name: "strspn", scope: !993, file: !993, line: 297, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!114, !115, !115}
!1007 = !DISubprogram(name: "strchr", scope: !993, file: !993, line: 246, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!109, !115, !68}
!1010 = !DISubprogram(name: "__ctype_b_loc", scope: !80, file: !80, line: 79, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1016 = !DISubprogram(name: "strcspn", scope: !993, file: !993, line: 293, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubprogram(name: "fwrite_unlocked", scope: !407, file: !407, line: 704, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!112, !1020, !112, !112, !866}
!1020 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1023 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 166, type: !1024, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1027)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!68, !68, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1028 = !DILocalVariable(name: "argc", arg: 1, scope: !1023, file: !2, line: 166, type: !68)
!1029 = !DILocalVariable(name: "argv", arg: 2, scope: !1023, file: !2, line: 166, type: !1026)
!1030 = !DILocalVariable(name: "arg_data", scope: !1023, file: !2, line: 168, type: !156)
!1031 = !DILocalVariable(name: "arg_file_system", scope: !1023, file: !2, line: 168, type: !156)
!1032 = !DILocalVariable(name: "ok", scope: !1023, file: !2, line: 169, type: !156)
!1033 = !DILocalVariable(name: "c", scope: !1023, file: !2, line: 179, type: !68)
!1034 = !DILocalVariable(name: "args_specified", scope: !1023, file: !2, line: 202, type: !156)
!1035 = !DILocalVariable(name: "mode", scope: !1023, file: !2, line: 211, type: !72)
!1036 = !DILocation(line: 0, scope: !1023)
!1037 = !DILocation(line: 172, column: 21, scope: !1023)
!1038 = !DILocation(line: 172, column: 3, scope: !1023)
!1039 = !DILocation(line: 173, column: 3, scope: !1023)
!1040 = !DILocation(line: 174, column: 3, scope: !1023)
!1041 = !DILocation(line: 175, column: 3, scope: !1023)
!1042 = !DILocation(line: 177, column: 3, scope: !1023)
!1043 = !DILocation(line: 180, column: 3, scope: !1023)
!1044 = !DILocation(line: 180, column: 15, scope: !1023)
!1045 = distinct !{!1045, !1043, !1046, !923, !1047}
!1046 = !DILocation(line: 200, column: 5, scope: !1023)
!1047 = !{!"llvm.loop.peeled.count", i32 1}
!1048 = !DILocation(line: 191, column: 11, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 184, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 182, column: 5)
!1051 = distinct !{!1051, !1043, !1046, !923}
!1052 = !DILocation(line: 193, column: 9, scope: !1049)
!1053 = !DILocation(line: 195, column: 9, scope: !1049)
!1054 = !DILocation(line: 198, column: 11, scope: !1049)
!1055 = !DILocation(line: 202, column: 25, scope: !1023)
!1056 = !DILocation(line: 202, column: 32, scope: !1023)
!1057 = !DILocation(line: 204, column: 16, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 204, column: 7)
!1059 = !DILocation(line: 205, column: 5, scope: !1058)
!1060 = !DILocation(line: 208, column: 23, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 208, column: 7)
!1062 = !DILocation(line: 209, column: 5, scope: !1061)
!1063 = !DILocation(line: 212, column: 24, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 212, column: 7)
!1065 = !DILocation(line: 221, column: 7, scope: !1023)
!1066 = !DILocation(line: 225, column: 7, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 225, column: 7)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 224, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 221, column: 7)
!1070 = !DILocation(line: 222, column: 5, scope: !1069)
!1071 = !DILocation(line: 226, column: 31, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 225, column: 7)
!1073 = !DILocalVariable(name: "mode", arg: 1, scope: !1074, file: !2, line: 87, type: !72)
!1074 = distinct !DISubprogram(name: "sync_arg", scope: !2, file: !2, line: 87, type: !1075, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!156, !72, !115}
!1077 = !{!1073, !1078, !1079, !1080, !1081, !1084, !1085, !1086}
!1078 = !DILocalVariable(name: "file", arg: 2, scope: !1074, file: !2, line: 87, type: !115)
!1079 = !DILocalVariable(name: "open_flags", scope: !1074, file: !2, line: 89, type: !68)
!1080 = !DILocalVariable(name: "fd", scope: !1074, file: !2, line: 99, type: !68)
!1081 = !DILocalVariable(name: "rd_errno", scope: !1082, file: !2, line: 104, type: !68)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 101, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 100, column: 7)
!1084 = !DILocalVariable(name: "ret", scope: !1074, file: !2, line: 114, type: !156)
!1085 = !DILocalVariable(name: "fdflags", scope: !1074, file: !2, line: 117, type: !68)
!1086 = !DILocalVariable(name: "sync_status", scope: !1087, file: !2, line: 128, type: !68)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 127, column: 5)
!1088 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 126, column: 7)
!1089 = !DILocation(line: 0, scope: !1074, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 226, column: 15, scope: !1072)
!1091 = !DILocation(line: 99, column: 12, scope: !1074, inlinedAt: !1090)
!1092 = !DILocation(line: 100, column: 10, scope: !1083, inlinedAt: !1090)
!1093 = !DILocation(line: 100, column: 7, scope: !1074, inlinedAt: !1090)
!1094 = !DILocation(line: 104, column: 22, scope: !1082, inlinedAt: !1090)
!1095 = !DILocation(line: 0, scope: !1082, inlinedAt: !1090)
!1096 = !DILocation(line: 106, column: 14, scope: !1097, inlinedAt: !1090)
!1097 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 105, column: 11)
!1098 = !DILocation(line: 107, column: 14, scope: !1099, inlinedAt: !1090)
!1099 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 107, column: 11)
!1100 = !DILocation(line: 107, column: 11, scope: !1082, inlinedAt: !1090)
!1101 = !DILocation(line: 117, column: 17, scope: !1074, inlinedAt: !1090)
!1102 = !DILocation(line: 118, column: 15, scope: !1103, inlinedAt: !1090)
!1103 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 118, column: 7)
!1104 = !DILocation(line: 119, column: 7, scope: !1103, inlinedAt: !1090)
!1105 = !DILocation(line: 119, column: 38, scope: !1103, inlinedAt: !1090)
!1106 = !DILocation(line: 119, column: 10, scope: !1103, inlinedAt: !1090)
!1107 = !DILocation(line: 119, column: 53, scope: !1103, inlinedAt: !1090)
!1108 = !DILocation(line: 118, column: 7, scope: !1074, inlinedAt: !1090)
!1109 = !DILocation(line: 0, scope: !1087, inlinedAt: !1090)
!1110 = !DILocation(line: 130, column: 7, scope: !1087, inlinedAt: !1090)
!1111 = !DILocation(line: 133, column: 25, scope: !1112, inlinedAt: !1090)
!1112 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 131, column: 9)
!1113 = !DILocation(line: 134, column: 11, scope: !1112, inlinedAt: !1090)
!1114 = !DILocation(line: 137, column: 25, scope: !1112, inlinedAt: !1090)
!1115 = !DILocation(line: 138, column: 11, scope: !1112, inlinedAt: !1090)
!1116 = !DILocation(line: 142, column: 25, scope: !1112, inlinedAt: !1090)
!1117 = !DILocation(line: 143, column: 11, scope: !1112, inlinedAt: !1090)
!1118 = !DILocation(line: 146, column: 11, scope: !1112, inlinedAt: !1090)
!1119 = !DILocation(line: 0, scope: !1112, inlinedAt: !1090)
!1120 = !DILocation(line: 149, column: 23, scope: !1121, inlinedAt: !1090)
!1121 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 149, column: 11)
!1122 = !DILocation(line: 149, column: 11, scope: !1087, inlinedAt: !1090)
!1123 = !DILocation(line: 156, column: 7, scope: !1124, inlinedAt: !1090)
!1124 = distinct !DILexicalBlock(scope: !1074, file: !2, line: 156, column: 7)
!1125 = !DILocation(line: 156, column: 18, scope: !1124, inlinedAt: !1090)
!1126 = !DILocation(line: 156, column: 7, scope: !1074, inlinedAt: !1090)
!1127 = !DILocation(line: 158, column: 7, scope: !1128, inlinedAt: !1090)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 157, column: 5)
!1129 = !DILocation(line: 160, column: 5, scope: !1128, inlinedAt: !1090)
!1130 = !DILocation(line: 163, column: 1, scope: !1074, inlinedAt: !1090)
!1131 = !DILocation(line: 226, column: 12, scope: !1072)
!1132 = !DILocation(line: 225, column: 35, scope: !1072)
!1133 = !DILocation(line: 225, column: 21, scope: !1072)
!1134 = distinct !{!1134, !1066, !1135, !923}
!1135 = !DILocation(line: 226, column: 43, scope: !1067)
!1136 = !DILocation(line: 229, column: 10, scope: !1023)
!1137 = !DILocation(line: 229, column: 3, scope: !1023)
!1138 = !DISubprogram(name: "bindtextdomain", scope: !859, file: !859, line: 86, type: !1139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!109, !115, !115}
!1141 = !DISubprogram(name: "textdomain", scope: !859, file: !859, line: 82, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DISubprogram(name: "atexit", scope: !997, file: !997, line: 602, type: !1143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!68, !446}
!1145 = !DISubprogram(name: "getopt_long", scope: !364, file: !364, line: 66, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!68, !68, !1148, !115, !1150, !369}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1151 = !DISubprogram(name: "sync", scope: !1152, file: !1152, line: 1005, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1152 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1153 = !DISubprogram(name: "open", scope: !1154, file: !1154, line: 181, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!68, !115, !68, null}
!1157 = !DISubprogram(name: "__errno_location", scope: !1158, file: !1158, line: 37, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!369}
!1161 = !DISubprogram(name: "fdatasync", scope: !1152, file: !1152, line: 1150, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!68, !68}
!1164 = !DISubprogram(name: "fsync", scope: !1152, file: !1152, line: 989, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubprogram(name: "syncfs", scope: !1152, file: !1152, line: 995, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1166 = !DISubprogram(name: "close", scope: !1152, file: !1152, line: 358, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1167 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !381, file: !381, line: 50, type: !827, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1168)
!1168 = !{!1169}
!1169 = !DILocalVariable(name: "file", arg: 1, scope: !1167, file: !381, line: 50, type: !115)
!1170 = !DILocation(line: 0, scope: !1167)
!1171 = !DILocation(line: 52, column: 13, scope: !1167)
!1172 = !DILocation(line: 53, column: 1, scope: !1167)
!1173 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !381, file: !381, line: 87, type: !1174, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !156}
!1176 = !{!1177}
!1177 = !DILocalVariable(name: "ignore", arg: 1, scope: !1173, file: !381, line: 87, type: !156)
!1178 = !DILocation(line: 0, scope: !1173)
!1179 = !DILocation(line: 89, column: 16, scope: !1173)
!1180 = !{!1181, !1181, i64 0}
!1181 = !{!"_Bool", !816, i64 0}
!1182 = !DILocation(line: 90, column: 1, scope: !1173)
!1183 = distinct !DISubprogram(name: "close_stdout", scope: !381, file: !381, line: 116, type: !447, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1184)
!1184 = !{!1185}
!1185 = !DILocalVariable(name: "write_error", scope: !1186, file: !381, line: 121, type: !115)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !381, line: 120, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !381, line: 118, column: 7)
!1188 = !DILocation(line: 118, column: 21, scope: !1187)
!1189 = !DILocation(line: 118, column: 7, scope: !1187)
!1190 = !DILocation(line: 118, column: 29, scope: !1187)
!1191 = !DILocation(line: 119, column: 7, scope: !1187)
!1192 = !DILocation(line: 119, column: 12, scope: !1187)
!1193 = !{i8 0, i8 2}
!1194 = !DILocation(line: 119, column: 25, scope: !1187)
!1195 = !DILocation(line: 119, column: 28, scope: !1187)
!1196 = !DILocation(line: 119, column: 34, scope: !1187)
!1197 = !DILocation(line: 118, column: 7, scope: !1183)
!1198 = !DILocation(line: 121, column: 33, scope: !1186)
!1199 = !DILocation(line: 0, scope: !1186)
!1200 = !DILocation(line: 122, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1186, file: !381, line: 122, column: 11)
!1202 = !DILocation(line: 0, scope: !1201)
!1203 = !DILocation(line: 122, column: 11, scope: !1186)
!1204 = !DILocation(line: 123, column: 9, scope: !1201)
!1205 = !DILocation(line: 126, column: 9, scope: !1201)
!1206 = !DILocation(line: 128, column: 14, scope: !1186)
!1207 = !DILocation(line: 128, column: 7, scope: !1186)
!1208 = !DILocation(line: 133, column: 42, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1183, file: !381, line: 133, column: 7)
!1210 = !DILocation(line: 133, column: 28, scope: !1209)
!1211 = !DILocation(line: 133, column: 50, scope: !1209)
!1212 = !DILocation(line: 133, column: 7, scope: !1183)
!1213 = !DILocation(line: 134, column: 12, scope: !1209)
!1214 = !DILocation(line: 134, column: 5, scope: !1209)
!1215 = !DILocation(line: 135, column: 1, scope: !1183)
!1216 = !DISubprogram(name: "_exit", scope: !1152, file: !1152, line: 624, type: !804, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1217 = distinct !DISubprogram(name: "verror", scope: !396, file: !396, line: 251, type: !1218, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !68, !68, !115, !406}
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DILocalVariable(name: "status", arg: 1, scope: !1217, file: !396, line: 251, type: !68)
!1222 = !DILocalVariable(name: "errnum", arg: 2, scope: !1217, file: !396, line: 251, type: !68)
!1223 = !DILocalVariable(name: "message", arg: 3, scope: !1217, file: !396, line: 251, type: !115)
!1224 = !DILocalVariable(name: "args", arg: 4, scope: !1217, file: !396, line: 251, type: !406)
!1225 = !DILocation(line: 0, scope: !1217)
!1226 = !DILocation(line: 261, column: 3, scope: !1217)
!1227 = !DILocation(line: 265, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1217, file: !396, line: 265, column: 7)
!1229 = !DILocation(line: 265, column: 7, scope: !1217)
!1230 = !DILocation(line: 266, column: 5, scope: !1228)
!1231 = !DILocation(line: 272, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !396, line: 268, column: 5)
!1233 = !DILocation(line: 276, column: 3, scope: !1217)
!1234 = !{i64 0, i64 8, !814, i64 8, i64 8, !814, i64 16, i64 8, !814, i64 24, i64 4, !876, i64 28, i64 4, !876}
!1235 = !DILocation(line: 282, column: 1, scope: !1217)
!1236 = distinct !DISubprogram(name: "flush_stdout", scope: !396, file: !396, line: 163, type: !447, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1237)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "stdout_fd", scope: !1236, file: !396, line: 166, type: !68)
!1239 = !DILocation(line: 0, scope: !1236)
!1240 = !DILocalVariable(name: "fd", arg: 1, scope: !1241, file: !396, line: 145, type: !68)
!1241 = distinct !DISubprogram(name: "is_open", scope: !396, file: !396, line: 145, type: !1162, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1242)
!1242 = !{!1240}
!1243 = !DILocation(line: 0, scope: !1241, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 182, column: 25, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1236, file: !396, line: 182, column: 7)
!1246 = !DILocation(line: 157, column: 15, scope: !1241, inlinedAt: !1244)
!1247 = !DILocation(line: 157, column: 12, scope: !1241, inlinedAt: !1244)
!1248 = !DILocation(line: 182, column: 7, scope: !1236)
!1249 = !DILocation(line: 184, column: 5, scope: !1245)
!1250 = !DILocation(line: 185, column: 1, scope: !1236)
!1251 = distinct !DISubprogram(name: "error_tail", scope: !396, file: !396, line: 219, type: !1218, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DILocalVariable(name: "status", arg: 1, scope: !1251, file: !396, line: 219, type: !68)
!1254 = !DILocalVariable(name: "errnum", arg: 2, scope: !1251, file: !396, line: 219, type: !68)
!1255 = !DILocalVariable(name: "message", arg: 3, scope: !1251, file: !396, line: 219, type: !115)
!1256 = !DILocalVariable(name: "args", arg: 4, scope: !1251, file: !396, line: 219, type: !406)
!1257 = distinct !DIAssignID()
!1258 = !DILocation(line: 0, scope: !1251)
!1259 = !DILocation(line: 229, column: 13, scope: !1251)
!1260 = !DILocation(line: 135, column: 10, scope: !1261, inlinedAt: !1303)
!1261 = distinct !DISubprogram(name: "vfprintf", scope: !863, file: !863, line: 132, type: !1262, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1299)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!68, !1264, !867, !408}
!1264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1267, file: !173, line: 51, baseType: !68, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1267, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1267, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1267, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1267, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1267, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1267, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1267, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1267, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1267, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1267, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1267, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1267, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1267, file: !173, line: 70, baseType: !1283, size: 64, offset: 832)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1267, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1267, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1267, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1267, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1267, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1267, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1267, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1267, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1267, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1267, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1267, file: !173, line: 93, baseType: !1283, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1267, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1267, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1267, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1267, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!1299 = !{!1300, !1301, !1302}
!1300 = !DILocalVariable(name: "__stream", arg: 1, scope: !1261, file: !863, line: 132, type: !1264)
!1301 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1261, file: !863, line: 133, type: !867)
!1302 = !DILocalVariable(name: "__ap", arg: 3, scope: !1261, file: !863, line: 133, type: !408)
!1303 = distinct !DILocation(line: 229, column: 3, scope: !1251)
!1304 = !{!1305, !1307}
!1305 = distinct !{!1305, !1306, !"vfprintf.inline: argument 0"}
!1306 = distinct !{!1306, !"vfprintf.inline"}
!1307 = distinct !{!1307, !1306, !"vfprintf.inline: argument 1"}
!1308 = !DILocation(line: 229, column: 3, scope: !1251)
!1309 = !DILocation(line: 0, scope: !1261, inlinedAt: !1303)
!1310 = !DILocation(line: 232, column: 3, scope: !1251)
!1311 = !DILocation(line: 233, column: 7, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1251, file: !396, line: 233, column: 7)
!1313 = !DILocation(line: 233, column: 7, scope: !1251)
!1314 = !DILocalVariable(name: "errbuf", scope: !1315, file: !396, line: 193, type: !1319)
!1315 = distinct !DISubprogram(name: "print_errno_message", scope: !396, file: !396, line: 188, type: !804, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1316)
!1316 = !{!1317, !1318, !1314}
!1317 = !DILocalVariable(name: "errnum", arg: 1, scope: !1315, file: !396, line: 188, type: !68)
!1318 = !DILocalVariable(name: "s", scope: !1315, file: !396, line: 190, type: !115)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 1024)
!1322 = !DILocation(line: 0, scope: !1315, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 234, column: 5, scope: !1312)
!1324 = !DILocation(line: 193, column: 3, scope: !1315, inlinedAt: !1323)
!1325 = !DILocation(line: 195, column: 7, scope: !1315, inlinedAt: !1323)
!1326 = !DILocation(line: 207, column: 9, scope: !1327, inlinedAt: !1323)
!1327 = distinct !DILexicalBlock(scope: !1315, file: !396, line: 207, column: 7)
!1328 = !DILocation(line: 207, column: 7, scope: !1315, inlinedAt: !1323)
!1329 = !DILocation(line: 208, column: 9, scope: !1327, inlinedAt: !1323)
!1330 = !DILocation(line: 208, column: 5, scope: !1327, inlinedAt: !1323)
!1331 = !DILocation(line: 214, column: 3, scope: !1315, inlinedAt: !1323)
!1332 = !DILocation(line: 216, column: 1, scope: !1315, inlinedAt: !1323)
!1333 = !DILocation(line: 234, column: 5, scope: !1312)
!1334 = !DILocation(line: 238, column: 3, scope: !1251)
!1335 = !DILocalVariable(name: "__c", arg: 1, scope: !1336, file: !1337, line: 101, type: !68)
!1336 = distinct !DISubprogram(name: "putc_unlocked", scope: !1337, file: !1337, line: 101, type: !1338, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1340)
!1337 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!68, !68, !1265}
!1340 = !{!1335, !1341}
!1341 = !DILocalVariable(name: "__stream", arg: 2, scope: !1336, file: !1337, line: 101, type: !1265)
!1342 = !DILocation(line: 0, scope: !1336, inlinedAt: !1343)
!1343 = distinct !DILocation(line: 238, column: 3, scope: !1251)
!1344 = !DILocation(line: 103, column: 10, scope: !1336, inlinedAt: !1343)
!1345 = !{!1346, !815, i64 40}
!1346 = !{!"_IO_FILE", !877, i64 0, !815, i64 8, !815, i64 16, !815, i64 24, !815, i64 32, !815, i64 40, !815, i64 48, !815, i64 56, !815, i64 64, !815, i64 72, !815, i64 80, !815, i64 88, !815, i64 96, !815, i64 104, !877, i64 112, !877, i64 116, !1347, i64 120, !918, i64 128, !816, i64 130, !816, i64 131, !815, i64 136, !1347, i64 144, !815, i64 152, !815, i64 160, !815, i64 168, !815, i64 176, !1347, i64 184, !877, i64 192, !816, i64 196}
!1347 = !{!"long", !816, i64 0}
!1348 = !{!1346, !815, i64 48}
!1349 = !{!"branch_weights", i32 2000, i32 1}
!1350 = !DILocation(line: 240, column: 3, scope: !1251)
!1351 = !DILocation(line: 241, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1251, file: !396, line: 241, column: 7)
!1353 = !DILocation(line: 241, column: 7, scope: !1251)
!1354 = !DILocation(line: 242, column: 5, scope: !1352)
!1355 = !DILocation(line: 243, column: 1, scope: !1251)
!1356 = !DISubprogram(name: "__vfprintf_chk", scope: !863, file: !863, line: 96, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!68, !1264, !68, !867, !408}
!1359 = !DISubprogram(name: "strerror_r", scope: !993, file: !993, line: 444, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!109, !68, !109, !112}
!1362 = !DISubprogram(name: "__overflow", scope: !407, file: !407, line: 886, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!68, !1265, !68}
!1365 = !DISubprogram(name: "fflush_unlocked", scope: !407, file: !407, line: 239, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!68, !1265}
!1368 = !DISubprogram(name: "fcntl", scope: !1154, file: !1154, line: 149, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!68, !68, !68, null}
!1371 = distinct !DISubprogram(name: "error", scope: !396, file: !396, line: 285, type: !1372, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !68, !68, !115, null}
!1374 = !{!1375, !1376, !1377, !1378}
!1375 = !DILocalVariable(name: "status", arg: 1, scope: !1371, file: !396, line: 285, type: !68)
!1376 = !DILocalVariable(name: "errnum", arg: 2, scope: !1371, file: !396, line: 285, type: !68)
!1377 = !DILocalVariable(name: "message", arg: 3, scope: !1371, file: !396, line: 285, type: !115)
!1378 = !DILocalVariable(name: "ap", scope: !1371, file: !396, line: 287, type: !406)
!1379 = distinct !DIAssignID()
!1380 = !DILocation(line: 0, scope: !1371)
!1381 = !DILocation(line: 287, column: 3, scope: !1371)
!1382 = !DILocation(line: 288, column: 3, scope: !1371)
!1383 = !DILocation(line: 289, column: 3, scope: !1371)
!1384 = !DILocation(line: 290, column: 3, scope: !1371)
!1385 = !DILocation(line: 291, column: 1, scope: !1371)
!1386 = !DILocation(line: 0, scope: !403)
!1387 = !DILocation(line: 302, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !403, file: !396, line: 302, column: 7)
!1389 = !DILocation(line: 302, column: 7, scope: !403)
!1390 = !DILocation(line: 307, column: 11, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !396, line: 307, column: 11)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !396, line: 303, column: 5)
!1393 = !DILocation(line: 307, column: 27, scope: !1391)
!1394 = !DILocation(line: 308, column: 11, scope: !1391)
!1395 = !DILocation(line: 308, column: 28, scope: !1391)
!1396 = !DILocation(line: 308, column: 25, scope: !1391)
!1397 = !DILocation(line: 309, column: 15, scope: !1391)
!1398 = !DILocation(line: 309, column: 33, scope: !1391)
!1399 = !DILocation(line: 310, column: 19, scope: !1391)
!1400 = !DILocation(line: 311, column: 22, scope: !1391)
!1401 = !DILocation(line: 311, column: 56, scope: !1391)
!1402 = !DILocation(line: 307, column: 11, scope: !1392)
!1403 = !DILocation(line: 316, column: 21, scope: !1392)
!1404 = !DILocation(line: 317, column: 23, scope: !1392)
!1405 = !DILocation(line: 318, column: 5, scope: !1392)
!1406 = !DILocation(line: 327, column: 3, scope: !403)
!1407 = !DILocation(line: 331, column: 7, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !403, file: !396, line: 331, column: 7)
!1409 = !DILocation(line: 331, column: 7, scope: !403)
!1410 = !DILocation(line: 332, column: 5, scope: !1408)
!1411 = !DILocation(line: 338, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !396, line: 334, column: 5)
!1413 = !DILocation(line: 346, column: 3, scope: !403)
!1414 = !DILocation(line: 350, column: 3, scope: !403)
!1415 = !DILocation(line: 356, column: 1, scope: !403)
!1416 = distinct !DISubprogram(name: "error_at_line", scope: !396, file: !396, line: 359, type: !1417, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{null, !68, !68, !115, !73, !115, null}
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1425}
!1420 = !DILocalVariable(name: "status", arg: 1, scope: !1416, file: !396, line: 359, type: !68)
!1421 = !DILocalVariable(name: "errnum", arg: 2, scope: !1416, file: !396, line: 359, type: !68)
!1422 = !DILocalVariable(name: "file_name", arg: 3, scope: !1416, file: !396, line: 359, type: !115)
!1423 = !DILocalVariable(name: "line_number", arg: 4, scope: !1416, file: !396, line: 360, type: !73)
!1424 = !DILocalVariable(name: "message", arg: 5, scope: !1416, file: !396, line: 360, type: !115)
!1425 = !DILocalVariable(name: "ap", scope: !1416, file: !396, line: 362, type: !406)
!1426 = distinct !DIAssignID()
!1427 = !DILocation(line: 0, scope: !1416)
!1428 = !DILocation(line: 362, column: 3, scope: !1416)
!1429 = !DILocation(line: 363, column: 3, scope: !1416)
!1430 = !DILocation(line: 364, column: 3, scope: !1416)
!1431 = !DILocation(line: 366, column: 3, scope: !1416)
!1432 = !DILocation(line: 367, column: 1, scope: !1416)
!1433 = distinct !DISubprogram(name: "rpl_fcntl", scope: !452, file: !452, line: 202, type: !1369, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437, !1448, !1449, !1452, !1454, !1458}
!1435 = !DILocalVariable(name: "fd", arg: 1, scope: !1433, file: !452, line: 202, type: !68)
!1436 = !DILocalVariable(name: "action", arg: 2, scope: !1433, file: !452, line: 202, type: !68)
!1437 = !DILocalVariable(name: "arg", scope: !1433, file: !452, line: 208, type: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1439, line: 12, baseType: !1440)
!1439 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !452, baseType: !1441)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1441, file: !452, line: 208, baseType: !110, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1441, file: !452, line: 208, baseType: !110, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1441, file: !452, line: 208, baseType: !110, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1441, file: !452, line: 208, baseType: !68, size: 32, offset: 192)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1441, file: !452, line: 208, baseType: !68, size: 32, offset: 224)
!1448 = !DILocalVariable(name: "result", scope: !1433, file: !452, line: 211, type: !68)
!1449 = !DILocalVariable(name: "target", scope: !1450, file: !452, line: 216, type: !68)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !452, line: 215, column: 7)
!1451 = distinct !DILexicalBlock(scope: !1433, file: !452, line: 213, column: 5)
!1452 = !DILocalVariable(name: "target", scope: !1453, file: !452, line: 223, type: !68)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !452, line: 222, column: 7)
!1454 = !DILocalVariable(name: "x", scope: !1455, file: !452, line: 418, type: !68)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !452, line: 417, column: 13)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !452, line: 261, column: 11)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !452, line: 258, column: 7)
!1458 = !DILocalVariable(name: "p", scope: !1459, file: !452, line: 426, type: !110)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !452, line: 425, column: 13)
!1460 = distinct !DIAssignID()
!1461 = !DILocation(line: 0, scope: !1433)
!1462 = !DILocation(line: 208, column: 3, scope: !1433)
!1463 = !DILocation(line: 209, column: 3, scope: !1433)
!1464 = !DILocation(line: 212, column: 3, scope: !1433)
!1465 = !DILocation(line: 216, column: 22, scope: !1450)
!1466 = distinct !DIAssignID()
!1467 = distinct !DIAssignID()
!1468 = !DILocation(line: 0, scope: !1450)
!1469 = !DILocalVariable(name: "fd", arg: 1, scope: !1470, file: !452, line: 444, type: !68)
!1470 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !452, file: !452, line: 444, type: !453, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !455, retainedNodes: !1471)
!1471 = !{!1469, !1472, !1473}
!1472 = !DILocalVariable(name: "target", arg: 2, scope: !1470, file: !452, line: 444, type: !68)
!1473 = !DILocalVariable(name: "result", scope: !1470, file: !452, line: 446, type: !68)
!1474 = !DILocation(line: 0, scope: !1470, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 217, column: 18, scope: !1450)
!1476 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1475)
!1477 = !DILocation(line: 223, column: 22, scope: !1453)
!1478 = distinct !DIAssignID()
!1479 = distinct !DIAssignID()
!1480 = !DILocation(line: 0, scope: !1453)
!1481 = !DILocation(line: 0, scope: !451, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 224, column: 18, scope: !1453)
!1483 = !DILocation(line: 507, column: 12, scope: !1484, inlinedAt: !1482)
!1484 = distinct !DILexicalBlock(scope: !451, file: !452, line: 507, column: 7)
!1485 = !DILocation(line: 507, column: 9, scope: !1484, inlinedAt: !1482)
!1486 = !DILocation(line: 507, column: 7, scope: !451, inlinedAt: !1482)
!1487 = !DILocation(line: 509, column: 16, scope: !1488, inlinedAt: !1482)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !452, line: 508, column: 5)
!1489 = !DILocation(line: 510, column: 13, scope: !1490, inlinedAt: !1482)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !452, line: 510, column: 11)
!1491 = !DILocation(line: 510, column: 23, scope: !1490, inlinedAt: !1482)
!1492 = !DILocation(line: 510, column: 26, scope: !1490, inlinedAt: !1482)
!1493 = !DILocation(line: 510, column: 32, scope: !1490, inlinedAt: !1482)
!1494 = !DILocation(line: 510, column: 11, scope: !1488, inlinedAt: !1482)
!1495 = !DILocation(line: 512, column: 30, scope: !1496, inlinedAt: !1482)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !452, line: 511, column: 9)
!1497 = !DILocation(line: 528, column: 19, scope: !463, inlinedAt: !1482)
!1498 = !DILocation(line: 0, scope: !1470, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 520, column: 20, scope: !1500, inlinedAt: !1482)
!1500 = distinct !DILexicalBlock(scope: !1490, file: !452, line: 519, column: 9)
!1501 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1499)
!1502 = !DILocation(line: 521, column: 22, scope: !1503, inlinedAt: !1482)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !452, line: 521, column: 15)
!1504 = !DILocation(line: 521, column: 15, scope: !1500, inlinedAt: !1482)
!1505 = !DILocation(line: 522, column: 32, scope: !1503, inlinedAt: !1482)
!1506 = !DILocation(line: 522, column: 13, scope: !1503, inlinedAt: !1482)
!1507 = !DILocation(line: 0, scope: !1470, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 527, column: 14, scope: !1484, inlinedAt: !1482)
!1509 = !DILocation(line: 479, column: 12, scope: !1470, inlinedAt: !1508)
!1510 = !DILocation(line: 0, scope: !1484, inlinedAt: !1482)
!1511 = !DILocation(line: 528, column: 9, scope: !463, inlinedAt: !1482)
!1512 = !DILocation(line: 530, column: 19, scope: !462, inlinedAt: !1482)
!1513 = !DILocation(line: 0, scope: !462, inlinedAt: !1482)
!1514 = !DILocation(line: 531, column: 17, scope: !466, inlinedAt: !1482)
!1515 = !DILocation(line: 531, column: 21, scope: !466, inlinedAt: !1482)
!1516 = !DILocation(line: 531, column: 54, scope: !466, inlinedAt: !1482)
!1517 = !DILocation(line: 531, column: 24, scope: !466, inlinedAt: !1482)
!1518 = !DILocation(line: 531, column: 68, scope: !466, inlinedAt: !1482)
!1519 = !DILocation(line: 531, column: 11, scope: !462, inlinedAt: !1482)
!1520 = !DILocation(line: 533, column: 29, scope: !465, inlinedAt: !1482)
!1521 = !DILocation(line: 0, scope: !465, inlinedAt: !1482)
!1522 = !DILocation(line: 534, column: 11, scope: !465, inlinedAt: !1482)
!1523 = !DILocation(line: 535, column: 17, scope: !465, inlinedAt: !1482)
!1524 = !DILocation(line: 537, column: 9, scope: !465, inlinedAt: !1482)
!1525 = !DILocation(line: 329, column: 22, scope: !1456)
!1526 = !DILocation(line: 330, column: 13, scope: !1456)
!1527 = !DILocation(line: 418, column: 23, scope: !1455)
!1528 = distinct !DIAssignID()
!1529 = distinct !DIAssignID()
!1530 = !DILocation(line: 0, scope: !1455)
!1531 = !DILocation(line: 419, column: 24, scope: !1455)
!1532 = !DILocation(line: 421, column: 13, scope: !1456)
!1533 = !DILocation(line: 426, column: 25, scope: !1459)
!1534 = distinct !DIAssignID()
!1535 = distinct !DIAssignID()
!1536 = !DILocation(line: 0, scope: !1459)
!1537 = !DILocation(line: 427, column: 24, scope: !1459)
!1538 = !DILocation(line: 429, column: 13, scope: !1456)
!1539 = !DILocation(line: 0, scope: !1451)
!1540 = !DILocation(line: 438, column: 3, scope: !1433)
!1541 = !DILocation(line: 441, column: 1, scope: !1433)
!1542 = !DILocation(line: 440, column: 3, scope: !1433)
!1543 = distinct !DISubprogram(name: "getprogname", scope: !733, file: !733, line: 54, type: !1544, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!115}
!1546 = !DILocation(line: 58, column: 10, scope: !1543)
!1547 = !DILocation(line: 58, column: 3, scope: !1543)
!1548 = distinct !DISubprogram(name: "set_program_name", scope: !470, file: !470, line: 37, type: !827, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1549)
!1549 = !{!1550, !1551, !1552}
!1550 = !DILocalVariable(name: "argv0", arg: 1, scope: !1548, file: !470, line: 37, type: !115)
!1551 = !DILocalVariable(name: "slash", scope: !1548, file: !470, line: 44, type: !115)
!1552 = !DILocalVariable(name: "base", scope: !1548, file: !470, line: 45, type: !115)
!1553 = !DILocation(line: 0, scope: !1548)
!1554 = !DILocation(line: 44, column: 23, scope: !1548)
!1555 = !DILocation(line: 45, column: 22, scope: !1548)
!1556 = !DILocation(line: 46, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !470, line: 46, column: 7)
!1558 = !DILocation(line: 46, column: 9, scope: !1557)
!1559 = !DILocation(line: 46, column: 25, scope: !1557)
!1560 = !DILocation(line: 46, column: 40, scope: !1557)
!1561 = !DILocalVariable(name: "__s1", arg: 1, scope: !1562, file: !889, line: 974, type: !1021)
!1562 = distinct !DISubprogram(name: "memeq", scope: !889, file: !889, line: 974, type: !1563, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !469, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!156, !1021, !1021, !112}
!1565 = !{!1561, !1566, !1567}
!1566 = !DILocalVariable(name: "__s2", arg: 2, scope: !1562, file: !889, line: 974, type: !1021)
!1567 = !DILocalVariable(name: "__n", arg: 3, scope: !1562, file: !889, line: 974, type: !112)
!1568 = !DILocation(line: 0, scope: !1562, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 46, column: 28, scope: !1557)
!1570 = !DILocation(line: 976, column: 11, scope: !1562, inlinedAt: !1569)
!1571 = !DILocation(line: 976, column: 10, scope: !1562, inlinedAt: !1569)
!1572 = !DILocation(line: 46, column: 7, scope: !1548)
!1573 = !DILocation(line: 49, column: 11, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !470, line: 49, column: 11)
!1575 = distinct !DILexicalBlock(scope: !1557, file: !470, line: 47, column: 5)
!1576 = !DILocation(line: 49, column: 36, scope: !1574)
!1577 = !DILocation(line: 49, column: 11, scope: !1575)
!1578 = !DILocation(line: 65, column: 16, scope: !1548)
!1579 = !DILocation(line: 71, column: 27, scope: !1548)
!1580 = !DILocation(line: 74, column: 33, scope: !1548)
!1581 = !DILocation(line: 76, column: 1, scope: !1548)
!1582 = !DISubprogram(name: "strrchr", scope: !993, file: !993, line: 273, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1583 = distinct !DIAssignID()
!1584 = !DILocation(line: 0, scope: !479)
!1585 = distinct !DIAssignID()
!1586 = !DILocation(line: 40, column: 29, scope: !479)
!1587 = !DILocation(line: 41, column: 19, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !479, file: !480, line: 41, column: 7)
!1589 = !DILocation(line: 41, column: 7, scope: !479)
!1590 = !DILocation(line: 47, column: 3, scope: !479)
!1591 = !DILocation(line: 48, column: 3, scope: !479)
!1592 = !DILocalVariable(name: "ps", arg: 1, scope: !1593, file: !1594, line: 1135, type: !1597)
!1593 = distinct !DISubprogram(name: "mbszero", scope: !1594, file: !1594, line: 1135, type: !1595, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1598)
!1594 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1598 = !{!1592}
!1599 = !DILocation(line: 0, scope: !1593, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 48, column: 18, scope: !479)
!1601 = !DILocalVariable(name: "__dest", arg: 1, scope: !1602, file: !1603, line: 57, type: !110)
!1602 = distinct !DISubprogram(name: "memset", scope: !1603, file: !1603, line: 57, type: !1604, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !483, retainedNodes: !1606)
!1603 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!110, !110, !68, !112}
!1606 = !{!1601, !1607, !1608}
!1607 = !DILocalVariable(name: "__ch", arg: 2, scope: !1602, file: !1603, line: 57, type: !68)
!1608 = !DILocalVariable(name: "__len", arg: 3, scope: !1602, file: !1603, line: 57, type: !112)
!1609 = !DILocation(line: 0, scope: !1602, inlinedAt: !1610)
!1610 = distinct !DILocation(line: 1137, column: 3, scope: !1593, inlinedAt: !1600)
!1611 = !DILocation(line: 59, column: 10, scope: !1602, inlinedAt: !1610)
!1612 = !DILocation(line: 49, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !479, file: !480, line: 49, column: 7)
!1614 = !DILocation(line: 49, column: 39, scope: !1613)
!1615 = !DILocation(line: 49, column: 44, scope: !1613)
!1616 = !DILocation(line: 54, column: 1, scope: !479)
!1617 = !DISubprogram(name: "mbrtoc32", scope: !491, file: !491, line: 57, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!112, !1620, !867, !112, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1597)
!1623 = distinct !DISubprogram(name: "clone_quoting_options", scope: !510, file: !510, line: 113, type: !1624, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1627)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1626, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!1627 = !{!1628, !1629, !1630}
!1628 = !DILocalVariable(name: "o", arg: 1, scope: !1623, file: !510, line: 113, type: !1626)
!1629 = !DILocalVariable(name: "saved_errno", scope: !1623, file: !510, line: 115, type: !68)
!1630 = !DILocalVariable(name: "p", scope: !1623, file: !510, line: 116, type: !1626)
!1631 = !DILocation(line: 0, scope: !1623)
!1632 = !DILocation(line: 115, column: 21, scope: !1623)
!1633 = !DILocation(line: 116, column: 40, scope: !1623)
!1634 = !DILocation(line: 116, column: 31, scope: !1623)
!1635 = !DILocation(line: 118, column: 9, scope: !1623)
!1636 = !DILocation(line: 119, column: 3, scope: !1623)
!1637 = distinct !DISubprogram(name: "get_quoting_style", scope: !510, file: !510, line: 124, type: !1638, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1642)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!533, !1640}
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!1642 = !{!1643}
!1643 = !DILocalVariable(name: "o", arg: 1, scope: !1637, file: !510, line: 124, type: !1640)
!1644 = !DILocation(line: 0, scope: !1637)
!1645 = !DILocation(line: 126, column: 11, scope: !1637)
!1646 = !DILocation(line: 126, column: 46, scope: !1637)
!1647 = !{!1648, !877, i64 0}
!1648 = !{!"quoting_options", !877, i64 0, !877, i64 4, !816, i64 8, !815, i64 40, !815, i64 48}
!1649 = !DILocation(line: 126, column: 3, scope: !1637)
!1650 = distinct !DISubprogram(name: "set_quoting_style", scope: !510, file: !510, line: 132, type: !1651, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !1626, !533}
!1653 = !{!1654, !1655}
!1654 = !DILocalVariable(name: "o", arg: 1, scope: !1650, file: !510, line: 132, type: !1626)
!1655 = !DILocalVariable(name: "s", arg: 2, scope: !1650, file: !510, line: 132, type: !533)
!1656 = !DILocation(line: 0, scope: !1650)
!1657 = !DILocation(line: 134, column: 4, scope: !1650)
!1658 = !DILocation(line: 134, column: 45, scope: !1650)
!1659 = !DILocation(line: 135, column: 1, scope: !1650)
!1660 = distinct !DISubprogram(name: "set_char_quoting", scope: !510, file: !510, line: 143, type: !1661, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!68, !1626, !4, !68}
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1670, !1671}
!1664 = !DILocalVariable(name: "o", arg: 1, scope: !1660, file: !510, line: 143, type: !1626)
!1665 = !DILocalVariable(name: "c", arg: 2, scope: !1660, file: !510, line: 143, type: !4)
!1666 = !DILocalVariable(name: "i", arg: 3, scope: !1660, file: !510, line: 143, type: !68)
!1667 = !DILocalVariable(name: "uc", scope: !1660, file: !510, line: 145, type: !117)
!1668 = !DILocalVariable(name: "p", scope: !1660, file: !510, line: 146, type: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1670 = !DILocalVariable(name: "shift", scope: !1660, file: !510, line: 148, type: !68)
!1671 = !DILocalVariable(name: "r", scope: !1660, file: !510, line: 149, type: !73)
!1672 = !DILocation(line: 0, scope: !1660)
!1673 = !DILocation(line: 147, column: 6, scope: !1660)
!1674 = !DILocation(line: 147, column: 41, scope: !1660)
!1675 = !DILocation(line: 147, column: 62, scope: !1660)
!1676 = !DILocation(line: 147, column: 57, scope: !1660)
!1677 = !DILocation(line: 148, column: 15, scope: !1660)
!1678 = !DILocation(line: 149, column: 21, scope: !1660)
!1679 = !DILocation(line: 149, column: 24, scope: !1660)
!1680 = !DILocation(line: 149, column: 34, scope: !1660)
!1681 = !DILocation(line: 150, column: 19, scope: !1660)
!1682 = !DILocation(line: 150, column: 24, scope: !1660)
!1683 = !DILocation(line: 150, column: 6, scope: !1660)
!1684 = !DILocation(line: 151, column: 3, scope: !1660)
!1685 = distinct !DISubprogram(name: "set_quoting_flags", scope: !510, file: !510, line: 159, type: !1686, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1688)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!68, !1626, !68}
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "o", arg: 1, scope: !1685, file: !510, line: 159, type: !1626)
!1690 = !DILocalVariable(name: "i", arg: 2, scope: !1685, file: !510, line: 159, type: !68)
!1691 = !DILocalVariable(name: "r", scope: !1685, file: !510, line: 163, type: !68)
!1692 = !DILocation(line: 0, scope: !1685)
!1693 = !DILocation(line: 161, column: 8, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1685, file: !510, line: 161, column: 7)
!1695 = !DILocation(line: 161, column: 7, scope: !1685)
!1696 = !DILocation(line: 163, column: 14, scope: !1685)
!1697 = !{!1648, !877, i64 4}
!1698 = !DILocation(line: 164, column: 12, scope: !1685)
!1699 = !DILocation(line: 165, column: 3, scope: !1685)
!1700 = distinct !DISubprogram(name: "set_custom_quoting", scope: !510, file: !510, line: 169, type: !1701, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !1626, !115, !115}
!1703 = !{!1704, !1705, !1706}
!1704 = !DILocalVariable(name: "o", arg: 1, scope: !1700, file: !510, line: 169, type: !1626)
!1705 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1700, file: !510, line: 170, type: !115)
!1706 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1700, file: !510, line: 170, type: !115)
!1707 = !DILocation(line: 0, scope: !1700)
!1708 = !DILocation(line: 172, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1700, file: !510, line: 172, column: 7)
!1710 = !DILocation(line: 172, column: 7, scope: !1700)
!1711 = !DILocation(line: 174, column: 12, scope: !1700)
!1712 = !DILocation(line: 175, column: 8, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1700, file: !510, line: 175, column: 7)
!1714 = !DILocation(line: 175, column: 19, scope: !1713)
!1715 = !DILocation(line: 176, column: 5, scope: !1713)
!1716 = !DILocation(line: 177, column: 6, scope: !1700)
!1717 = !DILocation(line: 177, column: 17, scope: !1700)
!1718 = !{!1648, !815, i64 40}
!1719 = !DILocation(line: 178, column: 6, scope: !1700)
!1720 = !DILocation(line: 178, column: 18, scope: !1700)
!1721 = !{!1648, !815, i64 48}
!1722 = !DILocation(line: 179, column: 1, scope: !1700)
!1723 = !DISubprogram(name: "abort", scope: !997, file: !997, line: 598, type: !447, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1724 = distinct !DISubprogram(name: "quotearg_buffer", scope: !510, file: !510, line: 774, type: !1725, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1727)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!112, !109, !112, !115, !112, !1640}
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1728 = !DILocalVariable(name: "buffer", arg: 1, scope: !1724, file: !510, line: 774, type: !109)
!1729 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1724, file: !510, line: 774, type: !112)
!1730 = !DILocalVariable(name: "arg", arg: 3, scope: !1724, file: !510, line: 775, type: !115)
!1731 = !DILocalVariable(name: "argsize", arg: 4, scope: !1724, file: !510, line: 775, type: !112)
!1732 = !DILocalVariable(name: "o", arg: 5, scope: !1724, file: !510, line: 776, type: !1640)
!1733 = !DILocalVariable(name: "p", scope: !1724, file: !510, line: 778, type: !1640)
!1734 = !DILocalVariable(name: "saved_errno", scope: !1724, file: !510, line: 779, type: !68)
!1735 = !DILocalVariable(name: "r", scope: !1724, file: !510, line: 780, type: !112)
!1736 = !DILocation(line: 0, scope: !1724)
!1737 = !DILocation(line: 778, column: 37, scope: !1724)
!1738 = !DILocation(line: 779, column: 21, scope: !1724)
!1739 = !DILocation(line: 781, column: 43, scope: !1724)
!1740 = !DILocation(line: 781, column: 53, scope: !1724)
!1741 = !DILocation(line: 781, column: 63, scope: !1724)
!1742 = !DILocation(line: 782, column: 43, scope: !1724)
!1743 = !DILocation(line: 782, column: 58, scope: !1724)
!1744 = !DILocation(line: 780, column: 14, scope: !1724)
!1745 = !DILocation(line: 783, column: 9, scope: !1724)
!1746 = !DILocation(line: 784, column: 3, scope: !1724)
!1747 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !510, file: !510, line: 251, type: !1748, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1752)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!112, !109, !112, !115, !112, !533, !68, !1750, !115, !115}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1778, !1780, !1783, !1784, !1785, !1786, !1789, !1790, !1792, !1793, !1796, !1800, !1801, !1809, !1812, !1813, !1814}
!1753 = !DILocalVariable(name: "buffer", arg: 1, scope: !1747, file: !510, line: 251, type: !109)
!1754 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1747, file: !510, line: 251, type: !112)
!1755 = !DILocalVariable(name: "arg", arg: 3, scope: !1747, file: !510, line: 252, type: !115)
!1756 = !DILocalVariable(name: "argsize", arg: 4, scope: !1747, file: !510, line: 252, type: !112)
!1757 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1747, file: !510, line: 253, type: !533)
!1758 = !DILocalVariable(name: "flags", arg: 6, scope: !1747, file: !510, line: 253, type: !68)
!1759 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1747, file: !510, line: 254, type: !1750)
!1760 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1747, file: !510, line: 255, type: !115)
!1761 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1747, file: !510, line: 256, type: !115)
!1762 = !DILocalVariable(name: "unibyte_locale", scope: !1747, file: !510, line: 258, type: !156)
!1763 = !DILocalVariable(name: "len", scope: !1747, file: !510, line: 260, type: !112)
!1764 = !DILocalVariable(name: "orig_buffersize", scope: !1747, file: !510, line: 261, type: !112)
!1765 = !DILocalVariable(name: "quote_string", scope: !1747, file: !510, line: 262, type: !115)
!1766 = !DILocalVariable(name: "quote_string_len", scope: !1747, file: !510, line: 263, type: !112)
!1767 = !DILocalVariable(name: "backslash_escapes", scope: !1747, file: !510, line: 264, type: !156)
!1768 = !DILocalVariable(name: "elide_outer_quotes", scope: !1747, file: !510, line: 265, type: !156)
!1769 = !DILocalVariable(name: "encountered_single_quote", scope: !1747, file: !510, line: 266, type: !156)
!1770 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1747, file: !510, line: 267, type: !156)
!1771 = !DILabel(scope: !1747, name: "process_input", file: !510, line: 308)
!1772 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1747, file: !510, line: 309, type: !156)
!1773 = !DILocalVariable(name: "lq", scope: !1774, file: !510, line: 361, type: !115)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !510, line: 361, column: 11)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !510, line: 360, column: 13)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !510, line: 333, column: 7)
!1777 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 312, column: 5)
!1778 = !DILocalVariable(name: "i", scope: !1779, file: !510, line: 395, type: !112)
!1779 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 395, column: 3)
!1780 = !DILocalVariable(name: "is_right_quote", scope: !1781, file: !510, line: 397, type: !156)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !510, line: 396, column: 5)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !510, line: 395, column: 3)
!1783 = !DILocalVariable(name: "escaping", scope: !1781, file: !510, line: 398, type: !156)
!1784 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1781, file: !510, line: 399, type: !156)
!1785 = !DILocalVariable(name: "c", scope: !1781, file: !510, line: 417, type: !117)
!1786 = !DILabel(scope: !1787, name: "c_and_shell_escape", file: !510, line: 502)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 478, column: 9)
!1788 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 419, column: 9)
!1789 = !DILabel(scope: !1787, name: "c_escape", file: !510, line: 507)
!1790 = !DILocalVariable(name: "m", scope: !1791, file: !510, line: 598, type: !112)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 596, column: 11)
!1792 = !DILocalVariable(name: "printable", scope: !1791, file: !510, line: 600, type: !156)
!1793 = !DILocalVariable(name: "mbs", scope: !1794, file: !510, line: 609, type: !582)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !510, line: 608, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !510, line: 602, column: 17)
!1796 = !DILocalVariable(name: "w", scope: !1797, file: !510, line: 618, type: !490)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !510, line: 617, column: 19)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !510, line: 616, column: 17)
!1799 = distinct !DILexicalBlock(scope: !1794, file: !510, line: 616, column: 17)
!1800 = !DILocalVariable(name: "bytes", scope: !1797, file: !510, line: 619, type: !112)
!1801 = !DILocalVariable(name: "j", scope: !1802, file: !510, line: 648, type: !112)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !510, line: 648, column: 29)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !510, line: 647, column: 27)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !510, line: 645, column: 29)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !510, line: 636, column: 23)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !510, line: 628, column: 30)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !510, line: 623, column: 30)
!1808 = distinct !DILexicalBlock(scope: !1797, file: !510, line: 621, column: 25)
!1809 = !DILocalVariable(name: "ilim", scope: !1810, file: !510, line: 674, type: !112)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !510, line: 671, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1791, file: !510, line: 670, column: 17)
!1812 = !DILabel(scope: !1781, name: "store_escape", file: !510, line: 709)
!1813 = !DILabel(scope: !1781, name: "store_c", file: !510, line: 712)
!1814 = !DILabel(scope: !1747, name: "force_outer_quoting_style", file: !510, line: 753)
!1815 = distinct !DIAssignID()
!1816 = distinct !DIAssignID()
!1817 = distinct !DIAssignID()
!1818 = distinct !DIAssignID()
!1819 = distinct !DIAssignID()
!1820 = !DILocation(line: 0, scope: !1794)
!1821 = distinct !DIAssignID()
!1822 = !DILocation(line: 0, scope: !1797)
!1823 = !DILocation(line: 0, scope: !1747)
!1824 = !DILocation(line: 258, column: 25, scope: !1747)
!1825 = !DILocation(line: 258, column: 36, scope: !1747)
!1826 = !DILocation(line: 267, column: 3, scope: !1747)
!1827 = !DILocation(line: 261, column: 10, scope: !1747)
!1828 = !DILocation(line: 262, column: 15, scope: !1747)
!1829 = !DILocation(line: 263, column: 10, scope: !1747)
!1830 = !DILocation(line: 308, column: 2, scope: !1747)
!1831 = !DILocation(line: 311, column: 3, scope: !1747)
!1832 = !DILocation(line: 318, column: 11, scope: !1777)
!1833 = !DILocation(line: 319, column: 9, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !510, line: 319, column: 9)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !510, line: 319, column: 9)
!1836 = distinct !DILexicalBlock(scope: !1777, file: !510, line: 318, column: 11)
!1837 = !DILocation(line: 319, column: 9, scope: !1835)
!1838 = !DILocation(line: 0, scope: !573, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 357, column: 26, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !510, line: 335, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1776, file: !510, line: 334, column: 13)
!1842 = !DILocation(line: 199, column: 29, scope: !573, inlinedAt: !1839)
!1843 = !DILocation(line: 201, column: 19, scope: !1844, inlinedAt: !1839)
!1844 = distinct !DILexicalBlock(scope: !573, file: !510, line: 201, column: 7)
!1845 = !DILocation(line: 201, column: 7, scope: !573, inlinedAt: !1839)
!1846 = !DILocation(line: 229, column: 3, scope: !573, inlinedAt: !1839)
!1847 = !DILocation(line: 230, column: 3, scope: !573, inlinedAt: !1839)
!1848 = !DILocalVariable(name: "ps", arg: 1, scope: !1849, file: !1594, line: 1135, type: !1852)
!1849 = distinct !DISubprogram(name: "mbszero", scope: !1594, file: !1594, line: 1135, type: !1850, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1853)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1853 = !{!1848}
!1854 = !DILocation(line: 0, scope: !1849, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 230, column: 18, scope: !573, inlinedAt: !1839)
!1856 = !DILocalVariable(name: "__dest", arg: 1, scope: !1857, file: !1603, line: 57, type: !110)
!1857 = distinct !DISubprogram(name: "memset", scope: !1603, file: !1603, line: 57, type: !1604, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1858)
!1858 = !{!1856, !1859, !1860}
!1859 = !DILocalVariable(name: "__ch", arg: 2, scope: !1857, file: !1603, line: 57, type: !68)
!1860 = !DILocalVariable(name: "__len", arg: 3, scope: !1857, file: !1603, line: 57, type: !112)
!1861 = !DILocation(line: 0, scope: !1857, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 1137, column: 3, scope: !1849, inlinedAt: !1855)
!1863 = !DILocation(line: 59, column: 10, scope: !1857, inlinedAt: !1862)
!1864 = !DILocation(line: 231, column: 7, scope: !1865, inlinedAt: !1839)
!1865 = distinct !DILexicalBlock(scope: !573, file: !510, line: 231, column: 7)
!1866 = !DILocation(line: 231, column: 40, scope: !1865, inlinedAt: !1839)
!1867 = !DILocation(line: 231, column: 45, scope: !1865, inlinedAt: !1839)
!1868 = !DILocation(line: 235, column: 1, scope: !573, inlinedAt: !1839)
!1869 = !DILocation(line: 0, scope: !573, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 358, column: 27, scope: !1840)
!1871 = !DILocation(line: 199, column: 29, scope: !573, inlinedAt: !1870)
!1872 = !DILocation(line: 201, column: 19, scope: !1844, inlinedAt: !1870)
!1873 = !DILocation(line: 201, column: 7, scope: !573, inlinedAt: !1870)
!1874 = !DILocation(line: 229, column: 3, scope: !573, inlinedAt: !1870)
!1875 = !DILocation(line: 230, column: 3, scope: !573, inlinedAt: !1870)
!1876 = !DILocation(line: 0, scope: !1849, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 230, column: 18, scope: !573, inlinedAt: !1870)
!1878 = !DILocation(line: 0, scope: !1857, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 1137, column: 3, scope: !1849, inlinedAt: !1877)
!1880 = !DILocation(line: 59, column: 10, scope: !1857, inlinedAt: !1879)
!1881 = !DILocation(line: 231, column: 7, scope: !1865, inlinedAt: !1870)
!1882 = !DILocation(line: 231, column: 40, scope: !1865, inlinedAt: !1870)
!1883 = !DILocation(line: 231, column: 45, scope: !1865, inlinedAt: !1870)
!1884 = !DILocation(line: 235, column: 1, scope: !573, inlinedAt: !1870)
!1885 = !DILocation(line: 360, column: 13, scope: !1776)
!1886 = !DILocation(line: 0, scope: !1774)
!1887 = !DILocation(line: 361, column: 45, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1774, file: !510, line: 361, column: 11)
!1889 = !DILocation(line: 361, column: 11, scope: !1774)
!1890 = !DILocation(line: 362, column: 13, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !510, line: 362, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !510, line: 362, column: 13)
!1893 = !DILocation(line: 362, column: 13, scope: !1892)
!1894 = !DILocation(line: 361, column: 52, scope: !1888)
!1895 = distinct !{!1895, !1889, !1896, !923}
!1896 = !DILocation(line: 362, column: 13, scope: !1774)
!1897 = !DILocation(line: 365, column: 28, scope: !1776)
!1898 = !DILocation(line: 260, column: 10, scope: !1747)
!1899 = !DILocation(line: 367, column: 7, scope: !1777)
!1900 = !DILocation(line: 373, column: 7, scope: !1777)
!1901 = !DILocation(line: 381, column: 11, scope: !1777)
!1902 = !DILocation(line: 376, column: 11, scope: !1777)
!1903 = !DILocation(line: 382, column: 9, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !510, line: 382, column: 9)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !510, line: 382, column: 9)
!1906 = distinct !DILexicalBlock(scope: !1777, file: !510, line: 381, column: 11)
!1907 = !DILocation(line: 382, column: 9, scope: !1905)
!1908 = !DILocation(line: 389, column: 7, scope: !1777)
!1909 = !DILocation(line: 392, column: 7, scope: !1777)
!1910 = !DILocation(line: 0, scope: !1779)
!1911 = !DILocation(line: 395, column: 8, scope: !1779)
!1912 = !DILocation(line: 395, scope: !1779)
!1913 = !DILocation(line: 395, column: 34, scope: !1782)
!1914 = !DILocation(line: 395, column: 26, scope: !1782)
!1915 = !DILocation(line: 395, column: 48, scope: !1782)
!1916 = !DILocation(line: 395, column: 55, scope: !1782)
!1917 = !DILocation(line: 395, column: 3, scope: !1779)
!1918 = !DILocation(line: 395, column: 67, scope: !1782)
!1919 = !DILocation(line: 0, scope: !1781)
!1920 = !DILocation(line: 402, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 401, column: 11)
!1922 = !DILocation(line: 404, column: 17, scope: !1921)
!1923 = !DILocation(line: 405, column: 39, scope: !1921)
!1924 = !DILocation(line: 409, column: 32, scope: !1921)
!1925 = !DILocation(line: 405, column: 19, scope: !1921)
!1926 = !DILocation(line: 405, column: 15, scope: !1921)
!1927 = !DILocation(line: 410, column: 11, scope: !1921)
!1928 = !DILocation(line: 410, column: 25, scope: !1921)
!1929 = !DILocalVariable(name: "__s1", arg: 1, scope: !1930, file: !889, line: 974, type: !1021)
!1930 = distinct !DISubprogram(name: "memeq", scope: !889, file: !889, line: 974, type: !1563, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !1931)
!1931 = !{!1929, !1932, !1933}
!1932 = !DILocalVariable(name: "__s2", arg: 2, scope: !1930, file: !889, line: 974, type: !1021)
!1933 = !DILocalVariable(name: "__n", arg: 3, scope: !1930, file: !889, line: 974, type: !112)
!1934 = !DILocation(line: 0, scope: !1930, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 410, column: 14, scope: !1921)
!1936 = !DILocation(line: 976, column: 11, scope: !1930, inlinedAt: !1935)
!1937 = !DILocation(line: 976, column: 10, scope: !1930, inlinedAt: !1935)
!1938 = !DILocation(line: 401, column: 11, scope: !1781)
!1939 = !DILocation(line: 417, column: 25, scope: !1781)
!1940 = !DILocation(line: 418, column: 7, scope: !1781)
!1941 = !DILocation(line: 421, column: 15, scope: !1788)
!1942 = !DILocation(line: 423, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !510, line: 423, column: 15)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !510, line: 422, column: 13)
!1945 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 421, column: 15)
!1946 = !DILocation(line: 423, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !510, line: 423, column: 15)
!1948 = !DILocation(line: 423, column: 15, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !510, line: 423, column: 15)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !510, line: 423, column: 15)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !510, line: 423, column: 15)
!1952 = !DILocation(line: 423, column: 15, scope: !1950)
!1953 = !DILocation(line: 423, column: 15, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !510, line: 423, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !510, line: 423, column: 15)
!1956 = !DILocation(line: 423, column: 15, scope: !1955)
!1957 = !DILocation(line: 423, column: 15, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !510, line: 423, column: 15)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !510, line: 423, column: 15)
!1960 = !DILocation(line: 423, column: 15, scope: !1959)
!1961 = !DILocation(line: 423, column: 15, scope: !1951)
!1962 = !DILocation(line: 423, column: 15, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !510, line: 423, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1943, file: !510, line: 423, column: 15)
!1965 = !DILocation(line: 423, column: 15, scope: !1964)
!1966 = !DILocation(line: 431, column: 19, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1944, file: !510, line: 430, column: 19)
!1968 = !DILocation(line: 431, column: 24, scope: !1967)
!1969 = !DILocation(line: 431, column: 28, scope: !1967)
!1970 = !DILocation(line: 431, column: 38, scope: !1967)
!1971 = !DILocation(line: 431, column: 48, scope: !1967)
!1972 = !DILocation(line: 431, column: 59, scope: !1967)
!1973 = !DILocation(line: 433, column: 19, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !510, line: 433, column: 19)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !510, line: 433, column: 19)
!1976 = distinct !DILexicalBlock(scope: !1967, file: !510, line: 432, column: 17)
!1977 = !DILocation(line: 433, column: 19, scope: !1975)
!1978 = !DILocation(line: 434, column: 19, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !510, line: 434, column: 19)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !510, line: 434, column: 19)
!1981 = !DILocation(line: 434, column: 19, scope: !1980)
!1982 = !DILocation(line: 435, column: 17, scope: !1976)
!1983 = !DILocation(line: 442, column: 20, scope: !1945)
!1984 = !DILocation(line: 447, column: 11, scope: !1788)
!1985 = !DILocation(line: 450, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 448, column: 13)
!1987 = !DILocation(line: 456, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !510, line: 455, column: 19)
!1989 = !DILocation(line: 456, column: 24, scope: !1988)
!1990 = !DILocation(line: 456, column: 28, scope: !1988)
!1991 = !DILocation(line: 456, column: 38, scope: !1988)
!1992 = !DILocation(line: 456, column: 41, scope: !1988)
!1993 = !DILocation(line: 456, column: 52, scope: !1988)
!1994 = !DILocation(line: 455, column: 19, scope: !1986)
!1995 = !DILocation(line: 457, column: 25, scope: !1988)
!1996 = !DILocation(line: 457, column: 17, scope: !1988)
!1997 = !DILocation(line: 464, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1988, file: !510, line: 458, column: 19)
!1999 = !DILocation(line: 468, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !510, line: 468, column: 21)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !510, line: 468, column: 21)
!2002 = !DILocation(line: 468, column: 21, scope: !2001)
!2003 = !DILocation(line: 469, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !510, line: 469, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !510, line: 469, column: 21)
!2006 = !DILocation(line: 469, column: 21, scope: !2005)
!2007 = !DILocation(line: 470, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !510, line: 470, column: 21)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !510, line: 470, column: 21)
!2010 = !DILocation(line: 470, column: 21, scope: !2009)
!2011 = !DILocation(line: 471, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !510, line: 471, column: 21)
!2013 = distinct !DILexicalBlock(scope: !1998, file: !510, line: 471, column: 21)
!2014 = !DILocation(line: 471, column: 21, scope: !2013)
!2015 = !DILocation(line: 472, column: 21, scope: !1998)
!2016 = !DILocation(line: 482, column: 33, scope: !1787)
!2017 = !DILocation(line: 483, column: 33, scope: !1787)
!2018 = !DILocation(line: 485, column: 33, scope: !1787)
!2019 = !DILocation(line: 486, column: 33, scope: !1787)
!2020 = !DILocation(line: 487, column: 33, scope: !1787)
!2021 = !DILocation(line: 490, column: 17, scope: !1787)
!2022 = !DILocation(line: 492, column: 21, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !510, line: 491, column: 15)
!2024 = distinct !DILexicalBlock(scope: !1787, file: !510, line: 490, column: 17)
!2025 = !DILocation(line: 499, column: 35, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1787, file: !510, line: 499, column: 17)
!2027 = !DILocation(line: 0, scope: !1787)
!2028 = !DILocation(line: 502, column: 11, scope: !1787)
!2029 = !DILocation(line: 504, column: 17, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !1787, file: !510, line: 503, column: 17)
!2031 = !DILocation(line: 507, column: 11, scope: !1787)
!2032 = !DILocation(line: 508, column: 17, scope: !1787)
!2033 = !DILocation(line: 517, column: 15, scope: !1788)
!2034 = !DILocation(line: 517, column: 40, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 517, column: 15)
!2036 = !DILocation(line: 517, column: 47, scope: !2035)
!2037 = !DILocation(line: 517, column: 18, scope: !2035)
!2038 = !DILocation(line: 521, column: 17, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 521, column: 15)
!2040 = !DILocation(line: 521, column: 15, scope: !1788)
!2041 = !DILocation(line: 525, column: 11, scope: !1788)
!2042 = !DILocation(line: 537, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 536, column: 15)
!2044 = !DILocation(line: 536, column: 15, scope: !1788)
!2045 = !DILocation(line: 544, column: 15, scope: !1788)
!2046 = !DILocation(line: 546, column: 19, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !510, line: 545, column: 13)
!2048 = distinct !DILexicalBlock(scope: !1788, file: !510, line: 544, column: 15)
!2049 = !DILocation(line: 549, column: 19, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2047, file: !510, line: 549, column: 19)
!2051 = !DILocation(line: 549, column: 30, scope: !2050)
!2052 = !DILocation(line: 558, column: 15, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !510, line: 558, column: 15)
!2054 = distinct !DILexicalBlock(scope: !2047, file: !510, line: 558, column: 15)
!2055 = !DILocation(line: 558, column: 15, scope: !2054)
!2056 = !DILocation(line: 559, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !510, line: 559, column: 15)
!2058 = distinct !DILexicalBlock(scope: !2047, file: !510, line: 559, column: 15)
!2059 = !DILocation(line: 559, column: 15, scope: !2058)
!2060 = !DILocation(line: 560, column: 15, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !510, line: 560, column: 15)
!2062 = distinct !DILexicalBlock(scope: !2047, file: !510, line: 560, column: 15)
!2063 = !DILocation(line: 560, column: 15, scope: !2062)
!2064 = !DILocation(line: 562, column: 13, scope: !2047)
!2065 = !DILocation(line: 602, column: 17, scope: !1791)
!2066 = !DILocation(line: 0, scope: !1791)
!2067 = !DILocation(line: 605, column: 29, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1795, file: !510, line: 603, column: 15)
!2069 = !DILocation(line: 605, column: 41, scope: !2068)
!2070 = !DILocation(line: 606, column: 15, scope: !2068)
!2071 = !DILocation(line: 609, column: 17, scope: !1794)
!2072 = !DILocation(line: 0, scope: !1849, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 609, column: 32, scope: !1794)
!2074 = !DILocation(line: 0, scope: !1857, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 1137, column: 3, scope: !1849, inlinedAt: !2073)
!2076 = !DILocation(line: 59, column: 10, scope: !1857, inlinedAt: !2075)
!2077 = !DILocation(line: 613, column: 29, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1794, file: !510, line: 613, column: 21)
!2079 = !DILocation(line: 613, column: 21, scope: !1794)
!2080 = !DILocation(line: 614, column: 29, scope: !2078)
!2081 = !DILocation(line: 614, column: 19, scope: !2078)
!2082 = !DILocation(line: 618, column: 21, scope: !1797)
!2083 = !DILocation(line: 620, column: 54, scope: !1797)
!2084 = !DILocation(line: 619, column: 36, scope: !1797)
!2085 = !DILocation(line: 621, column: 25, scope: !1797)
!2086 = !DILocation(line: 631, column: 38, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1806, file: !510, line: 629, column: 23)
!2088 = !DILocation(line: 631, column: 48, scope: !2087)
!2089 = !DILocation(line: 631, column: 25, scope: !2087)
!2090 = !DILocation(line: 626, column: 25, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1807, file: !510, line: 624, column: 23)
!2092 = !DILocation(line: 631, column: 51, scope: !2087)
!2093 = !DILocation(line: 632, column: 28, scope: !2087)
!2094 = !DILocation(line: 631, column: 34, scope: !2087)
!2095 = distinct !{!2095, !2089, !2093, !923}
!2096 = !DILocation(line: 0, scope: !1802)
!2097 = !DILocation(line: 646, column: 29, scope: !1804)
!2098 = !DILocation(line: 648, column: 29, scope: !1802)
!2099 = !DILocation(line: 649, column: 39, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1802, file: !510, line: 648, column: 29)
!2101 = !DILocation(line: 649, column: 31, scope: !2100)
!2102 = !DILocation(line: 648, column: 60, scope: !2100)
!2103 = !DILocation(line: 648, column: 50, scope: !2100)
!2104 = distinct !{!2104, !2098, !2105, !923}
!2105 = !DILocation(line: 654, column: 33, scope: !1802)
!2106 = !DILocation(line: 657, column: 43, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1805, file: !510, line: 657, column: 29)
!2108 = !DILocalVariable(name: "wc", arg: 1, scope: !2109, file: !2110, line: 865, type: !2113)
!2109 = distinct !DISubprogram(name: "c32isprint", scope: !2110, file: !2110, line: 865, type: !2111, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2115)
!2110 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!68, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2114, line: 20, baseType: !73)
!2114 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2115 = !{!2108}
!2116 = !DILocation(line: 0, scope: !2109, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 657, column: 31, scope: !2107)
!2118 = !DILocation(line: 871, column: 10, scope: !2109, inlinedAt: !2117)
!2119 = !DILocation(line: 657, column: 31, scope: !2107)
!2120 = !DILocation(line: 664, column: 23, scope: !1797)
!2121 = !DILocation(line: 665, column: 19, scope: !1798)
!2122 = !DILocation(line: 666, column: 15, scope: !1795)
!2123 = !DILocation(line: 753, column: 2, scope: !1747)
!2124 = !DILocation(line: 756, column: 51, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 756, column: 7)
!2126 = !DILocation(line: 0, scope: !1795)
!2127 = !DILocation(line: 670, column: 19, scope: !1811)
!2128 = !DILocation(line: 670, column: 23, scope: !1811)
!2129 = !DILocation(line: 674, column: 33, scope: !1810)
!2130 = !DILocation(line: 0, scope: !1810)
!2131 = !DILocation(line: 676, column: 17, scope: !1810)
!2132 = !DILocation(line: 678, column: 43, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !510, line: 678, column: 25)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !510, line: 677, column: 19)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !510, line: 676, column: 17)
!2136 = distinct !DILexicalBlock(scope: !1810, file: !510, line: 676, column: 17)
!2137 = !DILocation(line: 680, column: 25, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !510, line: 680, column: 25)
!2139 = distinct !DILexicalBlock(scope: !2133, file: !510, line: 679, column: 23)
!2140 = !DILocation(line: 680, column: 25, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !510, line: 680, column: 25)
!2142 = !DILocation(line: 680, column: 25, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !510, line: 680, column: 25)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !510, line: 680, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !510, line: 680, column: 25)
!2146 = !DILocation(line: 680, column: 25, scope: !2144)
!2147 = !DILocation(line: 680, column: 25, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !510, line: 680, column: 25)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !510, line: 680, column: 25)
!2150 = !DILocation(line: 680, column: 25, scope: !2149)
!2151 = !DILocation(line: 680, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !510, line: 680, column: 25)
!2153 = distinct !DILexicalBlock(scope: !2145, file: !510, line: 680, column: 25)
!2154 = !DILocation(line: 680, column: 25, scope: !2153)
!2155 = !DILocation(line: 680, column: 25, scope: !2145)
!2156 = !DILocation(line: 680, column: 25, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !510, line: 680, column: 25)
!2158 = distinct !DILexicalBlock(scope: !2138, file: !510, line: 680, column: 25)
!2159 = !DILocation(line: 680, column: 25, scope: !2158)
!2160 = !DILocation(line: 681, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !510, line: 681, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2139, file: !510, line: 681, column: 25)
!2163 = !DILocation(line: 681, column: 25, scope: !2162)
!2164 = !DILocation(line: 682, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !510, line: 682, column: 25)
!2166 = distinct !DILexicalBlock(scope: !2139, file: !510, line: 682, column: 25)
!2167 = !DILocation(line: 682, column: 25, scope: !2166)
!2168 = !DILocation(line: 683, column: 38, scope: !2139)
!2169 = !DILocation(line: 683, column: 33, scope: !2139)
!2170 = !DILocation(line: 684, column: 23, scope: !2139)
!2171 = !DILocation(line: 685, column: 30, scope: !2133)
!2172 = !DILocation(line: 687, column: 25, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !510, line: 687, column: 25)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !510, line: 687, column: 25)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !510, line: 686, column: 23)
!2176 = distinct !DILexicalBlock(scope: !2133, file: !510, line: 685, column: 30)
!2177 = !DILocation(line: 687, column: 25, scope: !2174)
!2178 = !DILocation(line: 689, column: 23, scope: !2175)
!2179 = !DILocation(line: 690, column: 35, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2134, file: !510, line: 690, column: 25)
!2181 = !DILocation(line: 690, column: 30, scope: !2180)
!2182 = !DILocation(line: 690, column: 25, scope: !2134)
!2183 = !DILocation(line: 692, column: 21, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !510, line: 692, column: 21)
!2185 = distinct !DILexicalBlock(scope: !2134, file: !510, line: 692, column: 21)
!2186 = !DILocation(line: 692, column: 21, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !510, line: 692, column: 21)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !510, line: 692, column: 21)
!2189 = distinct !DILexicalBlock(scope: !2184, file: !510, line: 692, column: 21)
!2190 = !DILocation(line: 692, column: 21, scope: !2188)
!2191 = !DILocation(line: 692, column: 21, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !510, line: 692, column: 21)
!2193 = distinct !DILexicalBlock(scope: !2189, file: !510, line: 692, column: 21)
!2194 = !DILocation(line: 692, column: 21, scope: !2193)
!2195 = !DILocation(line: 692, column: 21, scope: !2189)
!2196 = !DILocation(line: 0, scope: !2134)
!2197 = !DILocation(line: 693, column: 21, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !510, line: 693, column: 21)
!2199 = distinct !DILexicalBlock(scope: !2134, file: !510, line: 693, column: 21)
!2200 = !DILocation(line: 693, column: 21, scope: !2199)
!2201 = !DILocation(line: 694, column: 25, scope: !2134)
!2202 = !DILocation(line: 676, column: 17, scope: !2135)
!2203 = distinct !{!2203, !2204, !2205}
!2204 = !DILocation(line: 676, column: 17, scope: !2136)
!2205 = !DILocation(line: 695, column: 19, scope: !2136)
!2206 = !DILocation(line: 409, column: 30, scope: !1921)
!2207 = !DILocation(line: 702, column: 34, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 702, column: 11)
!2209 = !DILocation(line: 704, column: 14, scope: !2208)
!2210 = !DILocation(line: 705, column: 14, scope: !2208)
!2211 = !DILocation(line: 705, column: 35, scope: !2208)
!2212 = !DILocation(line: 705, column: 17, scope: !2208)
!2213 = !DILocation(line: 705, column: 47, scope: !2208)
!2214 = !DILocation(line: 705, column: 65, scope: !2208)
!2215 = !DILocation(line: 706, column: 11, scope: !2208)
!2216 = !DILocation(line: 702, column: 11, scope: !1781)
!2217 = !DILocation(line: 395, column: 15, scope: !1779)
!2218 = !DILocation(line: 709, column: 5, scope: !1781)
!2219 = !DILocation(line: 710, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 710, column: 7)
!2221 = !DILocation(line: 710, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2220, file: !510, line: 710, column: 7)
!2223 = !DILocation(line: 710, column: 7, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !510, line: 710, column: 7)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !510, line: 710, column: 7)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !510, line: 710, column: 7)
!2227 = !DILocation(line: 710, column: 7, scope: !2225)
!2228 = !DILocation(line: 710, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !510, line: 710, column: 7)
!2230 = distinct !DILexicalBlock(scope: !2226, file: !510, line: 710, column: 7)
!2231 = !DILocation(line: 710, column: 7, scope: !2230)
!2232 = !DILocation(line: 710, column: 7, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !510, line: 710, column: 7)
!2234 = distinct !DILexicalBlock(scope: !2226, file: !510, line: 710, column: 7)
!2235 = !DILocation(line: 710, column: 7, scope: !2234)
!2236 = !DILocation(line: 710, column: 7, scope: !2226)
!2237 = !DILocation(line: 710, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !510, line: 710, column: 7)
!2239 = distinct !DILexicalBlock(scope: !2220, file: !510, line: 710, column: 7)
!2240 = !DILocation(line: 710, column: 7, scope: !2239)
!2241 = !DILocation(line: 712, column: 5, scope: !1781)
!2242 = !DILocation(line: 713, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !510, line: 713, column: 7)
!2244 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 713, column: 7)
!2245 = !DILocation(line: 417, column: 21, scope: !1781)
!2246 = !DILocation(line: 713, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !510, line: 713, column: 7)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !510, line: 713, column: 7)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !510, line: 713, column: 7)
!2250 = !DILocation(line: 713, column: 7, scope: !2248)
!2251 = !DILocation(line: 713, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !510, line: 713, column: 7)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !510, line: 713, column: 7)
!2254 = !DILocation(line: 713, column: 7, scope: !2253)
!2255 = !DILocation(line: 713, column: 7, scope: !2249)
!2256 = !DILocation(line: 714, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !510, line: 714, column: 7)
!2258 = distinct !DILexicalBlock(scope: !1781, file: !510, line: 714, column: 7)
!2259 = !DILocation(line: 714, column: 7, scope: !2258)
!2260 = !DILocation(line: 716, column: 11, scope: !1781)
!2261 = !DILocation(line: 718, column: 5, scope: !1782)
!2262 = !DILocation(line: 395, column: 82, scope: !1782)
!2263 = !DILocation(line: 395, column: 3, scope: !1782)
!2264 = distinct !{!2264, !1917, !2265, !923}
!2265 = !DILocation(line: 718, column: 5, scope: !1779)
!2266 = !DILocation(line: 720, column: 11, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 720, column: 7)
!2268 = !DILocation(line: 720, column: 16, scope: !2267)
!2269 = !DILocation(line: 728, column: 51, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 728, column: 7)
!2271 = !DILocation(line: 731, column: 11, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2270, file: !510, line: 730, column: 5)
!2273 = !DILocation(line: 732, column: 16, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2272, file: !510, line: 731, column: 11)
!2275 = !DILocation(line: 732, column: 9, scope: !2274)
!2276 = !DILocation(line: 736, column: 18, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2274, file: !510, line: 736, column: 16)
!2278 = !DILocation(line: 736, column: 29, scope: !2277)
!2279 = !DILocation(line: 745, column: 7, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 745, column: 7)
!2281 = !DILocation(line: 745, column: 20, scope: !2280)
!2282 = !DILocation(line: 746, column: 12, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !510, line: 746, column: 5)
!2284 = distinct !DILexicalBlock(scope: !2280, file: !510, line: 746, column: 5)
!2285 = !DILocation(line: 746, column: 5, scope: !2284)
!2286 = !DILocation(line: 747, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !510, line: 747, column: 7)
!2288 = distinct !DILexicalBlock(scope: !2283, file: !510, line: 747, column: 7)
!2289 = !DILocation(line: 747, column: 7, scope: !2288)
!2290 = !DILocation(line: 746, column: 39, scope: !2283)
!2291 = distinct !{!2291, !2285, !2292, !923}
!2292 = !DILocation(line: 747, column: 7, scope: !2284)
!2293 = !DILocation(line: 749, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !1747, file: !510, line: 749, column: 7)
!2295 = !DILocation(line: 749, column: 7, scope: !1747)
!2296 = !DILocation(line: 750, column: 5, scope: !2294)
!2297 = !DILocation(line: 750, column: 17, scope: !2294)
!2298 = !DILocation(line: 756, column: 21, scope: !2125)
!2299 = !DILocation(line: 760, column: 42, scope: !1747)
!2300 = !DILocation(line: 758, column: 10, scope: !1747)
!2301 = !DILocation(line: 758, column: 3, scope: !1747)
!2302 = !DILocation(line: 762, column: 1, scope: !1747)
!2303 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !997, file: !997, line: 98, type: !2304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!112}
!2306 = !DISubprogram(name: "strlen", scope: !993, file: !993, line: 407, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!114, !115}
!2309 = !DISubprogram(name: "iswprint", scope: !2310, file: !2310, line: 120, type: !2111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2311 = distinct !DISubprogram(name: "quotearg_alloc", scope: !510, file: !510, line: 788, type: !2312, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2314)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!109, !115, !112, !1640}
!2314 = !{!2315, !2316, !2317}
!2315 = !DILocalVariable(name: "arg", arg: 1, scope: !2311, file: !510, line: 788, type: !115)
!2316 = !DILocalVariable(name: "argsize", arg: 2, scope: !2311, file: !510, line: 788, type: !112)
!2317 = !DILocalVariable(name: "o", arg: 3, scope: !2311, file: !510, line: 789, type: !1640)
!2318 = !DILocation(line: 0, scope: !2311)
!2319 = !DILocalVariable(name: "arg", arg: 1, scope: !2320, file: !510, line: 801, type: !115)
!2320 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !510, file: !510, line: 801, type: !2321, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!109, !115, !112, !748, !1640}
!2323 = !{!2319, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331}
!2324 = !DILocalVariable(name: "argsize", arg: 2, scope: !2320, file: !510, line: 801, type: !112)
!2325 = !DILocalVariable(name: "size", arg: 3, scope: !2320, file: !510, line: 801, type: !748)
!2326 = !DILocalVariable(name: "o", arg: 4, scope: !2320, file: !510, line: 802, type: !1640)
!2327 = !DILocalVariable(name: "p", scope: !2320, file: !510, line: 804, type: !1640)
!2328 = !DILocalVariable(name: "saved_errno", scope: !2320, file: !510, line: 805, type: !68)
!2329 = !DILocalVariable(name: "flags", scope: !2320, file: !510, line: 807, type: !68)
!2330 = !DILocalVariable(name: "bufsize", scope: !2320, file: !510, line: 808, type: !112)
!2331 = !DILocalVariable(name: "buf", scope: !2320, file: !510, line: 812, type: !109)
!2332 = !DILocation(line: 0, scope: !2320, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 791, column: 10, scope: !2311)
!2334 = !DILocation(line: 804, column: 37, scope: !2320, inlinedAt: !2333)
!2335 = !DILocation(line: 805, column: 21, scope: !2320, inlinedAt: !2333)
!2336 = !DILocation(line: 807, column: 18, scope: !2320, inlinedAt: !2333)
!2337 = !DILocation(line: 807, column: 24, scope: !2320, inlinedAt: !2333)
!2338 = !DILocation(line: 808, column: 72, scope: !2320, inlinedAt: !2333)
!2339 = !DILocation(line: 809, column: 56, scope: !2320, inlinedAt: !2333)
!2340 = !DILocation(line: 810, column: 49, scope: !2320, inlinedAt: !2333)
!2341 = !DILocation(line: 811, column: 49, scope: !2320, inlinedAt: !2333)
!2342 = !DILocation(line: 808, column: 20, scope: !2320, inlinedAt: !2333)
!2343 = !DILocation(line: 811, column: 62, scope: !2320, inlinedAt: !2333)
!2344 = !DILocation(line: 812, column: 15, scope: !2320, inlinedAt: !2333)
!2345 = !DILocation(line: 813, column: 60, scope: !2320, inlinedAt: !2333)
!2346 = !DILocation(line: 815, column: 32, scope: !2320, inlinedAt: !2333)
!2347 = !DILocation(line: 815, column: 47, scope: !2320, inlinedAt: !2333)
!2348 = !DILocation(line: 813, column: 3, scope: !2320, inlinedAt: !2333)
!2349 = !DILocation(line: 816, column: 9, scope: !2320, inlinedAt: !2333)
!2350 = !DILocation(line: 791, column: 3, scope: !2311)
!2351 = !DILocation(line: 0, scope: !2320)
!2352 = !DILocation(line: 804, column: 37, scope: !2320)
!2353 = !DILocation(line: 805, column: 21, scope: !2320)
!2354 = !DILocation(line: 807, column: 18, scope: !2320)
!2355 = !DILocation(line: 807, column: 27, scope: !2320)
!2356 = !DILocation(line: 807, column: 24, scope: !2320)
!2357 = !DILocation(line: 808, column: 72, scope: !2320)
!2358 = !DILocation(line: 809, column: 56, scope: !2320)
!2359 = !DILocation(line: 810, column: 49, scope: !2320)
!2360 = !DILocation(line: 811, column: 49, scope: !2320)
!2361 = !DILocation(line: 808, column: 20, scope: !2320)
!2362 = !DILocation(line: 811, column: 62, scope: !2320)
!2363 = !DILocation(line: 812, column: 15, scope: !2320)
!2364 = !DILocation(line: 813, column: 60, scope: !2320)
!2365 = !DILocation(line: 815, column: 32, scope: !2320)
!2366 = !DILocation(line: 815, column: 47, scope: !2320)
!2367 = !DILocation(line: 813, column: 3, scope: !2320)
!2368 = !DILocation(line: 816, column: 9, scope: !2320)
!2369 = !DILocation(line: 817, column: 7, scope: !2320)
!2370 = !DILocation(line: 818, column: 11, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2320, file: !510, line: 817, column: 7)
!2372 = !{!1347, !1347, i64 0}
!2373 = !DILocation(line: 818, column: 5, scope: !2371)
!2374 = !DILocation(line: 819, column: 3, scope: !2320)
!2375 = distinct !DISubprogram(name: "quotearg_free", scope: !510, file: !510, line: 837, type: !447, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2376)
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "sv", scope: !2375, file: !510, line: 839, type: !596)
!2378 = !DILocalVariable(name: "i", scope: !2379, file: !510, line: 840, type: !68)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !510, line: 840, column: 3)
!2380 = !DILocation(line: 839, column: 24, scope: !2375)
!2381 = !DILocation(line: 0, scope: !2375)
!2382 = !DILocation(line: 0, scope: !2379)
!2383 = !DILocation(line: 840, column: 21, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2379, file: !510, line: 840, column: 3)
!2385 = !DILocation(line: 840, column: 3, scope: !2379)
!2386 = !DILocation(line: 842, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2375, file: !510, line: 842, column: 7)
!2388 = !{!2389, !815, i64 8}
!2389 = !{!"slotvec", !1347, i64 0, !815, i64 8}
!2390 = !DILocation(line: 842, column: 17, scope: !2387)
!2391 = !DILocation(line: 842, column: 7, scope: !2375)
!2392 = !DILocation(line: 841, column: 17, scope: !2384)
!2393 = !DILocation(line: 841, column: 5, scope: !2384)
!2394 = !DILocation(line: 840, column: 32, scope: !2384)
!2395 = distinct !{!2395, !2385, !2396, !923}
!2396 = !DILocation(line: 841, column: 20, scope: !2379)
!2397 = !DILocation(line: 844, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2387, file: !510, line: 843, column: 5)
!2399 = !DILocation(line: 845, column: 21, scope: !2398)
!2400 = !{!2389, !1347, i64 0}
!2401 = !DILocation(line: 846, column: 20, scope: !2398)
!2402 = !DILocation(line: 847, column: 5, scope: !2398)
!2403 = !DILocation(line: 848, column: 10, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2375, file: !510, line: 848, column: 7)
!2405 = !DILocation(line: 848, column: 7, scope: !2375)
!2406 = !DILocation(line: 850, column: 7, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !510, line: 849, column: 5)
!2408 = !DILocation(line: 851, column: 15, scope: !2407)
!2409 = !DILocation(line: 852, column: 5, scope: !2407)
!2410 = !DILocation(line: 853, column: 10, scope: !2375)
!2411 = !DILocation(line: 854, column: 1, scope: !2375)
!2412 = !DISubprogram(name: "free", scope: !1594, file: !1594, line: 786, type: !2413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !110}
!2415 = distinct !DISubprogram(name: "quotearg_n", scope: !510, file: !510, line: 919, type: !990, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2416)
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "n", arg: 1, scope: !2415, file: !510, line: 919, type: !68)
!2418 = !DILocalVariable(name: "arg", arg: 2, scope: !2415, file: !510, line: 919, type: !115)
!2419 = !DILocation(line: 0, scope: !2415)
!2420 = !DILocation(line: 921, column: 10, scope: !2415)
!2421 = !DILocation(line: 921, column: 3, scope: !2415)
!2422 = distinct !DISubprogram(name: "quotearg_n_options", scope: !510, file: !510, line: 866, type: !2423, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!109, !68, !115, !112, !1640}
!2425 = !{!2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2436, !2437, !2439, !2440, !2441}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !510, line: 866, type: !68)
!2427 = !DILocalVariable(name: "arg", arg: 2, scope: !2422, file: !510, line: 866, type: !115)
!2428 = !DILocalVariable(name: "argsize", arg: 3, scope: !2422, file: !510, line: 866, type: !112)
!2429 = !DILocalVariable(name: "options", arg: 4, scope: !2422, file: !510, line: 867, type: !1640)
!2430 = !DILocalVariable(name: "saved_errno", scope: !2422, file: !510, line: 869, type: !68)
!2431 = !DILocalVariable(name: "sv", scope: !2422, file: !510, line: 871, type: !596)
!2432 = !DILocalVariable(name: "nslots_max", scope: !2422, file: !510, line: 873, type: !68)
!2433 = !DILocalVariable(name: "preallocated", scope: !2434, file: !510, line: 879, type: !156)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !510, line: 878, column: 5)
!2435 = distinct !DILexicalBlock(scope: !2422, file: !510, line: 877, column: 7)
!2436 = !DILocalVariable(name: "new_nslots", scope: !2434, file: !510, line: 880, type: !761)
!2437 = !DILocalVariable(name: "size", scope: !2438, file: !510, line: 891, type: !112)
!2438 = distinct !DILexicalBlock(scope: !2422, file: !510, line: 890, column: 3)
!2439 = !DILocalVariable(name: "val", scope: !2438, file: !510, line: 892, type: !109)
!2440 = !DILocalVariable(name: "flags", scope: !2438, file: !510, line: 894, type: !68)
!2441 = !DILocalVariable(name: "qsize", scope: !2438, file: !510, line: 895, type: !112)
!2442 = distinct !DIAssignID()
!2443 = !DILocation(line: 0, scope: !2434)
!2444 = !DILocation(line: 0, scope: !2422)
!2445 = !DILocation(line: 869, column: 21, scope: !2422)
!2446 = !DILocation(line: 871, column: 24, scope: !2422)
!2447 = !DILocation(line: 874, column: 17, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2422, file: !510, line: 874, column: 7)
!2449 = !DILocation(line: 875, column: 5, scope: !2448)
!2450 = !DILocation(line: 877, column: 7, scope: !2435)
!2451 = !DILocation(line: 877, column: 14, scope: !2435)
!2452 = !DILocation(line: 877, column: 7, scope: !2422)
!2453 = !DILocation(line: 879, column: 31, scope: !2434)
!2454 = !DILocation(line: 880, column: 7, scope: !2434)
!2455 = !DILocation(line: 880, column: 26, scope: !2434)
!2456 = !DILocation(line: 880, column: 13, scope: !2434)
!2457 = distinct !DIAssignID()
!2458 = !DILocation(line: 882, column: 31, scope: !2434)
!2459 = !DILocation(line: 883, column: 33, scope: !2434)
!2460 = !DILocation(line: 883, column: 42, scope: !2434)
!2461 = !DILocation(line: 883, column: 31, scope: !2434)
!2462 = !DILocation(line: 882, column: 22, scope: !2434)
!2463 = !DILocation(line: 882, column: 15, scope: !2434)
!2464 = !DILocation(line: 884, column: 11, scope: !2434)
!2465 = !DILocation(line: 885, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2434, file: !510, line: 884, column: 11)
!2467 = !{i64 0, i64 8, !2372, i64 8, i64 8, !814}
!2468 = !DILocation(line: 885, column: 9, scope: !2466)
!2469 = !DILocation(line: 886, column: 20, scope: !2434)
!2470 = !DILocation(line: 886, column: 18, scope: !2434)
!2471 = !DILocation(line: 886, column: 32, scope: !2434)
!2472 = !DILocation(line: 886, column: 43, scope: !2434)
!2473 = !DILocation(line: 886, column: 53, scope: !2434)
!2474 = !DILocation(line: 0, scope: !1857, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 886, column: 7, scope: !2434)
!2476 = !DILocation(line: 59, column: 10, scope: !1857, inlinedAt: !2475)
!2477 = !DILocation(line: 887, column: 16, scope: !2434)
!2478 = !DILocation(line: 887, column: 14, scope: !2434)
!2479 = !DILocation(line: 888, column: 5, scope: !2435)
!2480 = !DILocation(line: 888, column: 5, scope: !2434)
!2481 = !DILocation(line: 891, column: 19, scope: !2438)
!2482 = !DILocation(line: 891, column: 25, scope: !2438)
!2483 = !DILocation(line: 0, scope: !2438)
!2484 = !DILocation(line: 892, column: 23, scope: !2438)
!2485 = !DILocation(line: 894, column: 26, scope: !2438)
!2486 = !DILocation(line: 894, column: 32, scope: !2438)
!2487 = !DILocation(line: 896, column: 55, scope: !2438)
!2488 = !DILocation(line: 897, column: 55, scope: !2438)
!2489 = !DILocation(line: 898, column: 55, scope: !2438)
!2490 = !DILocation(line: 899, column: 55, scope: !2438)
!2491 = !DILocation(line: 895, column: 20, scope: !2438)
!2492 = !DILocation(line: 901, column: 14, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2438, file: !510, line: 901, column: 9)
!2494 = !DILocation(line: 901, column: 9, scope: !2438)
!2495 = !DILocation(line: 903, column: 35, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2493, file: !510, line: 902, column: 7)
!2497 = !DILocation(line: 903, column: 20, scope: !2496)
!2498 = !DILocation(line: 904, column: 17, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !510, line: 904, column: 13)
!2500 = !DILocation(line: 904, column: 13, scope: !2496)
!2501 = !DILocation(line: 905, column: 11, scope: !2499)
!2502 = !DILocation(line: 906, column: 27, scope: !2496)
!2503 = !DILocation(line: 906, column: 19, scope: !2496)
!2504 = !DILocation(line: 907, column: 69, scope: !2496)
!2505 = !DILocation(line: 909, column: 44, scope: !2496)
!2506 = !DILocation(line: 910, column: 44, scope: !2496)
!2507 = !DILocation(line: 907, column: 9, scope: !2496)
!2508 = !DILocation(line: 911, column: 7, scope: !2496)
!2509 = !DILocation(line: 913, column: 11, scope: !2438)
!2510 = !DILocation(line: 914, column: 5, scope: !2438)
!2511 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !510, file: !510, line: 925, type: !2512, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2514)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!109, !68, !115, !112}
!2514 = !{!2515, !2516, !2517}
!2515 = !DILocalVariable(name: "n", arg: 1, scope: !2511, file: !510, line: 925, type: !68)
!2516 = !DILocalVariable(name: "arg", arg: 2, scope: !2511, file: !510, line: 925, type: !115)
!2517 = !DILocalVariable(name: "argsize", arg: 3, scope: !2511, file: !510, line: 925, type: !112)
!2518 = !DILocation(line: 0, scope: !2511)
!2519 = !DILocation(line: 927, column: 10, scope: !2511)
!2520 = !DILocation(line: 927, column: 3, scope: !2511)
!2521 = distinct !DISubprogram(name: "quotearg", scope: !510, file: !510, line: 931, type: !999, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2522)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "arg", arg: 1, scope: !2521, file: !510, line: 931, type: !115)
!2524 = !DILocation(line: 0, scope: !2521)
!2525 = !DILocation(line: 0, scope: !2415, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 933, column: 10, scope: !2521)
!2527 = !DILocation(line: 921, column: 10, scope: !2415, inlinedAt: !2526)
!2528 = !DILocation(line: 933, column: 3, scope: !2521)
!2529 = distinct !DISubprogram(name: "quotearg_mem", scope: !510, file: !510, line: 937, type: !2530, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!109, !115, !112}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !510, line: 937, type: !115)
!2534 = !DILocalVariable(name: "argsize", arg: 2, scope: !2529, file: !510, line: 937, type: !112)
!2535 = !DILocation(line: 0, scope: !2529)
!2536 = !DILocation(line: 0, scope: !2511, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 939, column: 10, scope: !2529)
!2538 = !DILocation(line: 927, column: 10, scope: !2511, inlinedAt: !2537)
!2539 = !DILocation(line: 939, column: 3, scope: !2529)
!2540 = distinct !DISubprogram(name: "quotearg_n_style", scope: !510, file: !510, line: 943, type: !2541, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!109, !68, !533, !115}
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DILocalVariable(name: "n", arg: 1, scope: !2540, file: !510, line: 943, type: !68)
!2545 = !DILocalVariable(name: "s", arg: 2, scope: !2540, file: !510, line: 943, type: !533)
!2546 = !DILocalVariable(name: "arg", arg: 3, scope: !2540, file: !510, line: 943, type: !115)
!2547 = !DILocalVariable(name: "o", scope: !2540, file: !510, line: 945, type: !1641)
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 0, scope: !2540)
!2550 = !DILocation(line: 945, column: 3, scope: !2540)
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"quoting_options_from_style: argument 0"}
!2553 = distinct !{!2553, !"quoting_options_from_style"}
!2554 = !DILocation(line: 945, column: 36, scope: !2540)
!2555 = !DILocalVariable(name: "style", arg: 1, scope: !2556, file: !510, line: 183, type: !533)
!2556 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !510, file: !510, line: 183, type: !2557, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!548, !533}
!2559 = !{!2555, !2560}
!2560 = !DILocalVariable(name: "o", scope: !2556, file: !510, line: 185, type: !548)
!2561 = !DILocation(line: 0, scope: !2556, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 945, column: 36, scope: !2540)
!2563 = !DILocation(line: 185, column: 26, scope: !2556, inlinedAt: !2562)
!2564 = distinct !DIAssignID()
!2565 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2562)
!2566 = distinct !DILexicalBlock(scope: !2556, file: !510, line: 186, column: 7)
!2567 = !DILocation(line: 186, column: 7, scope: !2556, inlinedAt: !2562)
!2568 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2562)
!2569 = !DILocation(line: 188, column: 11, scope: !2556, inlinedAt: !2562)
!2570 = distinct !DIAssignID()
!2571 = !DILocation(line: 946, column: 10, scope: !2540)
!2572 = !DILocation(line: 947, column: 1, scope: !2540)
!2573 = !DILocation(line: 946, column: 3, scope: !2540)
!2574 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !510, file: !510, line: 950, type: !2575, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!109, !68, !533, !115, !112}
!2577 = !{!2578, !2579, !2580, !2581, !2582}
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2574, file: !510, line: 950, type: !68)
!2579 = !DILocalVariable(name: "s", arg: 2, scope: !2574, file: !510, line: 950, type: !533)
!2580 = !DILocalVariable(name: "arg", arg: 3, scope: !2574, file: !510, line: 951, type: !115)
!2581 = !DILocalVariable(name: "argsize", arg: 4, scope: !2574, file: !510, line: 951, type: !112)
!2582 = !DILocalVariable(name: "o", scope: !2574, file: !510, line: 953, type: !1641)
!2583 = distinct !DIAssignID()
!2584 = !DILocation(line: 0, scope: !2574)
!2585 = !DILocation(line: 953, column: 3, scope: !2574)
!2586 = !{!2587}
!2587 = distinct !{!2587, !2588, !"quoting_options_from_style: argument 0"}
!2588 = distinct !{!2588, !"quoting_options_from_style"}
!2589 = !DILocation(line: 953, column: 36, scope: !2574)
!2590 = !DILocation(line: 0, scope: !2556, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 953, column: 36, scope: !2574)
!2592 = !DILocation(line: 185, column: 26, scope: !2556, inlinedAt: !2591)
!2593 = distinct !DIAssignID()
!2594 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2591)
!2595 = !DILocation(line: 186, column: 7, scope: !2556, inlinedAt: !2591)
!2596 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2591)
!2597 = !DILocation(line: 188, column: 11, scope: !2556, inlinedAt: !2591)
!2598 = distinct !DIAssignID()
!2599 = !DILocation(line: 954, column: 10, scope: !2574)
!2600 = !DILocation(line: 955, column: 1, scope: !2574)
!2601 = !DILocation(line: 954, column: 3, scope: !2574)
!2602 = distinct !DISubprogram(name: "quotearg_style", scope: !510, file: !510, line: 958, type: !2603, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!109, !533, !115}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "s", arg: 1, scope: !2602, file: !510, line: 958, type: !533)
!2607 = !DILocalVariable(name: "arg", arg: 2, scope: !2602, file: !510, line: 958, type: !115)
!2608 = distinct !DIAssignID()
!2609 = !DILocation(line: 0, scope: !2602)
!2610 = !DILocation(line: 0, scope: !2540, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 960, column: 10, scope: !2602)
!2612 = !DILocation(line: 945, column: 3, scope: !2540, inlinedAt: !2611)
!2613 = !{!2614}
!2614 = distinct !{!2614, !2615, !"quoting_options_from_style: argument 0"}
!2615 = distinct !{!2615, !"quoting_options_from_style"}
!2616 = !DILocation(line: 945, column: 36, scope: !2540, inlinedAt: !2611)
!2617 = !DILocation(line: 0, scope: !2556, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 945, column: 36, scope: !2540, inlinedAt: !2611)
!2619 = !DILocation(line: 185, column: 26, scope: !2556, inlinedAt: !2618)
!2620 = distinct !DIAssignID()
!2621 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2618)
!2622 = !DILocation(line: 186, column: 7, scope: !2556, inlinedAt: !2618)
!2623 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2618)
!2624 = !DILocation(line: 188, column: 11, scope: !2556, inlinedAt: !2618)
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 946, column: 10, scope: !2540, inlinedAt: !2611)
!2627 = !DILocation(line: 947, column: 1, scope: !2540, inlinedAt: !2611)
!2628 = !DILocation(line: 960, column: 3, scope: !2602)
!2629 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !510, file: !510, line: 964, type: !2630, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2632)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!109, !533, !115, !112}
!2632 = !{!2633, !2634, !2635}
!2633 = !DILocalVariable(name: "s", arg: 1, scope: !2629, file: !510, line: 964, type: !533)
!2634 = !DILocalVariable(name: "arg", arg: 2, scope: !2629, file: !510, line: 964, type: !115)
!2635 = !DILocalVariable(name: "argsize", arg: 3, scope: !2629, file: !510, line: 964, type: !112)
!2636 = distinct !DIAssignID()
!2637 = !DILocation(line: 0, scope: !2629)
!2638 = !DILocation(line: 0, scope: !2574, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 966, column: 10, scope: !2629)
!2640 = !DILocation(line: 953, column: 3, scope: !2574, inlinedAt: !2639)
!2641 = !{!2642}
!2642 = distinct !{!2642, !2643, !"quoting_options_from_style: argument 0"}
!2643 = distinct !{!2643, !"quoting_options_from_style"}
!2644 = !DILocation(line: 953, column: 36, scope: !2574, inlinedAt: !2639)
!2645 = !DILocation(line: 0, scope: !2556, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 953, column: 36, scope: !2574, inlinedAt: !2639)
!2647 = !DILocation(line: 185, column: 26, scope: !2556, inlinedAt: !2646)
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2646)
!2650 = !DILocation(line: 186, column: 7, scope: !2556, inlinedAt: !2646)
!2651 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2646)
!2652 = !DILocation(line: 188, column: 11, scope: !2556, inlinedAt: !2646)
!2653 = distinct !DIAssignID()
!2654 = !DILocation(line: 954, column: 10, scope: !2574, inlinedAt: !2639)
!2655 = !DILocation(line: 955, column: 1, scope: !2574, inlinedAt: !2639)
!2656 = !DILocation(line: 966, column: 3, scope: !2629)
!2657 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !510, file: !510, line: 970, type: !2658, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!109, !115, !112, !4}
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DILocalVariable(name: "arg", arg: 1, scope: !2657, file: !510, line: 970, type: !115)
!2662 = !DILocalVariable(name: "argsize", arg: 2, scope: !2657, file: !510, line: 970, type: !112)
!2663 = !DILocalVariable(name: "ch", arg: 3, scope: !2657, file: !510, line: 970, type: !4)
!2664 = !DILocalVariable(name: "options", scope: !2657, file: !510, line: 972, type: !548)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !2657)
!2667 = !DILocation(line: 972, column: 3, scope: !2657)
!2668 = !DILocation(line: 973, column: 13, scope: !2657)
!2669 = !{i64 0, i64 4, !876, i64 4, i64 4, !876, i64 8, i64 32, !885, i64 40, i64 8, !814, i64 48, i64 8, !814}
!2670 = distinct !DIAssignID()
!2671 = !DILocation(line: 0, scope: !1660, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 974, column: 3, scope: !2657)
!2673 = !DILocation(line: 147, column: 41, scope: !1660, inlinedAt: !2672)
!2674 = !DILocation(line: 147, column: 62, scope: !1660, inlinedAt: !2672)
!2675 = !DILocation(line: 147, column: 57, scope: !1660, inlinedAt: !2672)
!2676 = !DILocation(line: 148, column: 15, scope: !1660, inlinedAt: !2672)
!2677 = !DILocation(line: 149, column: 21, scope: !1660, inlinedAt: !2672)
!2678 = !DILocation(line: 149, column: 24, scope: !1660, inlinedAt: !2672)
!2679 = !DILocation(line: 150, column: 19, scope: !1660, inlinedAt: !2672)
!2680 = !DILocation(line: 150, column: 24, scope: !1660, inlinedAt: !2672)
!2681 = !DILocation(line: 150, column: 6, scope: !1660, inlinedAt: !2672)
!2682 = !DILocation(line: 975, column: 10, scope: !2657)
!2683 = !DILocation(line: 976, column: 1, scope: !2657)
!2684 = !DILocation(line: 975, column: 3, scope: !2657)
!2685 = distinct !DISubprogram(name: "quotearg_char", scope: !510, file: !510, line: 979, type: !2686, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!109, !115, !4}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !510, line: 979, type: !115)
!2690 = !DILocalVariable(name: "ch", arg: 2, scope: !2685, file: !510, line: 979, type: !4)
!2691 = distinct !DIAssignID()
!2692 = !DILocation(line: 0, scope: !2685)
!2693 = !DILocation(line: 0, scope: !2657, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 981, column: 10, scope: !2685)
!2695 = !DILocation(line: 972, column: 3, scope: !2657, inlinedAt: !2694)
!2696 = !DILocation(line: 973, column: 13, scope: !2657, inlinedAt: !2694)
!2697 = distinct !DIAssignID()
!2698 = !DILocation(line: 0, scope: !1660, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 974, column: 3, scope: !2657, inlinedAt: !2694)
!2700 = !DILocation(line: 147, column: 41, scope: !1660, inlinedAt: !2699)
!2701 = !DILocation(line: 147, column: 62, scope: !1660, inlinedAt: !2699)
!2702 = !DILocation(line: 147, column: 57, scope: !1660, inlinedAt: !2699)
!2703 = !DILocation(line: 148, column: 15, scope: !1660, inlinedAt: !2699)
!2704 = !DILocation(line: 149, column: 21, scope: !1660, inlinedAt: !2699)
!2705 = !DILocation(line: 149, column: 24, scope: !1660, inlinedAt: !2699)
!2706 = !DILocation(line: 150, column: 19, scope: !1660, inlinedAt: !2699)
!2707 = !DILocation(line: 150, column: 24, scope: !1660, inlinedAt: !2699)
!2708 = !DILocation(line: 150, column: 6, scope: !1660, inlinedAt: !2699)
!2709 = !DILocation(line: 975, column: 10, scope: !2657, inlinedAt: !2694)
!2710 = !DILocation(line: 976, column: 1, scope: !2657, inlinedAt: !2694)
!2711 = !DILocation(line: 981, column: 3, scope: !2685)
!2712 = distinct !DISubprogram(name: "quotearg_colon", scope: !510, file: !510, line: 985, type: !999, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2713)
!2713 = !{!2714}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !510, line: 985, type: !115)
!2715 = distinct !DIAssignID()
!2716 = !DILocation(line: 0, scope: !2712)
!2717 = !DILocation(line: 0, scope: !2685, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 987, column: 10, scope: !2712)
!2719 = !DILocation(line: 0, scope: !2657, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 981, column: 10, scope: !2685, inlinedAt: !2718)
!2721 = !DILocation(line: 972, column: 3, scope: !2657, inlinedAt: !2720)
!2722 = !DILocation(line: 973, column: 13, scope: !2657, inlinedAt: !2720)
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 0, scope: !1660, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 974, column: 3, scope: !2657, inlinedAt: !2720)
!2726 = !DILocation(line: 147, column: 57, scope: !1660, inlinedAt: !2725)
!2727 = !DILocation(line: 149, column: 21, scope: !1660, inlinedAt: !2725)
!2728 = !DILocation(line: 150, column: 6, scope: !1660, inlinedAt: !2725)
!2729 = !DILocation(line: 975, column: 10, scope: !2657, inlinedAt: !2720)
!2730 = !DILocation(line: 976, column: 1, scope: !2657, inlinedAt: !2720)
!2731 = !DILocation(line: 987, column: 3, scope: !2712)
!2732 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !510, file: !510, line: 991, type: !2530, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2733)
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2732, file: !510, line: 991, type: !115)
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2732, file: !510, line: 991, type: !112)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 0, scope: !2732)
!2738 = !DILocation(line: 0, scope: !2657, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 993, column: 10, scope: !2732)
!2740 = !DILocation(line: 972, column: 3, scope: !2657, inlinedAt: !2739)
!2741 = !DILocation(line: 973, column: 13, scope: !2657, inlinedAt: !2739)
!2742 = distinct !DIAssignID()
!2743 = !DILocation(line: 0, scope: !1660, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 974, column: 3, scope: !2657, inlinedAt: !2739)
!2745 = !DILocation(line: 147, column: 57, scope: !1660, inlinedAt: !2744)
!2746 = !DILocation(line: 149, column: 21, scope: !1660, inlinedAt: !2744)
!2747 = !DILocation(line: 150, column: 6, scope: !1660, inlinedAt: !2744)
!2748 = !DILocation(line: 975, column: 10, scope: !2657, inlinedAt: !2739)
!2749 = !DILocation(line: 976, column: 1, scope: !2657, inlinedAt: !2739)
!2750 = !DILocation(line: 993, column: 3, scope: !2732)
!2751 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !510, file: !510, line: 997, type: !2541, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2752)
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2751, file: !510, line: 997, type: !68)
!2754 = !DILocalVariable(name: "s", arg: 2, scope: !2751, file: !510, line: 997, type: !533)
!2755 = !DILocalVariable(name: "arg", arg: 3, scope: !2751, file: !510, line: 997, type: !115)
!2756 = !DILocalVariable(name: "options", scope: !2751, file: !510, line: 999, type: !548)
!2757 = distinct !DIAssignID()
!2758 = !DILocation(line: 0, scope: !2751)
!2759 = !DILocation(line: 185, column: 26, scope: !2556, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1000, column: 13, scope: !2751)
!2761 = !DILocation(line: 999, column: 3, scope: !2751)
!2762 = !DILocation(line: 0, scope: !2556, inlinedAt: !2760)
!2763 = !DILocation(line: 186, column: 13, scope: !2566, inlinedAt: !2760)
!2764 = !DILocation(line: 186, column: 7, scope: !2556, inlinedAt: !2760)
!2765 = !DILocation(line: 187, column: 5, scope: !2566, inlinedAt: !2760)
!2766 = !{!2767}
!2767 = distinct !{!2767, !2768, !"quoting_options_from_style: argument 0"}
!2768 = distinct !{!2768, !"quoting_options_from_style"}
!2769 = !DILocation(line: 1000, column: 13, scope: !2751)
!2770 = distinct !DIAssignID()
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 0, scope: !1660, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1001, column: 3, scope: !2751)
!2774 = !DILocation(line: 147, column: 57, scope: !1660, inlinedAt: !2773)
!2775 = !DILocation(line: 149, column: 21, scope: !1660, inlinedAt: !2773)
!2776 = !DILocation(line: 150, column: 6, scope: !1660, inlinedAt: !2773)
!2777 = distinct !DIAssignID()
!2778 = !DILocation(line: 1002, column: 10, scope: !2751)
!2779 = !DILocation(line: 1003, column: 1, scope: !2751)
!2780 = !DILocation(line: 1002, column: 3, scope: !2751)
!2781 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !510, file: !510, line: 1006, type: !2782, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!109, !68, !115, !115, !115}
!2784 = !{!2785, !2786, !2787, !2788}
!2785 = !DILocalVariable(name: "n", arg: 1, scope: !2781, file: !510, line: 1006, type: !68)
!2786 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2781, file: !510, line: 1006, type: !115)
!2787 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2781, file: !510, line: 1007, type: !115)
!2788 = !DILocalVariable(name: "arg", arg: 4, scope: !2781, file: !510, line: 1007, type: !115)
!2789 = distinct !DIAssignID()
!2790 = !DILocation(line: 0, scope: !2781)
!2791 = !DILocalVariable(name: "o", scope: !2792, file: !510, line: 1018, type: !548)
!2792 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !510, file: !510, line: 1014, type: !2793, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!109, !68, !115, !115, !115, !112}
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2791}
!2796 = !DILocalVariable(name: "n", arg: 1, scope: !2792, file: !510, line: 1014, type: !68)
!2797 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2792, file: !510, line: 1014, type: !115)
!2798 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2792, file: !510, line: 1015, type: !115)
!2799 = !DILocalVariable(name: "arg", arg: 4, scope: !2792, file: !510, line: 1016, type: !115)
!2800 = !DILocalVariable(name: "argsize", arg: 5, scope: !2792, file: !510, line: 1016, type: !112)
!2801 = !DILocation(line: 0, scope: !2792, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 1009, column: 10, scope: !2781)
!2803 = !DILocation(line: 1018, column: 3, scope: !2792, inlinedAt: !2802)
!2804 = !DILocation(line: 1018, column: 30, scope: !2792, inlinedAt: !2802)
!2805 = distinct !DIAssignID()
!2806 = distinct !DIAssignID()
!2807 = !DILocation(line: 0, scope: !1700, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1019, column: 3, scope: !2792, inlinedAt: !2802)
!2809 = !DILocation(line: 174, column: 12, scope: !1700, inlinedAt: !2808)
!2810 = distinct !DIAssignID()
!2811 = !DILocation(line: 175, column: 8, scope: !1713, inlinedAt: !2808)
!2812 = !DILocation(line: 175, column: 19, scope: !1713, inlinedAt: !2808)
!2813 = !DILocation(line: 176, column: 5, scope: !1713, inlinedAt: !2808)
!2814 = !DILocation(line: 177, column: 6, scope: !1700, inlinedAt: !2808)
!2815 = !DILocation(line: 177, column: 17, scope: !1700, inlinedAt: !2808)
!2816 = distinct !DIAssignID()
!2817 = !DILocation(line: 178, column: 6, scope: !1700, inlinedAt: !2808)
!2818 = !DILocation(line: 178, column: 18, scope: !1700, inlinedAt: !2808)
!2819 = distinct !DIAssignID()
!2820 = !DILocation(line: 1020, column: 10, scope: !2792, inlinedAt: !2802)
!2821 = !DILocation(line: 1021, column: 1, scope: !2792, inlinedAt: !2802)
!2822 = !DILocation(line: 1009, column: 3, scope: !2781)
!2823 = distinct !DIAssignID()
!2824 = !DILocation(line: 0, scope: !2792)
!2825 = !DILocation(line: 1018, column: 3, scope: !2792)
!2826 = !DILocation(line: 1018, column: 30, scope: !2792)
!2827 = distinct !DIAssignID()
!2828 = distinct !DIAssignID()
!2829 = !DILocation(line: 0, scope: !1700, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1019, column: 3, scope: !2792)
!2831 = !DILocation(line: 174, column: 12, scope: !1700, inlinedAt: !2830)
!2832 = distinct !DIAssignID()
!2833 = !DILocation(line: 175, column: 8, scope: !1713, inlinedAt: !2830)
!2834 = !DILocation(line: 175, column: 19, scope: !1713, inlinedAt: !2830)
!2835 = !DILocation(line: 176, column: 5, scope: !1713, inlinedAt: !2830)
!2836 = !DILocation(line: 177, column: 6, scope: !1700, inlinedAt: !2830)
!2837 = !DILocation(line: 177, column: 17, scope: !1700, inlinedAt: !2830)
!2838 = distinct !DIAssignID()
!2839 = !DILocation(line: 178, column: 6, scope: !1700, inlinedAt: !2830)
!2840 = !DILocation(line: 178, column: 18, scope: !1700, inlinedAt: !2830)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 1020, column: 10, scope: !2792)
!2843 = !DILocation(line: 1021, column: 1, scope: !2792)
!2844 = !DILocation(line: 1020, column: 3, scope: !2792)
!2845 = distinct !DISubprogram(name: "quotearg_custom", scope: !510, file: !510, line: 1024, type: !2846, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!109, !115, !115, !115}
!2848 = !{!2849, !2850, !2851}
!2849 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2845, file: !510, line: 1024, type: !115)
!2850 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2845, file: !510, line: 1024, type: !115)
!2851 = !DILocalVariable(name: "arg", arg: 3, scope: !2845, file: !510, line: 1025, type: !115)
!2852 = distinct !DIAssignID()
!2853 = !DILocation(line: 0, scope: !2845)
!2854 = !DILocation(line: 0, scope: !2781, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 1027, column: 10, scope: !2845)
!2856 = !DILocation(line: 0, scope: !2792, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 1009, column: 10, scope: !2781, inlinedAt: !2855)
!2858 = !DILocation(line: 1018, column: 3, scope: !2792, inlinedAt: !2857)
!2859 = !DILocation(line: 1018, column: 30, scope: !2792, inlinedAt: !2857)
!2860 = distinct !DIAssignID()
!2861 = distinct !DIAssignID()
!2862 = !DILocation(line: 0, scope: !1700, inlinedAt: !2863)
!2863 = distinct !DILocation(line: 1019, column: 3, scope: !2792, inlinedAt: !2857)
!2864 = !DILocation(line: 174, column: 12, scope: !1700, inlinedAt: !2863)
!2865 = distinct !DIAssignID()
!2866 = !DILocation(line: 175, column: 8, scope: !1713, inlinedAt: !2863)
!2867 = !DILocation(line: 175, column: 19, scope: !1713, inlinedAt: !2863)
!2868 = !DILocation(line: 176, column: 5, scope: !1713, inlinedAt: !2863)
!2869 = !DILocation(line: 177, column: 6, scope: !1700, inlinedAt: !2863)
!2870 = !DILocation(line: 177, column: 17, scope: !1700, inlinedAt: !2863)
!2871 = distinct !DIAssignID()
!2872 = !DILocation(line: 178, column: 6, scope: !1700, inlinedAt: !2863)
!2873 = !DILocation(line: 178, column: 18, scope: !1700, inlinedAt: !2863)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 1020, column: 10, scope: !2792, inlinedAt: !2857)
!2876 = !DILocation(line: 1021, column: 1, scope: !2792, inlinedAt: !2857)
!2877 = !DILocation(line: 1027, column: 3, scope: !2845)
!2878 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !510, file: !510, line: 1031, type: !2879, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2881)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{!109, !115, !115, !115, !112}
!2881 = !{!2882, !2883, !2884, !2885}
!2882 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2878, file: !510, line: 1031, type: !115)
!2883 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2878, file: !510, line: 1031, type: !115)
!2884 = !DILocalVariable(name: "arg", arg: 3, scope: !2878, file: !510, line: 1032, type: !115)
!2885 = !DILocalVariable(name: "argsize", arg: 4, scope: !2878, file: !510, line: 1032, type: !112)
!2886 = distinct !DIAssignID()
!2887 = !DILocation(line: 0, scope: !2878)
!2888 = !DILocation(line: 0, scope: !2792, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1034, column: 10, scope: !2878)
!2890 = !DILocation(line: 1018, column: 3, scope: !2792, inlinedAt: !2889)
!2891 = !DILocation(line: 1018, column: 30, scope: !2792, inlinedAt: !2889)
!2892 = distinct !DIAssignID()
!2893 = distinct !DIAssignID()
!2894 = !DILocation(line: 0, scope: !1700, inlinedAt: !2895)
!2895 = distinct !DILocation(line: 1019, column: 3, scope: !2792, inlinedAt: !2889)
!2896 = !DILocation(line: 174, column: 12, scope: !1700, inlinedAt: !2895)
!2897 = distinct !DIAssignID()
!2898 = !DILocation(line: 175, column: 8, scope: !1713, inlinedAt: !2895)
!2899 = !DILocation(line: 175, column: 19, scope: !1713, inlinedAt: !2895)
!2900 = !DILocation(line: 176, column: 5, scope: !1713, inlinedAt: !2895)
!2901 = !DILocation(line: 177, column: 6, scope: !1700, inlinedAt: !2895)
!2902 = !DILocation(line: 177, column: 17, scope: !1700, inlinedAt: !2895)
!2903 = distinct !DIAssignID()
!2904 = !DILocation(line: 178, column: 6, scope: !1700, inlinedAt: !2895)
!2905 = !DILocation(line: 178, column: 18, scope: !1700, inlinedAt: !2895)
!2906 = distinct !DIAssignID()
!2907 = !DILocation(line: 1020, column: 10, scope: !2792, inlinedAt: !2889)
!2908 = !DILocation(line: 1021, column: 1, scope: !2792, inlinedAt: !2889)
!2909 = !DILocation(line: 1034, column: 3, scope: !2878)
!2910 = distinct !DISubprogram(name: "quote_n_mem", scope: !510, file: !510, line: 1049, type: !2911, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2913)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!115, !68, !115, !112}
!2913 = !{!2914, !2915, !2916}
!2914 = !DILocalVariable(name: "n", arg: 1, scope: !2910, file: !510, line: 1049, type: !68)
!2915 = !DILocalVariable(name: "arg", arg: 2, scope: !2910, file: !510, line: 1049, type: !115)
!2916 = !DILocalVariable(name: "argsize", arg: 3, scope: !2910, file: !510, line: 1049, type: !112)
!2917 = !DILocation(line: 0, scope: !2910)
!2918 = !DILocation(line: 1051, column: 10, scope: !2910)
!2919 = !DILocation(line: 1051, column: 3, scope: !2910)
!2920 = distinct !DISubprogram(name: "quote_mem", scope: !510, file: !510, line: 1055, type: !2921, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!115, !115, !112}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "arg", arg: 1, scope: !2920, file: !510, line: 1055, type: !115)
!2925 = !DILocalVariable(name: "argsize", arg: 2, scope: !2920, file: !510, line: 1055, type: !112)
!2926 = !DILocation(line: 0, scope: !2920)
!2927 = !DILocation(line: 0, scope: !2910, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 1057, column: 10, scope: !2920)
!2929 = !DILocation(line: 1051, column: 10, scope: !2910, inlinedAt: !2928)
!2930 = !DILocation(line: 1057, column: 3, scope: !2920)
!2931 = distinct !DISubprogram(name: "quote_n", scope: !510, file: !510, line: 1061, type: !2932, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!115, !68, !115}
!2934 = !{!2935, !2936}
!2935 = !DILocalVariable(name: "n", arg: 1, scope: !2931, file: !510, line: 1061, type: !68)
!2936 = !DILocalVariable(name: "arg", arg: 2, scope: !2931, file: !510, line: 1061, type: !115)
!2937 = !DILocation(line: 0, scope: !2931)
!2938 = !DILocation(line: 0, scope: !2910, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 1063, column: 10, scope: !2931)
!2940 = !DILocation(line: 1051, column: 10, scope: !2910, inlinedAt: !2939)
!2941 = !DILocation(line: 1063, column: 3, scope: !2931)
!2942 = distinct !DISubprogram(name: "quote", scope: !510, file: !510, line: 1067, type: !2943, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !531, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!115, !115}
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "arg", arg: 1, scope: !2942, file: !510, line: 1067, type: !115)
!2947 = !DILocation(line: 0, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2931, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 1069, column: 10, scope: !2942)
!2950 = !DILocation(line: 0, scope: !2910, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1063, column: 10, scope: !2931, inlinedAt: !2949)
!2952 = !DILocation(line: 1051, column: 10, scope: !2910, inlinedAt: !2951)
!2953 = !DILocation(line: 1069, column: 3, scope: !2942)
!2954 = distinct !DISubprogram(name: "version_etc_arn", scope: !611, file: !611, line: 61, type: !2955, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !2992)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2957, !115, !115, !115, !2991, !112}
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !2959)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2959, file: !173, line: 51, baseType: !68, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2959, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2959, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2959, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2959, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2959, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2959, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2959, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2959, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2959, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2959, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2959, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2959, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2959, file: !173, line: 70, baseType: !2975, size: 64, offset: 832)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2959, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2959, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2959, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2959, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2959, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2959, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2959, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2959, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2959, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2959, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2959, file: !173, line: 93, baseType: !2975, size: 64, offset: 1344)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2959, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2959, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2959, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2959, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998}
!2993 = !DILocalVariable(name: "stream", arg: 1, scope: !2954, file: !611, line: 61, type: !2957)
!2994 = !DILocalVariable(name: "command_name", arg: 2, scope: !2954, file: !611, line: 62, type: !115)
!2995 = !DILocalVariable(name: "package", arg: 3, scope: !2954, file: !611, line: 62, type: !115)
!2996 = !DILocalVariable(name: "version", arg: 4, scope: !2954, file: !611, line: 63, type: !115)
!2997 = !DILocalVariable(name: "authors", arg: 5, scope: !2954, file: !611, line: 64, type: !2991)
!2998 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2954, file: !611, line: 64, type: !112)
!2999 = !DILocation(line: 0, scope: !2954)
!3000 = !DILocation(line: 66, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2954, file: !611, line: 66, column: 7)
!3002 = !DILocation(line: 66, column: 7, scope: !2954)
!3003 = !DILocation(line: 67, column: 5, scope: !3001)
!3004 = !DILocation(line: 69, column: 5, scope: !3001)
!3005 = !DILocation(line: 83, column: 3, scope: !2954)
!3006 = !DILocation(line: 85, column: 3, scope: !2954)
!3007 = !DILocation(line: 88, column: 3, scope: !2954)
!3008 = !DILocation(line: 95, column: 3, scope: !2954)
!3009 = !DILocation(line: 97, column: 3, scope: !2954)
!3010 = !DILocation(line: 105, column: 7, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2954, file: !611, line: 98, column: 5)
!3012 = !DILocation(line: 106, column: 7, scope: !3011)
!3013 = !DILocation(line: 109, column: 7, scope: !3011)
!3014 = !DILocation(line: 110, column: 7, scope: !3011)
!3015 = !DILocation(line: 113, column: 7, scope: !3011)
!3016 = !DILocation(line: 115, column: 7, scope: !3011)
!3017 = !DILocation(line: 120, column: 7, scope: !3011)
!3018 = !DILocation(line: 122, column: 7, scope: !3011)
!3019 = !DILocation(line: 127, column: 7, scope: !3011)
!3020 = !DILocation(line: 129, column: 7, scope: !3011)
!3021 = !DILocation(line: 134, column: 7, scope: !3011)
!3022 = !DILocation(line: 137, column: 7, scope: !3011)
!3023 = !DILocation(line: 142, column: 7, scope: !3011)
!3024 = !DILocation(line: 145, column: 7, scope: !3011)
!3025 = !DILocation(line: 150, column: 7, scope: !3011)
!3026 = !DILocation(line: 154, column: 7, scope: !3011)
!3027 = !DILocation(line: 159, column: 7, scope: !3011)
!3028 = !DILocation(line: 163, column: 7, scope: !3011)
!3029 = !DILocation(line: 170, column: 7, scope: !3011)
!3030 = !DILocation(line: 174, column: 7, scope: !3011)
!3031 = !DILocation(line: 176, column: 1, scope: !2954)
!3032 = distinct !DISubprogram(name: "version_etc_ar", scope: !611, file: !611, line: 183, type: !3033, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{null, !2957, !115, !115, !115, !2991}
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041}
!3036 = !DILocalVariable(name: "stream", arg: 1, scope: !3032, file: !611, line: 183, type: !2957)
!3037 = !DILocalVariable(name: "command_name", arg: 2, scope: !3032, file: !611, line: 184, type: !115)
!3038 = !DILocalVariable(name: "package", arg: 3, scope: !3032, file: !611, line: 184, type: !115)
!3039 = !DILocalVariable(name: "version", arg: 4, scope: !3032, file: !611, line: 185, type: !115)
!3040 = !DILocalVariable(name: "authors", arg: 5, scope: !3032, file: !611, line: 185, type: !2991)
!3041 = !DILocalVariable(name: "n_authors", scope: !3032, file: !611, line: 187, type: !112)
!3042 = !DILocation(line: 0, scope: !3032)
!3043 = !DILocation(line: 189, column: 8, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3032, file: !611, line: 189, column: 3)
!3045 = !DILocation(line: 189, scope: !3044)
!3046 = !DILocation(line: 189, column: 23, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3044, file: !611, line: 189, column: 3)
!3048 = !DILocation(line: 189, column: 3, scope: !3044)
!3049 = !DILocation(line: 189, column: 52, scope: !3047)
!3050 = distinct !{!3050, !3048, !3051, !923}
!3051 = !DILocation(line: 190, column: 5, scope: !3044)
!3052 = !DILocation(line: 191, column: 3, scope: !3032)
!3053 = !DILocation(line: 192, column: 1, scope: !3032)
!3054 = distinct !DISubprogram(name: "version_etc_va", scope: !611, file: !611, line: 199, type: !3055, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3067)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{null, !2957, !115, !115, !115, !3057}
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !407, line: 52, baseType: !3058)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !409, line: 12, baseType: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !611, baseType: !3060)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065, !3066}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3060, file: !611, line: 192, baseType: !110, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3060, file: !611, line: 192, baseType: !110, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3060, file: !611, line: 192, baseType: !110, size: 64, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3060, file: !611, line: 192, baseType: !68, size: 32, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3060, file: !611, line: 192, baseType: !68, size: 32, offset: 224)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074}
!3068 = !DILocalVariable(name: "stream", arg: 1, scope: !3054, file: !611, line: 199, type: !2957)
!3069 = !DILocalVariable(name: "command_name", arg: 2, scope: !3054, file: !611, line: 200, type: !115)
!3070 = !DILocalVariable(name: "package", arg: 3, scope: !3054, file: !611, line: 200, type: !115)
!3071 = !DILocalVariable(name: "version", arg: 4, scope: !3054, file: !611, line: 201, type: !115)
!3072 = !DILocalVariable(name: "authors", arg: 5, scope: !3054, file: !611, line: 201, type: !3057)
!3073 = !DILocalVariable(name: "n_authors", scope: !3054, file: !611, line: 203, type: !112)
!3074 = !DILocalVariable(name: "authtab", scope: !3054, file: !611, line: 204, type: !3075)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !50)
!3076 = distinct !DIAssignID()
!3077 = !DILocation(line: 0, scope: !3054)
!3078 = !DILocation(line: 204, column: 3, scope: !3054)
!3079 = !DILocation(line: 208, column: 35, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !611, line: 206, column: 3)
!3081 = distinct !DILexicalBlock(scope: !3054, file: !611, line: 206, column: 3)
!3082 = !DILocation(line: 208, column: 33, scope: !3080)
!3083 = !DILocation(line: 208, column: 67, scope: !3080)
!3084 = !DILocation(line: 206, column: 3, scope: !3081)
!3085 = !DILocation(line: 208, column: 14, scope: !3080)
!3086 = !DILocation(line: 0, scope: !3081)
!3087 = !DILocation(line: 211, column: 3, scope: !3054)
!3088 = !DILocation(line: 213, column: 1, scope: !3054)
!3089 = distinct !DISubprogram(name: "version_etc", scope: !611, file: !611, line: 230, type: !3090, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !2957, !115, !115, !115, null}
!3092 = !{!3093, !3094, !3095, !3096, !3097}
!3093 = !DILocalVariable(name: "stream", arg: 1, scope: !3089, file: !611, line: 230, type: !2957)
!3094 = !DILocalVariable(name: "command_name", arg: 2, scope: !3089, file: !611, line: 231, type: !115)
!3095 = !DILocalVariable(name: "package", arg: 3, scope: !3089, file: !611, line: 231, type: !115)
!3096 = !DILocalVariable(name: "version", arg: 4, scope: !3089, file: !611, line: 232, type: !115)
!3097 = !DILocalVariable(name: "authors", scope: !3089, file: !611, line: 234, type: !3057)
!3098 = distinct !DIAssignID()
!3099 = !DILocation(line: 0, scope: !3089)
!3100 = !DILocation(line: 234, column: 3, scope: !3089)
!3101 = !DILocation(line: 235, column: 3, scope: !3089)
!3102 = !DILocation(line: 236, column: 3, scope: !3089)
!3103 = !DILocation(line: 237, column: 3, scope: !3089)
!3104 = !DILocation(line: 238, column: 1, scope: !3089)
!3105 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !611, file: !611, line: 241, type: !447, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734)
!3106 = !DILocation(line: 243, column: 3, scope: !3105)
!3107 = !DILocation(line: 248, column: 3, scope: !3105)
!3108 = !DILocation(line: 254, column: 3, scope: !3105)
!3109 = !DILocation(line: 259, column: 3, scope: !3105)
!3110 = !DILocation(line: 261, column: 1, scope: !3105)
!3111 = distinct !DISubprogram(name: "xnrealloc", scope: !3112, file: !3112, line: 147, type: !3113, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3115)
!3112 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!110, !110, !112, !112}
!3115 = !{!3116, !3117, !3118}
!3116 = !DILocalVariable(name: "p", arg: 1, scope: !3111, file: !3112, line: 147, type: !110)
!3117 = !DILocalVariable(name: "n", arg: 2, scope: !3111, file: !3112, line: 147, type: !112)
!3118 = !DILocalVariable(name: "s", arg: 3, scope: !3111, file: !3112, line: 147, type: !112)
!3119 = !DILocation(line: 0, scope: !3111)
!3120 = !DILocalVariable(name: "p", arg: 1, scope: !3121, file: !742, line: 83, type: !110)
!3121 = distinct !DISubprogram(name: "xreallocarray", scope: !742, file: !742, line: 83, type: !3113, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3122)
!3122 = !{!3120, !3123, !3124}
!3123 = !DILocalVariable(name: "n", arg: 2, scope: !3121, file: !742, line: 83, type: !112)
!3124 = !DILocalVariable(name: "s", arg: 3, scope: !3121, file: !742, line: 83, type: !112)
!3125 = !DILocation(line: 0, scope: !3121, inlinedAt: !3126)
!3126 = distinct !DILocation(line: 149, column: 10, scope: !3111)
!3127 = !DILocation(line: 85, column: 25, scope: !3121, inlinedAt: !3126)
!3128 = !DILocalVariable(name: "p", arg: 1, scope: !3129, file: !742, line: 37, type: !110)
!3129 = distinct !DISubprogram(name: "check_nonnull", scope: !742, file: !742, line: 37, type: !3130, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!110, !110}
!3132 = !{!3128}
!3133 = !DILocation(line: 0, scope: !3129, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 85, column: 10, scope: !3121, inlinedAt: !3126)
!3135 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3134)
!3136 = distinct !DILexicalBlock(scope: !3129, file: !742, line: 39, column: 7)
!3137 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3134)
!3138 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3134)
!3139 = !DILocation(line: 149, column: 3, scope: !3111)
!3140 = !DILocation(line: 0, scope: !3121)
!3141 = !DILocation(line: 85, column: 25, scope: !3121)
!3142 = !DILocation(line: 0, scope: !3129, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !3121)
!3144 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3143)
!3147 = !DILocation(line: 85, column: 3, scope: !3121)
!3148 = distinct !DISubprogram(name: "xmalloc", scope: !742, file: !742, line: 47, type: !3149, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!110, !112}
!3151 = !{!3152}
!3152 = !DILocalVariable(name: "s", arg: 1, scope: !3148, file: !742, line: 47, type: !112)
!3153 = !DILocation(line: 0, scope: !3148)
!3154 = !DILocation(line: 49, column: 25, scope: !3148)
!3155 = !DILocation(line: 0, scope: !3129, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 49, column: 10, scope: !3148)
!3157 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3156)
!3158 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3156)
!3159 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3156)
!3160 = !DILocation(line: 49, column: 3, scope: !3148)
!3161 = !DISubprogram(name: "malloc", scope: !997, file: !997, line: 540, type: !3149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3162 = distinct !DISubprogram(name: "ximalloc", scope: !742, file: !742, line: 53, type: !3163, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3165)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!110, !761}
!3165 = !{!3166}
!3166 = !DILocalVariable(name: "s", arg: 1, scope: !3162, file: !742, line: 53, type: !761)
!3167 = !DILocation(line: 0, scope: !3162)
!3168 = !DILocalVariable(name: "s", arg: 1, scope: !3169, file: !3170, line: 55, type: !761)
!3169 = distinct !DISubprogram(name: "imalloc", scope: !3170, file: !3170, line: 55, type: !3163, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3171)
!3170 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3171 = !{!3168}
!3172 = !DILocation(line: 0, scope: !3169, inlinedAt: !3173)
!3173 = distinct !DILocation(line: 55, column: 25, scope: !3162)
!3174 = !DILocation(line: 57, column: 26, scope: !3169, inlinedAt: !3173)
!3175 = !DILocation(line: 0, scope: !3129, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 55, column: 10, scope: !3162)
!3177 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3176)
!3178 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3176)
!3179 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3176)
!3180 = !DILocation(line: 55, column: 3, scope: !3162)
!3181 = distinct !DISubprogram(name: "xcharalloc", scope: !742, file: !742, line: 59, type: !3182, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!109, !112}
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "n", arg: 1, scope: !3181, file: !742, line: 59, type: !112)
!3186 = !DILocation(line: 0, scope: !3181)
!3187 = !DILocation(line: 0, scope: !3148, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 61, column: 10, scope: !3181)
!3189 = !DILocation(line: 49, column: 25, scope: !3148, inlinedAt: !3188)
!3190 = !DILocation(line: 0, scope: !3129, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 49, column: 10, scope: !3148, inlinedAt: !3188)
!3192 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3191)
!3195 = !DILocation(line: 61, column: 3, scope: !3181)
!3196 = distinct !DISubprogram(name: "xrealloc", scope: !742, file: !742, line: 68, type: !3197, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3199)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!110, !110, !112}
!3199 = !{!3200, !3201}
!3200 = !DILocalVariable(name: "p", arg: 1, scope: !3196, file: !742, line: 68, type: !110)
!3201 = !DILocalVariable(name: "s", arg: 2, scope: !3196, file: !742, line: 68, type: !112)
!3202 = !DILocation(line: 0, scope: !3196)
!3203 = !DILocalVariable(name: "ptr", arg: 1, scope: !3204, file: !3205, line: 2057, type: !110)
!3204 = distinct !DISubprogram(name: "rpl_realloc", scope: !3205, file: !3205, line: 2057, type: !3197, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3206)
!3205 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3206 = !{!3203, !3207}
!3207 = !DILocalVariable(name: "size", arg: 2, scope: !3204, file: !3205, line: 2057, type: !112)
!3208 = !DILocation(line: 0, scope: !3204, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 70, column: 25, scope: !3196)
!3210 = !DILocation(line: 2059, column: 24, scope: !3204, inlinedAt: !3209)
!3211 = !DILocation(line: 2059, column: 10, scope: !3204, inlinedAt: !3209)
!3212 = !DILocation(line: 0, scope: !3129, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 70, column: 10, scope: !3196)
!3214 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3213)
!3215 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3213)
!3216 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3213)
!3217 = !DILocation(line: 70, column: 3, scope: !3196)
!3218 = !DISubprogram(name: "realloc", scope: !997, file: !997, line: 551, type: !3197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3219 = distinct !DISubprogram(name: "xirealloc", scope: !742, file: !742, line: 74, type: !3220, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!110, !110, !761}
!3222 = !{!3223, !3224}
!3223 = !DILocalVariable(name: "p", arg: 1, scope: !3219, file: !742, line: 74, type: !110)
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3219, file: !742, line: 74, type: !761)
!3225 = !DILocation(line: 0, scope: !3219)
!3226 = !DILocalVariable(name: "p", arg: 1, scope: !3227, file: !3170, line: 66, type: !110)
!3227 = distinct !DISubprogram(name: "irealloc", scope: !3170, file: !3170, line: 66, type: !3220, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3228)
!3228 = !{!3226, !3229}
!3229 = !DILocalVariable(name: "s", arg: 2, scope: !3227, file: !3170, line: 66, type: !761)
!3230 = !DILocation(line: 0, scope: !3227, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 76, column: 25, scope: !3219)
!3232 = !DILocation(line: 0, scope: !3204, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 68, column: 26, scope: !3227, inlinedAt: !3231)
!3234 = !DILocation(line: 2059, column: 24, scope: !3204, inlinedAt: !3233)
!3235 = !DILocation(line: 2059, column: 10, scope: !3204, inlinedAt: !3233)
!3236 = !DILocation(line: 0, scope: !3129, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 76, column: 10, scope: !3219)
!3238 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3237)
!3241 = !DILocation(line: 76, column: 3, scope: !3219)
!3242 = distinct !DISubprogram(name: "xireallocarray", scope: !742, file: !742, line: 89, type: !3243, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!110, !110, !761, !761}
!3245 = !{!3246, !3247, !3248}
!3246 = !DILocalVariable(name: "p", arg: 1, scope: !3242, file: !742, line: 89, type: !110)
!3247 = !DILocalVariable(name: "n", arg: 2, scope: !3242, file: !742, line: 89, type: !761)
!3248 = !DILocalVariable(name: "s", arg: 3, scope: !3242, file: !742, line: 89, type: !761)
!3249 = !DILocation(line: 0, scope: !3242)
!3250 = !DILocalVariable(name: "p", arg: 1, scope: !3251, file: !3170, line: 98, type: !110)
!3251 = distinct !DISubprogram(name: "ireallocarray", scope: !3170, file: !3170, line: 98, type: !3243, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3252)
!3252 = !{!3250, !3253, !3254}
!3253 = !DILocalVariable(name: "n", arg: 2, scope: !3251, file: !3170, line: 98, type: !761)
!3254 = !DILocalVariable(name: "s", arg: 3, scope: !3251, file: !3170, line: 98, type: !761)
!3255 = !DILocation(line: 0, scope: !3251, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 91, column: 25, scope: !3242)
!3257 = !DILocation(line: 101, column: 13, scope: !3251, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !3129, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 91, column: 10, scope: !3242)
!3260 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3259)
!3261 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3259)
!3262 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3259)
!3263 = !DILocation(line: 91, column: 3, scope: !3242)
!3264 = distinct !DISubprogram(name: "xnmalloc", scope: !742, file: !742, line: 98, type: !3265, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!110, !112, !112}
!3267 = !{!3268, !3269}
!3268 = !DILocalVariable(name: "n", arg: 1, scope: !3264, file: !742, line: 98, type: !112)
!3269 = !DILocalVariable(name: "s", arg: 2, scope: !3264, file: !742, line: 98, type: !112)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 0, scope: !3121, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 100, column: 10, scope: !3264)
!3273 = !DILocation(line: 85, column: 25, scope: !3121, inlinedAt: !3272)
!3274 = !DILocation(line: 0, scope: !3129, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 85, column: 10, scope: !3121, inlinedAt: !3272)
!3276 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3275)
!3277 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3275)
!3278 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3275)
!3279 = !DILocation(line: 100, column: 3, scope: !3264)
!3280 = distinct !DISubprogram(name: "xinmalloc", scope: !742, file: !742, line: 104, type: !3281, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!110, !761, !761}
!3283 = !{!3284, !3285}
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3280, file: !742, line: 104, type: !761)
!3285 = !DILocalVariable(name: "s", arg: 2, scope: !3280, file: !742, line: 104, type: !761)
!3286 = !DILocation(line: 0, scope: !3280)
!3287 = !DILocation(line: 0, scope: !3242, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 106, column: 10, scope: !3280)
!3289 = !DILocation(line: 0, scope: !3251, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 91, column: 25, scope: !3242, inlinedAt: !3288)
!3291 = !DILocation(line: 101, column: 13, scope: !3251, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !3129, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 91, column: 10, scope: !3242, inlinedAt: !3288)
!3294 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3293)
!3295 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3293)
!3296 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3293)
!3297 = !DILocation(line: 106, column: 3, scope: !3280)
!3298 = distinct !DISubprogram(name: "x2realloc", scope: !742, file: !742, line: 116, type: !3299, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!110, !110, !748}
!3301 = !{!3302, !3303}
!3302 = !DILocalVariable(name: "p", arg: 1, scope: !3298, file: !742, line: 116, type: !110)
!3303 = !DILocalVariable(name: "ps", arg: 2, scope: !3298, file: !742, line: 116, type: !748)
!3304 = !DILocation(line: 0, scope: !3298)
!3305 = !DILocation(line: 0, scope: !745, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 118, column: 10, scope: !3298)
!3307 = !DILocation(line: 178, column: 14, scope: !745, inlinedAt: !3306)
!3308 = !DILocation(line: 180, column: 9, scope: !3309, inlinedAt: !3306)
!3309 = distinct !DILexicalBlock(scope: !745, file: !742, line: 180, column: 7)
!3310 = !DILocation(line: 180, column: 7, scope: !745, inlinedAt: !3306)
!3311 = !DILocation(line: 182, column: 13, scope: !3312, inlinedAt: !3306)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !742, line: 182, column: 11)
!3313 = distinct !DILexicalBlock(scope: !3309, file: !742, line: 181, column: 5)
!3314 = !DILocation(line: 182, column: 11, scope: !3313, inlinedAt: !3306)
!3315 = !DILocation(line: 197, column: 11, scope: !3316, inlinedAt: !3306)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !742, line: 197, column: 11)
!3317 = distinct !DILexicalBlock(scope: !3309, file: !742, line: 195, column: 5)
!3318 = !DILocation(line: 197, column: 11, scope: !3317, inlinedAt: !3306)
!3319 = !DILocation(line: 198, column: 9, scope: !3316, inlinedAt: !3306)
!3320 = !DILocation(line: 0, scope: !3121, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 201, column: 7, scope: !745, inlinedAt: !3306)
!3322 = !DILocation(line: 85, column: 25, scope: !3121, inlinedAt: !3321)
!3323 = !DILocation(line: 0, scope: !3129, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 85, column: 10, scope: !3121, inlinedAt: !3321)
!3325 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3324)
!3326 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3324)
!3327 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3324)
!3328 = !DILocation(line: 202, column: 7, scope: !745, inlinedAt: !3306)
!3329 = !DILocation(line: 118, column: 3, scope: !3298)
!3330 = !DILocation(line: 0, scope: !745)
!3331 = !DILocation(line: 178, column: 14, scope: !745)
!3332 = !DILocation(line: 180, column: 9, scope: !3309)
!3333 = !DILocation(line: 180, column: 7, scope: !745)
!3334 = !DILocation(line: 182, column: 13, scope: !3312)
!3335 = !DILocation(line: 182, column: 11, scope: !3313)
!3336 = !DILocation(line: 190, column: 30, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3312, file: !742, line: 183, column: 9)
!3338 = !DILocation(line: 191, column: 16, scope: !3337)
!3339 = !DILocation(line: 191, column: 13, scope: !3337)
!3340 = !DILocation(line: 192, column: 9, scope: !3337)
!3341 = !DILocation(line: 197, column: 11, scope: !3316)
!3342 = !DILocation(line: 197, column: 11, scope: !3317)
!3343 = !DILocation(line: 198, column: 9, scope: !3316)
!3344 = !DILocation(line: 0, scope: !3121, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 201, column: 7, scope: !745)
!3346 = !DILocation(line: 85, column: 25, scope: !3121, inlinedAt: !3345)
!3347 = !DILocation(line: 0, scope: !3129, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 85, column: 10, scope: !3121, inlinedAt: !3345)
!3349 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3348)
!3350 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3348)
!3351 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3348)
!3352 = !DILocation(line: 202, column: 7, scope: !745)
!3353 = !DILocation(line: 203, column: 3, scope: !745)
!3354 = !DILocation(line: 0, scope: !757)
!3355 = !DILocation(line: 230, column: 14, scope: !757)
!3356 = !DILocation(line: 238, column: 7, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !757, file: !742, line: 238, column: 7)
!3358 = !DILocation(line: 238, column: 7, scope: !757)
!3359 = !DILocation(line: 240, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !757, file: !742, line: 240, column: 7)
!3361 = !DILocation(line: 240, column: 18, scope: !3360)
!3362 = !DILocation(line: 253, column: 8, scope: !757)
!3363 = !DILocation(line: 256, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !757, file: !742, line: 256, column: 7)
!3365 = !DILocation(line: 256, column: 7, scope: !757)
!3366 = !DILocation(line: 258, column: 27, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3364, file: !742, line: 257, column: 5)
!3368 = !DILocation(line: 259, column: 32, scope: !3367)
!3369 = !DILocation(line: 260, column: 5, scope: !3367)
!3370 = !DILocation(line: 262, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !757, file: !742, line: 262, column: 7)
!3372 = !DILocation(line: 262, column: 7, scope: !757)
!3373 = !DILocation(line: 263, column: 9, scope: !3371)
!3374 = !DILocation(line: 263, column: 5, scope: !3371)
!3375 = !DILocation(line: 264, column: 9, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !757, file: !742, line: 264, column: 7)
!3377 = !DILocation(line: 264, column: 14, scope: !3376)
!3378 = !DILocation(line: 265, column: 7, scope: !3376)
!3379 = !DILocation(line: 265, column: 11, scope: !3376)
!3380 = !DILocation(line: 266, column: 11, scope: !3376)
!3381 = !DILocation(line: 267, column: 14, scope: !3376)
!3382 = !DILocation(line: 264, column: 7, scope: !757)
!3383 = !DILocation(line: 268, column: 5, scope: !3376)
!3384 = !DILocation(line: 0, scope: !3196, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 269, column: 8, scope: !757)
!3386 = !DILocation(line: 0, scope: !3204, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 70, column: 25, scope: !3196, inlinedAt: !3385)
!3388 = !DILocation(line: 2059, column: 24, scope: !3204, inlinedAt: !3387)
!3389 = !DILocation(line: 2059, column: 10, scope: !3204, inlinedAt: !3387)
!3390 = !DILocation(line: 0, scope: !3129, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 70, column: 10, scope: !3196, inlinedAt: !3385)
!3392 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3391)
!3393 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3391)
!3394 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3391)
!3395 = !DILocation(line: 270, column: 7, scope: !757)
!3396 = !DILocation(line: 271, column: 3, scope: !757)
!3397 = distinct !DISubprogram(name: "xzalloc", scope: !742, file: !742, line: 279, type: !3149, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3398)
!3398 = !{!3399}
!3399 = !DILocalVariable(name: "s", arg: 1, scope: !3397, file: !742, line: 279, type: !112)
!3400 = !DILocation(line: 0, scope: !3397)
!3401 = !DILocalVariable(name: "n", arg: 1, scope: !3402, file: !742, line: 294, type: !112)
!3402 = distinct !DISubprogram(name: "xcalloc", scope: !742, file: !742, line: 294, type: !3265, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3403)
!3403 = !{!3401, !3404}
!3404 = !DILocalVariable(name: "s", arg: 2, scope: !3402, file: !742, line: 294, type: !112)
!3405 = !DILocation(line: 0, scope: !3402, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 281, column: 10, scope: !3397)
!3407 = !DILocation(line: 296, column: 25, scope: !3402, inlinedAt: !3406)
!3408 = !DILocation(line: 0, scope: !3129, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 296, column: 10, scope: !3402, inlinedAt: !3406)
!3410 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3409)
!3411 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3409)
!3412 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3409)
!3413 = !DILocation(line: 281, column: 3, scope: !3397)
!3414 = !DISubprogram(name: "calloc", scope: !997, file: !997, line: 543, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3415 = !DILocation(line: 0, scope: !3402)
!3416 = !DILocation(line: 296, column: 25, scope: !3402)
!3417 = !DILocation(line: 0, scope: !3129, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 296, column: 10, scope: !3402)
!3419 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3418)
!3420 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3418)
!3421 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3418)
!3422 = !DILocation(line: 296, column: 3, scope: !3402)
!3423 = distinct !DISubprogram(name: "xizalloc", scope: !742, file: !742, line: 285, type: !3163, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3424)
!3424 = !{!3425}
!3425 = !DILocalVariable(name: "s", arg: 1, scope: !3423, file: !742, line: 285, type: !761)
!3426 = !DILocation(line: 0, scope: !3423)
!3427 = !DILocalVariable(name: "n", arg: 1, scope: !3428, file: !742, line: 300, type: !761)
!3428 = distinct !DISubprogram(name: "xicalloc", scope: !742, file: !742, line: 300, type: !3281, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3429)
!3429 = !{!3427, !3430}
!3430 = !DILocalVariable(name: "s", arg: 2, scope: !3428, file: !742, line: 300, type: !761)
!3431 = !DILocation(line: 0, scope: !3428, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 287, column: 10, scope: !3423)
!3433 = !DILocalVariable(name: "n", arg: 1, scope: !3434, file: !3170, line: 77, type: !761)
!3434 = distinct !DISubprogram(name: "icalloc", scope: !3170, file: !3170, line: 77, type: !3281, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3435)
!3435 = !{!3433, !3436}
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3434, file: !3170, line: 77, type: !761)
!3437 = !DILocation(line: 0, scope: !3434, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 302, column: 25, scope: !3428, inlinedAt: !3432)
!3439 = !DILocation(line: 91, column: 10, scope: !3434, inlinedAt: !3438)
!3440 = !DILocation(line: 0, scope: !3129, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 302, column: 10, scope: !3428, inlinedAt: !3432)
!3442 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3441)
!3443 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3441)
!3444 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3441)
!3445 = !DILocation(line: 287, column: 3, scope: !3423)
!3446 = !DILocation(line: 0, scope: !3428)
!3447 = !DILocation(line: 0, scope: !3434, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 302, column: 25, scope: !3428)
!3449 = !DILocation(line: 91, column: 10, scope: !3434, inlinedAt: !3448)
!3450 = !DILocation(line: 0, scope: !3129, inlinedAt: !3451)
!3451 = distinct !DILocation(line: 302, column: 10, scope: !3428)
!3452 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3451)
!3453 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3451)
!3454 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3451)
!3455 = !DILocation(line: 302, column: 3, scope: !3428)
!3456 = distinct !DISubprogram(name: "xmemdup", scope: !742, file: !742, line: 310, type: !3457, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!110, !1021, !112}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "p", arg: 1, scope: !3456, file: !742, line: 310, type: !1021)
!3461 = !DILocalVariable(name: "s", arg: 2, scope: !3456, file: !742, line: 310, type: !112)
!3462 = !DILocation(line: 0, scope: !3456)
!3463 = !DILocation(line: 0, scope: !3148, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 312, column: 18, scope: !3456)
!3465 = !DILocation(line: 49, column: 25, scope: !3148, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3129, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 49, column: 10, scope: !3148, inlinedAt: !3464)
!3468 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3467)
!3471 = !DILocalVariable(name: "__dest", arg: 1, scope: !3472, file: !1603, line: 26, type: !3475)
!3472 = distinct !DISubprogram(name: "memcpy", scope: !1603, file: !1603, line: 26, type: !3473, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3476)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!110, !3475, !1020, !112}
!3475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!3476 = !{!3471, !3477, !3478}
!3477 = !DILocalVariable(name: "__src", arg: 2, scope: !3472, file: !1603, line: 26, type: !1020)
!3478 = !DILocalVariable(name: "__len", arg: 3, scope: !3472, file: !1603, line: 26, type: !112)
!3479 = !DILocation(line: 0, scope: !3472, inlinedAt: !3480)
!3480 = distinct !DILocation(line: 312, column: 10, scope: !3456)
!3481 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3480)
!3482 = !DILocation(line: 312, column: 3, scope: !3456)
!3483 = distinct !DISubprogram(name: "ximemdup", scope: !742, file: !742, line: 316, type: !3484, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!110, !1021, !761}
!3486 = !{!3487, !3488}
!3487 = !DILocalVariable(name: "p", arg: 1, scope: !3483, file: !742, line: 316, type: !1021)
!3488 = !DILocalVariable(name: "s", arg: 2, scope: !3483, file: !742, line: 316, type: !761)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 0, scope: !3162, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 318, column: 18, scope: !3483)
!3492 = !DILocation(line: 0, scope: !3169, inlinedAt: !3493)
!3493 = distinct !DILocation(line: 55, column: 25, scope: !3162, inlinedAt: !3491)
!3494 = !DILocation(line: 57, column: 26, scope: !3169, inlinedAt: !3493)
!3495 = !DILocation(line: 0, scope: !3129, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 55, column: 10, scope: !3162, inlinedAt: !3491)
!3497 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3496)
!3498 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3496)
!3499 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3496)
!3500 = !DILocation(line: 0, scope: !3472, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 318, column: 10, scope: !3483)
!3502 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3501)
!3503 = !DILocation(line: 318, column: 3, scope: !3483)
!3504 = distinct !DISubprogram(name: "ximemdup0", scope: !742, file: !742, line: 325, type: !3505, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!109, !1021, !761}
!3507 = !{!3508, !3509, !3510}
!3508 = !DILocalVariable(name: "p", arg: 1, scope: !3504, file: !742, line: 325, type: !1021)
!3509 = !DILocalVariable(name: "s", arg: 2, scope: !3504, file: !742, line: 325, type: !761)
!3510 = !DILocalVariable(name: "result", scope: !3504, file: !742, line: 327, type: !109)
!3511 = !DILocation(line: 0, scope: !3504)
!3512 = !DILocation(line: 327, column: 30, scope: !3504)
!3513 = !DILocation(line: 0, scope: !3162, inlinedAt: !3514)
!3514 = distinct !DILocation(line: 327, column: 18, scope: !3504)
!3515 = !DILocation(line: 0, scope: !3169, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 55, column: 25, scope: !3162, inlinedAt: !3514)
!3517 = !DILocation(line: 57, column: 26, scope: !3169, inlinedAt: !3516)
!3518 = !DILocation(line: 0, scope: !3129, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 55, column: 10, scope: !3162, inlinedAt: !3514)
!3520 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3519)
!3521 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3519)
!3522 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3519)
!3523 = !DILocation(line: 328, column: 3, scope: !3504)
!3524 = !DILocation(line: 328, column: 13, scope: !3504)
!3525 = !DILocation(line: 0, scope: !3472, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 329, column: 10, scope: !3504)
!3527 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3526)
!3528 = !DILocation(line: 329, column: 3, scope: !3504)
!3529 = distinct !DISubprogram(name: "xstrdup", scope: !742, file: !742, line: 335, type: !999, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3530)
!3530 = !{!3531}
!3531 = !DILocalVariable(name: "string", arg: 1, scope: !3529, file: !742, line: 335, type: !115)
!3532 = !DILocation(line: 0, scope: !3529)
!3533 = !DILocation(line: 337, column: 27, scope: !3529)
!3534 = !DILocation(line: 337, column: 43, scope: !3529)
!3535 = !DILocation(line: 0, scope: !3456, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 337, column: 10, scope: !3529)
!3537 = !DILocation(line: 0, scope: !3148, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 312, column: 18, scope: !3456, inlinedAt: !3536)
!3539 = !DILocation(line: 49, column: 25, scope: !3148, inlinedAt: !3538)
!3540 = !DILocation(line: 0, scope: !3129, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 49, column: 10, scope: !3148, inlinedAt: !3538)
!3542 = !DILocation(line: 39, column: 8, scope: !3136, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3129, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3136, inlinedAt: !3541)
!3545 = !DILocation(line: 0, scope: !3472, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 312, column: 10, scope: !3456, inlinedAt: !3536)
!3547 = !DILocation(line: 29, column: 10, scope: !3472, inlinedAt: !3546)
!3548 = !DILocation(line: 337, column: 3, scope: !3529)
!3549 = distinct !DISubprogram(name: "xalloc_die", scope: !704, file: !704, line: 32, type: !447, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !776, retainedNodes: !3550)
!3550 = !{!3551}
!3551 = !DILocalVariable(name: "__errstatus", scope: !3552, file: !704, line: 34, type: !3553)
!3552 = distinct !DILexicalBlock(scope: !3549, file: !704, line: 34, column: 3)
!3553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3554 = !DILocation(line: 34, column: 3, scope: !3552)
!3555 = !DILocation(line: 0, scope: !3552)
!3556 = !DILocation(line: 40, column: 3, scope: !3549)
!3557 = distinct !DISubprogram(name: "close_stream", scope: !779, file: !779, line: 55, type: !3558, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3594)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!68, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3562)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3562, file: !173, line: 51, baseType: !68, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3562, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3562, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3562, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3562, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3562, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3562, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3562, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3562, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3562, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3562, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3562, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3562, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3562, file: !173, line: 70, baseType: !3578, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3562, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3562, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3562, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3562, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3562, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3562, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3562, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3562, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3562, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3562, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3562, file: !173, line: 93, baseType: !3578, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3562, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3562, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3562, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3562, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3594 = !{!3595, !3596, !3598, !3599}
!3595 = !DILocalVariable(name: "stream", arg: 1, scope: !3557, file: !779, line: 55, type: !3560)
!3596 = !DILocalVariable(name: "some_pending", scope: !3557, file: !779, line: 57, type: !3597)
!3597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3598 = !DILocalVariable(name: "prev_fail", scope: !3557, file: !779, line: 58, type: !3597)
!3599 = !DILocalVariable(name: "fclose_fail", scope: !3557, file: !779, line: 59, type: !3597)
!3600 = !DILocation(line: 0, scope: !3557)
!3601 = !DILocation(line: 57, column: 30, scope: !3557)
!3602 = !DILocalVariable(name: "__stream", arg: 1, scope: !3603, file: !1337, line: 135, type: !3560)
!3603 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1337, file: !1337, line: 135, type: !3558, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !778, retainedNodes: !3604)
!3604 = !{!3602}
!3605 = !DILocation(line: 0, scope: !3603, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 58, column: 27, scope: !3557)
!3607 = !DILocation(line: 137, column: 10, scope: !3603, inlinedAt: !3606)
!3608 = !{!1346, !877, i64 0}
!3609 = !DILocation(line: 58, column: 43, scope: !3557)
!3610 = !DILocation(line: 59, column: 29, scope: !3557)
!3611 = !DILocation(line: 59, column: 45, scope: !3557)
!3612 = !DILocation(line: 69, column: 17, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3557, file: !779, line: 69, column: 7)
!3614 = !DILocation(line: 57, column: 50, scope: !3557)
!3615 = !DILocation(line: 69, column: 33, scope: !3613)
!3616 = !DILocation(line: 69, column: 53, scope: !3613)
!3617 = !DILocation(line: 69, column: 59, scope: !3613)
!3618 = !DILocation(line: 69, column: 7, scope: !3557)
!3619 = !DILocation(line: 71, column: 11, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3613, file: !779, line: 70, column: 5)
!3621 = !DILocation(line: 72, column: 9, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3620, file: !779, line: 71, column: 11)
!3623 = !DILocation(line: 72, column: 15, scope: !3622)
!3624 = !DILocation(line: 77, column: 1, scope: !3557)
!3625 = !DISubprogram(name: "__fpending", scope: !3626, file: !3626, line: 75, type: !3627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3626 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!112, !3560}
!3629 = distinct !DISubprogram(name: "rpl_fclose", scope: !781, file: !781, line: 58, type: !3630, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !780, retainedNodes: !3666)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!68, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3634, file: !173, line: 51, baseType: !68, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3634, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3634, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3634, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3634, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3634, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3634, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3634, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3634, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3634, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3634, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3634, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3634, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3634, file: !173, line: 70, baseType: !3650, size: 64, offset: 832)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3634, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3634, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3634, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3634, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3634, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3634, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3634, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3634, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3634, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3634, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3634, file: !173, line: 93, baseType: !3650, size: 64, offset: 1344)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3634, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3634, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3634, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3634, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3666 = !{!3667, !3668, !3669, !3670}
!3667 = !DILocalVariable(name: "fp", arg: 1, scope: !3629, file: !781, line: 58, type: !3632)
!3668 = !DILocalVariable(name: "saved_errno", scope: !3629, file: !781, line: 60, type: !68)
!3669 = !DILocalVariable(name: "fd", scope: !3629, file: !781, line: 63, type: !68)
!3670 = !DILocalVariable(name: "result", scope: !3629, file: !781, line: 74, type: !68)
!3671 = !DILocation(line: 0, scope: !3629)
!3672 = !DILocation(line: 63, column: 12, scope: !3629)
!3673 = !DILocation(line: 64, column: 10, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3629, file: !781, line: 64, column: 7)
!3675 = !DILocation(line: 64, column: 7, scope: !3629)
!3676 = !DILocation(line: 65, column: 12, scope: !3674)
!3677 = !DILocation(line: 65, column: 5, scope: !3674)
!3678 = !DILocation(line: 70, column: 9, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3629, file: !781, line: 70, column: 7)
!3680 = !DILocation(line: 70, column: 23, scope: !3679)
!3681 = !DILocation(line: 70, column: 33, scope: !3679)
!3682 = !DILocation(line: 70, column: 26, scope: !3679)
!3683 = !DILocation(line: 70, column: 59, scope: !3679)
!3684 = !DILocation(line: 71, column: 7, scope: !3679)
!3685 = !DILocation(line: 71, column: 10, scope: !3679)
!3686 = !DILocation(line: 70, column: 7, scope: !3629)
!3687 = !DILocation(line: 100, column: 12, scope: !3629)
!3688 = !DILocation(line: 105, column: 7, scope: !3629)
!3689 = !DILocation(line: 72, column: 19, scope: !3679)
!3690 = !DILocation(line: 105, column: 19, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3629, file: !781, line: 105, column: 7)
!3692 = !DILocation(line: 107, column: 13, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3691, file: !781, line: 106, column: 5)
!3694 = !DILocation(line: 109, column: 5, scope: !3693)
!3695 = !DILocation(line: 112, column: 1, scope: !3629)
!3696 = !DISubprogram(name: "fileno", scope: !407, file: !407, line: 809, type: !3630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3697 = !DISubprogram(name: "fclose", scope: !407, file: !407, line: 178, type: !3630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3698 = !DISubprogram(name: "__freading", scope: !3626, file: !3626, line: 51, type: !3630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3699 = !DISubprogram(name: "lseek", scope: !1152, file: !1152, line: 339, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!195, !68, !195, !68}
!3702 = distinct !DISubprogram(name: "rpl_fflush", scope: !783, file: !783, line: 130, type: !3703, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3739)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!68, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3707)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3707, file: !173, line: 51, baseType: !68, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3707, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3707, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3707, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3707, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3707, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3707, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3707, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3707, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3707, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3707, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3707, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3707, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3707, file: !173, line: 70, baseType: !3723, size: 64, offset: 832)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3707, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3707, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3707, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3707, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3707, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3707, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3707, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3707, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3707, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3707, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3707, file: !173, line: 93, baseType: !3723, size: 64, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3707, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3707, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3707, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3707, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3739 = !{!3740}
!3740 = !DILocalVariable(name: "stream", arg: 1, scope: !3702, file: !783, line: 130, type: !3705)
!3741 = !DILocation(line: 0, scope: !3702)
!3742 = !DILocation(line: 151, column: 14, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3702, file: !783, line: 151, column: 7)
!3744 = !DILocation(line: 151, column: 22, scope: !3743)
!3745 = !DILocation(line: 151, column: 27, scope: !3743)
!3746 = !DILocation(line: 151, column: 7, scope: !3702)
!3747 = !DILocation(line: 152, column: 12, scope: !3743)
!3748 = !DILocation(line: 152, column: 5, scope: !3743)
!3749 = !DILocalVariable(name: "fp", arg: 1, scope: !3750, file: !783, line: 42, type: !3705)
!3750 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !783, file: !783, line: 42, type: !3751, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !782, retainedNodes: !3753)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3705}
!3753 = !{!3749}
!3754 = !DILocation(line: 0, scope: !3750, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 157, column: 3, scope: !3702)
!3756 = !DILocation(line: 44, column: 12, scope: !3757, inlinedAt: !3755)
!3757 = distinct !DILexicalBlock(scope: !3750, file: !783, line: 44, column: 7)
!3758 = !DILocation(line: 44, column: 19, scope: !3757, inlinedAt: !3755)
!3759 = !DILocation(line: 44, column: 7, scope: !3750, inlinedAt: !3755)
!3760 = !DILocation(line: 46, column: 5, scope: !3757, inlinedAt: !3755)
!3761 = !DILocation(line: 159, column: 10, scope: !3702)
!3762 = !DILocation(line: 159, column: 3, scope: !3702)
!3763 = !DILocation(line: 236, column: 1, scope: !3702)
!3764 = !DISubprogram(name: "fflush", scope: !407, file: !407, line: 230, type: !3703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3765 = distinct !DISubprogram(name: "rpl_fseeko", scope: !785, file: !785, line: 28, type: !3766, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !784, retainedNodes: !3803)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!68, !3768, !3802, !68}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3770)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3771)
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3770, file: !173, line: 51, baseType: !68, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3770, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3770, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3770, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3770, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3770, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3770, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3770, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3770, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3770, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3770, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3770, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3770, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3770, file: !173, line: 70, baseType: !3786, size: 64, offset: 832)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3770, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3770, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3770, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3770, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3770, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3770, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3770, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3770, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3770, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3770, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3770, file: !173, line: 93, baseType: !3786, size: 64, offset: 1344)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3770, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3770, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3770, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3770, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3802 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !407, line: 63, baseType: !195)
!3803 = !{!3804, !3805, !3806, !3807}
!3804 = !DILocalVariable(name: "fp", arg: 1, scope: !3765, file: !785, line: 28, type: !3768)
!3805 = !DILocalVariable(name: "offset", arg: 2, scope: !3765, file: !785, line: 28, type: !3802)
!3806 = !DILocalVariable(name: "whence", arg: 3, scope: !3765, file: !785, line: 28, type: !68)
!3807 = !DILocalVariable(name: "pos", scope: !3808, file: !785, line: 123, type: !3802)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !785, line: 119, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3765, file: !785, line: 55, column: 7)
!3810 = !DILocation(line: 0, scope: !3765)
!3811 = !DILocation(line: 55, column: 12, scope: !3809)
!3812 = !{!1346, !815, i64 16}
!3813 = !DILocation(line: 55, column: 33, scope: !3809)
!3814 = !{!1346, !815, i64 8}
!3815 = !DILocation(line: 55, column: 25, scope: !3809)
!3816 = !DILocation(line: 56, column: 7, scope: !3809)
!3817 = !DILocation(line: 56, column: 15, scope: !3809)
!3818 = !DILocation(line: 56, column: 37, scope: !3809)
!3819 = !{!1346, !815, i64 32}
!3820 = !DILocation(line: 56, column: 29, scope: !3809)
!3821 = !DILocation(line: 57, column: 7, scope: !3809)
!3822 = !DILocation(line: 57, column: 15, scope: !3809)
!3823 = !{!1346, !815, i64 72}
!3824 = !DILocation(line: 57, column: 29, scope: !3809)
!3825 = !DILocation(line: 55, column: 7, scope: !3765)
!3826 = !DILocation(line: 123, column: 26, scope: !3808)
!3827 = !DILocation(line: 123, column: 19, scope: !3808)
!3828 = !DILocation(line: 0, scope: !3808)
!3829 = !DILocation(line: 124, column: 15, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3808, file: !785, line: 124, column: 11)
!3831 = !DILocation(line: 124, column: 11, scope: !3808)
!3832 = !DILocation(line: 135, column: 19, scope: !3808)
!3833 = !DILocation(line: 136, column: 12, scope: !3808)
!3834 = !DILocation(line: 136, column: 20, scope: !3808)
!3835 = !{!1346, !1347, i64 144}
!3836 = !DILocation(line: 167, column: 7, scope: !3808)
!3837 = !DILocation(line: 169, column: 10, scope: !3765)
!3838 = !DILocation(line: 169, column: 3, scope: !3765)
!3839 = !DILocation(line: 170, column: 1, scope: !3765)
!3840 = !DISubprogram(name: "fseeko", scope: !407, file: !407, line: 736, type: !3841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!68, !3768, !195, !68}
!3843 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !711, file: !711, line: 100, type: !3844, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3847)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!112, !1621, !115, !112, !3846}
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!3847 = !{!3848, !3849, !3850, !3851, !3852}
!3848 = !DILocalVariable(name: "pwc", arg: 1, scope: !3843, file: !711, line: 100, type: !1621)
!3849 = !DILocalVariable(name: "s", arg: 2, scope: !3843, file: !711, line: 100, type: !115)
!3850 = !DILocalVariable(name: "n", arg: 3, scope: !3843, file: !711, line: 100, type: !112)
!3851 = !DILocalVariable(name: "ps", arg: 4, scope: !3843, file: !711, line: 100, type: !3846)
!3852 = !DILocalVariable(name: "ret", scope: !3843, file: !711, line: 130, type: !112)
!3853 = !DILocation(line: 0, scope: !3843)
!3854 = !DILocation(line: 105, column: 9, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3843, file: !711, line: 105, column: 7)
!3856 = !DILocation(line: 105, column: 7, scope: !3843)
!3857 = !DILocation(line: 117, column: 10, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3843, file: !711, line: 117, column: 7)
!3859 = !DILocation(line: 117, column: 7, scope: !3843)
!3860 = !DILocation(line: 130, column: 16, scope: !3843)
!3861 = !DILocation(line: 135, column: 11, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3843, file: !711, line: 135, column: 7)
!3863 = !DILocation(line: 135, column: 25, scope: !3862)
!3864 = !DILocation(line: 135, column: 30, scope: !3862)
!3865 = !DILocation(line: 135, column: 7, scope: !3843)
!3866 = !DILocalVariable(name: "ps", arg: 1, scope: !3867, file: !1594, line: 1135, type: !3846)
!3867 = distinct !DISubprogram(name: "mbszero", scope: !1594, file: !1594, line: 1135, type: !3868, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3870)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3846}
!3870 = !{!3866}
!3871 = !DILocation(line: 0, scope: !3867, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 137, column: 5, scope: !3862)
!3873 = !DILocalVariable(name: "__dest", arg: 1, scope: !3874, file: !1603, line: 57, type: !110)
!3874 = distinct !DISubprogram(name: "memset", scope: !1603, file: !1603, line: 57, type: !1604, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3875)
!3875 = !{!3873, !3876, !3877}
!3876 = !DILocalVariable(name: "__ch", arg: 2, scope: !3874, file: !1603, line: 57, type: !68)
!3877 = !DILocalVariable(name: "__len", arg: 3, scope: !3874, file: !1603, line: 57, type: !112)
!3878 = !DILocation(line: 0, scope: !3874, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 1137, column: 3, scope: !3867, inlinedAt: !3872)
!3880 = !DILocation(line: 59, column: 10, scope: !3874, inlinedAt: !3879)
!3881 = !DILocation(line: 137, column: 5, scope: !3862)
!3882 = !DILocation(line: 138, column: 11, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3843, file: !711, line: 138, column: 7)
!3884 = !DILocation(line: 138, column: 7, scope: !3843)
!3885 = !DILocation(line: 139, column: 5, scope: !3883)
!3886 = !DILocation(line: 143, column: 26, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3843, file: !711, line: 143, column: 7)
!3888 = !DILocation(line: 143, column: 41, scope: !3887)
!3889 = !DILocation(line: 143, column: 7, scope: !3843)
!3890 = !DILocation(line: 145, column: 15, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !711, line: 145, column: 11)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !711, line: 144, column: 5)
!3893 = !DILocation(line: 145, column: 11, scope: !3892)
!3894 = !DILocation(line: 146, column: 32, scope: !3891)
!3895 = !DILocation(line: 146, column: 16, scope: !3891)
!3896 = !DILocation(line: 146, column: 14, scope: !3891)
!3897 = !DILocation(line: 146, column: 9, scope: !3891)
!3898 = !DILocation(line: 286, column: 1, scope: !3843)
!3899 = !DISubprogram(name: "mbsinit", scope: !3900, file: !3900, line: 293, type: !3901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3900 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!68, !3903}
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!3905 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !787, file: !787, line: 27, type: !3113, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3906)
!3906 = !{!3907, !3908, !3909, !3910}
!3907 = !DILocalVariable(name: "ptr", arg: 1, scope: !3905, file: !787, line: 27, type: !110)
!3908 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3905, file: !787, line: 27, type: !112)
!3909 = !DILocalVariable(name: "size", arg: 3, scope: !3905, file: !787, line: 27, type: !112)
!3910 = !DILocalVariable(name: "nbytes", scope: !3905, file: !787, line: 29, type: !112)
!3911 = !DILocation(line: 0, scope: !3905)
!3912 = !DILocation(line: 30, column: 7, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3905, file: !787, line: 30, column: 7)
!3914 = !DILocation(line: 30, column: 7, scope: !3905)
!3915 = !DILocation(line: 32, column: 7, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3913, file: !787, line: 31, column: 5)
!3917 = !DILocation(line: 32, column: 13, scope: !3916)
!3918 = !DILocation(line: 33, column: 7, scope: !3916)
!3919 = !DILocalVariable(name: "ptr", arg: 1, scope: !3920, file: !3205, line: 2057, type: !110)
!3920 = distinct !DISubprogram(name: "rpl_realloc", scope: !3205, file: !3205, line: 2057, type: !3197, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !786, retainedNodes: !3921)
!3921 = !{!3919, !3922}
!3922 = !DILocalVariable(name: "size", arg: 2, scope: !3920, file: !3205, line: 2057, type: !112)
!3923 = !DILocation(line: 0, scope: !3920, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 37, column: 10, scope: !3905)
!3925 = !DILocation(line: 2059, column: 24, scope: !3920, inlinedAt: !3924)
!3926 = !DILocation(line: 2059, column: 10, scope: !3920, inlinedAt: !3924)
!3927 = !DILocation(line: 37, column: 3, scope: !3905)
!3928 = !DILocation(line: 38, column: 1, scope: !3905)
!3929 = distinct !DISubprogram(name: "hard_locale", scope: !729, file: !729, line: 28, type: !3930, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!156, !68}
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "category", arg: 1, scope: !3929, file: !729, line: 28, type: !68)
!3934 = !DILocalVariable(name: "locale", scope: !3929, file: !729, line: 30, type: !3935)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3936)
!3936 = !{!3937}
!3937 = !DISubrange(count: 257)
!3938 = distinct !DIAssignID()
!3939 = !DILocation(line: 0, scope: !3929)
!3940 = !DILocation(line: 30, column: 3, scope: !3929)
!3941 = !DILocation(line: 32, column: 7, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3929, file: !729, line: 32, column: 7)
!3943 = !DILocation(line: 32, column: 7, scope: !3929)
!3944 = !DILocalVariable(name: "__s1", arg: 1, scope: !3945, file: !889, line: 1359, type: !115)
!3945 = distinct !DISubprogram(name: "streq", scope: !889, file: !889, line: 1359, type: !890, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3946)
!3946 = !{!3944, !3947}
!3947 = !DILocalVariable(name: "__s2", arg: 2, scope: !3945, file: !889, line: 1359, type: !115)
!3948 = !DILocation(line: 0, scope: !3945, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 35, column: 9, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3929, file: !729, line: 35, column: 7)
!3951 = !DILocation(line: 1361, column: 11, scope: !3945, inlinedAt: !3949)
!3952 = !DILocation(line: 1361, column: 10, scope: !3945, inlinedAt: !3949)
!3953 = !DILocation(line: 35, column: 29, scope: !3950)
!3954 = !DILocation(line: 0, scope: !3945, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 35, column: 32, scope: !3950)
!3956 = !DILocation(line: 1361, column: 11, scope: !3945, inlinedAt: !3955)
!3957 = !DILocation(line: 1361, column: 10, scope: !3945, inlinedAt: !3955)
!3958 = !DILocation(line: 35, column: 7, scope: !3929)
!3959 = !DILocation(line: 46, column: 3, scope: !3929)
!3960 = !DILocation(line: 47, column: 1, scope: !3929)
!3961 = distinct !DISubprogram(name: "setlocale_null_r", scope: !791, file: !791, line: 154, type: !3962, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!68, !68, !109, !112}
!3964 = !{!3965, !3966, !3967}
!3965 = !DILocalVariable(name: "category", arg: 1, scope: !3961, file: !791, line: 154, type: !68)
!3966 = !DILocalVariable(name: "buf", arg: 2, scope: !3961, file: !791, line: 154, type: !109)
!3967 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3961, file: !791, line: 154, type: !112)
!3968 = !DILocation(line: 0, scope: !3961)
!3969 = !DILocation(line: 159, column: 10, scope: !3961)
!3970 = !DILocation(line: 159, column: 3, scope: !3961)
!3971 = distinct !DISubprogram(name: "setlocale_null", scope: !791, file: !791, line: 186, type: !3972, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !790, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!115, !68}
!3974 = !{!3975}
!3975 = !DILocalVariable(name: "category", arg: 1, scope: !3971, file: !791, line: 186, type: !68)
!3976 = !DILocation(line: 0, scope: !3971)
!3977 = !DILocation(line: 189, column: 10, scope: !3971)
!3978 = !DILocation(line: 189, column: 3, scope: !3971)
!3979 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !793, file: !793, line: 35, type: !3972, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3980)
!3980 = !{!3981, !3982}
!3981 = !DILocalVariable(name: "category", arg: 1, scope: !3979, file: !793, line: 35, type: !68)
!3982 = !DILocalVariable(name: "result", scope: !3979, file: !793, line: 37, type: !115)
!3983 = !DILocation(line: 0, scope: !3979)
!3984 = !DILocation(line: 37, column: 24, scope: !3979)
!3985 = !DILocation(line: 62, column: 3, scope: !3979)
!3986 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !793, file: !793, line: 66, type: !3962, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !3987)
!3987 = !{!3988, !3989, !3990, !3991, !3992}
!3988 = !DILocalVariable(name: "category", arg: 1, scope: !3986, file: !793, line: 66, type: !68)
!3989 = !DILocalVariable(name: "buf", arg: 2, scope: !3986, file: !793, line: 66, type: !109)
!3990 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3986, file: !793, line: 66, type: !112)
!3991 = !DILocalVariable(name: "result", scope: !3986, file: !793, line: 111, type: !115)
!3992 = !DILocalVariable(name: "length", scope: !3993, file: !793, line: 125, type: !112)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !793, line: 124, column: 5)
!3994 = distinct !DILexicalBlock(scope: !3986, file: !793, line: 113, column: 7)
!3995 = !DILocation(line: 0, scope: !3986)
!3996 = !DILocation(line: 0, scope: !3979, inlinedAt: !3997)
!3997 = distinct !DILocation(line: 111, column: 24, scope: !3986)
!3998 = !DILocation(line: 37, column: 24, scope: !3979, inlinedAt: !3997)
!3999 = !DILocation(line: 113, column: 14, scope: !3994)
!4000 = !DILocation(line: 113, column: 7, scope: !3986)
!4001 = !DILocation(line: 116, column: 19, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !4003, file: !793, line: 116, column: 11)
!4003 = distinct !DILexicalBlock(scope: !3994, file: !793, line: 114, column: 5)
!4004 = !DILocation(line: 116, column: 11, scope: !4003)
!4005 = !DILocation(line: 120, column: 16, scope: !4002)
!4006 = !DILocation(line: 120, column: 9, scope: !4002)
!4007 = !DILocation(line: 125, column: 23, scope: !3993)
!4008 = !DILocation(line: 0, scope: !3993)
!4009 = !DILocation(line: 126, column: 18, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3993, file: !793, line: 126, column: 11)
!4011 = !DILocation(line: 126, column: 11, scope: !3993)
!4012 = !DILocation(line: 128, column: 39, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4010, file: !793, line: 127, column: 9)
!4014 = !DILocalVariable(name: "__dest", arg: 1, scope: !4015, file: !1603, line: 26, type: !3475)
!4015 = distinct !DISubprogram(name: "memcpy", scope: !1603, file: !1603, line: 26, type: !3473, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !792, retainedNodes: !4016)
!4016 = !{!4014, !4017, !4018}
!4017 = !DILocalVariable(name: "__src", arg: 2, scope: !4015, file: !1603, line: 26, type: !1020)
!4018 = !DILocalVariable(name: "__len", arg: 3, scope: !4015, file: !1603, line: 26, type: !112)
!4019 = !DILocation(line: 0, scope: !4015, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 128, column: 11, scope: !4013)
!4021 = !DILocation(line: 29, column: 10, scope: !4015, inlinedAt: !4020)
!4022 = !DILocation(line: 129, column: 11, scope: !4013)
!4023 = !DILocation(line: 133, column: 23, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4025, file: !793, line: 133, column: 15)
!4025 = distinct !DILexicalBlock(scope: !4010, file: !793, line: 132, column: 9)
!4026 = !DILocation(line: 133, column: 15, scope: !4025)
!4027 = !DILocation(line: 138, column: 44, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !793, line: 134, column: 13)
!4029 = !DILocation(line: 0, scope: !4015, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 138, column: 15, scope: !4028)
!4031 = !DILocation(line: 29, column: 10, scope: !4015, inlinedAt: !4030)
!4032 = !DILocation(line: 139, column: 15, scope: !4028)
!4033 = !DILocation(line: 139, column: 32, scope: !4028)
!4034 = !DILocation(line: 140, column: 13, scope: !4028)
!4035 = !DILocation(line: 0, scope: !3994)
!4036 = !DILocation(line: 145, column: 1, scope: !3986)
