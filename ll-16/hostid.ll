; ModuleID = 'src/hostid.bc'
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
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !27
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1, !dbg !57
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !62
@.str.12 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !97
@.str.13 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !102
@.str.14 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !109
@.str.29 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !146
@.str.30 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !148
@.str.31 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !150
@.str.32 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !152
@.str.33 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !157
@.str.34 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !162
@.str.35 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !167
@.str.36 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !169
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !171
@.str.38 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !173
@.str.42 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !187
@.str.43 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !189
@.str.44 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !194
@.str.45 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !199
@.str.46 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !204
@.str.16 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !288
@Version = dso_local local_unnamed_addr global ptr @.str.16, align 8, !dbg !291
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !295
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !308
@.str.19 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !300
@.str.1.20 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !302
@.str.2.21 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !304
@.str.3.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !306
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !310
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !316
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !343
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !345
@.str.2.31 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !347
@.str.3.30 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !349
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !351
@.str.4.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !355
@.str.5.25 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !357
@.str.6.26 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !362
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !367
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.40, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.41, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !370
@optind = external local_unnamed_addr global i32, align 4
@.str.1.44 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !374
@.str.2.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !376
@.str.3.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !378
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !390
@.str.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !396
@.str.1.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !398
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !400
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !431
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !434
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !436
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !438
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !440
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !442
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !444
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !446
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !448
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !450
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 8, !dbg !452
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !477
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !491
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !529
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !536
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !493
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !538
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !481
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !498
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !500
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !502
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !504
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !506
@.str.71 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !544
@.str.1.72 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !547
@.str.2.73 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !549
@.str.3.74 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !551
@.str.4.75 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !553
@.str.5.76 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !555
@.str.6.77 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !560
@.str.7.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !565
@.str.8.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !567
@.str.9.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !572
@.str.10.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !577
@.str.11.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !582
@.str.12.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !587
@.str.13.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !589
@.str.14.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !594
@.str.15.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !599
@.str.16.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !604
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !609
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !611
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !613
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !615
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !617
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !619
@.str.23.93 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !621
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !626
@exit_failure = dso_local global i32 1, align 4, !dbg !634
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !640
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !643
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !645
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !647
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !650
@.str.122 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !665
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !668

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !740 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !744, metadata !DIExpression()), !dbg !745
  %2 = icmp eq i32 %0, 0, !dbg !746
  br i1 %2, label %8, label %3, !dbg !748

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !749, !tbaa !751
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !749
  %6 = load ptr, ptr @program_name, align 8, !dbg !749, !tbaa !751
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !749
  br label %28, !dbg !749

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !755
  %10 = load ptr, ptr @program_name, align 8, !dbg !755, !tbaa !751
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !755
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #36, !dbg !757
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !757
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !758
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !758
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !759, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr poison, metadata !771, metadata !DIExpression()), !dbg !776
  tail call void @emit_bug_reporting_address() #36, !dbg !778
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !779
  call void @llvm.dbg.value(metadata ptr %14, metadata !774, metadata !DIExpression()), !dbg !776
  %15 = icmp eq ptr %14, null, !dbg !780
  br i1 %15, label %23, label %16, !dbg !782

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #37, !dbg !783
  %18 = icmp eq i32 %17, 0, !dbg !783
  br i1 %18, label %23, label %19, !dbg !784

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #36, !dbg !785
  %21 = load ptr, ptr @stdout, align 8, !dbg !785, !tbaa !751
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !785
  br label %23, !dbg !787

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !775, metadata !DIExpression()), !dbg !776
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !788
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #36, !dbg !788
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !789
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.46) #36, !dbg !789
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !790
  unreachable, !dbg !790
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !791 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !796 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !802 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !64 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !210, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %0, metadata !211, metadata !DIExpression()), !dbg !805
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !806, !tbaa !807
  %3 = icmp eq i32 %2, -1, !dbg !809
  br i1 %3, label %4, label %16, !dbg !810

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #36, !dbg !811
  call void @llvm.dbg.value(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !812
  %6 = icmp eq ptr %5, null, !dbg !813
  br i1 %6, label %14, label %7, !dbg !814

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !815, !tbaa !816
  %9 = icmp eq i8 %8, 0, !dbg !815
  br i1 %9, label %14, label %10, !dbg !817

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !818, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !824, metadata !DIExpression()), !dbg !825
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #37, !dbg !827
  %12 = icmp eq i32 %11, 0, !dbg !828
  %13 = zext i1 %12 to i32, !dbg !817
  br label %14, !dbg !817

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !829, !tbaa !807
  br label %16, !dbg !830

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !831
  %18 = icmp eq i32 %17, 0, !dbg !831
  br i1 %18, label %22, label %19, !dbg !833

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !834, !tbaa !751
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !834
  br label %122, !dbg !836

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !215, metadata !DIExpression()), !dbg !805
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.14) #37, !dbg !837
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !838
  call void @llvm.dbg.value(metadata ptr %24, metadata !217, metadata !DIExpression()), !dbg !805
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !839
  call void @llvm.dbg.value(metadata ptr %25, metadata !218, metadata !DIExpression()), !dbg !805
  %26 = icmp eq ptr %25, null, !dbg !840
  br i1 %26, label %54, label %27, !dbg !841

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !842
  br i1 %28, label %54, label %29, !dbg !843

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !844
  %30 = icmp ult ptr %24, %25, !dbg !845
  br i1 %30, label %31, label %52, !dbg !846

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !805
  %33 = load ptr, ptr %32, align 8, !tbaa !751
  br label %34, !dbg !846

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !219, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.value(metadata i64 %36, metadata !223, metadata !DIExpression()), !dbg !844
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !847
  call void @llvm.dbg.value(metadata ptr %37, metadata !219, metadata !DIExpression()), !dbg !844
  %38 = load i8, ptr %35, align 1, !dbg !847, !tbaa !816
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !847
  %41 = load i16, ptr %40, align 2, !dbg !847, !tbaa !848
  %42 = freeze i16 %41, !dbg !850
  %43 = lshr i16 %42, 13, !dbg !850
  %44 = and i16 %43, 1, !dbg !850
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !851
  call void @llvm.dbg.value(metadata i64 %46, metadata !223, metadata !DIExpression()), !dbg !844
  %47 = icmp ult ptr %37, %25, !dbg !845
  %48 = icmp ult i64 %46, 2, !dbg !852
  %49 = select i1 %47, i1 %48, i1 false, !dbg !852
  br i1 %49, label %34, label %50, !dbg !846, !llvm.loop !853

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !855
  br i1 %51, label %52, label %54, !dbg !857

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !857

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !805
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %55, metadata !218, metadata !DIExpression()), !dbg !805
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.15) #37, !dbg !858
  call void @llvm.dbg.value(metadata i64 %57, metadata !224, metadata !DIExpression()), !dbg !805
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !859
  call void @llvm.dbg.value(metadata ptr %58, metadata !225, metadata !DIExpression()), !dbg !805
  br label %59, !dbg !860

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !805
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %60, metadata !225, metadata !DIExpression()), !dbg !805
  %62 = load i8, ptr %60, align 1, !dbg !861, !tbaa !816
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !862

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !863
  %65 = load i8, ptr %64, align 1, !dbg !866, !tbaa !816
  %66 = icmp ne i8 %65, 45, !dbg !867
  %67 = select i1 %66, i1 %61, i1 false, !dbg !868
  br label %68, !dbg !868

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !869
  %71 = load ptr, ptr %70, align 8, !dbg !869, !tbaa !751
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !869
  %74 = load i16, ptr %73, align 2, !dbg !869, !tbaa !848
  %75 = and i16 %74, 8192, !dbg !869
  %76 = icmp eq i16 %75, 0, !dbg !869
  br i1 %76, label %90, label %77, !dbg !871

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !872
  br i1 %78, label %92, label %79, !dbg !875

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !876
  %81 = load i8, ptr %80, align 1, !dbg !876, !tbaa !816
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !876
  %84 = load i16, ptr %83, align 2, !dbg !876, !tbaa !848
  %85 = and i16 %84, 8192, !dbg !876
  %86 = icmp eq i16 %85, 0, !dbg !876
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !877
  br i1 %89, label %90, label %92, !dbg !877

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !878
  call void @llvm.dbg.value(metadata ptr %91, metadata !225, metadata !DIExpression()), !dbg !805
  br label %59, !dbg !860, !llvm.loop !879

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !881
  %94 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !751
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !283, metadata !DIExpression()), !dbg !805
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.29, i64 noundef 6) #37, !dbg !902
  %97 = icmp eq i32 %96, 0, !dbg !902
  br i1 %97, label %101, label %98, !dbg !904

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.30, i64 noundef 9) #37, !dbg !905
  %100 = icmp eq i32 %99, 0, !dbg !905
  br i1 %100, label %101, label %104, !dbg !906

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !907
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %102, ptr noundef %55) #36, !dbg !907
  br label %107, !dbg !909

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !910
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef %105, ptr noundef %55) #36, !dbg !910
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !751
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %108), !dbg !912
  %110 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !751
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !913
  %112 = ptrtoint ptr %60 to i64, !dbg !914
  %113 = sub i64 %112, %93, !dbg !914
  %114 = load ptr, ptr @stdout, align 8, !dbg !914, !tbaa !751
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !914
  %116 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !751
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !915
  %118 = load ptr, ptr @stdout, align 8, !dbg !916, !tbaa !751
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !916
  %120 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !751
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !917
  br label %122, !dbg !918

122:                                              ; preds = %107, %19
  ret void, !dbg !918
}

; Function Attrs: nounwind
declare !dbg !919 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !923 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !927 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !930 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !932 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !935 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !938 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !941 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !944 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !950 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !951 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !957 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !962, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata ptr %1, metadata !963, metadata !DIExpression()), !dbg !965
  %3 = load ptr, ptr %1, align 8, !dbg !966, !tbaa !751
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !967
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #36, !dbg !968
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #36, !dbg !969
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #36, !dbg !970
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !971
  %8 = load ptr, ptr @Version, align 8, !dbg !972, !tbaa !751
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #36, !dbg !973
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !974
  %10 = load i32, ptr @optind, align 4, !dbg !975, !tbaa !807
  %11 = icmp slt i32 %10, %0, !dbg !977
  br i1 %11, label %12, label %19, !dbg !978

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #36, !dbg !979
  %14 = load i32, ptr @optind, align 4, !dbg !979, !tbaa !807
  %15 = sext i32 %14 to i64, !dbg !979
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !979
  %17 = load ptr, ptr %16, align 8, !dbg !979, !tbaa !751
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !979
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !979
  tail call void @usage(i32 noundef 1) #40, !dbg !981
  unreachable, !dbg !981

19:                                               ; preds = %2
  %20 = tail call i64 @gethostid() #36, !dbg !982
  %21 = trunc i64 %20 to i32, !dbg !982
  call void @llvm.dbg.value(metadata i32 %21, metadata !964, metadata !DIExpression()), !dbg !965
  %22 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %21) #36, !dbg !983
  ret i32 0, !dbg !984
}

; Function Attrs: nounwind
declare !dbg !985 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !988 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !989 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !992 i64 @gethostid() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !996 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !998, metadata !DIExpression()), !dbg !999
  store ptr %0, ptr @file_name, align 8, !dbg !1000, !tbaa !751
  ret void, !dbg !1001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1002 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1008, !tbaa !1009
  ret void, !dbg !1011
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1012 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !751
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1018
  %3 = icmp eq i32 %2, 0, !dbg !1019
  br i1 %3, label %22, label %4, !dbg !1020

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1021, !tbaa !1009, !range !1022, !noundef !795
  %6 = icmp eq i8 %5, 0, !dbg !1021
  br i1 %6, label %11, label %7, !dbg !1023

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1024
  %9 = load i32, ptr %8, align 4, !dbg !1024, !tbaa !807
  %10 = icmp eq i32 %9, 32, !dbg !1025
  br i1 %10, label %22, label %11, !dbg !1026

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1.20, i32 noundef 5) #36, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %12, metadata !1014, metadata !DIExpression()), !dbg !1028
  %13 = load ptr, ptr @file_name, align 8, !dbg !1029, !tbaa !751
  %14 = icmp eq ptr %13, null, !dbg !1029
  %15 = tail call ptr @__errno_location() #39, !dbg !1031
  %16 = load i32, ptr %15, align 4, !dbg !1031, !tbaa !807
  br i1 %14, label %19, label %17, !dbg !1032

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1033
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.21, ptr noundef %18, ptr noundef %12) #36, !dbg !1033
  br label %20, !dbg !1033

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.22, ptr noundef %12) #36, !dbg !1034
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1035, !tbaa !807
  tail call void @_exit(i32 noundef %21) #38, !dbg !1036
  unreachable, !dbg !1036

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1037, !tbaa !751
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1039
  %25 = icmp eq i32 %24, 0, !dbg !1040
  br i1 %25, label %28, label %26, !dbg !1041

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1042, !tbaa !807
  tail call void @_exit(i32 noundef %27) #38, !dbg !1043
  unreachable, !dbg !1043

28:                                               ; preds = %22
  ret void, !dbg !1044
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1045 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1049 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1050 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1055, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %2, metadata !1056, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1057, metadata !DIExpression()), !dbg !1059
  tail call fastcc void @flush_stdout(), !dbg !1060
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1061, !tbaa !751
  %7 = icmp eq ptr %6, null, !dbg !1061
  br i1 %7, label %9, label %8, !dbg !1063

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1064
  br label %13, !dbg !1064

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1065, !tbaa !751
  %11 = tail call ptr @getprogname() #37, !dbg !1065
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %11) #36, !dbg !1065
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1067, !tbaa.struct !1068
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1067
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1067
  ret void, !dbg !1069
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1070 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i32 1, metadata !1074, metadata !DIExpression()), !dbg !1079
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1082
  %2 = icmp slt i32 %1, 0, !dbg !1083
  br i1 %2, label %6, label %3, !dbg !1084

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1085, !tbaa !751
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1085
  br label %6, !dbg !1085

6:                                                ; preds = %3, %0
  ret void, !dbg !1086
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1087 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1089, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %1, metadata !1090, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr %2, metadata !1091, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1092, metadata !DIExpression()), !dbg !1094
  %7 = load ptr, ptr @stderr, align 8, !dbg !1095, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1096, !noalias !1140
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %7, metadata !1136, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata ptr %2, metadata !1137, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1138, metadata !DIExpression()), !dbg !1146
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1096
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1096, !noalias !1140
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1147, !tbaa !807
  %10 = add i32 %9, 1, !dbg !1147
  store i32 %10, ptr @error_message_count, align 4, !dbg !1147, !tbaa !807
  %11 = icmp eq i32 %1, 0, !dbg !1148
  br i1 %11, label %21, label %12, !dbg !1150

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1151, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1155, metadata !DIExpression()), !dbg !1162
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1163
  call void @llvm.dbg.value(metadata ptr %13, metadata !1154, metadata !DIExpression()), !dbg !1159
  %14 = icmp eq ptr %13, null, !dbg !1164
  br i1 %14, label %15, label %17, !dbg !1166

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.24, ptr noundef nonnull @.str.5.25, i32 noundef 5) #36, !dbg !1167
  call void @llvm.dbg.value(metadata ptr %16, metadata !1154, metadata !DIExpression()), !dbg !1159
  br label %17, !dbg !1168

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1159
  call void @llvm.dbg.value(metadata ptr %18, metadata !1154, metadata !DIExpression()), !dbg !1159
  %19 = load ptr, ptr @stderr, align 8, !dbg !1169, !tbaa !751
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.26, ptr noundef %18) #36, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1170
  br label %21, !dbg !1171

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1172, !tbaa !751
  call void @llvm.dbg.value(metadata i32 10, metadata !1173, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %22, metadata !1179, metadata !DIExpression()), !dbg !1180
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1182
  %24 = load ptr, ptr %23, align 8, !dbg !1182, !tbaa !1183
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1182
  %26 = load ptr, ptr %25, align 8, !dbg !1182, !tbaa !1186
  %27 = icmp ult ptr %24, %26, !dbg !1182
  br i1 %27, label %30, label %28, !dbg !1182, !prof !1187

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1182
  br label %32, !dbg !1182

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1182
  store ptr %31, ptr %23, align 8, !dbg !1182, !tbaa !1183
  store i8 10, ptr %24, align 1, !dbg !1182, !tbaa !816
  br label %32, !dbg !1182

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1188, !tbaa !751
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1188
  %35 = icmp eq i32 %0, 0, !dbg !1189
  br i1 %35, label %37, label %36, !dbg !1191

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1192
  unreachable, !dbg !1192

37:                                               ; preds = %32
  ret void, !dbg !1193
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1194 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1197 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1200 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1203 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1206 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1210 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1214, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %1, metadata !1215, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata ptr %2, metadata !1216, metadata !DIExpression()), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1217, metadata !DIExpression()), !dbg !1220
  call void @llvm.va_start(ptr nonnull %4), !dbg !1221
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1222, !tbaa.struct !1068
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1222
  call void @llvm.va_end(ptr nonnull %4), !dbg !1223
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1224
  ret void, !dbg !1224
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !320 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !337, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %1, metadata !338, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i32 %3, metadata !340, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr %4, metadata !341, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %5, metadata !342, metadata !DIExpression()), !dbg !1226
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1227, !tbaa !807
  %9 = icmp eq i32 %8, 0, !dbg !1227
  br i1 %9, label %24, label %10, !dbg !1229

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1230, !tbaa !807
  %12 = icmp eq i32 %11, %3, !dbg !1233
  br i1 %12, label %13, label %23, !dbg !1234

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1235, !tbaa !751
  %15 = icmp eq ptr %14, %2, !dbg !1236
  br i1 %15, label %37, label %16, !dbg !1237

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1238
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1239
  br i1 %19, label %20, label %23, !dbg !1239

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1240
  %22 = icmp eq i32 %21, 0, !dbg !1241
  br i1 %22, label %37, label %23, !dbg !1242

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1243, !tbaa !751
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1244, !tbaa !807
  br label %24, !dbg !1245

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1246
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1247, !tbaa !751
  %26 = icmp eq ptr %25, null, !dbg !1247
  br i1 %26, label %28, label %27, !dbg !1249

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1250
  br label %32, !dbg !1250

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1251, !tbaa !751
  %30 = tail call ptr @getprogname() #37, !dbg !1251
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.29, ptr noundef %30) #36, !dbg !1251
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1253, !tbaa !751
  %34 = icmp eq ptr %2, null, !dbg !1253
  %35 = select i1 %34, ptr @.str.3.30, ptr @.str.2.31, !dbg !1253
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1254, !tbaa.struct !1068
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1254
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1254
  br label %37, !dbg !1255

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1255
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1256 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !1261, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %2, metadata !1262, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %3, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %4, metadata !1264, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1265, metadata !DIExpression()), !dbg !1268
  call void @llvm.va_start(ptr nonnull %6), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1270, !tbaa.struct !1068
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1270
  call void @llvm.va_end(ptr nonnull %6), !dbg !1271
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1272
  ret void, !dbg !1272
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1273 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1276, !tbaa !751
  ret ptr %1, !dbg !1277
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1278 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1283, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %1, metadata !1284, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %2, metadata !1285, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %3, metadata !1286, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %4, metadata !1287, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata ptr %5, metadata !1288, metadata !DIExpression()), !dbg !1309
  %9 = load i32, ptr @opterr, align 4, !dbg !1310, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %9, metadata !1289, metadata !DIExpression()), !dbg !1309
  store i32 0, ptr @opterr, align 4, !dbg !1311, !tbaa !807
  %10 = icmp eq i32 %0, 2, !dbg !1312
  br i1 %10, label %11, label %16, !dbg !1313

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %12, metadata !1290, metadata !DIExpression()), !dbg !1315
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1316

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #36, !dbg !1317
  br label %16, !dbg !1318

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1293, metadata !DIExpression()), !dbg !1320
  call void @llvm.va_start(ptr nonnull %7), !dbg !1321
  %15 = load ptr, ptr @stdout, align 8, !dbg !1322, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1323, !tbaa.struct !1068
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #36, !dbg !1323
  call void @exit(i32 noundef 0) #38, !dbg !1324
  unreachable, !dbg !1324

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1325, !tbaa !807
  store i32 0, ptr @optind, align 4, !dbg !1326, !tbaa !807
  ret void, !dbg !1327
}

; Function Attrs: nounwind
declare !dbg !1328 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1334 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1338, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %1, metadata !1339, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %2, metadata !1340, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %3, metadata !1341, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %4, metadata !1342, metadata !DIExpression()), !dbg !1353
  call void @llvm.dbg.value(metadata i1 %5, metadata !1343, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1353
  call void @llvm.dbg.value(metadata ptr %6, metadata !1344, metadata !DIExpression()), !dbg !1353
  %10 = load i32, ptr @opterr, align 4, !dbg !1354, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %10, metadata !1345, metadata !DIExpression()), !dbg !1353
  store i32 1, ptr @opterr, align 4, !dbg !1355, !tbaa !807
  %11 = select i1 %5, ptr @.str.1.44, ptr @.str.39, !dbg !1356
  call void @llvm.dbg.value(metadata ptr %11, metadata !1346, metadata !DIExpression()), !dbg !1353
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %12, metadata !1347, metadata !DIExpression()), !dbg !1353
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1358

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1348, metadata !DIExpression()), !dbg !1360
  call void @llvm.va_start(ptr nonnull %8), !dbg !1361
  %14 = load ptr, ptr @stdout, align 8, !dbg !1362, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #36, !dbg !1363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1363, !tbaa.struct !1068
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #36, !dbg !1363
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #36, !dbg !1363
  call void @exit(i32 noundef 0) #38, !dbg !1364
  unreachable, !dbg !1364

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1365, !tbaa !807
  br label %17, !dbg !1366

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #36, !dbg !1367
  br label %19, !dbg !1368

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1368, !tbaa !807
  ret void, !dbg !1369
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1372, metadata !DIExpression()), !dbg !1375
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %2, metadata !1373, metadata !DIExpression()), !dbg !1375
  %3 = icmp eq ptr %2, null, !dbg !1377
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1377
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1377
  call void @llvm.dbg.value(metadata ptr %5, metadata !1374, metadata !DIExpression()), !dbg !1375
  %6 = ptrtoint ptr %5 to i64, !dbg !1378
  %7 = ptrtoint ptr %0 to i64, !dbg !1378
  %8 = sub i64 %6, %7, !dbg !1378
  %9 = icmp sgt i64 %8, 6, !dbg !1380
  br i1 %9, label %10, label %19, !dbg !1381

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1382
  call void @llvm.dbg.value(metadata ptr %11, metadata !1383, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1388, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 7, metadata !1389, metadata !DIExpression()), !dbg !1390
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1392
  %13 = icmp eq i32 %12, 0, !dbg !1393
  br i1 %13, label %14, label %19, !dbg !1394

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1372, metadata !DIExpression()), !dbg !1375
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #37, !dbg !1395
  %16 = icmp eq i32 %15, 0, !dbg !1398
  %17 = select i1 %16, i64 3, i64 0, !dbg !1399
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1399
  br label %19, !dbg !1399

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1375
  call void @llvm.dbg.value(metadata ptr %21, metadata !1374, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.value(metadata ptr %20, metadata !1372, metadata !DIExpression()), !dbg !1375
  store ptr %20, ptr @program_name, align 8, !dbg !1400, !tbaa !751
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1401, !tbaa !751
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1402, !tbaa !751
  ret void, !dbg !1403
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1404 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !402 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !409, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %1, metadata !410, metadata !DIExpression()), !dbg !1405
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %5, metadata !411, metadata !DIExpression()), !dbg !1405
  %6 = icmp eq ptr %5, %0, !dbg !1407
  br i1 %6, label %7, label %14, !dbg !1409

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1410
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %4, metadata !417, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata ptr %4, metadata !1422, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 0, metadata !1428, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 8, metadata !1429, metadata !DIExpression()), !dbg !1430
  store i64 0, ptr %4, align 8, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %3, metadata !412, metadata !DIExpression(DW_OP_deref)), !dbg !1405
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1433
  %9 = icmp eq i64 %8, 2, !dbg !1435
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !412, metadata !DIExpression()), !dbg !1405
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1436
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1437
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1405
  ret ptr %15, !dbg !1437
}

; Function Attrs: nounwind
declare !dbg !1438 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1444 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1449, metadata !DIExpression()), !dbg !1452
  %2 = tail call ptr @__errno_location() #39, !dbg !1453
  %3 = load i32, ptr %2, align 4, !dbg !1453, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %3, metadata !1450, metadata !DIExpression()), !dbg !1452
  %4 = icmp eq ptr %0, null, !dbg !1454
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1454
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1455
  call void @llvm.dbg.value(metadata ptr %6, metadata !1451, metadata !DIExpression()), !dbg !1452
  store i32 %3, ptr %2, align 4, !dbg !1456, !tbaa !807
  ret ptr %6, !dbg !1457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1458 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1464, metadata !DIExpression()), !dbg !1465
  %2 = icmp eq ptr %0, null, !dbg !1466
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1466
  %4 = load i32, ptr %3, align 8, !dbg !1467, !tbaa !1468
  ret i32 %4, !dbg !1470
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1471 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1475, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.value(metadata i32 %1, metadata !1476, metadata !DIExpression()), !dbg !1477
  %3 = icmp eq ptr %0, null, !dbg !1478
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1478
  store i32 %1, ptr %4, align 8, !dbg !1479, !tbaa !1468
  ret void, !dbg !1480
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1481 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1485, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %1, metadata !1486, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %2, metadata !1487, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %1, metadata !1488, metadata !DIExpression()), !dbg !1493
  %4 = icmp eq ptr %0, null, !dbg !1494
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1494
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1495
  %7 = lshr i8 %1, 5, !dbg !1496
  %8 = zext i8 %7 to i64, !dbg !1496
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %9, metadata !1489, metadata !DIExpression()), !dbg !1493
  %10 = and i8 %1, 31, !dbg !1498
  %11 = zext i8 %10 to i32, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %11, metadata !1491, metadata !DIExpression()), !dbg !1493
  %12 = load i32, ptr %9, align 4, !dbg !1499, !tbaa !807
  %13 = lshr i32 %12, %11, !dbg !1500
  %14 = and i32 %13, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i32 %14, metadata !1492, metadata !DIExpression()), !dbg !1493
  %15 = xor i32 %13, %2, !dbg !1502
  %16 = and i32 %15, 1, !dbg !1502
  %17 = shl nuw i32 %16, %11, !dbg !1503
  %18 = xor i32 %17, %12, !dbg !1504
  store i32 %18, ptr %9, align 4, !dbg !1504, !tbaa !807
  ret i32 %14, !dbg !1505
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1506 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1510, metadata !DIExpression()), !dbg !1513
  call void @llvm.dbg.value(metadata i32 %1, metadata !1511, metadata !DIExpression()), !dbg !1513
  %3 = icmp eq ptr %0, null, !dbg !1514
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %4, metadata !1510, metadata !DIExpression()), !dbg !1513
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1517
  %6 = load i32, ptr %5, align 4, !dbg !1517, !tbaa !1518
  call void @llvm.dbg.value(metadata i32 %6, metadata !1512, metadata !DIExpression()), !dbg !1513
  store i32 %1, ptr %5, align 4, !dbg !1519, !tbaa !1518
  ret i32 %6, !dbg !1520
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1521 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1525, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %1, metadata !1526, metadata !DIExpression()), !dbg !1528
  call void @llvm.dbg.value(metadata ptr %2, metadata !1527, metadata !DIExpression()), !dbg !1528
  %4 = icmp eq ptr %0, null, !dbg !1529
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1531
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !1528
  store i32 10, ptr %5, align 8, !dbg !1532, !tbaa !1468
  %6 = icmp ne ptr %1, null, !dbg !1533
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1535
  br i1 %8, label %10, label %9, !dbg !1535

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1536
  unreachable, !dbg !1536

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1537
  store ptr %1, ptr %11, align 8, !dbg !1538, !tbaa !1539
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1540
  store ptr %2, ptr %12, align 8, !dbg !1541, !tbaa !1542
  ret void, !dbg !1543
}

; Function Attrs: noreturn nounwind
declare !dbg !1544 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %1, metadata !1550, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata i64 %3, metadata !1552, metadata !DIExpression()), !dbg !1557
  call void @llvm.dbg.value(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1557
  %6 = icmp eq ptr %4, null, !dbg !1558
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1558
  call void @llvm.dbg.value(metadata ptr %7, metadata !1554, metadata !DIExpression()), !dbg !1557
  %8 = tail call ptr @__errno_location() #39, !dbg !1559
  %9 = load i32, ptr %8, align 4, !dbg !1559, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %9, metadata !1555, metadata !DIExpression()), !dbg !1557
  %10 = load i32, ptr %7, align 8, !dbg !1560, !tbaa !1468
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1561
  %12 = load i32, ptr %11, align 4, !dbg !1561, !tbaa !1518
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1562
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1563
  %15 = load ptr, ptr %14, align 8, !dbg !1563, !tbaa !1539
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1564
  %17 = load ptr, ptr %16, align 8, !dbg !1564, !tbaa !1542
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %18, metadata !1556, metadata !DIExpression()), !dbg !1557
  store i32 %9, ptr %8, align 4, !dbg !1566, !tbaa !807
  ret i64 %18, !dbg !1567
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1568 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1574, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %1, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %2, metadata !1576, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %3, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %4, metadata !1578, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %5, metadata !1579, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %6, metadata !1580, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %7, metadata !1581, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %8, metadata !1582, metadata !DIExpression()), !dbg !1636
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1637
  %17 = icmp eq i64 %16, 1, !dbg !1638
  call void @llvm.dbg.value(metadata i1 %17, metadata !1583, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr null, metadata !1586, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1587, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %5, metadata !1589, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1636
  %18 = and i32 %5, 2, !dbg !1639
  %19 = icmp ne i32 %18, 0, !dbg !1639
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1639

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1640
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1641
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1642
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %34, metadata !1587, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %33, metadata !1586, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %32, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %31, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %30, metadata !1582, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %29, metadata !1581, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %28, metadata !1578, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.label(metadata !1629), !dbg !1643
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1636
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
  ], !dbg !1644

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 5, metadata !1578, metadata !DIExpression()), !dbg !1636
  br label %102, !dbg !1645

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 5, metadata !1578, metadata !DIExpression()), !dbg !1636
  br i1 %36, label %102, label %42, !dbg !1645

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1646
  br i1 %43, label %102, label %44, !dbg !1650

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1646, !tbaa !816
  br label %102, !dbg !1646

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !512, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i32 %28, metadata !513, metadata !DIExpression()), !dbg !1651
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #36, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %46, metadata !514, metadata !DIExpression()), !dbg !1651
  %47 = icmp eq ptr %46, @.str.11.63, !dbg !1656
  br i1 %47, label %48, label %57, !dbg !1658

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1659
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1660
  call void @llvm.dbg.declare(metadata ptr %13, metadata !516, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata ptr %13, metadata !1662, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %13, metadata !1670, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 0, metadata !1673, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 8, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i64 0, ptr %13, align 8, !dbg !1677
  call void @llvm.dbg.value(metadata ptr %12, metadata !515, metadata !DIExpression(DW_OP_deref)), !dbg !1651
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1678
  %50 = icmp eq i64 %49, 3, !dbg !1680
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !515, metadata !DIExpression()), !dbg !1651
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1681
  %54 = icmp eq i32 %28, 9, !dbg !1681
  %55 = select i1 %54, ptr @.str.10.65, ptr @.str.12.66, !dbg !1681
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1681
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1682
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1682
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1651
  call void @llvm.dbg.value(metadata ptr %58, metadata !1581, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !512, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i32 %28, metadata !513, metadata !DIExpression()), !dbg !1683
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #36, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %59, metadata !514, metadata !DIExpression()), !dbg !1683
  %60 = icmp eq ptr %59, @.str.12.66, !dbg !1686
  br i1 %60, label %61, label %70, !dbg !1687

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1688
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %11, metadata !516, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %11, metadata !1662, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %11, metadata !1670, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 0, metadata !1673, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 8, metadata !1674, metadata !DIExpression()), !dbg !1693
  store i64 0, ptr %11, align 8, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %10, metadata !515, metadata !DIExpression(DW_OP_deref)), !dbg !1683
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1696
  %63 = icmp eq i64 %62, 3, !dbg !1697
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !515, metadata !DIExpression()), !dbg !1683
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1698
  %67 = icmp eq i32 %28, 9, !dbg !1698
  %68 = select i1 %67, ptr @.str.10.65, ptr @.str.12.66, !dbg !1698
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1699
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1582, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %71, metadata !1581, metadata !DIExpression()), !dbg !1636
  br i1 %36, label %88, label %73, !dbg !1700

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1593, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 0, metadata !1584, metadata !DIExpression()), !dbg !1636
  %74 = load i8, ptr %71, align 1, !dbg !1702, !tbaa !816
  %75 = icmp eq i8 %74, 0, !dbg !1704
  br i1 %75, label %88, label %76, !dbg !1704

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1593, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i64 %79, metadata !1584, metadata !DIExpression()), !dbg !1636
  %80 = icmp ult i64 %79, %39, !dbg !1705
  br i1 %80, label %81, label %83, !dbg !1708

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1705
  store i8 %77, ptr %82, align 1, !dbg !1705, !tbaa !816
  br label %83, !dbg !1705

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %84, metadata !1584, metadata !DIExpression()), !dbg !1636
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %85, metadata !1593, metadata !DIExpression()), !dbg !1701
  %86 = load i8, ptr %85, align 1, !dbg !1702, !tbaa !816
  %87 = icmp eq i8 %86, 0, !dbg !1704
  br i1 %87, label %88, label %76, !dbg !1704, !llvm.loop !1710

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1712
  call void @llvm.dbg.value(metadata i64 %89, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %72, metadata !1586, metadata !DIExpression()), !dbg !1636
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1713
  call void @llvm.dbg.value(metadata i64 %90, metadata !1587, metadata !DIExpression()), !dbg !1636
  br label %102, !dbg !1714

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1636
  br label %93, !dbg !1715

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1636
  br i1 %36, label %102, label %96, !dbg !1716

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 2, metadata !1578, metadata !DIExpression()), !dbg !1636
  br label %102, !dbg !1717

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 2, metadata !1578, metadata !DIExpression()), !dbg !1636
  br i1 %36, label %102, label %96, !dbg !1717

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1718
  br i1 %98, label %102, label %99, !dbg !1722

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1718, !tbaa !816
  br label %102, !dbg !1718

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1589, metadata !DIExpression()), !dbg !1636
  br label %102, !dbg !1723

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1724
  unreachable, !dbg !1724

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1712
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.65, %42 ], [ @.str.10.65, %44 ], [ @.str.10.65, %41 ], [ %33, %27 ], [ @.str.12.66, %96 ], [ @.str.12.66, %99 ], [ @.str.12.66, %95 ], [ @.str.10.65, %40 ], [ @.str.12.66, %93 ], [ @.str.12.66, %92 ], !dbg !1636
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1636
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %108, metadata !1587, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %107, metadata !1586, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %106, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %105, metadata !1582, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata ptr %104, metadata !1581, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i32 %103, metadata !1578, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1725
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
  br label %122, !dbg !1726

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1712
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1640
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1727
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %129, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %124, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %123, metadata !1577, metadata !DIExpression()), !dbg !1636
  %131 = icmp eq i64 %123, -1, !dbg !1728
  br i1 %131, label %132, label %136, !dbg !1729

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1730
  %134 = load i8, ptr %133, align 1, !dbg !1730, !tbaa !816
  %135 = icmp eq i8 %134, 0, !dbg !1731
  br i1 %135, label %579, label %138, !dbg !1732

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1733
  br i1 %137, label %579, label %138, !dbg !1732

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1734
  br i1 %114, label %139, label %152, !dbg !1735

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1737
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1738
  br i1 %141, label %142, label %144, !dbg !1738

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %143, metadata !1577, metadata !DIExpression()), !dbg !1636
  br label %144, !dbg !1740

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1740
  call void @llvm.dbg.value(metadata i64 %145, metadata !1577, metadata !DIExpression()), !dbg !1636
  %146 = icmp ugt i64 %140, %145, !dbg !1741
  br i1 %146, label %152, label %147, !dbg !1742

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1743
  call void @llvm.dbg.value(metadata ptr %148, metadata !1744, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata ptr %107, metadata !1747, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i64 %108, metadata !1748, metadata !DIExpression()), !dbg !1749
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1751
  %150 = icmp eq i32 %149, 0, !dbg !1752
  %151 = and i1 %150, %110, !dbg !1753
  br i1 %151, label %630, label %152, !dbg !1753

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %153, metadata !1577, metadata !DIExpression()), !dbg !1636
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1754
  %156 = load i8, ptr %155, align 1, !dbg !1754, !tbaa !816
  call void @llvm.dbg.value(metadata i8 %156, metadata !1605, metadata !DIExpression()), !dbg !1734
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
  ], !dbg !1755

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1756

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1757

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1734
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1761
  br i1 %160, label %177, label %161, !dbg !1761

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1763
  br i1 %162, label %163, label %165, !dbg !1767

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1763
  store i8 39, ptr %164, align 1, !dbg !1763, !tbaa !816
  br label %165, !dbg !1763

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %166, metadata !1584, metadata !DIExpression()), !dbg !1636
  %167 = icmp ult i64 %166, %130, !dbg !1768
  br i1 %167, label %168, label %170, !dbg !1771

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1768
  store i8 36, ptr %169, align 1, !dbg !1768, !tbaa !816
  br label %170, !dbg !1768

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %171, metadata !1584, metadata !DIExpression()), !dbg !1636
  %172 = icmp ult i64 %171, %130, !dbg !1772
  br i1 %172, label %173, label %175, !dbg !1775

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1772
  store i8 39, ptr %174, align 1, !dbg !1772, !tbaa !816
  br label %175, !dbg !1772

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %176, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %177, !dbg !1776

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1636
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %178, metadata !1584, metadata !DIExpression()), !dbg !1636
  %180 = icmp ult i64 %178, %130, !dbg !1777
  br i1 %180, label %181, label %183, !dbg !1780

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1777
  store i8 92, ptr %182, align 1, !dbg !1777, !tbaa !816
  br label %183, !dbg !1777

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %184, metadata !1584, metadata !DIExpression()), !dbg !1636
  br i1 %111, label %185, label %482, !dbg !1781

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1783
  %187 = icmp ult i64 %186, %153, !dbg !1784
  br i1 %187, label %188, label %439, !dbg !1785

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1786
  %190 = load i8, ptr %189, align 1, !dbg !1786, !tbaa !816
  %191 = add i8 %190, -48, !dbg !1787
  %192 = icmp ult i8 %191, 10, !dbg !1787
  br i1 %192, label %193, label %439, !dbg !1787

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1788
  br i1 %194, label %195, label %197, !dbg !1792

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1788
  store i8 48, ptr %196, align 1, !dbg !1788, !tbaa !816
  br label %197, !dbg !1788

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %198, metadata !1584, metadata !DIExpression()), !dbg !1636
  %199 = icmp ult i64 %198, %130, !dbg !1793
  br i1 %199, label %200, label %202, !dbg !1796

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1793
  store i8 48, ptr %201, align 1, !dbg !1793, !tbaa !816
  br label %202, !dbg !1793

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %203, metadata !1584, metadata !DIExpression()), !dbg !1636
  br label %439, !dbg !1797

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1798

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1799

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1800

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1802

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1804
  %210 = icmp ult i64 %209, %153, !dbg !1805
  br i1 %210, label %211, label %439, !dbg !1806

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1807
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1808
  %214 = load i8, ptr %213, align 1, !dbg !1808, !tbaa !816
  %215 = icmp eq i8 %214, 63, !dbg !1809
  br i1 %215, label %216, label %439, !dbg !1810

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1811
  %218 = load i8, ptr %217, align 1, !dbg !1811, !tbaa !816
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
  ], !dbg !1812

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1813

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %209, metadata !1598, metadata !DIExpression()), !dbg !1725
  %221 = icmp ult i64 %124, %130, !dbg !1815
  br i1 %221, label %222, label %224, !dbg !1818

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1815
  store i8 63, ptr %223, align 1, !dbg !1815, !tbaa !816
  br label %224, !dbg !1815

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %225, metadata !1584, metadata !DIExpression()), !dbg !1636
  %226 = icmp ult i64 %225, %130, !dbg !1819
  br i1 %226, label %227, label %229, !dbg !1822

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1819
  store i8 34, ptr %228, align 1, !dbg !1819, !tbaa !816
  br label %229, !dbg !1819

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %230, metadata !1584, metadata !DIExpression()), !dbg !1636
  %231 = icmp ult i64 %230, %130, !dbg !1823
  br i1 %231, label %232, label %234, !dbg !1826

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1823
  store i8 34, ptr %233, align 1, !dbg !1823, !tbaa !816
  br label %234, !dbg !1823

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %235, metadata !1584, metadata !DIExpression()), !dbg !1636
  %236 = icmp ult i64 %235, %130, !dbg !1827
  br i1 %236, label %237, label %239, !dbg !1830

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1827
  store i8 63, ptr %238, align 1, !dbg !1827, !tbaa !816
  br label %239, !dbg !1827

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %240, metadata !1584, metadata !DIExpression()), !dbg !1636
  br label %439, !dbg !1831

241:                                              ; preds = %152
  br label %251, !dbg !1832

242:                                              ; preds = %152
  br label %251, !dbg !1833

243:                                              ; preds = %152
  br label %249, !dbg !1834

244:                                              ; preds = %152
  br label %249, !dbg !1835

245:                                              ; preds = %152
  br label %251, !dbg !1836

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1837

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1838

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1841

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1843
  call void @llvm.dbg.label(metadata !1630), !dbg !1844
  br i1 %119, label %621, label %251, !dbg !1845

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1843
  call void @llvm.dbg.label(metadata !1632), !dbg !1847
  br i1 %109, label %493, label %450, !dbg !1848

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1849

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1850, !tbaa !816
  %256 = icmp eq i8 %255, 0, !dbg !1852
  br i1 %256, label %257, label %439, !dbg !1853

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1854
  br i1 %258, label %259, label %439, !dbg !1856

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1734
  br label %260, !dbg !1857

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1734
  br i1 %116, label %262, label %439, !dbg !1858

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1860

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1734
  br i1 %116, label %264, label %439, !dbg !1861

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1862

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1865
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1867
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1867
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %270, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %269, metadata !1585, metadata !DIExpression()), !dbg !1636
  %271 = icmp ult i64 %124, %270, !dbg !1868
  br i1 %271, label %272, label %274, !dbg !1871

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1868
  store i8 39, ptr %273, align 1, !dbg !1868, !tbaa !816
  br label %274, !dbg !1868

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %275, metadata !1584, metadata !DIExpression()), !dbg !1636
  %276 = icmp ult i64 %275, %270, !dbg !1872
  br i1 %276, label %277, label %279, !dbg !1875

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1872
  store i8 92, ptr %278, align 1, !dbg !1872, !tbaa !816
  br label %279, !dbg !1872

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %280, metadata !1584, metadata !DIExpression()), !dbg !1636
  %281 = icmp ult i64 %280, %270, !dbg !1876
  br i1 %281, label %282, label %284, !dbg !1879

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1876
  store i8 39, ptr %283, align 1, !dbg !1876, !tbaa !816
  br label %284, !dbg !1876

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %285, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %439, !dbg !1880

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1881

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1606, metadata !DIExpression()), !dbg !1882
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1883
  %289 = load ptr, ptr %288, align 8, !dbg !1883, !tbaa !751
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1883
  %292 = load i16, ptr %291, align 2, !dbg !1883, !tbaa !848
  %293 = and i16 %292, 16384, !dbg !1883
  %294 = icmp ne i16 %293, 0, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %294, metadata !1609, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1882
  br label %337, !dbg !1886

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1887
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1610, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata ptr %14, metadata !1662, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %14, metadata !1670, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1673, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 8, metadata !1674, metadata !DIExpression()), !dbg !1891
  store i64 0, ptr %14, align 8, !dbg !1893
  call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1882
  %296 = icmp eq i64 %153, -1, !dbg !1894
  br i1 %296, label %297, label %299, !dbg !1896

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %298, metadata !1577, metadata !DIExpression()), !dbg !1636
  br label %299, !dbg !1898

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1734
  call void @llvm.dbg.value(metadata i64 %300, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1899
  %301 = sub i64 %300, %129, !dbg !1900
  call void @llvm.dbg.value(metadata ptr %15, metadata !1613, metadata !DIExpression(DW_OP_deref)), !dbg !1901
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %302, metadata !1617, metadata !DIExpression()), !dbg !1901
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1903

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1882
  %304 = icmp ugt i64 %300, %129, !dbg !1904
  br i1 %304, label %306, label %332, !dbg !1906

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1882
  br label %332, !dbg !1907

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1606, metadata !DIExpression()), !dbg !1882
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1909
  %310 = load i8, ptr %309, align 1, !dbg !1909, !tbaa !816
  %311 = icmp eq i8 %310, 0, !dbg !1906
  br i1 %311, label %332, label %312, !dbg !1910

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %313, metadata !1606, metadata !DIExpression()), !dbg !1882
  %314 = add i64 %313, %129, !dbg !1912
  %315 = icmp eq i64 %313, %301, !dbg !1904
  br i1 %315, label %332, label %306, !dbg !1906, !llvm.loop !1913

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1914
  %319 = and i1 %318, %110, !dbg !1914
  call void @llvm.dbg.value(metadata i64 1, metadata !1618, metadata !DIExpression()), !dbg !1915
  br i1 %319, label %320, label %328, !dbg !1914

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1618, metadata !DIExpression()), !dbg !1915
  %322 = add i64 %321, %129, !dbg !1916
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1918
  %324 = load i8, ptr %323, align 1, !dbg !1918, !tbaa !816
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1919

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %326, metadata !1618, metadata !DIExpression()), !dbg !1915
  %327 = icmp eq i64 %326, %302, !dbg !1921
  br i1 %327, label %328, label %320, !dbg !1922, !llvm.loop !1923

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1925, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %329, metadata !1613, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i32 %329, metadata !1927, metadata !DIExpression()), !dbg !1935
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1937
  %331 = icmp ne i32 %330, 0, !dbg !1938
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %302, metadata !1606, metadata !DIExpression()), !dbg !1882
  br label %332, !dbg !1939

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %333, metadata !1606, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1941
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1941
  call void @llvm.dbg.label(metadata !1635), !dbg !1942
  %336 = select i1 %109, i32 4, i32 2, !dbg !1943
  br label %626, !dbg !1943

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1734
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1945
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %339, metadata !1606, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %338, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i1 %340, metadata !1604, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1734
  %341 = icmp ult i64 %339, 2, !dbg !1946
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1947
  br i1 %343, label %439, label %344, !dbg !1947

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %345, metadata !1626, metadata !DIExpression()), !dbg !1949
  br label %346, !dbg !1950

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1636
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1725
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1951
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1734
  call void @llvm.dbg.value(metadata i8 %352, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %351, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %349, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %347, metadata !1584, metadata !DIExpression()), !dbg !1636
  br i1 %342, label %397, label %353, !dbg !1952

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1957

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1734
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1960
  br i1 %355, label %372, label %356, !dbg !1960

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1962
  br i1 %357, label %358, label %360, !dbg !1966

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1962
  store i8 39, ptr %359, align 1, !dbg !1962, !tbaa !816
  br label %360, !dbg !1962

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %361, metadata !1584, metadata !DIExpression()), !dbg !1636
  %362 = icmp ult i64 %361, %130, !dbg !1967
  br i1 %362, label %363, label %365, !dbg !1970

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1967
  store i8 36, ptr %364, align 1, !dbg !1967, !tbaa !816
  br label %365, !dbg !1967

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %366, metadata !1584, metadata !DIExpression()), !dbg !1636
  %367 = icmp ult i64 %366, %130, !dbg !1971
  br i1 %367, label %368, label %370, !dbg !1974

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1971
  store i8 39, ptr %369, align 1, !dbg !1971, !tbaa !816
  br label %370, !dbg !1971

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %371, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %372, !dbg !1975

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1636
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %373, metadata !1584, metadata !DIExpression()), !dbg !1636
  %375 = icmp ult i64 %373, %130, !dbg !1976
  br i1 %375, label %376, label %378, !dbg !1979

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1976
  store i8 92, ptr %377, align 1, !dbg !1976, !tbaa !816
  br label %378, !dbg !1976

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %379, metadata !1584, metadata !DIExpression()), !dbg !1636
  %380 = icmp ult i64 %379, %130, !dbg !1980
  br i1 %380, label %381, label %385, !dbg !1983

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1980
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1980
  store i8 %383, ptr %384, align 1, !dbg !1980, !tbaa !816
  br label %385, !dbg !1980

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %386, metadata !1584, metadata !DIExpression()), !dbg !1636
  %387 = icmp ult i64 %386, %130, !dbg !1984
  br i1 %387, label %388, label %393, !dbg !1987

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !1984
  %391 = or i8 %390, 48, !dbg !1984
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1984
  store i8 %391, ptr %392, align 1, !dbg !1984, !tbaa !816
  br label %393, !dbg !1984

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %394, metadata !1584, metadata !DIExpression()), !dbg !1636
  %395 = and i8 %352, 7, !dbg !1988
  %396 = or i8 %395, 48, !dbg !1989
  call void @llvm.dbg.value(metadata i8 %396, metadata !1605, metadata !DIExpression()), !dbg !1734
  br label %404, !dbg !1990

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !1991

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !1992
  br i1 %399, label %400, label %402, !dbg !1997

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1992
  store i8 92, ptr %401, align 1, !dbg !1992, !tbaa !816
  br label %402, !dbg !1992

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %403, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1734
  br label %404, !dbg !1998

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1636
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1734
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1734
  call void @llvm.dbg.value(metadata i8 %409, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %408, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %405, metadata !1584, metadata !DIExpression()), !dbg !1636
  %410 = add i64 %349, 1, !dbg !1999
  %411 = icmp ugt i64 %345, %410, !dbg !2001
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2002

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2003
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2003
  br i1 %415, label %416, label %427, !dbg !2003

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2006
  br i1 %417, label %418, label %420, !dbg !2010

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2006
  store i8 39, ptr %419, align 1, !dbg !2006, !tbaa !816
  br label %420, !dbg !2006

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %421, metadata !1584, metadata !DIExpression()), !dbg !1636
  %422 = icmp ult i64 %421, %130, !dbg !2011
  br i1 %422, label %423, label %425, !dbg !2014

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2011
  store i8 39, ptr %424, align 1, !dbg !2011, !tbaa !816
  br label %425, !dbg !2011

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %426, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %427, !dbg !2015

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2016
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %428, metadata !1584, metadata !DIExpression()), !dbg !1636
  %430 = icmp ult i64 %428, %130, !dbg !2017
  br i1 %430, label %431, label %433, !dbg !2020

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2017
  store i8 %409, ptr %432, align 1, !dbg !2017, !tbaa !816
  br label %433, !dbg !2017

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %434, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %410, metadata !1598, metadata !DIExpression()), !dbg !1725
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2021
  %436 = load i8, ptr %435, align 1, !dbg !2021, !tbaa !816
  call void @llvm.dbg.value(metadata i8 %436, metadata !1605, metadata !DIExpression()), !dbg !1734
  br label %346, !dbg !2022, !llvm.loop !2023

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i1 %340, metadata !1604, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1734
  call void @llvm.dbg.value(metadata i8 %408, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %349, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %405, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %338, metadata !1577, metadata !DIExpression()), !dbg !1636
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2026
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1636
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1640
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1725
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1734
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %448, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %445, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %442, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %441, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %440, metadata !1577, metadata !DIExpression()), !dbg !1636
  br i1 %112, label %461, label %450, !dbg !2027

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
  br i1 %121, label %462, label %482, !dbg !2029

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2030

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
  %473 = lshr i8 %464, 5, !dbg !2031
  %474 = zext i8 %473 to i64, !dbg !2031
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2032
  %476 = load i32, ptr %475, align 4, !dbg !2032, !tbaa !807
  %477 = and i8 %464, 31, !dbg !2033
  %478 = zext i8 %477 to i32, !dbg !2033
  %479 = shl nuw i32 1, %478, !dbg !2034
  %480 = and i32 %476, %479, !dbg !2034
  %481 = icmp eq i32 %480, 0, !dbg !2034
  br i1 %481, label %482, label %493, !dbg !2035

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
  br i1 %154, label %493, label %529, !dbg !2036

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2026
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1636
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1640
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2037
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1734
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %501, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %499, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %496, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %495, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %494, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.label(metadata !1633), !dbg !2038
  br i1 %110, label %621, label %503, !dbg !2039

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1734
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2041
  br i1 %504, label %521, label %505, !dbg !2041

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2043
  br i1 %506, label %507, label %509, !dbg !2047

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2043
  store i8 39, ptr %508, align 1, !dbg !2043, !tbaa !816
  br label %509, !dbg !2043

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %510, metadata !1584, metadata !DIExpression()), !dbg !1636
  %511 = icmp ult i64 %510, %502, !dbg !2048
  br i1 %511, label %512, label %514, !dbg !2051

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2048
  store i8 36, ptr %513, align 1, !dbg !2048, !tbaa !816
  br label %514, !dbg !2048

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2051
  call void @llvm.dbg.value(metadata i64 %515, metadata !1584, metadata !DIExpression()), !dbg !1636
  %516 = icmp ult i64 %515, %502, !dbg !2052
  br i1 %516, label %517, label %519, !dbg !2055

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2052
  store i8 39, ptr %518, align 1, !dbg !2052, !tbaa !816
  br label %519, !dbg !2052

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %520, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %521, !dbg !2056

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1734
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %522, metadata !1584, metadata !DIExpression()), !dbg !1636
  %524 = icmp ult i64 %522, %502, !dbg !2057
  br i1 %524, label %525, label %527, !dbg !2060

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2057
  store i8 92, ptr %526, align 1, !dbg !2057, !tbaa !816
  br label %527, !dbg !2057

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %502, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %501, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %499, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %496, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %528, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %494, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.label(metadata !1634), !dbg !2061
  br label %553, !dbg !2062

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2026
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1636
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1640
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2037
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2065
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 %538, metadata !1605, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1604, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %535, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %532, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %531, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %530, metadata !1577, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.label(metadata !1634), !dbg !2061
  %540 = xor i1 %534, true, !dbg !2062
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2062
  br i1 %541, label %553, label %542, !dbg !2062

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2066
  br i1 %543, label %544, label %546, !dbg !2070

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2066
  store i8 39, ptr %545, align 1, !dbg !2066, !tbaa !816
  br label %546, !dbg !2066

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %547, metadata !1584, metadata !DIExpression()), !dbg !1636
  %548 = icmp ult i64 %547, %539, !dbg !2071
  br i1 %548, label %549, label %551, !dbg !2074

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2071
  store i8 39, ptr %550, align 1, !dbg !2071, !tbaa !816
  br label %551, !dbg !2071

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %552, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1592, metadata !DIExpression()), !dbg !1636
  br label %553, !dbg !2075

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1734
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %561, metadata !1584, metadata !DIExpression()), !dbg !1636
  %563 = icmp ult i64 %561, %554, !dbg !2076
  br i1 %563, label %564, label %566, !dbg !2079

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2076
  store i8 %555, ptr %565, align 1, !dbg !2076, !tbaa !816
  br label %566, !dbg !2076

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %567, metadata !1584, metadata !DIExpression()), !dbg !1636
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2080
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1636
  br label %569, !dbg !2081

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2026
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1636
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1640
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2037
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %576, metadata !1598, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 poison, metadata !1592, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %572, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %571, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %570, metadata !1577, metadata !DIExpression()), !dbg !1636
  %578 = add i64 %576, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %578, metadata !1598, metadata !DIExpression()), !dbg !1725
  br label %122, !dbg !2083, !llvm.loop !2084

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1575, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 poison, metadata !1590, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %125, metadata !1585, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %124, metadata !1584, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %123, metadata !1577, metadata !DIExpression()), !dbg !1636
  %580 = icmp ne i64 %124, 0, !dbg !2086
  %581 = xor i1 %110, true, !dbg !2088
  %582 = or i1 %580, %581, !dbg !2088
  %583 = or i1 %582, %111, !dbg !2088
  br i1 %583, label %584, label %621, !dbg !2088

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2089
  %586 = xor i1 %126, true, !dbg !2089
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2089
  br i1 %587, label %595, label %588, !dbg !2089

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2091

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2093
  br label %636, !dbg !2095

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2096
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2098
  br i1 %594, label %27, label %595, !dbg !2098

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2099
  %598 = or i1 %597, %596, !dbg !2101
  br i1 %598, label %614, label %599, !dbg !2101

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1586, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %124, metadata !1584, metadata !DIExpression()), !dbg !1636
  %600 = load i8, ptr %107, align 1, !dbg !2102, !tbaa !816
  %601 = icmp eq i8 %600, 0, !dbg !2105
  br i1 %601, label %614, label %602, !dbg !2105

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1586, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %605, metadata !1584, metadata !DIExpression()), !dbg !1636
  %606 = icmp ult i64 %605, %130, !dbg !2106
  br i1 %606, label %607, label %609, !dbg !2109

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2106
  store i8 %603, ptr %608, align 1, !dbg !2106, !tbaa !816
  br label %609, !dbg !2106

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %610, metadata !1584, metadata !DIExpression()), !dbg !1636
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %611, metadata !1586, metadata !DIExpression()), !dbg !1636
  %612 = load i8, ptr %611, align 1, !dbg !2102, !tbaa !816
  %613 = icmp eq i8 %612, 0, !dbg !2105
  br i1 %613, label %614, label %602, !dbg !2105, !llvm.loop !2111

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1712
  call void @llvm.dbg.value(metadata i64 %615, metadata !1584, metadata !DIExpression()), !dbg !1636
  %616 = icmp ult i64 %615, %130, !dbg !2113
  br i1 %616, label %617, label %636, !dbg !2115

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2116
  store i8 0, ptr %618, align 1, !dbg !2117, !tbaa !816
  br label %636, !dbg !2116

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1635), !dbg !1942
  %620 = icmp eq i32 %103, 2, !dbg !2118
  br i1 %620, label %626, label %630, !dbg !1943

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1635), !dbg !1942
  %624 = icmp eq i32 %103, 2, !dbg !2118
  %625 = select i1 %109, i32 4, i32 2, !dbg !1943
  br i1 %624, label %626, label %630, !dbg !1943

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1943

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1578, metadata !DIExpression()), !dbg !1636
  %634 = and i32 %5, -3, !dbg !2119
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2120
  br label %636, !dbg !2121

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2122
}

; Function Attrs: nounwind
declare !dbg !2123 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2126 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2129 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2131 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %2, metadata !2137, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata ptr %0, metadata !2139, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i64 %1, metadata !2144, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr null, metadata !2145, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata ptr %2, metadata !2146, metadata !DIExpression()), !dbg !2152
  %4 = icmp eq ptr %2, null, !dbg !2154
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2154
  call void @llvm.dbg.value(metadata ptr %5, metadata !2147, metadata !DIExpression()), !dbg !2152
  %6 = tail call ptr @__errno_location() #39, !dbg !2155
  %7 = load i32, ptr %6, align 4, !dbg !2155, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %7, metadata !2148, metadata !DIExpression()), !dbg !2152
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2156
  %9 = load i32, ptr %8, align 4, !dbg !2156, !tbaa !1518
  %10 = or i32 %9, 1, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %10, metadata !2149, metadata !DIExpression()), !dbg !2152
  %11 = load i32, ptr %5, align 8, !dbg !2158, !tbaa !1468
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2159
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2160
  %14 = load ptr, ptr %13, align 8, !dbg !2160, !tbaa !1539
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2161
  %16 = load ptr, ptr %15, align 8, !dbg !2161, !tbaa !1542
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2162
  %18 = add i64 %17, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %18, metadata !2150, metadata !DIExpression()), !dbg !2152
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2164
  call void @llvm.dbg.value(metadata ptr %19, metadata !2151, metadata !DIExpression()), !dbg !2152
  %20 = load i32, ptr %5, align 8, !dbg !2165, !tbaa !1468
  %21 = load ptr, ptr %13, align 8, !dbg !2166, !tbaa !1539
  %22 = load ptr, ptr %15, align 8, !dbg !2167, !tbaa !1542
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2168
  store i32 %7, ptr %6, align 4, !dbg !2169, !tbaa !807
  ret ptr %19, !dbg !2170
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2140 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2139, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %1, metadata !2144, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %2, metadata !2145, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %3, metadata !2146, metadata !DIExpression()), !dbg !2171
  %5 = icmp eq ptr %3, null, !dbg !2172
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %6, metadata !2147, metadata !DIExpression()), !dbg !2171
  %7 = tail call ptr @__errno_location() #39, !dbg !2173
  %8 = load i32, ptr %7, align 4, !dbg !2173, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %8, metadata !2148, metadata !DIExpression()), !dbg !2171
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2174
  %10 = load i32, ptr %9, align 4, !dbg !2174, !tbaa !1518
  %11 = icmp eq ptr %2, null, !dbg !2175
  %12 = zext i1 %11 to i32, !dbg !2175
  %13 = or i32 %10, %12, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %13, metadata !2149, metadata !DIExpression()), !dbg !2171
  %14 = load i32, ptr %6, align 8, !dbg !2177, !tbaa !1468
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2178
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2179
  %17 = load ptr, ptr %16, align 8, !dbg !2179, !tbaa !1539
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2180
  %19 = load ptr, ptr %18, align 8, !dbg !2180, !tbaa !1542
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2181
  %21 = add i64 %20, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %21, metadata !2150, metadata !DIExpression()), !dbg !2171
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %22, metadata !2151, metadata !DIExpression()), !dbg !2171
  %23 = load i32, ptr %6, align 8, !dbg !2184, !tbaa !1468
  %24 = load ptr, ptr %16, align 8, !dbg !2185, !tbaa !1539
  %25 = load ptr, ptr %18, align 8, !dbg !2186, !tbaa !1542
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2187
  store i32 %8, ptr %7, align 4, !dbg !2188, !tbaa !807
  br i1 %11, label %28, label %27, !dbg !2189

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2190, !tbaa !2192
  br label %28, !dbg !2193

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2194
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2195 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2200, !tbaa !751
  call void @llvm.dbg.value(metadata ptr %1, metadata !2197, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !2202
  %2 = load i32, ptr @nslots, align 4, !tbaa !807
  call void @llvm.dbg.value(metadata i32 1, metadata !2198, metadata !DIExpression()), !dbg !2202
  %3 = icmp sgt i32 %2, 1, !dbg !2203
  br i1 %3, label %4, label %6, !dbg !2205

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2203
  br label %10, !dbg !2205

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2206
  %8 = load ptr, ptr %7, align 8, !dbg !2206, !tbaa !2208
  %9 = icmp eq ptr %8, @slot0, !dbg !2210
  br i1 %9, label %17, label %16, !dbg !2211

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2198, metadata !DIExpression()), !dbg !2202
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2212
  %13 = load ptr, ptr %12, align 8, !dbg !2212, !tbaa !2208
  tail call void @free(ptr noundef %13) #36, !dbg !2213
  %14 = add nuw nsw i64 %11, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %14, metadata !2198, metadata !DIExpression()), !dbg !2202
  %15 = icmp eq i64 %14, %5, !dbg !2203
  br i1 %15, label %6, label %10, !dbg !2205, !llvm.loop !2215

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2217
  store i64 256, ptr @slotvec0, align 8, !dbg !2219, !tbaa !2220
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2221, !tbaa !2208
  br label %17, !dbg !2222

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2223
  br i1 %18, label %20, label %19, !dbg !2225

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2226
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2228, !tbaa !751
  br label %20, !dbg !2229

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2230, !tbaa !807
  ret void, !dbg !2231
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2232 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2235 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2237, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata ptr %1, metadata !2238, metadata !DIExpression()), !dbg !2239
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2240
  ret ptr %3, !dbg !2241
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2242 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %1, metadata !2247, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i64 %2, metadata !2248, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %3, metadata !2249, metadata !DIExpression()), !dbg !2262
  %6 = tail call ptr @__errno_location() #39, !dbg !2263
  %7 = load i32, ptr %6, align 4, !dbg !2263, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %7, metadata !2250, metadata !DIExpression()), !dbg !2262
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2264, !tbaa !751
  call void @llvm.dbg.value(metadata ptr %8, metadata !2251, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2252, metadata !DIExpression()), !dbg !2262
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2265
  br i1 %9, label %10, label %11, !dbg !2265

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2267
  unreachable, !dbg !2267

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2268, !tbaa !807
  %13 = icmp sgt i32 %12, %0, !dbg !2269
  br i1 %13, label %32, label %14, !dbg !2270

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2271
  call void @llvm.dbg.value(metadata i1 %15, metadata !2253, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2273
  %16 = sext i32 %12 to i64, !dbg !2274
  call void @llvm.dbg.value(metadata i64 %16, metadata !2256, metadata !DIExpression()), !dbg !2272
  store i64 %16, ptr %5, align 8, !dbg !2275, !tbaa !2192
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2276
  %18 = add nuw nsw i32 %0, 1, !dbg !2277
  %19 = sub i32 %18, %12, !dbg !2278
  %20 = sext i32 %19 to i64, !dbg !2279
  call void @llvm.dbg.value(metadata ptr %5, metadata !2256, metadata !DIExpression(DW_OP_deref)), !dbg !2272
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %21, metadata !2251, metadata !DIExpression()), !dbg !2262
  store ptr %21, ptr @slotvec, align 8, !dbg !2281, !tbaa !751
  br i1 %15, label %22, label %23, !dbg !2282

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2283, !tbaa.struct !2285
  br label %23, !dbg !2286

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2287, !tbaa !807
  %25 = sext i32 %24 to i64, !dbg !2288
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2288
  %27 = load i64, ptr %5, align 8, !dbg !2289, !tbaa !2192
  call void @llvm.dbg.value(metadata i64 %27, metadata !2256, metadata !DIExpression()), !dbg !2272
  %28 = sub nsw i64 %27, %25, !dbg !2290
  %29 = shl i64 %28, 4, !dbg !2291
  call void @llvm.dbg.value(metadata ptr %26, metadata !1670, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !1673, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %29, metadata !1674, metadata !DIExpression()), !dbg !2292
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2294
  %30 = load i64, ptr %5, align 8, !dbg !2295, !tbaa !2192
  call void @llvm.dbg.value(metadata i64 %30, metadata !2256, metadata !DIExpression()), !dbg !2272
  %31 = trunc i64 %30 to i32, !dbg !2295
  store i32 %31, ptr @nslots, align 4, !dbg !2296, !tbaa !807
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2297
  br label %32, !dbg !2298

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2262
  call void @llvm.dbg.value(metadata ptr %33, metadata !2251, metadata !DIExpression()), !dbg !2262
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2299
  %36 = load i64, ptr %35, align 8, !dbg !2300, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %36, metadata !2257, metadata !DIExpression()), !dbg !2301
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2302
  %38 = load ptr, ptr %37, align 8, !dbg !2302, !tbaa !2208
  call void @llvm.dbg.value(metadata ptr %38, metadata !2259, metadata !DIExpression()), !dbg !2301
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2303
  %40 = load i32, ptr %39, align 4, !dbg !2303, !tbaa !1518
  %41 = or i32 %40, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %41, metadata !2260, metadata !DIExpression()), !dbg !2301
  %42 = load i32, ptr %3, align 8, !dbg !2305, !tbaa !1468
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2306
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2307
  %45 = load ptr, ptr %44, align 8, !dbg !2307, !tbaa !1539
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2308
  %47 = load ptr, ptr %46, align 8, !dbg !2308, !tbaa !1542
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %48, metadata !2261, metadata !DIExpression()), !dbg !2301
  %49 = icmp ugt i64 %36, %48, !dbg !2310
  br i1 %49, label %60, label %50, !dbg !2312

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %51, metadata !2257, metadata !DIExpression()), !dbg !2301
  store i64 %51, ptr %35, align 8, !dbg !2315, !tbaa !2220
  %52 = icmp eq ptr %38, @slot0, !dbg !2316
  br i1 %52, label %54, label %53, !dbg !2318

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2319
  br label %54, !dbg !2319

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %55, metadata !2259, metadata !DIExpression()), !dbg !2301
  store ptr %55, ptr %37, align 8, !dbg !2321, !tbaa !2208
  %56 = load i32, ptr %3, align 8, !dbg !2322, !tbaa !1468
  %57 = load ptr, ptr %44, align 8, !dbg !2323, !tbaa !1539
  %58 = load ptr, ptr %46, align 8, !dbg !2324, !tbaa !1542
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2325
  br label %60, !dbg !2326

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2301
  call void @llvm.dbg.value(metadata ptr %61, metadata !2259, metadata !DIExpression()), !dbg !2301
  store i32 %7, ptr %6, align 4, !dbg !2327, !tbaa !807
  ret ptr %61, !dbg !2328
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2337
  ret ptr %4, !dbg !2338
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2339 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata ptr %0, metadata !2238, metadata !DIExpression()), !dbg !2343
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2345
  ret ptr %2, !dbg !2346
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2347 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %1, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2333, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %0, metadata !2334, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %1, metadata !2335, metadata !DIExpression()), !dbg !2354
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2356
  ret ptr %3, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2358 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata ptr %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2365, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369), !dbg !2372
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2381, !alias.scope !2369
  %5 = icmp eq i32 %1, 10, !dbg !2382
  br i1 %5, label %6, label %7, !dbg !2384

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2385, !noalias !2369
  unreachable, !dbg !2385

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2386, !tbaa !1468, !alias.scope !2369
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2387
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2388
  ret ptr %8, !dbg !2389
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2390 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %1, metadata !2395, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata ptr %2, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %3, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2398, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2402), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2378, metadata !DIExpression()), !dbg !2408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2408, !alias.scope !2402
  %6 = icmp eq i32 %1, 10, !dbg !2409
  br i1 %6, label %7, label %8, !dbg !2410

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2411, !noalias !2402
  unreachable, !dbg !2411

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2412, !tbaa !1468, !alias.scope !2402
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2414
  ret ptr %9, !dbg !2415
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2416 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata ptr %1, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 0, metadata !2362, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %0, metadata !2363, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %1, metadata !2364, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2365, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427), !dbg !2430
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2378, metadata !DIExpression()), !dbg !2433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2433, !alias.scope !2427
  %4 = icmp eq i32 %0, 10, !dbg !2434
  br i1 %4, label %5, label %6, !dbg !2435

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2436, !noalias !2427
  unreachable, !dbg !2436

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2437, !tbaa !1468, !alias.scope !2427
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2438
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2439
  ret ptr %7, !dbg !2440
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2441 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata ptr %1, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i64 %2, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 0, metadata !2394, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata ptr %1, metadata !2396, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %2, metadata !2397, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2398, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2378, metadata !DIExpression()), !dbg !2459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2459, !alias.scope !2453
  %5 = icmp eq i32 %0, 10, !dbg !2460
  br i1 %5, label %6, label %7, !dbg !2461

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2462, !noalias !2453
  unreachable, !dbg !2462

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2463, !tbaa !1468, !alias.scope !2453
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2464
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2465
  ret ptr %8, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2467 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 %2, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2476
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2474, metadata !DIExpression()), !dbg !2477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2478, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %4, metadata !1485, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %2, metadata !1486, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 %2, metadata !1488, metadata !DIExpression()), !dbg !2480
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2482
  %6 = lshr i8 %2, 5, !dbg !2483
  %7 = zext i8 %6 to i64, !dbg !2483
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2484
  call void @llvm.dbg.value(metadata ptr %8, metadata !1489, metadata !DIExpression()), !dbg !2480
  %9 = and i8 %2, 31, !dbg !2485
  %10 = zext i8 %9 to i32, !dbg !2485
  call void @llvm.dbg.value(metadata i32 %10, metadata !1491, metadata !DIExpression()), !dbg !2480
  %11 = load i32, ptr %8, align 4, !dbg !2486, !tbaa !807
  %12 = lshr i32 %11, %10, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %12, metadata !1492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2480
  %13 = and i32 %12, 1, !dbg !2488
  %14 = xor i32 %13, 1, !dbg !2488
  %15 = shl nuw i32 %14, %10, !dbg !2489
  %16 = xor i32 %15, %11, !dbg !2490
  store i32 %16, ptr %8, align 4, !dbg !2490, !tbaa !807
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2491
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2492
  ret ptr %17, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2494 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 %1, metadata !2499, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 -1, metadata !2472, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8 %1, metadata !2473, metadata !DIExpression()), !dbg !2501
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2474, metadata !DIExpression()), !dbg !2504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2505, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %3, metadata !1485, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 %1, metadata !1486, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i8 %1, metadata !1488, metadata !DIExpression()), !dbg !2506
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2508
  %5 = lshr i8 %1, 5, !dbg !2509
  %6 = zext i8 %5 to i64, !dbg !2509
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2510
  call void @llvm.dbg.value(metadata ptr %7, metadata !1489, metadata !DIExpression()), !dbg !2506
  %8 = and i8 %1, 31, !dbg !2511
  %9 = zext i8 %8 to i32, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %9, metadata !1491, metadata !DIExpression()), !dbg !2506
  %10 = load i32, ptr %7, align 4, !dbg !2512, !tbaa !807
  %11 = lshr i32 %10, %9, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %11, metadata !1492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2506
  %12 = and i32 %11, 1, !dbg !2514
  %13 = xor i32 %12, 1, !dbg !2514
  %14 = shl nuw i32 %13, %9, !dbg !2515
  %15 = xor i32 %14, %10, !dbg !2516
  store i32 %15, ptr %7, align 4, !dbg !2516, !tbaa !807
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2517
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2518
  ret ptr %16, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2520 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2522, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 58, metadata !2499, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i64 -1, metadata !2472, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 58, metadata !2473, metadata !DIExpression()), !dbg !2526
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2528
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2474, metadata !DIExpression()), !dbg !2529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2530, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %2, metadata !1485, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()), !dbg !2531
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2533
  call void @llvm.dbg.value(metadata ptr %3, metadata !1489, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i32 26, metadata !1491, metadata !DIExpression()), !dbg !2531
  %4 = load i32, ptr %3, align 4, !dbg !2534, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %4, metadata !1492, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2531
  %5 = or i32 %4, 67108864, !dbg !2535
  store i32 %5, ptr %3, align 4, !dbg !2535, !tbaa !807
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2537
  ret ptr %6, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2539 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i64 %1, metadata !2542, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata ptr %0, metadata !2471, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 %1, metadata !2472, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 58, metadata !2473, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2474, metadata !DIExpression()), !dbg !2547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2548, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %3, metadata !1485, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()), !dbg !2549
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %4, metadata !1489, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 26, metadata !1491, metadata !DIExpression()), !dbg !2549
  %5 = load i32, ptr %4, align 4, !dbg !2552, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %5, metadata !1492, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %6 = or i32 %5, 67108864, !dbg !2553
  store i32 %6, ptr %4, align 4, !dbg !2553, !tbaa !807
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2555
  ret ptr %7, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2557 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2378, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2563
  call void @llvm.dbg.value(metadata i32 %0, metadata !2559, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 %1, metadata !2560, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %2, metadata !2561, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2562, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 0, metadata !2378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2568
  %5 = icmp eq i32 %1, 10, !dbg !2569
  br i1 %5, label %6, label %7, !dbg !2570

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2571, !noalias !2572
  unreachable, !dbg !2571

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2568
  store i32 %1, ptr %4, align 8, !dbg !2575, !tbaa.struct !2479
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2575
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %4, metadata !1485, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 1, metadata !1487, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1488, metadata !DIExpression()), !dbg !2576
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %9, metadata !1489, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 26, metadata !1491, metadata !DIExpression()), !dbg !2576
  %10 = load i32, ptr %9, align 4, !dbg !2579, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %10, metadata !1492, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2576
  %11 = or i32 %10, 67108864, !dbg !2580
  store i32 %11, ptr %9, align 4, !dbg !2580, !tbaa !807
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2582
  ret ptr %12, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2584 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %1, metadata !2589, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %2, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %3, metadata !2591, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %3, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 -1, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2602, metadata !DIExpression()), !dbg !2606
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2607, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %1, metadata !1526, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %2, metadata !1527, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !2608
  store i32 10, ptr %5, align 8, !dbg !2610, !tbaa !1468
  %6 = icmp ne ptr %1, null, !dbg !2611
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2612
  br i1 %8, label %10, label %9, !dbg !2612

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2613
  unreachable, !dbg !2613

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2614
  store ptr %1, ptr %11, align 8, !dbg !2615, !tbaa !1539
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2616
  store ptr %2, ptr %12, align 8, !dbg !2617, !tbaa !1542
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2618
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2619
  ret ptr %13, !dbg !2620
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2594 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %3, metadata !2600, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 %4, metadata !2601, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2602, metadata !DIExpression()), !dbg !2623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2624, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %6, metadata !1525, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %1, metadata !1526, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %2, metadata !1527, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %6, metadata !1525, metadata !DIExpression()), !dbg !2625
  store i32 10, ptr %6, align 8, !dbg !2627, !tbaa !1468
  %7 = icmp ne ptr %1, null, !dbg !2628
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2629
  br i1 %9, label %11, label %10, !dbg !2629

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2630
  unreachable, !dbg !2630

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2631
  store ptr %1, ptr %12, align 8, !dbg !2632, !tbaa !1539
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2633
  store ptr %2, ptr %13, align 8, !dbg !2634, !tbaa !1542
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2636
  ret ptr %14, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2638 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %2, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %0, metadata !2589, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %1, metadata !2590, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %2, metadata !2591, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 -1, metadata !2601, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2602, metadata !DIExpression()), !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2652, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %1, metadata !1527, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !2653
  store i32 10, ptr %4, align 8, !dbg !2655, !tbaa !1468
  %5 = icmp ne ptr %0, null, !dbg !2656
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2657
  br i1 %7, label %9, label %8, !dbg !2657

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2658
  unreachable, !dbg !2658

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2659
  store ptr %0, ptr %10, align 8, !dbg !2660, !tbaa !1539
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2661
  store ptr %1, ptr %11, align 8, !dbg !2662, !tbaa !1542
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2663
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2664
  ret ptr %12, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2666 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %1, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %2, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %3, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2593, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 %3, metadata !2601, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2602, metadata !DIExpression()), !dbg !2678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2679, !tbaa.struct !2479
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %1, metadata !1527, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %5, metadata !1525, metadata !DIExpression()), !dbg !2680
  store i32 10, ptr %5, align 8, !dbg !2682, !tbaa !1468
  %6 = icmp ne ptr %0, null, !dbg !2683
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2684
  br i1 %8, label %10, label %9, !dbg !2684

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2685
  unreachable, !dbg !2685

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2686
  store ptr %0, ptr %11, align 8, !dbg !2687, !tbaa !1539
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2688
  store ptr %1, ptr %12, align 8, !dbg !2689, !tbaa !1542
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2691
  ret ptr %13, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2693 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 %2, metadata !2699, metadata !DIExpression()), !dbg !2700
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2701
  ret ptr %4, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i64 %1, metadata !2699, metadata !DIExpression()), !dbg !2710
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2712
  ret ptr %3, !dbg !2713
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2714 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %1, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 %0, metadata !2697, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 -1, metadata !2699, metadata !DIExpression()), !dbg !2721
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2723
  ret ptr %3, !dbg !2724
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2725 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %0, metadata !2719, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 0, metadata !2697, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 -1, metadata !2699, metadata !DIExpression()), !dbg !2733
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2735
  ret ptr %2, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %2, metadata !2778, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %4, metadata !2780, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %5, metadata !2781, metadata !DIExpression()), !dbg !2782
  %7 = icmp eq ptr %1, null, !dbg !2783
  br i1 %7, label %10, label %8, !dbg !2785

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2786
  br label %12, !dbg !2786

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.72, ptr noundef %2, ptr noundef %3) #36, !dbg !2787
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.3.74, i32 noundef 5) #36, !dbg !2788
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2788
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2789
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.5.76, i32 noundef 5) #36, !dbg !2790
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.77) #36, !dbg !2790
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2791
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
  ], !dbg !2792

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.7.78, i32 noundef 5) #36, !dbg !2793
  %21 = load ptr, ptr %4, align 8, !dbg !2793, !tbaa !751
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2793
  br label %147, !dbg !2795

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.8.79, i32 noundef 5) #36, !dbg !2796
  %25 = load ptr, ptr %4, align 8, !dbg !2796, !tbaa !751
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2796
  %27 = load ptr, ptr %26, align 8, !dbg !2796, !tbaa !751
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2796
  br label %147, !dbg !2797

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.9.80, i32 noundef 5) #36, !dbg !2798
  %31 = load ptr, ptr %4, align 8, !dbg !2798, !tbaa !751
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2798
  %33 = load ptr, ptr %32, align 8, !dbg !2798, !tbaa !751
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2798
  %35 = load ptr, ptr %34, align 8, !dbg !2798, !tbaa !751
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2798
  br label %147, !dbg !2799

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.10.81, i32 noundef 5) #36, !dbg !2800
  %39 = load ptr, ptr %4, align 8, !dbg !2800, !tbaa !751
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2800
  %41 = load ptr, ptr %40, align 8, !dbg !2800, !tbaa !751
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2800
  %43 = load ptr, ptr %42, align 8, !dbg !2800, !tbaa !751
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2800
  %45 = load ptr, ptr %44, align 8, !dbg !2800, !tbaa !751
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2800
  br label %147, !dbg !2801

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.11.82, i32 noundef 5) #36, !dbg !2802
  %49 = load ptr, ptr %4, align 8, !dbg !2802, !tbaa !751
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2802
  %51 = load ptr, ptr %50, align 8, !dbg !2802, !tbaa !751
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2802
  %53 = load ptr, ptr %52, align 8, !dbg !2802, !tbaa !751
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2802
  %55 = load ptr, ptr %54, align 8, !dbg !2802, !tbaa !751
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2802
  %57 = load ptr, ptr %56, align 8, !dbg !2802, !tbaa !751
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2802
  br label %147, !dbg !2803

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.12.83, i32 noundef 5) #36, !dbg !2804
  %61 = load ptr, ptr %4, align 8, !dbg !2804, !tbaa !751
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2804
  %63 = load ptr, ptr %62, align 8, !dbg !2804, !tbaa !751
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2804
  %65 = load ptr, ptr %64, align 8, !dbg !2804, !tbaa !751
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2804
  %67 = load ptr, ptr %66, align 8, !dbg !2804, !tbaa !751
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2804
  %69 = load ptr, ptr %68, align 8, !dbg !2804, !tbaa !751
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2804
  %71 = load ptr, ptr %70, align 8, !dbg !2804, !tbaa !751
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2804
  br label %147, !dbg !2805

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.13.84, i32 noundef 5) #36, !dbg !2806
  %75 = load ptr, ptr %4, align 8, !dbg !2806, !tbaa !751
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2806
  %77 = load ptr, ptr %76, align 8, !dbg !2806, !tbaa !751
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2806
  %79 = load ptr, ptr %78, align 8, !dbg !2806, !tbaa !751
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2806
  %81 = load ptr, ptr %80, align 8, !dbg !2806, !tbaa !751
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2806
  %83 = load ptr, ptr %82, align 8, !dbg !2806, !tbaa !751
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2806
  %85 = load ptr, ptr %84, align 8, !dbg !2806, !tbaa !751
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2806
  %87 = load ptr, ptr %86, align 8, !dbg !2806, !tbaa !751
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2806
  br label %147, !dbg !2807

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.14.85, i32 noundef 5) #36, !dbg !2808
  %91 = load ptr, ptr %4, align 8, !dbg !2808, !tbaa !751
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2808
  %93 = load ptr, ptr %92, align 8, !dbg !2808, !tbaa !751
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2808
  %95 = load ptr, ptr %94, align 8, !dbg !2808, !tbaa !751
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2808
  %97 = load ptr, ptr %96, align 8, !dbg !2808, !tbaa !751
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2808
  %99 = load ptr, ptr %98, align 8, !dbg !2808, !tbaa !751
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2808
  %101 = load ptr, ptr %100, align 8, !dbg !2808, !tbaa !751
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2808
  %103 = load ptr, ptr %102, align 8, !dbg !2808, !tbaa !751
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2808
  %105 = load ptr, ptr %104, align 8, !dbg !2808, !tbaa !751
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2808
  br label %147, !dbg !2809

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.15.86, i32 noundef 5) #36, !dbg !2810
  %109 = load ptr, ptr %4, align 8, !dbg !2810, !tbaa !751
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2810
  %111 = load ptr, ptr %110, align 8, !dbg !2810, !tbaa !751
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2810
  %113 = load ptr, ptr %112, align 8, !dbg !2810, !tbaa !751
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2810
  %115 = load ptr, ptr %114, align 8, !dbg !2810, !tbaa !751
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2810
  %117 = load ptr, ptr %116, align 8, !dbg !2810, !tbaa !751
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2810
  %119 = load ptr, ptr %118, align 8, !dbg !2810, !tbaa !751
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2810
  %121 = load ptr, ptr %120, align 8, !dbg !2810, !tbaa !751
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2810
  %123 = load ptr, ptr %122, align 8, !dbg !2810, !tbaa !751
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2810
  %125 = load ptr, ptr %124, align 8, !dbg !2810, !tbaa !751
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2810
  br label %147, !dbg !2811

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.16.87, i32 noundef 5) #36, !dbg !2812
  %129 = load ptr, ptr %4, align 8, !dbg !2812, !tbaa !751
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2812
  %131 = load ptr, ptr %130, align 8, !dbg !2812, !tbaa !751
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2812
  %133 = load ptr, ptr %132, align 8, !dbg !2812, !tbaa !751
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2812
  %135 = load ptr, ptr %134, align 8, !dbg !2812, !tbaa !751
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2812
  %137 = load ptr, ptr %136, align 8, !dbg !2812, !tbaa !751
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2812
  %139 = load ptr, ptr %138, align 8, !dbg !2812, !tbaa !751
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2812
  %141 = load ptr, ptr %140, align 8, !dbg !2812, !tbaa !751
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2812
  %143 = load ptr, ptr %142, align 8, !dbg !2812, !tbaa !751
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2812
  %145 = load ptr, ptr %144, align 8, !dbg !2812, !tbaa !751
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2812
  br label %147, !dbg !2813

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2814
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2815 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %3, metadata !2822, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata ptr %4, metadata !2823, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.value(metadata i64 0, metadata !2824, metadata !DIExpression()), !dbg !2825
  br label %6, !dbg !2826

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2828
  call void @llvm.dbg.value(metadata i64 %7, metadata !2824, metadata !DIExpression()), !dbg !2825
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2829
  %9 = load ptr, ptr %8, align 8, !dbg !2829, !tbaa !751
  %10 = icmp eq ptr %9, null, !dbg !2831
  %11 = add i64 %7, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %11, metadata !2824, metadata !DIExpression()), !dbg !2825
  br i1 %10, label %12, label %6, !dbg !2831, !llvm.loop !2833

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2835
  ret void, !dbg !2836
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2837 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2852, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %1, metadata !2853, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %2, metadata !2854, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata ptr %3, metadata !2855, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2856, metadata !DIExpression()), !dbg !2861
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2862
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2860
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2857, metadata !DIExpression()), !dbg !2860
  %10 = icmp sgt i32 %9, -1, !dbg !2864
  br i1 %10, label %18, label %11, !dbg !2864

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2864
  store i32 %12, ptr %7, align 8, !dbg !2864
  %13 = icmp ult i32 %9, -7, !dbg !2864
  br i1 %13, label %14, label %18, !dbg !2864

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2864
  %16 = sext i32 %9 to i64, !dbg !2864
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2864
  br label %22, !dbg !2864

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2864
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2864
  store ptr %21, ptr %4, align 8, !dbg !2864
  br label %22, !dbg !2864

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2864
  %25 = load ptr, ptr %24, align 8, !dbg !2864
  store ptr %25, ptr %6, align 8, !dbg !2867, !tbaa !751
  %26 = icmp eq ptr %25, null, !dbg !2868
  br i1 %26, label %197, label %27, !dbg !2869

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 1, metadata !2857, metadata !DIExpression()), !dbg !2860
  %28 = icmp sgt i32 %23, -1, !dbg !2864
  br i1 %28, label %36, label %29, !dbg !2864

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2864
  store i32 %30, ptr %7, align 8, !dbg !2864
  %31 = icmp ult i32 %23, -7, !dbg !2864
  br i1 %31, label %32, label %36, !dbg !2864

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2864
  %34 = sext i32 %23 to i64, !dbg !2864
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2864
  br label %40, !dbg !2864

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2864
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2864
  store ptr %39, ptr %4, align 8, !dbg !2864
  br label %40, !dbg !2864

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2864
  %43 = load ptr, ptr %42, align 8, !dbg !2864
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2870
  store ptr %43, ptr %44, align 8, !dbg !2867, !tbaa !751
  %45 = icmp eq ptr %43, null, !dbg !2868
  br i1 %45, label %197, label %46, !dbg !2869

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 2, metadata !2857, metadata !DIExpression()), !dbg !2860
  %47 = icmp sgt i32 %41, -1, !dbg !2864
  br i1 %47, label %55, label %48, !dbg !2864

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2864
  store i32 %49, ptr %7, align 8, !dbg !2864
  %50 = icmp ult i32 %41, -7, !dbg !2864
  br i1 %50, label %51, label %55, !dbg !2864

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2864
  %53 = sext i32 %41 to i64, !dbg !2864
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2864
  br label %59, !dbg !2864

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2864
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2864
  store ptr %58, ptr %4, align 8, !dbg !2864
  br label %59, !dbg !2864

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2864
  %62 = load ptr, ptr %61, align 8, !dbg !2864
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2870
  store ptr %62, ptr %63, align 8, !dbg !2867, !tbaa !751
  %64 = icmp eq ptr %62, null, !dbg !2868
  br i1 %64, label %197, label %65, !dbg !2869

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 3, metadata !2857, metadata !DIExpression()), !dbg !2860
  %66 = icmp sgt i32 %60, -1, !dbg !2864
  br i1 %66, label %74, label %67, !dbg !2864

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2864
  store i32 %68, ptr %7, align 8, !dbg !2864
  %69 = icmp ult i32 %60, -7, !dbg !2864
  br i1 %69, label %70, label %74, !dbg !2864

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2864
  %72 = sext i32 %60 to i64, !dbg !2864
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2864
  br label %78, !dbg !2864

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2864
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2864
  store ptr %77, ptr %4, align 8, !dbg !2864
  br label %78, !dbg !2864

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2864
  %81 = load ptr, ptr %80, align 8, !dbg !2864
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2870
  store ptr %81, ptr %82, align 8, !dbg !2867, !tbaa !751
  %83 = icmp eq ptr %81, null, !dbg !2868
  br i1 %83, label %197, label %84, !dbg !2869

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 4, metadata !2857, metadata !DIExpression()), !dbg !2860
  %85 = icmp sgt i32 %79, -1, !dbg !2864
  br i1 %85, label %93, label %86, !dbg !2864

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2864
  store i32 %87, ptr %7, align 8, !dbg !2864
  %88 = icmp ult i32 %79, -7, !dbg !2864
  br i1 %88, label %89, label %93, !dbg !2864

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2864
  %91 = sext i32 %79 to i64, !dbg !2864
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2864
  br label %97, !dbg !2864

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2864
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2864
  store ptr %96, ptr %4, align 8, !dbg !2864
  br label %97, !dbg !2864

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2864
  %100 = load ptr, ptr %99, align 8, !dbg !2864
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2870
  store ptr %100, ptr %101, align 8, !dbg !2867, !tbaa !751
  %102 = icmp eq ptr %100, null, !dbg !2868
  br i1 %102, label %197, label %103, !dbg !2869

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 5, metadata !2857, metadata !DIExpression()), !dbg !2860
  %104 = icmp sgt i32 %98, -1, !dbg !2864
  br i1 %104, label %112, label %105, !dbg !2864

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2864
  store i32 %106, ptr %7, align 8, !dbg !2864
  %107 = icmp ult i32 %98, -7, !dbg !2864
  br i1 %107, label %108, label %112, !dbg !2864

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2864
  %110 = sext i32 %98 to i64, !dbg !2864
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2864
  br label %116, !dbg !2864

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2864
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2864
  store ptr %115, ptr %4, align 8, !dbg !2864
  br label %116, !dbg !2864

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2864
  %119 = load ptr, ptr %118, align 8, !dbg !2864
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2870
  store ptr %119, ptr %120, align 8, !dbg !2867, !tbaa !751
  %121 = icmp eq ptr %119, null, !dbg !2868
  br i1 %121, label %197, label %122, !dbg !2869

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 6, metadata !2857, metadata !DIExpression()), !dbg !2860
  %123 = icmp sgt i32 %117, -1, !dbg !2864
  br i1 %123, label %131, label %124, !dbg !2864

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2864
  store i32 %125, ptr %7, align 8, !dbg !2864
  %126 = icmp ult i32 %117, -7, !dbg !2864
  br i1 %126, label %127, label %131, !dbg !2864

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2864
  %129 = sext i32 %117 to i64, !dbg !2864
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2864
  br label %135, !dbg !2864

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2864
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2864
  store ptr %134, ptr %4, align 8, !dbg !2864
  br label %135, !dbg !2864

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2864
  %138 = load ptr, ptr %137, align 8, !dbg !2864
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2870
  store ptr %138, ptr %139, align 8, !dbg !2867, !tbaa !751
  %140 = icmp eq ptr %138, null, !dbg !2868
  br i1 %140, label %197, label %141, !dbg !2869

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 7, metadata !2857, metadata !DIExpression()), !dbg !2860
  %142 = icmp sgt i32 %136, -1, !dbg !2864
  br i1 %142, label %150, label %143, !dbg !2864

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2864
  store i32 %144, ptr %7, align 8, !dbg !2864
  %145 = icmp ult i32 %136, -7, !dbg !2864
  br i1 %145, label %146, label %150, !dbg !2864

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2864
  %148 = sext i32 %136 to i64, !dbg !2864
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2864
  br label %154, !dbg !2864

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2864
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2864
  store ptr %153, ptr %4, align 8, !dbg !2864
  br label %154, !dbg !2864

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2864
  %157 = load ptr, ptr %156, align 8, !dbg !2864
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2870
  store ptr %157, ptr %158, align 8, !dbg !2867, !tbaa !751
  %159 = icmp eq ptr %157, null, !dbg !2868
  br i1 %159, label %197, label %160, !dbg !2869

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 8, metadata !2857, metadata !DIExpression()), !dbg !2860
  %161 = icmp sgt i32 %155, -1, !dbg !2864
  br i1 %161, label %169, label %162, !dbg !2864

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2864
  store i32 %163, ptr %7, align 8, !dbg !2864
  %164 = icmp ult i32 %155, -7, !dbg !2864
  br i1 %164, label %165, label %169, !dbg !2864

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2864
  %167 = sext i32 %155 to i64, !dbg !2864
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2864
  br label %173, !dbg !2864

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2864
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2864
  store ptr %172, ptr %4, align 8, !dbg !2864
  br label %173, !dbg !2864

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2864
  %176 = load ptr, ptr %175, align 8, !dbg !2864
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2870
  store ptr %176, ptr %177, align 8, !dbg !2867, !tbaa !751
  %178 = icmp eq ptr %176, null, !dbg !2868
  br i1 %178, label %197, label %179, !dbg !2869

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2857, metadata !DIExpression()), !dbg !2860
  call void @llvm.dbg.value(metadata i64 9, metadata !2857, metadata !DIExpression()), !dbg !2860
  %180 = icmp sgt i32 %174, -1, !dbg !2864
  br i1 %180, label %188, label %181, !dbg !2864

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2864
  store i32 %182, ptr %7, align 8, !dbg !2864
  %183 = icmp ult i32 %174, -7, !dbg !2864
  br i1 %183, label %184, label %188, !dbg !2864

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2864
  %186 = sext i32 %174 to i64, !dbg !2864
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2864
  br label %191, !dbg !2864

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2864
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2864
  store ptr %190, ptr %4, align 8, !dbg !2864
  br label %191, !dbg !2864

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2864
  %193 = load ptr, ptr %192, align 8, !dbg !2864
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2870
  store ptr %193, ptr %194, align 8, !dbg !2867, !tbaa !751
  %195 = icmp eq ptr %193, null, !dbg !2868
  %196 = select i1 %195, i64 9, i64 10, !dbg !2869
  br label %197, !dbg !2869

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2871
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2872
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2873
  ret void, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2874 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %1, metadata !2879, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %2, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata ptr %3, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.va_start(ptr nonnull %5), !dbg !2886
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2887, !tbaa.struct !1068
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2887
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2887
  call void @llvm.va_end(ptr nonnull %5), !dbg !2888
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2889
  ret void, !dbg !2889
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2890 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2891, !tbaa !751
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %1), !dbg !2891
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.17, i32 noundef 5) #36, !dbg !2892
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2892
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.19.92, i32 noundef 5) #36, !dbg !2893
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2893
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2894
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.93) #36, !dbg !2894
  ret void, !dbg !2895
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2896 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2902, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %2, metadata !2903, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2908, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !2910
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2912
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !2918
  %5 = icmp eq ptr %4, null, !dbg !2920
  br i1 %5, label %6, label %7, !dbg !2922

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2923
  unreachable, !dbg !2923

7:                                                ; preds = %3
  ret ptr %4, !dbg !2924
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2906 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %1, metadata !2908, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !2925
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2926
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !2927
  %5 = icmp eq ptr %4, null, !dbg !2929
  br i1 %5, label %6, label %7, !dbg !2930

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2931
  unreachable, !dbg !2931

7:                                                ; preds = %3
  ret ptr %4, !dbg !2932
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2933 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2937, metadata !DIExpression()), !dbg !2938
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !2940
  %3 = icmp eq ptr %2, null, !dbg !2942
  br i1 %3, label %4, label %5, !dbg !2943

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2944
  unreachable, !dbg !2944

5:                                                ; preds = %1
  ret ptr %2, !dbg !2945
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2946 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2947 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %0, metadata !2953, metadata !DIExpression()), !dbg !2957
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !2960
  %3 = icmp eq ptr %2, null, !dbg !2962
  br i1 %3, label %4, label %5, !dbg !2963

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2964
  unreachable, !dbg !2964

5:                                                ; preds = %1
  ret ptr %2, !dbg !2965
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2966 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %0, metadata !2937, metadata !DIExpression()), !dbg !2972
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2974
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !2975
  %3 = icmp eq ptr %2, null, !dbg !2977
  br i1 %3, label %4, label %5, !dbg !2978

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2979
  unreachable, !dbg !2979

5:                                                ; preds = %1
  ret ptr %2, !dbg !2980
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2981 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !2993
  %3 = icmp eq i64 %1, 0, !dbg !2995
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2995
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !2997
  %6 = icmp eq ptr %5, null, !dbg !2999
  br i1 %6, label %7, label %8, !dbg !3000

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3001
  unreachable, !dbg !3001

8:                                                ; preds = %2
  ret ptr %5, !dbg !3002
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3003 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3004 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata ptr %0, metadata !3011, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !3017
  %3 = icmp eq i64 %1, 0, !dbg !3019
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3019
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %5, metadata !2913, metadata !DIExpression()), !dbg !3021
  %6 = icmp eq ptr %5, null, !dbg !3023
  br i1 %6, label %7, label %8, !dbg !3024

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3025
  unreachable, !dbg !3025

8:                                                ; preds = %2
  ret ptr %5, !dbg !3026
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %2, metadata !3033, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i64 %2, metadata !3039, metadata !DIExpression()), !dbg !3040
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !3043
  %5 = icmp eq ptr %4, null, !dbg !3045
  br i1 %5, label %6, label %7, !dbg !3046

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3047
  unreachable, !dbg !3047

7:                                                ; preds = %3
  ret ptr %4, !dbg !3048
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3049 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr null, metadata !2905, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %0, metadata !2908, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !3056
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3059
  %4 = icmp eq ptr %3, null, !dbg !3061
  br i1 %4, label %5, label %6, !dbg !3062

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3063
  unreachable, !dbg !3063

6:                                                ; preds = %2
  ret ptr %3, !dbg !3064
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3065 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr null, metadata !3031, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %0, metadata !3032, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3072
  call void @llvm.dbg.value(metadata ptr null, metadata !3035, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %0, metadata !3038, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3039, metadata !DIExpression()), !dbg !3074
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3077
  %4 = icmp eq ptr %3, null, !dbg !3079
  br i1 %4, label %5, label %6, !dbg !3080

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3081
  unreachable, !dbg !3081

6:                                                ; preds = %2
  ret ptr %3, !dbg !3082
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 1, metadata !690, metadata !DIExpression()), !dbg !3090
  %3 = load i64, ptr %1, align 8, !dbg !3092, !tbaa !2192
  call void @llvm.dbg.value(metadata i64 %3, metadata !691, metadata !DIExpression()), !dbg !3090
  %4 = icmp eq ptr %0, null, !dbg !3093
  br i1 %4, label %5, label %8, !dbg !3095

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3096
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3099
  br label %15, !dbg !3099

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3100
  %10 = add nuw i64 %9, 1, !dbg !3100
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3100
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3100
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %13, metadata !691, metadata !DIExpression()), !dbg !3090
  br i1 %12, label %14, label %15, !dbg !3103

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3104
  unreachable, !dbg !3104

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3090
  call void @llvm.dbg.value(metadata i64 %16, metadata !691, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %16, metadata !2908, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 1, metadata !2909, metadata !DIExpression()), !dbg !3105
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3107
  call void @llvm.dbg.value(metadata ptr %17, metadata !2913, metadata !DIExpression()), !dbg !3108
  %18 = icmp eq ptr %17, null, !dbg !3110
  br i1 %18, label %19, label %20, !dbg !3111

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3112
  unreachable, !dbg !3112

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !688, metadata !DIExpression()), !dbg !3090
  store i64 %16, ptr %1, align 8, !dbg !3113, !tbaa !2192
  ret ptr %17, !dbg !3114
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %2, metadata !690, metadata !DIExpression()), !dbg !3115
  %4 = load i64, ptr %1, align 8, !dbg !3116, !tbaa !2192
  call void @llvm.dbg.value(metadata i64 %4, metadata !691, metadata !DIExpression()), !dbg !3115
  %5 = icmp eq ptr %0, null, !dbg !3117
  br i1 %5, label %6, label %13, !dbg !3118

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3119
  br i1 %7, label %8, label %20, !dbg !3120

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3121
  call void @llvm.dbg.value(metadata i64 %9, metadata !691, metadata !DIExpression()), !dbg !3115
  %10 = icmp ugt i64 %2, 128, !dbg !3123
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %12, metadata !691, metadata !DIExpression()), !dbg !3115
  br label %20, !dbg !3125

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3126
  %15 = add nuw i64 %14, 1, !dbg !3126
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3126
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3126
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %18, metadata !691, metadata !DIExpression()), !dbg !3115
  br i1 %17, label %19, label %20, !dbg !3127

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3128
  unreachable, !dbg !3128

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %21, metadata !691, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %21, metadata !2908, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %2, metadata !2909, metadata !DIExpression()), !dbg !3129
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %22, metadata !2913, metadata !DIExpression()), !dbg !3132
  %23 = icmp eq ptr %22, null, !dbg !3134
  br i1 %23, label %24, label %25, !dbg !3135

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3136
  unreachable, !dbg !3136

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !688, metadata !DIExpression()), !dbg !3115
  store i64 %21, ptr %1, align 8, !dbg !3137, !tbaa !2192
  ret ptr %22, !dbg !3138
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !695 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !703, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %1, metadata !704, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %2, metadata !705, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %3, metadata !706, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %4, metadata !707, metadata !DIExpression()), !dbg !3139
  %6 = load i64, ptr %1, align 8, !dbg !3140, !tbaa !2192
  call void @llvm.dbg.value(metadata i64 %6, metadata !708, metadata !DIExpression()), !dbg !3139
  %7 = ashr i64 %6, 1, !dbg !3141
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3141
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3141
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %10, metadata !709, metadata !DIExpression()), !dbg !3139
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3143
  call void @llvm.dbg.value(metadata i64 %11, metadata !709, metadata !DIExpression()), !dbg !3139
  %12 = icmp sgt i64 %3, -1, !dbg !3144
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3146
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %15, metadata !709, metadata !DIExpression()), !dbg !3139
  %16 = icmp slt i64 %4, 0, !dbg !3147
  br i1 %16, label %17, label %30, !dbg !3147

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3147
  br i1 %18, label %19, label %24, !dbg !3147

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3147
  %21 = udiv i64 9223372036854775807, %20, !dbg !3147
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3147
  br i1 %23, label %46, label %43, !dbg !3147

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3147
  br i1 %25, label %43, label %26, !dbg !3147

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3147
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3147
  %29 = icmp ult i64 %28, %15, !dbg !3147
  br i1 %29, label %46, label %43, !dbg !3147

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3147
  br i1 %31, label %43, label %32, !dbg !3147

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3147
  br i1 %33, label %34, label %40, !dbg !3147

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3147
  br i1 %35, label %43, label %36, !dbg !3147

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3147
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3147
  %39 = icmp ult i64 %38, %4, !dbg !3147
  br i1 %39, label %46, label %43, !dbg !3147

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3147
  br i1 %42, label %46, label %43, !dbg !3147

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3139
  %44 = mul i64 %15, %4, !dbg !3147
  call void @llvm.dbg.value(metadata i64 %44, metadata !710, metadata !DIExpression()), !dbg !3139
  %45 = icmp slt i64 %44, 128, !dbg !3147
  br i1 %45, label %46, label %52, !dbg !3147

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !711, metadata !DIExpression()), !dbg !3139
  %48 = sdiv i64 %47, %4, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %48, metadata !709, metadata !DIExpression()), !dbg !3139
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %51, metadata !710, metadata !DIExpression()), !dbg !3139
  br label %52, !dbg !3152

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3139
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3139
  call void @llvm.dbg.value(metadata i64 %54, metadata !710, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %53, metadata !709, metadata !DIExpression()), !dbg !3139
  %55 = icmp eq ptr %0, null, !dbg !3153
  br i1 %55, label %56, label %57, !dbg !3155

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3156, !tbaa !2192
  br label %57, !dbg !3157

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3158
  %59 = icmp slt i64 %58, %2, !dbg !3160
  br i1 %59, label %60, label %97, !dbg !3161

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3162
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3162
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %63, metadata !709, metadata !DIExpression()), !dbg !3139
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3163
  br i1 %66, label %96, label %67, !dbg !3163

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3164

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3164
  br i1 %69, label %70, label %75, !dbg !3164

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3164
  %72 = udiv i64 9223372036854775807, %71, !dbg !3164
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3164
  br i1 %74, label %96, label %94, !dbg !3164

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3164
  br i1 %76, label %94, label %77, !dbg !3164

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3164
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3164
  %80 = icmp ult i64 %79, %63, !dbg !3164
  br i1 %80, label %96, label %94, !dbg !3164

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3164
  br i1 %82, label %94, label %83, !dbg !3164

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3164
  br i1 %84, label %85, label %91, !dbg !3164

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3164
  br i1 %86, label %94, label %87, !dbg !3164

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3164
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3164
  %90 = icmp ult i64 %89, %4, !dbg !3164
  br i1 %90, label %96, label %94, !dbg !3164

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3164
  br i1 %93, label %96, label %94, !dbg !3164

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3139
  %95 = mul i64 %63, %4, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %95, metadata !710, metadata !DIExpression()), !dbg !3139
  br label %97, !dbg !3165

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3166
  unreachable, !dbg !3166

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3139
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3139
  call void @llvm.dbg.value(metadata i64 %99, metadata !710, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %98, metadata !709, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %99, metadata !2986, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %0, metadata !2988, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %99, metadata !2992, metadata !DIExpression()), !dbg !3169
  %100 = icmp eq i64 %99, 0, !dbg !3171
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3171
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3172
  call void @llvm.dbg.value(metadata ptr %102, metadata !2913, metadata !DIExpression()), !dbg !3173
  %103 = icmp eq ptr %102, null, !dbg !3175
  br i1 %103, label %104, label %105, !dbg !3176

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3177
  unreachable, !dbg !3177

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !703, metadata !DIExpression()), !dbg !3139
  store i64 %98, ptr %1, align 8, !dbg !3178, !tbaa !2192
  ret ptr %102, !dbg !3179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3182, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 1, metadata !3187, metadata !DIExpression()), !dbg !3188
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3190
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !3191
  %3 = icmp eq ptr %2, null, !dbg !3193
  br i1 %3, label %4, label %5, !dbg !3194

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3195
  unreachable, !dbg !3195

5:                                                ; preds = %1
  ret ptr %2, !dbg !3196
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3197 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3185 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3184, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %1, metadata !3187, metadata !DIExpression()), !dbg !3198
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3200
  %4 = icmp eq ptr %3, null, !dbg !3202
  br i1 %4, label %5, label %6, !dbg !3203

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3204
  unreachable, !dbg !3204

6:                                                ; preds = %2
  ret ptr %3, !dbg !3205
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3206 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3208, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %0, metadata !3210, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 1, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %0, metadata !3216, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 1, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %0, metadata !3216, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 1, metadata !3219, metadata !DIExpression()), !dbg !3220
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3222
  call void @llvm.dbg.value(metadata ptr %2, metadata !2913, metadata !DIExpression()), !dbg !3223
  %3 = icmp eq ptr %2, null, !dbg !3225
  br i1 %3, label %4, label %5, !dbg !3226

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3227
  unreachable, !dbg !3227

5:                                                ; preds = %1
  ret ptr %2, !dbg !3228
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3211 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3210, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %1, metadata !3213, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3216, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %0, metadata !3216, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3230
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3233
  %4 = icmp eq ptr %3, null, !dbg !3235
  br i1 %4, label %5, label %6, !dbg !3236

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3237
  unreachable, !dbg !3237

6:                                                ; preds = %2
  ret ptr %3, !dbg !3238
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3239 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3243, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !3246
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3249
  %4 = icmp eq ptr %3, null, !dbg !3251
  br i1 %4, label %5, label %6, !dbg !3252

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3253
  unreachable, !dbg !3253

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3254, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3262
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3264
  ret ptr %3, !dbg !3265
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3266 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3270, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !3275
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3277
  call void @llvm.dbg.value(metadata ptr %3, metadata !2913, metadata !DIExpression()), !dbg !3278
  %4 = icmp eq ptr %3, null, !dbg !3280
  br i1 %4, label %5, label %6, !dbg !3281

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3282
  unreachable, !dbg !3282

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3254, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3283
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3285
  ret ptr %3, !dbg !3286
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3287 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3291, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i64 %1, metadata !3292, metadata !DIExpression()), !dbg !3294
  %3 = add nsw i64 %1, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %3, metadata !2951, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %3, metadata !2953, metadata !DIExpression()), !dbg !3298
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !3301
  %5 = icmp eq ptr %4, null, !dbg !3303
  br i1 %5, label %6, label %7, !dbg !3304

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3305
  unreachable, !dbg !3305

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3293, metadata !DIExpression()), !dbg !3294
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3306
  store i8 0, ptr %8, align 1, !dbg !3307, !tbaa !816
  call void @llvm.dbg.value(metadata ptr %4, metadata !3254, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3261, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3310
  ret ptr %4, !dbg !3311
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3312 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3315
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3316
  %3 = add i64 %2, 1, !dbg !3317
  call void @llvm.dbg.value(metadata ptr %0, metadata !3243, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %3, metadata !3244, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %3, metadata !2937, metadata !DIExpression()), !dbg !3320
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3322
  call void @llvm.dbg.value(metadata ptr %4, metadata !2913, metadata !DIExpression()), !dbg !3323
  %5 = icmp eq ptr %4, null, !dbg !3325
  br i1 %5, label %6, label %7, !dbg !3326

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3327
  unreachable, !dbg !3327

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3254, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %0, metadata !3260, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %3, metadata !3261, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3330
  ret ptr %4, !dbg !3331
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3332 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3337, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %1, metadata !3334, metadata !DIExpression()), !dbg !3338
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #36, !dbg !3337
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #36, !dbg !3337
  %3 = icmp eq i32 %1, 0, !dbg !3337
  tail call void @llvm.assume(i1 %3), !dbg !3337
  tail call void @abort() #38, !dbg !3339
  unreachable, !dbg !3339
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3378, metadata !DIExpression()), !dbg !3383
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3384
  call void @llvm.dbg.value(metadata i1 poison, metadata !3379, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3388
  %3 = load i32, ptr %0, align 8, !dbg !3390, !tbaa !3391
  %4 = and i32 %3, 32, !dbg !3392
  %5 = icmp eq i32 %4, 0, !dbg !3392
  call void @llvm.dbg.value(metadata i1 %5, metadata !3381, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3393
  %7 = icmp eq i32 %6, 0, !dbg !3394
  call void @llvm.dbg.value(metadata i1 %7, metadata !3382, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  br i1 %5, label %8, label %18, !dbg !3395

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3397
  call void @llvm.dbg.value(metadata i1 %9, metadata !3379, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3383
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3398
  %11 = xor i1 %7, true, !dbg !3398
  %12 = sext i1 %11 to i32, !dbg !3398
  br i1 %10, label %21, label %13, !dbg !3398

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3399
  %15 = load i32, ptr %14, align 4, !dbg !3399, !tbaa !807
  %16 = icmp ne i32 %15, 9, !dbg !3400
  %17 = sext i1 %16 to i32, !dbg !3401
  br label %21, !dbg !3401

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3402

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3404
  store i32 0, ptr %20, align 4, !dbg !3406, !tbaa !807
  br label %21, !dbg !3404

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3383
  ret i32 %22, !dbg !3407
}

; Function Attrs: nounwind
declare !dbg !3408 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3412 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3450, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()), !dbg !3454
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3455
  call void @llvm.dbg.value(metadata i32 %2, metadata !3452, metadata !DIExpression()), !dbg !3454
  %3 = icmp slt i32 %2, 0, !dbg !3456
  br i1 %3, label %4, label %6, !dbg !3458

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3459
  br label %24, !dbg !3460

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3461
  %8 = icmp eq i32 %7, 0, !dbg !3461
  br i1 %8, label %13, label %9, !dbg !3463

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3464
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3465
  %12 = icmp eq i64 %11, -1, !dbg !3466
  br i1 %12, label %16, label %13, !dbg !3467

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3468
  %15 = icmp eq i32 %14, 0, !dbg !3468
  br i1 %15, label %16, label %18, !dbg !3469

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3454
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %17, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %24, !dbg !3471

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3472
  %20 = load i32, ptr %19, align 4, !dbg !3472, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %20, metadata !3451, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3454
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3470
  call void @llvm.dbg.value(metadata i32 %21, metadata !3453, metadata !DIExpression()), !dbg !3454
  %22 = icmp eq i32 %20, 0, !dbg !3473
  br i1 %22, label %24, label %23, !dbg !3471

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3475, !tbaa !807
  call void @llvm.dbg.value(metadata i32 -1, metadata !3453, metadata !DIExpression()), !dbg !3454
  br label %24, !dbg !3477

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3454
  ret i32 %25, !dbg !3478
}

; Function Attrs: nofree nounwind
declare !dbg !3479 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3480 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3481 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3482 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3485 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3523, metadata !DIExpression()), !dbg !3524
  %2 = icmp eq ptr %0, null, !dbg !3525
  br i1 %2, label %6, label %3, !dbg !3527

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3528
  %5 = icmp eq i32 %4, 0, !dbg !3528
  br i1 %5, label %6, label %8, !dbg !3529

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3530
  br label %16, !dbg !3531

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3537
  %9 = load i32, ptr %0, align 8, !dbg !3539, !tbaa !3391
  %10 = and i32 %9, 256, !dbg !3541
  %11 = icmp eq i32 %10, 0, !dbg !3541
  br i1 %11, label %14, label %12, !dbg !3542

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3543
  br label %14, !dbg !3543

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3544
  br label %16, !dbg !3545

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3524
  ret i32 %17, !dbg !3546
}

; Function Attrs: nofree nounwind
declare !dbg !3547 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3548 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3587, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i64 %1, metadata !3588, metadata !DIExpression()), !dbg !3593
  call void @llvm.dbg.value(metadata i32 %2, metadata !3589, metadata !DIExpression()), !dbg !3593
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3594
  %5 = load ptr, ptr %4, align 8, !dbg !3594, !tbaa !3595
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3596
  %7 = load ptr, ptr %6, align 8, !dbg !3596, !tbaa !3597
  %8 = icmp eq ptr %5, %7, !dbg !3598
  br i1 %8, label %9, label %27, !dbg !3599

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3600
  %11 = load ptr, ptr %10, align 8, !dbg !3600, !tbaa !1183
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3601
  %13 = load ptr, ptr %12, align 8, !dbg !3601, !tbaa !3602
  %14 = icmp eq ptr %11, %13, !dbg !3603
  br i1 %14, label %15, label %27, !dbg !3604

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3605
  %17 = load ptr, ptr %16, align 8, !dbg !3605, !tbaa !3606
  %18 = icmp eq ptr %17, null, !dbg !3607
  br i1 %18, label %19, label %27, !dbg !3608

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3609
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3610
  call void @llvm.dbg.value(metadata i64 %21, metadata !3590, metadata !DIExpression()), !dbg !3611
  %22 = icmp eq i64 %21, -1, !dbg !3612
  br i1 %22, label %29, label %23, !dbg !3614

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3615, !tbaa !3391
  %25 = and i32 %24, -17, !dbg !3615
  store i32 %25, ptr %0, align 8, !dbg !3615, !tbaa !3391
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3616
  store i64 %21, ptr %26, align 8, !dbg !3617, !tbaa !3618
  br label %29, !dbg !3619

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3620
  br label %29, !dbg !3621

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3593
  ret i32 %30, !dbg !3622
}

; Function Attrs: nofree nounwind
declare !dbg !3623 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3626 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3631, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %1, metadata !3632, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata i64 %2, metadata !3633, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %3, metadata !3634, metadata !DIExpression()), !dbg !3636
  %5 = icmp eq ptr %1, null, !dbg !3637
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3639
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3639
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %8, metadata !3633, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %7, metadata !3632, metadata !DIExpression()), !dbg !3636
  call void @llvm.dbg.value(metadata ptr %6, metadata !3631, metadata !DIExpression()), !dbg !3636
  %9 = icmp eq ptr %3, null, !dbg !3640
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3642
  call void @llvm.dbg.value(metadata ptr %10, metadata !3634, metadata !DIExpression()), !dbg !3636
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3643
  call void @llvm.dbg.value(metadata i64 %11, metadata !3635, metadata !DIExpression()), !dbg !3636
  %12 = icmp ult i64 %11, -3, !dbg !3644
  br i1 %12, label %13, label %17, !dbg !3646

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3647
  %15 = icmp eq i32 %14, 0, !dbg !3647
  br i1 %15, label %16, label %29, !dbg !3648

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3649, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %10, metadata !3656, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 0, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i64 8, metadata !3660, metadata !DIExpression()), !dbg !3661
  store i64 0, ptr %10, align 1, !dbg !3663
  br label %29, !dbg !3664

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3665
  br i1 %18, label %19, label %20, !dbg !3667

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3668
  unreachable, !dbg !3668

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3669

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3671
  br i1 %23, label %29, label %24, !dbg !3672

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3673
  br i1 %25, label %29, label %26, !dbg !3676

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3677, !tbaa !816
  %28 = zext i8 %27 to i32, !dbg !3678
  store i32 %28, ptr %6, align 4, !dbg !3679, !tbaa !807
  br label %29, !dbg !3680

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3636
  ret i64 %30, !dbg !3681
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3682 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3688 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %1, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %2, metadata !3692, metadata !DIExpression()), !dbg !3694
  %4 = icmp eq i64 %2, 0, !dbg !3695
  br i1 %4, label %8, label %5, !dbg !3695

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3695
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3695
  br i1 %7, label %13, label %8, !dbg !3695

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3693, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3694
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3693, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3694
  %9 = mul i64 %2, %1, !dbg !3695
  call void @llvm.dbg.value(metadata i64 %9, metadata !3693, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i64 %9, metadata !3700, metadata !DIExpression()), !dbg !3701
  %10 = icmp eq i64 %9, 0, !dbg !3703
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3703
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3704
  br label %15, !dbg !3705

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3693, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3694
  %14 = tail call ptr @__errno_location() #39, !dbg !3706
  store i32 12, ptr %14, align 4, !dbg !3708, !tbaa !807
  br label %15, !dbg !3709

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3694
  ret ptr %16, !dbg !3710
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3711 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3715, metadata !DIExpression()), !dbg !3720
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3716, metadata !DIExpression()), !dbg !3722
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3723
  %4 = icmp eq i32 %3, 0, !dbg !3723
  br i1 %4, label %5, label %12, !dbg !3725

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr @.str.122, metadata !3729, metadata !DIExpression()), !dbg !3730
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.122, i64 2), !dbg !3733
  %7 = icmp eq i32 %6, 0, !dbg !3734
  br i1 %7, label %11, label %8, !dbg !3735

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3726, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3729, metadata !DIExpression()), !dbg !3736
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3738
  %10 = icmp eq i32 %9, 0, !dbg !3739
  br i1 %10, label %11, label %12, !dbg !3740

11:                                               ; preds = %8, %5
  br label %12, !dbg !3741

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3720
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3742
  ret i1 %13, !dbg !3742
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3747, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %1, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i64 %2, metadata !3749, metadata !DIExpression()), !dbg !3750
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3751
  ret i32 %4, !dbg !3752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3757, metadata !DIExpression()), !dbg !3758
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3759
  ret ptr %2, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3765
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3766
  call void @llvm.dbg.value(metadata ptr %2, metadata !3764, metadata !DIExpression()), !dbg !3765
  ret ptr %2, !dbg !3767
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3768 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3770, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %1, metadata !3771, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %2, metadata !3772, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %0, metadata !3763, metadata !DIExpression()), !dbg !3778
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3780
  call void @llvm.dbg.value(metadata ptr %4, metadata !3764, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %4, metadata !3773, metadata !DIExpression()), !dbg !3777
  %5 = icmp eq ptr %4, null, !dbg !3781
  br i1 %5, label %6, label %9, !dbg !3782

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3783
  br i1 %7, label %19, label %8, !dbg !3786

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3787, !tbaa !816
  br label %19, !dbg !3788

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3789
  call void @llvm.dbg.value(metadata i64 %10, metadata !3774, metadata !DIExpression()), !dbg !3790
  %11 = icmp ult i64 %10, %2, !dbg !3791
  br i1 %11, label %12, label %14, !dbg !3793

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %1, metadata !3796, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %4, metadata !3799, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %13, metadata !3800, metadata !DIExpression()), !dbg !3801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3803
  br label %19, !dbg !3804

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3805
  br i1 %15, label %19, label %16, !dbg !3808

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3809
  call void @llvm.dbg.value(metadata ptr %1, metadata !3796, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %4, metadata !3799, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %17, metadata !3800, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3813
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3814
  store i8 0, ptr %18, align 1, !dbg !3815, !tbaa !816
  br label %19, !dbg !3816

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3817
  ret i32 %20, !dbg !3818
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
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
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!70, !293, !297, !312, !636, !670, !372, !392, !406, !454, !672, !628, !679, !713, !715, !717, !719, !721, !652, !723, !726, !728, !730}
!llvm.ident = !{!732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732, !732}
!llvm.module.flags = !{!733, !734, !735, !736, !737, !738, !739}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/hostid.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7f0e5f3aa5d6f632ed5741d47ec6b339")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 712, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 89)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 50)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 62)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 1)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 24)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 14)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 13)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 17)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 6)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !64, file: !65, line: 575, type: !90, isLocal: true, isDefinition: true)
!64 = distinct !DISubprogram(name: "oputs_", scope: !65, file: !65, line: 573, type: !66, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !209)
!65 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!66 = !DISubroutineType(cc: DW_CC_nocall, types: !67)
!67 = !{null, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!70 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !88, globals: !96, splitDebugInlining: false, nameTableKind: None)
!71 = !{!72}
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 46, baseType: !74, size: 32, elements: !75)
!73 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!74 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "_ISupper", value: 256)
!77 = !DIEnumerator(name: "_ISlower", value: 512)
!78 = !DIEnumerator(name: "_ISalpha", value: 1024)
!79 = !DIEnumerator(name: "_ISdigit", value: 2048)
!80 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!81 = !DIEnumerator(name: "_ISspace", value: 8192)
!82 = !DIEnumerator(name: "_ISprint", value: 16384)
!83 = !DIEnumerator(name: "_ISgraph", value: 32768)
!84 = !DIEnumerator(name: "_ISblank", value: 1)
!85 = !DIEnumerator(name: "_IScntrl", value: 2)
!86 = !DIEnumerator(name: "_ISpunct", value: 4)
!87 = !DIEnumerator(name: "_ISalnum", value: 8)
!88 = !{!68, !89, !90, !91, !92, !95}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 46, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !97, !102, !104, !109, !111, !116, !118, !120, !125, !127, !129, !131, !133, !138, !140, !142, !144, !146, !148, !150, !152, !157, !162, !167, !169, !171, !173, !175, !180, !185, !187, !189, !194, !199, !204}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !65, line: 585, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 5)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !65, line: 586, type: !99, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !65, line: 595, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !65, line: 620, type: !59, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !65, line: 648, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 2)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !65, line: 648, type: !99, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !65, line: 649, type: !106, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !65, line: 649, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !65, line: 650, type: !99, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !65, line: 651, type: !59, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !65, line: 651, type: !59, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !65, line: 652, type: !14, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !65, line: 653, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !65, line: 654, type: !34, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !65, line: 655, type: !34, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !65, line: 656, type: !34, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !65, line: 657, type: !34, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !65, line: 663, type: !14, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !65, line: 664, type: !34, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !65, line: 669, type: !54, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !65, line: 669, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 40)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !65, line: 676, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 15)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !65, line: 676, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 61)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !65, line: 679, type: !122, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !65, line: 683, type: !99, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !65, line: 688, type: !99, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !65, line: 691, type: !135, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !65, line: 839, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 16)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !65, line: 840, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 22)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !65, line: 841, type: !159, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !65, line: 862, type: !106, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !65, line: 868, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 71)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !65, line: 875, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 27)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !65, line: 877, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 51)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !65, line: 877, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 12)
!209 = !{!210, !211, !212, !215, !217, !218, !219, !223, !224, !225, !226, !228, !282, !283, !284, !286, !287}
!210 = !DILocalVariable(name: "program", arg: 1, scope: !64, file: !65, line: 573, type: !68)
!211 = !DILocalVariable(name: "option", arg: 2, scope: !64, file: !65, line: 573, type: !68)
!212 = !DILocalVariable(name: "term", scope: !213, file: !65, line: 585, type: !68)
!213 = distinct !DILexicalBlock(scope: !214, file: !65, line: 582, column: 5)
!214 = distinct !DILexicalBlock(scope: !64, file: !65, line: 581, column: 7)
!215 = !DILocalVariable(name: "double_space", scope: !64, file: !65, line: 594, type: !216)
!216 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!217 = !DILocalVariable(name: "first_word", scope: !64, file: !65, line: 595, type: !68)
!218 = !DILocalVariable(name: "option_text", scope: !64, file: !65, line: 596, type: !68)
!219 = !DILocalVariable(name: "s", scope: !220, file: !65, line: 608, type: !68)
!220 = distinct !DILexicalBlock(scope: !221, file: !65, line: 605, column: 5)
!221 = distinct !DILexicalBlock(scope: !222, file: !65, line: 604, column: 12)
!222 = distinct !DILexicalBlock(scope: !64, file: !65, line: 597, column: 7)
!223 = !DILocalVariable(name: "spaces", scope: !220, file: !65, line: 609, type: !92)
!224 = !DILocalVariable(name: "anchor_len", scope: !64, file: !65, line: 620, type: !92)
!225 = !DILocalVariable(name: "desc_text", scope: !64, file: !65, line: 625, type: !68)
!226 = !DILocalVariable(name: "__ptr", scope: !227, file: !65, line: 644, type: !68)
!227 = distinct !DILexicalBlock(scope: !64, file: !65, line: 644, column: 3)
!228 = !DILocalVariable(name: "__stream", scope: !227, file: !65, line: 644, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !232)
!231 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !234)
!233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!234 = !{!235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !251, !253, !254, !255, !259, !260, !262, !263, !266, !268, !271, !274, !275, !276, !277, !278}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !232, file: !233, line: 51, baseType: !90, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !232, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !232, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !232, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !232, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !232, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !232, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !232, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !232, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !232, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !232, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !232, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !232, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !233, line: 36, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !232, file: !233, line: 70, baseType: !252, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !232, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !232, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !232, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !257, line: 152, baseType: !258)
!257 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!258 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !232, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !232, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!261 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !232, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !232, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !233, line: 43, baseType: null)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !232, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !257, line: 153, baseType: !258)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !232, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !233, line: 37, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !232, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !233, line: 38, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !232, file: !233, line: 93, baseType: !252, size: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !232, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !232, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !232, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !232, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 20)
!282 = !DILocalVariable(name: "__cnt", scope: !227, file: !65, line: 644, type: !92)
!283 = !DILocalVariable(name: "url_program", scope: !64, file: !65, line: 648, type: !68)
!284 = !DILocalVariable(name: "__ptr", scope: !285, file: !65, line: 686, type: !68)
!285 = distinct !DILexicalBlock(scope: !64, file: !65, line: 686, column: 3)
!286 = !DILocalVariable(name: "__stream", scope: !285, file: !65, line: 686, type: !229)
!287 = !DILocalVariable(name: "__cnt", scope: !285, file: !65, line: 686, type: !92)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !290, line: 3, type: !159, isLocal: true, isDefinition: true)
!290 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "Version", scope: !293, file: !290, line: 3, type: !68, isLocal: false, isDefinition: true)
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !68, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
!298 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!299 = !{!300, !302, !304, !306, !295, !308}
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !14, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !298, line: 121, type: !206, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !298, line: 123, type: !14, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !298, line: 126, type: !122, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !297, file: !298, line: 55, type: !216, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !364, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!89, !95}
!315 = !{!316, !318, !343, !345, !347, !349, !310, !351, !353, !355, !357, !362}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !99, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !68, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !336)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !90, !90, !68, !74, !68, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !325)
!324 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 14, baseType: !327)
!326 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !328, baseType: !329)
!328 = !DIFile(filename: "lib/error.c", directory: "/src")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !330)
!330 = !{!331, !332, !333, !334, !335}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !329, file: !328, baseType: !89, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !329, file: !328, baseType: !89, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !329, file: !328, baseType: !89, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !329, file: !328, baseType: !90, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !329, file: !328, baseType: !90, size: 32, offset: 224)
!336 = !{!337, !338, !339, !340, !341, !342}
!337 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !90)
!338 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !90)
!339 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !68)
!340 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !74)
!341 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !68)
!342 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !74, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !106, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !135, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !113, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !74, isLocal: false, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !90, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !14, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 21)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !99, isLocal: true, isDefinition: true)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null}
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !369, line: 60, type: !113, isLocal: true, isDefinition: true)
!369 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "long_options", scope: !372, file: !369, line: 34, type: !380, isLocal: true, isDefinition: true)
!372 = distinct !DICompileUnit(language: DW_LANG_C11, file: !369, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !373, splitDebugInlining: false, nameTableKind: None)
!373 = !{!367, !374, !376, !378, !370}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !369, line: 112, type: !29, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !369, line: 36, type: !99, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !369, line: 37, type: !135, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 768, elements: !123)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !383, line: 50, size: 256, elements: !384)
!383 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!384 = !{!385, !386, !387, !389}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !383, line: 52, baseType: !68, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !382, file: !383, line: 55, baseType: !90, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !382, file: !383, line: 56, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !383, line: 57, baseType: !90, size: 32, offset: 192)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "program_name", scope: !392, file: !393, line: 31, type: !68, isLocal: false, isDefinition: true)
!392 = distinct !DICompileUnit(language: DW_LANG_C11, file: !393, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !394, globals: !395, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!394 = !{!237}
!395 = !{!390, !396, !398}
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !393, line: 46, type: !135, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !393, line: 49, type: !106, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "utf07FF", scope: !402, file: !403, line: 46, type: !430, isLocal: true, isDefinition: true)
!402 = distinct !DISubprogram(name: "proper_name_lite", scope: !403, file: !403, line: 38, type: !404, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !408)
!403 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!404 = !DISubroutineType(types: !405)
!405 = !{!68, !68, !68}
!406 = distinct !DICompileUnit(language: DW_LANG_C11, file: !403, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !407, splitDebugInlining: false, nameTableKind: None)
!407 = !{!400}
!408 = !{!409, !410, !411, !412, !417}
!409 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !402, file: !403, line: 38, type: !68)
!410 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !402, file: !403, line: 38, type: !68)
!411 = !DILocalVariable(name: "translation", scope: !402, file: !403, line: 40, type: !68)
!412 = !DILocalVariable(name: "w", scope: !402, file: !403, line: 47, type: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !414, line: 37, baseType: !415)
!414 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !257, line: 57, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !257, line: 42, baseType: !74)
!417 = !DILocalVariable(name: "mbs", scope: !402, file: !403, line: 48, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !419, line: 6, baseType: !420)
!419 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !421, line: 21, baseType: !422)
!421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 13, size: 64, elements: !423)
!423 = !{!424, !425}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !422, file: !421, line: 15, baseType: !90, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !422, file: !421, line: 20, baseType: !426, size: 32, offset: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !422, file: !421, line: 16, size: 32, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !426, file: !421, line: 18, baseType: !74, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !426, file: !421, line: 19, baseType: !106, size: 32)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 16, elements: !114)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !433, line: 78, type: !135, isLocal: true, isDefinition: true)
!433 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !433, line: 79, type: !59, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !433, line: 80, type: !49, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !433, line: 81, type: !49, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !433, line: 82, type: !279, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !433, line: 83, type: !113, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !433, line: 84, type: !135, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !433, line: 85, type: !14, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !433, line: 86, type: !14, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !433, line: 87, type: !135, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !454, file: !433, line: 76, type: !540, isLocal: false, isDefinition: true)
!454 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !455, retainedTypes: !475, globals: !476, splitDebugInlining: false, nameTableKind: None)
!455 = !{!456, !470, !72}
!456 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !457, line: 42, baseType: !74, size: 32, elements: !458)
!457 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!459 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!460 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!461 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!462 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!463 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!464 = !DIEnumerator(name: "c_quoting_style", value: 5)
!465 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!466 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!467 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!468 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!469 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!470 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !457, line: 254, baseType: !74, size: 32, elements: !471)
!471 = !{!472, !473, !474}
!472 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!473 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!474 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!475 = !{!90, !91, !92}
!476 = !{!431, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !477, !481, !491, !493, !498, !500, !502, !504, !506, !529, !536, !538}
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !454, file: !433, line: 92, type: !479, isLocal: false, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 320, elements: !35)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !454, file: !433, line: 1040, type: !483, isLocal: false, isDefinition: true)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !433, line: 56, size: 448, elements: !484)
!484 = !{!485, !486, !487, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !483, file: !433, line: 59, baseType: !456, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !433, line: 62, baseType: !90, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !483, file: !433, line: 66, baseType: !488, size: 256, offset: 64)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !136)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !483, file: !433, line: 69, baseType: !68, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !483, file: !433, line: 72, baseType: !68, size: 64, offset: 384)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !454, file: !433, line: 107, type: !483, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "slot0", scope: !454, file: !433, line: 831, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 256)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !433, line: 321, type: !113, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !433, line: 357, type: !113, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !433, line: 358, type: !113, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !433, line: 199, type: !14, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "quote", scope: !508, file: !433, line: 228, type: !527, isLocal: true, isDefinition: true)
!508 = distinct !DISubprogram(name: "gettext_quote", scope: !433, file: !433, line: 197, type: !509, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!68, !68, !456}
!511 = !{!512, !513, !514, !515, !516}
!512 = !DILocalVariable(name: "msgid", arg: 1, scope: !508, file: !433, line: 197, type: !68)
!513 = !DILocalVariable(name: "s", arg: 2, scope: !508, file: !433, line: 197, type: !456)
!514 = !DILocalVariable(name: "translation", scope: !508, file: !433, line: 199, type: !68)
!515 = !DILocalVariable(name: "w", scope: !508, file: !433, line: 229, type: !413)
!516 = !DILocalVariable(name: "mbs", scope: !508, file: !433, line: 230, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !419, line: 6, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !421, line: 21, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 13, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !519, file: !421, line: 15, baseType: !90, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !519, file: !421, line: 20, baseType: !523, size: 32, offset: 32)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !421, line: 16, size: 32, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !523, file: !421, line: 18, baseType: !74, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !523, file: !421, line: 19, baseType: !106, size: 32)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !528)
!528 = !{!115, !108}
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "slotvec", scope: !454, file: !433, line: 834, type: !531, isLocal: true, isDefinition: true)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !433, line: 823, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !532, file: !433, line: 825, baseType: !92, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !532, file: !433, line: 826, baseType: !237, size: 64, offset: 64)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "nslots", scope: !454, file: !433, line: 832, type: !90, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "slotvec0", scope: !454, file: !433, line: 833, type: !532, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 704, elements: !542)
!541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!542 = !{!543}
!543 = !DISubrange(count: 11)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !546, line: 67, type: !206, isLocal: true, isDefinition: true)
!546 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !546, line: 69, type: !14, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !546, line: 83, type: !14, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !546, line: 83, type: !106, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !546, line: 85, type: !113, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !546, line: 88, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 171)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !546, line: 88, type: !562, isLocal: true, isDefinition: true)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 34)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !546, line: 105, type: !177, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !546, line: 109, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 23)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !546, line: 113, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 28)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !546, line: 120, type: !579, isLocal: true, isDefinition: true)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: 32)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !546, line: 127, type: !584, isLocal: true, isDefinition: true)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 36)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !546, line: 134, type: !154, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !546, line: 142, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 44)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !546, line: 150, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 48)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !546, line: 159, type: !601, isLocal: true, isDefinition: true)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !602)
!602 = !{!603}
!603 = !DISubrange(count: 52)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !546, line: 170, type: !606, isLocal: true, isDefinition: true)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 60)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !546, line: 248, type: !279, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !546, line: 248, type: !182, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !546, line: 254, type: !279, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !546, line: 254, type: !44, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !546, line: 254, type: !154, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !546, line: 259, type: !3, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !546, line: 259, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 29)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !628, file: !629, line: 26, type: !631, isLocal: false, isDefinition: true)
!628 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !630, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!630 = !{!626}
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 47)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "exit_failure", scope: !636, file: !637, line: 24, type: !639, isLocal: false, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!638 = !{!634}
!639 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !642, line: 34, type: !122, isLocal: true, isDefinition: true)
!642 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !642, line: 34, type: !14, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !642, line: 34, type: !54, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !649, line: 108, type: !29, isLocal: true, isDefinition: true)
!649 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "internal_state", scope: !652, file: !649, line: 97, type: !655, isLocal: true, isDefinition: true)
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
!653 = !{!89, !92, !95}
!654 = !{!647, !650}
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !419, line: 6, baseType: !656)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !421, line: 21, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !421, line: 13, size: 64, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !657, file: !421, line: 15, baseType: !90, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !657, file: !421, line: 20, baseType: !661, size: 32, offset: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !421, line: 16, size: 32, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !661, file: !421, line: 18, baseType: !74, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !661, file: !421, line: 19, baseType: !106, size: 32)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !667, line: 35, type: !113, isLocal: true, isDefinition: true)
!667 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !667, line: 35, type: !59, isLocal: true, isDefinition: true)
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !546, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !677, globals: !678, splitDebugInlining: false, nameTableKind: None)
!673 = !{!674}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !546, line: 40, baseType: !74, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!677 = !{!89}
!678 = !{!544, !547, !549, !551, !553, !555, !560, !565, !567, !572, !577, !582, !587, !589, !594, !599, !604, !609, !611, !613, !615, !617, !619, !621}
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!681 = !{!682, !694}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !683, file: !680, line: 188, baseType: !74, size: 32, elements: !692)
!683 = distinct !DISubprogram(name: "x2nrealloc", scope: !680, file: !680, line: 176, type: !684, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !687)
!684 = !DISubroutineType(types: !685)
!685 = !{!89, !89, !686, !92}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "p", arg: 1, scope: !683, file: !680, line: 176, type: !89)
!689 = !DILocalVariable(name: "pn", arg: 2, scope: !683, file: !680, line: 176, type: !686)
!690 = !DILocalVariable(name: "s", arg: 3, scope: !683, file: !680, line: 176, type: !92)
!691 = !DILocalVariable(name: "n", scope: !683, file: !680, line: 178, type: !92)
!692 = !{!693}
!693 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!694 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !695, file: !680, line: 228, baseType: !74, size: 32, elements: !692)
!695 = distinct !DISubprogram(name: "xpalloc", scope: !680, file: !680, line: 223, type: !696, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !702)
!696 = !DISubroutineType(types: !697)
!697 = !{!89, !89, !698, !699, !701, !699}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !700, line: 130, baseType: !701)
!700 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !93, line: 35, baseType: !258)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711}
!703 = !DILocalVariable(name: "pa", arg: 1, scope: !695, file: !680, line: 223, type: !89)
!704 = !DILocalVariable(name: "pn", arg: 2, scope: !695, file: !680, line: 223, type: !698)
!705 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !695, file: !680, line: 223, type: !699)
!706 = !DILocalVariable(name: "n_max", arg: 4, scope: !695, file: !680, line: 223, type: !701)
!707 = !DILocalVariable(name: "s", arg: 5, scope: !695, file: !680, line: 223, type: !699)
!708 = !DILocalVariable(name: "n0", scope: !695, file: !680, line: 230, type: !699)
!709 = !DILocalVariable(name: "n", scope: !695, file: !680, line: 237, type: !699)
!710 = !DILocalVariable(name: "nbytes", scope: !695, file: !680, line: 248, type: !699)
!711 = !DILocalVariable(name: "adjusted_nbytes", scope: !695, file: !680, line: 252, type: !699)
!712 = !{!237, !89, !216, !258, !94}
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !714, splitDebugInlining: false, nameTableKind: None)
!714 = !{!640, !643, !645}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!725 = !{!216, !94, !89}
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!727 = !{!665, !668}
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!732 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!733 = !{i32 7, !"Dwarf Version", i32 5}
!734 = !{i32 2, !"Debug Info Version", i32 3}
!735 = !{i32 1, !"wchar_size", i32 4}
!736 = !{i32 8, !"PIC Level", i32 2}
!737 = !{i32 7, !"PIE Level", i32 2}
!738 = !{i32 7, !"uwtable", i32 2}
!739 = !{i32 7, !"frame-pointer", i32 1}
!740 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 34, type: !741, scopeLine: 35, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !90}
!743 = !{!744}
!744 = !DILocalVariable(name: "status", arg: 1, scope: !740, file: !2, line: 34, type: !90)
!745 = !DILocation(line: 0, scope: !740)
!746 = !DILocation(line: 36, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !740, file: !2, line: 36, column: 7)
!748 = !DILocation(line: 36, column: 7, scope: !740)
!749 = !DILocation(line: 37, column: 5, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !2, line: 37, column: 5)
!751 = !{!752, !752, i64 0}
!752 = !{!"any pointer", !753, i64 0}
!753 = !{!"omnipotent char", !754, i64 0}
!754 = !{!"Simple C/C++ TBAA"}
!755 = !DILocation(line: 40, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !747, file: !2, line: 39, column: 5)
!757 = !DILocation(line: 45, column: 7, scope: !756)
!758 = !DILocation(line: 46, column: 7, scope: !756)
!759 = !DILocalVariable(name: "program", arg: 1, scope: !760, file: !65, line: 836, type: !68)
!760 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !65, file: !65, line: 836, type: !761, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !763)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !68}
!763 = !{!759, !764, !771, !772, !774, !775}
!764 = !DILocalVariable(name: "infomap", scope: !760, file: !65, line: 838, type: !765)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 896, elements: !15)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !760, file: !65, line: 838, size: 128, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !767, file: !65, line: 838, baseType: !68, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !767, file: !65, line: 838, baseType: !68, size: 64, offset: 64)
!771 = !DILocalVariable(name: "node", scope: !760, file: !65, line: 848, type: !68)
!772 = !DILocalVariable(name: "map_prog", scope: !760, file: !65, line: 849, type: !773)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!774 = !DILocalVariable(name: "lc_messages", scope: !760, file: !65, line: 861, type: !68)
!775 = !DILocalVariable(name: "url_program", scope: !760, file: !65, line: 874, type: !68)
!776 = !DILocation(line: 0, scope: !760, inlinedAt: !777)
!777 = distinct !DILocation(line: 47, column: 7, scope: !756)
!778 = !DILocation(line: 857, column: 3, scope: !760, inlinedAt: !777)
!779 = !DILocation(line: 861, column: 29, scope: !760, inlinedAt: !777)
!780 = !DILocation(line: 862, column: 7, scope: !781, inlinedAt: !777)
!781 = distinct !DILexicalBlock(scope: !760, file: !65, line: 862, column: 7)
!782 = !DILocation(line: 862, column: 19, scope: !781, inlinedAt: !777)
!783 = !DILocation(line: 862, column: 22, scope: !781, inlinedAt: !777)
!784 = !DILocation(line: 862, column: 7, scope: !760, inlinedAt: !777)
!785 = !DILocation(line: 868, column: 7, scope: !786, inlinedAt: !777)
!786 = distinct !DILexicalBlock(scope: !781, file: !65, line: 863, column: 5)
!787 = !DILocation(line: 870, column: 5, scope: !786, inlinedAt: !777)
!788 = !DILocation(line: 875, column: 3, scope: !760, inlinedAt: !777)
!789 = !DILocation(line: 877, column: 3, scope: !760, inlinedAt: !777)
!790 = !DILocation(line: 49, column: 3, scope: !740)
!791 = !DISubprogram(name: "dcgettext", scope: !792, file: !792, line: 51, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!792 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!793 = !DISubroutineType(types: !794)
!794 = !{!237, !68, !68, !90}
!795 = !{}
!796 = !DISubprogram(name: "__fprintf_chk", scope: !797, file: !797, line: 93, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!797 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!798 = !DISubroutineType(types: !799)
!799 = !{!90, !800, !90, !801, null}
!800 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!801 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!802 = !DISubprogram(name: "__printf_chk", scope: !797, file: !797, line: 95, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!803 = !DISubroutineType(types: !804)
!804 = !{!90, !90, !801, null}
!805 = !DILocation(line: 0, scope: !64)
!806 = !DILocation(line: 581, column: 7, scope: !214)
!807 = !{!808, !808, i64 0}
!808 = !{!"int", !753, i64 0}
!809 = !DILocation(line: 581, column: 19, scope: !214)
!810 = !DILocation(line: 581, column: 7, scope: !64)
!811 = !DILocation(line: 585, column: 26, scope: !213)
!812 = !DILocation(line: 0, scope: !213)
!813 = !DILocation(line: 586, column: 23, scope: !213)
!814 = !DILocation(line: 586, column: 28, scope: !213)
!815 = !DILocation(line: 586, column: 32, scope: !213)
!816 = !{!753, !753, i64 0}
!817 = !DILocation(line: 586, column: 38, scope: !213)
!818 = !DILocalVariable(name: "__s1", arg: 1, scope: !819, file: !820, line: 1359, type: !68)
!819 = distinct !DISubprogram(name: "streq", scope: !820, file: !820, line: 1359, type: !821, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !823)
!820 = !DIFile(filename: "./lib/string.h", directory: "/src")
!821 = !DISubroutineType(types: !822)
!822 = !{!216, !68, !68}
!823 = !{!818, !824}
!824 = !DILocalVariable(name: "__s2", arg: 2, scope: !819, file: !820, line: 1359, type: !68)
!825 = !DILocation(line: 0, scope: !819, inlinedAt: !826)
!826 = distinct !DILocation(line: 586, column: 41, scope: !213)
!827 = !DILocation(line: 1361, column: 11, scope: !819, inlinedAt: !826)
!828 = !DILocation(line: 1361, column: 10, scope: !819, inlinedAt: !826)
!829 = !DILocation(line: 586, column: 19, scope: !213)
!830 = !DILocation(line: 587, column: 5, scope: !213)
!831 = !DILocation(line: 588, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !64, file: !65, line: 588, column: 7)
!833 = !DILocation(line: 588, column: 7, scope: !64)
!834 = !DILocation(line: 590, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !65, line: 589, column: 5)
!836 = !DILocation(line: 591, column: 7, scope: !835)
!837 = !DILocation(line: 595, column: 37, scope: !64)
!838 = !DILocation(line: 595, column: 35, scope: !64)
!839 = !DILocation(line: 596, column: 29, scope: !64)
!840 = !DILocation(line: 597, column: 8, scope: !222)
!841 = !DILocation(line: 597, column: 7, scope: !64)
!842 = !DILocation(line: 604, column: 24, scope: !221)
!843 = !DILocation(line: 604, column: 12, scope: !222)
!844 = !DILocation(line: 0, scope: !220)
!845 = !DILocation(line: 610, column: 16, scope: !220)
!846 = !DILocation(line: 610, column: 7, scope: !220)
!847 = !DILocation(line: 611, column: 21, scope: !220)
!848 = !{!849, !849, i64 0}
!849 = !{!"short", !753, i64 0}
!850 = !DILocation(line: 611, column: 19, scope: !220)
!851 = !DILocation(line: 611, column: 16, scope: !220)
!852 = !DILocation(line: 610, column: 30, scope: !220)
!853 = distinct !{!853, !846, !847, !854}
!854 = !{!"llvm.loop.mustprogress"}
!855 = !DILocation(line: 612, column: 18, scope: !856)
!856 = distinct !DILexicalBlock(scope: !220, file: !65, line: 612, column: 11)
!857 = !DILocation(line: 612, column: 11, scope: !220)
!858 = !DILocation(line: 620, column: 23, scope: !64)
!859 = !DILocation(line: 625, column: 39, scope: !64)
!860 = !DILocation(line: 626, column: 3, scope: !64)
!861 = !DILocation(line: 626, column: 10, scope: !64)
!862 = !DILocation(line: 626, column: 21, scope: !64)
!863 = !DILocation(line: 628, column: 44, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !65, line: 628, column: 11)
!865 = distinct !DILexicalBlock(scope: !64, file: !65, line: 627, column: 5)
!866 = !DILocation(line: 628, column: 32, scope: !864)
!867 = !DILocation(line: 628, column: 49, scope: !864)
!868 = !DILocation(line: 628, column: 11, scope: !865)
!869 = !DILocation(line: 630, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !65, line: 630, column: 11)
!871 = !DILocation(line: 630, column: 11, scope: !865)
!872 = !DILocation(line: 632, column: 26, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !65, line: 632, column: 15)
!874 = distinct !DILexicalBlock(scope: !870, file: !65, line: 631, column: 9)
!875 = !DILocation(line: 632, column: 34, scope: !873)
!876 = !DILocation(line: 632, column: 37, scope: !873)
!877 = !DILocation(line: 632, column: 15, scope: !874)
!878 = !DILocation(line: 640, column: 16, scope: !865)
!879 = distinct !{!879, !860, !880, !854}
!880 = !DILocation(line: 641, column: 5, scope: !64)
!881 = !DILocation(line: 644, column: 3, scope: !64)
!882 = !DILocation(line: 0, scope: !819, inlinedAt: !883)
!883 = distinct !DILocation(line: 648, column: 31, scope: !64)
!884 = !DILocation(line: 0, scope: !819, inlinedAt: !885)
!885 = distinct !DILocation(line: 649, column: 31, scope: !64)
!886 = !DILocation(line: 0, scope: !819, inlinedAt: !887)
!887 = distinct !DILocation(line: 650, column: 31, scope: !64)
!888 = !DILocation(line: 0, scope: !819, inlinedAt: !889)
!889 = distinct !DILocation(line: 651, column: 31, scope: !64)
!890 = !DILocation(line: 0, scope: !819, inlinedAt: !891)
!891 = distinct !DILocation(line: 652, column: 31, scope: !64)
!892 = !DILocation(line: 0, scope: !819, inlinedAt: !893)
!893 = distinct !DILocation(line: 653, column: 31, scope: !64)
!894 = !DILocation(line: 0, scope: !819, inlinedAt: !895)
!895 = distinct !DILocation(line: 654, column: 31, scope: !64)
!896 = !DILocation(line: 0, scope: !819, inlinedAt: !897)
!897 = distinct !DILocation(line: 655, column: 31, scope: !64)
!898 = !DILocation(line: 0, scope: !819, inlinedAt: !899)
!899 = distinct !DILocation(line: 656, column: 31, scope: !64)
!900 = !DILocation(line: 0, scope: !819, inlinedAt: !901)
!901 = distinct !DILocation(line: 657, column: 31, scope: !64)
!902 = !DILocation(line: 663, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !64, file: !65, line: 663, column: 7)
!904 = !DILocation(line: 664, column: 7, scope: !903)
!905 = !DILocation(line: 664, column: 10, scope: !903)
!906 = !DILocation(line: 663, column: 7, scope: !64)
!907 = !DILocation(line: 669, column: 7, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !65, line: 665, column: 5)
!909 = !DILocation(line: 671, column: 5, scope: !908)
!910 = !DILocation(line: 676, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !903, file: !65, line: 673, column: 5)
!912 = !DILocation(line: 679, column: 3, scope: !64)
!913 = !DILocation(line: 683, column: 3, scope: !64)
!914 = !DILocation(line: 686, column: 3, scope: !64)
!915 = !DILocation(line: 688, column: 3, scope: !64)
!916 = !DILocation(line: 691, column: 3, scope: !64)
!917 = !DILocation(line: 695, column: 3, scope: !64)
!918 = !DILocation(line: 696, column: 1, scope: !64)
!919 = !DISubprogram(name: "setlocale", scope: !920, file: !920, line: 122, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!920 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!921 = !DISubroutineType(types: !922)
!922 = !{!237, !90, !68}
!923 = !DISubprogram(name: "strncmp", scope: !924, file: !924, line: 159, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!924 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!925 = !DISubroutineType(types: !926)
!926 = !{!90, !68, !68, !92}
!927 = !DISubprogram(name: "fputs_unlocked", scope: !324, file: !324, line: 691, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!928 = !DISubroutineType(types: !929)
!929 = !{!90, !801, !800}
!930 = !DISubprogram(name: "exit", scope: !931, file: !931, line: 624, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !795)
!931 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!932 = !DISubprogram(name: "getenv", scope: !931, file: !931, line: 641, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!933 = !DISubroutineType(types: !934)
!934 = !{!237, !68}
!935 = !DISubprogram(name: "strcmp", scope: !924, file: !924, line: 156, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!936 = !DISubroutineType(types: !937)
!937 = !{!90, !68, !68}
!938 = !DISubprogram(name: "strspn", scope: !924, file: !924, line: 297, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!939 = !DISubroutineType(types: !940)
!940 = !{!94, !68, !68}
!941 = !DISubprogram(name: "strchr", scope: !924, file: !924, line: 246, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!942 = !DISubroutineType(types: !943)
!943 = !{!237, !68, !90}
!944 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!945 = !DISubroutineType(types: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!950 = !DISubprogram(name: "strcspn", scope: !924, file: !924, line: 293, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!951 = !DISubprogram(name: "fwrite_unlocked", scope: !324, file: !324, line: 704, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!952 = !DISubroutineType(types: !953)
!953 = !{!92, !954, !92, !92, !800}
!954 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!957 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 53, type: !958, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !70, retainedNodes: !961)
!958 = !DISubroutineType(types: !959)
!959 = !{!90, !90, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "argc", arg: 1, scope: !957, file: !2, line: 53, type: !90)
!963 = !DILocalVariable(name: "argv", arg: 2, scope: !957, file: !2, line: 53, type: !960)
!964 = !DILocalVariable(name: "id", scope: !957, file: !2, line: 76, type: !74)
!965 = !DILocation(line: 0, scope: !957)
!966 = !DILocation(line: 56, column: 21, scope: !957)
!967 = !DILocation(line: 56, column: 3, scope: !957)
!968 = !DILocation(line: 57, column: 3, scope: !957)
!969 = !DILocation(line: 58, column: 3, scope: !957)
!970 = !DILocation(line: 59, column: 3, scope: !957)
!971 = !DILocation(line: 61, column: 3, scope: !957)
!972 = !DILocation(line: 64, column: 36, scope: !957)
!973 = !DILocation(line: 64, column: 58, scope: !957)
!974 = !DILocation(line: 63, column: 3, scope: !957)
!975 = !DILocation(line: 67, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !957, file: !2, line: 67, column: 7)
!977 = !DILocation(line: 67, column: 14, scope: !976)
!978 = !DILocation(line: 67, column: 7, scope: !957)
!979 = !DILocation(line: 69, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !2, line: 68, column: 5)
!981 = !DILocation(line: 70, column: 7, scope: !980)
!982 = !DILocation(line: 76, column: 21, scope: !957)
!983 = !DILocation(line: 78, column: 3, scope: !957)
!984 = !DILocation(line: 80, column: 3, scope: !957)
!985 = !DISubprogram(name: "bindtextdomain", scope: !792, file: !792, line: 86, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!986 = !DISubroutineType(types: !987)
!987 = !{!237, !68, !68}
!988 = !DISubprogram(name: "textdomain", scope: !792, file: !792, line: 82, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!989 = !DISubprogram(name: "atexit", scope: !931, file: !931, line: 602, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!990 = !DISubroutineType(types: !991)
!991 = !{!90, !364}
!992 = !DISubprogram(name: "gethostid", scope: !993, file: !993, line: 1002, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!993 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!994 = !DISubroutineType(types: !995)
!995 = !{!258}
!996 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !298, file: !298, line: 50, type: !761, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !997)
!997 = !{!998}
!998 = !DILocalVariable(name: "file", arg: 1, scope: !996, file: !298, line: 50, type: !68)
!999 = !DILocation(line: 0, scope: !996)
!1000 = !DILocation(line: 52, column: 13, scope: !996)
!1001 = !DILocation(line: 53, column: 1, scope: !996)
!1002 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !298, file: !298, line: 87, type: !1003, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !216}
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "ignore", arg: 1, scope: !1002, file: !298, line: 87, type: !216)
!1007 = !DILocation(line: 0, scope: !1002)
!1008 = !DILocation(line: 89, column: 16, scope: !1002)
!1009 = !{!1010, !1010, i64 0}
!1010 = !{!"_Bool", !753, i64 0}
!1011 = !DILocation(line: 90, column: 1, scope: !1002)
!1012 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !365, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1013)
!1013 = !{!1014}
!1014 = !DILocalVariable(name: "write_error", scope: !1015, file: !298, line: 121, type: !68)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !298, line: 120, column: 5)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !298, line: 118, column: 7)
!1017 = !DILocation(line: 118, column: 21, scope: !1016)
!1018 = !DILocation(line: 118, column: 7, scope: !1016)
!1019 = !DILocation(line: 118, column: 29, scope: !1016)
!1020 = !DILocation(line: 119, column: 7, scope: !1016)
!1021 = !DILocation(line: 119, column: 12, scope: !1016)
!1022 = !{i8 0, i8 2}
!1023 = !DILocation(line: 119, column: 25, scope: !1016)
!1024 = !DILocation(line: 119, column: 28, scope: !1016)
!1025 = !DILocation(line: 119, column: 34, scope: !1016)
!1026 = !DILocation(line: 118, column: 7, scope: !1012)
!1027 = !DILocation(line: 121, column: 33, scope: !1015)
!1028 = !DILocation(line: 0, scope: !1015)
!1029 = !DILocation(line: 122, column: 11, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1015, file: !298, line: 122, column: 11)
!1031 = !DILocation(line: 0, scope: !1030)
!1032 = !DILocation(line: 122, column: 11, scope: !1015)
!1033 = !DILocation(line: 123, column: 9, scope: !1030)
!1034 = !DILocation(line: 126, column: 9, scope: !1030)
!1035 = !DILocation(line: 128, column: 14, scope: !1015)
!1036 = !DILocation(line: 128, column: 7, scope: !1015)
!1037 = !DILocation(line: 133, column: 42, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1012, file: !298, line: 133, column: 7)
!1039 = !DILocation(line: 133, column: 28, scope: !1038)
!1040 = !DILocation(line: 133, column: 50, scope: !1038)
!1041 = !DILocation(line: 133, column: 7, scope: !1012)
!1042 = !DILocation(line: 134, column: 12, scope: !1038)
!1043 = !DILocation(line: 134, column: 5, scope: !1038)
!1044 = !DILocation(line: 135, column: 1, scope: !1012)
!1045 = !DISubprogram(name: "__errno_location", scope: !1046, file: !1046, line: 37, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1046 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!388}
!1049 = !DISubprogram(name: "_exit", scope: !993, file: !993, line: 624, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1050 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1051, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !90, !90, !68, !323}
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DILocalVariable(name: "status", arg: 1, scope: !1050, file: !313, line: 251, type: !90)
!1055 = !DILocalVariable(name: "errnum", arg: 2, scope: !1050, file: !313, line: 251, type: !90)
!1056 = !DILocalVariable(name: "message", arg: 3, scope: !1050, file: !313, line: 251, type: !68)
!1057 = !DILocalVariable(name: "args", arg: 4, scope: !1050, file: !313, line: 251, type: !323)
!1058 = !DILocation(line: 0, scope: !1050)
!1059 = !DILocation(line: 251, column: 1, scope: !1050)
!1060 = !DILocation(line: 261, column: 3, scope: !1050)
!1061 = !DILocation(line: 265, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1050, file: !313, line: 265, column: 7)
!1063 = !DILocation(line: 265, column: 7, scope: !1050)
!1064 = !DILocation(line: 266, column: 5, scope: !1062)
!1065 = !DILocation(line: 272, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !313, line: 268, column: 5)
!1067 = !DILocation(line: 276, column: 3, scope: !1050)
!1068 = !{i64 0, i64 8, !751, i64 8, i64 8, !751, i64 16, i64 8, !751, i64 24, i64 4, !807, i64 28, i64 4, !807}
!1069 = !DILocation(line: 282, column: 1, scope: !1050)
!1070 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !365, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1071)
!1071 = !{!1072}
!1072 = !DILocalVariable(name: "stdout_fd", scope: !1070, file: !313, line: 166, type: !90)
!1073 = !DILocation(line: 0, scope: !1070)
!1074 = !DILocalVariable(name: "fd", arg: 1, scope: !1075, file: !313, line: 145, type: !90)
!1075 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1076, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!90, !90}
!1078 = !{!1074}
!1079 = !DILocation(line: 0, scope: !1075, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 182, column: 25, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1070, file: !313, line: 182, column: 7)
!1082 = !DILocation(line: 157, column: 15, scope: !1075, inlinedAt: !1080)
!1083 = !DILocation(line: 157, column: 12, scope: !1075, inlinedAt: !1080)
!1084 = !DILocation(line: 182, column: 7, scope: !1070)
!1085 = !DILocation(line: 184, column: 5, scope: !1081)
!1086 = !DILocation(line: 185, column: 1, scope: !1070)
!1087 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1051, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1088)
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DILocalVariable(name: "status", arg: 1, scope: !1087, file: !313, line: 219, type: !90)
!1090 = !DILocalVariable(name: "errnum", arg: 2, scope: !1087, file: !313, line: 219, type: !90)
!1091 = !DILocalVariable(name: "message", arg: 3, scope: !1087, file: !313, line: 219, type: !68)
!1092 = !DILocalVariable(name: "args", arg: 4, scope: !1087, file: !313, line: 219, type: !323)
!1093 = !DILocation(line: 0, scope: !1087)
!1094 = !DILocation(line: 219, column: 1, scope: !1087)
!1095 = !DILocation(line: 229, column: 13, scope: !1087)
!1096 = !DILocation(line: 135, column: 10, scope: !1097, inlinedAt: !1139)
!1097 = distinct !DISubprogram(name: "vfprintf", scope: !797, file: !797, line: 132, type: !1098, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1135)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!90, !1100, !801, !325}
!1100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1103, file: !233, line: 51, baseType: !90, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1103, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1103, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1103, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1103, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1103, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1103, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1103, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1103, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1103, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1103, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1103, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1103, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1103, file: !233, line: 70, baseType: !1119, size: 64, offset: 832)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1103, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1103, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1103, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1103, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1103, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1103, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1103, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1103, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1103, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1103, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1103, file: !233, line: 93, baseType: !1119, size: 64, offset: 1344)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1103, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1103, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1103, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1103, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!1135 = !{!1136, !1137, !1138}
!1136 = !DILocalVariable(name: "__stream", arg: 1, scope: !1097, file: !797, line: 132, type: !1100)
!1137 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1097, file: !797, line: 133, type: !801)
!1138 = !DILocalVariable(name: "__ap", arg: 3, scope: !1097, file: !797, line: 133, type: !325)
!1139 = distinct !DILocation(line: 229, column: 3, scope: !1087)
!1140 = !{!1141, !1143}
!1141 = distinct !{!1141, !1142, !"vfprintf.inline: argument 0"}
!1142 = distinct !{!1142, !"vfprintf.inline"}
!1143 = distinct !{!1143, !1142, !"vfprintf.inline: argument 1"}
!1144 = !DILocation(line: 229, column: 3, scope: !1087)
!1145 = !DILocation(line: 0, scope: !1097, inlinedAt: !1139)
!1146 = !DILocation(line: 133, column: 49, scope: !1097, inlinedAt: !1139)
!1147 = !DILocation(line: 232, column: 3, scope: !1087)
!1148 = !DILocation(line: 233, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1087, file: !313, line: 233, column: 7)
!1150 = !DILocation(line: 233, column: 7, scope: !1087)
!1151 = !DILocalVariable(name: "errnum", arg: 1, scope: !1152, file: !313, line: 188, type: !90)
!1152 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !741, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1153)
!1153 = !{!1151, !1154, !1155}
!1154 = !DILocalVariable(name: "s", scope: !1152, file: !313, line: 190, type: !68)
!1155 = !DILocalVariable(name: "errbuf", scope: !1152, file: !313, line: 193, type: !1156)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 1024)
!1159 = !DILocation(line: 0, scope: !1152, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 234, column: 5, scope: !1149)
!1161 = !DILocation(line: 193, column: 3, scope: !1152, inlinedAt: !1160)
!1162 = !DILocation(line: 193, column: 8, scope: !1152, inlinedAt: !1160)
!1163 = !DILocation(line: 195, column: 7, scope: !1152, inlinedAt: !1160)
!1164 = !DILocation(line: 207, column: 9, scope: !1165, inlinedAt: !1160)
!1165 = distinct !DILexicalBlock(scope: !1152, file: !313, line: 207, column: 7)
!1166 = !DILocation(line: 207, column: 7, scope: !1152, inlinedAt: !1160)
!1167 = !DILocation(line: 208, column: 9, scope: !1165, inlinedAt: !1160)
!1168 = !DILocation(line: 208, column: 5, scope: !1165, inlinedAt: !1160)
!1169 = !DILocation(line: 214, column: 3, scope: !1152, inlinedAt: !1160)
!1170 = !DILocation(line: 216, column: 1, scope: !1152, inlinedAt: !1160)
!1171 = !DILocation(line: 234, column: 5, scope: !1149)
!1172 = !DILocation(line: 238, column: 3, scope: !1087)
!1173 = !DILocalVariable(name: "__c", arg: 1, scope: !1174, file: !1175, line: 101, type: !90)
!1174 = distinct !DISubprogram(name: "putc_unlocked", scope: !1175, file: !1175, line: 101, type: !1176, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1178)
!1175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!90, !90, !1101}
!1178 = !{!1173, !1179}
!1179 = !DILocalVariable(name: "__stream", arg: 2, scope: !1174, file: !1175, line: 101, type: !1101)
!1180 = !DILocation(line: 0, scope: !1174, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 238, column: 3, scope: !1087)
!1182 = !DILocation(line: 103, column: 10, scope: !1174, inlinedAt: !1181)
!1183 = !{!1184, !752, i64 40}
!1184 = !{!"_IO_FILE", !808, i64 0, !752, i64 8, !752, i64 16, !752, i64 24, !752, i64 32, !752, i64 40, !752, i64 48, !752, i64 56, !752, i64 64, !752, i64 72, !752, i64 80, !752, i64 88, !752, i64 96, !752, i64 104, !808, i64 112, !808, i64 116, !1185, i64 120, !849, i64 128, !753, i64 130, !753, i64 131, !752, i64 136, !1185, i64 144, !752, i64 152, !752, i64 160, !752, i64 168, !752, i64 176, !1185, i64 184, !808, i64 192, !753, i64 196}
!1185 = !{!"long", !753, i64 0}
!1186 = !{!1184, !752, i64 48}
!1187 = !{!"branch_weights", i32 2000, i32 1}
!1188 = !DILocation(line: 240, column: 3, scope: !1087)
!1189 = !DILocation(line: 241, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1087, file: !313, line: 241, column: 7)
!1191 = !DILocation(line: 241, column: 7, scope: !1087)
!1192 = !DILocation(line: 242, column: 5, scope: !1190)
!1193 = !DILocation(line: 243, column: 1, scope: !1087)
!1194 = !DISubprogram(name: "__vfprintf_chk", scope: !797, file: !797, line: 96, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!90, !1100, !90, !801, !325}
!1197 = !DISubprogram(name: "strerror_r", scope: !924, file: !924, line: 444, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!237, !90, !237, !92}
!1200 = !DISubprogram(name: "__overflow", scope: !324, file: !324, line: 886, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!90, !1101, !90}
!1203 = !DISubprogram(name: "fflush_unlocked", scope: !324, file: !324, line: 239, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!90, !1101}
!1206 = !DISubprogram(name: "fcntl", scope: !1207, file: !1207, line: 149, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1207 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!90, !90, !90, null}
!1210 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1211, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !90, !90, !68, null}
!1213 = !{!1214, !1215, !1216, !1217}
!1214 = !DILocalVariable(name: "status", arg: 1, scope: !1210, file: !313, line: 285, type: !90)
!1215 = !DILocalVariable(name: "errnum", arg: 2, scope: !1210, file: !313, line: 285, type: !90)
!1216 = !DILocalVariable(name: "message", arg: 3, scope: !1210, file: !313, line: 285, type: !68)
!1217 = !DILocalVariable(name: "ap", scope: !1210, file: !313, line: 287, type: !323)
!1218 = !DILocation(line: 0, scope: !1210)
!1219 = !DILocation(line: 287, column: 3, scope: !1210)
!1220 = !DILocation(line: 287, column: 11, scope: !1210)
!1221 = !DILocation(line: 288, column: 3, scope: !1210)
!1222 = !DILocation(line: 289, column: 3, scope: !1210)
!1223 = !DILocation(line: 290, column: 3, scope: !1210)
!1224 = !DILocation(line: 291, column: 1, scope: !1210)
!1225 = !DILocation(line: 0, scope: !320)
!1226 = !DILocation(line: 298, column: 1, scope: !320)
!1227 = !DILocation(line: 302, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1229 = !DILocation(line: 302, column: 7, scope: !320)
!1230 = !DILocation(line: 307, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !313, line: 307, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !313, line: 303, column: 5)
!1233 = !DILocation(line: 307, column: 27, scope: !1231)
!1234 = !DILocation(line: 308, column: 11, scope: !1231)
!1235 = !DILocation(line: 308, column: 28, scope: !1231)
!1236 = !DILocation(line: 308, column: 25, scope: !1231)
!1237 = !DILocation(line: 309, column: 15, scope: !1231)
!1238 = !DILocation(line: 309, column: 33, scope: !1231)
!1239 = !DILocation(line: 310, column: 19, scope: !1231)
!1240 = !DILocation(line: 311, column: 22, scope: !1231)
!1241 = !DILocation(line: 311, column: 56, scope: !1231)
!1242 = !DILocation(line: 307, column: 11, scope: !1232)
!1243 = !DILocation(line: 316, column: 21, scope: !1232)
!1244 = !DILocation(line: 317, column: 23, scope: !1232)
!1245 = !DILocation(line: 318, column: 5, scope: !1232)
!1246 = !DILocation(line: 327, column: 3, scope: !320)
!1247 = !DILocation(line: 331, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1249 = !DILocation(line: 331, column: 7, scope: !320)
!1250 = !DILocation(line: 332, column: 5, scope: !1248)
!1251 = !DILocation(line: 338, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !313, line: 334, column: 5)
!1253 = !DILocation(line: 346, column: 3, scope: !320)
!1254 = !DILocation(line: 350, column: 3, scope: !320)
!1255 = !DILocation(line: 356, column: 1, scope: !320)
!1256 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1257, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !90, !90, !68, !74, !68, null}
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1265}
!1260 = !DILocalVariable(name: "status", arg: 1, scope: !1256, file: !313, line: 359, type: !90)
!1261 = !DILocalVariable(name: "errnum", arg: 2, scope: !1256, file: !313, line: 359, type: !90)
!1262 = !DILocalVariable(name: "file_name", arg: 3, scope: !1256, file: !313, line: 359, type: !68)
!1263 = !DILocalVariable(name: "line_number", arg: 4, scope: !1256, file: !313, line: 360, type: !74)
!1264 = !DILocalVariable(name: "message", arg: 5, scope: !1256, file: !313, line: 360, type: !68)
!1265 = !DILocalVariable(name: "ap", scope: !1256, file: !313, line: 362, type: !323)
!1266 = !DILocation(line: 0, scope: !1256)
!1267 = !DILocation(line: 362, column: 3, scope: !1256)
!1268 = !DILocation(line: 362, column: 11, scope: !1256)
!1269 = !DILocation(line: 363, column: 3, scope: !1256)
!1270 = !DILocation(line: 364, column: 3, scope: !1256)
!1271 = !DILocation(line: 366, column: 3, scope: !1256)
!1272 = !DILocation(line: 367, column: 1, scope: !1256)
!1273 = distinct !DISubprogram(name: "getprogname", scope: !671, file: !671, line: 54, type: !1274, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !795)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!68}
!1276 = !DILocation(line: 58, column: 10, scope: !1273)
!1277 = !DILocation(line: 58, column: 3, scope: !1273)
!1278 = distinct !DISubprogram(name: "parse_long_options", scope: !369, file: !369, line: 45, type: !1279, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1282)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{null, !90, !960, !68, !68, !68, !1281, null}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1293}
!1283 = !DILocalVariable(name: "argc", arg: 1, scope: !1278, file: !369, line: 45, type: !90)
!1284 = !DILocalVariable(name: "argv", arg: 2, scope: !1278, file: !369, line: 46, type: !960)
!1285 = !DILocalVariable(name: "command_name", arg: 3, scope: !1278, file: !369, line: 47, type: !68)
!1286 = !DILocalVariable(name: "package", arg: 4, scope: !1278, file: !369, line: 48, type: !68)
!1287 = !DILocalVariable(name: "version", arg: 5, scope: !1278, file: !369, line: 49, type: !68)
!1288 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1278, file: !369, line: 50, type: !1281)
!1289 = !DILocalVariable(name: "saved_opterr", scope: !1278, file: !369, line: 53, type: !90)
!1290 = !DILocalVariable(name: "c", scope: !1291, file: !369, line: 60, type: !90)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !369, line: 59, column: 5)
!1292 = distinct !DILexicalBlock(scope: !1278, file: !369, line: 58, column: 7)
!1293 = !DILocalVariable(name: "authors", scope: !1294, file: !369, line: 71, type: !1298)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !369, line: 70, column: 15)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !369, line: 64, column: 13)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !369, line: 62, column: 9)
!1297 = distinct !DILexicalBlock(scope: !1291, file: !369, line: 61, column: 11)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !1299)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 14, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1301, baseType: !1302)
!1301 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1303)
!1303 = !{!1304, !1305, !1306, !1307, !1308}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1302, file: !1301, line: 71, baseType: !89, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1302, file: !1301, line: 71, baseType: !89, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1302, file: !1301, line: 71, baseType: !89, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1302, file: !1301, line: 71, baseType: !90, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1302, file: !1301, line: 71, baseType: !90, size: 32, offset: 224)
!1309 = !DILocation(line: 0, scope: !1278)
!1310 = !DILocation(line: 53, column: 22, scope: !1278)
!1311 = !DILocation(line: 56, column: 10, scope: !1278)
!1312 = !DILocation(line: 58, column: 12, scope: !1292)
!1313 = !DILocation(line: 58, column: 7, scope: !1278)
!1314 = !DILocation(line: 60, column: 15, scope: !1291)
!1315 = !DILocation(line: 0, scope: !1291)
!1316 = !DILocation(line: 61, column: 11, scope: !1291)
!1317 = !DILocation(line: 66, column: 15, scope: !1295)
!1318 = !DILocation(line: 67, column: 15, scope: !1295)
!1319 = !DILocation(line: 71, column: 17, scope: !1294)
!1320 = !DILocation(line: 71, column: 25, scope: !1294)
!1321 = !DILocation(line: 72, column: 17, scope: !1294)
!1322 = !DILocation(line: 73, column: 33, scope: !1294)
!1323 = !DILocation(line: 73, column: 17, scope: !1294)
!1324 = !DILocation(line: 74, column: 17, scope: !1294)
!1325 = !DILocation(line: 85, column: 10, scope: !1278)
!1326 = !DILocation(line: 89, column: 10, scope: !1278)
!1327 = !DILocation(line: 90, column: 1, scope: !1278)
!1328 = !DISubprogram(name: "getopt_long", scope: !383, file: !383, line: 66, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!90, !90, !1331, !68, !1333, !388}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1334 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !369, file: !369, line: 98, type: !1335, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !372, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !90, !960, !68, !68, !68, !216, !1281, null}
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1338 = !DILocalVariable(name: "argc", arg: 1, scope: !1334, file: !369, line: 98, type: !90)
!1339 = !DILocalVariable(name: "argv", arg: 2, scope: !1334, file: !369, line: 99, type: !960)
!1340 = !DILocalVariable(name: "command_name", arg: 3, scope: !1334, file: !369, line: 100, type: !68)
!1341 = !DILocalVariable(name: "package", arg: 4, scope: !1334, file: !369, line: 101, type: !68)
!1342 = !DILocalVariable(name: "version", arg: 5, scope: !1334, file: !369, line: 102, type: !68)
!1343 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1334, file: !369, line: 103, type: !216)
!1344 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1334, file: !369, line: 104, type: !1281)
!1345 = !DILocalVariable(name: "saved_opterr", scope: !1334, file: !369, line: 107, type: !90)
!1346 = !DILocalVariable(name: "optstring", scope: !1334, file: !369, line: 112, type: !68)
!1347 = !DILocalVariable(name: "c", scope: !1334, file: !369, line: 114, type: !90)
!1348 = !DILocalVariable(name: "authors", scope: !1349, file: !369, line: 125, type: !1298)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !369, line: 124, column: 11)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !369, line: 118, column: 9)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !369, line: 116, column: 5)
!1352 = distinct !DILexicalBlock(scope: !1334, file: !369, line: 115, column: 7)
!1353 = !DILocation(line: 0, scope: !1334)
!1354 = !DILocation(line: 107, column: 22, scope: !1334)
!1355 = !DILocation(line: 110, column: 10, scope: !1334)
!1356 = !DILocation(line: 112, column: 27, scope: !1334)
!1357 = !DILocation(line: 114, column: 11, scope: !1334)
!1358 = !DILocation(line: 115, column: 7, scope: !1334)
!1359 = !DILocation(line: 125, column: 13, scope: !1349)
!1360 = !DILocation(line: 125, column: 21, scope: !1349)
!1361 = !DILocation(line: 126, column: 13, scope: !1349)
!1362 = !DILocation(line: 127, column: 29, scope: !1349)
!1363 = !DILocation(line: 127, column: 13, scope: !1349)
!1364 = !DILocation(line: 128, column: 13, scope: !1349)
!1365 = !DILocation(line: 132, column: 26, scope: !1350)
!1366 = !DILocation(line: 133, column: 11, scope: !1350)
!1367 = !DILocation(line: 0, scope: !1350)
!1368 = !DILocation(line: 138, column: 10, scope: !1334)
!1369 = !DILocation(line: 139, column: 1, scope: !1334)
!1370 = distinct !DISubprogram(name: "set_program_name", scope: !393, file: !393, line: 37, type: !761, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DILocalVariable(name: "argv0", arg: 1, scope: !1370, file: !393, line: 37, type: !68)
!1373 = !DILocalVariable(name: "slash", scope: !1370, file: !393, line: 44, type: !68)
!1374 = !DILocalVariable(name: "base", scope: !1370, file: !393, line: 45, type: !68)
!1375 = !DILocation(line: 0, scope: !1370)
!1376 = !DILocation(line: 44, column: 23, scope: !1370)
!1377 = !DILocation(line: 45, column: 22, scope: !1370)
!1378 = !DILocation(line: 46, column: 17, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1370, file: !393, line: 46, column: 7)
!1380 = !DILocation(line: 46, column: 9, scope: !1379)
!1381 = !DILocation(line: 46, column: 25, scope: !1379)
!1382 = !DILocation(line: 46, column: 40, scope: !1379)
!1383 = !DILocalVariable(name: "__s1", arg: 1, scope: !1384, file: !820, line: 974, type: !955)
!1384 = distinct !DISubprogram(name: "memeq", scope: !820, file: !820, line: 974, type: !1385, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!216, !955, !955, !92}
!1387 = !{!1383, !1388, !1389}
!1388 = !DILocalVariable(name: "__s2", arg: 2, scope: !1384, file: !820, line: 974, type: !955)
!1389 = !DILocalVariable(name: "__n", arg: 3, scope: !1384, file: !820, line: 974, type: !92)
!1390 = !DILocation(line: 0, scope: !1384, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 46, column: 28, scope: !1379)
!1392 = !DILocation(line: 976, column: 11, scope: !1384, inlinedAt: !1391)
!1393 = !DILocation(line: 976, column: 10, scope: !1384, inlinedAt: !1391)
!1394 = !DILocation(line: 46, column: 7, scope: !1370)
!1395 = !DILocation(line: 49, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !393, line: 49, column: 11)
!1397 = distinct !DILexicalBlock(scope: !1379, file: !393, line: 47, column: 5)
!1398 = !DILocation(line: 49, column: 36, scope: !1396)
!1399 = !DILocation(line: 49, column: 11, scope: !1397)
!1400 = !DILocation(line: 65, column: 16, scope: !1370)
!1401 = !DILocation(line: 71, column: 27, scope: !1370)
!1402 = !DILocation(line: 74, column: 33, scope: !1370)
!1403 = !DILocation(line: 76, column: 1, scope: !1370)
!1404 = !DISubprogram(name: "strrchr", scope: !924, file: !924, line: 273, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1405 = !DILocation(line: 0, scope: !402)
!1406 = !DILocation(line: 40, column: 29, scope: !402)
!1407 = !DILocation(line: 41, column: 19, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !402, file: !403, line: 41, column: 7)
!1409 = !DILocation(line: 41, column: 7, scope: !402)
!1410 = !DILocation(line: 47, column: 3, scope: !402)
!1411 = !DILocation(line: 48, column: 3, scope: !402)
!1412 = !DILocation(line: 48, column: 13, scope: !402)
!1413 = !DILocalVariable(name: "ps", arg: 1, scope: !1414, file: !1415, line: 1135, type: !1418)
!1414 = distinct !DISubprogram(name: "mbszero", scope: !1415, file: !1415, line: 1135, type: !1416, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1419)
!1415 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !1418}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1419 = !{!1413}
!1420 = !DILocation(line: 0, scope: !1414, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 48, column: 18, scope: !402)
!1422 = !DILocalVariable(name: "__dest", arg: 1, scope: !1423, file: !1424, line: 57, type: !89)
!1423 = distinct !DISubprogram(name: "memset", scope: !1424, file: !1424, line: 57, type: !1425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1427)
!1424 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!89, !89, !90, !92}
!1427 = !{!1422, !1428, !1429}
!1428 = !DILocalVariable(name: "__ch", arg: 2, scope: !1423, file: !1424, line: 57, type: !90)
!1429 = !DILocalVariable(name: "__len", arg: 3, scope: !1423, file: !1424, line: 57, type: !92)
!1430 = !DILocation(line: 0, scope: !1423, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 1137, column: 3, scope: !1414, inlinedAt: !1421)
!1432 = !DILocation(line: 59, column: 10, scope: !1423, inlinedAt: !1431)
!1433 = !DILocation(line: 49, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !402, file: !403, line: 49, column: 7)
!1435 = !DILocation(line: 49, column: 39, scope: !1434)
!1436 = !DILocation(line: 49, column: 44, scope: !1434)
!1437 = !DILocation(line: 54, column: 1, scope: !402)
!1438 = !DISubprogram(name: "mbrtoc32", scope: !414, file: !414, line: 57, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!92, !1441, !801, !92, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1442)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1418)
!1444 = distinct !DISubprogram(name: "clone_quoting_options", scope: !433, file: !433, line: 113, type: !1445, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1448)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1447, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1448 = !{!1449, !1450, !1451}
!1449 = !DILocalVariable(name: "o", arg: 1, scope: !1444, file: !433, line: 113, type: !1447)
!1450 = !DILocalVariable(name: "saved_errno", scope: !1444, file: !433, line: 115, type: !90)
!1451 = !DILocalVariable(name: "p", scope: !1444, file: !433, line: 116, type: !1447)
!1452 = !DILocation(line: 0, scope: !1444)
!1453 = !DILocation(line: 115, column: 21, scope: !1444)
!1454 = !DILocation(line: 116, column: 40, scope: !1444)
!1455 = !DILocation(line: 116, column: 31, scope: !1444)
!1456 = !DILocation(line: 118, column: 9, scope: !1444)
!1457 = !DILocation(line: 119, column: 3, scope: !1444)
!1458 = distinct !DISubprogram(name: "get_quoting_style", scope: !433, file: !433, line: 124, type: !1459, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1463)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!456, !1461}
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!1463 = !{!1464}
!1464 = !DILocalVariable(name: "o", arg: 1, scope: !1458, file: !433, line: 124, type: !1461)
!1465 = !DILocation(line: 0, scope: !1458)
!1466 = !DILocation(line: 126, column: 11, scope: !1458)
!1467 = !DILocation(line: 126, column: 46, scope: !1458)
!1468 = !{!1469, !753, i64 0}
!1469 = !{!"quoting_options", !753, i64 0, !808, i64 4, !753, i64 8, !752, i64 40, !752, i64 48}
!1470 = !DILocation(line: 126, column: 3, scope: !1458)
!1471 = distinct !DISubprogram(name: "set_quoting_style", scope: !433, file: !433, line: 132, type: !1472, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1474)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{null, !1447, !456}
!1474 = !{!1475, !1476}
!1475 = !DILocalVariable(name: "o", arg: 1, scope: !1471, file: !433, line: 132, type: !1447)
!1476 = !DILocalVariable(name: "s", arg: 2, scope: !1471, file: !433, line: 132, type: !456)
!1477 = !DILocation(line: 0, scope: !1471)
!1478 = !DILocation(line: 134, column: 4, scope: !1471)
!1479 = !DILocation(line: 134, column: 45, scope: !1471)
!1480 = !DILocation(line: 135, column: 1, scope: !1471)
!1481 = distinct !DISubprogram(name: "set_char_quoting", scope: !433, file: !433, line: 143, type: !1482, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!90, !1447, !4, !90}
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1491, !1492}
!1485 = !DILocalVariable(name: "o", arg: 1, scope: !1481, file: !433, line: 143, type: !1447)
!1486 = !DILocalVariable(name: "c", arg: 2, scope: !1481, file: !433, line: 143, type: !4)
!1487 = !DILocalVariable(name: "i", arg: 3, scope: !1481, file: !433, line: 143, type: !90)
!1488 = !DILocalVariable(name: "uc", scope: !1481, file: !433, line: 145, type: !95)
!1489 = !DILocalVariable(name: "p", scope: !1481, file: !433, line: 146, type: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1491 = !DILocalVariable(name: "shift", scope: !1481, file: !433, line: 148, type: !90)
!1492 = !DILocalVariable(name: "r", scope: !1481, file: !433, line: 149, type: !74)
!1493 = !DILocation(line: 0, scope: !1481)
!1494 = !DILocation(line: 147, column: 6, scope: !1481)
!1495 = !DILocation(line: 147, column: 41, scope: !1481)
!1496 = !DILocation(line: 147, column: 62, scope: !1481)
!1497 = !DILocation(line: 147, column: 57, scope: !1481)
!1498 = !DILocation(line: 148, column: 15, scope: !1481)
!1499 = !DILocation(line: 149, column: 21, scope: !1481)
!1500 = !DILocation(line: 149, column: 24, scope: !1481)
!1501 = !DILocation(line: 149, column: 34, scope: !1481)
!1502 = !DILocation(line: 150, column: 19, scope: !1481)
!1503 = !DILocation(line: 150, column: 24, scope: !1481)
!1504 = !DILocation(line: 150, column: 6, scope: !1481)
!1505 = !DILocation(line: 151, column: 3, scope: !1481)
!1506 = distinct !DISubprogram(name: "set_quoting_flags", scope: !433, file: !433, line: 159, type: !1507, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1509)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!90, !1447, !90}
!1509 = !{!1510, !1511, !1512}
!1510 = !DILocalVariable(name: "o", arg: 1, scope: !1506, file: !433, line: 159, type: !1447)
!1511 = !DILocalVariable(name: "i", arg: 2, scope: !1506, file: !433, line: 159, type: !90)
!1512 = !DILocalVariable(name: "r", scope: !1506, file: !433, line: 163, type: !90)
!1513 = !DILocation(line: 0, scope: !1506)
!1514 = !DILocation(line: 161, column: 8, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1506, file: !433, line: 161, column: 7)
!1516 = !DILocation(line: 161, column: 7, scope: !1506)
!1517 = !DILocation(line: 163, column: 14, scope: !1506)
!1518 = !{!1469, !808, i64 4}
!1519 = !DILocation(line: 164, column: 12, scope: !1506)
!1520 = !DILocation(line: 165, column: 3, scope: !1506)
!1521 = distinct !DISubprogram(name: "set_custom_quoting", scope: !433, file: !433, line: 169, type: !1522, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !1447, !68, !68}
!1524 = !{!1525, !1526, !1527}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1521, file: !433, line: 169, type: !1447)
!1526 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1521, file: !433, line: 170, type: !68)
!1527 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1521, file: !433, line: 170, type: !68)
!1528 = !DILocation(line: 0, scope: !1521)
!1529 = !DILocation(line: 172, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !433, line: 172, column: 7)
!1531 = !DILocation(line: 172, column: 7, scope: !1521)
!1532 = !DILocation(line: 174, column: 12, scope: !1521)
!1533 = !DILocation(line: 175, column: 8, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1521, file: !433, line: 175, column: 7)
!1535 = !DILocation(line: 175, column: 19, scope: !1534)
!1536 = !DILocation(line: 176, column: 5, scope: !1534)
!1537 = !DILocation(line: 177, column: 6, scope: !1521)
!1538 = !DILocation(line: 177, column: 17, scope: !1521)
!1539 = !{!1469, !752, i64 40}
!1540 = !DILocation(line: 178, column: 6, scope: !1521)
!1541 = !DILocation(line: 178, column: 18, scope: !1521)
!1542 = !{!1469, !752, i64 48}
!1543 = !DILocation(line: 179, column: 1, scope: !1521)
!1544 = !DISubprogram(name: "abort", scope: !931, file: !931, line: 598, type: !365, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !795)
!1545 = distinct !DISubprogram(name: "quotearg_buffer", scope: !433, file: !433, line: 774, type: !1546, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!92, !237, !92, !68, !92, !1461}
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556}
!1549 = !DILocalVariable(name: "buffer", arg: 1, scope: !1545, file: !433, line: 774, type: !237)
!1550 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1545, file: !433, line: 774, type: !92)
!1551 = !DILocalVariable(name: "arg", arg: 3, scope: !1545, file: !433, line: 775, type: !68)
!1552 = !DILocalVariable(name: "argsize", arg: 4, scope: !1545, file: !433, line: 775, type: !92)
!1553 = !DILocalVariable(name: "o", arg: 5, scope: !1545, file: !433, line: 776, type: !1461)
!1554 = !DILocalVariable(name: "p", scope: !1545, file: !433, line: 778, type: !1461)
!1555 = !DILocalVariable(name: "saved_errno", scope: !1545, file: !433, line: 779, type: !90)
!1556 = !DILocalVariable(name: "r", scope: !1545, file: !433, line: 780, type: !92)
!1557 = !DILocation(line: 0, scope: !1545)
!1558 = !DILocation(line: 778, column: 37, scope: !1545)
!1559 = !DILocation(line: 779, column: 21, scope: !1545)
!1560 = !DILocation(line: 781, column: 43, scope: !1545)
!1561 = !DILocation(line: 781, column: 53, scope: !1545)
!1562 = !DILocation(line: 781, column: 63, scope: !1545)
!1563 = !DILocation(line: 782, column: 43, scope: !1545)
!1564 = !DILocation(line: 782, column: 58, scope: !1545)
!1565 = !DILocation(line: 780, column: 14, scope: !1545)
!1566 = !DILocation(line: 783, column: 9, scope: !1545)
!1567 = !DILocation(line: 784, column: 3, scope: !1545)
!1568 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !433, file: !433, line: 251, type: !1569, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1573)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!92, !237, !92, !68, !92, !456, !90, !1571, !68, !68}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1598, !1600, !1603, !1604, !1605, !1606, !1609, !1610, !1613, !1617, !1618, !1626, !1629, !1630, !1632, !1633, !1634, !1635}
!1574 = !DILocalVariable(name: "buffer", arg: 1, scope: !1568, file: !433, line: 251, type: !237)
!1575 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1568, file: !433, line: 251, type: !92)
!1576 = !DILocalVariable(name: "arg", arg: 3, scope: !1568, file: !433, line: 252, type: !68)
!1577 = !DILocalVariable(name: "argsize", arg: 4, scope: !1568, file: !433, line: 252, type: !92)
!1578 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1568, file: !433, line: 253, type: !456)
!1579 = !DILocalVariable(name: "flags", arg: 6, scope: !1568, file: !433, line: 253, type: !90)
!1580 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1568, file: !433, line: 254, type: !1571)
!1581 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1568, file: !433, line: 255, type: !68)
!1582 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1568, file: !433, line: 256, type: !68)
!1583 = !DILocalVariable(name: "unibyte_locale", scope: !1568, file: !433, line: 258, type: !216)
!1584 = !DILocalVariable(name: "len", scope: !1568, file: !433, line: 260, type: !92)
!1585 = !DILocalVariable(name: "orig_buffersize", scope: !1568, file: !433, line: 261, type: !92)
!1586 = !DILocalVariable(name: "quote_string", scope: !1568, file: !433, line: 262, type: !68)
!1587 = !DILocalVariable(name: "quote_string_len", scope: !1568, file: !433, line: 263, type: !92)
!1588 = !DILocalVariable(name: "backslash_escapes", scope: !1568, file: !433, line: 264, type: !216)
!1589 = !DILocalVariable(name: "elide_outer_quotes", scope: !1568, file: !433, line: 265, type: !216)
!1590 = !DILocalVariable(name: "encountered_single_quote", scope: !1568, file: !433, line: 266, type: !216)
!1591 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1568, file: !433, line: 267, type: !216)
!1592 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1568, file: !433, line: 309, type: !216)
!1593 = !DILocalVariable(name: "lq", scope: !1594, file: !433, line: 361, type: !68)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !433, line: 361, column: 11)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !433, line: 360, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !433, line: 333, column: 7)
!1597 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 312, column: 5)
!1598 = !DILocalVariable(name: "i", scope: !1599, file: !433, line: 395, type: !92)
!1599 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 395, column: 3)
!1600 = !DILocalVariable(name: "is_right_quote", scope: !1601, file: !433, line: 397, type: !216)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !433, line: 396, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !433, line: 395, column: 3)
!1603 = !DILocalVariable(name: "escaping", scope: !1601, file: !433, line: 398, type: !216)
!1604 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1601, file: !433, line: 399, type: !216)
!1605 = !DILocalVariable(name: "c", scope: !1601, file: !433, line: 417, type: !95)
!1606 = !DILocalVariable(name: "m", scope: !1607, file: !433, line: 598, type: !92)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 596, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 419, column: 9)
!1609 = !DILocalVariable(name: "printable", scope: !1607, file: !433, line: 600, type: !216)
!1610 = !DILocalVariable(name: "mbs", scope: !1611, file: !433, line: 609, type: !517)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !433, line: 608, column: 15)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 602, column: 17)
!1613 = !DILocalVariable(name: "w", scope: !1614, file: !433, line: 618, type: !413)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !433, line: 617, column: 19)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !433, line: 616, column: 17)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !433, line: 616, column: 17)
!1617 = !DILocalVariable(name: "bytes", scope: !1614, file: !433, line: 619, type: !92)
!1618 = !DILocalVariable(name: "j", scope: !1619, file: !433, line: 648, type: !92)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !433, line: 648, column: 29)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !433, line: 647, column: 27)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !433, line: 645, column: 29)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !433, line: 636, column: 23)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !433, line: 628, column: 30)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !433, line: 623, column: 30)
!1625 = distinct !DILexicalBlock(scope: !1614, file: !433, line: 621, column: 25)
!1626 = !DILocalVariable(name: "ilim", scope: !1627, file: !433, line: 674, type: !92)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !433, line: 671, column: 15)
!1628 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 670, column: 17)
!1629 = !DILabel(scope: !1568, name: "process_input", file: !433, line: 308)
!1630 = !DILabel(scope: !1631, name: "c_and_shell_escape", file: !433, line: 502)
!1631 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 478, column: 9)
!1632 = !DILabel(scope: !1631, name: "c_escape", file: !433, line: 507)
!1633 = !DILabel(scope: !1601, name: "store_escape", file: !433, line: 709)
!1634 = !DILabel(scope: !1601, name: "store_c", file: !433, line: 712)
!1635 = !DILabel(scope: !1568, name: "force_outer_quoting_style", file: !433, line: 753)
!1636 = !DILocation(line: 0, scope: !1568)
!1637 = !DILocation(line: 258, column: 25, scope: !1568)
!1638 = !DILocation(line: 258, column: 36, scope: !1568)
!1639 = !DILocation(line: 267, column: 3, scope: !1568)
!1640 = !DILocation(line: 261, column: 10, scope: !1568)
!1641 = !DILocation(line: 262, column: 15, scope: !1568)
!1642 = !DILocation(line: 263, column: 10, scope: !1568)
!1643 = !DILocation(line: 308, column: 2, scope: !1568)
!1644 = !DILocation(line: 311, column: 3, scope: !1568)
!1645 = !DILocation(line: 318, column: 11, scope: !1597)
!1646 = !DILocation(line: 319, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !433, line: 319, column: 9)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !433, line: 319, column: 9)
!1649 = distinct !DILexicalBlock(scope: !1597, file: !433, line: 318, column: 11)
!1650 = !DILocation(line: 319, column: 9, scope: !1648)
!1651 = !DILocation(line: 0, scope: !508, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 357, column: 26, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !433, line: 335, column: 11)
!1654 = distinct !DILexicalBlock(scope: !1596, file: !433, line: 334, column: 13)
!1655 = !DILocation(line: 199, column: 29, scope: !508, inlinedAt: !1652)
!1656 = !DILocation(line: 201, column: 19, scope: !1657, inlinedAt: !1652)
!1657 = distinct !DILexicalBlock(scope: !508, file: !433, line: 201, column: 7)
!1658 = !DILocation(line: 201, column: 7, scope: !508, inlinedAt: !1652)
!1659 = !DILocation(line: 229, column: 3, scope: !508, inlinedAt: !1652)
!1660 = !DILocation(line: 230, column: 3, scope: !508, inlinedAt: !1652)
!1661 = !DILocation(line: 230, column: 13, scope: !508, inlinedAt: !1652)
!1662 = !DILocalVariable(name: "ps", arg: 1, scope: !1663, file: !1415, line: 1135, type: !1666)
!1663 = distinct !DISubprogram(name: "mbszero", scope: !1415, file: !1415, line: 1135, type: !1664, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1667)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1667 = !{!1662}
!1668 = !DILocation(line: 0, scope: !1663, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 230, column: 18, scope: !508, inlinedAt: !1652)
!1670 = !DILocalVariable(name: "__dest", arg: 1, scope: !1671, file: !1424, line: 57, type: !89)
!1671 = distinct !DISubprogram(name: "memset", scope: !1424, file: !1424, line: 57, type: !1425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1672)
!1672 = !{!1670, !1673, !1674}
!1673 = !DILocalVariable(name: "__ch", arg: 2, scope: !1671, file: !1424, line: 57, type: !90)
!1674 = !DILocalVariable(name: "__len", arg: 3, scope: !1671, file: !1424, line: 57, type: !92)
!1675 = !DILocation(line: 0, scope: !1671, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 1137, column: 3, scope: !1663, inlinedAt: !1669)
!1677 = !DILocation(line: 59, column: 10, scope: !1671, inlinedAt: !1676)
!1678 = !DILocation(line: 231, column: 7, scope: !1679, inlinedAt: !1652)
!1679 = distinct !DILexicalBlock(scope: !508, file: !433, line: 231, column: 7)
!1680 = !DILocation(line: 231, column: 40, scope: !1679, inlinedAt: !1652)
!1681 = !DILocation(line: 231, column: 45, scope: !1679, inlinedAt: !1652)
!1682 = !DILocation(line: 235, column: 1, scope: !508, inlinedAt: !1652)
!1683 = !DILocation(line: 0, scope: !508, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 358, column: 27, scope: !1653)
!1685 = !DILocation(line: 199, column: 29, scope: !508, inlinedAt: !1684)
!1686 = !DILocation(line: 201, column: 19, scope: !1657, inlinedAt: !1684)
!1687 = !DILocation(line: 201, column: 7, scope: !508, inlinedAt: !1684)
!1688 = !DILocation(line: 229, column: 3, scope: !508, inlinedAt: !1684)
!1689 = !DILocation(line: 230, column: 3, scope: !508, inlinedAt: !1684)
!1690 = !DILocation(line: 230, column: 13, scope: !508, inlinedAt: !1684)
!1691 = !DILocation(line: 0, scope: !1663, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 230, column: 18, scope: !508, inlinedAt: !1684)
!1693 = !DILocation(line: 0, scope: !1671, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 1137, column: 3, scope: !1663, inlinedAt: !1692)
!1695 = !DILocation(line: 59, column: 10, scope: !1671, inlinedAt: !1694)
!1696 = !DILocation(line: 231, column: 7, scope: !1679, inlinedAt: !1684)
!1697 = !DILocation(line: 231, column: 40, scope: !1679, inlinedAt: !1684)
!1698 = !DILocation(line: 231, column: 45, scope: !1679, inlinedAt: !1684)
!1699 = !DILocation(line: 235, column: 1, scope: !508, inlinedAt: !1684)
!1700 = !DILocation(line: 360, column: 13, scope: !1596)
!1701 = !DILocation(line: 0, scope: !1594)
!1702 = !DILocation(line: 361, column: 45, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1594, file: !433, line: 361, column: 11)
!1704 = !DILocation(line: 361, column: 11, scope: !1594)
!1705 = !DILocation(line: 362, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !433, line: 362, column: 13)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !433, line: 362, column: 13)
!1708 = !DILocation(line: 362, column: 13, scope: !1707)
!1709 = !DILocation(line: 361, column: 52, scope: !1703)
!1710 = distinct !{!1710, !1704, !1711, !854}
!1711 = !DILocation(line: 362, column: 13, scope: !1594)
!1712 = !DILocation(line: 260, column: 10, scope: !1568)
!1713 = !DILocation(line: 365, column: 28, scope: !1596)
!1714 = !DILocation(line: 367, column: 7, scope: !1597)
!1715 = !DILocation(line: 370, column: 7, scope: !1597)
!1716 = !DILocation(line: 376, column: 11, scope: !1597)
!1717 = !DILocation(line: 381, column: 11, scope: !1597)
!1718 = !DILocation(line: 382, column: 9, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !433, line: 382, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !433, line: 382, column: 9)
!1721 = distinct !DILexicalBlock(scope: !1597, file: !433, line: 381, column: 11)
!1722 = !DILocation(line: 382, column: 9, scope: !1720)
!1723 = !DILocation(line: 389, column: 7, scope: !1597)
!1724 = !DILocation(line: 392, column: 7, scope: !1597)
!1725 = !DILocation(line: 0, scope: !1599)
!1726 = !DILocation(line: 395, column: 8, scope: !1599)
!1727 = !DILocation(line: 395, scope: !1599)
!1728 = !DILocation(line: 395, column: 34, scope: !1602)
!1729 = !DILocation(line: 395, column: 26, scope: !1602)
!1730 = !DILocation(line: 395, column: 48, scope: !1602)
!1731 = !DILocation(line: 395, column: 55, scope: !1602)
!1732 = !DILocation(line: 395, column: 3, scope: !1599)
!1733 = !DILocation(line: 395, column: 67, scope: !1602)
!1734 = !DILocation(line: 0, scope: !1601)
!1735 = !DILocation(line: 402, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 401, column: 11)
!1737 = !DILocation(line: 404, column: 17, scope: !1736)
!1738 = !DILocation(line: 405, column: 39, scope: !1736)
!1739 = !DILocation(line: 409, column: 32, scope: !1736)
!1740 = !DILocation(line: 405, column: 19, scope: !1736)
!1741 = !DILocation(line: 405, column: 15, scope: !1736)
!1742 = !DILocation(line: 410, column: 11, scope: !1736)
!1743 = !DILocation(line: 410, column: 25, scope: !1736)
!1744 = !DILocalVariable(name: "__s1", arg: 1, scope: !1745, file: !820, line: 974, type: !955)
!1745 = distinct !DISubprogram(name: "memeq", scope: !820, file: !820, line: 974, type: !1385, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1746)
!1746 = !{!1744, !1747, !1748}
!1747 = !DILocalVariable(name: "__s2", arg: 2, scope: !1745, file: !820, line: 974, type: !955)
!1748 = !DILocalVariable(name: "__n", arg: 3, scope: !1745, file: !820, line: 974, type: !92)
!1749 = !DILocation(line: 0, scope: !1745, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 410, column: 14, scope: !1736)
!1751 = !DILocation(line: 976, column: 11, scope: !1745, inlinedAt: !1750)
!1752 = !DILocation(line: 976, column: 10, scope: !1745, inlinedAt: !1750)
!1753 = !DILocation(line: 401, column: 11, scope: !1601)
!1754 = !DILocation(line: 417, column: 25, scope: !1601)
!1755 = !DILocation(line: 418, column: 7, scope: !1601)
!1756 = !DILocation(line: 421, column: 15, scope: !1608)
!1757 = !DILocation(line: 423, column: 15, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !433, line: 423, column: 15)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !433, line: 422, column: 13)
!1760 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 421, column: 15)
!1761 = !DILocation(line: 423, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !433, line: 423, column: 15)
!1763 = !DILocation(line: 423, column: 15, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !433, line: 423, column: 15)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !433, line: 423, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !433, line: 423, column: 15)
!1767 = !DILocation(line: 423, column: 15, scope: !1765)
!1768 = !DILocation(line: 423, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !433, line: 423, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !433, line: 423, column: 15)
!1771 = !DILocation(line: 423, column: 15, scope: !1770)
!1772 = !DILocation(line: 423, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !433, line: 423, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1766, file: !433, line: 423, column: 15)
!1775 = !DILocation(line: 423, column: 15, scope: !1774)
!1776 = !DILocation(line: 423, column: 15, scope: !1766)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !433, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1758, file: !433, line: 423, column: 15)
!1780 = !DILocation(line: 423, column: 15, scope: !1779)
!1781 = !DILocation(line: 431, column: 19, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1759, file: !433, line: 430, column: 19)
!1783 = !DILocation(line: 431, column: 24, scope: !1782)
!1784 = !DILocation(line: 431, column: 28, scope: !1782)
!1785 = !DILocation(line: 431, column: 38, scope: !1782)
!1786 = !DILocation(line: 431, column: 48, scope: !1782)
!1787 = !DILocation(line: 431, column: 59, scope: !1782)
!1788 = !DILocation(line: 433, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !433, line: 433, column: 19)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !433, line: 433, column: 19)
!1791 = distinct !DILexicalBlock(scope: !1782, file: !433, line: 432, column: 17)
!1792 = !DILocation(line: 433, column: 19, scope: !1790)
!1793 = !DILocation(line: 434, column: 19, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !433, line: 434, column: 19)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !433, line: 434, column: 19)
!1796 = !DILocation(line: 434, column: 19, scope: !1795)
!1797 = !DILocation(line: 435, column: 17, scope: !1791)
!1798 = !DILocation(line: 442, column: 20, scope: !1760)
!1799 = !DILocation(line: 447, column: 11, scope: !1608)
!1800 = !DILocation(line: 450, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 448, column: 13)
!1802 = !DILocation(line: 456, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1801, file: !433, line: 455, column: 19)
!1804 = !DILocation(line: 456, column: 24, scope: !1803)
!1805 = !DILocation(line: 456, column: 28, scope: !1803)
!1806 = !DILocation(line: 456, column: 38, scope: !1803)
!1807 = !DILocation(line: 456, column: 47, scope: !1803)
!1808 = !DILocation(line: 456, column: 41, scope: !1803)
!1809 = !DILocation(line: 456, column: 52, scope: !1803)
!1810 = !DILocation(line: 455, column: 19, scope: !1801)
!1811 = !DILocation(line: 457, column: 25, scope: !1803)
!1812 = !DILocation(line: 457, column: 17, scope: !1803)
!1813 = !DILocation(line: 464, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1803, file: !433, line: 458, column: 19)
!1815 = !DILocation(line: 468, column: 21, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 468, column: 21)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !433, line: 468, column: 21)
!1818 = !DILocation(line: 468, column: 21, scope: !1817)
!1819 = !DILocation(line: 469, column: 21, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !433, line: 469, column: 21)
!1821 = distinct !DILexicalBlock(scope: !1814, file: !433, line: 469, column: 21)
!1822 = !DILocation(line: 469, column: 21, scope: !1821)
!1823 = !DILocation(line: 470, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !433, line: 470, column: 21)
!1825 = distinct !DILexicalBlock(scope: !1814, file: !433, line: 470, column: 21)
!1826 = !DILocation(line: 470, column: 21, scope: !1825)
!1827 = !DILocation(line: 471, column: 21, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !433, line: 471, column: 21)
!1829 = distinct !DILexicalBlock(scope: !1814, file: !433, line: 471, column: 21)
!1830 = !DILocation(line: 471, column: 21, scope: !1829)
!1831 = !DILocation(line: 472, column: 21, scope: !1814)
!1832 = !DILocation(line: 482, column: 33, scope: !1631)
!1833 = !DILocation(line: 483, column: 33, scope: !1631)
!1834 = !DILocation(line: 485, column: 33, scope: !1631)
!1835 = !DILocation(line: 486, column: 33, scope: !1631)
!1836 = !DILocation(line: 487, column: 33, scope: !1631)
!1837 = !DILocation(line: 490, column: 17, scope: !1631)
!1838 = !DILocation(line: 492, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !433, line: 491, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1631, file: !433, line: 490, column: 17)
!1841 = !DILocation(line: 499, column: 35, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1631, file: !433, line: 499, column: 17)
!1843 = !DILocation(line: 0, scope: !1631)
!1844 = !DILocation(line: 502, column: 11, scope: !1631)
!1845 = !DILocation(line: 504, column: 17, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1631, file: !433, line: 503, column: 17)
!1847 = !DILocation(line: 507, column: 11, scope: !1631)
!1848 = !DILocation(line: 508, column: 17, scope: !1631)
!1849 = !DILocation(line: 517, column: 15, scope: !1608)
!1850 = !DILocation(line: 517, column: 40, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 517, column: 15)
!1852 = !DILocation(line: 517, column: 47, scope: !1851)
!1853 = !DILocation(line: 517, column: 18, scope: !1851)
!1854 = !DILocation(line: 521, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 521, column: 15)
!1856 = !DILocation(line: 521, column: 15, scope: !1608)
!1857 = !DILocation(line: 525, column: 11, scope: !1608)
!1858 = !DILocation(line: 537, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 536, column: 15)
!1860 = !DILocation(line: 536, column: 15, scope: !1608)
!1861 = !DILocation(line: 544, column: 15, scope: !1608)
!1862 = !DILocation(line: 546, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !433, line: 545, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1608, file: !433, line: 544, column: 15)
!1865 = !DILocation(line: 549, column: 19, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !433, line: 549, column: 19)
!1867 = !DILocation(line: 549, column: 30, scope: !1866)
!1868 = !DILocation(line: 558, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !433, line: 558, column: 15)
!1870 = distinct !DILexicalBlock(scope: !1863, file: !433, line: 558, column: 15)
!1871 = !DILocation(line: 558, column: 15, scope: !1870)
!1872 = !DILocation(line: 559, column: 15, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !433, line: 559, column: 15)
!1874 = distinct !DILexicalBlock(scope: !1863, file: !433, line: 559, column: 15)
!1875 = !DILocation(line: 559, column: 15, scope: !1874)
!1876 = !DILocation(line: 560, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !433, line: 560, column: 15)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !433, line: 560, column: 15)
!1879 = !DILocation(line: 560, column: 15, scope: !1878)
!1880 = !DILocation(line: 562, column: 13, scope: !1863)
!1881 = !DILocation(line: 602, column: 17, scope: !1607)
!1882 = !DILocation(line: 0, scope: !1607)
!1883 = !DILocation(line: 605, column: 29, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1612, file: !433, line: 603, column: 15)
!1885 = !DILocation(line: 605, column: 41, scope: !1884)
!1886 = !DILocation(line: 606, column: 15, scope: !1884)
!1887 = !DILocation(line: 609, column: 17, scope: !1611)
!1888 = !DILocation(line: 609, column: 27, scope: !1611)
!1889 = !DILocation(line: 0, scope: !1663, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 609, column: 32, scope: !1611)
!1891 = !DILocation(line: 0, scope: !1671, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 1137, column: 3, scope: !1663, inlinedAt: !1890)
!1893 = !DILocation(line: 59, column: 10, scope: !1671, inlinedAt: !1892)
!1894 = !DILocation(line: 613, column: 29, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1611, file: !433, line: 613, column: 21)
!1896 = !DILocation(line: 613, column: 21, scope: !1611)
!1897 = !DILocation(line: 614, column: 29, scope: !1895)
!1898 = !DILocation(line: 614, column: 19, scope: !1895)
!1899 = !DILocation(line: 618, column: 21, scope: !1614)
!1900 = !DILocation(line: 620, column: 54, scope: !1614)
!1901 = !DILocation(line: 0, scope: !1614)
!1902 = !DILocation(line: 619, column: 36, scope: !1614)
!1903 = !DILocation(line: 621, column: 25, scope: !1614)
!1904 = !DILocation(line: 631, column: 38, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1623, file: !433, line: 629, column: 23)
!1906 = !DILocation(line: 631, column: 48, scope: !1905)
!1907 = !DILocation(line: 626, column: 25, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1624, file: !433, line: 624, column: 23)
!1909 = !DILocation(line: 631, column: 51, scope: !1905)
!1910 = !DILocation(line: 631, column: 25, scope: !1905)
!1911 = !DILocation(line: 632, column: 28, scope: !1905)
!1912 = !DILocation(line: 631, column: 34, scope: !1905)
!1913 = distinct !{!1913, !1910, !1911, !854}
!1914 = !DILocation(line: 646, column: 29, scope: !1621)
!1915 = !DILocation(line: 0, scope: !1619)
!1916 = !DILocation(line: 649, column: 49, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1619, file: !433, line: 648, column: 29)
!1918 = !DILocation(line: 649, column: 39, scope: !1917)
!1919 = !DILocation(line: 649, column: 31, scope: !1917)
!1920 = !DILocation(line: 648, column: 60, scope: !1917)
!1921 = !DILocation(line: 648, column: 50, scope: !1917)
!1922 = !DILocation(line: 648, column: 29, scope: !1619)
!1923 = distinct !{!1923, !1922, !1924, !854}
!1924 = !DILocation(line: 654, column: 33, scope: !1619)
!1925 = !DILocation(line: 657, column: 43, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1622, file: !433, line: 657, column: 29)
!1927 = !DILocalVariable(name: "wc", arg: 1, scope: !1928, file: !1929, line: 865, type: !1932)
!1928 = distinct !DISubprogram(name: "c32isprint", scope: !1929, file: !1929, line: 865, type: !1930, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1934)
!1929 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!90, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1933, line: 20, baseType: !74)
!1933 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1934 = !{!1927}
!1935 = !DILocation(line: 0, scope: !1928, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 657, column: 31, scope: !1926)
!1937 = !DILocation(line: 871, column: 10, scope: !1928, inlinedAt: !1936)
!1938 = !DILocation(line: 657, column: 31, scope: !1926)
!1939 = !DILocation(line: 664, column: 23, scope: !1614)
!1940 = !DILocation(line: 665, column: 19, scope: !1615)
!1941 = !DILocation(line: 666, column: 15, scope: !1612)
!1942 = !DILocation(line: 753, column: 2, scope: !1568)
!1943 = !DILocation(line: 756, column: 51, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 756, column: 7)
!1945 = !DILocation(line: 0, scope: !1612)
!1946 = !DILocation(line: 670, column: 19, scope: !1628)
!1947 = !DILocation(line: 670, column: 23, scope: !1628)
!1948 = !DILocation(line: 674, column: 33, scope: !1627)
!1949 = !DILocation(line: 0, scope: !1627)
!1950 = !DILocation(line: 676, column: 17, scope: !1627)
!1951 = !DILocation(line: 398, column: 12, scope: !1601)
!1952 = !DILocation(line: 678, column: 43, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !433, line: 678, column: 25)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !433, line: 677, column: 19)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !433, line: 676, column: 17)
!1956 = distinct !DILexicalBlock(scope: !1627, file: !433, line: 676, column: 17)
!1957 = !DILocation(line: 680, column: 25, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !433, line: 680, column: 25)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 679, column: 23)
!1960 = !DILocation(line: 680, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !433, line: 680, column: 25)
!1962 = !DILocation(line: 680, column: 25, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !433, line: 680, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !433, line: 680, column: 25)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !433, line: 680, column: 25)
!1966 = !DILocation(line: 680, column: 25, scope: !1964)
!1967 = !DILocation(line: 680, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !433, line: 680, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !433, line: 680, column: 25)
!1970 = !DILocation(line: 680, column: 25, scope: !1969)
!1971 = !DILocation(line: 680, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !433, line: 680, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1965, file: !433, line: 680, column: 25)
!1974 = !DILocation(line: 680, column: 25, scope: !1973)
!1975 = !DILocation(line: 680, column: 25, scope: !1965)
!1976 = !DILocation(line: 680, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !433, line: 680, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1958, file: !433, line: 680, column: 25)
!1979 = !DILocation(line: 680, column: 25, scope: !1978)
!1980 = !DILocation(line: 681, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !433, line: 681, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1959, file: !433, line: 681, column: 25)
!1983 = !DILocation(line: 681, column: 25, scope: !1982)
!1984 = !DILocation(line: 682, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !433, line: 682, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1959, file: !433, line: 682, column: 25)
!1987 = !DILocation(line: 682, column: 25, scope: !1986)
!1988 = !DILocation(line: 683, column: 38, scope: !1959)
!1989 = !DILocation(line: 683, column: 33, scope: !1959)
!1990 = !DILocation(line: 684, column: 23, scope: !1959)
!1991 = !DILocation(line: 685, column: 30, scope: !1953)
!1992 = !DILocation(line: 687, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !433, line: 687, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !433, line: 687, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !433, line: 686, column: 23)
!1996 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 685, column: 30)
!1997 = !DILocation(line: 687, column: 25, scope: !1994)
!1998 = !DILocation(line: 689, column: 23, scope: !1995)
!1999 = !DILocation(line: 690, column: 35, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1954, file: !433, line: 690, column: 25)
!2001 = !DILocation(line: 690, column: 30, scope: !2000)
!2002 = !DILocation(line: 690, column: 25, scope: !1954)
!2003 = !DILocation(line: 692, column: 21, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !433, line: 692, column: 21)
!2005 = distinct !DILexicalBlock(scope: !1954, file: !433, line: 692, column: 21)
!2006 = !DILocation(line: 692, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !433, line: 692, column: 21)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !433, line: 692, column: 21)
!2009 = distinct !DILexicalBlock(scope: !2004, file: !433, line: 692, column: 21)
!2010 = !DILocation(line: 692, column: 21, scope: !2008)
!2011 = !DILocation(line: 692, column: 21, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !433, line: 692, column: 21)
!2013 = distinct !DILexicalBlock(scope: !2009, file: !433, line: 692, column: 21)
!2014 = !DILocation(line: 692, column: 21, scope: !2013)
!2015 = !DILocation(line: 692, column: 21, scope: !2009)
!2016 = !DILocation(line: 0, scope: !1954)
!2017 = !DILocation(line: 693, column: 21, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !433, line: 693, column: 21)
!2019 = distinct !DILexicalBlock(scope: !1954, file: !433, line: 693, column: 21)
!2020 = !DILocation(line: 693, column: 21, scope: !2019)
!2021 = !DILocation(line: 694, column: 25, scope: !1954)
!2022 = !DILocation(line: 676, column: 17, scope: !1955)
!2023 = distinct !{!2023, !2024, !2025}
!2024 = !DILocation(line: 676, column: 17, scope: !1956)
!2025 = !DILocation(line: 695, column: 19, scope: !1956)
!2026 = !DILocation(line: 409, column: 30, scope: !1736)
!2027 = !DILocation(line: 702, column: 34, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 702, column: 11)
!2029 = !DILocation(line: 704, column: 14, scope: !2028)
!2030 = !DILocation(line: 705, column: 14, scope: !2028)
!2031 = !DILocation(line: 705, column: 35, scope: !2028)
!2032 = !DILocation(line: 705, column: 17, scope: !2028)
!2033 = !DILocation(line: 705, column: 47, scope: !2028)
!2034 = !DILocation(line: 705, column: 65, scope: !2028)
!2035 = !DILocation(line: 706, column: 11, scope: !2028)
!2036 = !DILocation(line: 702, column: 11, scope: !1601)
!2037 = !DILocation(line: 395, column: 15, scope: !1599)
!2038 = !DILocation(line: 709, column: 5, scope: !1601)
!2039 = !DILocation(line: 710, column: 7, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 710, column: 7)
!2041 = !DILocation(line: 710, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2040, file: !433, line: 710, column: 7)
!2043 = !DILocation(line: 710, column: 7, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !433, line: 710, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !433, line: 710, column: 7)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !433, line: 710, column: 7)
!2047 = !DILocation(line: 710, column: 7, scope: !2045)
!2048 = !DILocation(line: 710, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !433, line: 710, column: 7)
!2050 = distinct !DILexicalBlock(scope: !2046, file: !433, line: 710, column: 7)
!2051 = !DILocation(line: 710, column: 7, scope: !2050)
!2052 = !DILocation(line: 710, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !433, line: 710, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !433, line: 710, column: 7)
!2055 = !DILocation(line: 710, column: 7, scope: !2054)
!2056 = !DILocation(line: 710, column: 7, scope: !2046)
!2057 = !DILocation(line: 710, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !433, line: 710, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2040, file: !433, line: 710, column: 7)
!2060 = !DILocation(line: 710, column: 7, scope: !2059)
!2061 = !DILocation(line: 712, column: 5, scope: !1601)
!2062 = !DILocation(line: 713, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !433, line: 713, column: 7)
!2064 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 713, column: 7)
!2065 = !DILocation(line: 417, column: 21, scope: !1601)
!2066 = !DILocation(line: 713, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !433, line: 713, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !433, line: 713, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2063, file: !433, line: 713, column: 7)
!2070 = !DILocation(line: 713, column: 7, scope: !2068)
!2071 = !DILocation(line: 713, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !433, line: 713, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !433, line: 713, column: 7)
!2074 = !DILocation(line: 713, column: 7, scope: !2073)
!2075 = !DILocation(line: 713, column: 7, scope: !2069)
!2076 = !DILocation(line: 714, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !433, line: 714, column: 7)
!2078 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 714, column: 7)
!2079 = !DILocation(line: 714, column: 7, scope: !2078)
!2080 = !DILocation(line: 716, column: 11, scope: !1601)
!2081 = !DILocation(line: 718, column: 5, scope: !1602)
!2082 = !DILocation(line: 395, column: 82, scope: !1602)
!2083 = !DILocation(line: 395, column: 3, scope: !1602)
!2084 = distinct !{!2084, !1732, !2085, !854}
!2085 = !DILocation(line: 718, column: 5, scope: !1599)
!2086 = !DILocation(line: 720, column: 11, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 720, column: 7)
!2088 = !DILocation(line: 720, column: 16, scope: !2087)
!2089 = !DILocation(line: 728, column: 51, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 728, column: 7)
!2091 = !DILocation(line: 731, column: 11, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !433, line: 730, column: 5)
!2093 = !DILocation(line: 732, column: 16, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !433, line: 731, column: 11)
!2095 = !DILocation(line: 732, column: 9, scope: !2094)
!2096 = !DILocation(line: 736, column: 18, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !433, line: 736, column: 16)
!2098 = !DILocation(line: 736, column: 29, scope: !2097)
!2099 = !DILocation(line: 745, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 745, column: 7)
!2101 = !DILocation(line: 745, column: 20, scope: !2100)
!2102 = !DILocation(line: 746, column: 12, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !433, line: 746, column: 5)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !433, line: 746, column: 5)
!2105 = !DILocation(line: 746, column: 5, scope: !2104)
!2106 = !DILocation(line: 747, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !433, line: 747, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !433, line: 747, column: 7)
!2109 = !DILocation(line: 747, column: 7, scope: !2108)
!2110 = !DILocation(line: 746, column: 39, scope: !2103)
!2111 = distinct !{!2111, !2105, !2112, !854}
!2112 = !DILocation(line: 747, column: 7, scope: !2104)
!2113 = !DILocation(line: 749, column: 11, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1568, file: !433, line: 749, column: 7)
!2115 = !DILocation(line: 749, column: 7, scope: !1568)
!2116 = !DILocation(line: 750, column: 5, scope: !2114)
!2117 = !DILocation(line: 750, column: 17, scope: !2114)
!2118 = !DILocation(line: 756, column: 21, scope: !1944)
!2119 = !DILocation(line: 760, column: 42, scope: !1568)
!2120 = !DILocation(line: 758, column: 10, scope: !1568)
!2121 = !DILocation(line: 758, column: 3, scope: !1568)
!2122 = !DILocation(line: 762, column: 1, scope: !1568)
!2123 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !931, file: !931, line: 98, type: !2124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!92}
!2126 = !DISubprogram(name: "strlen", scope: !924, file: !924, line: 407, type: !2127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!94, !68}
!2129 = !DISubprogram(name: "iswprint", scope: !2130, file: !2130, line: 120, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!2130 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2131 = distinct !DISubprogram(name: "quotearg_alloc", scope: !433, file: !433, line: 788, type: !2132, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!237, !68, !92, !1461}
!2134 = !{!2135, !2136, !2137}
!2135 = !DILocalVariable(name: "arg", arg: 1, scope: !2131, file: !433, line: 788, type: !68)
!2136 = !DILocalVariable(name: "argsize", arg: 2, scope: !2131, file: !433, line: 788, type: !92)
!2137 = !DILocalVariable(name: "o", arg: 3, scope: !2131, file: !433, line: 789, type: !1461)
!2138 = !DILocation(line: 0, scope: !2131)
!2139 = !DILocalVariable(name: "arg", arg: 1, scope: !2140, file: !433, line: 801, type: !68)
!2140 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !433, file: !433, line: 801, type: !2141, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!237, !68, !92, !686, !1461}
!2143 = !{!2139, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151}
!2144 = !DILocalVariable(name: "argsize", arg: 2, scope: !2140, file: !433, line: 801, type: !92)
!2145 = !DILocalVariable(name: "size", arg: 3, scope: !2140, file: !433, line: 801, type: !686)
!2146 = !DILocalVariable(name: "o", arg: 4, scope: !2140, file: !433, line: 802, type: !1461)
!2147 = !DILocalVariable(name: "p", scope: !2140, file: !433, line: 804, type: !1461)
!2148 = !DILocalVariable(name: "saved_errno", scope: !2140, file: !433, line: 805, type: !90)
!2149 = !DILocalVariable(name: "flags", scope: !2140, file: !433, line: 807, type: !90)
!2150 = !DILocalVariable(name: "bufsize", scope: !2140, file: !433, line: 808, type: !92)
!2151 = !DILocalVariable(name: "buf", scope: !2140, file: !433, line: 812, type: !237)
!2152 = !DILocation(line: 0, scope: !2140, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 791, column: 10, scope: !2131)
!2154 = !DILocation(line: 804, column: 37, scope: !2140, inlinedAt: !2153)
!2155 = !DILocation(line: 805, column: 21, scope: !2140, inlinedAt: !2153)
!2156 = !DILocation(line: 807, column: 18, scope: !2140, inlinedAt: !2153)
!2157 = !DILocation(line: 807, column: 24, scope: !2140, inlinedAt: !2153)
!2158 = !DILocation(line: 808, column: 72, scope: !2140, inlinedAt: !2153)
!2159 = !DILocation(line: 809, column: 56, scope: !2140, inlinedAt: !2153)
!2160 = !DILocation(line: 810, column: 49, scope: !2140, inlinedAt: !2153)
!2161 = !DILocation(line: 811, column: 49, scope: !2140, inlinedAt: !2153)
!2162 = !DILocation(line: 808, column: 20, scope: !2140, inlinedAt: !2153)
!2163 = !DILocation(line: 811, column: 62, scope: !2140, inlinedAt: !2153)
!2164 = !DILocation(line: 812, column: 15, scope: !2140, inlinedAt: !2153)
!2165 = !DILocation(line: 813, column: 60, scope: !2140, inlinedAt: !2153)
!2166 = !DILocation(line: 815, column: 32, scope: !2140, inlinedAt: !2153)
!2167 = !DILocation(line: 815, column: 47, scope: !2140, inlinedAt: !2153)
!2168 = !DILocation(line: 813, column: 3, scope: !2140, inlinedAt: !2153)
!2169 = !DILocation(line: 816, column: 9, scope: !2140, inlinedAt: !2153)
!2170 = !DILocation(line: 791, column: 3, scope: !2131)
!2171 = !DILocation(line: 0, scope: !2140)
!2172 = !DILocation(line: 804, column: 37, scope: !2140)
!2173 = !DILocation(line: 805, column: 21, scope: !2140)
!2174 = !DILocation(line: 807, column: 18, scope: !2140)
!2175 = !DILocation(line: 807, column: 27, scope: !2140)
!2176 = !DILocation(line: 807, column: 24, scope: !2140)
!2177 = !DILocation(line: 808, column: 72, scope: !2140)
!2178 = !DILocation(line: 809, column: 56, scope: !2140)
!2179 = !DILocation(line: 810, column: 49, scope: !2140)
!2180 = !DILocation(line: 811, column: 49, scope: !2140)
!2181 = !DILocation(line: 808, column: 20, scope: !2140)
!2182 = !DILocation(line: 811, column: 62, scope: !2140)
!2183 = !DILocation(line: 812, column: 15, scope: !2140)
!2184 = !DILocation(line: 813, column: 60, scope: !2140)
!2185 = !DILocation(line: 815, column: 32, scope: !2140)
!2186 = !DILocation(line: 815, column: 47, scope: !2140)
!2187 = !DILocation(line: 813, column: 3, scope: !2140)
!2188 = !DILocation(line: 816, column: 9, scope: !2140)
!2189 = !DILocation(line: 817, column: 7, scope: !2140)
!2190 = !DILocation(line: 818, column: 11, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2140, file: !433, line: 817, column: 7)
!2192 = !{!1185, !1185, i64 0}
!2193 = !DILocation(line: 818, column: 5, scope: !2191)
!2194 = !DILocation(line: 819, column: 3, scope: !2140)
!2195 = distinct !DISubprogram(name: "quotearg_free", scope: !433, file: !433, line: 837, type: !365, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2196)
!2196 = !{!2197, !2198}
!2197 = !DILocalVariable(name: "sv", scope: !2195, file: !433, line: 839, type: !531)
!2198 = !DILocalVariable(name: "i", scope: !2199, file: !433, line: 840, type: !90)
!2199 = distinct !DILexicalBlock(scope: !2195, file: !433, line: 840, column: 3)
!2200 = !DILocation(line: 839, column: 24, scope: !2195)
!2201 = !DILocation(line: 0, scope: !2195)
!2202 = !DILocation(line: 0, scope: !2199)
!2203 = !DILocation(line: 840, column: 21, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !433, line: 840, column: 3)
!2205 = !DILocation(line: 840, column: 3, scope: !2199)
!2206 = !DILocation(line: 842, column: 13, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2195, file: !433, line: 842, column: 7)
!2208 = !{!2209, !752, i64 8}
!2209 = !{!"slotvec", !1185, i64 0, !752, i64 8}
!2210 = !DILocation(line: 842, column: 17, scope: !2207)
!2211 = !DILocation(line: 842, column: 7, scope: !2195)
!2212 = !DILocation(line: 841, column: 17, scope: !2204)
!2213 = !DILocation(line: 841, column: 5, scope: !2204)
!2214 = !DILocation(line: 840, column: 32, scope: !2204)
!2215 = distinct !{!2215, !2205, !2216, !854}
!2216 = !DILocation(line: 841, column: 20, scope: !2199)
!2217 = !DILocation(line: 844, column: 7, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2207, file: !433, line: 843, column: 5)
!2219 = !DILocation(line: 845, column: 21, scope: !2218)
!2220 = !{!2209, !1185, i64 0}
!2221 = !DILocation(line: 846, column: 20, scope: !2218)
!2222 = !DILocation(line: 847, column: 5, scope: !2218)
!2223 = !DILocation(line: 848, column: 10, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2195, file: !433, line: 848, column: 7)
!2225 = !DILocation(line: 848, column: 7, scope: !2195)
!2226 = !DILocation(line: 850, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2224, file: !433, line: 849, column: 5)
!2228 = !DILocation(line: 851, column: 15, scope: !2227)
!2229 = !DILocation(line: 852, column: 5, scope: !2227)
!2230 = !DILocation(line: 853, column: 10, scope: !2195)
!2231 = !DILocation(line: 854, column: 1, scope: !2195)
!2232 = !DISubprogram(name: "free", scope: !1415, file: !1415, line: 786, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !89}
!2235 = distinct !DISubprogram(name: "quotearg_n", scope: !433, file: !433, line: 919, type: !921, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2236)
!2236 = !{!2237, !2238}
!2237 = !DILocalVariable(name: "n", arg: 1, scope: !2235, file: !433, line: 919, type: !90)
!2238 = !DILocalVariable(name: "arg", arg: 2, scope: !2235, file: !433, line: 919, type: !68)
!2239 = !DILocation(line: 0, scope: !2235)
!2240 = !DILocation(line: 921, column: 10, scope: !2235)
!2241 = !DILocation(line: 921, column: 3, scope: !2235)
!2242 = distinct !DISubprogram(name: "quotearg_n_options", scope: !433, file: !433, line: 866, type: !2243, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!237, !90, !68, !92, !1461}
!2245 = !{!2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2256, !2257, !2259, !2260, !2261}
!2246 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !433, line: 866, type: !90)
!2247 = !DILocalVariable(name: "arg", arg: 2, scope: !2242, file: !433, line: 866, type: !68)
!2248 = !DILocalVariable(name: "argsize", arg: 3, scope: !2242, file: !433, line: 866, type: !92)
!2249 = !DILocalVariable(name: "options", arg: 4, scope: !2242, file: !433, line: 867, type: !1461)
!2250 = !DILocalVariable(name: "saved_errno", scope: !2242, file: !433, line: 869, type: !90)
!2251 = !DILocalVariable(name: "sv", scope: !2242, file: !433, line: 871, type: !531)
!2252 = !DILocalVariable(name: "nslots_max", scope: !2242, file: !433, line: 873, type: !90)
!2253 = !DILocalVariable(name: "preallocated", scope: !2254, file: !433, line: 879, type: !216)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !433, line: 878, column: 5)
!2255 = distinct !DILexicalBlock(scope: !2242, file: !433, line: 877, column: 7)
!2256 = !DILocalVariable(name: "new_nslots", scope: !2254, file: !433, line: 880, type: !699)
!2257 = !DILocalVariable(name: "size", scope: !2258, file: !433, line: 891, type: !92)
!2258 = distinct !DILexicalBlock(scope: !2242, file: !433, line: 890, column: 3)
!2259 = !DILocalVariable(name: "val", scope: !2258, file: !433, line: 892, type: !237)
!2260 = !DILocalVariable(name: "flags", scope: !2258, file: !433, line: 894, type: !90)
!2261 = !DILocalVariable(name: "qsize", scope: !2258, file: !433, line: 895, type: !92)
!2262 = !DILocation(line: 0, scope: !2242)
!2263 = !DILocation(line: 869, column: 21, scope: !2242)
!2264 = !DILocation(line: 871, column: 24, scope: !2242)
!2265 = !DILocation(line: 874, column: 17, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2242, file: !433, line: 874, column: 7)
!2267 = !DILocation(line: 875, column: 5, scope: !2266)
!2268 = !DILocation(line: 877, column: 7, scope: !2255)
!2269 = !DILocation(line: 877, column: 14, scope: !2255)
!2270 = !DILocation(line: 877, column: 7, scope: !2242)
!2271 = !DILocation(line: 879, column: 31, scope: !2254)
!2272 = !DILocation(line: 0, scope: !2254)
!2273 = !DILocation(line: 880, column: 7, scope: !2254)
!2274 = !DILocation(line: 880, column: 26, scope: !2254)
!2275 = !DILocation(line: 880, column: 13, scope: !2254)
!2276 = !DILocation(line: 882, column: 31, scope: !2254)
!2277 = !DILocation(line: 883, column: 33, scope: !2254)
!2278 = !DILocation(line: 883, column: 42, scope: !2254)
!2279 = !DILocation(line: 883, column: 31, scope: !2254)
!2280 = !DILocation(line: 882, column: 22, scope: !2254)
!2281 = !DILocation(line: 882, column: 15, scope: !2254)
!2282 = !DILocation(line: 884, column: 11, scope: !2254)
!2283 = !DILocation(line: 885, column: 15, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2254, file: !433, line: 884, column: 11)
!2285 = !{i64 0, i64 8, !2192, i64 8, i64 8, !751}
!2286 = !DILocation(line: 885, column: 9, scope: !2284)
!2287 = !DILocation(line: 886, column: 20, scope: !2254)
!2288 = !DILocation(line: 886, column: 18, scope: !2254)
!2289 = !DILocation(line: 886, column: 32, scope: !2254)
!2290 = !DILocation(line: 886, column: 43, scope: !2254)
!2291 = !DILocation(line: 886, column: 53, scope: !2254)
!2292 = !DILocation(line: 0, scope: !1671, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 886, column: 7, scope: !2254)
!2294 = !DILocation(line: 59, column: 10, scope: !1671, inlinedAt: !2293)
!2295 = !DILocation(line: 887, column: 16, scope: !2254)
!2296 = !DILocation(line: 887, column: 14, scope: !2254)
!2297 = !DILocation(line: 888, column: 5, scope: !2255)
!2298 = !DILocation(line: 888, column: 5, scope: !2254)
!2299 = !DILocation(line: 891, column: 19, scope: !2258)
!2300 = !DILocation(line: 891, column: 25, scope: !2258)
!2301 = !DILocation(line: 0, scope: !2258)
!2302 = !DILocation(line: 892, column: 23, scope: !2258)
!2303 = !DILocation(line: 894, column: 26, scope: !2258)
!2304 = !DILocation(line: 894, column: 32, scope: !2258)
!2305 = !DILocation(line: 896, column: 55, scope: !2258)
!2306 = !DILocation(line: 897, column: 55, scope: !2258)
!2307 = !DILocation(line: 898, column: 55, scope: !2258)
!2308 = !DILocation(line: 899, column: 55, scope: !2258)
!2309 = !DILocation(line: 895, column: 20, scope: !2258)
!2310 = !DILocation(line: 901, column: 14, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2258, file: !433, line: 901, column: 9)
!2312 = !DILocation(line: 901, column: 9, scope: !2258)
!2313 = !DILocation(line: 903, column: 35, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !433, line: 902, column: 7)
!2315 = !DILocation(line: 903, column: 20, scope: !2314)
!2316 = !DILocation(line: 904, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !433, line: 904, column: 13)
!2318 = !DILocation(line: 904, column: 13, scope: !2314)
!2319 = !DILocation(line: 905, column: 11, scope: !2317)
!2320 = !DILocation(line: 906, column: 27, scope: !2314)
!2321 = !DILocation(line: 906, column: 19, scope: !2314)
!2322 = !DILocation(line: 907, column: 69, scope: !2314)
!2323 = !DILocation(line: 909, column: 44, scope: !2314)
!2324 = !DILocation(line: 910, column: 44, scope: !2314)
!2325 = !DILocation(line: 907, column: 9, scope: !2314)
!2326 = !DILocation(line: 911, column: 7, scope: !2314)
!2327 = !DILocation(line: 913, column: 11, scope: !2258)
!2328 = !DILocation(line: 914, column: 5, scope: !2258)
!2329 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !433, file: !433, line: 925, type: !2330, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!237, !90, !68, !92}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "n", arg: 1, scope: !2329, file: !433, line: 925, type: !90)
!2334 = !DILocalVariable(name: "arg", arg: 2, scope: !2329, file: !433, line: 925, type: !68)
!2335 = !DILocalVariable(name: "argsize", arg: 3, scope: !2329, file: !433, line: 925, type: !92)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 927, column: 10, scope: !2329)
!2338 = !DILocation(line: 927, column: 3, scope: !2329)
!2339 = distinct !DISubprogram(name: "quotearg", scope: !433, file: !433, line: 931, type: !933, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2340)
!2340 = !{!2341}
!2341 = !DILocalVariable(name: "arg", arg: 1, scope: !2339, file: !433, line: 931, type: !68)
!2342 = !DILocation(line: 0, scope: !2339)
!2343 = !DILocation(line: 0, scope: !2235, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 933, column: 10, scope: !2339)
!2345 = !DILocation(line: 921, column: 10, scope: !2235, inlinedAt: !2344)
!2346 = !DILocation(line: 933, column: 3, scope: !2339)
!2347 = distinct !DISubprogram(name: "quotearg_mem", scope: !433, file: !433, line: 937, type: !2348, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!237, !68, !92}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "arg", arg: 1, scope: !2347, file: !433, line: 937, type: !68)
!2352 = !DILocalVariable(name: "argsize", arg: 2, scope: !2347, file: !433, line: 937, type: !92)
!2353 = !DILocation(line: 0, scope: !2347)
!2354 = !DILocation(line: 0, scope: !2329, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 939, column: 10, scope: !2347)
!2356 = !DILocation(line: 927, column: 10, scope: !2329, inlinedAt: !2355)
!2357 = !DILocation(line: 939, column: 3, scope: !2347)
!2358 = distinct !DISubprogram(name: "quotearg_n_style", scope: !433, file: !433, line: 943, type: !2359, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!237, !90, !456, !68}
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !433, line: 943, type: !90)
!2363 = !DILocalVariable(name: "s", arg: 2, scope: !2358, file: !433, line: 943, type: !456)
!2364 = !DILocalVariable(name: "arg", arg: 3, scope: !2358, file: !433, line: 943, type: !68)
!2365 = !DILocalVariable(name: "o", scope: !2358, file: !433, line: 945, type: !1462)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 945, column: 3, scope: !2358)
!2368 = !DILocation(line: 945, column: 32, scope: !2358)
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"quoting_options_from_style: argument 0"}
!2371 = distinct !{!2371, !"quoting_options_from_style"}
!2372 = !DILocation(line: 945, column: 36, scope: !2358)
!2373 = !DILocalVariable(name: "style", arg: 1, scope: !2374, file: !433, line: 183, type: !456)
!2374 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !433, file: !433, line: 183, type: !2375, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!483, !456}
!2377 = !{!2373, !2378}
!2378 = !DILocalVariable(name: "o", scope: !2374, file: !433, line: 185, type: !483)
!2379 = !DILocation(line: 0, scope: !2374, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 945, column: 36, scope: !2358)
!2381 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2380)
!2382 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2380)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !433, line: 186, column: 7)
!2384 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2380)
!2385 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2380)
!2386 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2380)
!2387 = !DILocation(line: 946, column: 10, scope: !2358)
!2388 = !DILocation(line: 947, column: 1, scope: !2358)
!2389 = !DILocation(line: 946, column: 3, scope: !2358)
!2390 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !433, file: !433, line: 950, type: !2391, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2393)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!237, !90, !456, !68, !92}
!2393 = !{!2394, !2395, !2396, !2397, !2398}
!2394 = !DILocalVariable(name: "n", arg: 1, scope: !2390, file: !433, line: 950, type: !90)
!2395 = !DILocalVariable(name: "s", arg: 2, scope: !2390, file: !433, line: 950, type: !456)
!2396 = !DILocalVariable(name: "arg", arg: 3, scope: !2390, file: !433, line: 951, type: !68)
!2397 = !DILocalVariable(name: "argsize", arg: 4, scope: !2390, file: !433, line: 951, type: !92)
!2398 = !DILocalVariable(name: "o", scope: !2390, file: !433, line: 953, type: !1462)
!2399 = !DILocation(line: 0, scope: !2390)
!2400 = !DILocation(line: 953, column: 3, scope: !2390)
!2401 = !DILocation(line: 953, column: 32, scope: !2390)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 953, column: 36, scope: !2390)
!2406 = !DILocation(line: 0, scope: !2374, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 953, column: 36, scope: !2390)
!2408 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2407)
!2409 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2407)
!2410 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2407)
!2411 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2407)
!2412 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2407)
!2413 = !DILocation(line: 954, column: 10, scope: !2390)
!2414 = !DILocation(line: 955, column: 1, scope: !2390)
!2415 = !DILocation(line: 954, column: 3, scope: !2390)
!2416 = distinct !DISubprogram(name: "quotearg_style", scope: !433, file: !433, line: 958, type: !2417, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!237, !456, !68}
!2419 = !{!2420, !2421}
!2420 = !DILocalVariable(name: "s", arg: 1, scope: !2416, file: !433, line: 958, type: !456)
!2421 = !DILocalVariable(name: "arg", arg: 2, scope: !2416, file: !433, line: 958, type: !68)
!2422 = !DILocation(line: 0, scope: !2416)
!2423 = !DILocation(line: 0, scope: !2358, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 960, column: 10, scope: !2416)
!2425 = !DILocation(line: 945, column: 3, scope: !2358, inlinedAt: !2424)
!2426 = !DILocation(line: 945, column: 32, scope: !2358, inlinedAt: !2424)
!2427 = !{!2428}
!2428 = distinct !{!2428, !2429, !"quoting_options_from_style: argument 0"}
!2429 = distinct !{!2429, !"quoting_options_from_style"}
!2430 = !DILocation(line: 945, column: 36, scope: !2358, inlinedAt: !2424)
!2431 = !DILocation(line: 0, scope: !2374, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 945, column: 36, scope: !2358, inlinedAt: !2424)
!2433 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2432)
!2434 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2432)
!2435 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2432)
!2436 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2432)
!2437 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2432)
!2438 = !DILocation(line: 946, column: 10, scope: !2358, inlinedAt: !2424)
!2439 = !DILocation(line: 947, column: 1, scope: !2358, inlinedAt: !2424)
!2440 = !DILocation(line: 960, column: 3, scope: !2416)
!2441 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !433, file: !433, line: 964, type: !2442, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!237, !456, !68, !92}
!2444 = !{!2445, !2446, !2447}
!2445 = !DILocalVariable(name: "s", arg: 1, scope: !2441, file: !433, line: 964, type: !456)
!2446 = !DILocalVariable(name: "arg", arg: 2, scope: !2441, file: !433, line: 964, type: !68)
!2447 = !DILocalVariable(name: "argsize", arg: 3, scope: !2441, file: !433, line: 964, type: !92)
!2448 = !DILocation(line: 0, scope: !2441)
!2449 = !DILocation(line: 0, scope: !2390, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 966, column: 10, scope: !2441)
!2451 = !DILocation(line: 953, column: 3, scope: !2390, inlinedAt: !2450)
!2452 = !DILocation(line: 953, column: 32, scope: !2390, inlinedAt: !2450)
!2453 = !{!2454}
!2454 = distinct !{!2454, !2455, !"quoting_options_from_style: argument 0"}
!2455 = distinct !{!2455, !"quoting_options_from_style"}
!2456 = !DILocation(line: 953, column: 36, scope: !2390, inlinedAt: !2450)
!2457 = !DILocation(line: 0, scope: !2374, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 953, column: 36, scope: !2390, inlinedAt: !2450)
!2459 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2458)
!2460 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2458)
!2461 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2458)
!2462 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2458)
!2463 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2458)
!2464 = !DILocation(line: 954, column: 10, scope: !2390, inlinedAt: !2450)
!2465 = !DILocation(line: 955, column: 1, scope: !2390, inlinedAt: !2450)
!2466 = !DILocation(line: 966, column: 3, scope: !2441)
!2467 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !433, file: !433, line: 970, type: !2468, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!237, !68, !92, !4}
!2470 = !{!2471, !2472, !2473, !2474}
!2471 = !DILocalVariable(name: "arg", arg: 1, scope: !2467, file: !433, line: 970, type: !68)
!2472 = !DILocalVariable(name: "argsize", arg: 2, scope: !2467, file: !433, line: 970, type: !92)
!2473 = !DILocalVariable(name: "ch", arg: 3, scope: !2467, file: !433, line: 970, type: !4)
!2474 = !DILocalVariable(name: "options", scope: !2467, file: !433, line: 972, type: !483)
!2475 = !DILocation(line: 0, scope: !2467)
!2476 = !DILocation(line: 972, column: 3, scope: !2467)
!2477 = !DILocation(line: 972, column: 26, scope: !2467)
!2478 = !DILocation(line: 973, column: 13, scope: !2467)
!2479 = !{i64 0, i64 4, !816, i64 4, i64 4, !807, i64 8, i64 32, !816, i64 40, i64 8, !751, i64 48, i64 8, !751}
!2480 = !DILocation(line: 0, scope: !1481, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 974, column: 3, scope: !2467)
!2482 = !DILocation(line: 147, column: 41, scope: !1481, inlinedAt: !2481)
!2483 = !DILocation(line: 147, column: 62, scope: !1481, inlinedAt: !2481)
!2484 = !DILocation(line: 147, column: 57, scope: !1481, inlinedAt: !2481)
!2485 = !DILocation(line: 148, column: 15, scope: !1481, inlinedAt: !2481)
!2486 = !DILocation(line: 149, column: 21, scope: !1481, inlinedAt: !2481)
!2487 = !DILocation(line: 149, column: 24, scope: !1481, inlinedAt: !2481)
!2488 = !DILocation(line: 150, column: 19, scope: !1481, inlinedAt: !2481)
!2489 = !DILocation(line: 150, column: 24, scope: !1481, inlinedAt: !2481)
!2490 = !DILocation(line: 150, column: 6, scope: !1481, inlinedAt: !2481)
!2491 = !DILocation(line: 975, column: 10, scope: !2467)
!2492 = !DILocation(line: 976, column: 1, scope: !2467)
!2493 = !DILocation(line: 975, column: 3, scope: !2467)
!2494 = distinct !DISubprogram(name: "quotearg_char", scope: !433, file: !433, line: 979, type: !2495, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!237, !68, !4}
!2497 = !{!2498, !2499}
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2494, file: !433, line: 979, type: !68)
!2499 = !DILocalVariable(name: "ch", arg: 2, scope: !2494, file: !433, line: 979, type: !4)
!2500 = !DILocation(line: 0, scope: !2494)
!2501 = !DILocation(line: 0, scope: !2467, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 981, column: 10, scope: !2494)
!2503 = !DILocation(line: 972, column: 3, scope: !2467, inlinedAt: !2502)
!2504 = !DILocation(line: 972, column: 26, scope: !2467, inlinedAt: !2502)
!2505 = !DILocation(line: 973, column: 13, scope: !2467, inlinedAt: !2502)
!2506 = !DILocation(line: 0, scope: !1481, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 974, column: 3, scope: !2467, inlinedAt: !2502)
!2508 = !DILocation(line: 147, column: 41, scope: !1481, inlinedAt: !2507)
!2509 = !DILocation(line: 147, column: 62, scope: !1481, inlinedAt: !2507)
!2510 = !DILocation(line: 147, column: 57, scope: !1481, inlinedAt: !2507)
!2511 = !DILocation(line: 148, column: 15, scope: !1481, inlinedAt: !2507)
!2512 = !DILocation(line: 149, column: 21, scope: !1481, inlinedAt: !2507)
!2513 = !DILocation(line: 149, column: 24, scope: !1481, inlinedAt: !2507)
!2514 = !DILocation(line: 150, column: 19, scope: !1481, inlinedAt: !2507)
!2515 = !DILocation(line: 150, column: 24, scope: !1481, inlinedAt: !2507)
!2516 = !DILocation(line: 150, column: 6, scope: !1481, inlinedAt: !2507)
!2517 = !DILocation(line: 975, column: 10, scope: !2467, inlinedAt: !2502)
!2518 = !DILocation(line: 976, column: 1, scope: !2467, inlinedAt: !2502)
!2519 = !DILocation(line: 981, column: 3, scope: !2494)
!2520 = distinct !DISubprogram(name: "quotearg_colon", scope: !433, file: !433, line: 985, type: !933, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2521)
!2521 = !{!2522}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2520, file: !433, line: 985, type: !68)
!2523 = !DILocation(line: 0, scope: !2520)
!2524 = !DILocation(line: 0, scope: !2494, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 987, column: 10, scope: !2520)
!2526 = !DILocation(line: 0, scope: !2467, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 981, column: 10, scope: !2494, inlinedAt: !2525)
!2528 = !DILocation(line: 972, column: 3, scope: !2467, inlinedAt: !2527)
!2529 = !DILocation(line: 972, column: 26, scope: !2467, inlinedAt: !2527)
!2530 = !DILocation(line: 973, column: 13, scope: !2467, inlinedAt: !2527)
!2531 = !DILocation(line: 0, scope: !1481, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 974, column: 3, scope: !2467, inlinedAt: !2527)
!2533 = !DILocation(line: 147, column: 57, scope: !1481, inlinedAt: !2532)
!2534 = !DILocation(line: 149, column: 21, scope: !1481, inlinedAt: !2532)
!2535 = !DILocation(line: 150, column: 6, scope: !1481, inlinedAt: !2532)
!2536 = !DILocation(line: 975, column: 10, scope: !2467, inlinedAt: !2527)
!2537 = !DILocation(line: 976, column: 1, scope: !2467, inlinedAt: !2527)
!2538 = !DILocation(line: 987, column: 3, scope: !2520)
!2539 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !433, file: !433, line: 991, type: !2348, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2540)
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2539, file: !433, line: 991, type: !68)
!2542 = !DILocalVariable(name: "argsize", arg: 2, scope: !2539, file: !433, line: 991, type: !92)
!2543 = !DILocation(line: 0, scope: !2539)
!2544 = !DILocation(line: 0, scope: !2467, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 993, column: 10, scope: !2539)
!2546 = !DILocation(line: 972, column: 3, scope: !2467, inlinedAt: !2545)
!2547 = !DILocation(line: 972, column: 26, scope: !2467, inlinedAt: !2545)
!2548 = !DILocation(line: 973, column: 13, scope: !2467, inlinedAt: !2545)
!2549 = !DILocation(line: 0, scope: !1481, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 974, column: 3, scope: !2467, inlinedAt: !2545)
!2551 = !DILocation(line: 147, column: 57, scope: !1481, inlinedAt: !2550)
!2552 = !DILocation(line: 149, column: 21, scope: !1481, inlinedAt: !2550)
!2553 = !DILocation(line: 150, column: 6, scope: !1481, inlinedAt: !2550)
!2554 = !DILocation(line: 975, column: 10, scope: !2467, inlinedAt: !2545)
!2555 = !DILocation(line: 976, column: 1, scope: !2467, inlinedAt: !2545)
!2556 = !DILocation(line: 993, column: 3, scope: !2539)
!2557 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !433, file: !433, line: 997, type: !2359, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2558)
!2558 = !{!2559, !2560, !2561, !2562}
!2559 = !DILocalVariable(name: "n", arg: 1, scope: !2557, file: !433, line: 997, type: !90)
!2560 = !DILocalVariable(name: "s", arg: 2, scope: !2557, file: !433, line: 997, type: !456)
!2561 = !DILocalVariable(name: "arg", arg: 3, scope: !2557, file: !433, line: 997, type: !68)
!2562 = !DILocalVariable(name: "options", scope: !2557, file: !433, line: 999, type: !483)
!2563 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 1000, column: 13, scope: !2557)
!2565 = !DILocation(line: 0, scope: !2557)
!2566 = !DILocation(line: 999, column: 3, scope: !2557)
!2567 = !DILocation(line: 999, column: 26, scope: !2557)
!2568 = !DILocation(line: 0, scope: !2374, inlinedAt: !2564)
!2569 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2564)
!2570 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2564)
!2571 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2564)
!2572 = !{!2573}
!2573 = distinct !{!2573, !2574, !"quoting_options_from_style: argument 0"}
!2574 = distinct !{!2574, !"quoting_options_from_style"}
!2575 = !DILocation(line: 1000, column: 13, scope: !2557)
!2576 = !DILocation(line: 0, scope: !1481, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1001, column: 3, scope: !2557)
!2578 = !DILocation(line: 147, column: 57, scope: !1481, inlinedAt: !2577)
!2579 = !DILocation(line: 149, column: 21, scope: !1481, inlinedAt: !2577)
!2580 = !DILocation(line: 150, column: 6, scope: !1481, inlinedAt: !2577)
!2581 = !DILocation(line: 1002, column: 10, scope: !2557)
!2582 = !DILocation(line: 1003, column: 1, scope: !2557)
!2583 = !DILocation(line: 1002, column: 3, scope: !2557)
!2584 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !433, file: !433, line: 1006, type: !2585, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2587)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!237, !90, !68, !68, !68}
!2587 = !{!2588, !2589, !2590, !2591}
!2588 = !DILocalVariable(name: "n", arg: 1, scope: !2584, file: !433, line: 1006, type: !90)
!2589 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2584, file: !433, line: 1006, type: !68)
!2590 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2584, file: !433, line: 1007, type: !68)
!2591 = !DILocalVariable(name: "arg", arg: 4, scope: !2584, file: !433, line: 1007, type: !68)
!2592 = !DILocation(line: 0, scope: !2584)
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2594, file: !433, line: 1014, type: !90)
!2594 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !433, file: !433, line: 1014, type: !2595, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!237, !90, !68, !68, !68, !92}
!2597 = !{!2593, !2598, !2599, !2600, !2601, !2602}
!2598 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2594, file: !433, line: 1014, type: !68)
!2599 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2594, file: !433, line: 1015, type: !68)
!2600 = !DILocalVariable(name: "arg", arg: 4, scope: !2594, file: !433, line: 1016, type: !68)
!2601 = !DILocalVariable(name: "argsize", arg: 5, scope: !2594, file: !433, line: 1016, type: !92)
!2602 = !DILocalVariable(name: "o", scope: !2594, file: !433, line: 1018, type: !483)
!2603 = !DILocation(line: 0, scope: !2594, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1009, column: 10, scope: !2584)
!2605 = !DILocation(line: 1018, column: 3, scope: !2594, inlinedAt: !2604)
!2606 = !DILocation(line: 1018, column: 26, scope: !2594, inlinedAt: !2604)
!2607 = !DILocation(line: 1018, column: 30, scope: !2594, inlinedAt: !2604)
!2608 = !DILocation(line: 0, scope: !1521, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1019, column: 3, scope: !2594, inlinedAt: !2604)
!2610 = !DILocation(line: 174, column: 12, scope: !1521, inlinedAt: !2609)
!2611 = !DILocation(line: 175, column: 8, scope: !1534, inlinedAt: !2609)
!2612 = !DILocation(line: 175, column: 19, scope: !1534, inlinedAt: !2609)
!2613 = !DILocation(line: 176, column: 5, scope: !1534, inlinedAt: !2609)
!2614 = !DILocation(line: 177, column: 6, scope: !1521, inlinedAt: !2609)
!2615 = !DILocation(line: 177, column: 17, scope: !1521, inlinedAt: !2609)
!2616 = !DILocation(line: 178, column: 6, scope: !1521, inlinedAt: !2609)
!2617 = !DILocation(line: 178, column: 18, scope: !1521, inlinedAt: !2609)
!2618 = !DILocation(line: 1020, column: 10, scope: !2594, inlinedAt: !2604)
!2619 = !DILocation(line: 1021, column: 1, scope: !2594, inlinedAt: !2604)
!2620 = !DILocation(line: 1009, column: 3, scope: !2584)
!2621 = !DILocation(line: 0, scope: !2594)
!2622 = !DILocation(line: 1018, column: 3, scope: !2594)
!2623 = !DILocation(line: 1018, column: 26, scope: !2594)
!2624 = !DILocation(line: 1018, column: 30, scope: !2594)
!2625 = !DILocation(line: 0, scope: !1521, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 1019, column: 3, scope: !2594)
!2627 = !DILocation(line: 174, column: 12, scope: !1521, inlinedAt: !2626)
!2628 = !DILocation(line: 175, column: 8, scope: !1534, inlinedAt: !2626)
!2629 = !DILocation(line: 175, column: 19, scope: !1534, inlinedAt: !2626)
!2630 = !DILocation(line: 176, column: 5, scope: !1534, inlinedAt: !2626)
!2631 = !DILocation(line: 177, column: 6, scope: !1521, inlinedAt: !2626)
!2632 = !DILocation(line: 177, column: 17, scope: !1521, inlinedAt: !2626)
!2633 = !DILocation(line: 178, column: 6, scope: !1521, inlinedAt: !2626)
!2634 = !DILocation(line: 178, column: 18, scope: !1521, inlinedAt: !2626)
!2635 = !DILocation(line: 1020, column: 10, scope: !2594)
!2636 = !DILocation(line: 1021, column: 1, scope: !2594)
!2637 = !DILocation(line: 1020, column: 3, scope: !2594)
!2638 = distinct !DISubprogram(name: "quotearg_custom", scope: !433, file: !433, line: 1024, type: !2639, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!237, !68, !68, !68}
!2641 = !{!2642, !2643, !2644}
!2642 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2638, file: !433, line: 1024, type: !68)
!2643 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2638, file: !433, line: 1024, type: !68)
!2644 = !DILocalVariable(name: "arg", arg: 3, scope: !2638, file: !433, line: 1025, type: !68)
!2645 = !DILocation(line: 0, scope: !2638)
!2646 = !DILocation(line: 0, scope: !2584, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1027, column: 10, scope: !2638)
!2648 = !DILocation(line: 0, scope: !2594, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1009, column: 10, scope: !2584, inlinedAt: !2647)
!2650 = !DILocation(line: 1018, column: 3, scope: !2594, inlinedAt: !2649)
!2651 = !DILocation(line: 1018, column: 26, scope: !2594, inlinedAt: !2649)
!2652 = !DILocation(line: 1018, column: 30, scope: !2594, inlinedAt: !2649)
!2653 = !DILocation(line: 0, scope: !1521, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1019, column: 3, scope: !2594, inlinedAt: !2649)
!2655 = !DILocation(line: 174, column: 12, scope: !1521, inlinedAt: !2654)
!2656 = !DILocation(line: 175, column: 8, scope: !1534, inlinedAt: !2654)
!2657 = !DILocation(line: 175, column: 19, scope: !1534, inlinedAt: !2654)
!2658 = !DILocation(line: 176, column: 5, scope: !1534, inlinedAt: !2654)
!2659 = !DILocation(line: 177, column: 6, scope: !1521, inlinedAt: !2654)
!2660 = !DILocation(line: 177, column: 17, scope: !1521, inlinedAt: !2654)
!2661 = !DILocation(line: 178, column: 6, scope: !1521, inlinedAt: !2654)
!2662 = !DILocation(line: 178, column: 18, scope: !1521, inlinedAt: !2654)
!2663 = !DILocation(line: 1020, column: 10, scope: !2594, inlinedAt: !2649)
!2664 = !DILocation(line: 1021, column: 1, scope: !2594, inlinedAt: !2649)
!2665 = !DILocation(line: 1027, column: 3, scope: !2638)
!2666 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !433, file: !433, line: 1031, type: !2667, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!237, !68, !68, !68, !92}
!2669 = !{!2670, !2671, !2672, !2673}
!2670 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2666, file: !433, line: 1031, type: !68)
!2671 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2666, file: !433, line: 1031, type: !68)
!2672 = !DILocalVariable(name: "arg", arg: 3, scope: !2666, file: !433, line: 1032, type: !68)
!2673 = !DILocalVariable(name: "argsize", arg: 4, scope: !2666, file: !433, line: 1032, type: !92)
!2674 = !DILocation(line: 0, scope: !2666)
!2675 = !DILocation(line: 0, scope: !2594, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1034, column: 10, scope: !2666)
!2677 = !DILocation(line: 1018, column: 3, scope: !2594, inlinedAt: !2676)
!2678 = !DILocation(line: 1018, column: 26, scope: !2594, inlinedAt: !2676)
!2679 = !DILocation(line: 1018, column: 30, scope: !2594, inlinedAt: !2676)
!2680 = !DILocation(line: 0, scope: !1521, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1019, column: 3, scope: !2594, inlinedAt: !2676)
!2682 = !DILocation(line: 174, column: 12, scope: !1521, inlinedAt: !2681)
!2683 = !DILocation(line: 175, column: 8, scope: !1534, inlinedAt: !2681)
!2684 = !DILocation(line: 175, column: 19, scope: !1534, inlinedAt: !2681)
!2685 = !DILocation(line: 176, column: 5, scope: !1534, inlinedAt: !2681)
!2686 = !DILocation(line: 177, column: 6, scope: !1521, inlinedAt: !2681)
!2687 = !DILocation(line: 177, column: 17, scope: !1521, inlinedAt: !2681)
!2688 = !DILocation(line: 178, column: 6, scope: !1521, inlinedAt: !2681)
!2689 = !DILocation(line: 178, column: 18, scope: !1521, inlinedAt: !2681)
!2690 = !DILocation(line: 1020, column: 10, scope: !2594, inlinedAt: !2676)
!2691 = !DILocation(line: 1021, column: 1, scope: !2594, inlinedAt: !2676)
!2692 = !DILocation(line: 1034, column: 3, scope: !2666)
!2693 = distinct !DISubprogram(name: "quote_n_mem", scope: !433, file: !433, line: 1049, type: !2694, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!68, !90, !68, !92}
!2696 = !{!2697, !2698, !2699}
!2697 = !DILocalVariable(name: "n", arg: 1, scope: !2693, file: !433, line: 1049, type: !90)
!2698 = !DILocalVariable(name: "arg", arg: 2, scope: !2693, file: !433, line: 1049, type: !68)
!2699 = !DILocalVariable(name: "argsize", arg: 3, scope: !2693, file: !433, line: 1049, type: !92)
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocation(line: 1051, column: 10, scope: !2693)
!2702 = !DILocation(line: 1051, column: 3, scope: !2693)
!2703 = distinct !DISubprogram(name: "quote_mem", scope: !433, file: !433, line: 1055, type: !2704, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!68, !68, !92}
!2706 = !{!2707, !2708}
!2707 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !433, line: 1055, type: !68)
!2708 = !DILocalVariable(name: "argsize", arg: 2, scope: !2703, file: !433, line: 1055, type: !92)
!2709 = !DILocation(line: 0, scope: !2703)
!2710 = !DILocation(line: 0, scope: !2693, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 1057, column: 10, scope: !2703)
!2712 = !DILocation(line: 1051, column: 10, scope: !2693, inlinedAt: !2711)
!2713 = !DILocation(line: 1057, column: 3, scope: !2703)
!2714 = distinct !DISubprogram(name: "quote_n", scope: !433, file: !433, line: 1061, type: !2715, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2717)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!68, !90, !68}
!2717 = !{!2718, !2719}
!2718 = !DILocalVariable(name: "n", arg: 1, scope: !2714, file: !433, line: 1061, type: !90)
!2719 = !DILocalVariable(name: "arg", arg: 2, scope: !2714, file: !433, line: 1061, type: !68)
!2720 = !DILocation(line: 0, scope: !2714)
!2721 = !DILocation(line: 0, scope: !2693, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1063, column: 10, scope: !2714)
!2723 = !DILocation(line: 1051, column: 10, scope: !2693, inlinedAt: !2722)
!2724 = !DILocation(line: 1063, column: 3, scope: !2714)
!2725 = distinct !DISubprogram(name: "quote", scope: !433, file: !433, line: 1067, type: !2726, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!68, !68}
!2728 = !{!2729}
!2729 = !DILocalVariable(name: "arg", arg: 1, scope: !2725, file: !433, line: 1067, type: !68)
!2730 = !DILocation(line: 0, scope: !2725)
!2731 = !DILocation(line: 0, scope: !2714, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1069, column: 10, scope: !2725)
!2733 = !DILocation(line: 0, scope: !2693, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1063, column: 10, scope: !2714, inlinedAt: !2732)
!2735 = !DILocation(line: 1051, column: 10, scope: !2693, inlinedAt: !2734)
!2736 = !DILocation(line: 1069, column: 3, scope: !2725)
!2737 = distinct !DISubprogram(name: "version_etc_arn", scope: !546, file: !546, line: 61, type: !2738, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2775)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2740, !68, !68, !68, !2774, !92}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2742)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2742, file: !233, line: 51, baseType: !90, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2742, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2742, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2742, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2742, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2742, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2742, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2742, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2742, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2742, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2742, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2742, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2742, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2742, file: !233, line: 70, baseType: !2758, size: 64, offset: 832)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2742, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2742, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2742, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2742, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2742, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2742, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2742, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2742, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2742, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2742, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2742, file: !233, line: 93, baseType: !2758, size: 64, offset: 1344)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2742, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2742, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2742, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2742, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781}
!2776 = !DILocalVariable(name: "stream", arg: 1, scope: !2737, file: !546, line: 61, type: !2740)
!2777 = !DILocalVariable(name: "command_name", arg: 2, scope: !2737, file: !546, line: 62, type: !68)
!2778 = !DILocalVariable(name: "package", arg: 3, scope: !2737, file: !546, line: 62, type: !68)
!2779 = !DILocalVariable(name: "version", arg: 4, scope: !2737, file: !546, line: 63, type: !68)
!2780 = !DILocalVariable(name: "authors", arg: 5, scope: !2737, file: !546, line: 64, type: !2774)
!2781 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2737, file: !546, line: 64, type: !92)
!2782 = !DILocation(line: 0, scope: !2737)
!2783 = !DILocation(line: 66, column: 7, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2737, file: !546, line: 66, column: 7)
!2785 = !DILocation(line: 66, column: 7, scope: !2737)
!2786 = !DILocation(line: 67, column: 5, scope: !2784)
!2787 = !DILocation(line: 69, column: 5, scope: !2784)
!2788 = !DILocation(line: 83, column: 3, scope: !2737)
!2789 = !DILocation(line: 85, column: 3, scope: !2737)
!2790 = !DILocation(line: 88, column: 3, scope: !2737)
!2791 = !DILocation(line: 95, column: 3, scope: !2737)
!2792 = !DILocation(line: 97, column: 3, scope: !2737)
!2793 = !DILocation(line: 105, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2737, file: !546, line: 98, column: 5)
!2795 = !DILocation(line: 106, column: 7, scope: !2794)
!2796 = !DILocation(line: 109, column: 7, scope: !2794)
!2797 = !DILocation(line: 110, column: 7, scope: !2794)
!2798 = !DILocation(line: 113, column: 7, scope: !2794)
!2799 = !DILocation(line: 115, column: 7, scope: !2794)
!2800 = !DILocation(line: 120, column: 7, scope: !2794)
!2801 = !DILocation(line: 122, column: 7, scope: !2794)
!2802 = !DILocation(line: 127, column: 7, scope: !2794)
!2803 = !DILocation(line: 129, column: 7, scope: !2794)
!2804 = !DILocation(line: 134, column: 7, scope: !2794)
!2805 = !DILocation(line: 137, column: 7, scope: !2794)
!2806 = !DILocation(line: 142, column: 7, scope: !2794)
!2807 = !DILocation(line: 145, column: 7, scope: !2794)
!2808 = !DILocation(line: 150, column: 7, scope: !2794)
!2809 = !DILocation(line: 154, column: 7, scope: !2794)
!2810 = !DILocation(line: 159, column: 7, scope: !2794)
!2811 = !DILocation(line: 163, column: 7, scope: !2794)
!2812 = !DILocation(line: 170, column: 7, scope: !2794)
!2813 = !DILocation(line: 174, column: 7, scope: !2794)
!2814 = !DILocation(line: 176, column: 1, scope: !2737)
!2815 = distinct !DISubprogram(name: "version_etc_ar", scope: !546, file: !546, line: 183, type: !2816, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2740, !68, !68, !68, !2774}
!2818 = !{!2819, !2820, !2821, !2822, !2823, !2824}
!2819 = !DILocalVariable(name: "stream", arg: 1, scope: !2815, file: !546, line: 183, type: !2740)
!2820 = !DILocalVariable(name: "command_name", arg: 2, scope: !2815, file: !546, line: 184, type: !68)
!2821 = !DILocalVariable(name: "package", arg: 3, scope: !2815, file: !546, line: 184, type: !68)
!2822 = !DILocalVariable(name: "version", arg: 4, scope: !2815, file: !546, line: 185, type: !68)
!2823 = !DILocalVariable(name: "authors", arg: 5, scope: !2815, file: !546, line: 185, type: !2774)
!2824 = !DILocalVariable(name: "n_authors", scope: !2815, file: !546, line: 187, type: !92)
!2825 = !DILocation(line: 0, scope: !2815)
!2826 = !DILocation(line: 189, column: 8, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2815, file: !546, line: 189, column: 3)
!2828 = !DILocation(line: 189, scope: !2827)
!2829 = !DILocation(line: 189, column: 23, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2827, file: !546, line: 189, column: 3)
!2831 = !DILocation(line: 189, column: 3, scope: !2827)
!2832 = !DILocation(line: 189, column: 52, scope: !2830)
!2833 = distinct !{!2833, !2831, !2834, !854}
!2834 = !DILocation(line: 190, column: 5, scope: !2827)
!2835 = !DILocation(line: 191, column: 3, scope: !2815)
!2836 = !DILocation(line: 192, column: 1, scope: !2815)
!2837 = distinct !DISubprogram(name: "version_etc_va", scope: !546, file: !546, line: 199, type: !2838, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2851)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !2740, !68, !68, !68, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !2841)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 14, baseType: !2842)
!2842 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2843, baseType: !2844)
!2843 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2850}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2844, file: !2843, line: 192, baseType: !89, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2844, file: !2843, line: 192, baseType: !89, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2844, file: !2843, line: 192, baseType: !89, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2844, file: !2843, line: 192, baseType: !90, size: 32, offset: 192)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2844, file: !2843, line: 192, baseType: !90, size: 32, offset: 224)
!2851 = !{!2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2852 = !DILocalVariable(name: "stream", arg: 1, scope: !2837, file: !546, line: 199, type: !2740)
!2853 = !DILocalVariable(name: "command_name", arg: 2, scope: !2837, file: !546, line: 200, type: !68)
!2854 = !DILocalVariable(name: "package", arg: 3, scope: !2837, file: !546, line: 200, type: !68)
!2855 = !DILocalVariable(name: "version", arg: 4, scope: !2837, file: !546, line: 201, type: !68)
!2856 = !DILocalVariable(name: "authors", arg: 5, scope: !2837, file: !546, line: 201, type: !2840)
!2857 = !DILocalVariable(name: "n_authors", scope: !2837, file: !546, line: 203, type: !92)
!2858 = !DILocalVariable(name: "authtab", scope: !2837, file: !546, line: 204, type: !2859)
!2859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !35)
!2860 = !DILocation(line: 0, scope: !2837)
!2861 = !DILocation(line: 201, column: 46, scope: !2837)
!2862 = !DILocation(line: 204, column: 3, scope: !2837)
!2863 = !DILocation(line: 204, column: 15, scope: !2837)
!2864 = !DILocation(line: 208, column: 35, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !546, line: 206, column: 3)
!2866 = distinct !DILexicalBlock(scope: !2837, file: !546, line: 206, column: 3)
!2867 = !DILocation(line: 208, column: 33, scope: !2865)
!2868 = !DILocation(line: 208, column: 67, scope: !2865)
!2869 = !DILocation(line: 206, column: 3, scope: !2866)
!2870 = !DILocation(line: 208, column: 14, scope: !2865)
!2871 = !DILocation(line: 0, scope: !2866)
!2872 = !DILocation(line: 211, column: 3, scope: !2837)
!2873 = !DILocation(line: 213, column: 1, scope: !2837)
!2874 = distinct !DISubprogram(name: "version_etc", scope: !546, file: !546, line: 230, type: !2875, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2740, !68, !68, !68, null}
!2877 = !{!2878, !2879, !2880, !2881, !2882}
!2878 = !DILocalVariable(name: "stream", arg: 1, scope: !2874, file: !546, line: 230, type: !2740)
!2879 = !DILocalVariable(name: "command_name", arg: 2, scope: !2874, file: !546, line: 231, type: !68)
!2880 = !DILocalVariable(name: "package", arg: 3, scope: !2874, file: !546, line: 231, type: !68)
!2881 = !DILocalVariable(name: "version", arg: 4, scope: !2874, file: !546, line: 232, type: !68)
!2882 = !DILocalVariable(name: "authors", scope: !2874, file: !546, line: 234, type: !2840)
!2883 = !DILocation(line: 0, scope: !2874)
!2884 = !DILocation(line: 234, column: 3, scope: !2874)
!2885 = !DILocation(line: 234, column: 11, scope: !2874)
!2886 = !DILocation(line: 235, column: 3, scope: !2874)
!2887 = !DILocation(line: 236, column: 3, scope: !2874)
!2888 = !DILocation(line: 237, column: 3, scope: !2874)
!2889 = !DILocation(line: 238, column: 1, scope: !2874)
!2890 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !546, file: !546, line: 241, type: !365, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !795)
!2891 = !DILocation(line: 243, column: 3, scope: !2890)
!2892 = !DILocation(line: 248, column: 3, scope: !2890)
!2893 = !DILocation(line: 254, column: 3, scope: !2890)
!2894 = !DILocation(line: 259, column: 3, scope: !2890)
!2895 = !DILocation(line: 261, column: 1, scope: !2890)
!2896 = distinct !DISubprogram(name: "xnrealloc", scope: !2897, file: !2897, line: 147, type: !2898, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2900)
!2897 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!89, !89, !92, !92}
!2900 = !{!2901, !2902, !2903}
!2901 = !DILocalVariable(name: "p", arg: 1, scope: !2896, file: !2897, line: 147, type: !89)
!2902 = !DILocalVariable(name: "n", arg: 2, scope: !2896, file: !2897, line: 147, type: !92)
!2903 = !DILocalVariable(name: "s", arg: 3, scope: !2896, file: !2897, line: 147, type: !92)
!2904 = !DILocation(line: 0, scope: !2896)
!2905 = !DILocalVariable(name: "p", arg: 1, scope: !2906, file: !680, line: 83, type: !89)
!2906 = distinct !DISubprogram(name: "xreallocarray", scope: !680, file: !680, line: 83, type: !2898, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2907)
!2907 = !{!2905, !2908, !2909}
!2908 = !DILocalVariable(name: "n", arg: 2, scope: !2906, file: !680, line: 83, type: !92)
!2909 = !DILocalVariable(name: "s", arg: 3, scope: !2906, file: !680, line: 83, type: !92)
!2910 = !DILocation(line: 0, scope: !2906, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 149, column: 10, scope: !2896)
!2912 = !DILocation(line: 85, column: 25, scope: !2906, inlinedAt: !2911)
!2913 = !DILocalVariable(name: "p", arg: 1, scope: !2914, file: !680, line: 37, type: !89)
!2914 = distinct !DISubprogram(name: "check_nonnull", scope: !680, file: !680, line: 37, type: !2915, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!89, !89}
!2917 = !{!2913}
!2918 = !DILocation(line: 0, scope: !2914, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 85, column: 10, scope: !2906, inlinedAt: !2911)
!2920 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2919)
!2921 = distinct !DILexicalBlock(scope: !2914, file: !680, line: 39, column: 7)
!2922 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2919)
!2923 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2919)
!2924 = !DILocation(line: 149, column: 3, scope: !2896)
!2925 = !DILocation(line: 0, scope: !2906)
!2926 = !DILocation(line: 85, column: 25, scope: !2906)
!2927 = !DILocation(line: 0, scope: !2914, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 85, column: 10, scope: !2906)
!2929 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2928)
!2930 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2928)
!2931 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2928)
!2932 = !DILocation(line: 85, column: 3, scope: !2906)
!2933 = distinct !DISubprogram(name: "xmalloc", scope: !680, file: !680, line: 47, type: !2934, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!89, !92}
!2936 = !{!2937}
!2937 = !DILocalVariable(name: "s", arg: 1, scope: !2933, file: !680, line: 47, type: !92)
!2938 = !DILocation(line: 0, scope: !2933)
!2939 = !DILocation(line: 49, column: 25, scope: !2933)
!2940 = !DILocation(line: 0, scope: !2914, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 49, column: 10, scope: !2933)
!2942 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2941)
!2943 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2941)
!2944 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2941)
!2945 = !DILocation(line: 49, column: 3, scope: !2933)
!2946 = !DISubprogram(name: "malloc", scope: !931, file: !931, line: 540, type: !2934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!2947 = distinct !DISubprogram(name: "ximalloc", scope: !680, file: !680, line: 53, type: !2948, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!89, !699}
!2950 = !{!2951}
!2951 = !DILocalVariable(name: "s", arg: 1, scope: !2947, file: !680, line: 53, type: !699)
!2952 = !DILocation(line: 0, scope: !2947)
!2953 = !DILocalVariable(name: "s", arg: 1, scope: !2954, file: !2955, line: 55, type: !699)
!2954 = distinct !DISubprogram(name: "imalloc", scope: !2955, file: !2955, line: 55, type: !2948, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2956)
!2955 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2956 = !{!2953}
!2957 = !DILocation(line: 0, scope: !2954, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 55, column: 25, scope: !2947)
!2959 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !2958)
!2960 = !DILocation(line: 0, scope: !2914, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 55, column: 10, scope: !2947)
!2962 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2961)
!2963 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2961)
!2964 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2961)
!2965 = !DILocation(line: 55, column: 3, scope: !2947)
!2966 = distinct !DISubprogram(name: "xcharalloc", scope: !680, file: !680, line: 59, type: !2967, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!237, !92}
!2969 = !{!2970}
!2970 = !DILocalVariable(name: "n", arg: 1, scope: !2966, file: !680, line: 59, type: !92)
!2971 = !DILocation(line: 0, scope: !2966)
!2972 = !DILocation(line: 0, scope: !2933, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 61, column: 10, scope: !2966)
!2974 = !DILocation(line: 49, column: 25, scope: !2933, inlinedAt: !2973)
!2975 = !DILocation(line: 0, scope: !2914, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 49, column: 10, scope: !2933, inlinedAt: !2973)
!2977 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2976)
!2978 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2976)
!2979 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2976)
!2980 = !DILocation(line: 61, column: 3, scope: !2966)
!2981 = distinct !DISubprogram(name: "xrealloc", scope: !680, file: !680, line: 68, type: !2982, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!89, !89, !92}
!2984 = !{!2985, !2986}
!2985 = !DILocalVariable(name: "p", arg: 1, scope: !2981, file: !680, line: 68, type: !89)
!2986 = !DILocalVariable(name: "s", arg: 2, scope: !2981, file: !680, line: 68, type: !92)
!2987 = !DILocation(line: 0, scope: !2981)
!2988 = !DILocalVariable(name: "ptr", arg: 1, scope: !2989, file: !2990, line: 2057, type: !89)
!2989 = distinct !DISubprogram(name: "rpl_realloc", scope: !2990, file: !2990, line: 2057, type: !2982, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2991)
!2990 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2991 = !{!2988, !2992}
!2992 = !DILocalVariable(name: "size", arg: 2, scope: !2989, file: !2990, line: 2057, type: !92)
!2993 = !DILocation(line: 0, scope: !2989, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 70, column: 25, scope: !2981)
!2995 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !2994)
!2996 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !2994)
!2997 = !DILocation(line: 0, scope: !2914, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 70, column: 10, scope: !2981)
!2999 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !2998)
!3000 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !2998)
!3001 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !2998)
!3002 = !DILocation(line: 70, column: 3, scope: !2981)
!3003 = !DISubprogram(name: "realloc", scope: !931, file: !931, line: 551, type: !2982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3004 = distinct !DISubprogram(name: "xirealloc", scope: !680, file: !680, line: 74, type: !3005, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!89, !89, !699}
!3007 = !{!3008, !3009}
!3008 = !DILocalVariable(name: "p", arg: 1, scope: !3004, file: !680, line: 74, type: !89)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3004, file: !680, line: 74, type: !699)
!3010 = !DILocation(line: 0, scope: !3004)
!3011 = !DILocalVariable(name: "p", arg: 1, scope: !3012, file: !2955, line: 66, type: !89)
!3012 = distinct !DISubprogram(name: "irealloc", scope: !2955, file: !2955, line: 66, type: !3005, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3013)
!3013 = !{!3011, !3014}
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3012, file: !2955, line: 66, type: !699)
!3015 = !DILocation(line: 0, scope: !3012, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 76, column: 25, scope: !3004)
!3017 = !DILocation(line: 0, scope: !2989, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 68, column: 26, scope: !3012, inlinedAt: !3016)
!3019 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !3018)
!3020 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !3018)
!3021 = !DILocation(line: 0, scope: !2914, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 76, column: 10, scope: !3004)
!3023 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3022)
!3024 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3022)
!3025 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3022)
!3026 = !DILocation(line: 76, column: 3, scope: !3004)
!3027 = distinct !DISubprogram(name: "xireallocarray", scope: !680, file: !680, line: 89, type: !3028, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!89, !89, !699, !699}
!3030 = !{!3031, !3032, !3033}
!3031 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !680, line: 89, type: !89)
!3032 = !DILocalVariable(name: "n", arg: 2, scope: !3027, file: !680, line: 89, type: !699)
!3033 = !DILocalVariable(name: "s", arg: 3, scope: !3027, file: !680, line: 89, type: !699)
!3034 = !DILocation(line: 0, scope: !3027)
!3035 = !DILocalVariable(name: "p", arg: 1, scope: !3036, file: !2955, line: 98, type: !89)
!3036 = distinct !DISubprogram(name: "ireallocarray", scope: !2955, file: !2955, line: 98, type: !3028, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3037)
!3037 = !{!3035, !3038, !3039}
!3038 = !DILocalVariable(name: "n", arg: 2, scope: !3036, file: !2955, line: 98, type: !699)
!3039 = !DILocalVariable(name: "s", arg: 3, scope: !3036, file: !2955, line: 98, type: !699)
!3040 = !DILocation(line: 0, scope: !3036, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 91, column: 25, scope: !3027)
!3042 = !DILocation(line: 101, column: 13, scope: !3036, inlinedAt: !3041)
!3043 = !DILocation(line: 0, scope: !2914, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 91, column: 10, scope: !3027)
!3045 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3044)
!3047 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3044)
!3048 = !DILocation(line: 91, column: 3, scope: !3027)
!3049 = distinct !DISubprogram(name: "xnmalloc", scope: !680, file: !680, line: 98, type: !3050, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!89, !92, !92}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "n", arg: 1, scope: !3049, file: !680, line: 98, type: !92)
!3054 = !DILocalVariable(name: "s", arg: 2, scope: !3049, file: !680, line: 98, type: !92)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocation(line: 0, scope: !2906, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 100, column: 10, scope: !3049)
!3058 = !DILocation(line: 85, column: 25, scope: !2906, inlinedAt: !3057)
!3059 = !DILocation(line: 0, scope: !2914, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 85, column: 10, scope: !2906, inlinedAt: !3057)
!3061 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3060)
!3062 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3060)
!3063 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3060)
!3064 = !DILocation(line: 100, column: 3, scope: !3049)
!3065 = distinct !DISubprogram(name: "xinmalloc", scope: !680, file: !680, line: 104, type: !3066, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!89, !699, !699}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "n", arg: 1, scope: !3065, file: !680, line: 104, type: !699)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !680, line: 104, type: !699)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 0, scope: !3027, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 106, column: 10, scope: !3065)
!3074 = !DILocation(line: 0, scope: !3036, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 91, column: 25, scope: !3027, inlinedAt: !3073)
!3076 = !DILocation(line: 101, column: 13, scope: !3036, inlinedAt: !3075)
!3077 = !DILocation(line: 0, scope: !2914, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 91, column: 10, scope: !3027, inlinedAt: !3073)
!3079 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3078)
!3082 = !DILocation(line: 106, column: 3, scope: !3065)
!3083 = distinct !DISubprogram(name: "x2realloc", scope: !680, file: !680, line: 116, type: !3084, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!89, !89, !686}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "p", arg: 1, scope: !3083, file: !680, line: 116, type: !89)
!3088 = !DILocalVariable(name: "ps", arg: 2, scope: !3083, file: !680, line: 116, type: !686)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 0, scope: !683, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 118, column: 10, scope: !3083)
!3092 = !DILocation(line: 178, column: 14, scope: !683, inlinedAt: !3091)
!3093 = !DILocation(line: 180, column: 9, scope: !3094, inlinedAt: !3091)
!3094 = distinct !DILexicalBlock(scope: !683, file: !680, line: 180, column: 7)
!3095 = !DILocation(line: 180, column: 7, scope: !683, inlinedAt: !3091)
!3096 = !DILocation(line: 182, column: 13, scope: !3097, inlinedAt: !3091)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !680, line: 182, column: 11)
!3098 = distinct !DILexicalBlock(scope: !3094, file: !680, line: 181, column: 5)
!3099 = !DILocation(line: 182, column: 11, scope: !3098, inlinedAt: !3091)
!3100 = !DILocation(line: 197, column: 11, scope: !3101, inlinedAt: !3091)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !680, line: 197, column: 11)
!3102 = distinct !DILexicalBlock(scope: !3094, file: !680, line: 195, column: 5)
!3103 = !DILocation(line: 197, column: 11, scope: !3102, inlinedAt: !3091)
!3104 = !DILocation(line: 198, column: 9, scope: !3101, inlinedAt: !3091)
!3105 = !DILocation(line: 0, scope: !2906, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 201, column: 7, scope: !683, inlinedAt: !3091)
!3107 = !DILocation(line: 85, column: 25, scope: !2906, inlinedAt: !3106)
!3108 = !DILocation(line: 0, scope: !2914, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 85, column: 10, scope: !2906, inlinedAt: !3106)
!3110 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3109)
!3111 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3109)
!3112 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3109)
!3113 = !DILocation(line: 202, column: 7, scope: !683, inlinedAt: !3091)
!3114 = !DILocation(line: 118, column: 3, scope: !3083)
!3115 = !DILocation(line: 0, scope: !683)
!3116 = !DILocation(line: 178, column: 14, scope: !683)
!3117 = !DILocation(line: 180, column: 9, scope: !3094)
!3118 = !DILocation(line: 180, column: 7, scope: !683)
!3119 = !DILocation(line: 182, column: 13, scope: !3097)
!3120 = !DILocation(line: 182, column: 11, scope: !3098)
!3121 = !DILocation(line: 190, column: 30, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3097, file: !680, line: 183, column: 9)
!3123 = !DILocation(line: 191, column: 16, scope: !3122)
!3124 = !DILocation(line: 191, column: 13, scope: !3122)
!3125 = !DILocation(line: 192, column: 9, scope: !3122)
!3126 = !DILocation(line: 197, column: 11, scope: !3101)
!3127 = !DILocation(line: 197, column: 11, scope: !3102)
!3128 = !DILocation(line: 198, column: 9, scope: !3101)
!3129 = !DILocation(line: 0, scope: !2906, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 201, column: 7, scope: !683)
!3131 = !DILocation(line: 85, column: 25, scope: !2906, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !2914, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 85, column: 10, scope: !2906, inlinedAt: !3130)
!3134 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3133)
!3137 = !DILocation(line: 202, column: 7, scope: !683)
!3138 = !DILocation(line: 203, column: 3, scope: !683)
!3139 = !DILocation(line: 0, scope: !695)
!3140 = !DILocation(line: 230, column: 14, scope: !695)
!3141 = !DILocation(line: 238, column: 7, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !695, file: !680, line: 238, column: 7)
!3143 = !DILocation(line: 238, column: 7, scope: !695)
!3144 = !DILocation(line: 240, column: 9, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !695, file: !680, line: 240, column: 7)
!3146 = !DILocation(line: 240, column: 18, scope: !3145)
!3147 = !DILocation(line: 253, column: 8, scope: !695)
!3148 = !DILocation(line: 258, column: 27, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !680, line: 257, column: 5)
!3150 = distinct !DILexicalBlock(scope: !695, file: !680, line: 256, column: 7)
!3151 = !DILocation(line: 259, column: 32, scope: !3149)
!3152 = !DILocation(line: 260, column: 5, scope: !3149)
!3153 = !DILocation(line: 262, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !695, file: !680, line: 262, column: 7)
!3155 = !DILocation(line: 262, column: 7, scope: !695)
!3156 = !DILocation(line: 263, column: 9, scope: !3154)
!3157 = !DILocation(line: 263, column: 5, scope: !3154)
!3158 = !DILocation(line: 264, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !695, file: !680, line: 264, column: 7)
!3160 = !DILocation(line: 264, column: 14, scope: !3159)
!3161 = !DILocation(line: 265, column: 7, scope: !3159)
!3162 = !DILocation(line: 265, column: 11, scope: !3159)
!3163 = !DILocation(line: 266, column: 11, scope: !3159)
!3164 = !DILocation(line: 267, column: 14, scope: !3159)
!3165 = !DILocation(line: 264, column: 7, scope: !695)
!3166 = !DILocation(line: 268, column: 5, scope: !3159)
!3167 = !DILocation(line: 0, scope: !2981, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 269, column: 8, scope: !695)
!3169 = !DILocation(line: 0, scope: !2989, inlinedAt: !3170)
!3170 = distinct !DILocation(line: 70, column: 25, scope: !2981, inlinedAt: !3168)
!3171 = !DILocation(line: 2059, column: 24, scope: !2989, inlinedAt: !3170)
!3172 = !DILocation(line: 2059, column: 10, scope: !2989, inlinedAt: !3170)
!3173 = !DILocation(line: 0, scope: !2914, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 70, column: 10, scope: !2981, inlinedAt: !3168)
!3175 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3174)
!3176 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3174)
!3177 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3174)
!3178 = !DILocation(line: 270, column: 7, scope: !695)
!3179 = !DILocation(line: 271, column: 3, scope: !695)
!3180 = distinct !DISubprogram(name: "xzalloc", scope: !680, file: !680, line: 279, type: !2934, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3181)
!3181 = !{!3182}
!3182 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !680, line: 279, type: !92)
!3183 = !DILocation(line: 0, scope: !3180)
!3184 = !DILocalVariable(name: "n", arg: 1, scope: !3185, file: !680, line: 294, type: !92)
!3185 = distinct !DISubprogram(name: "xcalloc", scope: !680, file: !680, line: 294, type: !3050, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3186)
!3186 = !{!3184, !3187}
!3187 = !DILocalVariable(name: "s", arg: 2, scope: !3185, file: !680, line: 294, type: !92)
!3188 = !DILocation(line: 0, scope: !3185, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 281, column: 10, scope: !3180)
!3190 = !DILocation(line: 296, column: 25, scope: !3185, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !2914, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 296, column: 10, scope: !3185, inlinedAt: !3189)
!3193 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3192)
!3196 = !DILocation(line: 281, column: 3, scope: !3180)
!3197 = !DISubprogram(name: "calloc", scope: !931, file: !931, line: 543, type: !3050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3198 = !DILocation(line: 0, scope: !3185)
!3199 = !DILocation(line: 296, column: 25, scope: !3185)
!3200 = !DILocation(line: 0, scope: !2914, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 296, column: 10, scope: !3185)
!3202 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3201)
!3203 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3201)
!3204 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3201)
!3205 = !DILocation(line: 296, column: 3, scope: !3185)
!3206 = distinct !DISubprogram(name: "xizalloc", scope: !680, file: !680, line: 285, type: !2948, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3207)
!3207 = !{!3208}
!3208 = !DILocalVariable(name: "s", arg: 1, scope: !3206, file: !680, line: 285, type: !699)
!3209 = !DILocation(line: 0, scope: !3206)
!3210 = !DILocalVariable(name: "n", arg: 1, scope: !3211, file: !680, line: 300, type: !699)
!3211 = distinct !DISubprogram(name: "xicalloc", scope: !680, file: !680, line: 300, type: !3066, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3212)
!3212 = !{!3210, !3213}
!3213 = !DILocalVariable(name: "s", arg: 2, scope: !3211, file: !680, line: 300, type: !699)
!3214 = !DILocation(line: 0, scope: !3211, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 287, column: 10, scope: !3206)
!3216 = !DILocalVariable(name: "n", arg: 1, scope: !3217, file: !2955, line: 77, type: !699)
!3217 = distinct !DISubprogram(name: "icalloc", scope: !2955, file: !2955, line: 77, type: !3066, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3218)
!3218 = !{!3216, !3219}
!3219 = !DILocalVariable(name: "s", arg: 2, scope: !3217, file: !2955, line: 77, type: !699)
!3220 = !DILocation(line: 0, scope: !3217, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 302, column: 25, scope: !3211, inlinedAt: !3215)
!3222 = !DILocation(line: 91, column: 10, scope: !3217, inlinedAt: !3221)
!3223 = !DILocation(line: 0, scope: !2914, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 302, column: 10, scope: !3211, inlinedAt: !3215)
!3225 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3224)
!3226 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3224)
!3227 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3224)
!3228 = !DILocation(line: 287, column: 3, scope: !3206)
!3229 = !DILocation(line: 0, scope: !3211)
!3230 = !DILocation(line: 0, scope: !3217, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 302, column: 25, scope: !3211)
!3232 = !DILocation(line: 91, column: 10, scope: !3217, inlinedAt: !3231)
!3233 = !DILocation(line: 0, scope: !2914, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 302, column: 10, scope: !3211)
!3235 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3234)
!3236 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3234)
!3237 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3234)
!3238 = !DILocation(line: 302, column: 3, scope: !3211)
!3239 = distinct !DISubprogram(name: "xmemdup", scope: !680, file: !680, line: 310, type: !3240, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!89, !955, !92}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "p", arg: 1, scope: !3239, file: !680, line: 310, type: !955)
!3244 = !DILocalVariable(name: "s", arg: 2, scope: !3239, file: !680, line: 310, type: !92)
!3245 = !DILocation(line: 0, scope: !3239)
!3246 = !DILocation(line: 0, scope: !2933, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 312, column: 18, scope: !3239)
!3248 = !DILocation(line: 49, column: 25, scope: !2933, inlinedAt: !3247)
!3249 = !DILocation(line: 0, scope: !2914, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 49, column: 10, scope: !2933, inlinedAt: !3247)
!3251 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3250)
!3254 = !DILocalVariable(name: "__dest", arg: 1, scope: !3255, file: !1424, line: 26, type: !3258)
!3255 = distinct !DISubprogram(name: "memcpy", scope: !1424, file: !1424, line: 26, type: !3256, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3259)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!89, !3258, !954, !92}
!3258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!3259 = !{!3254, !3260, !3261}
!3260 = !DILocalVariable(name: "__src", arg: 2, scope: !3255, file: !1424, line: 26, type: !954)
!3261 = !DILocalVariable(name: "__len", arg: 3, scope: !3255, file: !1424, line: 26, type: !92)
!3262 = !DILocation(line: 0, scope: !3255, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 312, column: 10, scope: !3239)
!3264 = !DILocation(line: 29, column: 10, scope: !3255, inlinedAt: !3263)
!3265 = !DILocation(line: 312, column: 3, scope: !3239)
!3266 = distinct !DISubprogram(name: "ximemdup", scope: !680, file: !680, line: 316, type: !3267, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!89, !955, !699}
!3269 = !{!3270, !3271}
!3270 = !DILocalVariable(name: "p", arg: 1, scope: !3266, file: !680, line: 316, type: !955)
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3266, file: !680, line: 316, type: !699)
!3272 = !DILocation(line: 0, scope: !3266)
!3273 = !DILocation(line: 0, scope: !2947, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 318, column: 18, scope: !3266)
!3275 = !DILocation(line: 0, scope: !2954, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 55, column: 25, scope: !2947, inlinedAt: !3274)
!3277 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !3276)
!3278 = !DILocation(line: 0, scope: !2914, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 55, column: 10, scope: !2947, inlinedAt: !3274)
!3280 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3279)
!3281 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3279)
!3282 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3279)
!3283 = !DILocation(line: 0, scope: !3255, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 318, column: 10, scope: !3266)
!3285 = !DILocation(line: 29, column: 10, scope: !3255, inlinedAt: !3284)
!3286 = !DILocation(line: 318, column: 3, scope: !3266)
!3287 = distinct !DISubprogram(name: "ximemdup0", scope: !680, file: !680, line: 325, type: !3288, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3290)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!237, !955, !699}
!3290 = !{!3291, !3292, !3293}
!3291 = !DILocalVariable(name: "p", arg: 1, scope: !3287, file: !680, line: 325, type: !955)
!3292 = !DILocalVariable(name: "s", arg: 2, scope: !3287, file: !680, line: 325, type: !699)
!3293 = !DILocalVariable(name: "result", scope: !3287, file: !680, line: 327, type: !237)
!3294 = !DILocation(line: 0, scope: !3287)
!3295 = !DILocation(line: 327, column: 30, scope: !3287)
!3296 = !DILocation(line: 0, scope: !2947, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 327, column: 18, scope: !3287)
!3298 = !DILocation(line: 0, scope: !2954, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 55, column: 25, scope: !2947, inlinedAt: !3297)
!3300 = !DILocation(line: 57, column: 26, scope: !2954, inlinedAt: !3299)
!3301 = !DILocation(line: 0, scope: !2914, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 55, column: 10, scope: !2947, inlinedAt: !3297)
!3303 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3302)
!3304 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3302)
!3305 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3302)
!3306 = !DILocation(line: 328, column: 3, scope: !3287)
!3307 = !DILocation(line: 328, column: 13, scope: !3287)
!3308 = !DILocation(line: 0, scope: !3255, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 329, column: 10, scope: !3287)
!3310 = !DILocation(line: 29, column: 10, scope: !3255, inlinedAt: !3309)
!3311 = !DILocation(line: 329, column: 3, scope: !3287)
!3312 = distinct !DISubprogram(name: "xstrdup", scope: !680, file: !680, line: 335, type: !933, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3313)
!3313 = !{!3314}
!3314 = !DILocalVariable(name: "string", arg: 1, scope: !3312, file: !680, line: 335, type: !68)
!3315 = !DILocation(line: 0, scope: !3312)
!3316 = !DILocation(line: 337, column: 27, scope: !3312)
!3317 = !DILocation(line: 337, column: 43, scope: !3312)
!3318 = !DILocation(line: 0, scope: !3239, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 337, column: 10, scope: !3312)
!3320 = !DILocation(line: 0, scope: !2933, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 312, column: 18, scope: !3239, inlinedAt: !3319)
!3322 = !DILocation(line: 49, column: 25, scope: !2933, inlinedAt: !3321)
!3323 = !DILocation(line: 0, scope: !2914, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 49, column: 10, scope: !2933, inlinedAt: !3321)
!3325 = !DILocation(line: 39, column: 8, scope: !2921, inlinedAt: !3324)
!3326 = !DILocation(line: 39, column: 7, scope: !2914, inlinedAt: !3324)
!3327 = !DILocation(line: 40, column: 5, scope: !2921, inlinedAt: !3324)
!3328 = !DILocation(line: 0, scope: !3255, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 312, column: 10, scope: !3239, inlinedAt: !3319)
!3330 = !DILocation(line: 29, column: 10, scope: !3255, inlinedAt: !3329)
!3331 = !DILocation(line: 337, column: 3, scope: !3312)
!3332 = distinct !DISubprogram(name: "xalloc_die", scope: !642, file: !642, line: 32, type: !365, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3333)
!3333 = !{!3334}
!3334 = !DILocalVariable(name: "__errstatus", scope: !3335, file: !642, line: 34, type: !3336)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !642, line: 34, column: 3)
!3336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3337 = !DILocation(line: 34, column: 3, scope: !3335)
!3338 = !DILocation(line: 0, scope: !3335)
!3339 = !DILocation(line: 40, column: 3, scope: !3332)
!3340 = distinct !DISubprogram(name: "close_stream", scope: !716, file: !716, line: 55, type: !3341, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3377)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{!90, !3343}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3345, file: !233, line: 51, baseType: !90, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3345, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3345, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3345, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3345, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3345, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3345, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3345, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3345, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3345, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3345, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3345, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3345, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3345, file: !233, line: 70, baseType: !3361, size: 64, offset: 832)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3345, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3345, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3345, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3345, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3345, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3345, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3345, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3345, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3345, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3345, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3345, file: !233, line: 93, baseType: !3361, size: 64, offset: 1344)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3345, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3345, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3345, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3345, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3377 = !{!3378, !3379, !3381, !3382}
!3378 = !DILocalVariable(name: "stream", arg: 1, scope: !3340, file: !716, line: 55, type: !3343)
!3379 = !DILocalVariable(name: "some_pending", scope: !3340, file: !716, line: 57, type: !3380)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3381 = !DILocalVariable(name: "prev_fail", scope: !3340, file: !716, line: 58, type: !3380)
!3382 = !DILocalVariable(name: "fclose_fail", scope: !3340, file: !716, line: 59, type: !3380)
!3383 = !DILocation(line: 0, scope: !3340)
!3384 = !DILocation(line: 57, column: 30, scope: !3340)
!3385 = !DILocalVariable(name: "__stream", arg: 1, scope: !3386, file: !1175, line: 135, type: !3343)
!3386 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1175, file: !1175, line: 135, type: !3341, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3387)
!3387 = !{!3385}
!3388 = !DILocation(line: 0, scope: !3386, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 58, column: 27, scope: !3340)
!3390 = !DILocation(line: 137, column: 10, scope: !3386, inlinedAt: !3389)
!3391 = !{!1184, !808, i64 0}
!3392 = !DILocation(line: 58, column: 43, scope: !3340)
!3393 = !DILocation(line: 59, column: 29, scope: !3340)
!3394 = !DILocation(line: 59, column: 45, scope: !3340)
!3395 = !DILocation(line: 69, column: 17, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3340, file: !716, line: 69, column: 7)
!3397 = !DILocation(line: 57, column: 50, scope: !3340)
!3398 = !DILocation(line: 69, column: 33, scope: !3396)
!3399 = !DILocation(line: 69, column: 53, scope: !3396)
!3400 = !DILocation(line: 69, column: 59, scope: !3396)
!3401 = !DILocation(line: 69, column: 7, scope: !3340)
!3402 = !DILocation(line: 71, column: 11, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3396, file: !716, line: 70, column: 5)
!3404 = !DILocation(line: 72, column: 9, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3403, file: !716, line: 71, column: 11)
!3406 = !DILocation(line: 72, column: 15, scope: !3405)
!3407 = !DILocation(line: 77, column: 1, scope: !3340)
!3408 = !DISubprogram(name: "__fpending", scope: !3409, file: !3409, line: 75, type: !3410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3409 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!92, !3343}
!3412 = distinct !DISubprogram(name: "rpl_fclose", scope: !718, file: !718, line: 58, type: !3413, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3449)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!90, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3417)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3417, file: !233, line: 51, baseType: !90, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3417, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3417, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3417, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3417, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3417, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3417, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3417, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3417, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3417, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3417, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3417, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3417, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3417, file: !233, line: 70, baseType: !3433, size: 64, offset: 832)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3417, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3417, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3417, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3417, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3417, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3417, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3417, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3417, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3417, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3417, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3417, file: !233, line: 93, baseType: !3433, size: 64, offset: 1344)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3417, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3417, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3417, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3417, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DILocalVariable(name: "fp", arg: 1, scope: !3412, file: !718, line: 58, type: !3415)
!3451 = !DILocalVariable(name: "saved_errno", scope: !3412, file: !718, line: 60, type: !90)
!3452 = !DILocalVariable(name: "fd", scope: !3412, file: !718, line: 63, type: !90)
!3453 = !DILocalVariable(name: "result", scope: !3412, file: !718, line: 74, type: !90)
!3454 = !DILocation(line: 0, scope: !3412)
!3455 = !DILocation(line: 63, column: 12, scope: !3412)
!3456 = !DILocation(line: 64, column: 10, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3412, file: !718, line: 64, column: 7)
!3458 = !DILocation(line: 64, column: 7, scope: !3412)
!3459 = !DILocation(line: 65, column: 12, scope: !3457)
!3460 = !DILocation(line: 65, column: 5, scope: !3457)
!3461 = !DILocation(line: 70, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3412, file: !718, line: 70, column: 7)
!3463 = !DILocation(line: 70, column: 23, scope: !3462)
!3464 = !DILocation(line: 70, column: 33, scope: !3462)
!3465 = !DILocation(line: 70, column: 26, scope: !3462)
!3466 = !DILocation(line: 70, column: 59, scope: !3462)
!3467 = !DILocation(line: 71, column: 7, scope: !3462)
!3468 = !DILocation(line: 71, column: 10, scope: !3462)
!3469 = !DILocation(line: 70, column: 7, scope: !3412)
!3470 = !DILocation(line: 100, column: 12, scope: !3412)
!3471 = !DILocation(line: 105, column: 7, scope: !3412)
!3472 = !DILocation(line: 72, column: 19, scope: !3462)
!3473 = !DILocation(line: 105, column: 19, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3412, file: !718, line: 105, column: 7)
!3475 = !DILocation(line: 107, column: 13, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !718, line: 106, column: 5)
!3477 = !DILocation(line: 109, column: 5, scope: !3476)
!3478 = !DILocation(line: 112, column: 1, scope: !3412)
!3479 = !DISubprogram(name: "fileno", scope: !324, file: !324, line: 809, type: !3413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3480 = !DISubprogram(name: "fclose", scope: !324, file: !324, line: 178, type: !3413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3481 = !DISubprogram(name: "__freading", scope: !3409, file: !3409, line: 51, type: !3413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3482 = !DISubprogram(name: "lseek", scope: !993, file: !993, line: 339, type: !3483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{!256, !90, !256, !90}
!3485 = distinct !DISubprogram(name: "rpl_fflush", scope: !720, file: !720, line: 130, type: !3486, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3522)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!90, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3490, file: !233, line: 51, baseType: !90, size: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3490, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3490, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3490, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3490, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3490, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3490, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3490, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3490, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3490, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3490, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3490, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3490, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3490, file: !233, line: 70, baseType: !3506, size: 64, offset: 832)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3490, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3490, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3490, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3490, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3490, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3490, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3490, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3490, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3490, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3490, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3490, file: !233, line: 93, baseType: !3506, size: 64, offset: 1344)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3490, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3490, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3490, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3490, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "stream", arg: 1, scope: !3485, file: !720, line: 130, type: !3488)
!3524 = !DILocation(line: 0, scope: !3485)
!3525 = !DILocation(line: 151, column: 14, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3485, file: !720, line: 151, column: 7)
!3527 = !DILocation(line: 151, column: 22, scope: !3526)
!3528 = !DILocation(line: 151, column: 27, scope: !3526)
!3529 = !DILocation(line: 151, column: 7, scope: !3485)
!3530 = !DILocation(line: 152, column: 12, scope: !3526)
!3531 = !DILocation(line: 152, column: 5, scope: !3526)
!3532 = !DILocalVariable(name: "fp", arg: 1, scope: !3533, file: !720, line: 42, type: !3488)
!3533 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !720, file: !720, line: 42, type: !3534, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{null, !3488}
!3536 = !{!3532}
!3537 = !DILocation(line: 0, scope: !3533, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 157, column: 3, scope: !3485)
!3539 = !DILocation(line: 44, column: 12, scope: !3540, inlinedAt: !3538)
!3540 = distinct !DILexicalBlock(scope: !3533, file: !720, line: 44, column: 7)
!3541 = !DILocation(line: 44, column: 19, scope: !3540, inlinedAt: !3538)
!3542 = !DILocation(line: 44, column: 7, scope: !3533, inlinedAt: !3538)
!3543 = !DILocation(line: 46, column: 5, scope: !3540, inlinedAt: !3538)
!3544 = !DILocation(line: 159, column: 10, scope: !3485)
!3545 = !DILocation(line: 159, column: 3, scope: !3485)
!3546 = !DILocation(line: 236, column: 1, scope: !3485)
!3547 = !DISubprogram(name: "fflush", scope: !324, file: !324, line: 230, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3548 = distinct !DISubprogram(name: "rpl_fseeko", scope: !722, file: !722, line: 28, type: !3549, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3586)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!90, !3551, !3585, !90}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3553)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3553, file: !233, line: 51, baseType: !90, size: 32)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3553, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3553, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3553, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3553, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3553, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3553, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3553, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3553, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3553, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3553, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3553, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3553, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3553, file: !233, line: 70, baseType: !3569, size: 64, offset: 832)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3553, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3553, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3553, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3553, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3553, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3553, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3553, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3553, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3553, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3553, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3553, file: !233, line: 93, baseType: !3569, size: 64, offset: 1344)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3553, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3553, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3553, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3553, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3585 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !324, line: 63, baseType: !256)
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DILocalVariable(name: "fp", arg: 1, scope: !3548, file: !722, line: 28, type: !3551)
!3588 = !DILocalVariable(name: "offset", arg: 2, scope: !3548, file: !722, line: 28, type: !3585)
!3589 = !DILocalVariable(name: "whence", arg: 3, scope: !3548, file: !722, line: 28, type: !90)
!3590 = !DILocalVariable(name: "pos", scope: !3591, file: !722, line: 123, type: !3585)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !722, line: 119, column: 5)
!3592 = distinct !DILexicalBlock(scope: !3548, file: !722, line: 55, column: 7)
!3593 = !DILocation(line: 0, scope: !3548)
!3594 = !DILocation(line: 55, column: 12, scope: !3592)
!3595 = !{!1184, !752, i64 16}
!3596 = !DILocation(line: 55, column: 33, scope: !3592)
!3597 = !{!1184, !752, i64 8}
!3598 = !DILocation(line: 55, column: 25, scope: !3592)
!3599 = !DILocation(line: 56, column: 7, scope: !3592)
!3600 = !DILocation(line: 56, column: 15, scope: !3592)
!3601 = !DILocation(line: 56, column: 37, scope: !3592)
!3602 = !{!1184, !752, i64 32}
!3603 = !DILocation(line: 56, column: 29, scope: !3592)
!3604 = !DILocation(line: 57, column: 7, scope: !3592)
!3605 = !DILocation(line: 57, column: 15, scope: !3592)
!3606 = !{!1184, !752, i64 72}
!3607 = !DILocation(line: 57, column: 29, scope: !3592)
!3608 = !DILocation(line: 55, column: 7, scope: !3548)
!3609 = !DILocation(line: 123, column: 26, scope: !3591)
!3610 = !DILocation(line: 123, column: 19, scope: !3591)
!3611 = !DILocation(line: 0, scope: !3591)
!3612 = !DILocation(line: 124, column: 15, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3591, file: !722, line: 124, column: 11)
!3614 = !DILocation(line: 124, column: 11, scope: !3591)
!3615 = !DILocation(line: 135, column: 19, scope: !3591)
!3616 = !DILocation(line: 136, column: 12, scope: !3591)
!3617 = !DILocation(line: 136, column: 20, scope: !3591)
!3618 = !{!1184, !1185, i64 144}
!3619 = !DILocation(line: 167, column: 7, scope: !3591)
!3620 = !DILocation(line: 169, column: 10, scope: !3548)
!3621 = !DILocation(line: 169, column: 3, scope: !3548)
!3622 = !DILocation(line: 170, column: 1, scope: !3548)
!3623 = !DISubprogram(name: "fseeko", scope: !324, file: !324, line: 736, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!90, !3551, !256, !90}
!3626 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !649, file: !649, line: 100, type: !3627, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3630)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!92, !1442, !68, !92, !3629}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3630 = !{!3631, !3632, !3633, !3634, !3635}
!3631 = !DILocalVariable(name: "pwc", arg: 1, scope: !3626, file: !649, line: 100, type: !1442)
!3632 = !DILocalVariable(name: "s", arg: 2, scope: !3626, file: !649, line: 100, type: !68)
!3633 = !DILocalVariable(name: "n", arg: 3, scope: !3626, file: !649, line: 100, type: !92)
!3634 = !DILocalVariable(name: "ps", arg: 4, scope: !3626, file: !649, line: 100, type: !3629)
!3635 = !DILocalVariable(name: "ret", scope: !3626, file: !649, line: 130, type: !92)
!3636 = !DILocation(line: 0, scope: !3626)
!3637 = !DILocation(line: 105, column: 9, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3626, file: !649, line: 105, column: 7)
!3639 = !DILocation(line: 105, column: 7, scope: !3626)
!3640 = !DILocation(line: 117, column: 10, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3626, file: !649, line: 117, column: 7)
!3642 = !DILocation(line: 117, column: 7, scope: !3626)
!3643 = !DILocation(line: 130, column: 16, scope: !3626)
!3644 = !DILocation(line: 135, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3626, file: !649, line: 135, column: 7)
!3646 = !DILocation(line: 135, column: 25, scope: !3645)
!3647 = !DILocation(line: 135, column: 30, scope: !3645)
!3648 = !DILocation(line: 135, column: 7, scope: !3626)
!3649 = !DILocalVariable(name: "ps", arg: 1, scope: !3650, file: !1415, line: 1135, type: !3629)
!3650 = distinct !DISubprogram(name: "mbszero", scope: !1415, file: !1415, line: 1135, type: !3651, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3653)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3629}
!3653 = !{!3649}
!3654 = !DILocation(line: 0, scope: !3650, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 137, column: 5, scope: !3645)
!3656 = !DILocalVariable(name: "__dest", arg: 1, scope: !3657, file: !1424, line: 57, type: !89)
!3657 = distinct !DISubprogram(name: "memset", scope: !1424, file: !1424, line: 57, type: !1425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3658)
!3658 = !{!3656, !3659, !3660}
!3659 = !DILocalVariable(name: "__ch", arg: 2, scope: !3657, file: !1424, line: 57, type: !90)
!3660 = !DILocalVariable(name: "__len", arg: 3, scope: !3657, file: !1424, line: 57, type: !92)
!3661 = !DILocation(line: 0, scope: !3657, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1137, column: 3, scope: !3650, inlinedAt: !3655)
!3663 = !DILocation(line: 59, column: 10, scope: !3657, inlinedAt: !3662)
!3664 = !DILocation(line: 137, column: 5, scope: !3645)
!3665 = !DILocation(line: 138, column: 11, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3626, file: !649, line: 138, column: 7)
!3667 = !DILocation(line: 138, column: 7, scope: !3626)
!3668 = !DILocation(line: 139, column: 5, scope: !3666)
!3669 = !DILocation(line: 143, column: 26, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3626, file: !649, line: 143, column: 7)
!3671 = !DILocation(line: 143, column: 41, scope: !3670)
!3672 = !DILocation(line: 143, column: 7, scope: !3626)
!3673 = !DILocation(line: 145, column: 15, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !649, line: 145, column: 11)
!3675 = distinct !DILexicalBlock(scope: !3670, file: !649, line: 144, column: 5)
!3676 = !DILocation(line: 145, column: 11, scope: !3675)
!3677 = !DILocation(line: 146, column: 32, scope: !3674)
!3678 = !DILocation(line: 146, column: 16, scope: !3674)
!3679 = !DILocation(line: 146, column: 14, scope: !3674)
!3680 = !DILocation(line: 146, column: 9, scope: !3674)
!3681 = !DILocation(line: 286, column: 1, scope: !3626)
!3682 = !DISubprogram(name: "mbsinit", scope: !3683, file: !3683, line: 293, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !795)
!3683 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!90, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!3688 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !724, file: !724, line: 27, type: !2898, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3689)
!3689 = !{!3690, !3691, !3692, !3693}
!3690 = !DILocalVariable(name: "ptr", arg: 1, scope: !3688, file: !724, line: 27, type: !89)
!3691 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3688, file: !724, line: 27, type: !92)
!3692 = !DILocalVariable(name: "size", arg: 3, scope: !3688, file: !724, line: 27, type: !92)
!3693 = !DILocalVariable(name: "nbytes", scope: !3688, file: !724, line: 29, type: !92)
!3694 = !DILocation(line: 0, scope: !3688)
!3695 = !DILocation(line: 30, column: 7, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3688, file: !724, line: 30, column: 7)
!3697 = !DILocalVariable(name: "ptr", arg: 1, scope: !3698, file: !2990, line: 2057, type: !89)
!3698 = distinct !DISubprogram(name: "rpl_realloc", scope: !2990, file: !2990, line: 2057, type: !2982, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3699)
!3699 = !{!3697, !3700}
!3700 = !DILocalVariable(name: "size", arg: 2, scope: !3698, file: !2990, line: 2057, type: !92)
!3701 = !DILocation(line: 0, scope: !3698, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 37, column: 10, scope: !3688)
!3703 = !DILocation(line: 2059, column: 24, scope: !3698, inlinedAt: !3702)
!3704 = !DILocation(line: 2059, column: 10, scope: !3698, inlinedAt: !3702)
!3705 = !DILocation(line: 37, column: 3, scope: !3688)
!3706 = !DILocation(line: 32, column: 7, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3696, file: !724, line: 31, column: 5)
!3708 = !DILocation(line: 32, column: 13, scope: !3707)
!3709 = !DILocation(line: 33, column: 7, scope: !3707)
!3710 = !DILocation(line: 38, column: 1, scope: !3688)
!3711 = distinct !DISubprogram(name: "hard_locale", scope: !667, file: !667, line: 28, type: !3712, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!216, !90}
!3714 = !{!3715, !3716}
!3715 = !DILocalVariable(name: "category", arg: 1, scope: !3711, file: !667, line: 28, type: !90)
!3716 = !DILocalVariable(name: "locale", scope: !3711, file: !667, line: 30, type: !3717)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3718)
!3718 = !{!3719}
!3719 = !DISubrange(count: 257)
!3720 = !DILocation(line: 0, scope: !3711)
!3721 = !DILocation(line: 30, column: 3, scope: !3711)
!3722 = !DILocation(line: 30, column: 8, scope: !3711)
!3723 = !DILocation(line: 32, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3711, file: !667, line: 32, column: 7)
!3725 = !DILocation(line: 32, column: 7, scope: !3711)
!3726 = !DILocalVariable(name: "__s1", arg: 1, scope: !3727, file: !820, line: 1359, type: !68)
!3727 = distinct !DISubprogram(name: "streq", scope: !820, file: !820, line: 1359, type: !821, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3728)
!3728 = !{!3726, !3729}
!3729 = !DILocalVariable(name: "__s2", arg: 2, scope: !3727, file: !820, line: 1359, type: !68)
!3730 = !DILocation(line: 0, scope: !3727, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 35, column: 9, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3711, file: !667, line: 35, column: 7)
!3733 = !DILocation(line: 1361, column: 11, scope: !3727, inlinedAt: !3731)
!3734 = !DILocation(line: 1361, column: 10, scope: !3727, inlinedAt: !3731)
!3735 = !DILocation(line: 35, column: 29, scope: !3732)
!3736 = !DILocation(line: 0, scope: !3727, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 35, column: 32, scope: !3732)
!3738 = !DILocation(line: 1361, column: 11, scope: !3727, inlinedAt: !3737)
!3739 = !DILocation(line: 1361, column: 10, scope: !3727, inlinedAt: !3737)
!3740 = !DILocation(line: 35, column: 7, scope: !3711)
!3741 = !DILocation(line: 46, column: 3, scope: !3711)
!3742 = !DILocation(line: 47, column: 1, scope: !3711)
!3743 = distinct !DISubprogram(name: "setlocale_null_r", scope: !729, file: !729, line: 154, type: !3744, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!90, !90, !237, !92}
!3746 = !{!3747, !3748, !3749}
!3747 = !DILocalVariable(name: "category", arg: 1, scope: !3743, file: !729, line: 154, type: !90)
!3748 = !DILocalVariable(name: "buf", arg: 2, scope: !3743, file: !729, line: 154, type: !237)
!3749 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3743, file: !729, line: 154, type: !92)
!3750 = !DILocation(line: 0, scope: !3743)
!3751 = !DILocation(line: 159, column: 10, scope: !3743)
!3752 = !DILocation(line: 159, column: 3, scope: !3743)
!3753 = distinct !DISubprogram(name: "setlocale_null", scope: !729, file: !729, line: 186, type: !3754, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3756)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!68, !90}
!3756 = !{!3757}
!3757 = !DILocalVariable(name: "category", arg: 1, scope: !3753, file: !729, line: 186, type: !90)
!3758 = !DILocation(line: 0, scope: !3753)
!3759 = !DILocation(line: 189, column: 10, scope: !3753)
!3760 = !DILocation(line: 189, column: 3, scope: !3753)
!3761 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !731, file: !731, line: 35, type: !3754, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3762)
!3762 = !{!3763, !3764}
!3763 = !DILocalVariable(name: "category", arg: 1, scope: !3761, file: !731, line: 35, type: !90)
!3764 = !DILocalVariable(name: "result", scope: !3761, file: !731, line: 37, type: !68)
!3765 = !DILocation(line: 0, scope: !3761)
!3766 = !DILocation(line: 37, column: 24, scope: !3761)
!3767 = !DILocation(line: 62, column: 3, scope: !3761)
!3768 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !731, file: !731, line: 66, type: !3744, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3769)
!3769 = !{!3770, !3771, !3772, !3773, !3774}
!3770 = !DILocalVariable(name: "category", arg: 1, scope: !3768, file: !731, line: 66, type: !90)
!3771 = !DILocalVariable(name: "buf", arg: 2, scope: !3768, file: !731, line: 66, type: !237)
!3772 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3768, file: !731, line: 66, type: !92)
!3773 = !DILocalVariable(name: "result", scope: !3768, file: !731, line: 111, type: !68)
!3774 = !DILocalVariable(name: "length", scope: !3775, file: !731, line: 125, type: !92)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !731, line: 124, column: 5)
!3776 = distinct !DILexicalBlock(scope: !3768, file: !731, line: 113, column: 7)
!3777 = !DILocation(line: 0, scope: !3768)
!3778 = !DILocation(line: 0, scope: !3761, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 111, column: 24, scope: !3768)
!3780 = !DILocation(line: 37, column: 24, scope: !3761, inlinedAt: !3779)
!3781 = !DILocation(line: 113, column: 14, scope: !3776)
!3782 = !DILocation(line: 113, column: 7, scope: !3768)
!3783 = !DILocation(line: 116, column: 19, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !731, line: 116, column: 11)
!3785 = distinct !DILexicalBlock(scope: !3776, file: !731, line: 114, column: 5)
!3786 = !DILocation(line: 116, column: 11, scope: !3785)
!3787 = !DILocation(line: 120, column: 16, scope: !3784)
!3788 = !DILocation(line: 120, column: 9, scope: !3784)
!3789 = !DILocation(line: 125, column: 23, scope: !3775)
!3790 = !DILocation(line: 0, scope: !3775)
!3791 = !DILocation(line: 126, column: 18, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3775, file: !731, line: 126, column: 11)
!3793 = !DILocation(line: 126, column: 11, scope: !3775)
!3794 = !DILocation(line: 128, column: 39, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3792, file: !731, line: 127, column: 9)
!3796 = !DILocalVariable(name: "__dest", arg: 1, scope: !3797, file: !1424, line: 26, type: !3258)
!3797 = distinct !DISubprogram(name: "memcpy", scope: !1424, file: !1424, line: 26, type: !3256, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3798)
!3798 = !{!3796, !3799, !3800}
!3799 = !DILocalVariable(name: "__src", arg: 2, scope: !3797, file: !1424, line: 26, type: !954)
!3800 = !DILocalVariable(name: "__len", arg: 3, scope: !3797, file: !1424, line: 26, type: !92)
!3801 = !DILocation(line: 0, scope: !3797, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 128, column: 11, scope: !3795)
!3803 = !DILocation(line: 29, column: 10, scope: !3797, inlinedAt: !3802)
!3804 = !DILocation(line: 129, column: 11, scope: !3795)
!3805 = !DILocation(line: 133, column: 23, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !731, line: 133, column: 15)
!3807 = distinct !DILexicalBlock(scope: !3792, file: !731, line: 132, column: 9)
!3808 = !DILocation(line: 133, column: 15, scope: !3807)
!3809 = !DILocation(line: 138, column: 44, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3806, file: !731, line: 134, column: 13)
!3811 = !DILocation(line: 0, scope: !3797, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 138, column: 15, scope: !3810)
!3813 = !DILocation(line: 29, column: 10, scope: !3797, inlinedAt: !3812)
!3814 = !DILocation(line: 139, column: 15, scope: !3810)
!3815 = !DILocation(line: 139, column: 32, scope: !3810)
!3816 = !DILocation(line: 140, column: 13, scope: !3810)
!3817 = !DILocation(line: 0, scope: !3776)
!3818 = !DILocation(line: 145, column: 1, scope: !3768)
