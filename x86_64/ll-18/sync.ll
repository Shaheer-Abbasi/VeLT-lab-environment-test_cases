; ModuleID = 'src/sync.bc'
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
@long_options = internal constant [5 x %struct.option] [%struct.option { ptr @.str.52, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !62
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !391
@.str.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !383
@.str.1.25 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !385
@.str.2.26 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !387
@.str.3.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !389
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !393
@stderr = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !399
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !430
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !401
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !420
@.str.1.34 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !422
@.str.2.36 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !424
@.str.3.35 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !426
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !428
@.str.4.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !432
@.str.5.30 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !434
@.str.6.31 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !439
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !444
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !462
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !468
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !470
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !472
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !503
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !506
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !508
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !510
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !512
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !514
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !516
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !518
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !520
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !522
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 16, !dbg !524
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !537
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !551
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !589
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !596
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !553
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !598
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !541
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !558
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !560
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !562
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !564
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !566
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !604
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !607
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !609
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !611
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !613
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !615
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !620
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !625
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !627
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !632
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !637
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !642
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !644
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !646
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !651
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !656
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !661
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !666
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !668
@.str.19.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !670
@.str.20.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !672
@.str.21.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !674
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !676
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !678
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !683
@exit_failure = dso_local global i32 1, align 4, !dbg !691
@.str.120 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !697
@.str.1.118 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !700
@.str.2.119 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !702
@.str.131 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !704
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !707
@.str.1.136 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !722

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !797 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !802
  %2 = icmp eq i32 %0, 0, !dbg !803
  br i1 %2, label %8, label %3, !dbg !805

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !806, !tbaa !808
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !806
  %6 = load ptr, ptr @program_name, align 8, !dbg !806, !tbaa !808
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !806
  br label %33, !dbg !806

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !812
  %10 = load ptr, ptr @program_name, align 8, !dbg !812, !tbaa !808
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !812
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !814
  %13 = load ptr, ptr @stdout, align 8, !dbg !814, !tbaa !808
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !814
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !815
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !815
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !816
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !816
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !817
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !817
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !818
  tail call fastcc void @oputs_(ptr noundef %18), !dbg !818
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata !838, metadata !832, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr poison, metadata !831, metadata !DIExpression()), !dbg !836
  tail call void @emit_bug_reporting_address() #38, !dbg !839
  %19 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !840
  call void @llvm.dbg.value(metadata ptr %19, metadata !834, metadata !DIExpression()), !dbg !836
  %20 = icmp eq ptr %19, null, !dbg !841
  br i1 %20, label %28, label %21, !dbg !843

21:                                               ; preds = %8
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(4) @.str.47, i64 noundef 3) #39, !dbg !844
  %23 = icmp eq i32 %22, 0, !dbg !844
  br i1 %23, label %28, label %24, !dbg !845

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !846
  %26 = load ptr, ptr @stdout, align 8, !dbg !846, !tbaa !808
  %27 = tail call i32 @fputs_unlocked(ptr noundef %25, ptr noundef %26), !dbg !846
  br label %28, !dbg !848

28:                                               ; preds = %8, %21, %24
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !835, metadata !DIExpression()), !dbg !836
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !849
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3) #38, !dbg !849
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !850
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.51) #38, !dbg !850
  br label %33

33:                                               ; preds = %28, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !851
  unreachable, !dbg !851
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !852 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !856 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !862 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !865 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !869
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !869
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !870, !tbaa !871
  %3 = icmp eq i32 %2, -1, !dbg !873
  br i1 %3, label %4, label %16, !dbg !874

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #38, !dbg !875
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !876
  %6 = icmp eq ptr %5, null, !dbg !877
  br i1 %6, label %14, label %7, !dbg !878

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !879, !tbaa !880
  %9 = icmp eq i8 %8, 0, !dbg !879
  br i1 %9, label %14, label %10, !dbg !881

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !882, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !888, metadata !DIExpression()), !dbg !889
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.18) #39, !dbg !891
  %12 = icmp eq i32 %11, 0, !dbg !892
  %13 = zext i1 %12 to i32, !dbg !881
  br label %14, !dbg !881

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !893, !tbaa !871
  br label %16, !dbg !894

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !895
  %18 = icmp eq i32 %17, 0, !dbg !895
  br i1 %18, label %22, label %19, !dbg !897

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !898, !tbaa !808
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !898
  br label %124, !dbg !900

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !869
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.19) #39, !dbg !901
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !902
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !869
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !903
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !158, metadata !DIExpression()), !dbg !869
  %26 = icmp eq ptr %25, null, !dbg !904
  br i1 %26, label %54, label %27, !dbg !905

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !906
  br i1 %28, label %54, label %29, !dbg !907

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !159, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata i64 0, metadata !163, metadata !DIExpression()), !dbg !908
  %30 = icmp ult ptr %24, %25, !dbg !909
  br i1 %30, label %31, label %54, !dbg !910

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !869
  %33 = load ptr, ptr %32, align 8, !tbaa !808
  br label %34, !dbg !910

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !159, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !163, metadata !DIExpression()), !dbg !908
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !159, metadata !DIExpression()), !dbg !908
  %38 = load i8, ptr %35, align 1, !dbg !911, !tbaa !880
  %39 = sext i8 %38 to i64, !dbg !911
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !911
  %41 = load i16, ptr %40, align 2, !dbg !911, !tbaa !912
  %42 = freeze i16 %41, !dbg !914
  %43 = lshr i16 %42, 13, !dbg !914
  %44 = and i16 %43, 1, !dbg !914
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !915
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !163, metadata !DIExpression()), !dbg !908
  %47 = icmp ult ptr %37, %25, !dbg !909
  %48 = icmp ult i64 %46, 2, !dbg !916
  %49 = select i1 %47, i1 %48, i1 false, !dbg !916
  br i1 %49, label %34, label %50, !dbg !910, !llvm.loop !917

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !919
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !921
  %53 = zext i1 %51 to i8, !dbg !921
  br label %54, !dbg !921

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !869
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !869
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !155, metadata !DIExpression()), !dbg !869
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !158, metadata !DIExpression()), !dbg !869
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.20) #39, !dbg !922
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !164, metadata !DIExpression()), !dbg !869
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !923
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !165, metadata !DIExpression()), !dbg !869
  br label %59, !dbg !924

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !869
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !869
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !155, metadata !DIExpression()), !dbg !869
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !165, metadata !DIExpression()), !dbg !869
  %62 = load i8, ptr %60, align 1, !dbg !925, !tbaa !880
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !926

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !927
  %65 = load i8, ptr %64, align 1, !dbg !930, !tbaa !880
  %66 = icmp eq i8 %65, 45, !dbg !931
  %67 = select i1 %66, i8 0, i8 %61, !dbg !932
  br label %68, !dbg !932

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !869
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !155, metadata !DIExpression()), !dbg !869
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !933
  %71 = load ptr, ptr %70, align 8, !dbg !933, !tbaa !808
  %72 = sext i8 %62 to i64, !dbg !933
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !933
  %74 = load i16, ptr %73, align 2, !dbg !933, !tbaa !912
  %75 = and i16 %74, 8192, !dbg !933
  %76 = icmp eq i16 %75, 0, !dbg !933
  br i1 %76, label %92, label %77, !dbg !935

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !936
  br i1 %78, label %94, label %79, !dbg !939

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !940
  %81 = load i8, ptr %80, align 1, !dbg !940, !tbaa !880
  %82 = sext i8 %81 to i64, !dbg !940
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !940
  %84 = load i16, ptr %83, align 2, !dbg !940, !tbaa !912
  %85 = and i16 %84, 8192, !dbg !940
  %86 = icmp eq i16 %85, 0, !dbg !940
  br i1 %86, label %87, label %94, !dbg !941

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !942
  %89 = icmp ne i8 %88, 0, !dbg !942
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !944
  br i1 %91, label %92, label %94, !dbg !944

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !945
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !165, metadata !DIExpression()), !dbg !869
  br label %59, !dbg !924, !llvm.loop !946

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !948
  %96 = load ptr, ptr @stdout, align 8, !dbg !948, !tbaa !808
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !948
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !882, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata !838, metadata !888, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !222, metadata !DIExpression()), !dbg !869
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #39, !dbg !969
  %99 = icmp eq i32 %98, 0, !dbg !969
  br i1 %99, label %103, label %100, !dbg !971

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.35, i64 noundef 9) #39, !dbg !972
  %102 = icmp eq i32 %101, 0, !dbg !972
  br i1 %102, label %103, label %106, !dbg !973

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !974
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !974
  br label %109, !dbg !976

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !977
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !977
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !979, !tbaa !808
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !979
  %112 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !808
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %112), !dbg !980
  %114 = ptrtoint ptr %60 to i64, !dbg !981
  %115 = sub i64 %114, %95, !dbg !981
  %116 = load ptr, ptr @stdout, align 8, !dbg !981, !tbaa !808
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !981
  %118 = load ptr, ptr @stdout, align 8, !dbg !982, !tbaa !808
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !982
  %120 = load ptr, ptr @stdout, align 8, !dbg !983, !tbaa !808
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %120), !dbg !983
  %122 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !808
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !984
  br label %124, !dbg !985

124:                                              ; preds = %109, %19
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1026, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1027, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1028, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1029, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1030, metadata !DIExpression()), !dbg !1034
  %3 = load ptr, ptr %1, align 8, !dbg !1035, !tbaa !808
  tail call void @set_program_name(ptr noundef %3) #38, !dbg !1036
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1037
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1038
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1039
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1040
  br label %8, !dbg !1041

8:                                                ; preds = %14, %2
  %9 = phi i1 [ false, %14 ], [ true, %2 ]
  %10 = phi i8 [ %15, %14 ], [ 0, %2 ]
  tail call void @llvm.dbg.value(metadata i8 %10, metadata !1028, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1034
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1031, metadata !DIExpression()), !dbg !1034
  switch i32 %11, label %22 [
    i32 -1, label %23
    i32 100, label %12
    i32 102, label %14
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !1041

12:                                               ; preds = %8, %12
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1028, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1029, metadata !DIExpression()), !dbg !1034
  %13 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @long_options, ptr noundef null) #38, !dbg !1042
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1031, metadata !DIExpression()), !dbg !1034
  switch i32 %13, label %22 [
    i32 -1, label %25
    i32 100, label %12
    i32 102, label %14
    i32 -130, label %16
    i32 -131, label %17
  ], !dbg !1041, !llvm.loop !1043

14:                                               ; preds = %12, %8
  %15 = phi i8 [ %10, %8 ], [ 1, %12 ], !dbg !1046
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1029, metadata !DIExpression()), !dbg !1034
  br label %8, !dbg !1047, !llvm.loop !1050

16:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 0) #42, !dbg !1051
  unreachable, !dbg !1051

17:                                               ; preds = %8, %12
  %18 = load ptr, ptr @stdout, align 8, !dbg !1052, !tbaa !808
  %19 = load ptr, ptr @Version, align 8, !dbg !1052, !tbaa !808
  %20 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #38, !dbg !1052
  %21 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1052
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef null) #38, !dbg !1052
  tail call void @exit(i32 noundef 0) #40, !dbg !1052
  unreachable, !dbg !1052

22:                                               ; preds = %8, %12
  tail call void @usage(i32 noundef 1) #42, !dbg !1053
  unreachable, !dbg !1053

23:                                               ; preds = %8
  %24 = icmp eq i8 %10, 0, !dbg !1054
  br label %25, !dbg !1056

25:                                               ; preds = %12, %23
  %26 = phi i1 [ %24, %23 ], [ false, %12 ], !dbg !1046
  %27 = load i32, ptr @optind, align 4, !dbg !1056, !tbaa !871
  %28 = icmp slt i32 %27, %0, !dbg !1057
  tail call void @llvm.dbg.value(metadata i1 %28, metadata !1032, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1034
  %29 = or i1 %26, %9, !dbg !1058
  br i1 %29, label %32, label %30, !dbg !1058

30:                                               ; preds = %25
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1059
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %31) #38, !dbg !1059
  unreachable, !dbg !1059

32:                                               ; preds = %25
  %33 = or i1 %26, %28, !dbg !1060
  br i1 %33, label %36, label %34, !dbg !1060

34:                                               ; preds = %32
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %35) #38, !dbg !1062
  unreachable, !dbg !1062

36:                                               ; preds = %32
  %37 = xor i1 %26, true, !dbg !1063
  %38 = zext i1 %37 to i32, !dbg !1063
  %39 = select i1 %9, i32 %38, i32 2, !dbg !1063
  %40 = select i1 %28, i32 %39, i32 3, !dbg !1063
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1033, metadata !DIExpression()), !dbg !1034
  br i1 %28, label %42, label %41, !dbg !1065

41:                                               ; preds = %36
  tail call void @sync() #38, !dbg !1066
  br label %104, !dbg !1066

42:                                               ; preds = %36, %95
  %43 = phi i32 [ %99, %95 ], [ %27, %36 ]
  %44 = phi i1 [ %97, %95 ], [ true, %36 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1034
  %45 = sext i32 %43 to i64, !dbg !1068
  %46 = getelementptr inbounds ptr, ptr %1, i64 %45, !dbg !1068
  %47 = load ptr, ptr %46, align 8, !dbg !1068, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %40, metadata !1072, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr %47, metadata !1077, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 2048, metadata !1078, metadata !DIExpression()), !dbg !1088
  %48 = tail call i32 (ptr, i32, ...) @open(ptr noundef %47, i32 noundef 2048) #38, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %48, metadata !1079, metadata !DIExpression()), !dbg !1088
  %49 = icmp slt i32 %48, 0, !dbg !1091
  br i1 %49, label %50, label %58, !dbg !1092

50:                                               ; preds = %42
  %51 = tail call ptr @__errno_location() #41, !dbg !1093
  %52 = load i32, ptr %51, align 4, !dbg !1093, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %52, metadata !1080, metadata !DIExpression()), !dbg !1094
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef %47, i32 noundef 2049) #38, !dbg !1095
  call void @llvm.dbg.value(metadata i32 %53, metadata !1079, metadata !DIExpression()), !dbg !1088
  %54 = icmp sgt i32 %53, -1, !dbg !1097
  br i1 %54, label %58, label %55, !dbg !1099

55:                                               ; preds = %50
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.56, i32 noundef 5) #38, !dbg !1100
  %57 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %47) #38, !dbg !1100
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %52, ptr noundef %56, ptr noundef %57) #38, !dbg !1100
  br label %95

58:                                               ; preds = %50, %42
  %59 = phi i32 [ %48, %42 ], [ %53, %50 ], !dbg !1088
  call void @llvm.dbg.value(metadata i32 %59, metadata !1079, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 1, metadata !1083, metadata !DIExpression()), !dbg !1088
  %60 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %59, i32 noundef 3) #38, !dbg !1102
  call void @llvm.dbg.value(metadata i32 %60, metadata !1084, metadata !DIExpression()), !dbg !1088
  %61 = icmp eq i32 %60, -1, !dbg !1103
  br i1 %61, label %77, label %62, !dbg !1105

62:                                               ; preds = %58
  %63 = and i32 %60, -2049, !dbg !1106
  %64 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %59, i32 noundef 4, i32 noundef %63) #38, !dbg !1107
  %65 = icmp slt i32 %64, 0, !dbg !1108
  br i1 %65, label %77, label %66, !dbg !1109

66:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i8 1, metadata !1083, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 -1, metadata !1085, metadata !DIExpression()), !dbg !1110
  switch i32 %40, label %73 [
    i32 1, label %67
    i32 0, label %69
    i32 2, label %71
  ], !dbg !1111

67:                                               ; preds = %66
  %68 = tail call i32 @fdatasync(i32 noundef %59) #38, !dbg !1112
  call void @llvm.dbg.value(metadata i32 %68, metadata !1085, metadata !DIExpression()), !dbg !1110
  br label %74, !dbg !1114

69:                                               ; preds = %66
  %70 = tail call i32 @fsync(i32 noundef %59) #38, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %70, metadata !1085, metadata !DIExpression()), !dbg !1110
  br label %74, !dbg !1116

71:                                               ; preds = %66
  %72 = tail call i32 @syncfs(i32 noundef %59) #38, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %72, metadata !1085, metadata !DIExpression()), !dbg !1110
  br label %74, !dbg !1118

73:                                               ; preds = %66
  unreachable, !dbg !1119

74:                                               ; preds = %71, %69, %67
  %75 = phi i32 [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], !dbg !1120
  call void @llvm.dbg.value(metadata i32 %75, metadata !1085, metadata !DIExpression()), !dbg !1110
  %76 = icmp slt i32 %75, 0, !dbg !1121
  br i1 %76, label %77, label %83, !dbg !1123

77:                                               ; preds = %74, %62, %58
  %78 = phi ptr [ @.str.57, %58 ], [ @.str.57, %62 ], [ @.str.58, %74 ]
  %79 = tail call ptr @__errno_location() #41, !dbg !1088
  %80 = load i32, ptr %79, align 4, !dbg !1088, !tbaa !871
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %78, i32 noundef 5) #38, !dbg !1088
  %82 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %47) #38, !dbg !1088
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %80, ptr noundef %81, ptr noundef %82) #38, !dbg !1088
  br label %83, !dbg !1124

83:                                               ; preds = %77, %74
  %84 = phi i8 [ 1, %74 ], [ 0, %77 ], !dbg !1088
  call void @llvm.dbg.value(metadata i8 %84, metadata !1083, metadata !DIExpression()), !dbg !1088
  %85 = tail call i32 @close(i32 noundef %59) #38, !dbg !1124
  %86 = icmp slt i32 %85, 0, !dbg !1126
  br i1 %86, label %87, label %92, !dbg !1127

87:                                               ; preds = %83
  %88 = tail call ptr @__errno_location() #41, !dbg !1128
  %89 = load i32, ptr %88, align 4, !dbg !1128, !tbaa !871
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1128
  %91 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %47) #38, !dbg !1128
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %89, ptr noundef %90, ptr noundef %91) #38, !dbg !1128
  call void @llvm.dbg.value(metadata i8 0, metadata !1083, metadata !DIExpression()), !dbg !1088
  br label %92, !dbg !1130

92:                                               ; preds = %87, %83
  %93 = phi i8 [ 0, %87 ], [ %84, %83 ], !dbg !1088
  call void @llvm.dbg.value(metadata i8 %93, metadata !1083, metadata !DIExpression()), !dbg !1088
  %94 = icmp ne i8 %93, 0, !dbg !1131
  br label %95

95:                                               ; preds = %55, %92
  %96 = phi i1 [ %94, %92 ], [ false, %55 ], !dbg !1088
  %97 = select i1 %96, i1 %44, i1 false, !dbg !1132
  tail call void @llvm.dbg.value(metadata i1 %97, metadata !1030, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1034
  %98 = load i32, ptr @optind, align 4, !dbg !1133, !tbaa !871
  %99 = add nsw i32 %98, 1, !dbg !1133
  store i32 %99, ptr @optind, align 4, !dbg !1133, !tbaa !871
  %100 = icmp slt i32 %99, %0, !dbg !1134
  br i1 %100, label %42, label %101, !dbg !1135, !llvm.loop !1136

101:                                              ; preds = %95
  %102 = xor i1 %97, true, !dbg !1138
  %103 = zext i1 %102 to i32, !dbg !1138
  br label %104, !dbg !1138

104:                                              ; preds = %101, %41
  %105 = phi i32 [ 0, %41 ], [ %103, %101 ], !dbg !1139
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1030, metadata !DIExpression()), !dbg !1034
  ret i32 %105, !dbg !1140
}

; Function Attrs: nounwind
declare !dbg !1141 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1144 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1145 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1148 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1154 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !1156 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1160 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1164 i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare !dbg !1167 i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1168 i32 @syncfs(i32 noundef) local_unnamed_addr #2

declare !dbg !1169 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #12 !dbg !1170 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1172, metadata !DIExpression()), !dbg !1173
  store ptr %0, ptr @file_name, align 8, !dbg !1174, !tbaa !808
  ret void, !dbg !1175
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #12 !dbg !1176 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1180, metadata !DIExpression()), !dbg !1181
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1182, !tbaa !1183
  ret void, !dbg !1185
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1186 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !808
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !1192
  %3 = icmp eq i32 %2, 0, !dbg !1193
  br i1 %3, label %22, label %4, !dbg !1194

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1195, !tbaa !1183, !range !1196, !noundef !838
  %6 = icmp eq i8 %5, 0, !dbg !1195
  br i1 %6, label %11, label %7, !dbg !1197

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !1198
  %9 = load i32, ptr %8, align 4, !dbg !1198, !tbaa !871
  %10 = icmp eq i32 %9, 32, !dbg !1199
  br i1 %10, label %22, label %11, !dbg !1200

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1.25, i32 noundef 5) #38, !dbg !1201
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1188, metadata !DIExpression()), !dbg !1202
  %13 = load ptr, ptr @file_name, align 8, !dbg !1203, !tbaa !808
  %14 = icmp eq ptr %13, null, !dbg !1203
  %15 = tail call ptr @__errno_location() #41, !dbg !1205
  %16 = load i32, ptr %15, align 4, !dbg !1205, !tbaa !871
  br i1 %14, label %19, label %17, !dbg !1206

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !1207
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.26, ptr noundef %18, ptr noundef %12) #38, !dbg !1207
  br label %20, !dbg !1207

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.27, ptr noundef %12) #38, !dbg !1208
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1209, !tbaa !871
  tail call void @_exit(i32 noundef %21) #40, !dbg !1210
  unreachable, !dbg !1210

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1211, !tbaa !808
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !1213
  %25 = icmp eq i32 %24, 0, !dbg !1214
  br i1 %25, label %28, label %26, !dbg !1215

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1216, !tbaa !871
  tail call void @_exit(i32 noundef %27) #40, !dbg !1217
  unreachable, !dbg !1217

28:                                               ; preds = %22
  ret void, !dbg !1218
}

; Function Attrs: noreturn
declare !dbg !1219 void @_exit(i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !dbg !1220 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1224, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1225, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1226, metadata !DIExpression()), !dbg !1228
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1227, metadata !DIExpression()), !dbg !1228
  tail call fastcc void @flush_stdout(), !dbg !1229
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1230, !tbaa !808
  %6 = icmp eq ptr %5, null, !dbg !1230
  br i1 %6, label %8, label %7, !dbg !1232

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !1233
  br label %12, !dbg !1233

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1234, !tbaa !808
  %10 = tail call ptr @getprogname() #39, !dbg !1234
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %10) #38, !dbg !1234
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1236
  ret void, !dbg !1237
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1238 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1240, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 1, metadata !1242, metadata !DIExpression()), !dbg !1245
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !1248
  %2 = icmp slt i32 %1, 0, !dbg !1249
  br i1 %2, label %6, label %3, !dbg !1250

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1251, !tbaa !808
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !1251
  br label %6, !dbg !1251

6:                                                ; preds = %3, %0
  ret void, !dbg !1252
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1253 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1259
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1255, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1256, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1257, metadata !DIExpression()), !dbg !1260
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1258, metadata !DIExpression()), !dbg !1260
  %6 = load ptr, ptr @stderr, align 8, !dbg !1261, !tbaa !808
  call void @llvm.dbg.value(metadata ptr %6, metadata !1262, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %2, metadata !1302, metadata !DIExpression()), !dbg !1304
  call void @llvm.dbg.value(metadata ptr %3, metadata !1303, metadata !DIExpression()), !dbg !1304
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !1306
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1307, !tbaa !871
  %9 = add i32 %8, 1, !dbg !1307
  store i32 %9, ptr @error_message_count, align 4, !dbg !1307, !tbaa !871
  %10 = icmp eq i32 %1, 0, !dbg !1308
  br i1 %10, label %20, label %11, !dbg !1310

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1311, metadata !DIExpression(), metadata !1259, metadata ptr %5, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !1321
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !1322
  call void @llvm.dbg.value(metadata ptr %12, metadata !1315, metadata !DIExpression()), !dbg !1319
  %13 = icmp eq ptr %12, null, !dbg !1323
  br i1 %13, label %14, label %16, !dbg !1325

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.29, ptr noundef nonnull @.str.5.30, i32 noundef 5) #38, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %15, metadata !1315, metadata !DIExpression()), !dbg !1319
  br label %16, !dbg !1327

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1319
  call void @llvm.dbg.value(metadata ptr %17, metadata !1315, metadata !DIExpression()), !dbg !1319
  %18 = load ptr, ptr @stderr, align 8, !dbg !1328, !tbaa !808
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.31, ptr noundef %17) #38, !dbg !1328
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !1329
  br label %20, !dbg !1330

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1331, !tbaa !808
  call void @llvm.dbg.value(metadata i32 10, metadata !1332, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata ptr %21, metadata !1338, metadata !DIExpression()), !dbg !1339
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1341
  %23 = load ptr, ptr %22, align 8, !dbg !1341, !tbaa !1342
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1341
  %25 = load ptr, ptr %24, align 8, !dbg !1341, !tbaa !1345
  %26 = icmp ult ptr %23, %25, !dbg !1341
  br i1 %26, label %29, label %27, !dbg !1341, !prof !1346

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !1341
  br label %31, !dbg !1341

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1341
  store ptr %30, ptr %22, align 8, !dbg !1341, !tbaa !1342
  store i8 10, ptr %23, align 1, !dbg !1341, !tbaa !880
  br label %31, !dbg !1341

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1347, !tbaa !808
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !1347
  %34 = icmp eq i32 %0, 0, !dbg !1348
  br i1 %34, label %36, label %35, !dbg !1350

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !1351
  unreachable, !dbg !1351

36:                                               ; preds = %31
  ret void, !dbg !1352
}

declare !dbg !1353 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nounwind
declare !dbg !1356 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

declare !dbg !1359 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1362 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1365 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1368 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1375, metadata !DIExpression(), metadata !1381, metadata ptr %4, metadata !DIExpression()), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1372, metadata !DIExpression()), !dbg !1382
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1373, metadata !DIExpression()), !dbg !1382
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1374, metadata !DIExpression()), !dbg !1382
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !1383
  call void @llvm.va_start(ptr nonnull %4), !dbg !1384
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !1385
  call void @llvm.va_end(ptr nonnull %4), !dbg !1386
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !1387
  ret void, !dbg !1387
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !dbg !403 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !414, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !415, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !417, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !418, metadata !DIExpression()), !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !419, metadata !DIExpression()), !dbg !1388
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1389, !tbaa !871
  %8 = icmp eq i32 %7, 0, !dbg !1389
  br i1 %8, label %23, label %9, !dbg !1391

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1392, !tbaa !871
  %11 = icmp eq i32 %10, %3, !dbg !1395
  br i1 %11, label %12, label %22, !dbg !1396

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1397, !tbaa !808
  %14 = icmp eq ptr %13, %2, !dbg !1398
  br i1 %14, label %36, label %15, !dbg !1399

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1400
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1401
  br i1 %18, label %19, label %22, !dbg !1401

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1402
  %21 = icmp eq i32 %20, 0, !dbg !1403
  br i1 %21, label %36, label %22, !dbg !1404

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1405, !tbaa !808
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1406, !tbaa !871
  br label %23, !dbg !1407

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1408
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1409, !tbaa !808
  %25 = icmp eq ptr %24, null, !dbg !1409
  br i1 %25, label %27, label %26, !dbg !1411

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !1412
  br label %31, !dbg !1412

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1413, !tbaa !808
  %29 = tail call ptr @getprogname() #39, !dbg !1413
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.34, ptr noundef %29) #38, !dbg !1413
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1415, !tbaa !808
  %33 = icmp eq ptr %2, null, !dbg !1415
  %34 = select i1 %33, ptr @.str.3.35, ptr @.str.2.36, !dbg !1415
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !1415
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1416
  br label %36, !dbg !1417

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1417
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1418 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1427, metadata !DIExpression(), metadata !1428, metadata ptr %6, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1422, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1423, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1424, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1425, metadata !DIExpression()), !dbg !1429
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1426, metadata !DIExpression()), !dbg !1429
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !1430
  call void @llvm.va_start(ptr nonnull %6), !dbg !1431
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !1432
  call void @llvm.va_end(ptr nonnull %6), !dbg !1433
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !1434
  ret void, !dbg !1434
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1435 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1462
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1439, metadata !DIExpression(), metadata !1462, metadata ptr %3, metadata !DIExpression()), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1437, metadata !DIExpression()), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1438, metadata !DIExpression()), !dbg !1463
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #38, !dbg !1464
  call void @llvm.va_start(ptr nonnull %3), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1450, metadata !DIExpression()), !dbg !1463
  switch i32 %1, label %90 [
    i32 0, label %4
    i32 1030, label %21
    i32 1, label %71
    i32 3, label %71
    i32 1025, label %71
    i32 9, label %71
    i32 1032, label %71
    i32 1034, label %71
    i32 11, label %71
    i32 1033, label %73
    i32 1031, label %73
    i32 10, label %73
    i32 1026, label %73
    i32 2, label %73
    i32 4, label %73
    i32 1024, label %73
    i32 8, label %73
  ], !dbg !1466

4:                                                ; preds = %2
  %5 = load i32, ptr %3, align 16, !dbg !1467
  %6 = icmp ult i32 %5, 41, !dbg !1467
  br i1 %6, label %7, label %13, !dbg !1467

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1467
  %9 = load ptr, ptr %8, align 16, !dbg !1467
  %10 = zext nneg i32 %5 to i64, !dbg !1467
  %11 = getelementptr i8, ptr %9, i64 %10, !dbg !1467
  %12 = add nuw nsw i32 %5, 8, !dbg !1467
  store i32 %12, ptr %3, align 16, !dbg !1467, !DIAssignID !1468
  call void @llvm.dbg.assign(metadata i32 %12, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1468, metadata ptr %3, metadata !DIExpression()), !dbg !1463
  br label %17, !dbg !1467

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1467
  %15 = load ptr, ptr %14, align 8, !dbg !1467
  %16 = getelementptr i8, ptr %15, i64 8, !dbg !1467
  store ptr %16, ptr %14, align 8, !dbg !1467, !DIAssignID !1469
  call void @llvm.dbg.assign(metadata ptr %16, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1469, metadata ptr %14, metadata !DIExpression()), !dbg !1463
  br label %17, !dbg !1467

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ], !dbg !1467
  %19 = load i32, ptr %18, align 4, !dbg !1467
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1451, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32 %19, metadata !1474, metadata !DIExpression()), !dbg !1476
  %20 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %19) #38, !dbg !1478
  call void @llvm.dbg.value(metadata i32 %20, metadata !1475, metadata !DIExpression()), !dbg !1476
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1450, metadata !DIExpression()), !dbg !1463
  br label %107

21:                                               ; preds = %2
  %22 = load i32, ptr %3, align 16, !dbg !1479
  %23 = icmp ult i32 %22, 41, !dbg !1479
  br i1 %23, label %24, label %30, !dbg !1479

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1479
  %26 = load ptr, ptr %25, align 16, !dbg !1479
  %27 = zext nneg i32 %22 to i64, !dbg !1479
  %28 = getelementptr i8, ptr %26, i64 %27, !dbg !1479
  %29 = add nuw nsw i32 %22, 8, !dbg !1479
  store i32 %29, ptr %3, align 16, !dbg !1479, !DIAssignID !1480
  call void @llvm.dbg.assign(metadata i32 %29, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1480, metadata ptr %3, metadata !DIExpression()), !dbg !1463
  br label %34, !dbg !1479

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1479
  %32 = load ptr, ptr %31, align 8, !dbg !1479
  %33 = getelementptr i8, ptr %32, i64 8, !dbg !1479
  store ptr %33, ptr %31, align 8, !dbg !1479, !DIAssignID !1481
  call void @llvm.dbg.assign(metadata ptr %33, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1481, metadata ptr %31, metadata !DIExpression()), !dbg !1463
  br label %34, !dbg !1479

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %28, %24 ], [ %32, %30 ], !dbg !1479
  %36 = load i32, ptr %35, align 4, !dbg !1479
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !1454, metadata !DIExpression()), !dbg !1482
  call void @llvm.dbg.value(metadata i32 %0, metadata !453, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %36, metadata !454, metadata !DIExpression()), !dbg !1483
  %37 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1485, !tbaa !871
  %38 = icmp sgt i32 %37, -1, !dbg !1487
  br i1 %38, label %39, label %51, !dbg !1488

39:                                               ; preds = %34
  %40 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %36) #38, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %40, metadata !455, metadata !DIExpression()), !dbg !1483
  %41 = icmp sgt i32 %40, -1, !dbg !1491
  br i1 %41, label %46, label %42, !dbg !1493

42:                                               ; preds = %39
  %43 = tail call ptr @__errno_location() #41, !dbg !1494
  %44 = load i32, ptr %43, align 4, !dbg !1494, !tbaa !871
  %45 = icmp eq i32 %44, 22, !dbg !1495
  br i1 %45, label %47, label %46, !dbg !1496

46:                                               ; preds = %42, %39
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1497, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %40, metadata !455, metadata !DIExpression()), !dbg !1483
  br label %107, !dbg !1499

47:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %36, metadata !1474, metadata !DIExpression()), !dbg !1500
  %48 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #38, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %48, metadata !1475, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i32 %48, metadata !455, metadata !DIExpression()), !dbg !1483
  %49 = icmp sgt i32 %48, -1, !dbg !1504
  br i1 %49, label %50, label %107, !dbg !1506

50:                                               ; preds = %47
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1507, !tbaa !871
  br label %55, !dbg !1508

51:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i32 %0, metadata !1471, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %36, metadata !1474, metadata !DIExpression()), !dbg !1509
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %36) #38, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %52, metadata !1475, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i32 %52, metadata !455, metadata !DIExpression()), !dbg !1483
  %53 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %54 = icmp eq i32 %53, -1
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i1 [ true, %50 ], [ %54, %51 ]
  %57 = phi i32 [ %48, %50 ], [ %52, %51 ], !dbg !1512
  call void @llvm.dbg.value(metadata i32 %57, metadata !455, metadata !DIExpression()), !dbg !1483
  %58 = icmp sgt i32 %57, -1, !dbg !1513
  %59 = select i1 %58, i1 %56, i1 false, !dbg !1499
  br i1 %59, label %60, label %107, !dbg !1499

60:                                               ; preds = %55
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 1) #38, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %61, metadata !456, metadata !DIExpression()), !dbg !1515
  %62 = icmp slt i32 %61, 0, !dbg !1516
  br i1 %62, label %67, label %63, !dbg !1517

63:                                               ; preds = %60
  %64 = or i32 %61, 1, !dbg !1518
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %57, i32 noundef 2, i32 noundef %64) #38, !dbg !1519
  %66 = icmp eq i32 %65, -1, !dbg !1520
  br i1 %66, label %67, label %107, !dbg !1521

67:                                               ; preds = %63, %60
  %68 = tail call ptr @__errno_location() #41, !dbg !1522
  %69 = load i32, ptr %68, align 4, !dbg !1522, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %69, metadata !459, metadata !DIExpression()), !dbg !1523
  %70 = call i32 @close(i32 noundef %57) #38, !dbg !1524
  store i32 %69, ptr %68, align 4, !dbg !1525, !tbaa !871
  call void @llvm.dbg.value(metadata i32 -1, metadata !455, metadata !DIExpression()), !dbg !1483
  br label %107, !dbg !1526

71:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %72 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #38, !dbg !1527
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1450, metadata !DIExpression()), !dbg !1463
  br label %107, !dbg !1528

73:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %74 = load i32, ptr %3, align 16, !dbg !1529
  %75 = icmp ult i32 %74, 41, !dbg !1529
  br i1 %75, label %76, label %82, !dbg !1529

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1529
  %78 = load ptr, ptr %77, align 16, !dbg !1529
  %79 = zext nneg i32 %74 to i64, !dbg !1529
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !1529
  %81 = add nuw nsw i32 %74, 8, !dbg !1529
  store i32 %81, ptr %3, align 16, !dbg !1529, !DIAssignID !1530
  call void @llvm.dbg.assign(metadata i32 %81, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1530, metadata ptr %3, metadata !DIExpression()), !dbg !1463
  br label %86, !dbg !1529

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1529
  %84 = load ptr, ptr %83, align 8, !dbg !1529
  %85 = getelementptr i8, ptr %84, i64 8, !dbg !1529
  store ptr %85, ptr %83, align 8, !dbg !1529, !DIAssignID !1531
  call void @llvm.dbg.assign(metadata ptr %85, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1531, metadata ptr %83, metadata !DIExpression()), !dbg !1463
  br label %86, !dbg !1529

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %80, %76 ], [ %84, %82 ], !dbg !1529
  %88 = load i32, ptr %87, align 4, !dbg !1529
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1456, metadata !DIExpression()), !dbg !1532
  %89 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %88) #38, !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %89, metadata !1450, metadata !DIExpression()), !dbg !1463
  br label %107, !dbg !1534

90:                                               ; preds = %2
  %91 = load i32, ptr %3, align 16, !dbg !1535
  %92 = icmp ult i32 %91, 41, !dbg !1535
  br i1 %92, label %93, label %99, !dbg !1535

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3, !dbg !1535
  %95 = load ptr, ptr %94, align 16, !dbg !1535
  %96 = zext nneg i32 %91 to i64, !dbg !1535
  %97 = getelementptr i8, ptr %95, i64 %96, !dbg !1535
  %98 = add nuw nsw i32 %91, 8, !dbg !1535
  store i32 %98, ptr %3, align 16, !dbg !1535, !DIAssignID !1536
  call void @llvm.dbg.assign(metadata i32 %98, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1536, metadata ptr %3, metadata !DIExpression()), !dbg !1463
  br label %103, !dbg !1535

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2, !dbg !1535
  %101 = load ptr, ptr %100, align 8, !dbg !1535
  %102 = getelementptr i8, ptr %101, i64 8, !dbg !1535
  store ptr %102, ptr %100, align 8, !dbg !1535, !DIAssignID !1537
  call void @llvm.dbg.assign(metadata ptr %102, metadata !1439, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1537, metadata ptr %100, metadata !DIExpression()), !dbg !1463
  br label %103, !dbg !1535

103:                                              ; preds = %99, %93
  %104 = phi ptr [ %97, %93 ], [ %101, %99 ], !dbg !1535
  %105 = load ptr, ptr %104, align 8, !dbg !1535
  tail call void @llvm.dbg.value(metadata ptr %105, metadata !1460, metadata !DIExpression()), !dbg !1538
  %106 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %105) #38, !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 %106, metadata !1450, metadata !DIExpression()), !dbg !1463
  br label %107, !dbg !1540

107:                                              ; preds = %67, %63, %55, %47, %46, %71, %86, %103, %17
  %108 = phi i32 [ %106, %103 ], [ %89, %86 ], [ %72, %71 ], [ %20, %17 ], [ %57, %55 ], [ -1, %67 ], [ %57, %63 ], [ %48, %47 ], [ %40, %46 ], !dbg !1541
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !1450, metadata !DIExpression()), !dbg !1463
  call void @llvm.va_end(ptr nonnull %3), !dbg !1542
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #38, !dbg !1543
  ret i32 %108, !dbg !1544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1545 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1548, !tbaa !808
  ret ptr %1, !dbg !1549
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1552, metadata !DIExpression()), !dbg !1555
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1553, metadata !DIExpression()), !dbg !1555
  %3 = icmp eq ptr %2, null, !dbg !1557
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1557
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1557
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1554, metadata !DIExpression()), !dbg !1555
  %6 = ptrtoint ptr %5 to i64, !dbg !1558
  %7 = ptrtoint ptr %0 to i64, !dbg !1558
  %8 = sub i64 %6, %7, !dbg !1558
  %9 = icmp sgt i64 %8, 6, !dbg !1560
  br i1 %9, label %10, label %19, !dbg !1561

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1562
  call void @llvm.dbg.value(metadata ptr %11, metadata !1563, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1568, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i64 7, metadata !1569, metadata !DIExpression()), !dbg !1570
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1572
  %13 = icmp eq i32 %12, 0, !dbg !1573
  br i1 %13, label %14, label %19, !dbg !1574

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1552, metadata !DIExpression()), !dbg !1555
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #39, !dbg !1575
  %16 = icmp eq i32 %15, 0, !dbg !1578
  %17 = select i1 %16, i64 3, i64 0, !dbg !1579
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1579
  br label %19, !dbg !1579

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1554, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1552, metadata !DIExpression()), !dbg !1555
  store ptr %20, ptr @program_name, align 8, !dbg !1580, !tbaa !808
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1581, !tbaa !808
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1582, !tbaa !808
  ret void, !dbg !1583
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1584 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !474 {
  %3 = alloca i32, align 4, !DIAssignID !1585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !484, metadata !DIExpression(), metadata !1585, metadata ptr %3, metadata !DIExpression()), !dbg !1586
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1587
  call void @llvm.dbg.assign(metadata i1 undef, metadata !489, metadata !DIExpression(), metadata !1587, metadata ptr %4, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !481, metadata !DIExpression()), !dbg !1586
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !482, metadata !DIExpression()), !dbg !1586
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !1588
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !1586
  %6 = icmp eq ptr %5, %0, !dbg !1589
  br i1 %6, label %7, label %14, !dbg !1591

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !1592
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !1593
  call void @llvm.dbg.value(metadata ptr %4, metadata !1594, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %4, metadata !1603, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i32 0, metadata !1609, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i64 8, metadata !1610, metadata !DIExpression()), !dbg !1611
  store i64 0, ptr %4, align 8, !dbg !1613
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !1614
  %9 = icmp eq i64 %8, 2, !dbg !1616
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1617
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !1618
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !1618
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1586
  ret ptr %15, !dbg !1618
}

; Function Attrs: nounwind
declare !dbg !1619 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1625 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1630, metadata !DIExpression()), !dbg !1633
  %2 = tail call ptr @__errno_location() #41, !dbg !1634
  %3 = load i32, ptr %2, align 4, !dbg !1634, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1631, metadata !DIExpression()), !dbg !1633
  %4 = icmp eq ptr %0, null, !dbg !1635
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1635
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !1636
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1632, metadata !DIExpression()), !dbg !1633
  store i32 %3, ptr %2, align 4, !dbg !1637, !tbaa !871
  ret ptr %6, !dbg !1638
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1639 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1645, metadata !DIExpression()), !dbg !1646
  %2 = icmp eq ptr %0, null, !dbg !1647
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1647
  %4 = load i32, ptr %3, align 8, !dbg !1648, !tbaa !1649
  ret i32 %4, !dbg !1651
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1652 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1656, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1657, metadata !DIExpression()), !dbg !1658
  %3 = icmp eq ptr %0, null, !dbg !1659
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1659
  store i32 %1, ptr %4, align 8, !dbg !1660, !tbaa !1649
  ret void, !dbg !1661
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1666, metadata !DIExpression()), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1667, metadata !DIExpression()), !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1668, metadata !DIExpression()), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1669, metadata !DIExpression()), !dbg !1674
  %4 = icmp eq ptr %0, null, !dbg !1675
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1675
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1676
  %7 = lshr i8 %1, 5, !dbg !1677
  %8 = zext nneg i8 %7 to i64, !dbg !1677
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1678
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1670, metadata !DIExpression()), !dbg !1674
  %10 = and i8 %1, 31, !dbg !1679
  %11 = zext nneg i8 %10 to i32, !dbg !1679
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1672, metadata !DIExpression()), !dbg !1674
  %12 = load i32, ptr %9, align 4, !dbg !1680, !tbaa !871
  %13 = lshr i32 %12, %11, !dbg !1681
  %14 = and i32 %13, 1, !dbg !1682
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1673, metadata !DIExpression()), !dbg !1674
  %15 = xor i32 %13, %2, !dbg !1683
  %16 = and i32 %15, 1, !dbg !1683
  %17 = shl nuw i32 %16, %11, !dbg !1684
  %18 = xor i32 %17, %12, !dbg !1685
  store i32 %18, ptr %9, align 4, !dbg !1685, !tbaa !871
  ret i32 %14, !dbg !1686
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1691, metadata !DIExpression()), !dbg !1694
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1692, metadata !DIExpression()), !dbg !1694
  %3 = icmp eq ptr %0, null, !dbg !1695
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1697
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1691, metadata !DIExpression()), !dbg !1694
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1698
  %6 = load i32, ptr %5, align 4, !dbg !1698, !tbaa !1699
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1693, metadata !DIExpression()), !dbg !1694
  store i32 %1, ptr %5, align 4, !dbg !1700, !tbaa !1699
  ret i32 %6, !dbg !1701
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1706, metadata !DIExpression()), !dbg !1709
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1707, metadata !DIExpression()), !dbg !1709
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !1709
  %4 = icmp eq ptr %0, null, !dbg !1710
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1712
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !1709
  store i32 10, ptr %5, align 8, !dbg !1713, !tbaa !1649
  %6 = icmp ne ptr %1, null, !dbg !1714
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1716
  br i1 %8, label %10, label %9, !dbg !1716

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !1717
  unreachable, !dbg !1717

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1718
  store ptr %1, ptr %11, align 8, !dbg !1719, !tbaa !1720
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1721
  store ptr %2, ptr %12, align 8, !dbg !1722, !tbaa !1723
  ret void, !dbg !1724
}

; Function Attrs: noreturn nounwind
declare !dbg !1725 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1726 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1730, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1731, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1732, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1733, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1734, metadata !DIExpression()), !dbg !1738
  %6 = icmp eq ptr %4, null, !dbg !1739
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1739
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1735, metadata !DIExpression()), !dbg !1738
  %8 = tail call ptr @__errno_location() #41, !dbg !1740
  %9 = load i32, ptr %8, align 4, !dbg !1740, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1736, metadata !DIExpression()), !dbg !1738
  %10 = load i32, ptr %7, align 8, !dbg !1741, !tbaa !1649
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1742
  %12 = load i32, ptr %11, align 4, !dbg !1742, !tbaa !1699
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1743
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1744
  %15 = load ptr, ptr %14, align 8, !dbg !1744, !tbaa !1720
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1745
  %17 = load ptr, ptr %16, align 8, !dbg !1745, !tbaa !1723
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1746
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1737, metadata !DIExpression()), !dbg !1738
  store i32 %9, ptr %8, align 4, !dbg !1747, !tbaa !871
  ret i64 %18, !dbg !1748
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1749 {
  %10 = alloca i32, align 4, !DIAssignID !1817
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1818
  %12 = alloca i32, align 4, !DIAssignID !1819
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1820
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1795, metadata !DIExpression(), metadata !1821, metadata ptr %14, metadata !DIExpression()), !dbg !1822
  %15 = alloca i32, align 4, !DIAssignID !1823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1798, metadata !DIExpression(), metadata !1823, metadata ptr %15, metadata !DIExpression()), !dbg !1824
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1755, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1757, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1758, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1759, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1760, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1761, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1762, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1763, metadata !DIExpression()), !dbg !1825
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !1826
  %17 = icmp eq i64 %16, 1, !dbg !1827
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1764, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1767, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1768, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1825
  %18 = trunc i32 %5 to i8, !dbg !1828
  %19 = lshr i8 %18, 1, !dbg !1828
  %20 = and i8 %19, 1, !dbg !1828
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1825
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1829

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1830
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1831
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1832
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1833
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1825
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1834
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1835
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1772, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1769, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1768, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1767, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1758, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1763, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1762, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1759, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.label(metadata !1773), !dbg !1836
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1825
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
  ], !dbg !1837

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1759, metadata !DIExpression()), !dbg !1825
  br label %114, !dbg !1838

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1759, metadata !DIExpression()), !dbg !1825
  %43 = and i8 %37, 1, !dbg !1839
  %44 = icmp eq i8 %43, 0, !dbg !1839
  br i1 %44, label %45, label %114, !dbg !1838

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1841
  br i1 %46, label %114, label %47, !dbg !1844

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1841, !tbaa !880
  br label %114, !dbg !1841

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !1819, metadata ptr %12, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !576, metadata !DIExpression(), metadata !1820, metadata ptr %13, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !572, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i32 %29, metadata !573, metadata !DIExpression()), !dbg !1845
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #38, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %49, metadata !574, metadata !DIExpression()), !dbg !1845
  %50 = icmp eq ptr %49, @.str.11.74, !dbg !1850
  br i1 %50, label %51, label %60, !dbg !1852

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !1853
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %13, metadata !1855, metadata !DIExpression()), !dbg !1861
  call void @llvm.dbg.value(metadata ptr %13, metadata !1863, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 8, metadata !1867, metadata !DIExpression()), !dbg !1868
  store i64 0, ptr %13, align 8, !dbg !1870
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !1871
  %53 = icmp eq i64 %52, 3, !dbg !1873
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1874
  %57 = icmp eq i32 %29, 9, !dbg !1874
  %58 = select i1 %57, ptr @.str.10.76, ptr @.str.12.77, !dbg !1874
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1874
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !1875
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !1875
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1845
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1762, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.assign(metadata i1 undef, metadata !575, metadata !DIExpression(), metadata !1817, metadata ptr %10, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.assign(metadata i1 undef, metadata !576, metadata !DIExpression(), metadata !1818, metadata ptr %11, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !572, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %29, metadata !573, metadata !DIExpression()), !dbg !1876
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #38, !dbg !1878
  call void @llvm.dbg.value(metadata ptr %62, metadata !574, metadata !DIExpression()), !dbg !1876
  %63 = icmp eq ptr %62, @.str.12.77, !dbg !1879
  br i1 %63, label %64, label %73, !dbg !1880

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !1881
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %11, metadata !1855, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata ptr %11, metadata !1863, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i64 8, metadata !1867, metadata !DIExpression()), !dbg !1885
  store i64 0, ptr %11, align 8, !dbg !1887
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !1888
  %66 = icmp eq i64 %65, 3, !dbg !1889
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1890
  %70 = icmp eq i32 %29, 9, !dbg !1890
  %71 = select i1 %70, ptr @.str.10.76, ptr @.str.12.77, !dbg !1890
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !1891
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !1891
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1763, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1762, metadata !DIExpression()), !dbg !1825
  %76 = and i8 %37, 1, !dbg !1892
  %77 = icmp eq i8 %76, 0, !dbg !1892
  br i1 %77, label %78, label %93, !dbg !1893

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1775, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1765, metadata !DIExpression()), !dbg !1825
  %79 = load i8, ptr %74, align 1, !dbg !1895, !tbaa !880
  %80 = icmp eq i8 %79, 0, !dbg !1897
  br i1 %80, label %93, label %81, !dbg !1897

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1775, metadata !DIExpression()), !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1765, metadata !DIExpression()), !dbg !1825
  %85 = icmp ult i64 %84, %40, !dbg !1898
  br i1 %85, label %86, label %88, !dbg !1901

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1898
  store i8 %82, ptr %87, align 1, !dbg !1898, !tbaa !880
  br label %88, !dbg !1898

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1901
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1765, metadata !DIExpression()), !dbg !1825
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1902
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1775, metadata !DIExpression()), !dbg !1894
  %91 = load i8, ptr %90, align 1, !dbg !1895, !tbaa !880
  %92 = icmp eq i8 %91, 0, !dbg !1897
  br i1 %92, label %93, label %81, !dbg !1897, !llvm.loop !1903

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1767, metadata !DIExpression()), !dbg !1825
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1768, metadata !DIExpression()), !dbg !1825
  br label %114, !dbg !1907

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !1825
  br label %98, !dbg !1908

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1769, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1770, metadata !DIExpression()), !dbg !1825
  br label %98, !dbg !1909

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1833
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1769, metadata !DIExpression()), !dbg !1825
  %101 = and i8 %100, 1, !dbg !1910
  %102 = icmp eq i8 %101, 0, !dbg !1910
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1912
  br label %104, !dbg !1912

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1825
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1828
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1769, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1759, metadata !DIExpression()), !dbg !1825
  %107 = and i8 %106, 1, !dbg !1913
  %108 = icmp eq i8 %107, 0, !dbg !1913
  br i1 %108, label %109, label %114, !dbg !1915

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1916
  br i1 %110, label %114, label %111, !dbg !1919

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1916, !tbaa !880
  br label %114, !dbg !1916

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1825
  br label %114, !dbg !1920

113:                                              ; preds = %28
  call void @abort() #40, !dbg !1921
  unreachable, !dbg !1921

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1905
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.76, %45 ], [ @.str.10.76, %47 ], [ @.str.10.76, %42 ], [ %34, %28 ], [ @.str.12.77, %109 ], [ @.str.12.77, %111 ], [ @.str.12.77, %104 ], [ @.str.10.76, %41 ], !dbg !1825
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1825
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1825
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1770, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1769, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1768, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1767, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1763, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1762, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1759, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1780, metadata !DIExpression()), !dbg !1922
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
  br label %138, !dbg !1923

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1905
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1830
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1834
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1835
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1924
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1925
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1772, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1758, metadata !DIExpression()), !dbg !1825
  %147 = icmp eq i64 %139, -1, !dbg !1926
  br i1 %147, label %148, label %152, !dbg !1927

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1928
  %150 = load i8, ptr %149, align 1, !dbg !1928, !tbaa !880
  %151 = icmp eq i8 %150, 0, !dbg !1929
  br i1 %151, label %612, label %154, !dbg !1930

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1931
  br i1 %153, label %612, label %154, !dbg !1930

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1786, metadata !DIExpression()), !dbg !1932
  br i1 %128, label %155, label %170, !dbg !1933

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1935
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1936
  br i1 %157, label %158, label %160, !dbg !1936

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1758, metadata !DIExpression()), !dbg !1825
  br label %160, !dbg !1938

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1758, metadata !DIExpression()), !dbg !1825
  %162 = icmp ugt i64 %156, %161, !dbg !1939
  br i1 %162, label %170, label %163, !dbg !1940

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %164, metadata !1942, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata ptr %119, metadata !1945, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i64 %120, metadata !1946, metadata !DIExpression()), !dbg !1947
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1949
  %166 = icmp ne i32 %165, 0, !dbg !1950
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1951
  %168 = xor i1 %166, true, !dbg !1951
  %169 = zext i1 %168 to i8, !dbg !1951
  br i1 %167, label %170, label %666, !dbg !1951

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1932
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1758, metadata !DIExpression()), !dbg !1825
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1952
  %175 = load i8, ptr %174, align 1, !dbg !1952, !tbaa !880
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1787, metadata !DIExpression()), !dbg !1932
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
  ], !dbg !1953

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1954

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1955

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1932
  %179 = and i8 %144, 1, !dbg !1959
  %180 = icmp eq i8 %179, 0, !dbg !1959
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1959
  br i1 %181, label %182, label %198, !dbg !1959

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1961
  br i1 %183, label %184, label %186, !dbg !1965

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1961
  store i8 39, ptr %185, align 1, !dbg !1961, !tbaa !880
  br label %186, !dbg !1961

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1765, metadata !DIExpression()), !dbg !1825
  %188 = icmp ult i64 %187, %146, !dbg !1966
  br i1 %188, label %189, label %191, !dbg !1969

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1966
  store i8 36, ptr %190, align 1, !dbg !1966, !tbaa !880
  br label %191, !dbg !1966

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1765, metadata !DIExpression()), !dbg !1825
  %193 = icmp ult i64 %192, %146, !dbg !1970
  br i1 %193, label %194, label %196, !dbg !1973

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1970
  store i8 39, ptr %195, align 1, !dbg !1970, !tbaa !880
  br label %196, !dbg !1970

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %198, !dbg !1974

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1825
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1765, metadata !DIExpression()), !dbg !1825
  %201 = icmp ult i64 %199, %146, !dbg !1975
  br i1 %201, label %202, label %204, !dbg !1978

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1975
  store i8 92, ptr %203, align 1, !dbg !1975, !tbaa !880
  br label %204, !dbg !1975

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1765, metadata !DIExpression()), !dbg !1825
  br i1 %125, label %206, label %476, !dbg !1979

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1981
  %208 = icmp ult i64 %207, %171, !dbg !1982
  br i1 %208, label %209, label %465, !dbg !1983

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1984
  %211 = load i8, ptr %210, align 1, !dbg !1984, !tbaa !880
  %212 = add i8 %211, -48, !dbg !1985
  %213 = icmp ult i8 %212, 10, !dbg !1985
  br i1 %213, label %214, label %465, !dbg !1985

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1986
  br i1 %215, label %216, label %218, !dbg !1990

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1986
  store i8 48, ptr %217, align 1, !dbg !1986, !tbaa !880
  br label %218, !dbg !1986

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1765, metadata !DIExpression()), !dbg !1825
  %220 = icmp ult i64 %219, %146, !dbg !1991
  br i1 %220, label %221, label %223, !dbg !1994

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1991
  store i8 48, ptr %222, align 1, !dbg !1991, !tbaa !880
  br label %223, !dbg !1991

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1765, metadata !DIExpression()), !dbg !1825
  br label %465, !dbg !1995

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1996

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1997

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1998

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !2000

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !2002
  %231 = icmp ult i64 %230, %171, !dbg !2003
  br i1 %231, label %232, label %465, !dbg !2004

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !2005
  %234 = load i8, ptr %233, align 1, !dbg !2005, !tbaa !880
  %235 = icmp eq i8 %234, 63, !dbg !2006
  br i1 %235, label %236, label %465, !dbg !2007

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !2008
  %238 = load i8, ptr %237, align 1, !dbg !2008, !tbaa !880
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
  ], !dbg !2009

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !2010

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1780, metadata !DIExpression()), !dbg !1922
  %241 = icmp ult i64 %140, %146, !dbg !2012
  br i1 %241, label %242, label %244, !dbg !2015

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2012
  store i8 63, ptr %243, align 1, !dbg !2012, !tbaa !880
  br label %244, !dbg !2012

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1765, metadata !DIExpression()), !dbg !1825
  %246 = icmp ult i64 %245, %146, !dbg !2016
  br i1 %246, label %247, label %249, !dbg !2019

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !2016
  store i8 34, ptr %248, align 1, !dbg !2016, !tbaa !880
  br label %249, !dbg !2016

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1765, metadata !DIExpression()), !dbg !1825
  %251 = icmp ult i64 %250, %146, !dbg !2020
  br i1 %251, label %252, label %254, !dbg !2023

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !2020
  store i8 34, ptr %253, align 1, !dbg !2020, !tbaa !880
  br label %254, !dbg !2020

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1765, metadata !DIExpression()), !dbg !1825
  %256 = icmp ult i64 %255, %146, !dbg !2024
  br i1 %256, label %257, label %259, !dbg !2027

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !2024
  store i8 63, ptr %258, align 1, !dbg !2024, !tbaa !880
  br label %259, !dbg !2024

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !2027
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1765, metadata !DIExpression()), !dbg !1825
  br label %465, !dbg !2028

261:                                              ; preds = %170
  br label %272, !dbg !2029

262:                                              ; preds = %170
  br label %272, !dbg !2030

263:                                              ; preds = %170
  br label %270, !dbg !2031

264:                                              ; preds = %170
  br label %270, !dbg !2032

265:                                              ; preds = %170
  br label %272, !dbg !2033

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !2034

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !2035

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !2038

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !2040

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !2041
  call void @llvm.dbg.label(metadata !1788), !dbg !2042
  br i1 %133, label %272, label %655, !dbg !2043

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !2041
  call void @llvm.dbg.label(metadata !1791), !dbg !2045
  br i1 %124, label %520, label %476, !dbg !2046

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !2047

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !2048, !tbaa !880
  %277 = icmp eq i8 %276, 0, !dbg !2050
  br i1 %277, label %278, label %465, !dbg !2051

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !2052
  br i1 %279, label %280, label %465, !dbg !2054

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1932
  br label %281, !dbg !2055

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1786, metadata !DIExpression()), !dbg !1932
  br i1 %133, label %465, label %655, !dbg !2056

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1786, metadata !DIExpression()), !dbg !1932
  br i1 %132, label %284, label %465, !dbg !2058

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !2059

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !2062
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !2064
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !2064
  %290 = select i1 %288, i64 %146, i64 0, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1766, metadata !DIExpression()), !dbg !1825
  %291 = icmp ult i64 %140, %290, !dbg !2065
  br i1 %291, label %292, label %294, !dbg !2068

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !2065
  store i8 39, ptr %293, align 1, !dbg !2065, !tbaa !880
  br label %294, !dbg !2065

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !2068
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1765, metadata !DIExpression()), !dbg !1825
  %296 = icmp ult i64 %295, %290, !dbg !2069
  br i1 %296, label %297, label %299, !dbg !2072

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !2069
  store i8 92, ptr %298, align 1, !dbg !2069, !tbaa !880
  br label %299, !dbg !2069

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !2072
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1765, metadata !DIExpression()), !dbg !1825
  %301 = icmp ult i64 %300, %290, !dbg !2073
  br i1 %301, label %302, label %304, !dbg !2076

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !2073
  store i8 39, ptr %303, align 1, !dbg !2073, !tbaa !880
  br label %304, !dbg !2073

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %465, !dbg !2077

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !2078

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1792, metadata !DIExpression()), !dbg !2079
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !2080
  %309 = load ptr, ptr %308, align 8, !dbg !2080, !tbaa !808
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !2080
  %312 = load i16, ptr %311, align 2, !dbg !2080, !tbaa !912
  %313 = and i16 %312, 16384, !dbg !2082
  %314 = icmp ne i16 %313, 0, !dbg !2082
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1794, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2079
  br label %355, !dbg !2083

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %14, metadata !1855, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata ptr %14, metadata !1863, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 8, metadata !1867, metadata !DIExpression()), !dbg !2087
  store i64 0, ptr %14, align 8, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1792, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1794, metadata !DIExpression()), !dbg !2079
  %316 = icmp eq i64 %171, -1, !dbg !2090
  br i1 %316, label %317, label %319, !dbg !2092

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1758, metadata !DIExpression()), !dbg !1825
  br label %319, !dbg !2094

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1758, metadata !DIExpression()), !dbg !1825
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !2095
  %321 = sub i64 %320, %145, !dbg !2096
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1802, metadata !DIExpression()), !dbg !1824
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !2098

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1792, metadata !DIExpression()), !dbg !2079
  %324 = icmp ult i64 %145, %320, !dbg !2099
  br i1 %324, label %326, label %351, !dbg !2101

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1794, metadata !DIExpression()), !dbg !2079
  br label %351, !dbg !2102

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1792, metadata !DIExpression()), !dbg !2079
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !2104
  %330 = load i8, ptr %329, align 1, !dbg !2104, !tbaa !880
  %331 = icmp eq i8 %330, 0, !dbg !2101
  br i1 %331, label %351, label %332, !dbg !2105

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1792, metadata !DIExpression()), !dbg !2079
  %334 = add i64 %333, %145, !dbg !2107
  %335 = icmp eq i64 %333, %321, !dbg !2099
  br i1 %335, label %351, label %326, !dbg !2101, !llvm.loop !2108

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1803, metadata !DIExpression()), !dbg !2109
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !2110
  %339 = and i1 %338, %132, !dbg !2110
  br i1 %339, label %340, label %347, !dbg !2110

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1803, metadata !DIExpression()), !dbg !2109
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !2111
  %343 = load i8, ptr %342, align 1, !dbg !2111, !tbaa !880
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !2113

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1803, metadata !DIExpression()), !dbg !2109
  %346 = icmp eq i64 %345, %322, !dbg !2115
  br i1 %346, label %347, label %340, !dbg !2116, !llvm.loop !2117

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !2119, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %348, metadata !2121, metadata !DIExpression()), !dbg !2129
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !2131
  %350 = icmp ne i32 %349, 0, !dbg !2132
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1794, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1792, metadata !DIExpression()), !dbg !2079
  br label %351, !dbg !2133

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1794, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1792, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2135
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1794, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1792, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !2134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !2135
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1932
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !2136
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !2136
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1794, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1792, metadata !DIExpression()), !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1758, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1932
  %359 = icmp ult i64 %357, 2, !dbg !2137
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !2138
  br i1 %361, label %461, label %362, !dbg !2138

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !2139
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1811, metadata !DIExpression()), !dbg !2140
  br label %364, !dbg !2141

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1825
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1924
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1922
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1932
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !2142
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1765, metadata !DIExpression()), !dbg !1825
  br i1 %360, label %417, label %371, !dbg !2143

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !2148

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1932
  %373 = and i8 %366, 1, !dbg !2151
  %374 = icmp eq i8 %373, 0, !dbg !2151
  %375 = select i1 %132, i1 %374, i1 false, !dbg !2151
  br i1 %375, label %376, label %392, !dbg !2151

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !2153
  br i1 %377, label %378, label %380, !dbg !2157

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2153
  store i8 39, ptr %379, align 1, !dbg !2153, !tbaa !880
  br label %380, !dbg !2153

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1765, metadata !DIExpression()), !dbg !1825
  %382 = icmp ult i64 %381, %146, !dbg !2158
  br i1 %382, label %383, label %385, !dbg !2161

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !2158
  store i8 36, ptr %384, align 1, !dbg !2158, !tbaa !880
  br label %385, !dbg !2158

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2161
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1765, metadata !DIExpression()), !dbg !1825
  %387 = icmp ult i64 %386, %146, !dbg !2162
  br i1 %387, label %388, label %390, !dbg !2165

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2162
  store i8 39, ptr %389, align 1, !dbg !2162, !tbaa !880
  br label %390, !dbg !2162

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2165
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %392, !dbg !2166

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1825
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1765, metadata !DIExpression()), !dbg !1825
  %395 = icmp ult i64 %393, %146, !dbg !2167
  br i1 %395, label %396, label %398, !dbg !2170

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2167
  store i8 92, ptr %397, align 1, !dbg !2167, !tbaa !880
  br label %398, !dbg !2167

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1765, metadata !DIExpression()), !dbg !1825
  %400 = icmp ult i64 %399, %146, !dbg !2171
  br i1 %400, label %401, label %405, !dbg !2174

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2171
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2171
  store i8 %403, ptr %404, align 1, !dbg !2171, !tbaa !880
  br label %405, !dbg !2171

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1765, metadata !DIExpression()), !dbg !1825
  %407 = icmp ult i64 %406, %146, !dbg !2175
  br i1 %407, label %408, label %413, !dbg !2178

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2175
  %411 = or disjoint i8 %410, 48, !dbg !2175
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2175
  store i8 %411, ptr %412, align 1, !dbg !2175, !tbaa !880
  br label %413, !dbg !2175

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2178
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1765, metadata !DIExpression()), !dbg !1825
  %415 = and i8 %370, 7, !dbg !2179
  %416 = or disjoint i8 %415, 48, !dbg !2180
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1787, metadata !DIExpression()), !dbg !1932
  br label %426, !dbg !2181

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2182
  %419 = icmp eq i8 %418, 0, !dbg !2182
  br i1 %419, label %426, label %420, !dbg !2184

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2185
  br i1 %421, label %422, label %424, !dbg !2189

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2185
  store i8 92, ptr %423, align 1, !dbg !2185, !tbaa !880
  br label %424, !dbg !2185

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2189
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1782, metadata !DIExpression()), !dbg !1932
  br label %426, !dbg !2190

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1825
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1924
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1932
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1932
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1765, metadata !DIExpression()), !dbg !1825
  %432 = add i64 %367, 1, !dbg !2191
  %433 = icmp ugt i64 %363, %432, !dbg !2193
  br i1 %433, label %434, label %463, !dbg !2194

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2195
  %436 = icmp ne i8 %435, 0, !dbg !2195
  %437 = and i8 %430, 1, !dbg !2195
  %438 = icmp eq i8 %437, 0, !dbg !2195
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2195
  br i1 %439, label %440, label %451, !dbg !2195

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2198
  br i1 %441, label %442, label %444, !dbg !2202

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2198
  store i8 39, ptr %443, align 1, !dbg !2198, !tbaa !880
  br label %444, !dbg !2198

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2202
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1765, metadata !DIExpression()), !dbg !1825
  %446 = icmp ult i64 %445, %146, !dbg !2203
  br i1 %446, label %447, label %449, !dbg !2206

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2203
  store i8 39, ptr %448, align 1, !dbg !2203, !tbaa !880
  br label %449, !dbg !2203

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %451, !dbg !2207

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2208
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1765, metadata !DIExpression()), !dbg !1825
  %454 = icmp ult i64 %452, %146, !dbg !2209
  br i1 %454, label %455, label %457, !dbg !2212

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2209
  store i8 %431, ptr %456, align 1, !dbg !2209, !tbaa !880
  br label %457, !dbg !2209

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1780, metadata !DIExpression()), !dbg !1922
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2213
  %460 = load i8, ptr %459, align 1, !dbg !2213, !tbaa !880
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1787, metadata !DIExpression()), !dbg !1932
  br label %364, !dbg !2214, !llvm.loop !2215

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1758, metadata !DIExpression()), !dbg !1825
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1758, metadata !DIExpression()), !dbg !1825
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2218
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1825
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1830
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1825
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1825
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1922
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1932
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1932
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1932
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1782, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1758, metadata !DIExpression()), !dbg !1825
  br i1 %126, label %487, label %476, !dbg !2219

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
  br i1 %137, label %488, label %509, !dbg !2221

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2222

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
  %499 = lshr i8 %490, 5, !dbg !2223
  %500 = zext nneg i8 %499 to i64, !dbg !2223
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2224
  %502 = load i32, ptr %501, align 4, !dbg !2224, !tbaa !871
  %503 = and i8 %490, 31, !dbg !2225
  %504 = zext nneg i8 %503 to i32, !dbg !2225
  %505 = shl nuw i32 1, %504, !dbg !2226
  %506 = and i32 %502, %505, !dbg !2226
  %507 = icmp eq i32 %506, 0, !dbg !2226
  %508 = and i1 %172, %507, !dbg !2227
  br i1 %508, label %558, label %520, !dbg !2227

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
  br i1 %172, label %558, label %520, !dbg !2228

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2218
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1825
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1830
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1834
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1924
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2229
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1932
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1932
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1758, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.label(metadata !1814), !dbg !2230
  br i1 %131, label %530, label %659, !dbg !2231

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1932
  %531 = and i8 %525, 1, !dbg !2233
  %532 = icmp eq i8 %531, 0, !dbg !2233
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2233
  br i1 %533, label %534, label %550, !dbg !2233

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2235
  br i1 %535, label %536, label %538, !dbg !2239

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2235
  store i8 39, ptr %537, align 1, !dbg !2235, !tbaa !880
  br label %538, !dbg !2235

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2239
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1765, metadata !DIExpression()), !dbg !1825
  %540 = icmp ult i64 %539, %529, !dbg !2240
  br i1 %540, label %541, label %543, !dbg !2243

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2240
  store i8 36, ptr %542, align 1, !dbg !2240, !tbaa !880
  br label %543, !dbg !2240

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1765, metadata !DIExpression()), !dbg !1825
  %545 = icmp ult i64 %544, %529, !dbg !2244
  br i1 %545, label %546, label %548, !dbg !2247

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2244
  store i8 39, ptr %547, align 1, !dbg !2244, !tbaa !880
  br label %548, !dbg !2244

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %550, !dbg !2248

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1932
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1765, metadata !DIExpression()), !dbg !1825
  %553 = icmp ult i64 %551, %529, !dbg !2249
  br i1 %553, label %554, label %556, !dbg !2252

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2249
  store i8 92, ptr %555, align 1, !dbg !2249, !tbaa !880
  br label %556, !dbg !2249

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2252
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1758, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.label(metadata !1815), !dbg !2253
  br label %585, !dbg !2254

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2218
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1825
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1830
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1834
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1924
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2229
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1932
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1932
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2257
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1787, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1786, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1785, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1758, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.label(metadata !1815), !dbg !2253
  %569 = and i8 %563, 1, !dbg !2254
  %570 = icmp ne i8 %569, 0, !dbg !2254
  %571 = and i8 %565, 1, !dbg !2254
  %572 = icmp eq i8 %571, 0, !dbg !2254
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2254
  br i1 %573, label %574, label %585, !dbg !2254

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2258
  br i1 %575, label %576, label %578, !dbg !2262

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2258
  store i8 39, ptr %577, align 1, !dbg !2258, !tbaa !880
  br label %578, !dbg !2258

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2262
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1765, metadata !DIExpression()), !dbg !1825
  %580 = icmp ult i64 %579, %568, !dbg !2263
  br i1 %580, label %581, label %583, !dbg !2266

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2263
  store i8 39, ptr %582, align 1, !dbg !2263, !tbaa !880
  br label %583, !dbg !2263

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2266
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1825
  br label %585, !dbg !2267

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1932
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1765, metadata !DIExpression()), !dbg !1825
  %595 = icmp ult i64 %593, %586, !dbg !2268
  br i1 %595, label %596, label %598, !dbg !2271

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2268
  store i8 %587, ptr %597, align 1, !dbg !2268, !tbaa !880
  br label %598, !dbg !2268

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1765, metadata !DIExpression()), !dbg !1825
  %600 = icmp eq i8 %588, 0, !dbg !2272
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2274
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1772, metadata !DIExpression()), !dbg !1825
  br label %602, !dbg !2275

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2218
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1825
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1830
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1834
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1835
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1924
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2229
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1780, metadata !DIExpression()), !dbg !1922
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1774, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1772, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1758, metadata !DIExpression()), !dbg !1825
  %611 = add i64 %609, 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1780, metadata !DIExpression()), !dbg !1922
  br label %138, !dbg !2277, !llvm.loop !2278

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1756, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1772, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1771, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1766, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1765, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1758, metadata !DIExpression()), !dbg !1825
  %613 = icmp eq i64 %140, 0, !dbg !2280
  %614 = and i1 %132, %613, !dbg !2282
  %615 = xor i1 %614, true, !dbg !2282
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2282
  br i1 %616, label %617, label %655, !dbg !2282

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2283
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2283
  br i1 %621, label %622, label %631, !dbg !2283

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2285
  %624 = icmp eq i8 %623, 0, !dbg !2285
  br i1 %624, label %627, label %625, !dbg !2288

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2289
  br label %672, !dbg !2290

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2291
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2293
  br i1 %630, label %28, label %631, !dbg !2293

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2294
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2296
  br i1 %634, label %635, label %650, !dbg !2296

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1767, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1765, metadata !DIExpression()), !dbg !1825
  %636 = load i8, ptr %119, align 1, !dbg !2297, !tbaa !880
  %637 = icmp eq i8 %636, 0, !dbg !2300
  br i1 %637, label %650, label %638, !dbg !2300

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1767, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1765, metadata !DIExpression()), !dbg !1825
  %642 = icmp ult i64 %641, %146, !dbg !2301
  br i1 %642, label %643, label %645, !dbg !2304

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2301
  store i8 %639, ptr %644, align 1, !dbg !2301, !tbaa !880
  br label %645, !dbg !2301

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2304
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1765, metadata !DIExpression()), !dbg !1825
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2305
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1767, metadata !DIExpression()), !dbg !1825
  %648 = load i8, ptr %647, align 1, !dbg !2297, !tbaa !880
  %649 = icmp eq i8 %648, 0, !dbg !2300
  br i1 %649, label %650, label %638, !dbg !2300, !llvm.loop !2306

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1765, metadata !DIExpression()), !dbg !1825
  %652 = icmp ult i64 %651, %146, !dbg !2308
  br i1 %652, label %653, label %672, !dbg !2310

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2311
  store i8 0, ptr %654, align 1, !dbg !2312, !tbaa !880
  br label %672, !dbg !2311

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1816), !dbg !2313
  %657 = icmp eq i8 %123, 0, !dbg !2314
  %658 = select i1 %657, i32 2, i32 4, !dbg !2314
  br label %666, !dbg !2314

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1816), !dbg !2313
  %662 = icmp eq i32 %115, 2, !dbg !2316
  %663 = icmp eq i8 %123, 0, !dbg !2314
  %664 = select i1 %663, i32 2, i32 4, !dbg !2314
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2314
  br label %666, !dbg !2314

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1759, metadata !DIExpression()), !dbg !1825
  %670 = and i32 %5, -3, !dbg !2317
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2318
  br label %672, !dbg !2319

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2320
}

; Function Attrs: nounwind
declare !dbg !2321 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2324 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2327 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2329 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %0, metadata !2337, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr null, metadata !2343, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr %2, metadata !2344, metadata !DIExpression()), !dbg !2350
  %4 = icmp eq ptr %2, null, !dbg !2352
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %5, metadata !2345, metadata !DIExpression()), !dbg !2350
  %6 = tail call ptr @__errno_location() #41, !dbg !2353
  %7 = load i32, ptr %6, align 4, !dbg !2353, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %7, metadata !2346, metadata !DIExpression()), !dbg !2350
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2354
  %9 = load i32, ptr %8, align 4, !dbg !2354, !tbaa !1699
  %10 = or i32 %9, 1, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %10, metadata !2347, metadata !DIExpression()), !dbg !2350
  %11 = load i32, ptr %5, align 8, !dbg !2356, !tbaa !1649
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2357
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2358
  %14 = load ptr, ptr %13, align 8, !dbg !2358, !tbaa !1720
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2359
  %16 = load ptr, ptr %15, align 8, !dbg !2359, !tbaa !1723
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2360
  %18 = add i64 %17, 1, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %18, metadata !2348, metadata !DIExpression()), !dbg !2350
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2362
  call void @llvm.dbg.value(metadata ptr %19, metadata !2349, metadata !DIExpression()), !dbg !2350
  %20 = load i32, ptr %5, align 8, !dbg !2363, !tbaa !1649
  %21 = load ptr, ptr %13, align 8, !dbg !2364, !tbaa !1720
  %22 = load ptr, ptr %15, align 8, !dbg !2365, !tbaa !1723
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2366
  store i32 %7, ptr %6, align 4, !dbg !2367, !tbaa !871
  ret ptr %19, !dbg !2368
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2338 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2337, metadata !DIExpression()), !dbg !2369
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()), !dbg !2369
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2343, metadata !DIExpression()), !dbg !2369
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2344, metadata !DIExpression()), !dbg !2369
  %5 = icmp eq ptr %3, null, !dbg !2370
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2370
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2345, metadata !DIExpression()), !dbg !2369
  %7 = tail call ptr @__errno_location() #41, !dbg !2371
  %8 = load i32, ptr %7, align 4, !dbg !2371, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2346, metadata !DIExpression()), !dbg !2369
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2372
  %10 = load i32, ptr %9, align 4, !dbg !2372, !tbaa !1699
  %11 = icmp eq ptr %2, null, !dbg !2373
  %12 = zext i1 %11 to i32, !dbg !2373
  %13 = or i32 %10, %12, !dbg !2374
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2347, metadata !DIExpression()), !dbg !2369
  %14 = load i32, ptr %6, align 8, !dbg !2375, !tbaa !1649
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2376
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2377
  %17 = load ptr, ptr %16, align 8, !dbg !2377, !tbaa !1720
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2378
  %19 = load ptr, ptr %18, align 8, !dbg !2378, !tbaa !1723
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2379
  %21 = add i64 %20, 1, !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2348, metadata !DIExpression()), !dbg !2369
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2381
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2349, metadata !DIExpression()), !dbg !2369
  %23 = load i32, ptr %6, align 8, !dbg !2382, !tbaa !1649
  %24 = load ptr, ptr %16, align 8, !dbg !2383, !tbaa !1720
  %25 = load ptr, ptr %18, align 8, !dbg !2384, !tbaa !1723
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2385
  store i32 %8, ptr %7, align 4, !dbg !2386, !tbaa !871
  br i1 %11, label %28, label %27, !dbg !2387

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2388, !tbaa !2390
  br label %28, !dbg !2391

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2392
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2393 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2398, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2395, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2396, metadata !DIExpression()), !dbg !2400
  %2 = load i32, ptr @nslots, align 4, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2396, metadata !DIExpression()), !dbg !2400
  %3 = icmp sgt i32 %2, 1, !dbg !2401
  br i1 %3, label %4, label %6, !dbg !2403

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2401
  br label %10, !dbg !2403

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2404
  %8 = load ptr, ptr %7, align 8, !dbg !2404, !tbaa !2406
  %9 = icmp eq ptr %8, @slot0, !dbg !2408
  br i1 %9, label %17, label %16, !dbg !2409

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2396, metadata !DIExpression()), !dbg !2400
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2410
  %13 = load ptr, ptr %12, align 8, !dbg !2410, !tbaa !2406
  tail call void @free(ptr noundef %13) #38, !dbg !2411
  %14 = add nuw nsw i64 %11, 1, !dbg !2412
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2396, metadata !DIExpression()), !dbg !2400
  %15 = icmp eq i64 %14, %5, !dbg !2401
  br i1 %15, label %6, label %10, !dbg !2403, !llvm.loop !2413

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !2415
  store i64 256, ptr @slotvec0, align 8, !dbg !2417, !tbaa !2418
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2419, !tbaa !2406
  br label %17, !dbg !2420

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2421
  br i1 %18, label %20, label %19, !dbg !2423

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !2424
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2426, !tbaa !808
  br label %20, !dbg !2427

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2428, !tbaa !871
  ret void, !dbg !2429
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2430 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2433 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()), !dbg !2437
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2436, metadata !DIExpression()), !dbg !2437
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2438
  ret ptr %3, !dbg !2439
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2440 {
  %5 = alloca i64, align 8, !DIAssignID !2460
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2454, metadata !DIExpression(), metadata !2460, metadata ptr %5, metadata !DIExpression()), !dbg !2461
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2445, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2446, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2447, metadata !DIExpression()), !dbg !2462
  %6 = tail call ptr @__errno_location() #41, !dbg !2463
  %7 = load i32, ptr %6, align 4, !dbg !2463, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2448, metadata !DIExpression()), !dbg !2462
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2464, !tbaa !808
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2449, metadata !DIExpression()), !dbg !2462
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2450, metadata !DIExpression()), !dbg !2462
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2465
  br i1 %9, label %10, label %11, !dbg !2465

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !2467
  unreachable, !dbg !2467

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2468, !tbaa !871
  %13 = icmp sgt i32 %12, %0, !dbg !2469
  br i1 %13, label %32, label %14, !dbg !2470

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2471
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2451, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2461
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !2472
  %16 = sext i32 %12 to i64, !dbg !2473
  store i64 %16, ptr %5, align 8, !dbg !2474, !tbaa !2390, !DIAssignID !2475
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2454, metadata !DIExpression(), metadata !2475, metadata ptr %5, metadata !DIExpression()), !dbg !2461
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2476
  %18 = add nuw nsw i32 %0, 1, !dbg !2477
  %19 = sub i32 %18, %12, !dbg !2478
  %20 = sext i32 %19 to i64, !dbg !2479
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2449, metadata !DIExpression()), !dbg !2462
  store ptr %21, ptr @slotvec, align 8, !dbg !2481, !tbaa !808
  br i1 %15, label %22, label %23, !dbg !2482

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2483, !tbaa.struct !2485
  br label %23, !dbg !2486

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2487, !tbaa !871
  %25 = sext i32 %24 to i64, !dbg !2488
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2488
  %27 = load i64, ptr %5, align 8, !dbg !2489, !tbaa !2390
  %28 = sub nsw i64 %27, %25, !dbg !2490
  %29 = shl i64 %28, 4, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %26, metadata !1863, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i32 0, metadata !1866, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i64 %29, metadata !1867, metadata !DIExpression()), !dbg !2492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !2494
  %30 = load i64, ptr %5, align 8, !dbg !2495, !tbaa !2390
  %31 = trunc i64 %30 to i32, !dbg !2495
  store i32 %31, ptr @nslots, align 4, !dbg !2496, !tbaa !871
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !2497
  br label %32, !dbg !2498

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2462
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2449, metadata !DIExpression()), !dbg !2462
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2499
  %36 = load i64, ptr %35, align 8, !dbg !2500, !tbaa !2418
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2455, metadata !DIExpression()), !dbg !2501
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2502
  %38 = load ptr, ptr %37, align 8, !dbg !2502, !tbaa !2406
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2457, metadata !DIExpression()), !dbg !2501
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2503
  %40 = load i32, ptr %39, align 4, !dbg !2503, !tbaa !1699
  %41 = or i32 %40, 1, !dbg !2504
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2458, metadata !DIExpression()), !dbg !2501
  %42 = load i32, ptr %3, align 8, !dbg !2505, !tbaa !1649
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2506
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2507
  %45 = load ptr, ptr %44, align 8, !dbg !2507, !tbaa !1720
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2508
  %47 = load ptr, ptr %46, align 8, !dbg !2508, !tbaa !1723
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2509
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2459, metadata !DIExpression()), !dbg !2501
  %49 = icmp ugt i64 %36, %48, !dbg !2510
  br i1 %49, label %60, label %50, !dbg !2512

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2513
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2455, metadata !DIExpression()), !dbg !2501
  store i64 %51, ptr %35, align 8, !dbg !2515, !tbaa !2418
  %52 = icmp eq ptr %38, @slot0, !dbg !2516
  br i1 %52, label %54, label %53, !dbg !2518

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !2519
  br label %54, !dbg !2519

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2520
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2457, metadata !DIExpression()), !dbg !2501
  store ptr %55, ptr %37, align 8, !dbg !2521, !tbaa !2406
  %56 = load i32, ptr %3, align 8, !dbg !2522, !tbaa !1649
  %57 = load ptr, ptr %44, align 8, !dbg !2523, !tbaa !1720
  %58 = load ptr, ptr %46, align 8, !dbg !2524, !tbaa !1723
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2525
  br label %60, !dbg !2526

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2501
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2457, metadata !DIExpression()), !dbg !2501
  store i32 %7, ptr %6, align 4, !dbg !2527, !tbaa !871
  ret ptr %61, !dbg !2528
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2529 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2535, metadata !DIExpression()), !dbg !2536
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2537
  ret ptr %4, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2539 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 0, metadata !2435, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %0, metadata !2436, metadata !DIExpression()), !dbg !2543
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2545
  ret ptr %2, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2553
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata ptr %0, metadata !2534, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 %1, metadata !2535, metadata !DIExpression()), !dbg !2554
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2556
  ret ptr %3, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2558 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2565, metadata !DIExpression(), metadata !2566, metadata ptr %4, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2562, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2563, metadata !DIExpression()), !dbg !2567
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2581, !alias.scope !2569, !DIAssignID !2582
  call void @llvm.dbg.assign(metadata i8 0, metadata !2565, metadata !DIExpression(), metadata !2582, metadata ptr %4, metadata !DIExpression()), !dbg !2567
  %5 = icmp eq i32 %1, 10, !dbg !2583
  br i1 %5, label %6, label %7, !dbg !2585

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2586, !noalias !2569
  unreachable, !dbg !2586

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2587, !tbaa !1649, !alias.scope !2569, !DIAssignID !2588
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2565, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2588, metadata ptr %4, metadata !DIExpression()), !dbg !2567
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2589
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2590
  ret ptr %8, !dbg !2591
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2592 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(), metadata !2601, metadata ptr %5, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2597, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2598, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2603
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2578, metadata !DIExpression()), !dbg !2610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2610, !alias.scope !2604, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i8 0, metadata !2600, metadata !DIExpression(), metadata !2611, metadata ptr %5, metadata !DIExpression()), !dbg !2602
  %6 = icmp eq i32 %1, 10, !dbg !2612
  br i1 %6, label %7, label %8, !dbg !2613

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2614, !noalias !2604
  unreachable, !dbg !2614

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2615, !tbaa !1649, !alias.scope !2604, !DIAssignID !2616
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2616, metadata ptr %5, metadata !DIExpression()), !dbg !2602
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2617
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2618
  ret ptr %9, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2620 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2626
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2627
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2565, metadata !DIExpression(), metadata !2626, metadata ptr %3, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 0, metadata !2562, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata ptr %1, metadata !2564, metadata !DIExpression()), !dbg !2628
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2630
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2631), !dbg !2634
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2637, !alias.scope !2631, !DIAssignID !2638
  call void @llvm.dbg.assign(metadata i8 0, metadata !2565, metadata !DIExpression(), metadata !2638, metadata ptr %3, metadata !DIExpression()), !dbg !2628
  %4 = icmp eq i32 %0, 10, !dbg !2639
  br i1 %4, label %5, label %6, !dbg !2640

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !2641, !noalias !2631
  unreachable, !dbg !2641

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2642, !tbaa !1649, !alias.scope !2631, !DIAssignID !2643
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2565, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2643, metadata ptr %3, metadata !DIExpression()), !dbg !2628
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2644
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2645
  ret ptr %7, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2647 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2651, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2652, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(), metadata !2654, metadata ptr %4, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %2, metadata !2599, metadata !DIExpression()), !dbg !2656
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2658
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659), !dbg !2662
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2578, metadata !DIExpression()), !dbg !2665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2665, !alias.scope !2659, !DIAssignID !2666
  call void @llvm.dbg.assign(metadata i8 0, metadata !2600, metadata !DIExpression(), metadata !2666, metadata ptr %4, metadata !DIExpression()), !dbg !2656
  %5 = icmp eq i32 %0, 10, !dbg !2667
  br i1 %5, label %6, label %7, !dbg !2668

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2669, !noalias !2659
  unreachable, !dbg !2669

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2670, !tbaa !1649, !alias.scope !2659, !DIAssignID !2671
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2671, metadata ptr %4, metadata !DIExpression()), !dbg !2656
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2673
  ret ptr %8, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2675 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2683, metadata ptr %4, metadata !DIExpression()), !dbg !2684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2684
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()), !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2686, !tbaa.struct !2687, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2688, metadata ptr %4, metadata !DIExpression()), !dbg !2684
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1666, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1667, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1668, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1669, metadata !DIExpression()), !dbg !2689
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2691
  %6 = lshr i8 %2, 5, !dbg !2692
  %7 = zext nneg i8 %6 to i64, !dbg !2692
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2693
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1670, metadata !DIExpression()), !dbg !2689
  %9 = and i8 %2, 31, !dbg !2694
  %10 = zext nneg i8 %9 to i32, !dbg !2694
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1672, metadata !DIExpression()), !dbg !2689
  %11 = load i32, ptr %8, align 4, !dbg !2695, !tbaa !871
  %12 = lshr i32 %11, %10, !dbg !2696
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1673, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2689
  %13 = and i32 %12, 1, !dbg !2697
  %14 = xor i32 %13, 1, !dbg !2697
  %15 = shl nuw i32 %14, %10, !dbg !2698
  %16 = xor i32 %15, %11, !dbg !2699
  store i32 %16, ptr %8, align 4, !dbg !2699, !tbaa !871
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2700
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2701
  ret ptr %17, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2703 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2709
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2709, metadata ptr %3, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 -1, metadata !2680, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8 %1, metadata !2681, metadata !DIExpression()), !dbg !2711
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2714, !tbaa.struct !2687, !DIAssignID !2715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2715, metadata ptr %3, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %3, metadata !1666, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %1, metadata !1667, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 1, metadata !1668, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i8 %1, metadata !1669, metadata !DIExpression()), !dbg !2716
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2718
  %5 = lshr i8 %1, 5, !dbg !2719
  %6 = zext nneg i8 %5 to i64, !dbg !2719
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %7, metadata !1670, metadata !DIExpression()), !dbg !2716
  %8 = and i8 %1, 31, !dbg !2721
  %9 = zext nneg i8 %8 to i32, !dbg !2721
  call void @llvm.dbg.value(metadata i32 %9, metadata !1672, metadata !DIExpression()), !dbg !2716
  %10 = load i32, ptr %7, align 4, !dbg !2722, !tbaa !871
  %11 = lshr i32 %10, %9, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %11, metadata !1673, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2716
  %12 = and i32 %11, 1, !dbg !2724
  %13 = xor i32 %12, 1, !dbg !2724
  %14 = shl nuw i32 %13, %9, !dbg !2725
  %15 = xor i32 %14, %10, !dbg !2726
  store i32 %15, ptr %7, align 4, !dbg !2726, !tbaa !871
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2727
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2728
  ret ptr %16, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2730 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2733
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i8 58, metadata !2708, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2733, metadata ptr %2, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 -1, metadata !2680, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i8 58, metadata !2681, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !2739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2740, !tbaa.struct !2687, !DIAssignID !2741
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2741, metadata ptr %2, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %2, metadata !1666, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 1, metadata !1668, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8 58, metadata !1669, metadata !DIExpression()), !dbg !2742
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2744
  call void @llvm.dbg.value(metadata ptr %3, metadata !1670, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()), !dbg !2742
  %4 = load i32, ptr %3, align 4, !dbg !2745, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %4, metadata !1673, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2742
  %5 = or i32 %4, 67108864, !dbg !2746
  store i32 %5, ptr %3, align 4, !dbg !2746, !tbaa !871
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2747
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !2748
  ret ptr %6, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2750 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2754
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2752, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2754, metadata ptr %3, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %1, metadata !2680, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i8 58, metadata !2681, metadata !DIExpression()), !dbg !2756
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !2758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2759, !tbaa.struct !2687, !DIAssignID !2760
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2682, metadata !DIExpression(), metadata !2760, metadata ptr %3, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %3, metadata !1666, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 1, metadata !1668, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8 58, metadata !1669, metadata !DIExpression()), !dbg !2761
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2763
  call void @llvm.dbg.value(metadata ptr %4, metadata !1670, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()), !dbg !2761
  %5 = load i32, ptr %4, align 4, !dbg !2764, !tbaa !871
  call void @llvm.dbg.value(metadata i32 %5, metadata !1673, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2761
  %6 = or i32 %5, 67108864, !dbg !2765
  store i32 %6, ptr %4, align 4, !dbg !2765, !tbaa !871
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2766
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !2767
  ret ptr %7, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2769 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2774, metadata !DIExpression(), metadata !2775, metadata ptr %4, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2578, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2772, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2773, metadata !DIExpression()), !dbg !2776
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2779
  call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2780
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2780
  %5 = icmp eq i32 %1, 10, !dbg !2781
  br i1 %5, label %6, label %7, !dbg !2782

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2783, !noalias !2784
  unreachable, !dbg !2783

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2578, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2780
  store i32 %1, ptr %4, align 8, !dbg !2787, !tbaa.struct !2687, !DIAssignID !2788
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2787
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2787
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2788, metadata ptr %4, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2789, metadata ptr %8, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1666, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1667, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1668, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1669, metadata !DIExpression()), !dbg !2790
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1670, metadata !DIExpression()), !dbg !2790
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1672, metadata !DIExpression()), !dbg !2790
  %10 = load i32, ptr %9, align 4, !dbg !2793, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1673, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2790
  %11 = or i32 %10, 67108864, !dbg !2794
  store i32 %11, ptr %9, align 4, !dbg !2794, !tbaa !871, !DIAssignID !2795
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2774, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2795, metadata ptr %9, metadata !DIExpression()), !dbg !2776
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2796
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2797
  ret ptr %12, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2799 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2807
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2803, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2804, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2805, metadata !DIExpression()), !dbg !2808
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2806, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2807, metadata ptr %5, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 %0, metadata !2814, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2815, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %2, metadata !2816, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %3, metadata !2817, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i64 -1, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2822, !tbaa.struct !2687, !DIAssignID !2823
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2823, metadata ptr %5, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2824, metadata ptr undef, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %1, metadata !1707, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !2825
  store i32 10, ptr %5, align 8, !dbg !2827, !tbaa !1649, !DIAssignID !2828
  call void @llvm.dbg.assign(metadata i32 10, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2828, metadata ptr %5, metadata !DIExpression()), !dbg !2819
  %6 = icmp ne ptr %1, null, !dbg !2829
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2830
  br i1 %8, label %10, label %9, !dbg !2830

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2831
  unreachable, !dbg !2831

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2832
  store ptr %1, ptr %11, align 8, !dbg !2833, !tbaa !1720, !DIAssignID !2834
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2834, metadata ptr %11, metadata !DIExpression()), !dbg !2819
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2835
  store ptr %2, ptr %12, align 8, !dbg !2836, !tbaa !1723, !DIAssignID !2837
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2837, metadata ptr %12, metadata !DIExpression()), !dbg !2819
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2838
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2839
  ret ptr %13, !dbg !2840
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2810 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2841
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2841, metadata ptr %6, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2814, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2815, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2816, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2817, metadata !DIExpression()), !dbg !2842
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2818, metadata !DIExpression()), !dbg !2842
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !2843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2844, !tbaa.struct !2687, !DIAssignID !2845
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2845, metadata ptr %6, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2846, metadata ptr undef, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata ptr %6, metadata !1706, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %1, metadata !1707, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %2, metadata !1708, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata ptr %6, metadata !1706, metadata !DIExpression()), !dbg !2847
  store i32 10, ptr %6, align 8, !dbg !2849, !tbaa !1649, !DIAssignID !2850
  call void @llvm.dbg.assign(metadata i32 10, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2850, metadata ptr %6, metadata !DIExpression()), !dbg !2842
  %7 = icmp ne ptr %1, null, !dbg !2851
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2852
  br i1 %9, label %11, label %10, !dbg !2852

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !2853
  unreachable, !dbg !2853

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2854
  store ptr %1, ptr %12, align 8, !dbg !2855, !tbaa !1720, !DIAssignID !2856
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2856, metadata ptr %12, metadata !DIExpression()), !dbg !2842
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2857
  store ptr %2, ptr %13, align 8, !dbg !2858, !tbaa !1723, !DIAssignID !2859
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2859, metadata ptr %13, metadata !DIExpression()), !dbg !2842
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2860
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !2861
  ret ptr %14, !dbg !2862
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2863 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2870
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2867, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2868, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 0, metadata !2803, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %0, metadata !2804, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2870, metadata ptr %4, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i32 0, metadata !2814, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %1, metadata !2816, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %2, metadata !2817, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata i64 -1, metadata !2818, metadata !DIExpression()), !dbg !2874
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2877, !tbaa.struct !2687, !DIAssignID !2878
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2878, metadata ptr %4, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2879, metadata ptr undef, metadata !DIExpression()), !dbg !2874
  call void @llvm.dbg.value(metadata ptr %4, metadata !1706, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %0, metadata !1707, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %1, metadata !1708, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata ptr %4, metadata !1706, metadata !DIExpression()), !dbg !2880
  store i32 10, ptr %4, align 8, !dbg !2882, !tbaa !1649, !DIAssignID !2883
  call void @llvm.dbg.assign(metadata i32 10, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2883, metadata ptr %4, metadata !DIExpression()), !dbg !2874
  %5 = icmp ne ptr %0, null, !dbg !2884
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2885
  br i1 %7, label %9, label %8, !dbg !2885

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !2886
  unreachable, !dbg !2886

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2887
  store ptr %0, ptr %10, align 8, !dbg !2888, !tbaa !1720, !DIAssignID !2889
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2889, metadata ptr %10, metadata !DIExpression()), !dbg !2874
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2890
  store ptr %1, ptr %11, align 8, !dbg !2891, !tbaa !1723, !DIAssignID !2892
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2892, metadata ptr %11, metadata !DIExpression()), !dbg !2874
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2893
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !2894
  ret ptr %12, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2896 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2904
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2900, metadata !DIExpression()), !dbg !2905
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2901, metadata !DIExpression()), !dbg !2905
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2902, metadata !DIExpression()), !dbg !2905
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2903, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2904, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i32 0, metadata !2814, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %1, metadata !2816, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %2, metadata !2817, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 %3, metadata !2818, metadata !DIExpression()), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !2908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2909, !tbaa.struct !2687, !DIAssignID !2910
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(), metadata !2910, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2911, metadata ptr undef, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %0, metadata !1707, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %1, metadata !1708, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !2912
  store i32 10, ptr %5, align 8, !dbg !2914, !tbaa !1649, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i32 10, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2915, metadata ptr %5, metadata !DIExpression()), !dbg !2906
  %6 = icmp ne ptr %0, null, !dbg !2916
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2917
  br i1 %8, label %10, label %9, !dbg !2917

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !2918
  unreachable, !dbg !2918

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2919
  store ptr %0, ptr %11, align 8, !dbg !2920, !tbaa !1720, !DIAssignID !2921
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2921, metadata ptr %11, metadata !DIExpression()), !dbg !2906
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2922
  store ptr %1, ptr %12, align 8, !dbg !2923, !tbaa !1723, !DIAssignID !2924
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2809, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2924, metadata ptr %12, metadata !DIExpression()), !dbg !2906
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2925
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !2926
  ret ptr %13, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2934, metadata !DIExpression()), !dbg !2935
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2936
  ret ptr %4, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2938 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2945
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2947
  ret ptr %3, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2949 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2953, metadata !DIExpression()), !dbg !2955
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 -1, metadata !2934, metadata !DIExpression()), !dbg !2956
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2958
  ret ptr %3, !dbg !2959
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i32 0, metadata !2953, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata ptr %0, metadata !2954, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 -1, metadata !2934, metadata !DIExpression()), !dbg !2968
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2970
  ret ptr %2, !dbg !2971
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2972 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3012, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3014, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3015, metadata !DIExpression()), !dbg !3017
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3016, metadata !DIExpression()), !dbg !3017
  %7 = icmp eq ptr %1, null, !dbg !3018
  br i1 %7, label %10, label %8, !dbg !3020

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !3021
  br label %12, !dbg !3021

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #38, !dbg !3022
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #38, !dbg !3023
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !3023
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3024
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #38, !dbg !3025
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #38, !dbg !3025
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3026
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
  ], !dbg !3027

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #38, !dbg !3028
  %21 = load ptr, ptr %4, align 8, !dbg !3028, !tbaa !808
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !3028
  br label %147, !dbg !3030

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #38, !dbg !3031
  %25 = load ptr, ptr %4, align 8, !dbg !3031, !tbaa !808
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3031
  %27 = load ptr, ptr %26, align 8, !dbg !3031, !tbaa !808
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !3031
  br label %147, !dbg !3032

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #38, !dbg !3033
  %31 = load ptr, ptr %4, align 8, !dbg !3033, !tbaa !808
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3033
  %33 = load ptr, ptr %32, align 8, !dbg !3033, !tbaa !808
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3033
  %35 = load ptr, ptr %34, align 8, !dbg !3033, !tbaa !808
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !3033
  br label %147, !dbg !3034

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #38, !dbg !3035
  %39 = load ptr, ptr %4, align 8, !dbg !3035, !tbaa !808
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3035
  %41 = load ptr, ptr %40, align 8, !dbg !3035, !tbaa !808
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3035
  %43 = load ptr, ptr %42, align 8, !dbg !3035, !tbaa !808
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3035
  %45 = load ptr, ptr %44, align 8, !dbg !3035, !tbaa !808
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !3035
  br label %147, !dbg !3036

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #38, !dbg !3037
  %49 = load ptr, ptr %4, align 8, !dbg !3037, !tbaa !808
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3037
  %51 = load ptr, ptr %50, align 8, !dbg !3037, !tbaa !808
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3037
  %53 = load ptr, ptr %52, align 8, !dbg !3037, !tbaa !808
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3037
  %55 = load ptr, ptr %54, align 8, !dbg !3037, !tbaa !808
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3037
  %57 = load ptr, ptr %56, align 8, !dbg !3037, !tbaa !808
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !3037
  br label %147, !dbg !3038

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #38, !dbg !3039
  %61 = load ptr, ptr %4, align 8, !dbg !3039, !tbaa !808
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3039
  %63 = load ptr, ptr %62, align 8, !dbg !3039, !tbaa !808
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3039
  %65 = load ptr, ptr %64, align 8, !dbg !3039, !tbaa !808
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3039
  %67 = load ptr, ptr %66, align 8, !dbg !3039, !tbaa !808
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3039
  %69 = load ptr, ptr %68, align 8, !dbg !3039, !tbaa !808
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3039
  %71 = load ptr, ptr %70, align 8, !dbg !3039, !tbaa !808
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !3039
  br label %147, !dbg !3040

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #38, !dbg !3041
  %75 = load ptr, ptr %4, align 8, !dbg !3041, !tbaa !808
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3041
  %77 = load ptr, ptr %76, align 8, !dbg !3041, !tbaa !808
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3041
  %79 = load ptr, ptr %78, align 8, !dbg !3041, !tbaa !808
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3041
  %81 = load ptr, ptr %80, align 8, !dbg !3041, !tbaa !808
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3041
  %83 = load ptr, ptr %82, align 8, !dbg !3041, !tbaa !808
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3041
  %85 = load ptr, ptr %84, align 8, !dbg !3041, !tbaa !808
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3041
  %87 = load ptr, ptr %86, align 8, !dbg !3041, !tbaa !808
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !3041
  br label %147, !dbg !3042

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #38, !dbg !3043
  %91 = load ptr, ptr %4, align 8, !dbg !3043, !tbaa !808
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3043
  %93 = load ptr, ptr %92, align 8, !dbg !3043, !tbaa !808
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3043
  %95 = load ptr, ptr %94, align 8, !dbg !3043, !tbaa !808
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3043
  %97 = load ptr, ptr %96, align 8, !dbg !3043, !tbaa !808
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3043
  %99 = load ptr, ptr %98, align 8, !dbg !3043, !tbaa !808
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3043
  %101 = load ptr, ptr %100, align 8, !dbg !3043, !tbaa !808
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3043
  %103 = load ptr, ptr %102, align 8, !dbg !3043, !tbaa !808
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3043
  %105 = load ptr, ptr %104, align 8, !dbg !3043, !tbaa !808
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !3043
  br label %147, !dbg !3044

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #38, !dbg !3045
  %109 = load ptr, ptr %4, align 8, !dbg !3045, !tbaa !808
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3045
  %111 = load ptr, ptr %110, align 8, !dbg !3045, !tbaa !808
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3045
  %113 = load ptr, ptr %112, align 8, !dbg !3045, !tbaa !808
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3045
  %115 = load ptr, ptr %114, align 8, !dbg !3045, !tbaa !808
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3045
  %117 = load ptr, ptr %116, align 8, !dbg !3045, !tbaa !808
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3045
  %119 = load ptr, ptr %118, align 8, !dbg !3045, !tbaa !808
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3045
  %121 = load ptr, ptr %120, align 8, !dbg !3045, !tbaa !808
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3045
  %123 = load ptr, ptr %122, align 8, !dbg !3045, !tbaa !808
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3045
  %125 = load ptr, ptr %124, align 8, !dbg !3045, !tbaa !808
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !3045
  br label %147, !dbg !3046

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #38, !dbg !3047
  %129 = load ptr, ptr %4, align 8, !dbg !3047, !tbaa !808
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3047
  %131 = load ptr, ptr %130, align 8, !dbg !3047, !tbaa !808
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3047
  %133 = load ptr, ptr %132, align 8, !dbg !3047, !tbaa !808
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3047
  %135 = load ptr, ptr %134, align 8, !dbg !3047, !tbaa !808
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3047
  %137 = load ptr, ptr %136, align 8, !dbg !3047, !tbaa !808
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3047
  %139 = load ptr, ptr %138, align 8, !dbg !3047, !tbaa !808
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3047
  %141 = load ptr, ptr %140, align 8, !dbg !3047, !tbaa !808
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3047
  %143 = load ptr, ptr %142, align 8, !dbg !3047, !tbaa !808
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3047
  %145 = load ptr, ptr %144, align 8, !dbg !3047, !tbaa !808
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !3047
  br label %147, !dbg !3048

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3049
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3055, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3056, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3057, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3058, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3059, metadata !DIExpression()), !dbg !3060
  br label %6, !dbg !3061

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3063
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3059, metadata !DIExpression()), !dbg !3060
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3064
  %9 = load ptr, ptr %8, align 8, !dbg !3064, !tbaa !808
  %10 = icmp eq ptr %9, null, !dbg !3066
  %11 = add i64 %7, 1, !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3059, metadata !DIExpression()), !dbg !3060
  br i1 %10, label %12, label %6, !dbg !3066, !llvm.loop !3068

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3070
  ret void, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3072 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !3091
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3089, metadata !DIExpression(), metadata !3091, metadata ptr %6, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3083, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3084, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3085, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3087, metadata !DIExpression()), !dbg !3092
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3092
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3088, metadata !DIExpression()), !dbg !3092
  %10 = icmp ult i32 %9, 41, !dbg !3094
  br i1 %10, label %11, label %16, !dbg !3094

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !3094
  %13 = zext nneg i32 %9 to i64, !dbg !3094
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !3094
  %15 = add nuw nsw i32 %9, 8, !dbg !3094
  store i32 %15, ptr %4, align 8, !dbg !3094
  br label %19, !dbg !3094

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !3094
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !3094
  store ptr %18, ptr %7, align 8, !dbg !3094
  br label %19, !dbg !3094

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !3094
  %22 = load ptr, ptr %21, align 8, !dbg !3094
  store ptr %22, ptr %6, align 16, !dbg !3097, !tbaa !808
  %23 = icmp eq ptr %22, null, !dbg !3098
  br i1 %23, label %128, label %24, !dbg !3099

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3088, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3088, metadata !DIExpression()), !dbg !3092
  %25 = icmp ult i32 %20, 41, !dbg !3094
  br i1 %25, label %29, label %26, !dbg !3094

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !3094
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !3094
  store ptr %28, ptr %7, align 8, !dbg !3094
  br label %34, !dbg !3094

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !3094
  %31 = zext nneg i32 %20 to i64, !dbg !3094
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !3094
  %33 = add nuw nsw i32 %20, 8, !dbg !3094
  store i32 %33, ptr %4, align 8, !dbg !3094
  br label %34, !dbg !3094

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !3094
  %37 = load ptr, ptr %36, align 8, !dbg !3094
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3100
  store ptr %37, ptr %38, align 8, !dbg !3097, !tbaa !808
  %39 = icmp eq ptr %37, null, !dbg !3098
  br i1 %39, label %128, label %40, !dbg !3099

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3088, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3088, metadata !DIExpression()), !dbg !3092
  %41 = icmp ult i32 %35, 41, !dbg !3094
  br i1 %41, label %45, label %42, !dbg !3094

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !3094
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !3094
  store ptr %44, ptr %7, align 8, !dbg !3094
  br label %50, !dbg !3094

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !3094
  %47 = zext nneg i32 %35 to i64, !dbg !3094
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !3094
  %49 = add nuw nsw i32 %35, 8, !dbg !3094
  store i32 %49, ptr %4, align 8, !dbg !3094
  br label %50, !dbg !3094

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !3094
  %53 = load ptr, ptr %52, align 8, !dbg !3094
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3100
  store ptr %53, ptr %54, align 16, !dbg !3097, !tbaa !808
  %55 = icmp eq ptr %53, null, !dbg !3098
  br i1 %55, label %128, label %56, !dbg !3099

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3088, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3088, metadata !DIExpression()), !dbg !3092
  %57 = icmp ult i32 %51, 41, !dbg !3094
  br i1 %57, label %61, label %58, !dbg !3094

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !3094
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !3094
  store ptr %60, ptr %7, align 8, !dbg !3094
  br label %66, !dbg !3094

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !3094
  %63 = zext nneg i32 %51 to i64, !dbg !3094
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !3094
  %65 = add nuw nsw i32 %51, 8, !dbg !3094
  store i32 %65, ptr %4, align 8, !dbg !3094
  br label %66, !dbg !3094

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !3094
  %69 = load ptr, ptr %68, align 8, !dbg !3094
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3100
  store ptr %69, ptr %70, align 8, !dbg !3097, !tbaa !808
  %71 = icmp eq ptr %69, null, !dbg !3098
  br i1 %71, label %128, label %72, !dbg !3099

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3088, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3088, metadata !DIExpression()), !dbg !3092
  %73 = icmp ult i32 %67, 41, !dbg !3094
  br i1 %73, label %77, label %74, !dbg !3094

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !3094
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !3094
  store ptr %76, ptr %7, align 8, !dbg !3094
  br label %82, !dbg !3094

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !3094
  %79 = zext nneg i32 %67 to i64, !dbg !3094
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !3094
  %81 = add nuw nsw i32 %67, 8, !dbg !3094
  store i32 %81, ptr %4, align 8, !dbg !3094
  br label %82, !dbg !3094

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !3094
  %85 = load ptr, ptr %84, align 8, !dbg !3094
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3100
  store ptr %85, ptr %86, align 16, !dbg !3097, !tbaa !808
  %87 = icmp eq ptr %85, null, !dbg !3098
  br i1 %87, label %128, label %88, !dbg !3099

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3088, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3088, metadata !DIExpression()), !dbg !3092
  %89 = icmp ult i32 %83, 41, !dbg !3094
  br i1 %89, label %93, label %90, !dbg !3094

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !3094
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !3094
  store ptr %92, ptr %7, align 8, !dbg !3094
  br label %98, !dbg !3094

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !3094
  %95 = zext nneg i32 %83 to i64, !dbg !3094
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !3094
  %97 = add nuw nsw i32 %83, 8, !dbg !3094
  store i32 %97, ptr %4, align 8, !dbg !3094
  br label %98, !dbg !3094

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !3094
  %100 = load ptr, ptr %99, align 8, !dbg !3094
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3100
  store ptr %100, ptr %101, align 8, !dbg !3097, !tbaa !808
  %102 = icmp eq ptr %100, null, !dbg !3098
  br i1 %102, label %128, label %103, !dbg !3099

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3088, metadata !DIExpression()), !dbg !3092
  %104 = load ptr, ptr %7, align 8, !dbg !3094
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !3094
  store ptr %105, ptr %7, align 8, !dbg !3094
  %106 = load ptr, ptr %104, align 8, !dbg !3094
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3100
  store ptr %106, ptr %107, align 16, !dbg !3097, !tbaa !808
  %108 = icmp eq ptr %106, null, !dbg !3098
  br i1 %108, label %128, label %109, !dbg !3099

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3088, metadata !DIExpression()), !dbg !3092
  %110 = load ptr, ptr %7, align 8, !dbg !3094
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !3094
  store ptr %111, ptr %7, align 8, !dbg !3094
  %112 = load ptr, ptr %110, align 8, !dbg !3094
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3100
  store ptr %112, ptr %113, align 8, !dbg !3097, !tbaa !808
  %114 = icmp eq ptr %112, null, !dbg !3098
  br i1 %114, label %128, label %115, !dbg !3099

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3088, metadata !DIExpression()), !dbg !3092
  %116 = load ptr, ptr %7, align 8, !dbg !3094
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !3094
  store ptr %117, ptr %7, align 8, !dbg !3094
  %118 = load ptr, ptr %116, align 8, !dbg !3094
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3100
  store ptr %118, ptr %119, align 16, !dbg !3097, !tbaa !808
  %120 = icmp eq ptr %118, null, !dbg !3098
  br i1 %120, label %128, label %121, !dbg !3099

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3088, metadata !DIExpression()), !dbg !3092
  %122 = load ptr, ptr %7, align 8, !dbg !3094
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !3094
  store ptr %123, ptr %7, align 8, !dbg !3094
  %124 = load ptr, ptr %122, align 8, !dbg !3094
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3100
  store ptr %124, ptr %125, align 8, !dbg !3097, !tbaa !808
  %126 = icmp eq ptr %124, null, !dbg !3098
  %127 = select i1 %126, i64 9, i64 10, !dbg !3099
  br label %128, !dbg !3099

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !3101
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !3102
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !3103
  ret void, !dbg !3103
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3104 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !3117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3112, metadata !DIExpression(), metadata !3117, metadata ptr %5, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3108, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3109, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3110, metadata !DIExpression()), !dbg !3118
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3111, metadata !DIExpression()), !dbg !3118
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !3119
  call void @llvm.va_start(ptr nonnull %5), !dbg !3120
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !3121
  call void @llvm.va_end(ptr nonnull %5), !dbg !3122
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !3123
  ret void, !dbg !3123
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3124 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3125, !tbaa !808
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3125
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #38, !dbg !3126
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.104) #38, !dbg !3126
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19.105, i32 noundef 5) #38, !dbg !3127
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.106, ptr noundef nonnull @.str.21.107) #38, !dbg !3127
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !3128
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #38, !dbg !3128
  ret void, !dbg !3129
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3130 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3135, metadata !DIExpression()), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3138
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %2, metadata !3143, metadata !DIExpression()), !dbg !3144
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3152
  %5 = icmp eq ptr %4, null, !dbg !3154
  br i1 %5, label %6, label %7, !dbg !3156

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3157
  unreachable, !dbg !3157

7:                                                ; preds = %3
  ret ptr %4, !dbg !3158
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3140 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3142, metadata !DIExpression()), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3143, metadata !DIExpression()), !dbg !3159
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3161
  %5 = icmp eq ptr %4, null, !dbg !3163
  br i1 %5, label %6, label %7, !dbg !3164

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3165
  unreachable, !dbg !3165

7:                                                ; preds = %3
  ret ptr %4, !dbg !3166
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3167 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3171, metadata !DIExpression()), !dbg !3172
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3173
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3174
  %3 = icmp eq ptr %2, null, !dbg !3176
  br i1 %3, label %4, label %5, !dbg !3177

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3178
  unreachable, !dbg !3178

5:                                                ; preds = %1
  ret ptr %2, !dbg !3179
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3180 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3181 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3185, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %0, metadata !3187, metadata !DIExpression()), !dbg !3191
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3193
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3194
  %3 = icmp eq ptr %2, null, !dbg !3196
  br i1 %3, label %4, label %5, !dbg !3197

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3198
  unreachable, !dbg !3198

5:                                                ; preds = %1
  ret ptr %2, !dbg !3199
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3200 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3204, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %0, metadata !3171, metadata !DIExpression()), !dbg !3206
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3209
  %3 = icmp eq ptr %2, null, !dbg !3211
  br i1 %3, label %4, label %5, !dbg !3212

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3213
  unreachable, !dbg !3213

5:                                                ; preds = %1
  ret ptr %2, !dbg !3214
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3215 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3219, metadata !DIExpression()), !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3220, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3227
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3229
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3230
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3231
  %5 = icmp eq ptr %4, null, !dbg !3233
  br i1 %5, label %6, label %7, !dbg !3234

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3235
  unreachable, !dbg !3235

7:                                                ; preds = %2
  ret ptr %4, !dbg !3236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3237 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3238 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3242, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata ptr %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %1, metadata !3226, metadata !DIExpression()), !dbg !3251
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3253
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3255
  %5 = icmp eq ptr %4, null, !dbg !3257
  br i1 %5, label %6, label %7, !dbg !3258

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3259
  unreachable, !dbg !3259

7:                                                ; preds = %2
  ret ptr %4, !dbg !3260
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3265, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()), !dbg !3268
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3267, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %2, metadata !3273, metadata !DIExpression()), !dbg !3274
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3277
  %5 = icmp eq ptr %4, null, !dbg !3279
  br i1 %5, label %6, label %7, !dbg !3280

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !3281
  unreachable, !dbg !3281

7:                                                ; preds = %3
  ret ptr %4, !dbg !3282
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3283 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3289
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3288, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr null, metadata !3139, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3290
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3293
  %4 = icmp eq ptr %3, null, !dbg !3295
  br i1 %4, label %5, label %6, !dbg !3296

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3297
  unreachable, !dbg !3297

6:                                                ; preds = %2
  ret ptr %3, !dbg !3298
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3299 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3303, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr null, metadata !3265, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3267, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata ptr null, metadata !3269, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3273, metadata !DIExpression()), !dbg !3308
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !3310
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3311
  %4 = icmp eq ptr %3, null, !dbg !3313
  br i1 %4, label %5, label %6, !dbg !3314

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3315
  unreachable, !dbg !3315

6:                                                ; preds = %2
  ret ptr %3, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3317 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %0, metadata !743, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %1, metadata !744, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 1, metadata !745, metadata !DIExpression()), !dbg !3324
  %3 = load i64, ptr %1, align 8, !dbg !3326, !tbaa !2390
  call void @llvm.dbg.value(metadata i64 %3, metadata !746, metadata !DIExpression()), !dbg !3324
  %4 = icmp eq ptr %0, null, !dbg !3327
  br i1 %4, label %5, label %8, !dbg !3329

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3330
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3333
  br label %15, !dbg !3333

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3334
  %10 = add nuw i64 %9, 1, !dbg !3334
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3334
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3334
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3334
  call void @llvm.dbg.value(metadata i64 %13, metadata !746, metadata !DIExpression()), !dbg !3324
  br i1 %12, label %14, label %15, !dbg !3337

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !3338
  unreachable, !dbg !3338

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3324
  call void @llvm.dbg.value(metadata i64 %16, metadata !746, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %16, metadata !3142, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 1, metadata !3143, metadata !DIExpression()), !dbg !3339
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %17, metadata !3147, metadata !DIExpression()), !dbg !3342
  %18 = icmp eq ptr %17, null, !dbg !3344
  br i1 %18, label %19, label %20, !dbg !3345

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !3346
  unreachable, !dbg !3346

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !743, metadata !DIExpression()), !dbg !3324
  store i64 %16, ptr %1, align 8, !dbg !3347, !tbaa !2390
  ret ptr %17, !dbg !3348
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !738 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !743, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !744, metadata !DIExpression()), !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !745, metadata !DIExpression()), !dbg !3349
  %4 = load i64, ptr %1, align 8, !dbg !3350, !tbaa !2390
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !746, metadata !DIExpression()), !dbg !3349
  %5 = icmp eq ptr %0, null, !dbg !3351
  br i1 %5, label %6, label %13, !dbg !3352

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3353
  br i1 %7, label %8, label %20, !dbg !3354

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !746, metadata !DIExpression()), !dbg !3349
  %10 = icmp ugt i64 %2, 128, !dbg !3357
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3358
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !746, metadata !DIExpression()), !dbg !3349
  br label %20, !dbg !3359

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3360
  %15 = add nuw i64 %14, 1, !dbg !3360
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3360
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3360
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !746, metadata !DIExpression()), !dbg !3349
  br i1 %17, label %19, label %20, !dbg !3361

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !3362
  unreachable, !dbg !3362

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3349
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !746, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %21, metadata !3142, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %2, metadata !3143, metadata !DIExpression()), !dbg !3363
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !3365
  call void @llvm.dbg.value(metadata ptr %22, metadata !3147, metadata !DIExpression()), !dbg !3366
  %23 = icmp eq ptr %22, null, !dbg !3368
  br i1 %23, label %24, label %25, !dbg !3369

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !3370
  unreachable, !dbg !3370

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !743, metadata !DIExpression()), !dbg !3349
  store i64 %21, ptr %1, align 8, !dbg !3371, !tbaa !2390
  ret ptr %22, !dbg !3372
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !750 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !759, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !760, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !761, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !762, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !763, metadata !DIExpression()), !dbg !3373
  %6 = load i64, ptr %1, align 8, !dbg !3374, !tbaa !2390
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !764, metadata !DIExpression()), !dbg !3373
  %7 = ashr i64 %6, 1, !dbg !3375
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3375
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3375
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !765, metadata !DIExpression()), !dbg !3373
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3377
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !765, metadata !DIExpression()), !dbg !3373
  %12 = icmp sgt i64 %3, -1, !dbg !3378
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3380
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !765, metadata !DIExpression()), !dbg !3373
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3381
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3381
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !766, metadata !DIExpression()), !dbg !3373
  %18 = icmp slt i64 %17, 128, !dbg !3381
  %19 = select i1 %18, i64 128, i64 0, !dbg !3381
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3381
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !767, metadata !DIExpression()), !dbg !3373
  %21 = icmp eq i64 %20, 0, !dbg !3382
  br i1 %21, label %26, label %22, !dbg !3384

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !765, metadata !DIExpression()), !dbg !3373
  %24 = srem i64 %20, %4, !dbg !3387
  %25 = sub nsw i64 %20, %24, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !766, metadata !DIExpression()), !dbg !3373
  br label %26, !dbg !3389

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3373
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !766, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !765, metadata !DIExpression()), !dbg !3373
  %29 = icmp eq ptr %0, null, !dbg !3390
  br i1 %29, label %30, label %31, !dbg !3392

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3393, !tbaa !2390
  br label %31, !dbg !3394

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3395
  %33 = icmp slt i64 %32, %2, !dbg !3397
  br i1 %33, label %34, label %46, !dbg !3398

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3399
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3399
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3399
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !765, metadata !DIExpression()), !dbg !3373
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3400
  br i1 %40, label %45, label %41, !dbg !3400

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3401
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3401
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !766, metadata !DIExpression()), !dbg !3373
  br i1 %43, label %45, label %46, !dbg !3402

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !3403
  unreachable, !dbg !3403

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3373
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !766, metadata !DIExpression()), !dbg !3373
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !765, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.value(metadata ptr %0, metadata !3219, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %48, metadata !3220, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3222, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %48, metadata !3226, metadata !DIExpression()), !dbg !3406
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3408
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #44, !dbg !3409
  call void @llvm.dbg.value(metadata ptr %50, metadata !3147, metadata !DIExpression()), !dbg !3410
  %51 = icmp eq ptr %50, null, !dbg !3412
  br i1 %51, label %52, label %53, !dbg !3413

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !3414
  unreachable, !dbg !3414

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !759, metadata !DIExpression()), !dbg !3373
  store i64 %47, ptr %1, align 8, !dbg !3415, !tbaa !2390
  ret ptr %50, !dbg !3416
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3417 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3419, metadata !DIExpression()), !dbg !3420
  call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 1, metadata !3424, metadata !DIExpression()), !dbg !3425
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3428
  %3 = icmp eq ptr %2, null, !dbg !3430
  br i1 %3, label %4, label %5, !dbg !3431

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3432
  unreachable, !dbg !3432

5:                                                ; preds = %1
  ret ptr %2, !dbg !3433
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3434 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3421, metadata !DIExpression()), !dbg !3435
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3424, metadata !DIExpression()), !dbg !3435
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3436
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3437
  %4 = icmp eq ptr %3, null, !dbg !3439
  br i1 %4, label %5, label %6, !dbg !3440

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3441
  unreachable, !dbg !3441

6:                                                ; preds = %2
  ret ptr %3, !dbg !3442
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3443 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3445, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %0, metadata !3447, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 1, metadata !3450, metadata !DIExpression()), !dbg !3451
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 1, metadata !3456, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i64 1, metadata !3456, metadata !DIExpression()), !dbg !3457
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %2, metadata !3147, metadata !DIExpression()), !dbg !3460
  %3 = icmp eq ptr %2, null, !dbg !3462
  br i1 %3, label %4, label %5, !dbg !3463

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3464
  unreachable, !dbg !3464

5:                                                ; preds = %1
  ret ptr %2, !dbg !3465
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3447, metadata !DIExpression()), !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3450, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %0, metadata !3453, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata i64 %1, metadata !3456, metadata !DIExpression()), !dbg !3467
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3469
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3470
  %4 = icmp eq ptr %3, null, !dbg !3472
  br i1 %4, label %5, label %6, !dbg !3473

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3474
  unreachable, !dbg !3474

6:                                                ; preds = %2
  ret ptr %3, !dbg !3475
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3482
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3481, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %1, metadata !3171, metadata !DIExpression()), !dbg !3483
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3485
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3486
  %4 = icmp eq ptr %3, null, !dbg !3488
  br i1 %4, label %5, label %6, !dbg !3489

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3490
  unreachable, !dbg !3490

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3491, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3499
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3501
  ret ptr %3, !dbg !3502
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3503 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3509
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3508, metadata !DIExpression()), !dbg !3509
  call void @llvm.dbg.value(metadata i64 %1, metadata !3185, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3512
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3514
  call void @llvm.dbg.value(metadata ptr %3, metadata !3147, metadata !DIExpression()), !dbg !3515
  %4 = icmp eq ptr %3, null, !dbg !3517
  br i1 %4, label %5, label %6, !dbg !3518

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3519
  unreachable, !dbg !3519

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3491, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3520
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3520
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3522
  ret ptr %3, !dbg !3523
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3524 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3528, metadata !DIExpression()), !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3529, metadata !DIExpression()), !dbg !3531
  %3 = add nsw i64 %1, 1, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %3, metadata !3185, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %3, metadata !3187, metadata !DIExpression()), !dbg !3535
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3537
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3538
  %5 = icmp eq ptr %4, null, !dbg !3540
  br i1 %5, label %6, label %7, !dbg !3541

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !3542
  unreachable, !dbg !3542

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3530, metadata !DIExpression()), !dbg !3531
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3543
  store i8 0, ptr %8, align 1, !dbg !3544, !tbaa !880
  call void @llvm.dbg.value(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %1, metadata !3498, metadata !DIExpression()), !dbg !3545
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !3547
  ret ptr %4, !dbg !3548
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3549 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3551, metadata !DIExpression()), !dbg !3552
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !3553
  %3 = add i64 %2, 1, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %0, metadata !3480, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %3, metadata !3481, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata i64 %3, metadata !3171, metadata !DIExpression()), !dbg !3557
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3559
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3560
  %5 = icmp eq ptr %4, null, !dbg !3562
  br i1 %5, label %6, label %7, !dbg !3563

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !3564
  unreachable, !dbg !3564

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata ptr %0, metadata !3497, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %3, metadata !3498, metadata !DIExpression()), !dbg !3565
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !3567
  ret ptr %4, !dbg !3568
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3569 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3574, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3571, metadata !DIExpression()), !dbg !3575
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.118, ptr noundef nonnull @.str.2.119, i32 noundef 5) #38, !dbg !3574
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.120, ptr noundef %2) #38, !dbg !3574
  %3 = icmp eq i32 %1, 0, !dbg !3574
  tail call void @llvm.assume(i1 %3), !dbg !3574
  tail call void @abort() #40, !dbg !3576
  unreachable, !dbg !3576
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #35

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3577 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3615, metadata !DIExpression()), !dbg !3620
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3616, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3620
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3625
  %3 = load i32, ptr %0, align 8, !dbg !3627, !tbaa !3628
  %4 = and i32 %3, 32, !dbg !3629
  %5 = icmp eq i32 %4, 0, !dbg !3629
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3620
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !3630
  %7 = icmp eq i32 %6, 0, !dbg !3631
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3619, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3620
  br i1 %5, label %8, label %18, !dbg !3632

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3634
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3620
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3635
  %11 = xor i1 %7, true, !dbg !3635
  %12 = sext i1 %11 to i32, !dbg !3635
  br i1 %10, label %21, label %13, !dbg !3635

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !3636
  %15 = load i32, ptr %14, align 4, !dbg !3636, !tbaa !871
  %16 = icmp ne i32 %15, 9, !dbg !3637
  %17 = sext i1 %16 to i32, !dbg !3638
  br label %21, !dbg !3638

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3639

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !3641
  store i32 0, ptr %20, align 4, !dbg !3643, !tbaa !871
  br label %21, !dbg !3641

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3620
  ret i32 %22, !dbg !3644
}

; Function Attrs: nounwind
declare !dbg !3645 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3649 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3688, metadata !DIExpression()), !dbg !3691
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3692
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3689, metadata !DIExpression()), !dbg !3691
  %3 = icmp slt i32 %2, 0, !dbg !3693
  br i1 %3, label %4, label %6, !dbg !3695

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3696
  br label %24, !dbg !3697

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3698
  %8 = icmp eq i32 %7, 0, !dbg !3698
  br i1 %8, label %13, label %9, !dbg !3700

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3701
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !3702
  %12 = icmp eq i64 %11, -1, !dbg !3703
  br i1 %12, label %16, label %13, !dbg !3704

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !3705
  %15 = icmp eq i32 %14, 0, !dbg !3705
  br i1 %15, label %16, label %18, !dbg !3706

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3688, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3690, metadata !DIExpression()), !dbg !3691
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3707
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3690, metadata !DIExpression()), !dbg !3691
  br label %24, !dbg !3708

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !3709
  %20 = load i32, ptr %19, align 4, !dbg !3709, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3688, metadata !DIExpression()), !dbg !3691
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3690, metadata !DIExpression()), !dbg !3691
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3707
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3690, metadata !DIExpression()), !dbg !3691
  %22 = icmp eq i32 %20, 0, !dbg !3710
  br i1 %22, label %24, label %23, !dbg !3708

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3712, !tbaa !871
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3690, metadata !DIExpression()), !dbg !3691
  br label %24, !dbg !3714

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3691
  ret i32 %25, !dbg !3715
}

; Function Attrs: nofree nounwind
declare !dbg !3716 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3717 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3718 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3719 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3722 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3760, metadata !DIExpression()), !dbg !3761
  %2 = icmp eq ptr %0, null, !dbg !3762
  br i1 %2, label %6, label %3, !dbg !3764

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !3765
  %5 = icmp eq i32 %4, 0, !dbg !3765
  br i1 %5, label %6, label %8, !dbg !3766

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3767
  br label %16, !dbg !3768

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3769, metadata !DIExpression()), !dbg !3774
  %9 = load i32, ptr %0, align 8, !dbg !3776, !tbaa !3628
  %10 = and i32 %9, 256, !dbg !3778
  %11 = icmp eq i32 %10, 0, !dbg !3778
  br i1 %11, label %14, label %12, !dbg !3779

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !3780
  br label %14, !dbg !3780

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3781
  br label %16, !dbg !3782

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3761
  ret i32 %17, !dbg !3783
}

; Function Attrs: nofree nounwind
declare !dbg !3784 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3824, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3830
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3826, metadata !DIExpression()), !dbg !3830
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3831
  %5 = load ptr, ptr %4, align 8, !dbg !3831, !tbaa !3832
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3833
  %7 = load ptr, ptr %6, align 8, !dbg !3833, !tbaa !3834
  %8 = icmp eq ptr %5, %7, !dbg !3835
  br i1 %8, label %9, label %27, !dbg !3836

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3837
  %11 = load ptr, ptr %10, align 8, !dbg !3837, !tbaa !1342
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3838
  %13 = load ptr, ptr %12, align 8, !dbg !3838, !tbaa !3839
  %14 = icmp eq ptr %11, %13, !dbg !3840
  br i1 %14, label %15, label %27, !dbg !3841

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3842
  %17 = load ptr, ptr %16, align 8, !dbg !3842, !tbaa !3843
  %18 = icmp eq ptr %17, null, !dbg !3844
  br i1 %18, label %19, label %27, !dbg !3845

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !3846
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !3847
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3827, metadata !DIExpression()), !dbg !3848
  %22 = icmp eq i64 %21, -1, !dbg !3849
  br i1 %22, label %29, label %23, !dbg !3851

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3852, !tbaa !3628
  %25 = and i32 %24, -17, !dbg !3852
  store i32 %25, ptr %0, align 8, !dbg !3852, !tbaa !3628
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3853
  store i64 %21, ptr %26, align 8, !dbg !3854, !tbaa !3855
  br label %29, !dbg !3856

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3857
  br label %29, !dbg !3858

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3830
  ret i32 %30, !dbg !3859
}

; Function Attrs: nofree nounwind
declare !dbg !3860 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3863 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3868, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3869, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3870, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3871, metadata !DIExpression()), !dbg !3873
  %5 = icmp eq ptr %1, null, !dbg !3874
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3876
  %7 = select i1 %5, ptr @.str.131, ptr %1, !dbg !3876
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3870, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3869, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3868, metadata !DIExpression()), !dbg !3873
  %9 = icmp eq ptr %3, null, !dbg !3877
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3879
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3871, metadata !DIExpression()), !dbg !3873
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3872, metadata !DIExpression()), !dbg !3873
  %12 = icmp ult i64 %11, -3, !dbg !3881
  br i1 %12, label %13, label %17, !dbg !3883

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !3884
  %15 = icmp eq i32 %14, 0, !dbg !3884
  br i1 %15, label %16, label %29, !dbg !3885

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3886, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata ptr %10, metadata !3893, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i32 0, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 8, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i64 0, ptr %10, align 1, !dbg !3900
  br label %29, !dbg !3901

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3902
  br i1 %18, label %19, label %20, !dbg !3904

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !3905
  unreachable, !dbg !3905

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3906

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !3908
  br i1 %23, label %29, label %24, !dbg !3909

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3910
  br i1 %25, label %29, label %26, !dbg !3913

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3914, !tbaa !880
  %28 = zext i8 %27 to i32, !dbg !3915
  store i32 %28, ptr %6, align 4, !dbg !3916, !tbaa !871
  br label %29, !dbg !3917

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3873
  ret i64 %30, !dbg !3918
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3919 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !3925 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3927, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3931
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3932
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3930, metadata !DIExpression()), !dbg !3931
  br i1 %5, label %6, label %8, !dbg !3934

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !3935
  store i32 12, ptr %7, align 4, !dbg !3937, !tbaa !871
  br label %12, !dbg !3938

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3932
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3930, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata ptr %0, metadata !3939, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 %9, metadata !3942, metadata !DIExpression()), !dbg !3943
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3945
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !3946
  br label %12, !dbg !3947

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3931
  ret ptr %13, !dbg !3948
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3949 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3958
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3954, metadata !DIExpression(), metadata !3958, metadata ptr %2, metadata !DIExpression()), !dbg !3959
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3953, metadata !DIExpression()), !dbg !3959
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !3960
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !3961
  %4 = icmp eq i32 %3, 0, !dbg !3961
  br i1 %4, label %5, label %12, !dbg !3963

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3964, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata !838, metadata !3967, metadata !DIExpression()), !dbg !3968
  %6 = load i16, ptr %2, align 16, !dbg !3971
  %7 = icmp eq i16 %6, 67, !dbg !3971
  br i1 %7, label %11, label %8, !dbg !3972

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3964, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata ptr @.str.1.136, metadata !3967, metadata !DIExpression()), !dbg !3973
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.136, i64 6), !dbg !3975
  %10 = icmp eq i32 %9, 0, !dbg !3976
  br i1 %10, label %11, label %12, !dbg !3977

11:                                               ; preds = %8, %5
  br label %12, !dbg !3978

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3959
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !3979
  ret i1 %13, !dbg !3979
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3980 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3984, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3985, metadata !DIExpression()), !dbg !3987
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3986, metadata !DIExpression()), !dbg !3987
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !3988
  ret i32 %4, !dbg !3989
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3990 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3994, metadata !DIExpression()), !dbg !3995
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !3996
  ret ptr %2, !dbg !3997
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3998 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4002
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4003
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4001, metadata !DIExpression()), !dbg !4002
  ret ptr %2, !dbg !4004
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4005 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4007, metadata !DIExpression()), !dbg !4014
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4008, metadata !DIExpression()), !dbg !4014
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4009, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4015
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %4, metadata !4001, metadata !DIExpression()), !dbg !4015
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4010, metadata !DIExpression()), !dbg !4014
  %5 = icmp eq ptr %4, null, !dbg !4018
  br i1 %5, label %6, label %9, !dbg !4019

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4020
  br i1 %7, label %19, label %8, !dbg !4023

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4024, !tbaa !880
  br label %19, !dbg !4025

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !4026
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4011, metadata !DIExpression()), !dbg !4027
  %11 = icmp ult i64 %10, %2, !dbg !4028
  br i1 %11, label %12, label %14, !dbg !4030

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4031
  call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata ptr %4, metadata !4036, metadata !DIExpression()), !dbg !4038
  call void @llvm.dbg.value(metadata i64 %13, metadata !4037, metadata !DIExpression()), !dbg !4038
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !4040
  br label %19, !dbg !4041

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4042
  br i1 %15, label %19, label %16, !dbg !4045

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4046
  call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %4, metadata !4036, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 %17, metadata !4037, metadata !DIExpression()), !dbg !4048
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !4050
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4051
  store i8 0, ptr %18, align 1, !dbg !4052, !tbaa !880
  br label %19, !dbg !4053

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4054
  ret i32 %20, !dbg !4055
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
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !376, !380, !395, !693, !450, !725, !464, !478, !526, !727, !685, !734, !769, !771, !773, !775, !777, !709, !779, !781, !785, !787}
!llvm.ident = !{!789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789, !789}
!llvm.module.flags = !{!790, !791, !792, !793, !794, !795, !796}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/sync.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b8dff623ed78e0f8980b4530e39b085")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!196 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!394 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !395, file: !396, line: 66, type: !441, isLocal: false, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!397 = !{!110, !117}
!398 = !{!399, !401, !420, !422, !424, !426, !393, !428, !430, !432, !434, !439}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !396, line: 272, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "old_file_name", scope: !403, file: !396, line: 304, type: !115, isLocal: true, isDefinition: true)
!403 = distinct !DISubprogram(name: "verror_at_line", scope: !396, file: !396, line: 298, type: !404, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !413)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !68, !68, !115, !73, !115, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !408)
!408 = !{!409, !410, !411, !412}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !407, file: !396, baseType: !73, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !407, file: !396, baseType: !73, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !407, file: !396, baseType: !110, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !407, file: !396, baseType: !110, size: 64, offset: 128)
!413 = !{!414, !415, !416, !417, !418, !419}
!414 = !DILocalVariable(name: "status", arg: 1, scope: !403, file: !396, line: 298, type: !68)
!415 = !DILocalVariable(name: "errnum", arg: 2, scope: !403, file: !396, line: 298, type: !68)
!416 = !DILocalVariable(name: "file_name", arg: 3, scope: !403, file: !396, line: 298, type: !115)
!417 = !DILocalVariable(name: "line_number", arg: 4, scope: !403, file: !396, line: 298, type: !73)
!418 = !DILocalVariable(name: "message", arg: 5, scope: !403, file: !396, line: 298, type: !115)
!419 = !DILocalVariable(name: "args", arg: 6, scope: !403, file: !396, line: 298, type: !406)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "old_line_number", scope: !403, file: !396, line: 305, type: !73, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !396, line: 338, type: !233, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !265, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !396, line: 346, type: !243, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(name: "error_message_count", scope: !395, file: !396, line: 69, type: !73, isLocal: false, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !395, file: !396, line: 295, type: !68, isLocal: false, isDefinition: true)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !260, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !396, line: 208, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 21)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !396, line: 214, type: !19, isLocal: true, isDefinition: true)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{null}
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !446, file: !447, line: 506, type: !68, isLocal: true, isDefinition: true)
!446 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !447, file: !447, line: 485, type: !448, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !452)
!447 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!448 = !DISubroutineType(types: !449)
!449 = !{!68, !68, !68}
!450 = distinct !DICompileUnit(language: DW_LANG_C11, file: !447, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !451, splitDebugInlining: false, nameTableKind: None)
!451 = !{!444}
!452 = !{!453, !454, !455, !456, !459}
!453 = !DILocalVariable(name: "fd", arg: 1, scope: !446, file: !447, line: 485, type: !68)
!454 = !DILocalVariable(name: "target", arg: 2, scope: !446, file: !447, line: 485, type: !68)
!455 = !DILocalVariable(name: "result", scope: !446, file: !447, line: 487, type: !68)
!456 = !DILocalVariable(name: "flags", scope: !457, file: !447, line: 530, type: !68)
!457 = distinct !DILexicalBlock(scope: !458, file: !447, line: 529, column: 5)
!458 = distinct !DILexicalBlock(scope: !446, file: !447, line: 528, column: 7)
!459 = !DILocalVariable(name: "saved_errno", scope: !460, file: !447, line: 533, type: !68)
!460 = distinct !DILexicalBlock(scope: !461, file: !447, line: 532, column: 9)
!461 = distinct !DILexicalBlock(scope: !457, file: !447, line: 531, column: 11)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(name: "program_name", scope: !464, file: !465, line: 31, type: !115, isLocal: false, isDefinition: true)
!464 = distinct !DICompileUnit(language: DW_LANG_C11, file: !465, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !466, globals: !467, splitDebugInlining: false, nameTableKind: None)
!465 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!466 = !{!110, !109}
!467 = !{!462, !468, !470}
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !465, line: 46, type: !265, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !465, line: 49, type: !233, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(name: "utf07FF", scope: !474, file: !475, line: 46, type: !502, isLocal: true, isDefinition: true)
!474 = distinct !DISubprogram(name: "proper_name_lite", scope: !475, file: !475, line: 38, type: !476, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !480)
!475 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!476 = !DISubroutineType(types: !477)
!477 = !{!115, !115, !115}
!478 = distinct !DICompileUnit(language: DW_LANG_C11, file: !475, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !479, splitDebugInlining: false, nameTableKind: None)
!479 = !{!472}
!480 = !{!481, !482, !483, !484, !489}
!481 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !474, file: !475, line: 38, type: !115)
!482 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !474, file: !475, line: 38, type: !115)
!483 = !DILocalVariable(name: "translation", scope: !474, file: !475, line: 40, type: !115)
!484 = !DILocalVariable(name: "w", scope: !474, file: !475, line: 47, type: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !486, line: 37, baseType: !487)
!486 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !196, line: 57, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !196, line: 42, baseType: !73)
!489 = !DILocalVariable(name: "mbs", scope: !474, file: !475, line: 48, type: !490)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !492)
!491 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !494)
!493 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !494, file: !493, line: 15, baseType: !68, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !494, file: !493, line: 20, baseType: !498, size: 32, offset: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !493, line: 16, size: 32, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !498, file: !493, line: 18, baseType: !73, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !498, file: !493, line: 19, baseType: !233, size: 32)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !244)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !505, line: 78, type: !265, isLocal: true, isDefinition: true)
!505 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !505, line: 79, type: !238, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !505, line: 80, type: !126, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !505, line: 81, type: !126, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !505, line: 82, type: !218, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !505, line: 83, type: !243, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !505, line: 84, type: !265, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !505, line: 85, type: !260, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !505, line: 86, type: !260, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !505, line: 87, type: !265, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !526, file: !505, line: 76, type: !600, isLocal: false, isDefinition: true)
!526 = distinct !DICompileUnit(language: DW_LANG_C11, file: !505, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !527, retainedTypes: !535, globals: !536, splitDebugInlining: false, nameTableKind: None)
!527 = !{!528, !530, !79}
!528 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !529, line: 42, baseType: !73, size: 32, elements: !96)
!529 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!530 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !529, line: 254, baseType: !73, size: 32, elements: !531)
!531 = !{!532, !533, !534}
!532 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!533 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!534 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!535 = !{!110, !68, !111, !112}
!536 = !{!503, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !537, !541, !551, !553, !558, !560, !562, !564, !566, !589, !596, !598}
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !526, file: !505, line: 92, type: !539, isLocal: false, isDefinition: true)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 320, elements: !50)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !526, file: !505, line: 1040, type: !543, isLocal: false, isDefinition: true)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !505, line: 56, size: 448, elements: !544)
!544 = !{!545, !546, !547, !549, !550}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !543, file: !505, line: 59, baseType: !528, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !505, line: 62, baseType: !68, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !543, file: !505, line: 66, baseType: !548, size: 256, offset: 64)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !266)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !543, file: !505, line: 69, baseType: !115, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !543, file: !505, line: 72, baseType: !115, size: 64, offset: 384)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !526, file: !505, line: 107, type: !543, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "slot0", scope: !526, file: !505, line: 831, type: !555, isLocal: true, isDefinition: true)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 256)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !505, line: 321, type: !243, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !505, line: 357, type: !243, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !505, line: 358, type: !243, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !505, line: 199, type: !260, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "quote", scope: !568, file: !505, line: 228, type: !587, isLocal: true, isDefinition: true)
!568 = distinct !DISubprogram(name: "gettext_quote", scope: !505, file: !505, line: 197, type: !569, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!115, !115, !528}
!571 = !{!572, !573, !574, !575, !576}
!572 = !DILocalVariable(name: "msgid", arg: 1, scope: !568, file: !505, line: 197, type: !115)
!573 = !DILocalVariable(name: "s", arg: 2, scope: !568, file: !505, line: 197, type: !528)
!574 = !DILocalVariable(name: "translation", scope: !568, file: !505, line: 199, type: !115)
!575 = !DILocalVariable(name: "w", scope: !568, file: !505, line: 229, type: !485)
!576 = !DILocalVariable(name: "mbs", scope: !568, file: !505, line: 230, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !579, file: !493, line: 15, baseType: !68, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !579, file: !493, line: 20, baseType: !583, size: 32, offset: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !493, line: 16, size: 32, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !583, file: !493, line: 18, baseType: !73, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !583, file: !493, line: 19, baseType: !233, size: 32)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !588)
!588 = !{!245, !235}
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "slotvec", scope: !526, file: !505, line: 834, type: !591, isLocal: true, isDefinition: true)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !505, line: 823, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !505, line: 825, baseType: !112, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !592, file: !505, line: 826, baseType: !109, size: 64, offset: 64)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(name: "nslots", scope: !526, file: !505, line: 832, type: !68, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(name: "slotvec0", scope: !526, file: !505, line: 833, type: !592, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 704, elements: !602)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!602 = !{!603}
!603 = !DISubrange(count: 11)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !606, line: 67, type: !336, isLocal: true, isDefinition: true)
!606 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !606, line: 69, type: !260, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !606, line: 83, type: !260, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !606, line: 83, type: !233, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !606, line: 85, type: !243, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !606, line: 88, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 171)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !606, line: 88, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 34)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !606, line: 105, type: !310, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !606, line: 109, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 23)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !606, line: 113, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 28)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !606, line: 120, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 32)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !606, line: 127, type: !351, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !606, line: 134, type: !287, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !606, line: 142, type: !648, isLocal: true, isDefinition: true)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 44)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !606, line: 150, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 48)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !606, line: 159, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 52)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !606, line: 170, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 60)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !606, line: 248, type: !218, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !606, line: 248, type: !315, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !218, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !121, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !606, line: 254, type: !287, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !606, line: 259, type: !3, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !606, line: 259, type: !680, isLocal: true, isDefinition: true)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 29)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !685, file: !686, line: 26, type: !688, isLocal: false, isDefinition: true)
!685 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !687, splitDebugInlining: false, nameTableKind: None)
!686 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!687 = !{!683}
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 47)
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "exit_failure", scope: !693, file: !694, line: 24, type: !696, isLocal: false, isDefinition: true)
!693 = distinct !DICompileUnit(language: DW_LANG_C11, file: !694, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !695, splitDebugInlining: false, nameTableKind: None)
!694 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!695 = !{!691}
!696 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !699, line: 34, type: !59, isLocal: true, isDefinition: true)
!699 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !699, line: 34, type: !260, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !699, line: 34, type: !282, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !706, line: 108, type: !44, isLocal: true, isDefinition: true)
!706 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "internal_state", scope: !709, file: !706, line: 97, type: !712, isLocal: true, isDefinition: true)
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !706, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !710, globals: !711, splitDebugInlining: false, nameTableKind: None)
!710 = !{!110, !112, !117}
!711 = !{!704, !707}
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !491, line: 6, baseType: !713)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !493, line: 21, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 13, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !714, file: !493, line: 15, baseType: !68, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !714, file: !493, line: 20, baseType: !718, size: 32, offset: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !493, line: 16, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !718, file: !493, line: 18, baseType: !73, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !718, file: !493, line: 19, baseType: !233, size: 32)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !724, line: 35, type: !238, isLocal: true, isDefinition: true)
!724 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !606, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !728, retainedTypes: !732, globals: !733, splitDebugInlining: false, nameTableKind: None)
!728 = !{!729}
!729 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !606, line: 40, baseType: !73, size: 32, elements: !730)
!730 = !{!731}
!731 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!732 = !{!110}
!733 = !{!604, !607, !609, !611, !613, !615, !620, !625, !627, !632, !637, !642, !644, !646, !651, !656, !661, !666, !668, !670, !672, !674, !676, !678}
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !736, retainedTypes: !768, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!736 = !{!737, !749}
!737 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !738, file: !735, line: 188, baseType: !73, size: 32, elements: !747)
!738 = distinct !DISubprogram(name: "x2nrealloc", scope: !735, file: !735, line: 176, type: !739, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!110, !110, !741, !112}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!742 = !{!743, !744, !745, !746}
!743 = !DILocalVariable(name: "p", arg: 1, scope: !738, file: !735, line: 176, type: !110)
!744 = !DILocalVariable(name: "pn", arg: 2, scope: !738, file: !735, line: 176, type: !741)
!745 = !DILocalVariable(name: "s", arg: 3, scope: !738, file: !735, line: 176, type: !112)
!746 = !DILocalVariable(name: "n", scope: !738, file: !735, line: 178, type: !112)
!747 = !{!748}
!748 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!749 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !750, file: !735, line: 228, baseType: !73, size: 32, elements: !747)
!750 = distinct !DISubprogram(name: "xpalloc", scope: !735, file: !735, line: 223, type: !751, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !758)
!751 = !DISubroutineType(types: !752)
!752 = !{!110, !110, !753, !754, !756, !754}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !755, line: 130, baseType: !756)
!755 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !757, line: 18, baseType: !197)
!757 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767}
!759 = !DILocalVariable(name: "pa", arg: 1, scope: !750, file: !735, line: 223, type: !110)
!760 = !DILocalVariable(name: "pn", arg: 2, scope: !750, file: !735, line: 223, type: !753)
!761 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !750, file: !735, line: 223, type: !754)
!762 = !DILocalVariable(name: "n_max", arg: 4, scope: !750, file: !735, line: 223, type: !756)
!763 = !DILocalVariable(name: "s", arg: 5, scope: !750, file: !735, line: 223, type: !754)
!764 = !DILocalVariable(name: "n0", scope: !750, file: !735, line: 230, type: !754)
!765 = !DILocalVariable(name: "n", scope: !750, file: !735, line: 237, type: !754)
!766 = !DILocalVariable(name: "nbytes", scope: !750, file: !735, line: 248, type: !754)
!767 = !DILocalVariable(name: "adjusted_nbytes", scope: !750, file: !735, line: 252, type: !754)
!768 = !{!109, !110}
!769 = distinct !DICompileUnit(language: DW_LANG_C11, file: !699, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !770, splitDebugInlining: false, nameTableKind: None)
!770 = !{!697, !700, !702}
!771 = distinct !DICompileUnit(language: DW_LANG_C11, file: !772, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!772 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!773 = distinct !DICompileUnit(language: DW_LANG_C11, file: !774, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!774 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!775 = distinct !DICompileUnit(language: DW_LANG_C11, file: !776, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!776 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !778, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!778 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !782, splitDebugInlining: false, nameTableKind: None)
!782 = !{!783, !722}
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !724, line: 35, type: !243, isLocal: true, isDefinition: true)
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!789 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!790 = !{i32 7, !"Dwarf Version", i32 5}
!791 = !{i32 2, !"Debug Info Version", i32 3}
!792 = !{i32 1, !"wchar_size", i32 4}
!793 = !{i32 8, !"PIC Level", i32 2}
!794 = !{i32 7, !"PIE Level", i32 2}
!795 = !{i32 7, !"uwtable", i32 2}
!796 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!797 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 55, type: !798, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !68}
!800 = !{!801}
!801 = !DILocalVariable(name: "status", arg: 1, scope: !797, file: !2, line: 55, type: !68)
!802 = !DILocation(line: 0, scope: !797)
!803 = !DILocation(line: 57, column: 14, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !2, line: 57, column: 7)
!805 = !DILocation(line: 57, column: 7, scope: !797)
!806 = !DILocation(line: 58, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 58, column: 5)
!808 = !{!809, !809, i64 0}
!809 = !{!"any pointer", !810, i64 0}
!810 = !{!"omnipotent char", !811, i64 0}
!811 = !{!"Simple C/C++ TBAA"}
!812 = !DILocation(line: 61, column: 7, scope: !813)
!813 = distinct !DILexicalBlock(scope: !804, file: !2, line: 60, column: 5)
!814 = !DILocation(line: 62, column: 7, scope: !813)
!815 = !DILocation(line: 70, column: 7, scope: !813)
!816 = !DILocation(line: 73, column: 7, scope: !813)
!817 = !DILocation(line: 76, column: 7, scope: !813)
!818 = !DILocation(line: 77, column: 7, scope: !813)
!819 = !DILocalVariable(name: "program", arg: 1, scope: !820, file: !67, line: 836, type: !115)
!820 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !821, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !115}
!823 = !{!819, !824, !831, !832, !834, !835}
!824 = !DILocalVariable(name: "infomap", scope: !820, file: !67, line: 838, type: !825)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, size: 896, elements: !261)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !820, file: !67, line: 838, size: 128, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !827, file: !67, line: 838, baseType: !115, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !827, file: !67, line: 838, baseType: !115, size: 64, offset: 64)
!831 = !DILocalVariable(name: "node", scope: !820, file: !67, line: 848, type: !115)
!832 = !DILocalVariable(name: "map_prog", scope: !820, file: !67, line: 849, type: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!834 = !DILocalVariable(name: "lc_messages", scope: !820, file: !67, line: 861, type: !115)
!835 = !DILocalVariable(name: "url_program", scope: !820, file: !67, line: 874, type: !115)
!836 = !DILocation(line: 0, scope: !820, inlinedAt: !837)
!837 = distinct !DILocation(line: 78, column: 7, scope: !813)
!838 = !{}
!839 = !DILocation(line: 857, column: 3, scope: !820, inlinedAt: !837)
!840 = !DILocation(line: 861, column: 29, scope: !820, inlinedAt: !837)
!841 = !DILocation(line: 862, column: 7, scope: !842, inlinedAt: !837)
!842 = distinct !DILexicalBlock(scope: !820, file: !67, line: 862, column: 7)
!843 = !DILocation(line: 862, column: 19, scope: !842, inlinedAt: !837)
!844 = !DILocation(line: 862, column: 22, scope: !842, inlinedAt: !837)
!845 = !DILocation(line: 862, column: 7, scope: !820, inlinedAt: !837)
!846 = !DILocation(line: 868, column: 7, scope: !847, inlinedAt: !837)
!847 = distinct !DILexicalBlock(scope: !842, file: !67, line: 863, column: 5)
!848 = !DILocation(line: 870, column: 5, scope: !847, inlinedAt: !837)
!849 = !DILocation(line: 875, column: 3, scope: !820, inlinedAt: !837)
!850 = !DILocation(line: 877, column: 3, scope: !820, inlinedAt: !837)
!851 = !DILocation(line: 80, column: 3, scope: !797)
!852 = !DISubprogram(name: "dcgettext", scope: !853, file: !853, line: 51, type: !854, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!853 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!854 = !DISubroutineType(types: !855)
!855 = !{!109, !115, !115, !68}
!856 = !DISubprogram(name: "__fprintf_chk", scope: !857, file: !857, line: 93, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!858 = !DISubroutineType(types: !859)
!859 = !{!68, !860, !68, !861, null}
!860 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!861 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!862 = !DISubprogram(name: "__printf_chk", scope: !857, file: !857, line: 95, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!863 = !DISubroutineType(types: !864)
!864 = !{!68, !68, !861, null}
!865 = !DISubprogram(name: "fputs_unlocked", scope: !866, file: !866, line: 691, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!867 = !DISubroutineType(types: !868)
!868 = !{!68, !861, !860}
!869 = !DILocation(line: 0, scope: !146)
!870 = !DILocation(line: 581, column: 7, scope: !154)
!871 = !{!872, !872, i64 0}
!872 = !{!"int", !810, i64 0}
!873 = !DILocation(line: 581, column: 19, scope: !154)
!874 = !DILocation(line: 581, column: 7, scope: !146)
!875 = !DILocation(line: 585, column: 26, scope: !153)
!876 = !DILocation(line: 0, scope: !153)
!877 = !DILocation(line: 586, column: 23, scope: !153)
!878 = !DILocation(line: 586, column: 28, scope: !153)
!879 = !DILocation(line: 586, column: 32, scope: !153)
!880 = !{!810, !810, i64 0}
!881 = !DILocation(line: 586, column: 38, scope: !153)
!882 = !DILocalVariable(name: "__s1", arg: 1, scope: !883, file: !884, line: 1359, type: !115)
!883 = distinct !DISubprogram(name: "streq", scope: !884, file: !884, line: 1359, type: !885, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !887)
!884 = !DIFile(filename: "./lib/string.h", directory: "/src")
!885 = !DISubroutineType(types: !886)
!886 = !{!156, !115, !115}
!887 = !{!882, !888}
!888 = !DILocalVariable(name: "__s2", arg: 2, scope: !883, file: !884, line: 1359, type: !115)
!889 = !DILocation(line: 0, scope: !883, inlinedAt: !890)
!890 = distinct !DILocation(line: 586, column: 41, scope: !153)
!891 = !DILocation(line: 1361, column: 11, scope: !883, inlinedAt: !890)
!892 = !DILocation(line: 1361, column: 10, scope: !883, inlinedAt: !890)
!893 = !DILocation(line: 586, column: 19, scope: !153)
!894 = !DILocation(line: 587, column: 5, scope: !153)
!895 = !DILocation(line: 588, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !146, file: !67, line: 588, column: 7)
!897 = !DILocation(line: 588, column: 7, scope: !146)
!898 = !DILocation(line: 590, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !67, line: 589, column: 5)
!900 = !DILocation(line: 591, column: 7, scope: !899)
!901 = !DILocation(line: 595, column: 37, scope: !146)
!902 = !DILocation(line: 595, column: 35, scope: !146)
!903 = !DILocation(line: 596, column: 29, scope: !146)
!904 = !DILocation(line: 597, column: 8, scope: !162)
!905 = !DILocation(line: 597, column: 7, scope: !146)
!906 = !DILocation(line: 604, column: 24, scope: !161)
!907 = !DILocation(line: 604, column: 12, scope: !162)
!908 = !DILocation(line: 0, scope: !160)
!909 = !DILocation(line: 610, column: 16, scope: !160)
!910 = !DILocation(line: 610, column: 7, scope: !160)
!911 = !DILocation(line: 611, column: 21, scope: !160)
!912 = !{!913, !913, i64 0}
!913 = !{!"short", !810, i64 0}
!914 = !DILocation(line: 611, column: 19, scope: !160)
!915 = !DILocation(line: 611, column: 16, scope: !160)
!916 = !DILocation(line: 610, column: 30, scope: !160)
!917 = distinct !{!917, !910, !911, !918}
!918 = !{!"llvm.loop.mustprogress"}
!919 = !DILocation(line: 612, column: 18, scope: !920)
!920 = distinct !DILexicalBlock(scope: !160, file: !67, line: 612, column: 11)
!921 = !DILocation(line: 612, column: 11, scope: !160)
!922 = !DILocation(line: 620, column: 23, scope: !146)
!923 = !DILocation(line: 625, column: 39, scope: !146)
!924 = !DILocation(line: 626, column: 3, scope: !146)
!925 = !DILocation(line: 626, column: 10, scope: !146)
!926 = !DILocation(line: 626, column: 21, scope: !146)
!927 = !DILocation(line: 628, column: 44, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !67, line: 628, column: 11)
!929 = distinct !DILexicalBlock(scope: !146, file: !67, line: 627, column: 5)
!930 = !DILocation(line: 628, column: 32, scope: !928)
!931 = !DILocation(line: 628, column: 49, scope: !928)
!932 = !DILocation(line: 628, column: 11, scope: !929)
!933 = !DILocation(line: 630, column: 11, scope: !934)
!934 = distinct !DILexicalBlock(scope: !929, file: !67, line: 630, column: 11)
!935 = !DILocation(line: 630, column: 11, scope: !929)
!936 = !DILocation(line: 632, column: 26, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !67, line: 632, column: 15)
!938 = distinct !DILexicalBlock(scope: !934, file: !67, line: 631, column: 9)
!939 = !DILocation(line: 632, column: 34, scope: !937)
!940 = !DILocation(line: 632, column: 37, scope: !937)
!941 = !DILocation(line: 632, column: 15, scope: !938)
!942 = !DILocation(line: 636, column: 16, scope: !943)
!943 = distinct !DILexicalBlock(scope: !938, file: !67, line: 636, column: 15)
!944 = !DILocation(line: 636, column: 29, scope: !943)
!945 = !DILocation(line: 640, column: 16, scope: !929)
!946 = distinct !{!946, !924, !947, !918}
!947 = !DILocation(line: 641, column: 5, scope: !146)
!948 = !DILocation(line: 644, column: 3, scope: !146)
!949 = !DILocation(line: 0, scope: !883, inlinedAt: !950)
!950 = distinct !DILocation(line: 648, column: 31, scope: !146)
!951 = !DILocation(line: 0, scope: !883, inlinedAt: !952)
!952 = distinct !DILocation(line: 649, column: 31, scope: !146)
!953 = !DILocation(line: 0, scope: !883, inlinedAt: !954)
!954 = distinct !DILocation(line: 650, column: 31, scope: !146)
!955 = !DILocation(line: 0, scope: !883, inlinedAt: !956)
!956 = distinct !DILocation(line: 651, column: 31, scope: !146)
!957 = !DILocation(line: 0, scope: !883, inlinedAt: !958)
!958 = distinct !DILocation(line: 652, column: 31, scope: !146)
!959 = !DILocation(line: 0, scope: !883, inlinedAt: !960)
!960 = distinct !DILocation(line: 653, column: 31, scope: !146)
!961 = !DILocation(line: 0, scope: !883, inlinedAt: !962)
!962 = distinct !DILocation(line: 654, column: 31, scope: !146)
!963 = !DILocation(line: 0, scope: !883, inlinedAt: !964)
!964 = distinct !DILocation(line: 655, column: 31, scope: !146)
!965 = !DILocation(line: 0, scope: !883, inlinedAt: !966)
!966 = distinct !DILocation(line: 656, column: 31, scope: !146)
!967 = !DILocation(line: 0, scope: !883, inlinedAt: !968)
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
!986 = !DISubprogram(name: "setlocale", scope: !987, file: !987, line: 122, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!987 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!988 = !DISubroutineType(types: !989)
!989 = !{!109, !68, !115}
!990 = !DISubprogram(name: "strncmp", scope: !991, file: !991, line: 159, type: !992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!992 = !DISubroutineType(types: !993)
!993 = !{!68, !115, !115, !112}
!994 = !DISubprogram(name: "exit", scope: !995, file: !995, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!995 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!996 = !DISubprogram(name: "getenv", scope: !995, file: !995, line: 641, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!109, !115}
!999 = !DISubprogram(name: "strcmp", scope: !991, file: !991, line: 156, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!68, !115, !115}
!1002 = !DISubprogram(name: "strspn", scope: !991, file: !991, line: 297, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!114, !115, !115}
!1005 = !DISubprogram(name: "strchr", scope: !991, file: !991, line: 246, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!109, !115, !68}
!1008 = !DISubprogram(name: "__ctype_b_loc", scope: !80, file: !80, line: 79, type: !1009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!1014 = !DISubprogram(name: "strcspn", scope: !991, file: !991, line: 293, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubprogram(name: "fwrite_unlocked", scope: !866, file: !866, line: 704, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!112, !1018, !112, !112, !860}
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
!1043 = distinct !{!1043, !1041, !1044, !918, !1045}
!1044 = !DILocation(line: 200, column: 5, scope: !1021)
!1045 = !{!"llvm.loop.peeled.count", i32 1}
!1046 = !DILocation(line: 168, column: 8, scope: !1021)
!1047 = !DILocation(line: 191, column: 11, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 184, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 182, column: 5)
!1050 = distinct !{!1050, !1041, !1044, !918}
!1051 = !DILocation(line: 193, column: 9, scope: !1048)
!1052 = !DILocation(line: 195, column: 9, scope: !1048)
!1053 = !DILocation(line: 198, column: 11, scope: !1048)
!1054 = !DILocation(line: 204, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 204, column: 7)
!1056 = !DILocation(line: 202, column: 25, scope: !1021)
!1057 = !DILocation(line: 202, column: 32, scope: !1021)
!1058 = !DILocation(line: 204, column: 16, scope: !1055)
!1059 = !DILocation(line: 205, column: 5, scope: !1055)
!1060 = !DILocation(line: 208, column: 23, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 208, column: 7)
!1062 = !DILocation(line: 209, column: 5, scope: !1061)
!1063 = !DILocation(line: 212, column: 24, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 212, column: 7)
!1065 = !DILocation(line: 221, column: 7, scope: !1021)
!1066 = !DILocation(line: 222, column: 5, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1021, file: !2, line: 221, column: 7)
!1068 = !DILocation(line: 226, column: 31, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 225, column: 7)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 225, column: 7)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 224, column: 5)
!1072 = !DILocalVariable(name: "mode", arg: 1, scope: !1073, file: !2, line: 87, type: !72)
!1073 = distinct !DISubprogram(name: "sync_arg", scope: !2, file: !2, line: 87, type: !1074, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!156, !72, !115}
!1076 = !{!1072, !1077, !1078, !1079, !1080, !1083, !1084, !1085}
!1077 = !DILocalVariable(name: "file", arg: 2, scope: !1073, file: !2, line: 87, type: !115)
!1078 = !DILocalVariable(name: "open_flags", scope: !1073, file: !2, line: 89, type: !68)
!1079 = !DILocalVariable(name: "fd", scope: !1073, file: !2, line: 99, type: !68)
!1080 = !DILocalVariable(name: "rd_errno", scope: !1081, file: !2, line: 104, type: !68)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 101, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 100, column: 7)
!1083 = !DILocalVariable(name: "ret", scope: !1073, file: !2, line: 114, type: !156)
!1084 = !DILocalVariable(name: "fdflags", scope: !1073, file: !2, line: 117, type: !68)
!1085 = !DILocalVariable(name: "sync_status", scope: !1086, file: !2, line: 128, type: !68)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 127, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 126, column: 7)
!1088 = !DILocation(line: 0, scope: !1073, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 226, column: 15, scope: !1069)
!1090 = !DILocation(line: 99, column: 12, scope: !1073, inlinedAt: !1089)
!1091 = !DILocation(line: 100, column: 10, scope: !1082, inlinedAt: !1089)
!1092 = !DILocation(line: 100, column: 7, scope: !1073, inlinedAt: !1089)
!1093 = !DILocation(line: 104, column: 22, scope: !1081, inlinedAt: !1089)
!1094 = !DILocation(line: 0, scope: !1081, inlinedAt: !1089)
!1095 = !DILocation(line: 106, column: 14, scope: !1096, inlinedAt: !1089)
!1096 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 105, column: 11)
!1097 = !DILocation(line: 107, column: 14, scope: !1098, inlinedAt: !1089)
!1098 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 107, column: 11)
!1099 = !DILocation(line: 107, column: 11, scope: !1081, inlinedAt: !1089)
!1100 = !DILocation(line: 109, column: 11, scope: !1101, inlinedAt: !1089)
!1101 = distinct !DILexicalBlock(scope: !1098, file: !2, line: 108, column: 9)
!1102 = !DILocation(line: 117, column: 17, scope: !1073, inlinedAt: !1089)
!1103 = !DILocation(line: 118, column: 15, scope: !1104, inlinedAt: !1089)
!1104 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 118, column: 7)
!1105 = !DILocation(line: 119, column: 7, scope: !1104, inlinedAt: !1089)
!1106 = !DILocation(line: 119, column: 38, scope: !1104, inlinedAt: !1089)
!1107 = !DILocation(line: 119, column: 10, scope: !1104, inlinedAt: !1089)
!1108 = !DILocation(line: 119, column: 53, scope: !1104, inlinedAt: !1089)
!1109 = !DILocation(line: 118, column: 7, scope: !1073, inlinedAt: !1089)
!1110 = !DILocation(line: 0, scope: !1086, inlinedAt: !1089)
!1111 = !DILocation(line: 130, column: 7, scope: !1086, inlinedAt: !1089)
!1112 = !DILocation(line: 133, column: 25, scope: !1113, inlinedAt: !1089)
!1113 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 131, column: 9)
!1114 = !DILocation(line: 134, column: 11, scope: !1113, inlinedAt: !1089)
!1115 = !DILocation(line: 137, column: 25, scope: !1113, inlinedAt: !1089)
!1116 = !DILocation(line: 138, column: 11, scope: !1113, inlinedAt: !1089)
!1117 = !DILocation(line: 142, column: 25, scope: !1113, inlinedAt: !1089)
!1118 = !DILocation(line: 143, column: 11, scope: !1113, inlinedAt: !1089)
!1119 = !DILocation(line: 146, column: 11, scope: !1113, inlinedAt: !1089)
!1120 = !DILocation(line: 0, scope: !1113, inlinedAt: !1089)
!1121 = !DILocation(line: 149, column: 23, scope: !1122, inlinedAt: !1089)
!1122 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 149, column: 11)
!1123 = !DILocation(line: 149, column: 11, scope: !1086, inlinedAt: !1089)
!1124 = !DILocation(line: 156, column: 7, scope: !1125, inlinedAt: !1089)
!1125 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 156, column: 7)
!1126 = !DILocation(line: 156, column: 18, scope: !1125, inlinedAt: !1089)
!1127 = !DILocation(line: 156, column: 7, scope: !1073, inlinedAt: !1089)
!1128 = !DILocation(line: 158, column: 7, scope: !1129, inlinedAt: !1089)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 157, column: 5)
!1130 = !DILocation(line: 160, column: 5, scope: !1129, inlinedAt: !1089)
!1131 = !DILocation(line: 162, column: 10, scope: !1073, inlinedAt: !1089)
!1132 = !DILocation(line: 226, column: 12, scope: !1069)
!1133 = !DILocation(line: 225, column: 35, scope: !1069)
!1134 = !DILocation(line: 225, column: 21, scope: !1069)
!1135 = !DILocation(line: 225, column: 7, scope: !1070)
!1136 = distinct !{!1136, !1135, !1137, !918}
!1137 = !DILocation(line: 226, column: 43, scope: !1070)
!1138 = !DILocation(line: 229, column: 10, scope: !1021)
!1139 = !DILocation(line: 169, column: 8, scope: !1021)
!1140 = !DILocation(line: 229, column: 3, scope: !1021)
!1141 = !DISubprogram(name: "bindtextdomain", scope: !853, file: !853, line: 86, type: !1142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!109, !115, !115}
!1144 = !DISubprogram(name: "textdomain", scope: !853, file: !853, line: 82, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubprogram(name: "atexit", scope: !995, file: !995, line: 602, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!68, !441}
!1148 = !DISubprogram(name: "getopt_long", scope: !364, file: !364, line: 66, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!68, !68, !1151, !115, !1153, !369}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1154 = !DISubprogram(name: "sync", scope: !1155, file: !1155, line: 1005, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1156 = !DISubprogram(name: "open", scope: !1157, file: !1157, line: 181, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1157 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!68, !115, !68, null}
!1160 = !DISubprogram(name: "__errno_location", scope: !1161, file: !1161, line: 37, type: !1162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!369}
!1164 = !DISubprogram(name: "fdatasync", scope: !1155, file: !1155, line: 1150, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!68, !68}
!1167 = !DISubprogram(name: "fsync", scope: !1155, file: !1155, line: 989, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1168 = !DISubprogram(name: "syncfs", scope: !1155, file: !1155, line: 995, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1169 = !DISubprogram(name: "close", scope: !1155, file: !1155, line: 358, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1170 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !381, file: !381, line: 50, type: !821, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1171)
!1171 = !{!1172}
!1172 = !DILocalVariable(name: "file", arg: 1, scope: !1170, file: !381, line: 50, type: !115)
!1173 = !DILocation(line: 0, scope: !1170)
!1174 = !DILocation(line: 52, column: 13, scope: !1170)
!1175 = !DILocation(line: 53, column: 1, scope: !1170)
!1176 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !381, file: !381, line: 87, type: !1177, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !156}
!1179 = !{!1180}
!1180 = !DILocalVariable(name: "ignore", arg: 1, scope: !1176, file: !381, line: 87, type: !156)
!1181 = !DILocation(line: 0, scope: !1176)
!1182 = !DILocation(line: 89, column: 16, scope: !1176)
!1183 = !{!1184, !1184, i64 0}
!1184 = !{!"_Bool", !810, i64 0}
!1185 = !DILocation(line: 90, column: 1, scope: !1176)
!1186 = distinct !DISubprogram(name: "close_stdout", scope: !381, file: !381, line: 116, type: !442, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1187)
!1187 = !{!1188}
!1188 = !DILocalVariable(name: "write_error", scope: !1189, file: !381, line: 121, type: !115)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !381, line: 120, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !381, line: 118, column: 7)
!1191 = !DILocation(line: 118, column: 21, scope: !1190)
!1192 = !DILocation(line: 118, column: 7, scope: !1190)
!1193 = !DILocation(line: 118, column: 29, scope: !1190)
!1194 = !DILocation(line: 119, column: 7, scope: !1190)
!1195 = !DILocation(line: 119, column: 12, scope: !1190)
!1196 = !{i8 0, i8 2}
!1197 = !DILocation(line: 119, column: 25, scope: !1190)
!1198 = !DILocation(line: 119, column: 28, scope: !1190)
!1199 = !DILocation(line: 119, column: 34, scope: !1190)
!1200 = !DILocation(line: 118, column: 7, scope: !1186)
!1201 = !DILocation(line: 121, column: 33, scope: !1189)
!1202 = !DILocation(line: 0, scope: !1189)
!1203 = !DILocation(line: 122, column: 11, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1189, file: !381, line: 122, column: 11)
!1205 = !DILocation(line: 0, scope: !1204)
!1206 = !DILocation(line: 122, column: 11, scope: !1189)
!1207 = !DILocation(line: 123, column: 9, scope: !1204)
!1208 = !DILocation(line: 126, column: 9, scope: !1204)
!1209 = !DILocation(line: 128, column: 14, scope: !1189)
!1210 = !DILocation(line: 128, column: 7, scope: !1189)
!1211 = !DILocation(line: 133, column: 42, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1186, file: !381, line: 133, column: 7)
!1213 = !DILocation(line: 133, column: 28, scope: !1212)
!1214 = !DILocation(line: 133, column: 50, scope: !1212)
!1215 = !DILocation(line: 133, column: 7, scope: !1186)
!1216 = !DILocation(line: 134, column: 12, scope: !1212)
!1217 = !DILocation(line: 134, column: 5, scope: !1212)
!1218 = !DILocation(line: 135, column: 1, scope: !1186)
!1219 = !DISubprogram(name: "_exit", scope: !1155, file: !1155, line: 624, type: !798, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1220 = distinct !DISubprogram(name: "verror", scope: !396, file: !396, line: 251, type: !1221, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1223)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !68, !68, !115, !406}
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DILocalVariable(name: "status", arg: 1, scope: !1220, file: !396, line: 251, type: !68)
!1225 = !DILocalVariable(name: "errnum", arg: 2, scope: !1220, file: !396, line: 251, type: !68)
!1226 = !DILocalVariable(name: "message", arg: 3, scope: !1220, file: !396, line: 251, type: !115)
!1227 = !DILocalVariable(name: "args", arg: 4, scope: !1220, file: !396, line: 251, type: !406)
!1228 = !DILocation(line: 0, scope: !1220)
!1229 = !DILocation(line: 261, column: 3, scope: !1220)
!1230 = !DILocation(line: 265, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1220, file: !396, line: 265, column: 7)
!1232 = !DILocation(line: 265, column: 7, scope: !1220)
!1233 = !DILocation(line: 266, column: 5, scope: !1231)
!1234 = !DILocation(line: 272, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !396, line: 268, column: 5)
!1236 = !DILocation(line: 276, column: 3, scope: !1220)
!1237 = !DILocation(line: 282, column: 1, scope: !1220)
!1238 = distinct !DISubprogram(name: "flush_stdout", scope: !396, file: !396, line: 163, type: !442, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1239)
!1239 = !{!1240}
!1240 = !DILocalVariable(name: "stdout_fd", scope: !1238, file: !396, line: 166, type: !68)
!1241 = !DILocation(line: 0, scope: !1238)
!1242 = !DILocalVariable(name: "fd", arg: 1, scope: !1243, file: !396, line: 145, type: !68)
!1243 = distinct !DISubprogram(name: "is_open", scope: !396, file: !396, line: 145, type: !1165, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1244)
!1244 = !{!1242}
!1245 = !DILocation(line: 0, scope: !1243, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 182, column: 25, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1238, file: !396, line: 182, column: 7)
!1248 = !DILocation(line: 157, column: 15, scope: !1243, inlinedAt: !1246)
!1249 = !DILocation(line: 157, column: 12, scope: !1243, inlinedAt: !1246)
!1250 = !DILocation(line: 182, column: 7, scope: !1238)
!1251 = !DILocation(line: 184, column: 5, scope: !1247)
!1252 = !DILocation(line: 185, column: 1, scope: !1238)
!1253 = distinct !DISubprogram(name: "error_tail", scope: !396, file: !396, line: 219, type: !1221, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DILocalVariable(name: "status", arg: 1, scope: !1253, file: !396, line: 219, type: !68)
!1256 = !DILocalVariable(name: "errnum", arg: 2, scope: !1253, file: !396, line: 219, type: !68)
!1257 = !DILocalVariable(name: "message", arg: 3, scope: !1253, file: !396, line: 219, type: !115)
!1258 = !DILocalVariable(name: "args", arg: 4, scope: !1253, file: !396, line: 219, type: !406)
!1259 = distinct !DIAssignID()
!1260 = !DILocation(line: 0, scope: !1253)
!1261 = !DILocation(line: 229, column: 13, scope: !1253)
!1262 = !DILocalVariable(name: "__stream", arg: 1, scope: !1263, file: !857, line: 132, type: !1266)
!1263 = distinct !DISubprogram(name: "vfprintf", scope: !857, file: !857, line: 132, type: !1264, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1301)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!68, !1266, !861, !406}
!1266 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1269, file: !173, line: 51, baseType: !68, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1269, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1269, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1269, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1269, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1269, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1269, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1269, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1269, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1269, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1269, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1269, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1269, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1269, file: !173, line: 70, baseType: !1285, size: 64, offset: 832)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1269, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1269, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1269, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1269, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1269, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1269, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1269, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1269, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1269, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1269, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1269, file: !173, line: 93, baseType: !1285, size: 64, offset: 1344)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1269, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1269, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1269, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1269, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!1301 = !{!1262, !1302, !1303}
!1302 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1263, file: !857, line: 133, type: !861)
!1303 = !DILocalVariable(name: "__ap", arg: 3, scope: !1263, file: !857, line: 133, type: !406)
!1304 = !DILocation(line: 0, scope: !1263, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 229, column: 3, scope: !1253)
!1306 = !DILocation(line: 135, column: 10, scope: !1263, inlinedAt: !1305)
!1307 = !DILocation(line: 232, column: 3, scope: !1253)
!1308 = !DILocation(line: 233, column: 7, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1253, file: !396, line: 233, column: 7)
!1310 = !DILocation(line: 233, column: 7, scope: !1253)
!1311 = !DILocalVariable(name: "errbuf", scope: !1312, file: !396, line: 193, type: !1316)
!1312 = distinct !DISubprogram(name: "print_errno_message", scope: !396, file: !396, line: 188, type: !798, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1313)
!1313 = !{!1314, !1315, !1311}
!1314 = !DILocalVariable(name: "errnum", arg: 1, scope: !1312, file: !396, line: 188, type: !68)
!1315 = !DILocalVariable(name: "s", scope: !1312, file: !396, line: 190, type: !115)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 1024)
!1319 = !DILocation(line: 0, scope: !1312, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 234, column: 5, scope: !1309)
!1321 = !DILocation(line: 193, column: 3, scope: !1312, inlinedAt: !1320)
!1322 = !DILocation(line: 195, column: 7, scope: !1312, inlinedAt: !1320)
!1323 = !DILocation(line: 207, column: 9, scope: !1324, inlinedAt: !1320)
!1324 = distinct !DILexicalBlock(scope: !1312, file: !396, line: 207, column: 7)
!1325 = !DILocation(line: 207, column: 7, scope: !1312, inlinedAt: !1320)
!1326 = !DILocation(line: 208, column: 9, scope: !1324, inlinedAt: !1320)
!1327 = !DILocation(line: 208, column: 5, scope: !1324, inlinedAt: !1320)
!1328 = !DILocation(line: 214, column: 3, scope: !1312, inlinedAt: !1320)
!1329 = !DILocation(line: 216, column: 1, scope: !1312, inlinedAt: !1320)
!1330 = !DILocation(line: 234, column: 5, scope: !1309)
!1331 = !DILocation(line: 238, column: 3, scope: !1253)
!1332 = !DILocalVariable(name: "__c", arg: 1, scope: !1333, file: !1334, line: 101, type: !68)
!1333 = distinct !DISubprogram(name: "putc_unlocked", scope: !1334, file: !1334, line: 101, type: !1335, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1337)
!1334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!68, !68, !1267}
!1337 = !{!1332, !1338}
!1338 = !DILocalVariable(name: "__stream", arg: 2, scope: !1333, file: !1334, line: 101, type: !1267)
!1339 = !DILocation(line: 0, scope: !1333, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 238, column: 3, scope: !1253)
!1341 = !DILocation(line: 103, column: 10, scope: !1333, inlinedAt: !1340)
!1342 = !{!1343, !809, i64 40}
!1343 = !{!"_IO_FILE", !872, i64 0, !809, i64 8, !809, i64 16, !809, i64 24, !809, i64 32, !809, i64 40, !809, i64 48, !809, i64 56, !809, i64 64, !809, i64 72, !809, i64 80, !809, i64 88, !809, i64 96, !809, i64 104, !872, i64 112, !872, i64 116, !1344, i64 120, !913, i64 128, !810, i64 130, !810, i64 131, !809, i64 136, !1344, i64 144, !809, i64 152, !809, i64 160, !809, i64 168, !809, i64 176, !1344, i64 184, !872, i64 192, !810, i64 196}
!1344 = !{!"long", !810, i64 0}
!1345 = !{!1343, !809, i64 48}
!1346 = !{!"branch_weights", i32 2000, i32 1}
!1347 = !DILocation(line: 240, column: 3, scope: !1253)
!1348 = !DILocation(line: 241, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1253, file: !396, line: 241, column: 7)
!1350 = !DILocation(line: 241, column: 7, scope: !1253)
!1351 = !DILocation(line: 242, column: 5, scope: !1349)
!1352 = !DILocation(line: 243, column: 1, scope: !1253)
!1353 = !DISubprogram(name: "__vfprintf_chk", scope: !857, file: !857, line: 96, type: !1354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!68, !1266, !68, !861, !406}
!1356 = !DISubprogram(name: "strerror_r", scope: !991, file: !991, line: 444, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!109, !68, !109, !112}
!1359 = !DISubprogram(name: "__overflow", scope: !866, file: !866, line: 886, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!68, !1267, !68}
!1362 = !DISubprogram(name: "fflush_unlocked", scope: !866, file: !866, line: 239, type: !1363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!68, !1267}
!1365 = !DISubprogram(name: "fcntl", scope: !1157, file: !1157, line: 149, type: !1366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!68, !68, !68, null}
!1368 = distinct !DISubprogram(name: "error", scope: !396, file: !396, line: 285, type: !1369, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !68, !68, !115, null}
!1371 = !{!1372, !1373, !1374, !1375}
!1372 = !DILocalVariable(name: "status", arg: 1, scope: !1368, file: !396, line: 285, type: !68)
!1373 = !DILocalVariable(name: "errnum", arg: 2, scope: !1368, file: !396, line: 285, type: !68)
!1374 = !DILocalVariable(name: "message", arg: 3, scope: !1368, file: !396, line: 285, type: !115)
!1375 = !DILocalVariable(name: "ap", scope: !1368, file: !396, line: 287, type: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !866, line: 52, baseType: !1377)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1378, line: 12, baseType: !1379)
!1378 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !396, baseType: !1380)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !45)
!1381 = distinct !DIAssignID()
!1382 = !DILocation(line: 0, scope: !1368)
!1383 = !DILocation(line: 287, column: 3, scope: !1368)
!1384 = !DILocation(line: 288, column: 3, scope: !1368)
!1385 = !DILocation(line: 289, column: 3, scope: !1368)
!1386 = !DILocation(line: 290, column: 3, scope: !1368)
!1387 = !DILocation(line: 291, column: 1, scope: !1368)
!1388 = !DILocation(line: 0, scope: !403)
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
!1427 = !DILocalVariable(name: "ap", scope: !1418, file: !396, line: 362, type: !1376)
!1428 = distinct !DIAssignID()
!1429 = !DILocation(line: 0, scope: !1418)
!1430 = !DILocation(line: 362, column: 3, scope: !1418)
!1431 = !DILocation(line: 363, column: 3, scope: !1418)
!1432 = !DILocation(line: 364, column: 3, scope: !1418)
!1433 = !DILocation(line: 366, column: 3, scope: !1418)
!1434 = !DILocation(line: 367, column: 1, scope: !1418)
!1435 = distinct !DISubprogram(name: "rpl_fcntl", scope: !447, file: !447, line: 202, type: !1366, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !1436)
!1436 = !{!1437, !1438, !1439, !1450, !1451, !1454, !1456, !1460}
!1437 = !DILocalVariable(name: "fd", arg: 1, scope: !1435, file: !447, line: 202, type: !68)
!1438 = !DILocalVariable(name: "action", arg: 2, scope: !1435, file: !447, line: 202, type: !68)
!1439 = !DILocalVariable(name: "arg", scope: !1435, file: !447, line: 208, type: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1441, line: 12, baseType: !1442)
!1441 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !447, baseType: !1443)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 192, elements: !45)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1444, file: !447, line: 208, baseType: !73, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1444, file: !447, line: 208, baseType: !73, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1444, file: !447, line: 208, baseType: !110, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1444, file: !447, line: 208, baseType: !110, size: 64, offset: 128)
!1450 = !DILocalVariable(name: "result", scope: !1435, file: !447, line: 211, type: !68)
!1451 = !DILocalVariable(name: "target", scope: !1452, file: !447, line: 216, type: !68)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !447, line: 215, column: 7)
!1453 = distinct !DILexicalBlock(scope: !1435, file: !447, line: 213, column: 5)
!1454 = !DILocalVariable(name: "target", scope: !1455, file: !447, line: 223, type: !68)
!1455 = distinct !DILexicalBlock(scope: !1453, file: !447, line: 222, column: 7)
!1456 = !DILocalVariable(name: "x", scope: !1457, file: !447, line: 418, type: !68)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !447, line: 417, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !447, line: 261, column: 11)
!1459 = distinct !DILexicalBlock(scope: !1453, file: !447, line: 258, column: 7)
!1460 = !DILocalVariable(name: "p", scope: !1461, file: !447, line: 426, type: !110)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !447, line: 425, column: 13)
!1462 = distinct !DIAssignID()
!1463 = !DILocation(line: 0, scope: !1435)
!1464 = !DILocation(line: 208, column: 3, scope: !1435)
!1465 = !DILocation(line: 209, column: 3, scope: !1435)
!1466 = !DILocation(line: 212, column: 3, scope: !1435)
!1467 = !DILocation(line: 216, column: 22, scope: !1452)
!1468 = distinct !DIAssignID()
!1469 = distinct !DIAssignID()
!1470 = !DILocation(line: 0, scope: !1452)
!1471 = !DILocalVariable(name: "fd", arg: 1, scope: !1472, file: !447, line: 444, type: !68)
!1472 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !447, file: !447, line: 444, type: !448, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !1473)
!1473 = !{!1471, !1474, !1475}
!1474 = !DILocalVariable(name: "target", arg: 2, scope: !1472, file: !447, line: 444, type: !68)
!1475 = !DILocalVariable(name: "result", scope: !1472, file: !447, line: 446, type: !68)
!1476 = !DILocation(line: 0, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 217, column: 18, scope: !1452)
!1478 = !DILocation(line: 479, column: 12, scope: !1472, inlinedAt: !1477)
!1479 = !DILocation(line: 223, column: 22, scope: !1455)
!1480 = distinct !DIAssignID()
!1481 = distinct !DIAssignID()
!1482 = !DILocation(line: 0, scope: !1455)
!1483 = !DILocation(line: 0, scope: !446, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 224, column: 18, scope: !1455)
!1485 = !DILocation(line: 507, column: 12, scope: !1486, inlinedAt: !1484)
!1486 = distinct !DILexicalBlock(scope: !446, file: !447, line: 507, column: 7)
!1487 = !DILocation(line: 507, column: 9, scope: !1486, inlinedAt: !1484)
!1488 = !DILocation(line: 507, column: 7, scope: !446, inlinedAt: !1484)
!1489 = !DILocation(line: 509, column: 16, scope: !1490, inlinedAt: !1484)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !447, line: 508, column: 5)
!1491 = !DILocation(line: 510, column: 13, scope: !1492, inlinedAt: !1484)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !447, line: 510, column: 11)
!1493 = !DILocation(line: 510, column: 23, scope: !1492, inlinedAt: !1484)
!1494 = !DILocation(line: 510, column: 26, scope: !1492, inlinedAt: !1484)
!1495 = !DILocation(line: 510, column: 32, scope: !1492, inlinedAt: !1484)
!1496 = !DILocation(line: 510, column: 11, scope: !1490, inlinedAt: !1484)
!1497 = !DILocation(line: 512, column: 30, scope: !1498, inlinedAt: !1484)
!1498 = distinct !DILexicalBlock(scope: !1492, file: !447, line: 511, column: 9)
!1499 = !DILocation(line: 528, column: 19, scope: !458, inlinedAt: !1484)
!1500 = !DILocation(line: 0, scope: !1472, inlinedAt: !1501)
!1501 = distinct !DILocation(line: 520, column: 20, scope: !1502, inlinedAt: !1484)
!1502 = distinct !DILexicalBlock(scope: !1492, file: !447, line: 519, column: 9)
!1503 = !DILocation(line: 479, column: 12, scope: !1472, inlinedAt: !1501)
!1504 = !DILocation(line: 521, column: 22, scope: !1505, inlinedAt: !1484)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !447, line: 521, column: 15)
!1506 = !DILocation(line: 521, column: 15, scope: !1502, inlinedAt: !1484)
!1507 = !DILocation(line: 522, column: 32, scope: !1505, inlinedAt: !1484)
!1508 = !DILocation(line: 522, column: 13, scope: !1505, inlinedAt: !1484)
!1509 = !DILocation(line: 0, scope: !1472, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 527, column: 14, scope: !1486, inlinedAt: !1484)
!1511 = !DILocation(line: 479, column: 12, scope: !1472, inlinedAt: !1510)
!1512 = !DILocation(line: 0, scope: !1486, inlinedAt: !1484)
!1513 = !DILocation(line: 528, column: 9, scope: !458, inlinedAt: !1484)
!1514 = !DILocation(line: 530, column: 19, scope: !457, inlinedAt: !1484)
!1515 = !DILocation(line: 0, scope: !457, inlinedAt: !1484)
!1516 = !DILocation(line: 531, column: 17, scope: !461, inlinedAt: !1484)
!1517 = !DILocation(line: 531, column: 21, scope: !461, inlinedAt: !1484)
!1518 = !DILocation(line: 531, column: 54, scope: !461, inlinedAt: !1484)
!1519 = !DILocation(line: 531, column: 24, scope: !461, inlinedAt: !1484)
!1520 = !DILocation(line: 531, column: 68, scope: !461, inlinedAt: !1484)
!1521 = !DILocation(line: 531, column: 11, scope: !457, inlinedAt: !1484)
!1522 = !DILocation(line: 533, column: 29, scope: !460, inlinedAt: !1484)
!1523 = !DILocation(line: 0, scope: !460, inlinedAt: !1484)
!1524 = !DILocation(line: 534, column: 11, scope: !460, inlinedAt: !1484)
!1525 = !DILocation(line: 535, column: 17, scope: !460, inlinedAt: !1484)
!1526 = !DILocation(line: 537, column: 9, scope: !460, inlinedAt: !1484)
!1527 = !DILocation(line: 329, column: 22, scope: !1458)
!1528 = !DILocation(line: 330, column: 13, scope: !1458)
!1529 = !DILocation(line: 418, column: 23, scope: !1457)
!1530 = distinct !DIAssignID()
!1531 = distinct !DIAssignID()
!1532 = !DILocation(line: 0, scope: !1457)
!1533 = !DILocation(line: 419, column: 24, scope: !1457)
!1534 = !DILocation(line: 421, column: 13, scope: !1458)
!1535 = !DILocation(line: 426, column: 25, scope: !1461)
!1536 = distinct !DIAssignID()
!1537 = distinct !DIAssignID()
!1538 = !DILocation(line: 0, scope: !1461)
!1539 = !DILocation(line: 427, column: 24, scope: !1461)
!1540 = !DILocation(line: 429, column: 13, scope: !1458)
!1541 = !DILocation(line: 0, scope: !1453)
!1542 = !DILocation(line: 438, column: 3, scope: !1435)
!1543 = !DILocation(line: 441, column: 1, scope: !1435)
!1544 = !DILocation(line: 440, column: 3, scope: !1435)
!1545 = distinct !DISubprogram(name: "getprogname", scope: !726, file: !726, line: 54, type: !1546, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!115}
!1548 = !DILocation(line: 58, column: 10, scope: !1545)
!1549 = !DILocation(line: 58, column: 3, scope: !1545)
!1550 = distinct !DISubprogram(name: "set_program_name", scope: !465, file: !465, line: 37, type: !821, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1551)
!1551 = !{!1552, !1553, !1554}
!1552 = !DILocalVariable(name: "argv0", arg: 1, scope: !1550, file: !465, line: 37, type: !115)
!1553 = !DILocalVariable(name: "slash", scope: !1550, file: !465, line: 44, type: !115)
!1554 = !DILocalVariable(name: "base", scope: !1550, file: !465, line: 45, type: !115)
!1555 = !DILocation(line: 0, scope: !1550)
!1556 = !DILocation(line: 44, column: 23, scope: !1550)
!1557 = !DILocation(line: 45, column: 22, scope: !1550)
!1558 = !DILocation(line: 46, column: 17, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !465, line: 46, column: 7)
!1560 = !DILocation(line: 46, column: 9, scope: !1559)
!1561 = !DILocation(line: 46, column: 25, scope: !1559)
!1562 = !DILocation(line: 46, column: 40, scope: !1559)
!1563 = !DILocalVariable(name: "__s1", arg: 1, scope: !1564, file: !884, line: 974, type: !1019)
!1564 = distinct !DISubprogram(name: "memeq", scope: !884, file: !884, line: 974, type: !1565, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !464, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!156, !1019, !1019, !112}
!1567 = !{!1563, !1568, !1569}
!1568 = !DILocalVariable(name: "__s2", arg: 2, scope: !1564, file: !884, line: 974, type: !1019)
!1569 = !DILocalVariable(name: "__n", arg: 3, scope: !1564, file: !884, line: 974, type: !112)
!1570 = !DILocation(line: 0, scope: !1564, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 46, column: 28, scope: !1559)
!1572 = !DILocation(line: 976, column: 11, scope: !1564, inlinedAt: !1571)
!1573 = !DILocation(line: 976, column: 10, scope: !1564, inlinedAt: !1571)
!1574 = !DILocation(line: 46, column: 7, scope: !1550)
!1575 = !DILocation(line: 49, column: 11, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !465, line: 49, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1559, file: !465, line: 47, column: 5)
!1578 = !DILocation(line: 49, column: 36, scope: !1576)
!1579 = !DILocation(line: 49, column: 11, scope: !1577)
!1580 = !DILocation(line: 65, column: 16, scope: !1550)
!1581 = !DILocation(line: 71, column: 27, scope: !1550)
!1582 = !DILocation(line: 74, column: 33, scope: !1550)
!1583 = !DILocation(line: 76, column: 1, scope: !1550)
!1584 = !DISubprogram(name: "strrchr", scope: !991, file: !991, line: 273, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1585 = distinct !DIAssignID()
!1586 = !DILocation(line: 0, scope: !474)
!1587 = distinct !DIAssignID()
!1588 = !DILocation(line: 40, column: 29, scope: !474)
!1589 = !DILocation(line: 41, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !474, file: !475, line: 41, column: 7)
!1591 = !DILocation(line: 41, column: 7, scope: !474)
!1592 = !DILocation(line: 47, column: 3, scope: !474)
!1593 = !DILocation(line: 48, column: 3, scope: !474)
!1594 = !DILocalVariable(name: "ps", arg: 1, scope: !1595, file: !1596, line: 1135, type: !1599)
!1595 = distinct !DISubprogram(name: "mbszero", scope: !1596, file: !1596, line: 1135, type: !1597, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1600)
!1596 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1600 = !{!1594}
!1601 = !DILocation(line: 0, scope: !1595, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 48, column: 18, scope: !474)
!1603 = !DILocalVariable(name: "__dest", arg: 1, scope: !1604, file: !1605, line: 57, type: !110)
!1604 = distinct !DISubprogram(name: "memset", scope: !1605, file: !1605, line: 57, type: !1606, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !1608)
!1605 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!110, !110, !68, !112}
!1608 = !{!1603, !1609, !1610}
!1609 = !DILocalVariable(name: "__ch", arg: 2, scope: !1604, file: !1605, line: 57, type: !68)
!1610 = !DILocalVariable(name: "__len", arg: 3, scope: !1604, file: !1605, line: 57, type: !112)
!1611 = !DILocation(line: 0, scope: !1604, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 1137, column: 3, scope: !1595, inlinedAt: !1602)
!1613 = !DILocation(line: 59, column: 10, scope: !1604, inlinedAt: !1612)
!1614 = !DILocation(line: 49, column: 7, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !474, file: !475, line: 49, column: 7)
!1616 = !DILocation(line: 49, column: 39, scope: !1615)
!1617 = !DILocation(line: 49, column: 44, scope: !1615)
!1618 = !DILocation(line: 54, column: 1, scope: !474)
!1619 = !DISubprogram(name: "mbrtoc32", scope: !486, file: !486, line: 57, type: !1620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!112, !1622, !861, !112, !1624}
!1622 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1599)
!1625 = distinct !DISubprogram(name: "clone_quoting_options", scope: !505, file: !505, line: 113, type: !1626, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1629)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!1628, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1629 = !{!1630, !1631, !1632}
!1630 = !DILocalVariable(name: "o", arg: 1, scope: !1625, file: !505, line: 113, type: !1628)
!1631 = !DILocalVariable(name: "saved_errno", scope: !1625, file: !505, line: 115, type: !68)
!1632 = !DILocalVariable(name: "p", scope: !1625, file: !505, line: 116, type: !1628)
!1633 = !DILocation(line: 0, scope: !1625)
!1634 = !DILocation(line: 115, column: 21, scope: !1625)
!1635 = !DILocation(line: 116, column: 40, scope: !1625)
!1636 = !DILocation(line: 116, column: 31, scope: !1625)
!1637 = !DILocation(line: 118, column: 9, scope: !1625)
!1638 = !DILocation(line: 119, column: 3, scope: !1625)
!1639 = distinct !DISubprogram(name: "get_quoting_style", scope: !505, file: !505, line: 124, type: !1640, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1644)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!528, !1642}
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!1644 = !{!1645}
!1645 = !DILocalVariable(name: "o", arg: 1, scope: !1639, file: !505, line: 124, type: !1642)
!1646 = !DILocation(line: 0, scope: !1639)
!1647 = !DILocation(line: 126, column: 11, scope: !1639)
!1648 = !DILocation(line: 126, column: 46, scope: !1639)
!1649 = !{!1650, !872, i64 0}
!1650 = !{!"quoting_options", !872, i64 0, !872, i64 4, !810, i64 8, !809, i64 40, !809, i64 48}
!1651 = !DILocation(line: 126, column: 3, scope: !1639)
!1652 = distinct !DISubprogram(name: "set_quoting_style", scope: !505, file: !505, line: 132, type: !1653, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1655)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{null, !1628, !528}
!1655 = !{!1656, !1657}
!1656 = !DILocalVariable(name: "o", arg: 1, scope: !1652, file: !505, line: 132, type: !1628)
!1657 = !DILocalVariable(name: "s", arg: 2, scope: !1652, file: !505, line: 132, type: !528)
!1658 = !DILocation(line: 0, scope: !1652)
!1659 = !DILocation(line: 134, column: 4, scope: !1652)
!1660 = !DILocation(line: 134, column: 45, scope: !1652)
!1661 = !DILocation(line: 135, column: 1, scope: !1652)
!1662 = distinct !DISubprogram(name: "set_char_quoting", scope: !505, file: !505, line: 143, type: !1663, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!68, !1628, !4, !68}
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1672, !1673}
!1666 = !DILocalVariable(name: "o", arg: 1, scope: !1662, file: !505, line: 143, type: !1628)
!1667 = !DILocalVariable(name: "c", arg: 2, scope: !1662, file: !505, line: 143, type: !4)
!1668 = !DILocalVariable(name: "i", arg: 3, scope: !1662, file: !505, line: 143, type: !68)
!1669 = !DILocalVariable(name: "uc", scope: !1662, file: !505, line: 145, type: !117)
!1670 = !DILocalVariable(name: "p", scope: !1662, file: !505, line: 146, type: !1671)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1672 = !DILocalVariable(name: "shift", scope: !1662, file: !505, line: 148, type: !68)
!1673 = !DILocalVariable(name: "r", scope: !1662, file: !505, line: 149, type: !73)
!1674 = !DILocation(line: 0, scope: !1662)
!1675 = !DILocation(line: 147, column: 6, scope: !1662)
!1676 = !DILocation(line: 147, column: 41, scope: !1662)
!1677 = !DILocation(line: 147, column: 62, scope: !1662)
!1678 = !DILocation(line: 147, column: 57, scope: !1662)
!1679 = !DILocation(line: 148, column: 15, scope: !1662)
!1680 = !DILocation(line: 149, column: 21, scope: !1662)
!1681 = !DILocation(line: 149, column: 24, scope: !1662)
!1682 = !DILocation(line: 149, column: 34, scope: !1662)
!1683 = !DILocation(line: 150, column: 19, scope: !1662)
!1684 = !DILocation(line: 150, column: 24, scope: !1662)
!1685 = !DILocation(line: 150, column: 6, scope: !1662)
!1686 = !DILocation(line: 151, column: 3, scope: !1662)
!1687 = distinct !DISubprogram(name: "set_quoting_flags", scope: !505, file: !505, line: 159, type: !1688, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1690)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!68, !1628, !68}
!1690 = !{!1691, !1692, !1693}
!1691 = !DILocalVariable(name: "o", arg: 1, scope: !1687, file: !505, line: 159, type: !1628)
!1692 = !DILocalVariable(name: "i", arg: 2, scope: !1687, file: !505, line: 159, type: !68)
!1693 = !DILocalVariable(name: "r", scope: !1687, file: !505, line: 163, type: !68)
!1694 = !DILocation(line: 0, scope: !1687)
!1695 = !DILocation(line: 161, column: 8, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !505, line: 161, column: 7)
!1697 = !DILocation(line: 161, column: 7, scope: !1687)
!1698 = !DILocation(line: 163, column: 14, scope: !1687)
!1699 = !{!1650, !872, i64 4}
!1700 = !DILocation(line: 164, column: 12, scope: !1687)
!1701 = !DILocation(line: 165, column: 3, scope: !1687)
!1702 = distinct !DISubprogram(name: "set_custom_quoting", scope: !505, file: !505, line: 169, type: !1703, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1628, !115, !115}
!1705 = !{!1706, !1707, !1708}
!1706 = !DILocalVariable(name: "o", arg: 1, scope: !1702, file: !505, line: 169, type: !1628)
!1707 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1702, file: !505, line: 170, type: !115)
!1708 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1702, file: !505, line: 170, type: !115)
!1709 = !DILocation(line: 0, scope: !1702)
!1710 = !DILocation(line: 172, column: 8, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1702, file: !505, line: 172, column: 7)
!1712 = !DILocation(line: 172, column: 7, scope: !1702)
!1713 = !DILocation(line: 174, column: 12, scope: !1702)
!1714 = !DILocation(line: 175, column: 8, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1702, file: !505, line: 175, column: 7)
!1716 = !DILocation(line: 175, column: 19, scope: !1715)
!1717 = !DILocation(line: 176, column: 5, scope: !1715)
!1718 = !DILocation(line: 177, column: 6, scope: !1702)
!1719 = !DILocation(line: 177, column: 17, scope: !1702)
!1720 = !{!1650, !809, i64 40}
!1721 = !DILocation(line: 178, column: 6, scope: !1702)
!1722 = !DILocation(line: 178, column: 18, scope: !1702)
!1723 = !{!1650, !809, i64 48}
!1724 = !DILocation(line: 179, column: 1, scope: !1702)
!1725 = !DISubprogram(name: "abort", scope: !995, file: !995, line: 598, type: !442, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1726 = distinct !DISubprogram(name: "quotearg_buffer", scope: !505, file: !505, line: 774, type: !1727, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1729)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!112, !109, !112, !115, !112, !1642}
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1730 = !DILocalVariable(name: "buffer", arg: 1, scope: !1726, file: !505, line: 774, type: !109)
!1731 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1726, file: !505, line: 774, type: !112)
!1732 = !DILocalVariable(name: "arg", arg: 3, scope: !1726, file: !505, line: 775, type: !115)
!1733 = !DILocalVariable(name: "argsize", arg: 4, scope: !1726, file: !505, line: 775, type: !112)
!1734 = !DILocalVariable(name: "o", arg: 5, scope: !1726, file: !505, line: 776, type: !1642)
!1735 = !DILocalVariable(name: "p", scope: !1726, file: !505, line: 778, type: !1642)
!1736 = !DILocalVariable(name: "saved_errno", scope: !1726, file: !505, line: 779, type: !68)
!1737 = !DILocalVariable(name: "r", scope: !1726, file: !505, line: 780, type: !112)
!1738 = !DILocation(line: 0, scope: !1726)
!1739 = !DILocation(line: 778, column: 37, scope: !1726)
!1740 = !DILocation(line: 779, column: 21, scope: !1726)
!1741 = !DILocation(line: 781, column: 43, scope: !1726)
!1742 = !DILocation(line: 781, column: 53, scope: !1726)
!1743 = !DILocation(line: 781, column: 63, scope: !1726)
!1744 = !DILocation(line: 782, column: 43, scope: !1726)
!1745 = !DILocation(line: 782, column: 58, scope: !1726)
!1746 = !DILocation(line: 780, column: 14, scope: !1726)
!1747 = !DILocation(line: 783, column: 9, scope: !1726)
!1748 = !DILocation(line: 784, column: 3, scope: !1726)
!1749 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !505, file: !505, line: 251, type: !1750, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1754)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!112, !109, !112, !115, !112, !528, !68, !1752, !115, !115}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1780, !1782, !1785, !1786, !1787, !1788, !1791, !1792, !1794, !1795, !1798, !1802, !1803, !1811, !1814, !1815, !1816}
!1755 = !DILocalVariable(name: "buffer", arg: 1, scope: !1749, file: !505, line: 251, type: !109)
!1756 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1749, file: !505, line: 251, type: !112)
!1757 = !DILocalVariable(name: "arg", arg: 3, scope: !1749, file: !505, line: 252, type: !115)
!1758 = !DILocalVariable(name: "argsize", arg: 4, scope: !1749, file: !505, line: 252, type: !112)
!1759 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1749, file: !505, line: 253, type: !528)
!1760 = !DILocalVariable(name: "flags", arg: 6, scope: !1749, file: !505, line: 253, type: !68)
!1761 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1749, file: !505, line: 254, type: !1752)
!1762 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1749, file: !505, line: 255, type: !115)
!1763 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1749, file: !505, line: 256, type: !115)
!1764 = !DILocalVariable(name: "unibyte_locale", scope: !1749, file: !505, line: 258, type: !156)
!1765 = !DILocalVariable(name: "len", scope: !1749, file: !505, line: 260, type: !112)
!1766 = !DILocalVariable(name: "orig_buffersize", scope: !1749, file: !505, line: 261, type: !112)
!1767 = !DILocalVariable(name: "quote_string", scope: !1749, file: !505, line: 262, type: !115)
!1768 = !DILocalVariable(name: "quote_string_len", scope: !1749, file: !505, line: 263, type: !112)
!1769 = !DILocalVariable(name: "backslash_escapes", scope: !1749, file: !505, line: 264, type: !156)
!1770 = !DILocalVariable(name: "elide_outer_quotes", scope: !1749, file: !505, line: 265, type: !156)
!1771 = !DILocalVariable(name: "encountered_single_quote", scope: !1749, file: !505, line: 266, type: !156)
!1772 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1749, file: !505, line: 267, type: !156)
!1773 = !DILabel(scope: !1749, name: "process_input", file: !505, line: 308)
!1774 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1749, file: !505, line: 309, type: !156)
!1775 = !DILocalVariable(name: "lq", scope: !1776, file: !505, line: 361, type: !115)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !505, line: 361, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !505, line: 360, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !505, line: 333, column: 7)
!1779 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 312, column: 5)
!1780 = !DILocalVariable(name: "i", scope: !1781, file: !505, line: 395, type: !112)
!1781 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 395, column: 3)
!1782 = !DILocalVariable(name: "is_right_quote", scope: !1783, file: !505, line: 397, type: !156)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !505, line: 396, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1781, file: !505, line: 395, column: 3)
!1785 = !DILocalVariable(name: "escaping", scope: !1783, file: !505, line: 398, type: !156)
!1786 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1783, file: !505, line: 399, type: !156)
!1787 = !DILocalVariable(name: "c", scope: !1783, file: !505, line: 417, type: !117)
!1788 = !DILabel(scope: !1789, name: "c_and_shell_escape", file: !505, line: 502)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 478, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 419, column: 9)
!1791 = !DILabel(scope: !1789, name: "c_escape", file: !505, line: 507)
!1792 = !DILocalVariable(name: "m", scope: !1793, file: !505, line: 598, type: !112)
!1793 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 596, column: 11)
!1794 = !DILocalVariable(name: "printable", scope: !1793, file: !505, line: 600, type: !156)
!1795 = !DILocalVariable(name: "mbs", scope: !1796, file: !505, line: 609, type: !577)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !505, line: 608, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !505, line: 602, column: 17)
!1798 = !DILocalVariable(name: "w", scope: !1799, file: !505, line: 618, type: !485)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !505, line: 617, column: 19)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !505, line: 616, column: 17)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !505, line: 616, column: 17)
!1802 = !DILocalVariable(name: "bytes", scope: !1799, file: !505, line: 619, type: !112)
!1803 = !DILocalVariable(name: "j", scope: !1804, file: !505, line: 648, type: !112)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !505, line: 648, column: 29)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !505, line: 647, column: 27)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !505, line: 645, column: 29)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !505, line: 636, column: 23)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !505, line: 628, column: 30)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !505, line: 623, column: 30)
!1810 = distinct !DILexicalBlock(scope: !1799, file: !505, line: 621, column: 25)
!1811 = !DILocalVariable(name: "ilim", scope: !1812, file: !505, line: 674, type: !112)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !505, line: 671, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1793, file: !505, line: 670, column: 17)
!1814 = !DILabel(scope: !1783, name: "store_escape", file: !505, line: 709)
!1815 = !DILabel(scope: !1783, name: "store_c", file: !505, line: 712)
!1816 = !DILabel(scope: !1749, name: "force_outer_quoting_style", file: !505, line: 753)
!1817 = distinct !DIAssignID()
!1818 = distinct !DIAssignID()
!1819 = distinct !DIAssignID()
!1820 = distinct !DIAssignID()
!1821 = distinct !DIAssignID()
!1822 = !DILocation(line: 0, scope: !1796)
!1823 = distinct !DIAssignID()
!1824 = !DILocation(line: 0, scope: !1799)
!1825 = !DILocation(line: 0, scope: !1749)
!1826 = !DILocation(line: 258, column: 25, scope: !1749)
!1827 = !DILocation(line: 258, column: 36, scope: !1749)
!1828 = !DILocation(line: 265, column: 8, scope: !1749)
!1829 = !DILocation(line: 267, column: 3, scope: !1749)
!1830 = !DILocation(line: 261, column: 10, scope: !1749)
!1831 = !DILocation(line: 262, column: 15, scope: !1749)
!1832 = !DILocation(line: 263, column: 10, scope: !1749)
!1833 = !DILocation(line: 264, column: 8, scope: !1749)
!1834 = !DILocation(line: 266, column: 8, scope: !1749)
!1835 = !DILocation(line: 267, column: 8, scope: !1749)
!1836 = !DILocation(line: 308, column: 2, scope: !1749)
!1837 = !DILocation(line: 311, column: 3, scope: !1749)
!1838 = !DILocation(line: 318, column: 11, scope: !1779)
!1839 = !DILocation(line: 318, column: 12, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1779, file: !505, line: 318, column: 11)
!1841 = !DILocation(line: 319, column: 9, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !505, line: 319, column: 9)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !505, line: 319, column: 9)
!1844 = !DILocation(line: 319, column: 9, scope: !1843)
!1845 = !DILocation(line: 0, scope: !568, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 357, column: 26, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !505, line: 335, column: 11)
!1848 = distinct !DILexicalBlock(scope: !1778, file: !505, line: 334, column: 13)
!1849 = !DILocation(line: 199, column: 29, scope: !568, inlinedAt: !1846)
!1850 = !DILocation(line: 201, column: 19, scope: !1851, inlinedAt: !1846)
!1851 = distinct !DILexicalBlock(scope: !568, file: !505, line: 201, column: 7)
!1852 = !DILocation(line: 201, column: 7, scope: !568, inlinedAt: !1846)
!1853 = !DILocation(line: 229, column: 3, scope: !568, inlinedAt: !1846)
!1854 = !DILocation(line: 230, column: 3, scope: !568, inlinedAt: !1846)
!1855 = !DILocalVariable(name: "ps", arg: 1, scope: !1856, file: !1596, line: 1135, type: !1859)
!1856 = distinct !DISubprogram(name: "mbszero", scope: !1596, file: !1596, line: 1135, type: !1857, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1860)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{null, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!1860 = !{!1855}
!1861 = !DILocation(line: 0, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 230, column: 18, scope: !568, inlinedAt: !1846)
!1863 = !DILocalVariable(name: "__dest", arg: 1, scope: !1864, file: !1605, line: 57, type: !110)
!1864 = distinct !DISubprogram(name: "memset", scope: !1605, file: !1605, line: 57, type: !1606, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1865)
!1865 = !{!1863, !1866, !1867}
!1866 = !DILocalVariable(name: "__ch", arg: 2, scope: !1864, file: !1605, line: 57, type: !68)
!1867 = !DILocalVariable(name: "__len", arg: 3, scope: !1864, file: !1605, line: 57, type: !112)
!1868 = !DILocation(line: 0, scope: !1864, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 1137, column: 3, scope: !1856, inlinedAt: !1862)
!1870 = !DILocation(line: 59, column: 10, scope: !1864, inlinedAt: !1869)
!1871 = !DILocation(line: 231, column: 7, scope: !1872, inlinedAt: !1846)
!1872 = distinct !DILexicalBlock(scope: !568, file: !505, line: 231, column: 7)
!1873 = !DILocation(line: 231, column: 40, scope: !1872, inlinedAt: !1846)
!1874 = !DILocation(line: 231, column: 45, scope: !1872, inlinedAt: !1846)
!1875 = !DILocation(line: 235, column: 1, scope: !568, inlinedAt: !1846)
!1876 = !DILocation(line: 0, scope: !568, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 358, column: 27, scope: !1847)
!1878 = !DILocation(line: 199, column: 29, scope: !568, inlinedAt: !1877)
!1879 = !DILocation(line: 201, column: 19, scope: !1851, inlinedAt: !1877)
!1880 = !DILocation(line: 201, column: 7, scope: !568, inlinedAt: !1877)
!1881 = !DILocation(line: 229, column: 3, scope: !568, inlinedAt: !1877)
!1882 = !DILocation(line: 230, column: 3, scope: !568, inlinedAt: !1877)
!1883 = !DILocation(line: 0, scope: !1856, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 230, column: 18, scope: !568, inlinedAt: !1877)
!1885 = !DILocation(line: 0, scope: !1864, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 1137, column: 3, scope: !1856, inlinedAt: !1884)
!1887 = !DILocation(line: 59, column: 10, scope: !1864, inlinedAt: !1886)
!1888 = !DILocation(line: 231, column: 7, scope: !1872, inlinedAt: !1877)
!1889 = !DILocation(line: 231, column: 40, scope: !1872, inlinedAt: !1877)
!1890 = !DILocation(line: 231, column: 45, scope: !1872, inlinedAt: !1877)
!1891 = !DILocation(line: 235, column: 1, scope: !568, inlinedAt: !1877)
!1892 = !DILocation(line: 360, column: 14, scope: !1777)
!1893 = !DILocation(line: 360, column: 13, scope: !1778)
!1894 = !DILocation(line: 0, scope: !1776)
!1895 = !DILocation(line: 361, column: 45, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1776, file: !505, line: 361, column: 11)
!1897 = !DILocation(line: 361, column: 11, scope: !1776)
!1898 = !DILocation(line: 362, column: 13, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !505, line: 362, column: 13)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !505, line: 362, column: 13)
!1901 = !DILocation(line: 362, column: 13, scope: !1900)
!1902 = !DILocation(line: 361, column: 52, scope: !1896)
!1903 = distinct !{!1903, !1897, !1904, !918}
!1904 = !DILocation(line: 362, column: 13, scope: !1776)
!1905 = !DILocation(line: 260, column: 10, scope: !1749)
!1906 = !DILocation(line: 365, column: 28, scope: !1778)
!1907 = !DILocation(line: 367, column: 7, scope: !1779)
!1908 = !DILocation(line: 370, column: 7, scope: !1779)
!1909 = !DILocation(line: 373, column: 7, scope: !1779)
!1910 = !DILocation(line: 376, column: 12, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1779, file: !505, line: 376, column: 11)
!1912 = !DILocation(line: 376, column: 11, scope: !1779)
!1913 = !DILocation(line: 381, column: 12, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1779, file: !505, line: 381, column: 11)
!1915 = !DILocation(line: 381, column: 11, scope: !1779)
!1916 = !DILocation(line: 382, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !505, line: 382, column: 9)
!1918 = distinct !DILexicalBlock(scope: !1914, file: !505, line: 382, column: 9)
!1919 = !DILocation(line: 382, column: 9, scope: !1918)
!1920 = !DILocation(line: 389, column: 7, scope: !1779)
!1921 = !DILocation(line: 392, column: 7, scope: !1779)
!1922 = !DILocation(line: 0, scope: !1781)
!1923 = !DILocation(line: 395, column: 8, scope: !1781)
!1924 = !DILocation(line: 309, column: 8, scope: !1749)
!1925 = !DILocation(line: 395, scope: !1781)
!1926 = !DILocation(line: 395, column: 34, scope: !1784)
!1927 = !DILocation(line: 395, column: 26, scope: !1784)
!1928 = !DILocation(line: 395, column: 48, scope: !1784)
!1929 = !DILocation(line: 395, column: 55, scope: !1784)
!1930 = !DILocation(line: 395, column: 3, scope: !1781)
!1931 = !DILocation(line: 395, column: 67, scope: !1784)
!1932 = !DILocation(line: 0, scope: !1783)
!1933 = !DILocation(line: 402, column: 11, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 401, column: 11)
!1935 = !DILocation(line: 404, column: 17, scope: !1934)
!1936 = !DILocation(line: 405, column: 39, scope: !1934)
!1937 = !DILocation(line: 409, column: 32, scope: !1934)
!1938 = !DILocation(line: 405, column: 19, scope: !1934)
!1939 = !DILocation(line: 405, column: 15, scope: !1934)
!1940 = !DILocation(line: 410, column: 11, scope: !1934)
!1941 = !DILocation(line: 410, column: 25, scope: !1934)
!1942 = !DILocalVariable(name: "__s1", arg: 1, scope: !1943, file: !884, line: 974, type: !1019)
!1943 = distinct !DISubprogram(name: "memeq", scope: !884, file: !884, line: 974, type: !1565, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !1944)
!1944 = !{!1942, !1945, !1946}
!1945 = !DILocalVariable(name: "__s2", arg: 2, scope: !1943, file: !884, line: 974, type: !1019)
!1946 = !DILocalVariable(name: "__n", arg: 3, scope: !1943, file: !884, line: 974, type: !112)
!1947 = !DILocation(line: 0, scope: !1943, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 410, column: 14, scope: !1934)
!1949 = !DILocation(line: 976, column: 11, scope: !1943, inlinedAt: !1948)
!1950 = !DILocation(line: 976, column: 10, scope: !1943, inlinedAt: !1948)
!1951 = !DILocation(line: 401, column: 11, scope: !1783)
!1952 = !DILocation(line: 417, column: 25, scope: !1783)
!1953 = !DILocation(line: 418, column: 7, scope: !1783)
!1954 = !DILocation(line: 421, column: 15, scope: !1790)
!1955 = !DILocation(line: 423, column: 15, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !505, line: 423, column: 15)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !505, line: 422, column: 13)
!1958 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 421, column: 15)
!1959 = !DILocation(line: 423, column: 15, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !505, line: 423, column: 15)
!1961 = !DILocation(line: 423, column: 15, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !505, line: 423, column: 15)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !505, line: 423, column: 15)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !505, line: 423, column: 15)
!1965 = !DILocation(line: 423, column: 15, scope: !1963)
!1966 = !DILocation(line: 423, column: 15, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !505, line: 423, column: 15)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !505, line: 423, column: 15)
!1969 = !DILocation(line: 423, column: 15, scope: !1968)
!1970 = !DILocation(line: 423, column: 15, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !505, line: 423, column: 15)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !505, line: 423, column: 15)
!1973 = !DILocation(line: 423, column: 15, scope: !1972)
!1974 = !DILocation(line: 423, column: 15, scope: !1964)
!1975 = !DILocation(line: 423, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !505, line: 423, column: 15)
!1977 = distinct !DILexicalBlock(scope: !1956, file: !505, line: 423, column: 15)
!1978 = !DILocation(line: 423, column: 15, scope: !1977)
!1979 = !DILocation(line: 431, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1957, file: !505, line: 430, column: 19)
!1981 = !DILocation(line: 431, column: 24, scope: !1980)
!1982 = !DILocation(line: 431, column: 28, scope: !1980)
!1983 = !DILocation(line: 431, column: 38, scope: !1980)
!1984 = !DILocation(line: 431, column: 48, scope: !1980)
!1985 = !DILocation(line: 431, column: 59, scope: !1980)
!1986 = !DILocation(line: 433, column: 19, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !505, line: 433, column: 19)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !505, line: 433, column: 19)
!1989 = distinct !DILexicalBlock(scope: !1980, file: !505, line: 432, column: 17)
!1990 = !DILocation(line: 433, column: 19, scope: !1988)
!1991 = !DILocation(line: 434, column: 19, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !505, line: 434, column: 19)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !505, line: 434, column: 19)
!1994 = !DILocation(line: 434, column: 19, scope: !1993)
!1995 = !DILocation(line: 435, column: 17, scope: !1989)
!1996 = !DILocation(line: 442, column: 20, scope: !1958)
!1997 = !DILocation(line: 447, column: 11, scope: !1790)
!1998 = !DILocation(line: 450, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 448, column: 13)
!2000 = !DILocation(line: 456, column: 19, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1999, file: !505, line: 455, column: 19)
!2002 = !DILocation(line: 456, column: 24, scope: !2001)
!2003 = !DILocation(line: 456, column: 28, scope: !2001)
!2004 = !DILocation(line: 456, column: 38, scope: !2001)
!2005 = !DILocation(line: 456, column: 41, scope: !2001)
!2006 = !DILocation(line: 456, column: 52, scope: !2001)
!2007 = !DILocation(line: 455, column: 19, scope: !1999)
!2008 = !DILocation(line: 457, column: 25, scope: !2001)
!2009 = !DILocation(line: 457, column: 17, scope: !2001)
!2010 = !DILocation(line: 464, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2001, file: !505, line: 458, column: 19)
!2012 = !DILocation(line: 468, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !505, line: 468, column: 21)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 468, column: 21)
!2015 = !DILocation(line: 468, column: 21, scope: !2014)
!2016 = !DILocation(line: 469, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !505, line: 469, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 469, column: 21)
!2019 = !DILocation(line: 469, column: 21, scope: !2018)
!2020 = !DILocation(line: 470, column: 21, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !505, line: 470, column: 21)
!2022 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 470, column: 21)
!2023 = !DILocation(line: 470, column: 21, scope: !2022)
!2024 = !DILocation(line: 471, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !505, line: 471, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2011, file: !505, line: 471, column: 21)
!2027 = !DILocation(line: 471, column: 21, scope: !2026)
!2028 = !DILocation(line: 472, column: 21, scope: !2011)
!2029 = !DILocation(line: 482, column: 33, scope: !1789)
!2030 = !DILocation(line: 483, column: 33, scope: !1789)
!2031 = !DILocation(line: 485, column: 33, scope: !1789)
!2032 = !DILocation(line: 486, column: 33, scope: !1789)
!2033 = !DILocation(line: 487, column: 33, scope: !1789)
!2034 = !DILocation(line: 490, column: 17, scope: !1789)
!2035 = !DILocation(line: 492, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !505, line: 491, column: 15)
!2037 = distinct !DILexicalBlock(scope: !1789, file: !505, line: 490, column: 17)
!2038 = !DILocation(line: 499, column: 35, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1789, file: !505, line: 499, column: 17)
!2040 = !DILocation(line: 499, column: 57, scope: !2039)
!2041 = !DILocation(line: 0, scope: !1789)
!2042 = !DILocation(line: 502, column: 11, scope: !1789)
!2043 = !DILocation(line: 504, column: 17, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1789, file: !505, line: 503, column: 17)
!2045 = !DILocation(line: 507, column: 11, scope: !1789)
!2046 = !DILocation(line: 508, column: 17, scope: !1789)
!2047 = !DILocation(line: 517, column: 15, scope: !1790)
!2048 = !DILocation(line: 517, column: 40, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 517, column: 15)
!2050 = !DILocation(line: 517, column: 47, scope: !2049)
!2051 = !DILocation(line: 517, column: 18, scope: !2049)
!2052 = !DILocation(line: 521, column: 17, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 521, column: 15)
!2054 = !DILocation(line: 521, column: 15, scope: !1790)
!2055 = !DILocation(line: 525, column: 11, scope: !1790)
!2056 = !DILocation(line: 537, column: 15, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 536, column: 15)
!2058 = !DILocation(line: 544, column: 15, scope: !1790)
!2059 = !DILocation(line: 546, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !505, line: 545, column: 13)
!2061 = distinct !DILexicalBlock(scope: !1790, file: !505, line: 544, column: 15)
!2062 = !DILocation(line: 549, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !505, line: 549, column: 19)
!2064 = !DILocation(line: 549, column: 30, scope: !2063)
!2065 = !DILocation(line: 558, column: 15, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !505, line: 558, column: 15)
!2067 = distinct !DILexicalBlock(scope: !2060, file: !505, line: 558, column: 15)
!2068 = !DILocation(line: 558, column: 15, scope: !2067)
!2069 = !DILocation(line: 559, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !505, line: 559, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2060, file: !505, line: 559, column: 15)
!2072 = !DILocation(line: 559, column: 15, scope: !2071)
!2073 = !DILocation(line: 560, column: 15, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !505, line: 560, column: 15)
!2075 = distinct !DILexicalBlock(scope: !2060, file: !505, line: 560, column: 15)
!2076 = !DILocation(line: 560, column: 15, scope: !2075)
!2077 = !DILocation(line: 562, column: 13, scope: !2060)
!2078 = !DILocation(line: 602, column: 17, scope: !1793)
!2079 = !DILocation(line: 0, scope: !1793)
!2080 = !DILocation(line: 605, column: 29, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1797, file: !505, line: 603, column: 15)
!2082 = !DILocation(line: 605, column: 27, scope: !2081)
!2083 = !DILocation(line: 606, column: 15, scope: !2081)
!2084 = !DILocation(line: 609, column: 17, scope: !1796)
!2085 = !DILocation(line: 0, scope: !1856, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 609, column: 32, scope: !1796)
!2087 = !DILocation(line: 0, scope: !1864, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 1137, column: 3, scope: !1856, inlinedAt: !2086)
!2089 = !DILocation(line: 59, column: 10, scope: !1864, inlinedAt: !2088)
!2090 = !DILocation(line: 613, column: 29, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !1796, file: !505, line: 613, column: 21)
!2092 = !DILocation(line: 613, column: 21, scope: !1796)
!2093 = !DILocation(line: 614, column: 29, scope: !2091)
!2094 = !DILocation(line: 614, column: 19, scope: !2091)
!2095 = !DILocation(line: 618, column: 21, scope: !1799)
!2096 = !DILocation(line: 620, column: 54, scope: !1799)
!2097 = !DILocation(line: 619, column: 36, scope: !1799)
!2098 = !DILocation(line: 621, column: 25, scope: !1799)
!2099 = !DILocation(line: 631, column: 38, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1808, file: !505, line: 629, column: 23)
!2101 = !DILocation(line: 631, column: 48, scope: !2100)
!2102 = !DILocation(line: 626, column: 25, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1809, file: !505, line: 624, column: 23)
!2104 = !DILocation(line: 631, column: 51, scope: !2100)
!2105 = !DILocation(line: 631, column: 25, scope: !2100)
!2106 = !DILocation(line: 632, column: 28, scope: !2100)
!2107 = !DILocation(line: 631, column: 34, scope: !2100)
!2108 = distinct !{!2108, !2105, !2106, !918}
!2109 = !DILocation(line: 0, scope: !1804)
!2110 = !DILocation(line: 646, column: 29, scope: !1806)
!2111 = !DILocation(line: 649, column: 39, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1804, file: !505, line: 648, column: 29)
!2113 = !DILocation(line: 649, column: 31, scope: !2112)
!2114 = !DILocation(line: 648, column: 60, scope: !2112)
!2115 = !DILocation(line: 648, column: 50, scope: !2112)
!2116 = !DILocation(line: 648, column: 29, scope: !1804)
!2117 = distinct !{!2117, !2116, !2118, !918}
!2118 = !DILocation(line: 654, column: 33, scope: !1804)
!2119 = !DILocation(line: 657, column: 43, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1807, file: !505, line: 657, column: 29)
!2121 = !DILocalVariable(name: "wc", arg: 1, scope: !2122, file: !2123, line: 865, type: !2126)
!2122 = distinct !DISubprogram(name: "c32isprint", scope: !2123, file: !2123, line: 865, type: !2124, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2128)
!2123 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!68, !2126}
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2127, line: 20, baseType: !73)
!2127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2128 = !{!2121}
!2129 = !DILocation(line: 0, scope: !2122, inlinedAt: !2130)
!2130 = distinct !DILocation(line: 657, column: 31, scope: !2120)
!2131 = !DILocation(line: 871, column: 10, scope: !2122, inlinedAt: !2130)
!2132 = !DILocation(line: 657, column: 31, scope: !2120)
!2133 = !DILocation(line: 664, column: 23, scope: !1799)
!2134 = !DILocation(line: 665, column: 19, scope: !1800)
!2135 = !DILocation(line: 666, column: 15, scope: !1797)
!2136 = !DILocation(line: 0, scope: !1797)
!2137 = !DILocation(line: 670, column: 19, scope: !1813)
!2138 = !DILocation(line: 670, column: 23, scope: !1813)
!2139 = !DILocation(line: 674, column: 33, scope: !1812)
!2140 = !DILocation(line: 0, scope: !1812)
!2141 = !DILocation(line: 676, column: 17, scope: !1812)
!2142 = !DILocation(line: 398, column: 12, scope: !1783)
!2143 = !DILocation(line: 678, column: 43, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !505, line: 678, column: 25)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !505, line: 677, column: 19)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !505, line: 676, column: 17)
!2147 = distinct !DILexicalBlock(scope: !1812, file: !505, line: 676, column: 17)
!2148 = !DILocation(line: 680, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !505, line: 680, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !505, line: 679, column: 23)
!2151 = !DILocation(line: 680, column: 25, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !505, line: 680, column: 25)
!2153 = !DILocation(line: 680, column: 25, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !505, line: 680, column: 25)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 680, column: 25)
!2156 = distinct !DILexicalBlock(scope: !2152, file: !505, line: 680, column: 25)
!2157 = !DILocation(line: 680, column: 25, scope: !2155)
!2158 = !DILocation(line: 680, column: 25, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !505, line: 680, column: 25)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 680, column: 25)
!2161 = !DILocation(line: 680, column: 25, scope: !2160)
!2162 = !DILocation(line: 680, column: 25, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !505, line: 680, column: 25)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !505, line: 680, column: 25)
!2165 = !DILocation(line: 680, column: 25, scope: !2164)
!2166 = !DILocation(line: 680, column: 25, scope: !2156)
!2167 = !DILocation(line: 680, column: 25, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !505, line: 680, column: 25)
!2169 = distinct !DILexicalBlock(scope: !2149, file: !505, line: 680, column: 25)
!2170 = !DILocation(line: 680, column: 25, scope: !2169)
!2171 = !DILocation(line: 681, column: 25, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !505, line: 681, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2150, file: !505, line: 681, column: 25)
!2174 = !DILocation(line: 681, column: 25, scope: !2173)
!2175 = !DILocation(line: 682, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !505, line: 682, column: 25)
!2177 = distinct !DILexicalBlock(scope: !2150, file: !505, line: 682, column: 25)
!2178 = !DILocation(line: 682, column: 25, scope: !2177)
!2179 = !DILocation(line: 683, column: 38, scope: !2150)
!2180 = !DILocation(line: 683, column: 33, scope: !2150)
!2181 = !DILocation(line: 684, column: 23, scope: !2150)
!2182 = !DILocation(line: 685, column: 30, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2144, file: !505, line: 685, column: 30)
!2184 = !DILocation(line: 685, column: 30, scope: !2144)
!2185 = !DILocation(line: 687, column: 25, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !505, line: 687, column: 25)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !505, line: 687, column: 25)
!2188 = distinct !DILexicalBlock(scope: !2183, file: !505, line: 686, column: 23)
!2189 = !DILocation(line: 687, column: 25, scope: !2187)
!2190 = !DILocation(line: 689, column: 23, scope: !2188)
!2191 = !DILocation(line: 690, column: 35, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2145, file: !505, line: 690, column: 25)
!2193 = !DILocation(line: 690, column: 30, scope: !2192)
!2194 = !DILocation(line: 690, column: 25, scope: !2145)
!2195 = !DILocation(line: 692, column: 21, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !505, line: 692, column: 21)
!2197 = distinct !DILexicalBlock(scope: !2145, file: !505, line: 692, column: 21)
!2198 = !DILocation(line: 692, column: 21, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !505, line: 692, column: 21)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !505, line: 692, column: 21)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !505, line: 692, column: 21)
!2202 = !DILocation(line: 692, column: 21, scope: !2200)
!2203 = !DILocation(line: 692, column: 21, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !505, line: 692, column: 21)
!2205 = distinct !DILexicalBlock(scope: !2201, file: !505, line: 692, column: 21)
!2206 = !DILocation(line: 692, column: 21, scope: !2205)
!2207 = !DILocation(line: 692, column: 21, scope: !2201)
!2208 = !DILocation(line: 0, scope: !2145)
!2209 = !DILocation(line: 693, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !505, line: 693, column: 21)
!2211 = distinct !DILexicalBlock(scope: !2145, file: !505, line: 693, column: 21)
!2212 = !DILocation(line: 693, column: 21, scope: !2211)
!2213 = !DILocation(line: 694, column: 25, scope: !2145)
!2214 = !DILocation(line: 676, column: 17, scope: !2146)
!2215 = distinct !{!2215, !2216, !2217}
!2216 = !DILocation(line: 676, column: 17, scope: !2147)
!2217 = !DILocation(line: 695, column: 19, scope: !2147)
!2218 = !DILocation(line: 409, column: 30, scope: !1934)
!2219 = !DILocation(line: 702, column: 34, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 702, column: 11)
!2221 = !DILocation(line: 704, column: 14, scope: !2220)
!2222 = !DILocation(line: 705, column: 14, scope: !2220)
!2223 = !DILocation(line: 705, column: 35, scope: !2220)
!2224 = !DILocation(line: 705, column: 17, scope: !2220)
!2225 = !DILocation(line: 705, column: 47, scope: !2220)
!2226 = !DILocation(line: 705, column: 65, scope: !2220)
!2227 = !DILocation(line: 706, column: 11, scope: !2220)
!2228 = !DILocation(line: 702, column: 11, scope: !1783)
!2229 = !DILocation(line: 395, column: 15, scope: !1781)
!2230 = !DILocation(line: 709, column: 5, scope: !1783)
!2231 = !DILocation(line: 710, column: 7, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 710, column: 7)
!2233 = !DILocation(line: 710, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !505, line: 710, column: 7)
!2235 = !DILocation(line: 710, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !505, line: 710, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !505, line: 710, column: 7)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !505, line: 710, column: 7)
!2239 = !DILocation(line: 710, column: 7, scope: !2237)
!2240 = !DILocation(line: 710, column: 7, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !505, line: 710, column: 7)
!2242 = distinct !DILexicalBlock(scope: !2238, file: !505, line: 710, column: 7)
!2243 = !DILocation(line: 710, column: 7, scope: !2242)
!2244 = !DILocation(line: 710, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !505, line: 710, column: 7)
!2246 = distinct !DILexicalBlock(scope: !2238, file: !505, line: 710, column: 7)
!2247 = !DILocation(line: 710, column: 7, scope: !2246)
!2248 = !DILocation(line: 710, column: 7, scope: !2238)
!2249 = !DILocation(line: 710, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !505, line: 710, column: 7)
!2251 = distinct !DILexicalBlock(scope: !2232, file: !505, line: 710, column: 7)
!2252 = !DILocation(line: 710, column: 7, scope: !2251)
!2253 = !DILocation(line: 712, column: 5, scope: !1783)
!2254 = !DILocation(line: 713, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !505, line: 713, column: 7)
!2256 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 713, column: 7)
!2257 = !DILocation(line: 417, column: 21, scope: !1783)
!2258 = !DILocation(line: 713, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !505, line: 713, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !505, line: 713, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2255, file: !505, line: 713, column: 7)
!2262 = !DILocation(line: 713, column: 7, scope: !2260)
!2263 = !DILocation(line: 713, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !505, line: 713, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !505, line: 713, column: 7)
!2266 = !DILocation(line: 713, column: 7, scope: !2265)
!2267 = !DILocation(line: 713, column: 7, scope: !2261)
!2268 = !DILocation(line: 714, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !505, line: 714, column: 7)
!2270 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 714, column: 7)
!2271 = !DILocation(line: 714, column: 7, scope: !2270)
!2272 = !DILocation(line: 716, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1783, file: !505, line: 716, column: 11)
!2274 = !DILocation(line: 716, column: 11, scope: !1783)
!2275 = !DILocation(line: 718, column: 5, scope: !1784)
!2276 = !DILocation(line: 395, column: 82, scope: !1784)
!2277 = !DILocation(line: 395, column: 3, scope: !1784)
!2278 = distinct !{!2278, !1930, !2279, !918}
!2279 = !DILocation(line: 718, column: 5, scope: !1781)
!2280 = !DILocation(line: 720, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 720, column: 7)
!2282 = !DILocation(line: 720, column: 16, scope: !2281)
!2283 = !DILocation(line: 728, column: 51, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 728, column: 7)
!2285 = !DILocation(line: 731, column: 11, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !505, line: 731, column: 11)
!2287 = distinct !DILexicalBlock(scope: !2284, file: !505, line: 730, column: 5)
!2288 = !DILocation(line: 731, column: 11, scope: !2287)
!2289 = !DILocation(line: 732, column: 16, scope: !2286)
!2290 = !DILocation(line: 732, column: 9, scope: !2286)
!2291 = !DILocation(line: 736, column: 18, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2286, file: !505, line: 736, column: 16)
!2293 = !DILocation(line: 736, column: 29, scope: !2292)
!2294 = !DILocation(line: 745, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 745, column: 7)
!2296 = !DILocation(line: 745, column: 20, scope: !2295)
!2297 = !DILocation(line: 746, column: 12, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !505, line: 746, column: 5)
!2299 = distinct !DILexicalBlock(scope: !2295, file: !505, line: 746, column: 5)
!2300 = !DILocation(line: 746, column: 5, scope: !2299)
!2301 = !DILocation(line: 747, column: 7, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !505, line: 747, column: 7)
!2303 = distinct !DILexicalBlock(scope: !2298, file: !505, line: 747, column: 7)
!2304 = !DILocation(line: 747, column: 7, scope: !2303)
!2305 = !DILocation(line: 746, column: 39, scope: !2298)
!2306 = distinct !{!2306, !2300, !2307, !918}
!2307 = !DILocation(line: 747, column: 7, scope: !2299)
!2308 = !DILocation(line: 749, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 749, column: 7)
!2310 = !DILocation(line: 749, column: 7, scope: !1749)
!2311 = !DILocation(line: 750, column: 5, scope: !2309)
!2312 = !DILocation(line: 750, column: 17, scope: !2309)
!2313 = !DILocation(line: 753, column: 2, scope: !1749)
!2314 = !DILocation(line: 756, column: 51, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1749, file: !505, line: 756, column: 7)
!2316 = !DILocation(line: 756, column: 21, scope: !2315)
!2317 = !DILocation(line: 760, column: 42, scope: !1749)
!2318 = !DILocation(line: 758, column: 10, scope: !1749)
!2319 = !DILocation(line: 758, column: 3, scope: !1749)
!2320 = !DILocation(line: 762, column: 1, scope: !1749)
!2321 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !995, file: !995, line: 98, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!112}
!2324 = !DISubprogram(name: "strlen", scope: !991, file: !991, line: 407, type: !2325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!114, !115}
!2327 = !DISubprogram(name: "iswprint", scope: !2328, file: !2328, line: 120, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2329 = distinct !DISubprogram(name: "quotearg_alloc", scope: !505, file: !505, line: 788, type: !2330, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!109, !115, !112, !1642}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "arg", arg: 1, scope: !2329, file: !505, line: 788, type: !115)
!2334 = !DILocalVariable(name: "argsize", arg: 2, scope: !2329, file: !505, line: 788, type: !112)
!2335 = !DILocalVariable(name: "o", arg: 3, scope: !2329, file: !505, line: 789, type: !1642)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocalVariable(name: "arg", arg: 1, scope: !2338, file: !505, line: 801, type: !115)
!2338 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !505, file: !505, line: 801, type: !2339, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!109, !115, !112, !741, !1642}
!2341 = !{!2337, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2342 = !DILocalVariable(name: "argsize", arg: 2, scope: !2338, file: !505, line: 801, type: !112)
!2343 = !DILocalVariable(name: "size", arg: 3, scope: !2338, file: !505, line: 801, type: !741)
!2344 = !DILocalVariable(name: "o", arg: 4, scope: !2338, file: !505, line: 802, type: !1642)
!2345 = !DILocalVariable(name: "p", scope: !2338, file: !505, line: 804, type: !1642)
!2346 = !DILocalVariable(name: "saved_errno", scope: !2338, file: !505, line: 805, type: !68)
!2347 = !DILocalVariable(name: "flags", scope: !2338, file: !505, line: 807, type: !68)
!2348 = !DILocalVariable(name: "bufsize", scope: !2338, file: !505, line: 808, type: !112)
!2349 = !DILocalVariable(name: "buf", scope: !2338, file: !505, line: 812, type: !109)
!2350 = !DILocation(line: 0, scope: !2338, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 791, column: 10, scope: !2329)
!2352 = !DILocation(line: 804, column: 37, scope: !2338, inlinedAt: !2351)
!2353 = !DILocation(line: 805, column: 21, scope: !2338, inlinedAt: !2351)
!2354 = !DILocation(line: 807, column: 18, scope: !2338, inlinedAt: !2351)
!2355 = !DILocation(line: 807, column: 24, scope: !2338, inlinedAt: !2351)
!2356 = !DILocation(line: 808, column: 72, scope: !2338, inlinedAt: !2351)
!2357 = !DILocation(line: 809, column: 56, scope: !2338, inlinedAt: !2351)
!2358 = !DILocation(line: 810, column: 49, scope: !2338, inlinedAt: !2351)
!2359 = !DILocation(line: 811, column: 49, scope: !2338, inlinedAt: !2351)
!2360 = !DILocation(line: 808, column: 20, scope: !2338, inlinedAt: !2351)
!2361 = !DILocation(line: 811, column: 62, scope: !2338, inlinedAt: !2351)
!2362 = !DILocation(line: 812, column: 15, scope: !2338, inlinedAt: !2351)
!2363 = !DILocation(line: 813, column: 60, scope: !2338, inlinedAt: !2351)
!2364 = !DILocation(line: 815, column: 32, scope: !2338, inlinedAt: !2351)
!2365 = !DILocation(line: 815, column: 47, scope: !2338, inlinedAt: !2351)
!2366 = !DILocation(line: 813, column: 3, scope: !2338, inlinedAt: !2351)
!2367 = !DILocation(line: 816, column: 9, scope: !2338, inlinedAt: !2351)
!2368 = !DILocation(line: 791, column: 3, scope: !2329)
!2369 = !DILocation(line: 0, scope: !2338)
!2370 = !DILocation(line: 804, column: 37, scope: !2338)
!2371 = !DILocation(line: 805, column: 21, scope: !2338)
!2372 = !DILocation(line: 807, column: 18, scope: !2338)
!2373 = !DILocation(line: 807, column: 27, scope: !2338)
!2374 = !DILocation(line: 807, column: 24, scope: !2338)
!2375 = !DILocation(line: 808, column: 72, scope: !2338)
!2376 = !DILocation(line: 809, column: 56, scope: !2338)
!2377 = !DILocation(line: 810, column: 49, scope: !2338)
!2378 = !DILocation(line: 811, column: 49, scope: !2338)
!2379 = !DILocation(line: 808, column: 20, scope: !2338)
!2380 = !DILocation(line: 811, column: 62, scope: !2338)
!2381 = !DILocation(line: 812, column: 15, scope: !2338)
!2382 = !DILocation(line: 813, column: 60, scope: !2338)
!2383 = !DILocation(line: 815, column: 32, scope: !2338)
!2384 = !DILocation(line: 815, column: 47, scope: !2338)
!2385 = !DILocation(line: 813, column: 3, scope: !2338)
!2386 = !DILocation(line: 816, column: 9, scope: !2338)
!2387 = !DILocation(line: 817, column: 7, scope: !2338)
!2388 = !DILocation(line: 818, column: 11, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2338, file: !505, line: 817, column: 7)
!2390 = !{!1344, !1344, i64 0}
!2391 = !DILocation(line: 818, column: 5, scope: !2389)
!2392 = !DILocation(line: 819, column: 3, scope: !2338)
!2393 = distinct !DISubprogram(name: "quotearg_free", scope: !505, file: !505, line: 837, type: !442, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2394)
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "sv", scope: !2393, file: !505, line: 839, type: !591)
!2396 = !DILocalVariable(name: "i", scope: !2397, file: !505, line: 840, type: !68)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !505, line: 840, column: 3)
!2398 = !DILocation(line: 839, column: 24, scope: !2393)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 0, scope: !2397)
!2401 = !DILocation(line: 840, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !505, line: 840, column: 3)
!2403 = !DILocation(line: 840, column: 3, scope: !2397)
!2404 = !DILocation(line: 842, column: 13, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2393, file: !505, line: 842, column: 7)
!2406 = !{!2407, !809, i64 8}
!2407 = !{!"slotvec", !1344, i64 0, !809, i64 8}
!2408 = !DILocation(line: 842, column: 17, scope: !2405)
!2409 = !DILocation(line: 842, column: 7, scope: !2393)
!2410 = !DILocation(line: 841, column: 17, scope: !2402)
!2411 = !DILocation(line: 841, column: 5, scope: !2402)
!2412 = !DILocation(line: 840, column: 32, scope: !2402)
!2413 = distinct !{!2413, !2403, !2414, !918}
!2414 = !DILocation(line: 841, column: 20, scope: !2397)
!2415 = !DILocation(line: 844, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !505, line: 843, column: 5)
!2417 = !DILocation(line: 845, column: 21, scope: !2416)
!2418 = !{!2407, !1344, i64 0}
!2419 = !DILocation(line: 846, column: 20, scope: !2416)
!2420 = !DILocation(line: 847, column: 5, scope: !2416)
!2421 = !DILocation(line: 848, column: 10, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2393, file: !505, line: 848, column: 7)
!2423 = !DILocation(line: 848, column: 7, scope: !2393)
!2424 = !DILocation(line: 850, column: 7, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !505, line: 849, column: 5)
!2426 = !DILocation(line: 851, column: 15, scope: !2425)
!2427 = !DILocation(line: 852, column: 5, scope: !2425)
!2428 = !DILocation(line: 853, column: 10, scope: !2393)
!2429 = !DILocation(line: 854, column: 1, scope: !2393)
!2430 = !DISubprogram(name: "free", scope: !1596, file: !1596, line: 786, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !110}
!2433 = distinct !DISubprogram(name: "quotearg_n", scope: !505, file: !505, line: 919, type: !988, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2434)
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "n", arg: 1, scope: !2433, file: !505, line: 919, type: !68)
!2436 = !DILocalVariable(name: "arg", arg: 2, scope: !2433, file: !505, line: 919, type: !115)
!2437 = !DILocation(line: 0, scope: !2433)
!2438 = !DILocation(line: 921, column: 10, scope: !2433)
!2439 = !DILocation(line: 921, column: 3, scope: !2433)
!2440 = distinct !DISubprogram(name: "quotearg_n_options", scope: !505, file: !505, line: 866, type: !2441, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!109, !68, !115, !112, !1642}
!2443 = !{!2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2454, !2455, !2457, !2458, !2459}
!2444 = !DILocalVariable(name: "n", arg: 1, scope: !2440, file: !505, line: 866, type: !68)
!2445 = !DILocalVariable(name: "arg", arg: 2, scope: !2440, file: !505, line: 866, type: !115)
!2446 = !DILocalVariable(name: "argsize", arg: 3, scope: !2440, file: !505, line: 866, type: !112)
!2447 = !DILocalVariable(name: "options", arg: 4, scope: !2440, file: !505, line: 867, type: !1642)
!2448 = !DILocalVariable(name: "saved_errno", scope: !2440, file: !505, line: 869, type: !68)
!2449 = !DILocalVariable(name: "sv", scope: !2440, file: !505, line: 871, type: !591)
!2450 = !DILocalVariable(name: "nslots_max", scope: !2440, file: !505, line: 873, type: !68)
!2451 = !DILocalVariable(name: "preallocated", scope: !2452, file: !505, line: 879, type: !156)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !505, line: 878, column: 5)
!2453 = distinct !DILexicalBlock(scope: !2440, file: !505, line: 877, column: 7)
!2454 = !DILocalVariable(name: "new_nslots", scope: !2452, file: !505, line: 880, type: !754)
!2455 = !DILocalVariable(name: "size", scope: !2456, file: !505, line: 891, type: !112)
!2456 = distinct !DILexicalBlock(scope: !2440, file: !505, line: 890, column: 3)
!2457 = !DILocalVariable(name: "val", scope: !2456, file: !505, line: 892, type: !109)
!2458 = !DILocalVariable(name: "flags", scope: !2456, file: !505, line: 894, type: !68)
!2459 = !DILocalVariable(name: "qsize", scope: !2456, file: !505, line: 895, type: !112)
!2460 = distinct !DIAssignID()
!2461 = !DILocation(line: 0, scope: !2452)
!2462 = !DILocation(line: 0, scope: !2440)
!2463 = !DILocation(line: 869, column: 21, scope: !2440)
!2464 = !DILocation(line: 871, column: 24, scope: !2440)
!2465 = !DILocation(line: 874, column: 17, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2440, file: !505, line: 874, column: 7)
!2467 = !DILocation(line: 875, column: 5, scope: !2466)
!2468 = !DILocation(line: 877, column: 7, scope: !2453)
!2469 = !DILocation(line: 877, column: 14, scope: !2453)
!2470 = !DILocation(line: 877, column: 7, scope: !2440)
!2471 = !DILocation(line: 879, column: 31, scope: !2452)
!2472 = !DILocation(line: 880, column: 7, scope: !2452)
!2473 = !DILocation(line: 880, column: 26, scope: !2452)
!2474 = !DILocation(line: 880, column: 13, scope: !2452)
!2475 = distinct !DIAssignID()
!2476 = !DILocation(line: 882, column: 31, scope: !2452)
!2477 = !DILocation(line: 883, column: 33, scope: !2452)
!2478 = !DILocation(line: 883, column: 42, scope: !2452)
!2479 = !DILocation(line: 883, column: 31, scope: !2452)
!2480 = !DILocation(line: 882, column: 22, scope: !2452)
!2481 = !DILocation(line: 882, column: 15, scope: !2452)
!2482 = !DILocation(line: 884, column: 11, scope: !2452)
!2483 = !DILocation(line: 885, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2452, file: !505, line: 884, column: 11)
!2485 = !{i64 0, i64 8, !2390, i64 8, i64 8, !808}
!2486 = !DILocation(line: 885, column: 9, scope: !2484)
!2487 = !DILocation(line: 886, column: 20, scope: !2452)
!2488 = !DILocation(line: 886, column: 18, scope: !2452)
!2489 = !DILocation(line: 886, column: 32, scope: !2452)
!2490 = !DILocation(line: 886, column: 43, scope: !2452)
!2491 = !DILocation(line: 886, column: 53, scope: !2452)
!2492 = !DILocation(line: 0, scope: !1864, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 886, column: 7, scope: !2452)
!2494 = !DILocation(line: 59, column: 10, scope: !1864, inlinedAt: !2493)
!2495 = !DILocation(line: 887, column: 16, scope: !2452)
!2496 = !DILocation(line: 887, column: 14, scope: !2452)
!2497 = !DILocation(line: 888, column: 5, scope: !2453)
!2498 = !DILocation(line: 888, column: 5, scope: !2452)
!2499 = !DILocation(line: 891, column: 19, scope: !2456)
!2500 = !DILocation(line: 891, column: 25, scope: !2456)
!2501 = !DILocation(line: 0, scope: !2456)
!2502 = !DILocation(line: 892, column: 23, scope: !2456)
!2503 = !DILocation(line: 894, column: 26, scope: !2456)
!2504 = !DILocation(line: 894, column: 32, scope: !2456)
!2505 = !DILocation(line: 896, column: 55, scope: !2456)
!2506 = !DILocation(line: 897, column: 55, scope: !2456)
!2507 = !DILocation(line: 898, column: 55, scope: !2456)
!2508 = !DILocation(line: 899, column: 55, scope: !2456)
!2509 = !DILocation(line: 895, column: 20, scope: !2456)
!2510 = !DILocation(line: 901, column: 14, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2456, file: !505, line: 901, column: 9)
!2512 = !DILocation(line: 901, column: 9, scope: !2456)
!2513 = !DILocation(line: 903, column: 35, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !505, line: 902, column: 7)
!2515 = !DILocation(line: 903, column: 20, scope: !2514)
!2516 = !DILocation(line: 904, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !505, line: 904, column: 13)
!2518 = !DILocation(line: 904, column: 13, scope: !2514)
!2519 = !DILocation(line: 905, column: 11, scope: !2517)
!2520 = !DILocation(line: 906, column: 27, scope: !2514)
!2521 = !DILocation(line: 906, column: 19, scope: !2514)
!2522 = !DILocation(line: 907, column: 69, scope: !2514)
!2523 = !DILocation(line: 909, column: 44, scope: !2514)
!2524 = !DILocation(line: 910, column: 44, scope: !2514)
!2525 = !DILocation(line: 907, column: 9, scope: !2514)
!2526 = !DILocation(line: 911, column: 7, scope: !2514)
!2527 = !DILocation(line: 913, column: 11, scope: !2456)
!2528 = !DILocation(line: 914, column: 5, scope: !2456)
!2529 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !505, file: !505, line: 925, type: !2530, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!109, !68, !115, !112}
!2532 = !{!2533, !2534, !2535}
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2529, file: !505, line: 925, type: !68)
!2534 = !DILocalVariable(name: "arg", arg: 2, scope: !2529, file: !505, line: 925, type: !115)
!2535 = !DILocalVariable(name: "argsize", arg: 3, scope: !2529, file: !505, line: 925, type: !112)
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 927, column: 10, scope: !2529)
!2538 = !DILocation(line: 927, column: 3, scope: !2529)
!2539 = distinct !DISubprogram(name: "quotearg", scope: !505, file: !505, line: 931, type: !997, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2540)
!2540 = !{!2541}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2539, file: !505, line: 931, type: !115)
!2542 = !DILocation(line: 0, scope: !2539)
!2543 = !DILocation(line: 0, scope: !2433, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 933, column: 10, scope: !2539)
!2545 = !DILocation(line: 921, column: 10, scope: !2433, inlinedAt: !2544)
!2546 = !DILocation(line: 933, column: 3, scope: !2539)
!2547 = distinct !DISubprogram(name: "quotearg_mem", scope: !505, file: !505, line: 937, type: !2548, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!109, !115, !112}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !505, line: 937, type: !115)
!2552 = !DILocalVariable(name: "argsize", arg: 2, scope: !2547, file: !505, line: 937, type: !112)
!2553 = !DILocation(line: 0, scope: !2547)
!2554 = !DILocation(line: 0, scope: !2529, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 939, column: 10, scope: !2547)
!2556 = !DILocation(line: 927, column: 10, scope: !2529, inlinedAt: !2555)
!2557 = !DILocation(line: 939, column: 3, scope: !2547)
!2558 = distinct !DISubprogram(name: "quotearg_n_style", scope: !505, file: !505, line: 943, type: !2559, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!109, !68, !528, !115}
!2561 = !{!2562, !2563, !2564, !2565}
!2562 = !DILocalVariable(name: "n", arg: 1, scope: !2558, file: !505, line: 943, type: !68)
!2563 = !DILocalVariable(name: "s", arg: 2, scope: !2558, file: !505, line: 943, type: !528)
!2564 = !DILocalVariable(name: "arg", arg: 3, scope: !2558, file: !505, line: 943, type: !115)
!2565 = !DILocalVariable(name: "o", scope: !2558, file: !505, line: 945, type: !1643)
!2566 = distinct !DIAssignID()
!2567 = !DILocation(line: 0, scope: !2558)
!2568 = !DILocation(line: 945, column: 3, scope: !2558)
!2569 = !{!2570}
!2570 = distinct !{!2570, !2571, !"quoting_options_from_style: argument 0"}
!2571 = distinct !{!2571, !"quoting_options_from_style"}
!2572 = !DILocation(line: 945, column: 36, scope: !2558)
!2573 = !DILocalVariable(name: "style", arg: 1, scope: !2574, file: !505, line: 183, type: !528)
!2574 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !505, file: !505, line: 183, type: !2575, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!543, !528}
!2577 = !{!2573, !2578}
!2578 = !DILocalVariable(name: "o", scope: !2574, file: !505, line: 185, type: !543)
!2579 = !DILocation(line: 0, scope: !2574, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 945, column: 36, scope: !2558)
!2581 = !DILocation(line: 185, column: 26, scope: !2574, inlinedAt: !2580)
!2582 = distinct !DIAssignID()
!2583 = !DILocation(line: 186, column: 13, scope: !2584, inlinedAt: !2580)
!2584 = distinct !DILexicalBlock(scope: !2574, file: !505, line: 186, column: 7)
!2585 = !DILocation(line: 186, column: 7, scope: !2574, inlinedAt: !2580)
!2586 = !DILocation(line: 187, column: 5, scope: !2584, inlinedAt: !2580)
!2587 = !DILocation(line: 188, column: 11, scope: !2574, inlinedAt: !2580)
!2588 = distinct !DIAssignID()
!2589 = !DILocation(line: 946, column: 10, scope: !2558)
!2590 = !DILocation(line: 947, column: 1, scope: !2558)
!2591 = !DILocation(line: 946, column: 3, scope: !2558)
!2592 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !505, file: !505, line: 950, type: !2593, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!109, !68, !528, !115, !112}
!2595 = !{!2596, !2597, !2598, !2599, !2600}
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2592, file: !505, line: 950, type: !68)
!2597 = !DILocalVariable(name: "s", arg: 2, scope: !2592, file: !505, line: 950, type: !528)
!2598 = !DILocalVariable(name: "arg", arg: 3, scope: !2592, file: !505, line: 951, type: !115)
!2599 = !DILocalVariable(name: "argsize", arg: 4, scope: !2592, file: !505, line: 951, type: !112)
!2600 = !DILocalVariable(name: "o", scope: !2592, file: !505, line: 953, type: !1643)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2592)
!2603 = !DILocation(line: 953, column: 3, scope: !2592)
!2604 = !{!2605}
!2605 = distinct !{!2605, !2606, !"quoting_options_from_style: argument 0"}
!2606 = distinct !{!2606, !"quoting_options_from_style"}
!2607 = !DILocation(line: 953, column: 36, scope: !2592)
!2608 = !DILocation(line: 0, scope: !2574, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 953, column: 36, scope: !2592)
!2610 = !DILocation(line: 185, column: 26, scope: !2574, inlinedAt: !2609)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 186, column: 13, scope: !2584, inlinedAt: !2609)
!2613 = !DILocation(line: 186, column: 7, scope: !2574, inlinedAt: !2609)
!2614 = !DILocation(line: 187, column: 5, scope: !2584, inlinedAt: !2609)
!2615 = !DILocation(line: 188, column: 11, scope: !2574, inlinedAt: !2609)
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 954, column: 10, scope: !2592)
!2618 = !DILocation(line: 955, column: 1, scope: !2592)
!2619 = !DILocation(line: 954, column: 3, scope: !2592)
!2620 = distinct !DISubprogram(name: "quotearg_style", scope: !505, file: !505, line: 958, type: !2621, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!109, !528, !115}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "s", arg: 1, scope: !2620, file: !505, line: 958, type: !528)
!2625 = !DILocalVariable(name: "arg", arg: 2, scope: !2620, file: !505, line: 958, type: !115)
!2626 = distinct !DIAssignID()
!2627 = !DILocation(line: 0, scope: !2620)
!2628 = !DILocation(line: 0, scope: !2558, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 960, column: 10, scope: !2620)
!2630 = !DILocation(line: 945, column: 3, scope: !2558, inlinedAt: !2629)
!2631 = !{!2632}
!2632 = distinct !{!2632, !2633, !"quoting_options_from_style: argument 0"}
!2633 = distinct !{!2633, !"quoting_options_from_style"}
!2634 = !DILocation(line: 945, column: 36, scope: !2558, inlinedAt: !2629)
!2635 = !DILocation(line: 0, scope: !2574, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 945, column: 36, scope: !2558, inlinedAt: !2629)
!2637 = !DILocation(line: 185, column: 26, scope: !2574, inlinedAt: !2636)
!2638 = distinct !DIAssignID()
!2639 = !DILocation(line: 186, column: 13, scope: !2584, inlinedAt: !2636)
!2640 = !DILocation(line: 186, column: 7, scope: !2574, inlinedAt: !2636)
!2641 = !DILocation(line: 187, column: 5, scope: !2584, inlinedAt: !2636)
!2642 = !DILocation(line: 188, column: 11, scope: !2574, inlinedAt: !2636)
!2643 = distinct !DIAssignID()
!2644 = !DILocation(line: 946, column: 10, scope: !2558, inlinedAt: !2629)
!2645 = !DILocation(line: 947, column: 1, scope: !2558, inlinedAt: !2629)
!2646 = !DILocation(line: 960, column: 3, scope: !2620)
!2647 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !505, file: !505, line: 964, type: !2648, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!109, !528, !115, !112}
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "s", arg: 1, scope: !2647, file: !505, line: 964, type: !528)
!2652 = !DILocalVariable(name: "arg", arg: 2, scope: !2647, file: !505, line: 964, type: !115)
!2653 = !DILocalVariable(name: "argsize", arg: 3, scope: !2647, file: !505, line: 964, type: !112)
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 0, scope: !2647)
!2656 = !DILocation(line: 0, scope: !2592, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 966, column: 10, scope: !2647)
!2658 = !DILocation(line: 953, column: 3, scope: !2592, inlinedAt: !2657)
!2659 = !{!2660}
!2660 = distinct !{!2660, !2661, !"quoting_options_from_style: argument 0"}
!2661 = distinct !{!2661, !"quoting_options_from_style"}
!2662 = !DILocation(line: 953, column: 36, scope: !2592, inlinedAt: !2657)
!2663 = !DILocation(line: 0, scope: !2574, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 953, column: 36, scope: !2592, inlinedAt: !2657)
!2665 = !DILocation(line: 185, column: 26, scope: !2574, inlinedAt: !2664)
!2666 = distinct !DIAssignID()
!2667 = !DILocation(line: 186, column: 13, scope: !2584, inlinedAt: !2664)
!2668 = !DILocation(line: 186, column: 7, scope: !2574, inlinedAt: !2664)
!2669 = !DILocation(line: 187, column: 5, scope: !2584, inlinedAt: !2664)
!2670 = !DILocation(line: 188, column: 11, scope: !2574, inlinedAt: !2664)
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 954, column: 10, scope: !2592, inlinedAt: !2657)
!2673 = !DILocation(line: 955, column: 1, scope: !2592, inlinedAt: !2657)
!2674 = !DILocation(line: 966, column: 3, scope: !2647)
!2675 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !505, file: !505, line: 970, type: !2676, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!109, !115, !112, !4}
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "arg", arg: 1, scope: !2675, file: !505, line: 970, type: !115)
!2680 = !DILocalVariable(name: "argsize", arg: 2, scope: !2675, file: !505, line: 970, type: !112)
!2681 = !DILocalVariable(name: "ch", arg: 3, scope: !2675, file: !505, line: 970, type: !4)
!2682 = !DILocalVariable(name: "options", scope: !2675, file: !505, line: 972, type: !543)
!2683 = distinct !DIAssignID()
!2684 = !DILocation(line: 0, scope: !2675)
!2685 = !DILocation(line: 972, column: 3, scope: !2675)
!2686 = !DILocation(line: 973, column: 13, scope: !2675)
!2687 = !{i64 0, i64 4, !871, i64 4, i64 4, !871, i64 8, i64 32, !880, i64 40, i64 8, !808, i64 48, i64 8, !808}
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 0, scope: !1662, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 974, column: 3, scope: !2675)
!2691 = !DILocation(line: 147, column: 41, scope: !1662, inlinedAt: !2690)
!2692 = !DILocation(line: 147, column: 62, scope: !1662, inlinedAt: !2690)
!2693 = !DILocation(line: 147, column: 57, scope: !1662, inlinedAt: !2690)
!2694 = !DILocation(line: 148, column: 15, scope: !1662, inlinedAt: !2690)
!2695 = !DILocation(line: 149, column: 21, scope: !1662, inlinedAt: !2690)
!2696 = !DILocation(line: 149, column: 24, scope: !1662, inlinedAt: !2690)
!2697 = !DILocation(line: 150, column: 19, scope: !1662, inlinedAt: !2690)
!2698 = !DILocation(line: 150, column: 24, scope: !1662, inlinedAt: !2690)
!2699 = !DILocation(line: 150, column: 6, scope: !1662, inlinedAt: !2690)
!2700 = !DILocation(line: 975, column: 10, scope: !2675)
!2701 = !DILocation(line: 976, column: 1, scope: !2675)
!2702 = !DILocation(line: 975, column: 3, scope: !2675)
!2703 = distinct !DISubprogram(name: "quotearg_char", scope: !505, file: !505, line: 979, type: !2704, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!109, !115, !4}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !505, line: 979, type: !115)
!2708 = !DILocalVariable(name: "ch", arg: 2, scope: !2703, file: !505, line: 979, type: !4)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2703)
!2711 = !DILocation(line: 0, scope: !2675, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 981, column: 10, scope: !2703)
!2713 = !DILocation(line: 972, column: 3, scope: !2675, inlinedAt: !2712)
!2714 = !DILocation(line: 973, column: 13, scope: !2675, inlinedAt: !2712)
!2715 = distinct !DIAssignID()
!2716 = !DILocation(line: 0, scope: !1662, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 974, column: 3, scope: !2675, inlinedAt: !2712)
!2718 = !DILocation(line: 147, column: 41, scope: !1662, inlinedAt: !2717)
!2719 = !DILocation(line: 147, column: 62, scope: !1662, inlinedAt: !2717)
!2720 = !DILocation(line: 147, column: 57, scope: !1662, inlinedAt: !2717)
!2721 = !DILocation(line: 148, column: 15, scope: !1662, inlinedAt: !2717)
!2722 = !DILocation(line: 149, column: 21, scope: !1662, inlinedAt: !2717)
!2723 = !DILocation(line: 149, column: 24, scope: !1662, inlinedAt: !2717)
!2724 = !DILocation(line: 150, column: 19, scope: !1662, inlinedAt: !2717)
!2725 = !DILocation(line: 150, column: 24, scope: !1662, inlinedAt: !2717)
!2726 = !DILocation(line: 150, column: 6, scope: !1662, inlinedAt: !2717)
!2727 = !DILocation(line: 975, column: 10, scope: !2675, inlinedAt: !2712)
!2728 = !DILocation(line: 976, column: 1, scope: !2675, inlinedAt: !2712)
!2729 = !DILocation(line: 981, column: 3, scope: !2703)
!2730 = distinct !DISubprogram(name: "quotearg_colon", scope: !505, file: !505, line: 985, type: !997, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2731)
!2731 = !{!2732}
!2732 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !505, line: 985, type: !115)
!2733 = distinct !DIAssignID()
!2734 = !DILocation(line: 0, scope: !2730)
!2735 = !DILocation(line: 0, scope: !2703, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 987, column: 10, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2675, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 981, column: 10, scope: !2703, inlinedAt: !2736)
!2739 = !DILocation(line: 972, column: 3, scope: !2675, inlinedAt: !2738)
!2740 = !DILocation(line: 973, column: 13, scope: !2675, inlinedAt: !2738)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 0, scope: !1662, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 974, column: 3, scope: !2675, inlinedAt: !2738)
!2744 = !DILocation(line: 147, column: 57, scope: !1662, inlinedAt: !2743)
!2745 = !DILocation(line: 149, column: 21, scope: !1662, inlinedAt: !2743)
!2746 = !DILocation(line: 150, column: 6, scope: !1662, inlinedAt: !2743)
!2747 = !DILocation(line: 975, column: 10, scope: !2675, inlinedAt: !2738)
!2748 = !DILocation(line: 976, column: 1, scope: !2675, inlinedAt: !2738)
!2749 = !DILocation(line: 987, column: 3, scope: !2730)
!2750 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !505, file: !505, line: 991, type: !2548, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2751)
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "arg", arg: 1, scope: !2750, file: !505, line: 991, type: !115)
!2753 = !DILocalVariable(name: "argsize", arg: 2, scope: !2750, file: !505, line: 991, type: !112)
!2754 = distinct !DIAssignID()
!2755 = !DILocation(line: 0, scope: !2750)
!2756 = !DILocation(line: 0, scope: !2675, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 993, column: 10, scope: !2750)
!2758 = !DILocation(line: 972, column: 3, scope: !2675, inlinedAt: !2757)
!2759 = !DILocation(line: 973, column: 13, scope: !2675, inlinedAt: !2757)
!2760 = distinct !DIAssignID()
!2761 = !DILocation(line: 0, scope: !1662, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 974, column: 3, scope: !2675, inlinedAt: !2757)
!2763 = !DILocation(line: 147, column: 57, scope: !1662, inlinedAt: !2762)
!2764 = !DILocation(line: 149, column: 21, scope: !1662, inlinedAt: !2762)
!2765 = !DILocation(line: 150, column: 6, scope: !1662, inlinedAt: !2762)
!2766 = !DILocation(line: 975, column: 10, scope: !2675, inlinedAt: !2757)
!2767 = !DILocation(line: 976, column: 1, scope: !2675, inlinedAt: !2757)
!2768 = !DILocation(line: 993, column: 3, scope: !2750)
!2769 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !505, file: !505, line: 997, type: !2559, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2770)
!2770 = !{!2771, !2772, !2773, !2774}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2769, file: !505, line: 997, type: !68)
!2772 = !DILocalVariable(name: "s", arg: 2, scope: !2769, file: !505, line: 997, type: !528)
!2773 = !DILocalVariable(name: "arg", arg: 3, scope: !2769, file: !505, line: 997, type: !115)
!2774 = !DILocalVariable(name: "options", scope: !2769, file: !505, line: 999, type: !543)
!2775 = distinct !DIAssignID()
!2776 = !DILocation(line: 0, scope: !2769)
!2777 = !DILocation(line: 185, column: 26, scope: !2574, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1000, column: 13, scope: !2769)
!2779 = !DILocation(line: 999, column: 3, scope: !2769)
!2780 = !DILocation(line: 0, scope: !2574, inlinedAt: !2778)
!2781 = !DILocation(line: 186, column: 13, scope: !2584, inlinedAt: !2778)
!2782 = !DILocation(line: 186, column: 7, scope: !2574, inlinedAt: !2778)
!2783 = !DILocation(line: 187, column: 5, scope: !2584, inlinedAt: !2778)
!2784 = !{!2785}
!2785 = distinct !{!2785, !2786, !"quoting_options_from_style: argument 0"}
!2786 = distinct !{!2786, !"quoting_options_from_style"}
!2787 = !DILocation(line: 1000, column: 13, scope: !2769)
!2788 = distinct !DIAssignID()
!2789 = distinct !DIAssignID()
!2790 = !DILocation(line: 0, scope: !1662, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1001, column: 3, scope: !2769)
!2792 = !DILocation(line: 147, column: 57, scope: !1662, inlinedAt: !2791)
!2793 = !DILocation(line: 149, column: 21, scope: !1662, inlinedAt: !2791)
!2794 = !DILocation(line: 150, column: 6, scope: !1662, inlinedAt: !2791)
!2795 = distinct !DIAssignID()
!2796 = !DILocation(line: 1002, column: 10, scope: !2769)
!2797 = !DILocation(line: 1003, column: 1, scope: !2769)
!2798 = !DILocation(line: 1002, column: 3, scope: !2769)
!2799 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !505, file: !505, line: 1006, type: !2800, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!109, !68, !115, !115, !115}
!2802 = !{!2803, !2804, !2805, !2806}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !505, line: 1006, type: !68)
!2804 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2799, file: !505, line: 1006, type: !115)
!2805 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2799, file: !505, line: 1007, type: !115)
!2806 = !DILocalVariable(name: "arg", arg: 4, scope: !2799, file: !505, line: 1007, type: !115)
!2807 = distinct !DIAssignID()
!2808 = !DILocation(line: 0, scope: !2799)
!2809 = !DILocalVariable(name: "o", scope: !2810, file: !505, line: 1018, type: !543)
!2810 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !505, file: !505, line: 1014, type: !2811, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!109, !68, !115, !115, !115, !112}
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2809}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2810, file: !505, line: 1014, type: !68)
!2815 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2810, file: !505, line: 1014, type: !115)
!2816 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2810, file: !505, line: 1015, type: !115)
!2817 = !DILocalVariable(name: "arg", arg: 4, scope: !2810, file: !505, line: 1016, type: !115)
!2818 = !DILocalVariable(name: "argsize", arg: 5, scope: !2810, file: !505, line: 1016, type: !112)
!2819 = !DILocation(line: 0, scope: !2810, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 1009, column: 10, scope: !2799)
!2821 = !DILocation(line: 1018, column: 3, scope: !2810, inlinedAt: !2820)
!2822 = !DILocation(line: 1018, column: 30, scope: !2810, inlinedAt: !2820)
!2823 = distinct !DIAssignID()
!2824 = distinct !DIAssignID()
!2825 = !DILocation(line: 0, scope: !1702, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1019, column: 3, scope: !2810, inlinedAt: !2820)
!2827 = !DILocation(line: 174, column: 12, scope: !1702, inlinedAt: !2826)
!2828 = distinct !DIAssignID()
!2829 = !DILocation(line: 175, column: 8, scope: !1715, inlinedAt: !2826)
!2830 = !DILocation(line: 175, column: 19, scope: !1715, inlinedAt: !2826)
!2831 = !DILocation(line: 176, column: 5, scope: !1715, inlinedAt: !2826)
!2832 = !DILocation(line: 177, column: 6, scope: !1702, inlinedAt: !2826)
!2833 = !DILocation(line: 177, column: 17, scope: !1702, inlinedAt: !2826)
!2834 = distinct !DIAssignID()
!2835 = !DILocation(line: 178, column: 6, scope: !1702, inlinedAt: !2826)
!2836 = !DILocation(line: 178, column: 18, scope: !1702, inlinedAt: !2826)
!2837 = distinct !DIAssignID()
!2838 = !DILocation(line: 1020, column: 10, scope: !2810, inlinedAt: !2820)
!2839 = !DILocation(line: 1021, column: 1, scope: !2810, inlinedAt: !2820)
!2840 = !DILocation(line: 1009, column: 3, scope: !2799)
!2841 = distinct !DIAssignID()
!2842 = !DILocation(line: 0, scope: !2810)
!2843 = !DILocation(line: 1018, column: 3, scope: !2810)
!2844 = !DILocation(line: 1018, column: 30, scope: !2810)
!2845 = distinct !DIAssignID()
!2846 = distinct !DIAssignID()
!2847 = !DILocation(line: 0, scope: !1702, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1019, column: 3, scope: !2810)
!2849 = !DILocation(line: 174, column: 12, scope: !1702, inlinedAt: !2848)
!2850 = distinct !DIAssignID()
!2851 = !DILocation(line: 175, column: 8, scope: !1715, inlinedAt: !2848)
!2852 = !DILocation(line: 175, column: 19, scope: !1715, inlinedAt: !2848)
!2853 = !DILocation(line: 176, column: 5, scope: !1715, inlinedAt: !2848)
!2854 = !DILocation(line: 177, column: 6, scope: !1702, inlinedAt: !2848)
!2855 = !DILocation(line: 177, column: 17, scope: !1702, inlinedAt: !2848)
!2856 = distinct !DIAssignID()
!2857 = !DILocation(line: 178, column: 6, scope: !1702, inlinedAt: !2848)
!2858 = !DILocation(line: 178, column: 18, scope: !1702, inlinedAt: !2848)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 1020, column: 10, scope: !2810)
!2861 = !DILocation(line: 1021, column: 1, scope: !2810)
!2862 = !DILocation(line: 1020, column: 3, scope: !2810)
!2863 = distinct !DISubprogram(name: "quotearg_custom", scope: !505, file: !505, line: 1024, type: !2864, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!109, !115, !115, !115}
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2863, file: !505, line: 1024, type: !115)
!2868 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2863, file: !505, line: 1024, type: !115)
!2869 = !DILocalVariable(name: "arg", arg: 3, scope: !2863, file: !505, line: 1025, type: !115)
!2870 = distinct !DIAssignID()
!2871 = !DILocation(line: 0, scope: !2863)
!2872 = !DILocation(line: 0, scope: !2799, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 1027, column: 10, scope: !2863)
!2874 = !DILocation(line: 0, scope: !2810, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 1009, column: 10, scope: !2799, inlinedAt: !2873)
!2876 = !DILocation(line: 1018, column: 3, scope: !2810, inlinedAt: !2875)
!2877 = !DILocation(line: 1018, column: 30, scope: !2810, inlinedAt: !2875)
!2878 = distinct !DIAssignID()
!2879 = distinct !DIAssignID()
!2880 = !DILocation(line: 0, scope: !1702, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 1019, column: 3, scope: !2810, inlinedAt: !2875)
!2882 = !DILocation(line: 174, column: 12, scope: !1702, inlinedAt: !2881)
!2883 = distinct !DIAssignID()
!2884 = !DILocation(line: 175, column: 8, scope: !1715, inlinedAt: !2881)
!2885 = !DILocation(line: 175, column: 19, scope: !1715, inlinedAt: !2881)
!2886 = !DILocation(line: 176, column: 5, scope: !1715, inlinedAt: !2881)
!2887 = !DILocation(line: 177, column: 6, scope: !1702, inlinedAt: !2881)
!2888 = !DILocation(line: 177, column: 17, scope: !1702, inlinedAt: !2881)
!2889 = distinct !DIAssignID()
!2890 = !DILocation(line: 178, column: 6, scope: !1702, inlinedAt: !2881)
!2891 = !DILocation(line: 178, column: 18, scope: !1702, inlinedAt: !2881)
!2892 = distinct !DIAssignID()
!2893 = !DILocation(line: 1020, column: 10, scope: !2810, inlinedAt: !2875)
!2894 = !DILocation(line: 1021, column: 1, scope: !2810, inlinedAt: !2875)
!2895 = !DILocation(line: 1027, column: 3, scope: !2863)
!2896 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !505, file: !505, line: 1031, type: !2897, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!109, !115, !115, !115, !112}
!2899 = !{!2900, !2901, !2902, !2903}
!2900 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2896, file: !505, line: 1031, type: !115)
!2901 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2896, file: !505, line: 1031, type: !115)
!2902 = !DILocalVariable(name: "arg", arg: 3, scope: !2896, file: !505, line: 1032, type: !115)
!2903 = !DILocalVariable(name: "argsize", arg: 4, scope: !2896, file: !505, line: 1032, type: !112)
!2904 = distinct !DIAssignID()
!2905 = !DILocation(line: 0, scope: !2896)
!2906 = !DILocation(line: 0, scope: !2810, inlinedAt: !2907)
!2907 = distinct !DILocation(line: 1034, column: 10, scope: !2896)
!2908 = !DILocation(line: 1018, column: 3, scope: !2810, inlinedAt: !2907)
!2909 = !DILocation(line: 1018, column: 30, scope: !2810, inlinedAt: !2907)
!2910 = distinct !DIAssignID()
!2911 = distinct !DIAssignID()
!2912 = !DILocation(line: 0, scope: !1702, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 1019, column: 3, scope: !2810, inlinedAt: !2907)
!2914 = !DILocation(line: 174, column: 12, scope: !1702, inlinedAt: !2913)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 175, column: 8, scope: !1715, inlinedAt: !2913)
!2917 = !DILocation(line: 175, column: 19, scope: !1715, inlinedAt: !2913)
!2918 = !DILocation(line: 176, column: 5, scope: !1715, inlinedAt: !2913)
!2919 = !DILocation(line: 177, column: 6, scope: !1702, inlinedAt: !2913)
!2920 = !DILocation(line: 177, column: 17, scope: !1702, inlinedAt: !2913)
!2921 = distinct !DIAssignID()
!2922 = !DILocation(line: 178, column: 6, scope: !1702, inlinedAt: !2913)
!2923 = !DILocation(line: 178, column: 18, scope: !1702, inlinedAt: !2913)
!2924 = distinct !DIAssignID()
!2925 = !DILocation(line: 1020, column: 10, scope: !2810, inlinedAt: !2907)
!2926 = !DILocation(line: 1021, column: 1, scope: !2810, inlinedAt: !2907)
!2927 = !DILocation(line: 1034, column: 3, scope: !2896)
!2928 = distinct !DISubprogram(name: "quote_n_mem", scope: !505, file: !505, line: 1049, type: !2929, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!115, !68, !115, !112}
!2931 = !{!2932, !2933, !2934}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !505, line: 1049, type: !68)
!2933 = !DILocalVariable(name: "arg", arg: 2, scope: !2928, file: !505, line: 1049, type: !115)
!2934 = !DILocalVariable(name: "argsize", arg: 3, scope: !2928, file: !505, line: 1049, type: !112)
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocation(line: 1051, column: 10, scope: !2928)
!2937 = !DILocation(line: 1051, column: 3, scope: !2928)
!2938 = distinct !DISubprogram(name: "quote_mem", scope: !505, file: !505, line: 1055, type: !2939, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!115, !115, !112}
!2941 = !{!2942, !2943}
!2942 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !505, line: 1055, type: !115)
!2943 = !DILocalVariable(name: "argsize", arg: 2, scope: !2938, file: !505, line: 1055, type: !112)
!2944 = !DILocation(line: 0, scope: !2938)
!2945 = !DILocation(line: 0, scope: !2928, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 1057, column: 10, scope: !2938)
!2947 = !DILocation(line: 1051, column: 10, scope: !2928, inlinedAt: !2946)
!2948 = !DILocation(line: 1057, column: 3, scope: !2938)
!2949 = distinct !DISubprogram(name: "quote_n", scope: !505, file: !505, line: 1061, type: !2950, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2952)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!115, !68, !115}
!2952 = !{!2953, !2954}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2949, file: !505, line: 1061, type: !68)
!2954 = !DILocalVariable(name: "arg", arg: 2, scope: !2949, file: !505, line: 1061, type: !115)
!2955 = !DILocation(line: 0, scope: !2949)
!2956 = !DILocation(line: 0, scope: !2928, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 1063, column: 10, scope: !2949)
!2958 = !DILocation(line: 1051, column: 10, scope: !2928, inlinedAt: !2957)
!2959 = !DILocation(line: 1063, column: 3, scope: !2949)
!2960 = distinct !DISubprogram(name: "quote", scope: !505, file: !505, line: 1067, type: !2961, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !526, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!115, !115}
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "arg", arg: 1, scope: !2960, file: !505, line: 1067, type: !115)
!2965 = !DILocation(line: 0, scope: !2960)
!2966 = !DILocation(line: 0, scope: !2949, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 1069, column: 10, scope: !2960)
!2968 = !DILocation(line: 0, scope: !2928, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 1063, column: 10, scope: !2949, inlinedAt: !2967)
!2970 = !DILocation(line: 1051, column: 10, scope: !2928, inlinedAt: !2969)
!2971 = !DILocation(line: 1069, column: 3, scope: !2960)
!2972 = distinct !DISubprogram(name: "version_etc_arn", scope: !606, file: !606, line: 61, type: !2973, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3010)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{null, !2975, !115, !115, !115, !3009, !112}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !2978)
!2978 = !{!2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2977, file: !173, line: 51, baseType: !68, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2977, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2977, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2977, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2977, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2977, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2977, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2977, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2977, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2977, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2977, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2977, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2977, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2977, file: !173, line: 70, baseType: !2993, size: 64, offset: 832)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2977, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2977, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2977, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2977, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2977, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2977, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2977, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2977, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2977, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2977, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2977, file: !173, line: 93, baseType: !2993, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2977, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2977, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2977, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2977, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016}
!3011 = !DILocalVariable(name: "stream", arg: 1, scope: !2972, file: !606, line: 61, type: !2975)
!3012 = !DILocalVariable(name: "command_name", arg: 2, scope: !2972, file: !606, line: 62, type: !115)
!3013 = !DILocalVariable(name: "package", arg: 3, scope: !2972, file: !606, line: 62, type: !115)
!3014 = !DILocalVariable(name: "version", arg: 4, scope: !2972, file: !606, line: 63, type: !115)
!3015 = !DILocalVariable(name: "authors", arg: 5, scope: !2972, file: !606, line: 64, type: !3009)
!3016 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2972, file: !606, line: 64, type: !112)
!3017 = !DILocation(line: 0, scope: !2972)
!3018 = !DILocation(line: 66, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2972, file: !606, line: 66, column: 7)
!3020 = !DILocation(line: 66, column: 7, scope: !2972)
!3021 = !DILocation(line: 67, column: 5, scope: !3019)
!3022 = !DILocation(line: 69, column: 5, scope: !3019)
!3023 = !DILocation(line: 83, column: 3, scope: !2972)
!3024 = !DILocation(line: 85, column: 3, scope: !2972)
!3025 = !DILocation(line: 88, column: 3, scope: !2972)
!3026 = !DILocation(line: 95, column: 3, scope: !2972)
!3027 = !DILocation(line: 97, column: 3, scope: !2972)
!3028 = !DILocation(line: 105, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2972, file: !606, line: 98, column: 5)
!3030 = !DILocation(line: 106, column: 7, scope: !3029)
!3031 = !DILocation(line: 109, column: 7, scope: !3029)
!3032 = !DILocation(line: 110, column: 7, scope: !3029)
!3033 = !DILocation(line: 113, column: 7, scope: !3029)
!3034 = !DILocation(line: 115, column: 7, scope: !3029)
!3035 = !DILocation(line: 120, column: 7, scope: !3029)
!3036 = !DILocation(line: 122, column: 7, scope: !3029)
!3037 = !DILocation(line: 127, column: 7, scope: !3029)
!3038 = !DILocation(line: 129, column: 7, scope: !3029)
!3039 = !DILocation(line: 134, column: 7, scope: !3029)
!3040 = !DILocation(line: 137, column: 7, scope: !3029)
!3041 = !DILocation(line: 142, column: 7, scope: !3029)
!3042 = !DILocation(line: 145, column: 7, scope: !3029)
!3043 = !DILocation(line: 150, column: 7, scope: !3029)
!3044 = !DILocation(line: 154, column: 7, scope: !3029)
!3045 = !DILocation(line: 159, column: 7, scope: !3029)
!3046 = !DILocation(line: 163, column: 7, scope: !3029)
!3047 = !DILocation(line: 170, column: 7, scope: !3029)
!3048 = !DILocation(line: 174, column: 7, scope: !3029)
!3049 = !DILocation(line: 176, column: 1, scope: !2972)
!3050 = distinct !DISubprogram(name: "version_etc_ar", scope: !606, file: !606, line: 183, type: !3051, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{null, !2975, !115, !115, !115, !3009}
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059}
!3054 = !DILocalVariable(name: "stream", arg: 1, scope: !3050, file: !606, line: 183, type: !2975)
!3055 = !DILocalVariable(name: "command_name", arg: 2, scope: !3050, file: !606, line: 184, type: !115)
!3056 = !DILocalVariable(name: "package", arg: 3, scope: !3050, file: !606, line: 184, type: !115)
!3057 = !DILocalVariable(name: "version", arg: 4, scope: !3050, file: !606, line: 185, type: !115)
!3058 = !DILocalVariable(name: "authors", arg: 5, scope: !3050, file: !606, line: 185, type: !3009)
!3059 = !DILocalVariable(name: "n_authors", scope: !3050, file: !606, line: 187, type: !112)
!3060 = !DILocation(line: 0, scope: !3050)
!3061 = !DILocation(line: 189, column: 8, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3050, file: !606, line: 189, column: 3)
!3063 = !DILocation(line: 189, scope: !3062)
!3064 = !DILocation(line: 189, column: 23, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3062, file: !606, line: 189, column: 3)
!3066 = !DILocation(line: 189, column: 3, scope: !3062)
!3067 = !DILocation(line: 189, column: 52, scope: !3065)
!3068 = distinct !{!3068, !3066, !3069, !918}
!3069 = !DILocation(line: 190, column: 5, scope: !3062)
!3070 = !DILocation(line: 191, column: 3, scope: !3050)
!3071 = !DILocation(line: 192, column: 1, scope: !3050)
!3072 = distinct !DISubprogram(name: "version_etc_va", scope: !606, file: !606, line: 199, type: !3073, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3082)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !2975, !115, !115, !115, !3075}
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3076, file: !606, line: 192, baseType: !73, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3076, file: !606, line: 192, baseType: !73, size: 32, offset: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3076, file: !606, line: 192, baseType: !110, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3076, file: !606, line: 192, baseType: !110, size: 64, offset: 128)
!3082 = !{!3083, !3084, !3085, !3086, !3087, !3088, !3089}
!3083 = !DILocalVariable(name: "stream", arg: 1, scope: !3072, file: !606, line: 199, type: !2975)
!3084 = !DILocalVariable(name: "command_name", arg: 2, scope: !3072, file: !606, line: 200, type: !115)
!3085 = !DILocalVariable(name: "package", arg: 3, scope: !3072, file: !606, line: 200, type: !115)
!3086 = !DILocalVariable(name: "version", arg: 4, scope: !3072, file: !606, line: 201, type: !115)
!3087 = !DILocalVariable(name: "authors", arg: 5, scope: !3072, file: !606, line: 201, type: !3075)
!3088 = !DILocalVariable(name: "n_authors", scope: !3072, file: !606, line: 203, type: !112)
!3089 = !DILocalVariable(name: "authtab", scope: !3072, file: !606, line: 204, type: !3090)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !50)
!3091 = distinct !DIAssignID()
!3092 = !DILocation(line: 0, scope: !3072)
!3093 = !DILocation(line: 204, column: 3, scope: !3072)
!3094 = !DILocation(line: 208, column: 35, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3096, file: !606, line: 206, column: 3)
!3096 = distinct !DILexicalBlock(scope: !3072, file: !606, line: 206, column: 3)
!3097 = !DILocation(line: 208, column: 33, scope: !3095)
!3098 = !DILocation(line: 208, column: 67, scope: !3095)
!3099 = !DILocation(line: 206, column: 3, scope: !3096)
!3100 = !DILocation(line: 208, column: 14, scope: !3095)
!3101 = !DILocation(line: 0, scope: !3096)
!3102 = !DILocation(line: 211, column: 3, scope: !3072)
!3103 = !DILocation(line: 213, column: 1, scope: !3072)
!3104 = distinct !DISubprogram(name: "version_etc", scope: !606, file: !606, line: 230, type: !3105, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3107)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{null, !2975, !115, !115, !115, null}
!3107 = !{!3108, !3109, !3110, !3111, !3112}
!3108 = !DILocalVariable(name: "stream", arg: 1, scope: !3104, file: !606, line: 230, type: !2975)
!3109 = !DILocalVariable(name: "command_name", arg: 2, scope: !3104, file: !606, line: 231, type: !115)
!3110 = !DILocalVariable(name: "package", arg: 3, scope: !3104, file: !606, line: 231, type: !115)
!3111 = !DILocalVariable(name: "version", arg: 4, scope: !3104, file: !606, line: 232, type: !115)
!3112 = !DILocalVariable(name: "authors", scope: !3104, file: !606, line: 234, type: !3113)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !866, line: 52, baseType: !3114)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1378, line: 12, baseType: !3115)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !606, baseType: !3116)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3076, size: 192, elements: !45)
!3117 = distinct !DIAssignID()
!3118 = !DILocation(line: 0, scope: !3104)
!3119 = !DILocation(line: 234, column: 3, scope: !3104)
!3120 = !DILocation(line: 235, column: 3, scope: !3104)
!3121 = !DILocation(line: 236, column: 3, scope: !3104)
!3122 = !DILocation(line: 237, column: 3, scope: !3104)
!3123 = !DILocation(line: 238, column: 1, scope: !3104)
!3124 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !606, file: !606, line: 241, type: !442, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727)
!3125 = !DILocation(line: 243, column: 3, scope: !3124)
!3126 = !DILocation(line: 248, column: 3, scope: !3124)
!3127 = !DILocation(line: 254, column: 3, scope: !3124)
!3128 = !DILocation(line: 259, column: 3, scope: !3124)
!3129 = !DILocation(line: 261, column: 1, scope: !3124)
!3130 = distinct !DISubprogram(name: "xnrealloc", scope: !3131, file: !3131, line: 147, type: !3132, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3134)
!3131 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!110, !110, !112, !112}
!3134 = !{!3135, !3136, !3137}
!3135 = !DILocalVariable(name: "p", arg: 1, scope: !3130, file: !3131, line: 147, type: !110)
!3136 = !DILocalVariable(name: "n", arg: 2, scope: !3130, file: !3131, line: 147, type: !112)
!3137 = !DILocalVariable(name: "s", arg: 3, scope: !3130, file: !3131, line: 147, type: !112)
!3138 = !DILocation(line: 0, scope: !3130)
!3139 = !DILocalVariable(name: "p", arg: 1, scope: !3140, file: !735, line: 83, type: !110)
!3140 = distinct !DISubprogram(name: "xreallocarray", scope: !735, file: !735, line: 83, type: !3132, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3141)
!3141 = !{!3139, !3142, !3143}
!3142 = !DILocalVariable(name: "n", arg: 2, scope: !3140, file: !735, line: 83, type: !112)
!3143 = !DILocalVariable(name: "s", arg: 3, scope: !3140, file: !735, line: 83, type: !112)
!3144 = !DILocation(line: 0, scope: !3140, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 149, column: 10, scope: !3130)
!3146 = !DILocation(line: 85, column: 25, scope: !3140, inlinedAt: !3145)
!3147 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !735, line: 37, type: !110)
!3148 = distinct !DISubprogram(name: "check_nonnull", scope: !735, file: !735, line: 37, type: !3149, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!110, !110}
!3151 = !{!3147}
!3152 = !DILocation(line: 0, scope: !3148, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 85, column: 10, scope: !3140, inlinedAt: !3145)
!3154 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3153)
!3155 = distinct !DILexicalBlock(scope: !3148, file: !735, line: 39, column: 7)
!3156 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3153)
!3157 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3153)
!3158 = !DILocation(line: 149, column: 3, scope: !3130)
!3159 = !DILocation(line: 0, scope: !3140)
!3160 = !DILocation(line: 85, column: 25, scope: !3140)
!3161 = !DILocation(line: 0, scope: !3148, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 85, column: 10, scope: !3140)
!3163 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3162)
!3164 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3162)
!3165 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3162)
!3166 = !DILocation(line: 85, column: 3, scope: !3140)
!3167 = distinct !DISubprogram(name: "xmalloc", scope: !735, file: !735, line: 47, type: !3168, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!110, !112}
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "s", arg: 1, scope: !3167, file: !735, line: 47, type: !112)
!3172 = !DILocation(line: 0, scope: !3167)
!3173 = !DILocation(line: 49, column: 25, scope: !3167)
!3174 = !DILocation(line: 0, scope: !3148, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 49, column: 10, scope: !3167)
!3176 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3175)
!3177 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3175)
!3178 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3175)
!3179 = !DILocation(line: 49, column: 3, scope: !3167)
!3180 = !DISubprogram(name: "malloc", scope: !995, file: !995, line: 540, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3181 = distinct !DISubprogram(name: "ximalloc", scope: !735, file: !735, line: 53, type: !3182, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!110, !754}
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "s", arg: 1, scope: !3181, file: !735, line: 53, type: !754)
!3186 = !DILocation(line: 0, scope: !3181)
!3187 = !DILocalVariable(name: "s", arg: 1, scope: !3188, file: !3189, line: 55, type: !754)
!3188 = distinct !DISubprogram(name: "imalloc", scope: !3189, file: !3189, line: 55, type: !3182, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3190)
!3189 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3190 = !{!3187}
!3191 = !DILocation(line: 0, scope: !3188, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 55, column: 25, scope: !3181)
!3193 = !DILocation(line: 57, column: 26, scope: !3188, inlinedAt: !3192)
!3194 = !DILocation(line: 0, scope: !3148, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 55, column: 10, scope: !3181)
!3196 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3195)
!3197 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3195)
!3198 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3195)
!3199 = !DILocation(line: 55, column: 3, scope: !3181)
!3200 = distinct !DISubprogram(name: "xcharalloc", scope: !735, file: !735, line: 59, type: !3201, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!109, !112}
!3203 = !{!3204}
!3204 = !DILocalVariable(name: "n", arg: 1, scope: !3200, file: !735, line: 59, type: !112)
!3205 = !DILocation(line: 0, scope: !3200)
!3206 = !DILocation(line: 0, scope: !3167, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 61, column: 10, scope: !3200)
!3208 = !DILocation(line: 49, column: 25, scope: !3167, inlinedAt: !3207)
!3209 = !DILocation(line: 0, scope: !3148, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 49, column: 10, scope: !3167, inlinedAt: !3207)
!3211 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3210)
!3214 = !DILocation(line: 61, column: 3, scope: !3200)
!3215 = distinct !DISubprogram(name: "xrealloc", scope: !735, file: !735, line: 68, type: !3216, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3218)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!110, !110, !112}
!3218 = !{!3219, !3220}
!3219 = !DILocalVariable(name: "p", arg: 1, scope: !3215, file: !735, line: 68, type: !110)
!3220 = !DILocalVariable(name: "s", arg: 2, scope: !3215, file: !735, line: 68, type: !112)
!3221 = !DILocation(line: 0, scope: !3215)
!3222 = !DILocalVariable(name: "ptr", arg: 1, scope: !3223, file: !3224, line: 2057, type: !110)
!3223 = distinct !DISubprogram(name: "rpl_realloc", scope: !3224, file: !3224, line: 2057, type: !3216, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3225)
!3224 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3225 = !{!3222, !3226}
!3226 = !DILocalVariable(name: "size", arg: 2, scope: !3223, file: !3224, line: 2057, type: !112)
!3227 = !DILocation(line: 0, scope: !3223, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 70, column: 25, scope: !3215)
!3229 = !DILocation(line: 2059, column: 24, scope: !3223, inlinedAt: !3228)
!3230 = !DILocation(line: 2059, column: 10, scope: !3223, inlinedAt: !3228)
!3231 = !DILocation(line: 0, scope: !3148, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 70, column: 10, scope: !3215)
!3233 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3232)
!3234 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3232)
!3235 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3232)
!3236 = !DILocation(line: 70, column: 3, scope: !3215)
!3237 = !DISubprogram(name: "realloc", scope: !995, file: !995, line: 551, type: !3216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3238 = distinct !DISubprogram(name: "xirealloc", scope: !735, file: !735, line: 74, type: !3239, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!110, !110, !754}
!3241 = !{!3242, !3243}
!3242 = !DILocalVariable(name: "p", arg: 1, scope: !3238, file: !735, line: 74, type: !110)
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3238, file: !735, line: 74, type: !754)
!3244 = !DILocation(line: 0, scope: !3238)
!3245 = !DILocalVariable(name: "p", arg: 1, scope: !3246, file: !3189, line: 66, type: !110)
!3246 = distinct !DISubprogram(name: "irealloc", scope: !3189, file: !3189, line: 66, type: !3239, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3247)
!3247 = !{!3245, !3248}
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !3189, line: 66, type: !754)
!3249 = !DILocation(line: 0, scope: !3246, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 76, column: 25, scope: !3238)
!3251 = !DILocation(line: 0, scope: !3223, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 68, column: 26, scope: !3246, inlinedAt: !3250)
!3253 = !DILocation(line: 2059, column: 24, scope: !3223, inlinedAt: !3252)
!3254 = !DILocation(line: 2059, column: 10, scope: !3223, inlinedAt: !3252)
!3255 = !DILocation(line: 0, scope: !3148, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 76, column: 10, scope: !3238)
!3257 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3256)
!3258 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3256)
!3259 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3256)
!3260 = !DILocation(line: 76, column: 3, scope: !3238)
!3261 = distinct !DISubprogram(name: "xireallocarray", scope: !735, file: !735, line: 89, type: !3262, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!110, !110, !754, !754}
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "p", arg: 1, scope: !3261, file: !735, line: 89, type: !110)
!3266 = !DILocalVariable(name: "n", arg: 2, scope: !3261, file: !735, line: 89, type: !754)
!3267 = !DILocalVariable(name: "s", arg: 3, scope: !3261, file: !735, line: 89, type: !754)
!3268 = !DILocation(line: 0, scope: !3261)
!3269 = !DILocalVariable(name: "p", arg: 1, scope: !3270, file: !3189, line: 98, type: !110)
!3270 = distinct !DISubprogram(name: "ireallocarray", scope: !3189, file: !3189, line: 98, type: !3262, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3271)
!3271 = !{!3269, !3272, !3273}
!3272 = !DILocalVariable(name: "n", arg: 2, scope: !3270, file: !3189, line: 98, type: !754)
!3273 = !DILocalVariable(name: "s", arg: 3, scope: !3270, file: !3189, line: 98, type: !754)
!3274 = !DILocation(line: 0, scope: !3270, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 91, column: 25, scope: !3261)
!3276 = !DILocation(line: 101, column: 13, scope: !3270, inlinedAt: !3275)
!3277 = !DILocation(line: 0, scope: !3148, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 91, column: 10, scope: !3261)
!3279 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3278)
!3280 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3278)
!3281 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3278)
!3282 = !DILocation(line: 91, column: 3, scope: !3261)
!3283 = distinct !DISubprogram(name: "xnmalloc", scope: !735, file: !735, line: 98, type: !3284, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!110, !112, !112}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "n", arg: 1, scope: !3283, file: !735, line: 98, type: !112)
!3288 = !DILocalVariable(name: "s", arg: 2, scope: !3283, file: !735, line: 98, type: !112)
!3289 = !DILocation(line: 0, scope: !3283)
!3290 = !DILocation(line: 0, scope: !3140, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 100, column: 10, scope: !3283)
!3292 = !DILocation(line: 85, column: 25, scope: !3140, inlinedAt: !3291)
!3293 = !DILocation(line: 0, scope: !3148, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 85, column: 10, scope: !3140, inlinedAt: !3291)
!3295 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3294)
!3296 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3294)
!3297 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3294)
!3298 = !DILocation(line: 100, column: 3, scope: !3283)
!3299 = distinct !DISubprogram(name: "xinmalloc", scope: !735, file: !735, line: 104, type: !3300, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!110, !754, !754}
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "n", arg: 1, scope: !3299, file: !735, line: 104, type: !754)
!3304 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !735, line: 104, type: !754)
!3305 = !DILocation(line: 0, scope: !3299)
!3306 = !DILocation(line: 0, scope: !3261, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 106, column: 10, scope: !3299)
!3308 = !DILocation(line: 0, scope: !3270, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 91, column: 25, scope: !3261, inlinedAt: !3307)
!3310 = !DILocation(line: 101, column: 13, scope: !3270, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !3148, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 91, column: 10, scope: !3261, inlinedAt: !3307)
!3313 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3312)
!3314 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3312)
!3315 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3312)
!3316 = !DILocation(line: 106, column: 3, scope: !3299)
!3317 = distinct !DISubprogram(name: "x2realloc", scope: !735, file: !735, line: 116, type: !3318, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3320)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!110, !110, !741}
!3320 = !{!3321, !3322}
!3321 = !DILocalVariable(name: "p", arg: 1, scope: !3317, file: !735, line: 116, type: !110)
!3322 = !DILocalVariable(name: "ps", arg: 2, scope: !3317, file: !735, line: 116, type: !741)
!3323 = !DILocation(line: 0, scope: !3317)
!3324 = !DILocation(line: 0, scope: !738, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 118, column: 10, scope: !3317)
!3326 = !DILocation(line: 178, column: 14, scope: !738, inlinedAt: !3325)
!3327 = !DILocation(line: 180, column: 9, scope: !3328, inlinedAt: !3325)
!3328 = distinct !DILexicalBlock(scope: !738, file: !735, line: 180, column: 7)
!3329 = !DILocation(line: 180, column: 7, scope: !738, inlinedAt: !3325)
!3330 = !DILocation(line: 182, column: 13, scope: !3331, inlinedAt: !3325)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !735, line: 182, column: 11)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !735, line: 181, column: 5)
!3333 = !DILocation(line: 182, column: 11, scope: !3332, inlinedAt: !3325)
!3334 = !DILocation(line: 197, column: 11, scope: !3335, inlinedAt: !3325)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !735, line: 197, column: 11)
!3336 = distinct !DILexicalBlock(scope: !3328, file: !735, line: 195, column: 5)
!3337 = !DILocation(line: 197, column: 11, scope: !3336, inlinedAt: !3325)
!3338 = !DILocation(line: 198, column: 9, scope: !3335, inlinedAt: !3325)
!3339 = !DILocation(line: 0, scope: !3140, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 201, column: 7, scope: !738, inlinedAt: !3325)
!3341 = !DILocation(line: 85, column: 25, scope: !3140, inlinedAt: !3340)
!3342 = !DILocation(line: 0, scope: !3148, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 85, column: 10, scope: !3140, inlinedAt: !3340)
!3344 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3343)
!3345 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3343)
!3346 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3343)
!3347 = !DILocation(line: 202, column: 7, scope: !738, inlinedAt: !3325)
!3348 = !DILocation(line: 118, column: 3, scope: !3317)
!3349 = !DILocation(line: 0, scope: !738)
!3350 = !DILocation(line: 178, column: 14, scope: !738)
!3351 = !DILocation(line: 180, column: 9, scope: !3328)
!3352 = !DILocation(line: 180, column: 7, scope: !738)
!3353 = !DILocation(line: 182, column: 13, scope: !3331)
!3354 = !DILocation(line: 182, column: 11, scope: !3332)
!3355 = !DILocation(line: 190, column: 30, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3331, file: !735, line: 183, column: 9)
!3357 = !DILocation(line: 191, column: 16, scope: !3356)
!3358 = !DILocation(line: 191, column: 13, scope: !3356)
!3359 = !DILocation(line: 192, column: 9, scope: !3356)
!3360 = !DILocation(line: 197, column: 11, scope: !3335)
!3361 = !DILocation(line: 197, column: 11, scope: !3336)
!3362 = !DILocation(line: 198, column: 9, scope: !3335)
!3363 = !DILocation(line: 0, scope: !3140, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 201, column: 7, scope: !738)
!3365 = !DILocation(line: 85, column: 25, scope: !3140, inlinedAt: !3364)
!3366 = !DILocation(line: 0, scope: !3148, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 85, column: 10, scope: !3140, inlinedAt: !3364)
!3368 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3367)
!3369 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3367)
!3370 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3367)
!3371 = !DILocation(line: 202, column: 7, scope: !738)
!3372 = !DILocation(line: 203, column: 3, scope: !738)
!3373 = !DILocation(line: 0, scope: !750)
!3374 = !DILocation(line: 230, column: 14, scope: !750)
!3375 = !DILocation(line: 238, column: 7, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !750, file: !735, line: 238, column: 7)
!3377 = !DILocation(line: 238, column: 7, scope: !750)
!3378 = !DILocation(line: 240, column: 9, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !750, file: !735, line: 240, column: 7)
!3380 = !DILocation(line: 240, column: 18, scope: !3379)
!3381 = !DILocation(line: 253, column: 8, scope: !750)
!3382 = !DILocation(line: 256, column: 7, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !750, file: !735, line: 256, column: 7)
!3384 = !DILocation(line: 256, column: 7, scope: !750)
!3385 = !DILocation(line: 258, column: 27, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !735, line: 257, column: 5)
!3387 = !DILocation(line: 259, column: 50, scope: !3386)
!3388 = !DILocation(line: 259, column: 32, scope: !3386)
!3389 = !DILocation(line: 260, column: 5, scope: !3386)
!3390 = !DILocation(line: 262, column: 9, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !750, file: !735, line: 262, column: 7)
!3392 = !DILocation(line: 262, column: 7, scope: !750)
!3393 = !DILocation(line: 263, column: 9, scope: !3391)
!3394 = !DILocation(line: 263, column: 5, scope: !3391)
!3395 = !DILocation(line: 264, column: 9, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !750, file: !735, line: 264, column: 7)
!3397 = !DILocation(line: 264, column: 14, scope: !3396)
!3398 = !DILocation(line: 265, column: 7, scope: !3396)
!3399 = !DILocation(line: 265, column: 11, scope: !3396)
!3400 = !DILocation(line: 266, column: 11, scope: !3396)
!3401 = !DILocation(line: 267, column: 14, scope: !3396)
!3402 = !DILocation(line: 264, column: 7, scope: !750)
!3403 = !DILocation(line: 268, column: 5, scope: !3396)
!3404 = !DILocation(line: 0, scope: !3215, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 269, column: 8, scope: !750)
!3406 = !DILocation(line: 0, scope: !3223, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 70, column: 25, scope: !3215, inlinedAt: !3405)
!3408 = !DILocation(line: 2059, column: 24, scope: !3223, inlinedAt: !3407)
!3409 = !DILocation(line: 2059, column: 10, scope: !3223, inlinedAt: !3407)
!3410 = !DILocation(line: 0, scope: !3148, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 70, column: 10, scope: !3215, inlinedAt: !3405)
!3412 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3411)
!3413 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3411)
!3414 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3411)
!3415 = !DILocation(line: 270, column: 7, scope: !750)
!3416 = !DILocation(line: 271, column: 3, scope: !750)
!3417 = distinct !DISubprogram(name: "xzalloc", scope: !735, file: !735, line: 279, type: !3168, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3418)
!3418 = !{!3419}
!3419 = !DILocalVariable(name: "s", arg: 1, scope: !3417, file: !735, line: 279, type: !112)
!3420 = !DILocation(line: 0, scope: !3417)
!3421 = !DILocalVariable(name: "n", arg: 1, scope: !3422, file: !735, line: 294, type: !112)
!3422 = distinct !DISubprogram(name: "xcalloc", scope: !735, file: !735, line: 294, type: !3284, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3423)
!3423 = !{!3421, !3424}
!3424 = !DILocalVariable(name: "s", arg: 2, scope: !3422, file: !735, line: 294, type: !112)
!3425 = !DILocation(line: 0, scope: !3422, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 281, column: 10, scope: !3417)
!3427 = !DILocation(line: 296, column: 25, scope: !3422, inlinedAt: !3426)
!3428 = !DILocation(line: 0, scope: !3148, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 296, column: 10, scope: !3422, inlinedAt: !3426)
!3430 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3429)
!3431 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3429)
!3432 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3429)
!3433 = !DILocation(line: 281, column: 3, scope: !3417)
!3434 = !DISubprogram(name: "calloc", scope: !995, file: !995, line: 543, type: !3284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3435 = !DILocation(line: 0, scope: !3422)
!3436 = !DILocation(line: 296, column: 25, scope: !3422)
!3437 = !DILocation(line: 0, scope: !3148, inlinedAt: !3438)
!3438 = distinct !DILocation(line: 296, column: 10, scope: !3422)
!3439 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3438)
!3440 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3438)
!3441 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3438)
!3442 = !DILocation(line: 296, column: 3, scope: !3422)
!3443 = distinct !DISubprogram(name: "xizalloc", scope: !735, file: !735, line: 285, type: !3182, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3444)
!3444 = !{!3445}
!3445 = !DILocalVariable(name: "s", arg: 1, scope: !3443, file: !735, line: 285, type: !754)
!3446 = !DILocation(line: 0, scope: !3443)
!3447 = !DILocalVariable(name: "n", arg: 1, scope: !3448, file: !735, line: 300, type: !754)
!3448 = distinct !DISubprogram(name: "xicalloc", scope: !735, file: !735, line: 300, type: !3300, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3449)
!3449 = !{!3447, !3450}
!3450 = !DILocalVariable(name: "s", arg: 2, scope: !3448, file: !735, line: 300, type: !754)
!3451 = !DILocation(line: 0, scope: !3448, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 287, column: 10, scope: !3443)
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3454, file: !3189, line: 77, type: !754)
!3454 = distinct !DISubprogram(name: "icalloc", scope: !3189, file: !3189, line: 77, type: !3300, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3455)
!3455 = !{!3453, !3456}
!3456 = !DILocalVariable(name: "s", arg: 2, scope: !3454, file: !3189, line: 77, type: !754)
!3457 = !DILocation(line: 0, scope: !3454, inlinedAt: !3458)
!3458 = distinct !DILocation(line: 302, column: 25, scope: !3448, inlinedAt: !3452)
!3459 = !DILocation(line: 91, column: 10, scope: !3454, inlinedAt: !3458)
!3460 = !DILocation(line: 0, scope: !3148, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 302, column: 10, scope: !3448, inlinedAt: !3452)
!3462 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3461)
!3463 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3461)
!3464 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3461)
!3465 = !DILocation(line: 287, column: 3, scope: !3443)
!3466 = !DILocation(line: 0, scope: !3448)
!3467 = !DILocation(line: 0, scope: !3454, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 302, column: 25, scope: !3448)
!3469 = !DILocation(line: 91, column: 10, scope: !3454, inlinedAt: !3468)
!3470 = !DILocation(line: 0, scope: !3148, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 302, column: 10, scope: !3448)
!3472 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3471)
!3473 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3471)
!3474 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3471)
!3475 = !DILocation(line: 302, column: 3, scope: !3448)
!3476 = distinct !DISubprogram(name: "xmemdup", scope: !735, file: !735, line: 310, type: !3477, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!110, !1019, !112}
!3479 = !{!3480, !3481}
!3480 = !DILocalVariable(name: "p", arg: 1, scope: !3476, file: !735, line: 310, type: !1019)
!3481 = !DILocalVariable(name: "s", arg: 2, scope: !3476, file: !735, line: 310, type: !112)
!3482 = !DILocation(line: 0, scope: !3476)
!3483 = !DILocation(line: 0, scope: !3167, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 312, column: 18, scope: !3476)
!3485 = !DILocation(line: 49, column: 25, scope: !3167, inlinedAt: !3484)
!3486 = !DILocation(line: 0, scope: !3148, inlinedAt: !3487)
!3487 = distinct !DILocation(line: 49, column: 10, scope: !3167, inlinedAt: !3484)
!3488 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3487)
!3489 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3487)
!3490 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3487)
!3491 = !DILocalVariable(name: "__dest", arg: 1, scope: !3492, file: !1605, line: 26, type: !3495)
!3492 = distinct !DISubprogram(name: "memcpy", scope: !1605, file: !1605, line: 26, type: !3493, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3496)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!110, !3495, !1018, !112}
!3495 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!3496 = !{!3491, !3497, !3498}
!3497 = !DILocalVariable(name: "__src", arg: 2, scope: !3492, file: !1605, line: 26, type: !1018)
!3498 = !DILocalVariable(name: "__len", arg: 3, scope: !3492, file: !1605, line: 26, type: !112)
!3499 = !DILocation(line: 0, scope: !3492, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 312, column: 10, scope: !3476)
!3501 = !DILocation(line: 29, column: 10, scope: !3492, inlinedAt: !3500)
!3502 = !DILocation(line: 312, column: 3, scope: !3476)
!3503 = distinct !DISubprogram(name: "ximemdup", scope: !735, file: !735, line: 316, type: !3504, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3506)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!110, !1019, !754}
!3506 = !{!3507, !3508}
!3507 = !DILocalVariable(name: "p", arg: 1, scope: !3503, file: !735, line: 316, type: !1019)
!3508 = !DILocalVariable(name: "s", arg: 2, scope: !3503, file: !735, line: 316, type: !754)
!3509 = !DILocation(line: 0, scope: !3503)
!3510 = !DILocation(line: 0, scope: !3181, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 318, column: 18, scope: !3503)
!3512 = !DILocation(line: 0, scope: !3188, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 55, column: 25, scope: !3181, inlinedAt: !3511)
!3514 = !DILocation(line: 57, column: 26, scope: !3188, inlinedAt: !3513)
!3515 = !DILocation(line: 0, scope: !3148, inlinedAt: !3516)
!3516 = distinct !DILocation(line: 55, column: 10, scope: !3181, inlinedAt: !3511)
!3517 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3516)
!3518 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3516)
!3519 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3516)
!3520 = !DILocation(line: 0, scope: !3492, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 318, column: 10, scope: !3503)
!3522 = !DILocation(line: 29, column: 10, scope: !3492, inlinedAt: !3521)
!3523 = !DILocation(line: 318, column: 3, scope: !3503)
!3524 = distinct !DISubprogram(name: "ximemdup0", scope: !735, file: !735, line: 325, type: !3525, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!109, !1019, !754}
!3527 = !{!3528, !3529, !3530}
!3528 = !DILocalVariable(name: "p", arg: 1, scope: !3524, file: !735, line: 325, type: !1019)
!3529 = !DILocalVariable(name: "s", arg: 2, scope: !3524, file: !735, line: 325, type: !754)
!3530 = !DILocalVariable(name: "result", scope: !3524, file: !735, line: 327, type: !109)
!3531 = !DILocation(line: 0, scope: !3524)
!3532 = !DILocation(line: 327, column: 30, scope: !3524)
!3533 = !DILocation(line: 0, scope: !3181, inlinedAt: !3534)
!3534 = distinct !DILocation(line: 327, column: 18, scope: !3524)
!3535 = !DILocation(line: 0, scope: !3188, inlinedAt: !3536)
!3536 = distinct !DILocation(line: 55, column: 25, scope: !3181, inlinedAt: !3534)
!3537 = !DILocation(line: 57, column: 26, scope: !3188, inlinedAt: !3536)
!3538 = !DILocation(line: 0, scope: !3148, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 55, column: 10, scope: !3181, inlinedAt: !3534)
!3540 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3539)
!3541 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3539)
!3542 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3539)
!3543 = !DILocation(line: 328, column: 3, scope: !3524)
!3544 = !DILocation(line: 328, column: 13, scope: !3524)
!3545 = !DILocation(line: 0, scope: !3492, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 329, column: 10, scope: !3524)
!3547 = !DILocation(line: 29, column: 10, scope: !3492, inlinedAt: !3546)
!3548 = !DILocation(line: 329, column: 3, scope: !3524)
!3549 = distinct !DISubprogram(name: "xstrdup", scope: !735, file: !735, line: 335, type: !997, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3550)
!3550 = !{!3551}
!3551 = !DILocalVariable(name: "string", arg: 1, scope: !3549, file: !735, line: 335, type: !115)
!3552 = !DILocation(line: 0, scope: !3549)
!3553 = !DILocation(line: 337, column: 27, scope: !3549)
!3554 = !DILocation(line: 337, column: 43, scope: !3549)
!3555 = !DILocation(line: 0, scope: !3476, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 337, column: 10, scope: !3549)
!3557 = !DILocation(line: 0, scope: !3167, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 312, column: 18, scope: !3476, inlinedAt: !3556)
!3559 = !DILocation(line: 49, column: 25, scope: !3167, inlinedAt: !3558)
!3560 = !DILocation(line: 0, scope: !3148, inlinedAt: !3561)
!3561 = distinct !DILocation(line: 49, column: 10, scope: !3167, inlinedAt: !3558)
!3562 = !DILocation(line: 39, column: 8, scope: !3155, inlinedAt: !3561)
!3563 = !DILocation(line: 39, column: 7, scope: !3148, inlinedAt: !3561)
!3564 = !DILocation(line: 40, column: 5, scope: !3155, inlinedAt: !3561)
!3565 = !DILocation(line: 0, scope: !3492, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 312, column: 10, scope: !3476, inlinedAt: !3556)
!3567 = !DILocation(line: 29, column: 10, scope: !3492, inlinedAt: !3566)
!3568 = !DILocation(line: 337, column: 3, scope: !3549)
!3569 = distinct !DISubprogram(name: "xalloc_die", scope: !699, file: !699, line: 32, type: !442, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !769, retainedNodes: !3570)
!3570 = !{!3571}
!3571 = !DILocalVariable(name: "__errstatus", scope: !3572, file: !699, line: 34, type: !3573)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !699, line: 34, column: 3)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3574 = !DILocation(line: 34, column: 3, scope: !3572)
!3575 = !DILocation(line: 0, scope: !3572)
!3576 = !DILocation(line: 40, column: 3, scope: !3569)
!3577 = distinct !DISubprogram(name: "close_stream", scope: !772, file: !772, line: 55, type: !3578, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3614)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!68, !3580}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3582, file: !173, line: 51, baseType: !68, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3582, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3582, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3582, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3582, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3582, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3582, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3582, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3582, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3582, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3582, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3582, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3582, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3582, file: !173, line: 70, baseType: !3598, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3582, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3582, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3582, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3582, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3582, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3582, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3582, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3582, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3582, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3582, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3582, file: !173, line: 93, baseType: !3598, size: 64, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3582, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3582, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3582, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3582, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3614 = !{!3615, !3616, !3618, !3619}
!3615 = !DILocalVariable(name: "stream", arg: 1, scope: !3577, file: !772, line: 55, type: !3580)
!3616 = !DILocalVariable(name: "some_pending", scope: !3577, file: !772, line: 57, type: !3617)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!3618 = !DILocalVariable(name: "prev_fail", scope: !3577, file: !772, line: 58, type: !3617)
!3619 = !DILocalVariable(name: "fclose_fail", scope: !3577, file: !772, line: 59, type: !3617)
!3620 = !DILocation(line: 0, scope: !3577)
!3621 = !DILocation(line: 57, column: 30, scope: !3577)
!3622 = !DILocalVariable(name: "__stream", arg: 1, scope: !3623, file: !1334, line: 135, type: !3580)
!3623 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1334, file: !1334, line: 135, type: !3578, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !771, retainedNodes: !3624)
!3624 = !{!3622}
!3625 = !DILocation(line: 0, scope: !3623, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 58, column: 27, scope: !3577)
!3627 = !DILocation(line: 137, column: 10, scope: !3623, inlinedAt: !3626)
!3628 = !{!1343, !872, i64 0}
!3629 = !DILocation(line: 58, column: 43, scope: !3577)
!3630 = !DILocation(line: 59, column: 29, scope: !3577)
!3631 = !DILocation(line: 59, column: 45, scope: !3577)
!3632 = !DILocation(line: 69, column: 17, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3577, file: !772, line: 69, column: 7)
!3634 = !DILocation(line: 57, column: 50, scope: !3577)
!3635 = !DILocation(line: 69, column: 33, scope: !3633)
!3636 = !DILocation(line: 69, column: 53, scope: !3633)
!3637 = !DILocation(line: 69, column: 59, scope: !3633)
!3638 = !DILocation(line: 69, column: 7, scope: !3577)
!3639 = !DILocation(line: 71, column: 11, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3633, file: !772, line: 70, column: 5)
!3641 = !DILocation(line: 72, column: 9, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3640, file: !772, line: 71, column: 11)
!3643 = !DILocation(line: 72, column: 15, scope: !3642)
!3644 = !DILocation(line: 77, column: 1, scope: !3577)
!3645 = !DISubprogram(name: "__fpending", scope: !3646, file: !3646, line: 75, type: !3647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3646 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!112, !3580}
!3649 = distinct !DISubprogram(name: "rpl_fclose", scope: !774, file: !774, line: 58, type: !3650, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !773, retainedNodes: !3686)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!68, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3654)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3654, file: !173, line: 51, baseType: !68, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3654, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3654, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3654, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3654, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3654, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3654, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3654, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3654, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3654, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3654, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3654, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3654, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3654, file: !173, line: 70, baseType: !3670, size: 64, offset: 832)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3654, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3654, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3654, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3654, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3654, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3654, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3654, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3654, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3654, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3654, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3654, file: !173, line: 93, baseType: !3670, size: 64, offset: 1344)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3654, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3654, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3654, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3654, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3686 = !{!3687, !3688, !3689, !3690}
!3687 = !DILocalVariable(name: "fp", arg: 1, scope: !3649, file: !774, line: 58, type: !3652)
!3688 = !DILocalVariable(name: "saved_errno", scope: !3649, file: !774, line: 60, type: !68)
!3689 = !DILocalVariable(name: "fd", scope: !3649, file: !774, line: 63, type: !68)
!3690 = !DILocalVariable(name: "result", scope: !3649, file: !774, line: 74, type: !68)
!3691 = !DILocation(line: 0, scope: !3649)
!3692 = !DILocation(line: 63, column: 12, scope: !3649)
!3693 = !DILocation(line: 64, column: 10, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3649, file: !774, line: 64, column: 7)
!3695 = !DILocation(line: 64, column: 7, scope: !3649)
!3696 = !DILocation(line: 65, column: 12, scope: !3694)
!3697 = !DILocation(line: 65, column: 5, scope: !3694)
!3698 = !DILocation(line: 70, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3649, file: !774, line: 70, column: 7)
!3700 = !DILocation(line: 70, column: 23, scope: !3699)
!3701 = !DILocation(line: 70, column: 33, scope: !3699)
!3702 = !DILocation(line: 70, column: 26, scope: !3699)
!3703 = !DILocation(line: 70, column: 59, scope: !3699)
!3704 = !DILocation(line: 71, column: 7, scope: !3699)
!3705 = !DILocation(line: 71, column: 10, scope: !3699)
!3706 = !DILocation(line: 70, column: 7, scope: !3649)
!3707 = !DILocation(line: 100, column: 12, scope: !3649)
!3708 = !DILocation(line: 105, column: 7, scope: !3649)
!3709 = !DILocation(line: 72, column: 19, scope: !3699)
!3710 = !DILocation(line: 105, column: 19, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3649, file: !774, line: 105, column: 7)
!3712 = !DILocation(line: 107, column: 13, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3711, file: !774, line: 106, column: 5)
!3714 = !DILocation(line: 109, column: 5, scope: !3713)
!3715 = !DILocation(line: 112, column: 1, scope: !3649)
!3716 = !DISubprogram(name: "fileno", scope: !866, file: !866, line: 809, type: !3650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3717 = !DISubprogram(name: "fclose", scope: !866, file: !866, line: 178, type: !3650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3718 = !DISubprogram(name: "__freading", scope: !3646, file: !3646, line: 51, type: !3650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3719 = !DISubprogram(name: "lseek", scope: !1155, file: !1155, line: 339, type: !3720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!195, !68, !195, !68}
!3722 = distinct !DISubprogram(name: "rpl_fflush", scope: !776, file: !776, line: 130, type: !3723, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3759)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!68, !3725}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3728)
!3728 = !{!3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3727, file: !173, line: 51, baseType: !68, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3727, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3727, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3727, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3727, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3727, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3727, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3727, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3727, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3727, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3727, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3727, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3727, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3727, file: !173, line: 70, baseType: !3743, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3727, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3727, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3727, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3727, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3727, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3727, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3727, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3727, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3727, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3727, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3727, file: !173, line: 93, baseType: !3743, size: 64, offset: 1344)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3727, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3727, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3727, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3727, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3759 = !{!3760}
!3760 = !DILocalVariable(name: "stream", arg: 1, scope: !3722, file: !776, line: 130, type: !3725)
!3761 = !DILocation(line: 0, scope: !3722)
!3762 = !DILocation(line: 151, column: 14, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3722, file: !776, line: 151, column: 7)
!3764 = !DILocation(line: 151, column: 22, scope: !3763)
!3765 = !DILocation(line: 151, column: 27, scope: !3763)
!3766 = !DILocation(line: 151, column: 7, scope: !3722)
!3767 = !DILocation(line: 152, column: 12, scope: !3763)
!3768 = !DILocation(line: 152, column: 5, scope: !3763)
!3769 = !DILocalVariable(name: "fp", arg: 1, scope: !3770, file: !776, line: 42, type: !3725)
!3770 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !776, file: !776, line: 42, type: !3771, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !775, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3725}
!3773 = !{!3769}
!3774 = !DILocation(line: 0, scope: !3770, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 157, column: 3, scope: !3722)
!3776 = !DILocation(line: 44, column: 12, scope: !3777, inlinedAt: !3775)
!3777 = distinct !DILexicalBlock(scope: !3770, file: !776, line: 44, column: 7)
!3778 = !DILocation(line: 44, column: 19, scope: !3777, inlinedAt: !3775)
!3779 = !DILocation(line: 44, column: 7, scope: !3770, inlinedAt: !3775)
!3780 = !DILocation(line: 46, column: 5, scope: !3777, inlinedAt: !3775)
!3781 = !DILocation(line: 159, column: 10, scope: !3722)
!3782 = !DILocation(line: 159, column: 3, scope: !3722)
!3783 = !DILocation(line: 236, column: 1, scope: !3722)
!3784 = !DISubprogram(name: "fflush", scope: !866, file: !866, line: 230, type: !3723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3785 = distinct !DISubprogram(name: "rpl_fseeko", scope: !778, file: !778, line: 28, type: !3786, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3823)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!68, !3788, !3822, !68}
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 7, baseType: !3790)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 49, size: 1728, elements: !3791)
!3791 = !{!3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3790, file: !173, line: 51, baseType: !68, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3790, file: !173, line: 54, baseType: !109, size: 64, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3790, file: !173, line: 55, baseType: !109, size: 64, offset: 128)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3790, file: !173, line: 56, baseType: !109, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3790, file: !173, line: 57, baseType: !109, size: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3790, file: !173, line: 58, baseType: !109, size: 64, offset: 320)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3790, file: !173, line: 59, baseType: !109, size: 64, offset: 384)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3790, file: !173, line: 60, baseType: !109, size: 64, offset: 448)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3790, file: !173, line: 61, baseType: !109, size: 64, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3790, file: !173, line: 64, baseType: !109, size: 64, offset: 576)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3790, file: !173, line: 65, baseType: !109, size: 64, offset: 640)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3790, file: !173, line: 66, baseType: !109, size: 64, offset: 704)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3790, file: !173, line: 68, baseType: !188, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3790, file: !173, line: 70, baseType: !3806, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3790, file: !173, line: 72, baseType: !68, size: 32, offset: 896)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3790, file: !173, line: 73, baseType: !68, size: 32, offset: 928)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3790, file: !173, line: 74, baseType: !195, size: 64, offset: 960)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3790, file: !173, line: 77, baseType: !111, size: 16, offset: 1024)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3790, file: !173, line: 78, baseType: !200, size: 8, offset: 1040)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3790, file: !173, line: 79, baseType: !44, size: 8, offset: 1048)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3790, file: !173, line: 81, baseType: !203, size: 64, offset: 1088)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3790, file: !173, line: 89, baseType: !206, size: 64, offset: 1152)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3790, file: !173, line: 91, baseType: !208, size: 64, offset: 1216)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3790, file: !173, line: 92, baseType: !211, size: 64, offset: 1280)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3790, file: !173, line: 93, baseType: !3806, size: 64, offset: 1344)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3790, file: !173, line: 94, baseType: !110, size: 64, offset: 1408)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3790, file: !173, line: 95, baseType: !112, size: 64, offset: 1472)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3790, file: !173, line: 96, baseType: !68, size: 32, offset: 1536)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3790, file: !173, line: 98, baseType: !218, size: 160, offset: 1568)
!3822 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !866, line: 63, baseType: !195)
!3823 = !{!3824, !3825, !3826, !3827}
!3824 = !DILocalVariable(name: "fp", arg: 1, scope: !3785, file: !778, line: 28, type: !3788)
!3825 = !DILocalVariable(name: "offset", arg: 2, scope: !3785, file: !778, line: 28, type: !3822)
!3826 = !DILocalVariable(name: "whence", arg: 3, scope: !3785, file: !778, line: 28, type: !68)
!3827 = !DILocalVariable(name: "pos", scope: !3828, file: !778, line: 123, type: !3822)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !778, line: 119, column: 5)
!3829 = distinct !DILexicalBlock(scope: !3785, file: !778, line: 55, column: 7)
!3830 = !DILocation(line: 0, scope: !3785)
!3831 = !DILocation(line: 55, column: 12, scope: !3829)
!3832 = !{!1343, !809, i64 16}
!3833 = !DILocation(line: 55, column: 33, scope: !3829)
!3834 = !{!1343, !809, i64 8}
!3835 = !DILocation(line: 55, column: 25, scope: !3829)
!3836 = !DILocation(line: 56, column: 7, scope: !3829)
!3837 = !DILocation(line: 56, column: 15, scope: !3829)
!3838 = !DILocation(line: 56, column: 37, scope: !3829)
!3839 = !{!1343, !809, i64 32}
!3840 = !DILocation(line: 56, column: 29, scope: !3829)
!3841 = !DILocation(line: 57, column: 7, scope: !3829)
!3842 = !DILocation(line: 57, column: 15, scope: !3829)
!3843 = !{!1343, !809, i64 72}
!3844 = !DILocation(line: 57, column: 29, scope: !3829)
!3845 = !DILocation(line: 55, column: 7, scope: !3785)
!3846 = !DILocation(line: 123, column: 26, scope: !3828)
!3847 = !DILocation(line: 123, column: 19, scope: !3828)
!3848 = !DILocation(line: 0, scope: !3828)
!3849 = !DILocation(line: 124, column: 15, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3828, file: !778, line: 124, column: 11)
!3851 = !DILocation(line: 124, column: 11, scope: !3828)
!3852 = !DILocation(line: 135, column: 19, scope: !3828)
!3853 = !DILocation(line: 136, column: 12, scope: !3828)
!3854 = !DILocation(line: 136, column: 20, scope: !3828)
!3855 = !{!1343, !1344, i64 144}
!3856 = !DILocation(line: 167, column: 7, scope: !3828)
!3857 = !DILocation(line: 169, column: 10, scope: !3785)
!3858 = !DILocation(line: 169, column: 3, scope: !3785)
!3859 = !DILocation(line: 170, column: 1, scope: !3785)
!3860 = !DISubprogram(name: "fseeko", scope: !866, file: !866, line: 736, type: !3861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!68, !3788, !195, !68}
!3863 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !706, file: !706, line: 100, type: !3864, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3867)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!112, !1623, !115, !112, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!3867 = !{!3868, !3869, !3870, !3871, !3872}
!3868 = !DILocalVariable(name: "pwc", arg: 1, scope: !3863, file: !706, line: 100, type: !1623)
!3869 = !DILocalVariable(name: "s", arg: 2, scope: !3863, file: !706, line: 100, type: !115)
!3870 = !DILocalVariable(name: "n", arg: 3, scope: !3863, file: !706, line: 100, type: !112)
!3871 = !DILocalVariable(name: "ps", arg: 4, scope: !3863, file: !706, line: 100, type: !3866)
!3872 = !DILocalVariable(name: "ret", scope: !3863, file: !706, line: 130, type: !112)
!3873 = !DILocation(line: 0, scope: !3863)
!3874 = !DILocation(line: 105, column: 9, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3863, file: !706, line: 105, column: 7)
!3876 = !DILocation(line: 105, column: 7, scope: !3863)
!3877 = !DILocation(line: 117, column: 10, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3863, file: !706, line: 117, column: 7)
!3879 = !DILocation(line: 117, column: 7, scope: !3863)
!3880 = !DILocation(line: 130, column: 16, scope: !3863)
!3881 = !DILocation(line: 135, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3863, file: !706, line: 135, column: 7)
!3883 = !DILocation(line: 135, column: 25, scope: !3882)
!3884 = !DILocation(line: 135, column: 30, scope: !3882)
!3885 = !DILocation(line: 135, column: 7, scope: !3863)
!3886 = !DILocalVariable(name: "ps", arg: 1, scope: !3887, file: !1596, line: 1135, type: !3866)
!3887 = distinct !DISubprogram(name: "mbszero", scope: !1596, file: !1596, line: 1135, type: !3888, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3866}
!3890 = !{!3886}
!3891 = !DILocation(line: 0, scope: !3887, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 137, column: 5, scope: !3882)
!3893 = !DILocalVariable(name: "__dest", arg: 1, scope: !3894, file: !1605, line: 57, type: !110)
!3894 = distinct !DISubprogram(name: "memset", scope: !1605, file: !1605, line: 57, type: !1606, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !3895)
!3895 = !{!3893, !3896, !3897}
!3896 = !DILocalVariable(name: "__ch", arg: 2, scope: !3894, file: !1605, line: 57, type: !68)
!3897 = !DILocalVariable(name: "__len", arg: 3, scope: !3894, file: !1605, line: 57, type: !112)
!3898 = !DILocation(line: 0, scope: !3894, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1137, column: 3, scope: !3887, inlinedAt: !3892)
!3900 = !DILocation(line: 59, column: 10, scope: !3894, inlinedAt: !3899)
!3901 = !DILocation(line: 137, column: 5, scope: !3882)
!3902 = !DILocation(line: 138, column: 11, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3863, file: !706, line: 138, column: 7)
!3904 = !DILocation(line: 138, column: 7, scope: !3863)
!3905 = !DILocation(line: 139, column: 5, scope: !3903)
!3906 = !DILocation(line: 143, column: 26, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3863, file: !706, line: 143, column: 7)
!3908 = !DILocation(line: 143, column: 41, scope: !3907)
!3909 = !DILocation(line: 143, column: 7, scope: !3863)
!3910 = !DILocation(line: 145, column: 15, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !706, line: 145, column: 11)
!3912 = distinct !DILexicalBlock(scope: !3907, file: !706, line: 144, column: 5)
!3913 = !DILocation(line: 145, column: 11, scope: !3912)
!3914 = !DILocation(line: 146, column: 32, scope: !3911)
!3915 = !DILocation(line: 146, column: 16, scope: !3911)
!3916 = !DILocation(line: 146, column: 14, scope: !3911)
!3917 = !DILocation(line: 146, column: 9, scope: !3911)
!3918 = !DILocation(line: 286, column: 1, scope: !3863)
!3919 = !DISubprogram(name: "mbsinit", scope: !3920, file: !3920, line: 293, type: !3921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3920 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!68, !3923}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!3925 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !780, file: !780, line: 27, type: !3132, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3926)
!3926 = !{!3927, !3928, !3929, !3930}
!3927 = !DILocalVariable(name: "ptr", arg: 1, scope: !3925, file: !780, line: 27, type: !110)
!3928 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3925, file: !780, line: 27, type: !112)
!3929 = !DILocalVariable(name: "size", arg: 3, scope: !3925, file: !780, line: 27, type: !112)
!3930 = !DILocalVariable(name: "nbytes", scope: !3925, file: !780, line: 29, type: !112)
!3931 = !DILocation(line: 0, scope: !3925)
!3932 = !DILocation(line: 30, column: 7, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3925, file: !780, line: 30, column: 7)
!3934 = !DILocation(line: 30, column: 7, scope: !3925)
!3935 = !DILocation(line: 32, column: 7, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3933, file: !780, line: 31, column: 5)
!3937 = !DILocation(line: 32, column: 13, scope: !3936)
!3938 = !DILocation(line: 33, column: 7, scope: !3936)
!3939 = !DILocalVariable(name: "ptr", arg: 1, scope: !3940, file: !3224, line: 2057, type: !110)
!3940 = distinct !DISubprogram(name: "rpl_realloc", scope: !3224, file: !3224, line: 2057, type: !3216, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3941)
!3941 = !{!3939, !3942}
!3942 = !DILocalVariable(name: "size", arg: 2, scope: !3940, file: !3224, line: 2057, type: !112)
!3943 = !DILocation(line: 0, scope: !3940, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 37, column: 10, scope: !3925)
!3945 = !DILocation(line: 2059, column: 24, scope: !3940, inlinedAt: !3944)
!3946 = !DILocation(line: 2059, column: 10, scope: !3940, inlinedAt: !3944)
!3947 = !DILocation(line: 37, column: 3, scope: !3925)
!3948 = !DILocation(line: 38, column: 1, scope: !3925)
!3949 = distinct !DISubprogram(name: "hard_locale", scope: !724, file: !724, line: 28, type: !3950, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3952)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!156, !68}
!3952 = !{!3953, !3954}
!3953 = !DILocalVariable(name: "category", arg: 1, scope: !3949, file: !724, line: 28, type: !68)
!3954 = !DILocalVariable(name: "locale", scope: !3949, file: !724, line: 30, type: !3955)
!3955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3956)
!3956 = !{!3957}
!3957 = !DISubrange(count: 257)
!3958 = distinct !DIAssignID()
!3959 = !DILocation(line: 0, scope: !3949)
!3960 = !DILocation(line: 30, column: 3, scope: !3949)
!3961 = !DILocation(line: 32, column: 7, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3949, file: !724, line: 32, column: 7)
!3963 = !DILocation(line: 32, column: 7, scope: !3949)
!3964 = !DILocalVariable(name: "__s1", arg: 1, scope: !3965, file: !884, line: 1359, type: !115)
!3965 = distinct !DISubprogram(name: "streq", scope: !884, file: !884, line: 1359, type: !885, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !3966)
!3966 = !{!3964, !3967}
!3967 = !DILocalVariable(name: "__s2", arg: 2, scope: !3965, file: !884, line: 1359, type: !115)
!3968 = !DILocation(line: 0, scope: !3965, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 35, column: 9, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3949, file: !724, line: 35, column: 7)
!3971 = !DILocation(line: 1361, column: 11, scope: !3965, inlinedAt: !3969)
!3972 = !DILocation(line: 35, column: 29, scope: !3970)
!3973 = !DILocation(line: 0, scope: !3965, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 35, column: 32, scope: !3970)
!3975 = !DILocation(line: 1361, column: 11, scope: !3965, inlinedAt: !3974)
!3976 = !DILocation(line: 1361, column: 10, scope: !3965, inlinedAt: !3974)
!3977 = !DILocation(line: 35, column: 7, scope: !3949)
!3978 = !DILocation(line: 46, column: 3, scope: !3949)
!3979 = !DILocation(line: 47, column: 1, scope: !3949)
!3980 = distinct !DISubprogram(name: "setlocale_null_r", scope: !786, file: !786, line: 154, type: !3981, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3983)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!68, !68, !109, !112}
!3983 = !{!3984, !3985, !3986}
!3984 = !DILocalVariable(name: "category", arg: 1, scope: !3980, file: !786, line: 154, type: !68)
!3985 = !DILocalVariable(name: "buf", arg: 2, scope: !3980, file: !786, line: 154, type: !109)
!3986 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3980, file: !786, line: 154, type: !112)
!3987 = !DILocation(line: 0, scope: !3980)
!3988 = !DILocation(line: 159, column: 10, scope: !3980)
!3989 = !DILocation(line: 159, column: 3, scope: !3980)
!3990 = distinct !DISubprogram(name: "setlocale_null", scope: !786, file: !786, line: 186, type: !3991, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!115, !68}
!3993 = !{!3994}
!3994 = !DILocalVariable(name: "category", arg: 1, scope: !3990, file: !786, line: 186, type: !68)
!3995 = !DILocation(line: 0, scope: !3990)
!3996 = !DILocation(line: 189, column: 10, scope: !3990)
!3997 = !DILocation(line: 189, column: 3, scope: !3990)
!3998 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !788, file: !788, line: 35, type: !3991, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !3999)
!3999 = !{!4000, !4001}
!4000 = !DILocalVariable(name: "category", arg: 1, scope: !3998, file: !788, line: 35, type: !68)
!4001 = !DILocalVariable(name: "result", scope: !3998, file: !788, line: 37, type: !115)
!4002 = !DILocation(line: 0, scope: !3998)
!4003 = !DILocation(line: 37, column: 24, scope: !3998)
!4004 = !DILocation(line: 62, column: 3, scope: !3998)
!4005 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !788, file: !788, line: 66, type: !3981, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011}
!4007 = !DILocalVariable(name: "category", arg: 1, scope: !4005, file: !788, line: 66, type: !68)
!4008 = !DILocalVariable(name: "buf", arg: 2, scope: !4005, file: !788, line: 66, type: !109)
!4009 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4005, file: !788, line: 66, type: !112)
!4010 = !DILocalVariable(name: "result", scope: !4005, file: !788, line: 111, type: !115)
!4011 = !DILocalVariable(name: "length", scope: !4012, file: !788, line: 125, type: !112)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !788, line: 124, column: 5)
!4013 = distinct !DILexicalBlock(scope: !4005, file: !788, line: 113, column: 7)
!4014 = !DILocation(line: 0, scope: !4005)
!4015 = !DILocation(line: 0, scope: !3998, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 111, column: 24, scope: !4005)
!4017 = !DILocation(line: 37, column: 24, scope: !3998, inlinedAt: !4016)
!4018 = !DILocation(line: 113, column: 14, scope: !4013)
!4019 = !DILocation(line: 113, column: 7, scope: !4005)
!4020 = !DILocation(line: 116, column: 19, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !788, line: 116, column: 11)
!4022 = distinct !DILexicalBlock(scope: !4013, file: !788, line: 114, column: 5)
!4023 = !DILocation(line: 116, column: 11, scope: !4022)
!4024 = !DILocation(line: 120, column: 16, scope: !4021)
!4025 = !DILocation(line: 120, column: 9, scope: !4021)
!4026 = !DILocation(line: 125, column: 23, scope: !4012)
!4027 = !DILocation(line: 0, scope: !4012)
!4028 = !DILocation(line: 126, column: 18, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4012, file: !788, line: 126, column: 11)
!4030 = !DILocation(line: 126, column: 11, scope: !4012)
!4031 = !DILocation(line: 128, column: 39, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4029, file: !788, line: 127, column: 9)
!4033 = !DILocalVariable(name: "__dest", arg: 1, scope: !4034, file: !1605, line: 26, type: !3495)
!4034 = distinct !DISubprogram(name: "memcpy", scope: !1605, file: !1605, line: 26, type: !3493, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4035)
!4035 = !{!4033, !4036, !4037}
!4036 = !DILocalVariable(name: "__src", arg: 2, scope: !4034, file: !1605, line: 26, type: !1018)
!4037 = !DILocalVariable(name: "__len", arg: 3, scope: !4034, file: !1605, line: 26, type: !112)
!4038 = !DILocation(line: 0, scope: !4034, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 128, column: 11, scope: !4032)
!4040 = !DILocation(line: 29, column: 10, scope: !4034, inlinedAt: !4039)
!4041 = !DILocation(line: 129, column: 11, scope: !4032)
!4042 = !DILocation(line: 133, column: 23, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !788, line: 133, column: 15)
!4044 = distinct !DILexicalBlock(scope: !4029, file: !788, line: 132, column: 9)
!4045 = !DILocation(line: 133, column: 15, scope: !4044)
!4046 = !DILocation(line: 138, column: 44, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4043, file: !788, line: 134, column: 13)
!4048 = !DILocation(line: 0, scope: !4034, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 138, column: 15, scope: !4047)
!4050 = !DILocation(line: 29, column: 10, scope: !4034, inlinedAt: !4049)
!4051 = !DILocation(line: 139, column: 15, scope: !4047)
!4052 = !DILocation(line: 139, column: 32, scope: !4047)
!4053 = !DILocation(line: 140, column: 13, scope: !4047)
!4054 = !DILocation(line: 0, scope: !4013)
!4055 = !DILocation(line: 145, column: 1, scope: !4005)
