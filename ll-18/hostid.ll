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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !342
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !344
@.str.2.31 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !346
@.str.3.30 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !348
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !350
@.str.4.24 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !354
@.str.5.25 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !356
@.str.6.26 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !361
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !366
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.40, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.41, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !369
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !744, metadata !DIExpression()), !dbg !745
  %2 = icmp eq i32 %0, 0, !dbg !746
  br i1 %2, label %8, label %3, !dbg !748

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !749, !tbaa !751
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !749
  %6 = load ptr, ptr @program_name, align 8, !dbg !749, !tbaa !751
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !749
  br label %28, !dbg !749

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !755
  %10 = load ptr, ptr @program_name, align 8, !dbg !755, !tbaa !751
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !755
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !757
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !757
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !758
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !758
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !759, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata !778, metadata !772, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr poison, metadata !771, metadata !DIExpression()), !dbg !776
  tail call void @emit_bug_reporting_address() #37, !dbg !779
  %14 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !780
  call void @llvm.dbg.value(metadata ptr %14, metadata !774, metadata !DIExpression()), !dbg !776
  %15 = icmp eq ptr %14, null, !dbg !781
  br i1 %15, label %23, label %16, !dbg !783

16:                                               ; preds = %8
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.42, i64 noundef 3) #38, !dbg !784
  %18 = icmp eq i32 %17, 0, !dbg !784
  br i1 %18, label %23, label %19, !dbg !785

19:                                               ; preds = %16
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #37, !dbg !786
  %21 = load ptr, ptr @stdout, align 8, !dbg !786, !tbaa !751
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !786
  br label %23, !dbg !788

23:                                               ; preds = %8, %16, %19
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !771, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !775, metadata !DIExpression()), !dbg !776
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !789
  %25 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %24, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2) #37, !dbg !789
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !790
  %27 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.46) #37, !dbg !790
  br label %28

28:                                               ; preds = %23, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !791
  unreachable, !dbg !791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !792 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !796 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !802 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !64 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !210, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !211, metadata !DIExpression()), !dbg !805
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !806, !tbaa !807
  %3 = icmp eq i32 %2, -1, !dbg !809
  br i1 %3, label %4, label %16, !dbg !810

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.12) #37, !dbg !811
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !212, metadata !DIExpression()), !dbg !812
  %6 = icmp eq ptr %5, null, !dbg !813
  br i1 %6, label %14, label %7, !dbg !814

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !815, !tbaa !816
  %9 = icmp eq i8 %8, 0, !dbg !815
  br i1 %9, label %14, label %10, !dbg !817

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !818, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !824, metadata !DIExpression()), !dbg !825
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.13) #38, !dbg !827
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
  br label %121, !dbg !836

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !215, metadata !DIExpression()), !dbg !805
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.14) #38, !dbg !837
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !838
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !217, metadata !DIExpression()), !dbg !805
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !839
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !218, metadata !DIExpression()), !dbg !805
  %26 = icmp eq ptr %25, null, !dbg !840
  br i1 %26, label %53, label %27, !dbg !841

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !842
  br i1 %28, label %53, label %29, !dbg !843

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !844
  %30 = icmp ult ptr %24, %25, !dbg !845
  br i1 %30, label %31, label %53, !dbg !846

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !805
  %33 = load ptr, ptr %32, align 8, !tbaa !751
  br label %34, !dbg !846

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !219, metadata !DIExpression()), !dbg !844
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !223, metadata !DIExpression()), !dbg !844
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !219, metadata !DIExpression()), !dbg !844
  %38 = load i8, ptr %35, align 1, !dbg !847, !tbaa !816
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !847
  %41 = load i16, ptr %40, align 2, !dbg !847, !tbaa !848
  %42 = freeze i16 %41, !dbg !850
  %43 = lshr i16 %42, 13, !dbg !850
  %44 = and i16 %43, 1, !dbg !850
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !851
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !223, metadata !DIExpression()), !dbg !844
  %47 = icmp ult ptr %37, %25, !dbg !845
  %48 = icmp ult i64 %46, 2, !dbg !852
  %49 = select i1 %47, i1 %48, i1 false, !dbg !852
  br i1 %49, label %34, label %50, !dbg !846, !llvm.loop !853

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !851
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !855
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !857
  br label %53, !dbg !857

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !805
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !218, metadata !DIExpression()), !dbg !805
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.15) #38, !dbg !858
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !224, metadata !DIExpression()), !dbg !805
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !859
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !225, metadata !DIExpression()), !dbg !805
  br label %58, !dbg !860

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !805
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !225, metadata !DIExpression()), !dbg !805
  %61 = load i8, ptr %59, align 1, !dbg !861, !tbaa !816
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !862

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !863
  %64 = load i8, ptr %63, align 1, !dbg !866, !tbaa !816
  %65 = icmp ne i8 %64, 45, !dbg !867
  %66 = select i1 %65, i1 %60, i1 false, !dbg !868
  br label %67, !dbg !868

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !215, metadata !DIExpression()), !dbg !805
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !869
  %70 = load ptr, ptr %69, align 8, !dbg !869, !tbaa !751
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !869
  %73 = load i16, ptr %72, align 2, !dbg !869, !tbaa !848
  %74 = and i16 %73, 8192, !dbg !869
  %75 = icmp eq i16 %74, 0, !dbg !869
  br i1 %75, label %89, label %76, !dbg !871

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !872
  br i1 %77, label %91, label %78, !dbg !875

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !876
  %80 = load i8, ptr %79, align 1, !dbg !876, !tbaa !816
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !876
  %83 = load i16, ptr %82, align 2, !dbg !876, !tbaa !848
  %84 = and i16 %83, 8192, !dbg !876
  %85 = icmp eq i16 %84, 0, !dbg !876
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !877
  br i1 %88, label %89, label %91, !dbg !877

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !878
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !225, metadata !DIExpression()), !dbg !805
  br label %58, !dbg !860, !llvm.loop !879

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !805
  %92 = ptrtoint ptr %24 to i64, !dbg !881
  %93 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !751
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !881
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !882
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !884
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !818, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !778, metadata !824, metadata !DIExpression()), !dbg !900
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !283, metadata !DIExpression()), !dbg !805
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.29, i64 noundef 6) #38, !dbg !902
  %96 = icmp eq i32 %95, 0, !dbg !902
  br i1 %96, label %100, label %97, !dbg !904

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.30, i64 noundef 9) #38, !dbg !905
  %99 = icmp eq i32 %98, 0, !dbg !905
  br i1 %99, label %100, label %103, !dbg !906

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !907
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %101, ptr noundef %54) #37, !dbg !907
  br label %106, !dbg !909

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !910
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %54) #37, !dbg !910
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !912, !tbaa !751
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.35, ptr noundef %107), !dbg !912
  %109 = load ptr, ptr @stdout, align 8, !dbg !913, !tbaa !751
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %109), !dbg !913
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !914
  %112 = sub i64 %111, %92, !dbg !914
  %113 = load ptr, ptr @stdout, align 8, !dbg !914, !tbaa !751
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !914
  %115 = load ptr, ptr @stdout, align 8, !dbg !915, !tbaa !751
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %115), !dbg !915
  %117 = load ptr, ptr @stdout, align 8, !dbg !916, !tbaa !751
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %117), !dbg !916
  %119 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !751
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !917
  br label %121, !dbg !918

121:                                              ; preds = %106, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !957 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !962, metadata !DIExpression()), !dbg !965
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !963, metadata !DIExpression()), !dbg !965
  %3 = load ptr, ptr %1, align 8, !dbg !966, !tbaa !751
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !967
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.5) #37, !dbg !968
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #37, !dbg !969
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.6) #37, !dbg !970
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !971
  %8 = load ptr, ptr @Version, align 8, !dbg !972, !tbaa !751
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #37, !dbg !973
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.8, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !974
  %10 = load i32, ptr @optind, align 4, !dbg !975, !tbaa !807
  %11 = icmp slt i32 %10, %0, !dbg !977
  br i1 %11, label %12, label %19, !dbg !978

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #37, !dbg !979
  %14 = load i32, ptr @optind, align 4, !dbg !979, !tbaa !807
  %15 = sext i32 %14 to i64, !dbg !979
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !979
  %17 = load ptr, ptr %16, align 8, !dbg !979, !tbaa !751
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !979
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !979
  tail call void @usage(i32 noundef 1) #41, !dbg !981
  unreachable, !dbg !981

19:                                               ; preds = %2
  %20 = tail call i64 @gethostid() #37, !dbg !982
  %21 = trunc i64 %20 to i32, !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !964, metadata !DIExpression()), !dbg !965
  %22 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %21) #37, !dbg !983
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !998, metadata !DIExpression()), !dbg !999
  store ptr %0, ptr @file_name, align 8, !dbg !1000, !tbaa !751
  ret void, !dbg !1001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1002 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1008, !tbaa !1009
  ret void, !dbg !1011
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1012 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1017, !tbaa !751
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1018
  %3 = icmp eq i32 %2, 0, !dbg !1019
  br i1 %3, label %22, label %4, !dbg !1020

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1021, !tbaa !1009, !range !1022, !noundef !778
  %6 = icmp eq i8 %5, 0, !dbg !1021
  br i1 %6, label %11, label %7, !dbg !1023

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1024
  %9 = load i32, ptr %8, align 4, !dbg !1024, !tbaa !807
  %10 = icmp eq i32 %9, 32, !dbg !1025
  br i1 %10, label %22, label %11, !dbg !1026

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1.20, i32 noundef 5) #37, !dbg !1027
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1014, metadata !DIExpression()), !dbg !1028
  %13 = load ptr, ptr @file_name, align 8, !dbg !1029, !tbaa !751
  %14 = icmp eq ptr %13, null, !dbg !1029
  %15 = tail call ptr @__errno_location() #40, !dbg !1031
  %16 = load i32, ptr %15, align 4, !dbg !1031, !tbaa !807
  br i1 %14, label %19, label %17, !dbg !1032

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1033
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.21, ptr noundef %18, ptr noundef %12) #37, !dbg !1033
  br label %20, !dbg !1033

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.22, ptr noundef %12) #37, !dbg !1034
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1035, !tbaa !807
  tail call void @_exit(i32 noundef %21) #39, !dbg !1036
  unreachable, !dbg !1036

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1037, !tbaa !751
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1039
  %25 = icmp eq i32 %24, 0, !dbg !1040
  br i1 %25, label %28, label %26, !dbg !1041

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1042, !tbaa !807
  tail call void @_exit(i32 noundef %27) #39, !dbg !1043
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1054, metadata !DIExpression()), !dbg !1058
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1055, metadata !DIExpression()), !dbg !1058
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1056, metadata !DIExpression()), !dbg !1058
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1057, metadata !DIExpression(DW_OP_deref)), !dbg !1058
  tail call fastcc void @flush_stdout(), !dbg !1059
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1060, !tbaa !751
  %7 = icmp eq ptr %6, null, !dbg !1060
  br i1 %7, label %9, label %8, !dbg !1062

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1063
  br label %13, !dbg !1063

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1064, !tbaa !751
  %11 = tail call ptr @getprogname() #38, !dbg !1064
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef %11) #37, !dbg !1064
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1066, !tbaa.struct !1067
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1066
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1066
  ret void, !dbg !1068
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1069 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1071, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i32 1, metadata !1073, metadata !DIExpression()), !dbg !1078
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1081
  %2 = icmp slt i32 %1, 0, !dbg !1082
  br i1 %2, label %6, label %3, !dbg !1083

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1084, !tbaa !751
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1084
  br label %6, !dbg !1084

6:                                                ; preds = %3, %0
  ret void, !dbg !1085
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1086 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1092
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1088, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1089, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1090, metadata !DIExpression()), !dbg !1093
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1091, metadata !DIExpression(DW_OP_deref)), !dbg !1093
  %7 = load ptr, ptr @stderr, align 8, !dbg !1094, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1095, !noalias !1139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %7, metadata !1135, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %2, metadata !1136, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr poison, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !1144
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1095
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1095, !noalias !1139
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1145, !tbaa !807
  %10 = add i32 %9, 1, !dbg !1145
  store i32 %10, ptr @error_message_count, align 4, !dbg !1145, !tbaa !807
  %11 = icmp eq i32 %1, 0, !dbg !1146
  br i1 %11, label %21, label %12, !dbg !1148

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1149, metadata !DIExpression(), metadata !1092, metadata ptr %5, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.value(metadata i32 %1, metadata !1152, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1159
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %13, metadata !1153, metadata !DIExpression()), !dbg !1157
  %14 = icmp eq ptr %13, null, !dbg !1161
  br i1 %14, label %15, label %17, !dbg !1163

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.24, ptr noundef nonnull @.str.5.25, i32 noundef 5) #37, !dbg !1164
  call void @llvm.dbg.value(metadata ptr %16, metadata !1153, metadata !DIExpression()), !dbg !1157
  br label %17, !dbg !1165

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1157
  call void @llvm.dbg.value(metadata ptr %18, metadata !1153, metadata !DIExpression()), !dbg !1157
  %19 = load ptr, ptr @stderr, align 8, !dbg !1166, !tbaa !751
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.26, ptr noundef %18) #37, !dbg !1166
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1167
  br label %21, !dbg !1168

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1169, !tbaa !751
  call void @llvm.dbg.value(metadata i32 10, metadata !1170, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata ptr %22, metadata !1176, metadata !DIExpression()), !dbg !1177
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1179
  %24 = load ptr, ptr %23, align 8, !dbg !1179, !tbaa !1180
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1179
  %26 = load ptr, ptr %25, align 8, !dbg !1179, !tbaa !1183
  %27 = icmp ult ptr %24, %26, !dbg !1179
  br i1 %27, label %30, label %28, !dbg !1179, !prof !1184

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1179
  br label %32, !dbg !1179

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1179
  store ptr %31, ptr %23, align 8, !dbg !1179, !tbaa !1180
  store i8 10, ptr %24, align 1, !dbg !1179, !tbaa !816
  br label %32, !dbg !1179

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1185, !tbaa !751
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1185
  %35 = icmp eq i32 %0, 0, !dbg !1186
  br i1 %35, label %37, label %36, !dbg !1188

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1189
  unreachable, !dbg !1189

37:                                               ; preds = %32
  ret void, !dbg !1190
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1191 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1194 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1197 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1200 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1203 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1207 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1215
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1214, metadata !DIExpression(), metadata !1215, metadata ptr %4, metadata !DIExpression()), !dbg !1216
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1211, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1212, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1213, metadata !DIExpression()), !dbg !1216
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1217
  call void @llvm.va_start(ptr nonnull %4), !dbg !1218
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1219, !tbaa.struct !1067
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1219
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1219
  call void @llvm.va_end(ptr nonnull %4), !dbg !1220
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1221
  ret void, !dbg !1221
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !320 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !336, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !337, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !339, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !340, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !341, metadata !DIExpression(DW_OP_deref)), !dbg !1222
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1223, !tbaa !807
  %9 = icmp eq i32 %8, 0, !dbg !1223
  br i1 %9, label %24, label %10, !dbg !1225

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1226, !tbaa !807
  %12 = icmp eq i32 %11, %3, !dbg !1229
  br i1 %12, label %13, label %23, !dbg !1230

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1231, !tbaa !751
  %15 = icmp eq ptr %14, %2, !dbg !1232
  br i1 %15, label %37, label %16, !dbg !1233

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1234
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1235
  br i1 %19, label %20, label %23, !dbg !1235

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1236
  %22 = icmp eq i32 %21, 0, !dbg !1237
  br i1 %22, label %37, label %23, !dbg !1238

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1239, !tbaa !751
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1240, !tbaa !807
  br label %24, !dbg !1241

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1242
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1243, !tbaa !751
  %26 = icmp eq ptr %25, null, !dbg !1243
  br i1 %26, label %28, label %27, !dbg !1245

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1246
  br label %32, !dbg !1246

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1247, !tbaa !751
  %30 = tail call ptr @getprogname() #38, !dbg !1247
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.29, ptr noundef %30) #37, !dbg !1247
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1249, !tbaa !751
  %34 = icmp eq ptr %2, null, !dbg !1249
  %35 = select i1 %34, ptr @.str.3.30, ptr @.str.2.31, !dbg !1249
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1250, !tbaa.struct !1067
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1250
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1250
  br label %37, !dbg !1251

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1251
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1252 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1262
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1261, metadata !DIExpression(), metadata !1262, metadata ptr %6, metadata !DIExpression()), !dbg !1263
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1256, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1257, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1258, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1259, metadata !DIExpression()), !dbg !1263
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1260, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1264
  call void @llvm.va_start(ptr nonnull %6), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1266, !tbaa.struct !1067
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1266
  call void @llvm.va_end(ptr nonnull %6), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1268
  ret void, !dbg !1268
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1269 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1272, !tbaa !751
  ret ptr %1, !dbg !1273
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1274 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1289, metadata !DIExpression(), metadata !1304, metadata ptr %7, metadata !DIExpression()), !dbg !1305
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1279, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1280, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1281, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1282, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1283, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1284, metadata !DIExpression()), !dbg !1306
  %9 = load i32, ptr @opterr, align 4, !dbg !1307, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1285, metadata !DIExpression()), !dbg !1306
  store i32 0, ptr @opterr, align 4, !dbg !1308, !tbaa !807
  %10 = icmp eq i32 %0, 2, !dbg !1309
  br i1 %10, label %11, label %16, !dbg !1310

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1311
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1286, metadata !DIExpression()), !dbg !1312
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1313

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #37, !dbg !1314
  br label %16, !dbg !1315

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1316
  call void @llvm.va_start(ptr nonnull %7), !dbg !1317
  %15 = load ptr, ptr @stdout, align 8, !dbg !1318, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1319, !tbaa.struct !1067
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #37, !dbg !1319
  call void @exit(i32 noundef 0) #39, !dbg !1320
  unreachable, !dbg !1320

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1321, !tbaa !807
  store i32 0, ptr @optind, align 4, !dbg !1322, !tbaa !807
  ret void, !dbg !1323
}

; Function Attrs: nounwind
declare !dbg !1324 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1330 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1349
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1344, metadata !DIExpression(), metadata !1349, metadata ptr %8, metadata !DIExpression()), !dbg !1350
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1335, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1336, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1337, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1338, metadata !DIExpression()), !dbg !1351
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1339, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1351
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1340, metadata !DIExpression()), !dbg !1351
  %10 = load i32, ptr @opterr, align 4, !dbg !1352, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1341, metadata !DIExpression()), !dbg !1351
  store i32 1, ptr @opterr, align 4, !dbg !1353, !tbaa !807
  %11 = select i1 %5, ptr @.str.1.44, ptr @.str.39, !dbg !1354
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1342, metadata !DIExpression()), !dbg !1351
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1355
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1343, metadata !DIExpression()), !dbg !1351
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1356

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1357
  call void @llvm.va_start(ptr nonnull %8), !dbg !1358
  %14 = load ptr, ptr @stdout, align 8, !dbg !1359, !tbaa !751
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #37, !dbg !1360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1360, !tbaa.struct !1067
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #37, !dbg !1360
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #37, !dbg !1360
  call void @exit(i32 noundef 0) #39, !dbg !1361
  unreachable, !dbg !1361

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1362, !tbaa !807
  br label %17, !dbg !1363

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #37, !dbg !1364
  br label %19, !dbg !1365

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1365, !tbaa !807
  ret void, !dbg !1366
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1367 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1372
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1370, metadata !DIExpression()), !dbg !1372
  %3 = icmp eq ptr %2, null, !dbg !1374
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1374
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1374
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1371, metadata !DIExpression()), !dbg !1372
  %6 = ptrtoint ptr %5 to i64, !dbg !1375
  %7 = ptrtoint ptr %0 to i64, !dbg !1375
  %8 = sub i64 %6, %7, !dbg !1375
  %9 = icmp sgt i64 %8, 6, !dbg !1377
  br i1 %9, label %10, label %19, !dbg !1378

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1379
  call void @llvm.dbg.value(metadata ptr %11, metadata !1380, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr @.str.49, metadata !1385, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 7, metadata !1386, metadata !DIExpression()), !dbg !1387
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.49, i64 7), !dbg !1389
  %13 = icmp eq i32 %12, 0, !dbg !1390
  br i1 %13, label %14, label %19, !dbg !1391

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1369, metadata !DIExpression()), !dbg !1372
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.50, i64 noundef 3) #38, !dbg !1392
  %16 = icmp eq i32 %15, 0, !dbg !1395
  %17 = select i1 %16, i64 3, i64 0, !dbg !1396
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1396
  br label %19, !dbg !1396

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1371, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1369, metadata !DIExpression()), !dbg !1372
  store ptr %20, ptr @program_name, align 8, !dbg !1397, !tbaa !751
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1398, !tbaa !751
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1399, !tbaa !751
  ret void, !dbg !1400
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1401 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !402 {
  %3 = alloca i32, align 4, !DIAssignID !1402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !412, metadata !DIExpression(), metadata !1402, metadata ptr %3, metadata !DIExpression()), !dbg !1403
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1404
  call void @llvm.dbg.assign(metadata i1 undef, metadata !417, metadata !DIExpression(), metadata !1404, metadata ptr %4, metadata !DIExpression()), !dbg !1403
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !409, metadata !DIExpression()), !dbg !1403
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !410, metadata !DIExpression()), !dbg !1403
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1405
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !411, metadata !DIExpression()), !dbg !1403
  %6 = icmp eq ptr %5, %0, !dbg !1406
  br i1 %6, label %7, label %14, !dbg !1408

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1409
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1410
  call void @llvm.dbg.value(metadata ptr %4, metadata !1411, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata ptr %4, metadata !1420, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i32 0, metadata !1426, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 8, metadata !1427, metadata !DIExpression()), !dbg !1428
  store i64 0, ptr %4, align 8, !dbg !1430
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1431
  %9 = icmp eq i64 %8, 2, !dbg !1433
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1434
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1435
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1435
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1403
  ret ptr %15, !dbg !1435
}

; Function Attrs: nounwind
declare !dbg !1436 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1442 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1447, metadata !DIExpression()), !dbg !1450
  %2 = tail call ptr @__errno_location() #40, !dbg !1451
  %3 = load i32, ptr %2, align 4, !dbg !1451, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1448, metadata !DIExpression()), !dbg !1450
  %4 = icmp eq ptr %0, null, !dbg !1452
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1452
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1453
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1449, metadata !DIExpression()), !dbg !1450
  store i32 %3, ptr %2, align 4, !dbg !1454, !tbaa !807
  ret ptr %6, !dbg !1455
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1462, metadata !DIExpression()), !dbg !1463
  %2 = icmp eq ptr %0, null, !dbg !1464
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1464
  %4 = load i32, ptr %3, align 8, !dbg !1465, !tbaa !1466
  ret i32 %4, !dbg !1468
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1469 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1473, metadata !DIExpression()), !dbg !1475
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1474, metadata !DIExpression()), !dbg !1475
  %3 = icmp eq ptr %0, null, !dbg !1476
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1476
  store i32 %1, ptr %4, align 8, !dbg !1477, !tbaa !1466
  ret void, !dbg !1478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1479 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1483, metadata !DIExpression()), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1484, metadata !DIExpression()), !dbg !1491
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1485, metadata !DIExpression()), !dbg !1491
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1486, metadata !DIExpression()), !dbg !1491
  %4 = icmp eq ptr %0, null, !dbg !1492
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1492
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1493
  %7 = lshr i8 %1, 5, !dbg !1494
  %8 = zext nneg i8 %7 to i64, !dbg !1494
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1487, metadata !DIExpression()), !dbg !1491
  %10 = and i8 %1, 31, !dbg !1496
  %11 = zext nneg i8 %10 to i32, !dbg !1496
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1489, metadata !DIExpression()), !dbg !1491
  %12 = load i32, ptr %9, align 4, !dbg !1497, !tbaa !807
  %13 = lshr i32 %12, %11, !dbg !1498
  %14 = and i32 %13, 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1490, metadata !DIExpression()), !dbg !1491
  %15 = xor i32 %13, %2, !dbg !1500
  %16 = and i32 %15, 1, !dbg !1500
  %17 = shl nuw i32 %16, %11, !dbg !1501
  %18 = xor i32 %17, %12, !dbg !1502
  store i32 %18, ptr %9, align 4, !dbg !1502, !tbaa !807
  ret i32 %14, !dbg !1503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1508, metadata !DIExpression()), !dbg !1511
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1509, metadata !DIExpression()), !dbg !1511
  %3 = icmp eq ptr %0, null, !dbg !1512
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1514
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1508, metadata !DIExpression()), !dbg !1511
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1515
  %6 = load i32, ptr %5, align 4, !dbg !1515, !tbaa !1516
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1510, metadata !DIExpression()), !dbg !1511
  store i32 %1, ptr %5, align 4, !dbg !1517, !tbaa !1516
  ret i32 %6, !dbg !1518
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1519 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1523, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1524, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !1526
  %4 = icmp eq ptr %0, null, !dbg !1527
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1523, metadata !DIExpression()), !dbg !1526
  store i32 10, ptr %5, align 8, !dbg !1530, !tbaa !1466
  %6 = icmp ne ptr %1, null, !dbg !1531
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1533
  br i1 %8, label %10, label %9, !dbg !1533

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1534
  unreachable, !dbg !1534

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1535
  store ptr %1, ptr %11, align 8, !dbg !1536, !tbaa !1537
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1538
  store ptr %2, ptr %12, align 8, !dbg !1539, !tbaa !1540
  ret void, !dbg !1541
}

; Function Attrs: noreturn nounwind
declare !dbg !1542 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1547, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1548, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1549, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1550, metadata !DIExpression()), !dbg !1555
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1551, metadata !DIExpression()), !dbg !1555
  %6 = icmp eq ptr %4, null, !dbg !1556
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1556
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1552, metadata !DIExpression()), !dbg !1555
  %8 = tail call ptr @__errno_location() #40, !dbg !1557
  %9 = load i32, ptr %8, align 4, !dbg !1557, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1553, metadata !DIExpression()), !dbg !1555
  %10 = load i32, ptr %7, align 8, !dbg !1558, !tbaa !1466
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1559
  %12 = load i32, ptr %11, align 4, !dbg !1559, !tbaa !1516
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1560
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1561
  %15 = load ptr, ptr %14, align 8, !dbg !1561, !tbaa !1537
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1562
  %17 = load ptr, ptr %16, align 8, !dbg !1562, !tbaa !1540
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1563
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1554, metadata !DIExpression()), !dbg !1555
  store i32 %9, ptr %8, align 4, !dbg !1564, !tbaa !807
  ret i64 %18, !dbg !1565
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1566 {
  %10 = alloca i32, align 4, !DIAssignID !1634
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1635
  %12 = alloca i32, align 4, !DIAssignID !1636
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1637
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1638
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1612, metadata !DIExpression(), metadata !1638, metadata ptr %14, metadata !DIExpression()), !dbg !1639
  %15 = alloca i32, align 4, !DIAssignID !1640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1615, metadata !DIExpression(), metadata !1640, metadata ptr %15, metadata !DIExpression()), !dbg !1641
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1572, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1574, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1575, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1576, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1577, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1578, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1579, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1580, metadata !DIExpression()), !dbg !1642
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1643
  %17 = icmp eq i64 %16, 1, !dbg !1644
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1581, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1584, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1585, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1587, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1589, metadata !DIExpression()), !dbg !1642
  %18 = and i32 %5, 2, !dbg !1645
  %19 = icmp ne i32 %18, 0, !dbg !1645
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1645

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1646
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1647
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1648
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1585, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1584, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1575, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1580, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1579, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1576, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1590), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1642
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
  ], !dbg !1650

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1576, metadata !DIExpression()), !dbg !1642
  br label %101, !dbg !1651

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1576, metadata !DIExpression()), !dbg !1642
  br i1 %36, label %101, label %42, !dbg !1651

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1652
  br i1 %43, label %101, label %44, !dbg !1656

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1652, !tbaa !816
  br label %101, !dbg !1652

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !515, metadata !DIExpression(), metadata !1636, metadata ptr %12, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !516, metadata !DIExpression(), metadata !1637, metadata ptr %13, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !512, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i32 %28, metadata !513, metadata !DIExpression()), !dbg !1657
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #37, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %46, metadata !514, metadata !DIExpression()), !dbg !1657
  %47 = icmp eq ptr %46, @.str.11.63, !dbg !1662
  br i1 %47, label %48, label %57, !dbg !1664

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1665
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %13, metadata !1667, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata ptr %13, metadata !1675, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 0, metadata !1678, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i64 8, metadata !1679, metadata !DIExpression()), !dbg !1680
  store i64 0, ptr %13, align 8, !dbg !1682
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1683
  %50 = icmp eq i64 %49, 3, !dbg !1685
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1686
  %54 = icmp eq i32 %28, 9, !dbg !1686
  %55 = select i1 %54, ptr @.str.10.65, ptr @.str.12.66, !dbg !1686
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1686
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1687
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1687
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1657
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1579, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.assign(metadata i1 undef, metadata !515, metadata !DIExpression(), metadata !1634, metadata ptr %10, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !516, metadata !DIExpression(), metadata !1635, metadata ptr %11, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !512, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i32 %28, metadata !513, metadata !DIExpression()), !dbg !1688
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #37, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %59, metadata !514, metadata !DIExpression()), !dbg !1688
  %60 = icmp eq ptr %59, @.str.12.66, !dbg !1691
  br i1 %60, label %61, label %70, !dbg !1692

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %11, metadata !1667, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %11, metadata !1675, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 0, metadata !1678, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64 8, metadata !1679, metadata !DIExpression()), !dbg !1697
  store i64 0, ptr %11, align 8, !dbg !1699
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1700
  %63 = icmp eq i64 %62, 3, !dbg !1701
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1702
  %67 = icmp eq i32 %28, 9, !dbg !1702
  %68 = select i1 %67, ptr @.str.10.65, ptr @.str.12.66, !dbg !1702
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1702
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1703
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1580, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1579, metadata !DIExpression()), !dbg !1642
  br i1 %36, label %88, label %73, !dbg !1704

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1592, metadata !DIExpression()), !dbg !1705
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1582, metadata !DIExpression()), !dbg !1642
  %74 = load i8, ptr %71, align 1, !dbg !1706, !tbaa !816
  %75 = icmp eq i8 %74, 0, !dbg !1708
  br i1 %75, label %88, label %.preheader11, !dbg !1708

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1708

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1592, metadata !DIExpression()), !dbg !1705
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1582, metadata !DIExpression()), !dbg !1642
  %80 = icmp ult i64 %79, %39, !dbg !1709
  br i1 %80, label %81, label %83, !dbg !1712

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1709
  store i8 %77, ptr %82, align 1, !dbg !1709, !tbaa !816
  br label %83, !dbg !1709

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1712
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1582, metadata !DIExpression()), !dbg !1642
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1713
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1592, metadata !DIExpression()), !dbg !1705
  %86 = load i8, ptr %85, align 1, !dbg !1706, !tbaa !816
  %87 = icmp eq i8 %86, 0, !dbg !1708
  br i1 %87, label %.loopexit12, label %76, !dbg !1708, !llvm.loop !1714

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1712
  br label %88, !dbg !1716

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1584, metadata !DIExpression()), !dbg !1642
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1716
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1585, metadata !DIExpression()), !dbg !1642
  br label %101, !dbg !1718

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1587, metadata !DIExpression()), !dbg !1642
  br label %101, !dbg !1719

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1576, metadata !DIExpression()), !dbg !1642
  br label %101, !dbg !1720

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  br i1 %36, label %101, label %95, !dbg !1721

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1576, metadata !DIExpression()), !dbg !1642
  br i1 %36, label %101, label %95, !dbg !1720

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1722
  br i1 %97, label %101, label %98, !dbg !1726

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1722, !tbaa !816
  br label %101, !dbg !1722

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1587, metadata !DIExpression()), !dbg !1642
  br label %101, !dbg !1727

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1728
  unreachable, !dbg !1728

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1717
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.65, %42 ], [ @.str.10.65, %44 ], [ @.str.10.65, %41 ], [ %33, %27 ], [ @.str.12.66, %95 ], [ @.str.12.66, %98 ], [ @.str.12.66, %94 ], [ @.str.10.65, %40 ], [ @.str.12.66, %91 ], [ @.str.12.66, %92 ], [ @.str.12.66, %93 ], !dbg !1642
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1642
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1587, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1586, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1585, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1584, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1580, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1579, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1576, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1729
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
  br label %121, !dbg !1730

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1717
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1646
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1731
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1575, metadata !DIExpression()), !dbg !1642
  %130 = icmp eq i64 %122, -1, !dbg !1732
  br i1 %130, label %131, label %135, !dbg !1733

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1734
  %133 = load i8, ptr %132, align 1, !dbg !1734, !tbaa !816
  %134 = icmp eq i8 %133, 0, !dbg !1735
  br i1 %134, label %573, label %137, !dbg !1736

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1737
  br i1 %136, label %573, label %137, !dbg !1736

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1738
  br i1 %113, label %138, label %151, !dbg !1739

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1741
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1742
  br i1 %140, label %141, label %143, !dbg !1742

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1743
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1575, metadata !DIExpression()), !dbg !1642
  br label %143, !dbg !1744

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1575, metadata !DIExpression()), !dbg !1642
  %145 = icmp ugt i64 %139, %144, !dbg !1745
  br i1 %145, label %151, label %146, !dbg !1746

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %147, metadata !1748, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata ptr %106, metadata !1751, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i64 %107, metadata !1752, metadata !DIExpression()), !dbg !1753
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1755
  %149 = icmp eq i32 %148, 0, !dbg !1756
  %150 = and i1 %149, %109, !dbg !1757
  br i1 %150, label %.loopexit7, label %151, !dbg !1757

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1575, metadata !DIExpression()), !dbg !1642
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1758
  %155 = load i8, ptr %154, align 1, !dbg !1758, !tbaa !816
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1604, metadata !DIExpression()), !dbg !1738
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
  ], !dbg !1759

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1760

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1761

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1738
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1765
  br i1 %159, label %176, label %160, !dbg !1765

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1767
  br i1 %161, label %162, label %164, !dbg !1771

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1767
  store i8 39, ptr %163, align 1, !dbg !1767, !tbaa !816
  br label %164, !dbg !1767

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1582, metadata !DIExpression()), !dbg !1642
  %166 = icmp ult i64 %165, %129, !dbg !1772
  br i1 %166, label %167, label %169, !dbg !1775

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1772
  store i8 36, ptr %168, align 1, !dbg !1772, !tbaa !816
  br label %169, !dbg !1772

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1775
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1582, metadata !DIExpression()), !dbg !1642
  %171 = icmp ult i64 %170, %129, !dbg !1776
  br i1 %171, label %172, label %174, !dbg !1779

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1776
  store i8 39, ptr %173, align 1, !dbg !1776, !tbaa !816
  br label %174, !dbg !1776

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1779
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %176, !dbg !1780

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1642
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1582, metadata !DIExpression()), !dbg !1642
  %179 = icmp ult i64 %177, %129, !dbg !1781
  br i1 %179, label %180, label %182, !dbg !1784

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1781
  store i8 92, ptr %181, align 1, !dbg !1781, !tbaa !816
  br label %182, !dbg !1781

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1582, metadata !DIExpression()), !dbg !1642
  br i1 %110, label %184, label %476, !dbg !1785

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1787
  %186 = icmp ult i64 %185, %152, !dbg !1788
  br i1 %186, label %187, label %433, !dbg !1789

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1790
  %189 = load i8, ptr %188, align 1, !dbg !1790, !tbaa !816
  %190 = add i8 %189, -48, !dbg !1791
  %191 = icmp ult i8 %190, 10, !dbg !1791
  br i1 %191, label %192, label %433, !dbg !1791

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1792
  br i1 %193, label %194, label %196, !dbg !1796

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1792
  store i8 48, ptr %195, align 1, !dbg !1792, !tbaa !816
  br label %196, !dbg !1792

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1582, metadata !DIExpression()), !dbg !1642
  %198 = icmp ult i64 %197, %129, !dbg !1797
  br i1 %198, label %199, label %201, !dbg !1800

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1797
  store i8 48, ptr %200, align 1, !dbg !1797, !tbaa !816
  br label %201, !dbg !1797

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1582, metadata !DIExpression()), !dbg !1642
  br label %433, !dbg !1801

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1802

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1803

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1804

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1806

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1808
  %209 = icmp ult i64 %208, %152, !dbg !1809
  br i1 %209, label %210, label %433, !dbg !1810

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1811
  %212 = load i8, ptr %211, align 1, !dbg !1811, !tbaa !816
  %213 = icmp eq i8 %212, 63, !dbg !1812
  br i1 %213, label %214, label %433, !dbg !1813

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1814
  %216 = load i8, ptr %215, align 1, !dbg !1814, !tbaa !816
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
  ], !dbg !1815

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1816

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1597, metadata !DIExpression()), !dbg !1729
  %219 = icmp ult i64 %123, %129, !dbg !1818
  br i1 %219, label %220, label %222, !dbg !1821

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1818
  store i8 63, ptr %221, align 1, !dbg !1818, !tbaa !816
  br label %222, !dbg !1818

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1582, metadata !DIExpression()), !dbg !1642
  %224 = icmp ult i64 %223, %129, !dbg !1822
  br i1 %224, label %225, label %227, !dbg !1825

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1822
  store i8 34, ptr %226, align 1, !dbg !1822, !tbaa !816
  br label %227, !dbg !1822

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1582, metadata !DIExpression()), !dbg !1642
  %229 = icmp ult i64 %228, %129, !dbg !1826
  br i1 %229, label %230, label %232, !dbg !1829

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1826
  store i8 34, ptr %231, align 1, !dbg !1826, !tbaa !816
  br label %232, !dbg !1826

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1582, metadata !DIExpression()), !dbg !1642
  %234 = icmp ult i64 %233, %129, !dbg !1830
  br i1 %234, label %235, label %237, !dbg !1833

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1830
  store i8 63, ptr %236, align 1, !dbg !1830, !tbaa !816
  br label %237, !dbg !1830

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1833
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1582, metadata !DIExpression()), !dbg !1642
  br label %433, !dbg !1834

239:                                              ; preds = %151
  br label %249, !dbg !1835

240:                                              ; preds = %151
  br label %249, !dbg !1836

241:                                              ; preds = %151
  br label %247, !dbg !1837

242:                                              ; preds = %151
  br label %247, !dbg !1838

243:                                              ; preds = %151
  br label %249, !dbg !1839

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1840

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1841

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1844

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1846
  call void @llvm.dbg.label(metadata !1605), !dbg !1847
  br i1 %118, label %.loopexit8, label %249, !dbg !1848

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1846
  call void @llvm.dbg.label(metadata !1608), !dbg !1850
  br i1 %108, label %487, label %444, !dbg !1851

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1852

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1853, !tbaa !816
  %254 = icmp eq i8 %253, 0, !dbg !1855
  br i1 %254, label %255, label %433, !dbg !1856

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1857
  br i1 %256, label %257, label %433, !dbg !1859

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1738
  br label %258, !dbg !1860

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1738
  br i1 %115, label %260, label %433, !dbg !1861

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1863

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1738
  br i1 %115, label %262, label %433, !dbg !1864

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1865

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1868
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1870
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1870
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1870
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1583, metadata !DIExpression()), !dbg !1642
  %269 = icmp ult i64 %123, %268, !dbg !1871
  br i1 %269, label %270, label %272, !dbg !1874

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1871
  store i8 39, ptr %271, align 1, !dbg !1871, !tbaa !816
  br label %272, !dbg !1871

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1874
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1582, metadata !DIExpression()), !dbg !1642
  %274 = icmp ult i64 %273, %268, !dbg !1875
  br i1 %274, label %275, label %277, !dbg !1878

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1875
  store i8 92, ptr %276, align 1, !dbg !1875, !tbaa !816
  br label %277, !dbg !1875

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1582, metadata !DIExpression()), !dbg !1642
  %279 = icmp ult i64 %278, %268, !dbg !1879
  br i1 %279, label %280, label %282, !dbg !1882

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1879
  store i8 39, ptr %281, align 1, !dbg !1879, !tbaa !816
  br label %282, !dbg !1879

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1882
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %433, !dbg !1883

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1884

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1609, metadata !DIExpression()), !dbg !1885
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1886
  %287 = load ptr, ptr %286, align 8, !dbg !1886, !tbaa !751
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1886
  %290 = load i16, ptr %289, align 2, !dbg !1886, !tbaa !848
  %291 = and i16 %290, 16384, !dbg !1886
  %292 = icmp ne i16 %291, 0, !dbg !1888
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1611, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1885
  br label %334, !dbg !1889

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %14, metadata !1667, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %14, metadata !1675, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 0, metadata !1678, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 8, metadata !1679, metadata !DIExpression()), !dbg !1893
  store i64 0, ptr %14, align 8, !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1885
  %294 = icmp eq i64 %152, -1, !dbg !1896
  br i1 %294, label %295, label %297, !dbg !1898

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1575, metadata !DIExpression()), !dbg !1642
  br label %297, !dbg !1900

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1575, metadata !DIExpression()), !dbg !1642
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1901
  %299 = sub i64 %298, %128, !dbg !1902
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1619, metadata !DIExpression()), !dbg !1641
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1904

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1885
  %302 = icmp ult i64 %128, %298, !dbg !1905
  br i1 %302, label %.preheader5, label %329, !dbg !1907

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1908

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1885
  br label %329, !dbg !1909

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1609, metadata !DIExpression()), !dbg !1885
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1911
  %308 = load i8, ptr %307, align 1, !dbg !1911, !tbaa !816
  %309 = icmp eq i8 %308, 0, !dbg !1907
  br i1 %309, label %.loopexit6, label %310, !dbg !1908

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1912
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1609, metadata !DIExpression()), !dbg !1885
  %312 = add i64 %311, %128, !dbg !1913
  %313 = icmp eq i64 %311, %299, !dbg !1905
  br i1 %313, label %.loopexit6, label %304, !dbg !1907, !llvm.loop !1914

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1620, metadata !DIExpression()), !dbg !1915
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1916
  %317 = and i1 %316, %109, !dbg !1916
  br i1 %317, label %.preheader3, label %325, !dbg !1916

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1917

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1620, metadata !DIExpression()), !dbg !1915
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1918
  %321 = load i8, ptr %320, align 1, !dbg !1918, !tbaa !816
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1920

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1620, metadata !DIExpression()), !dbg !1915
  %324 = icmp eq i64 %323, %300, !dbg !1922
  br i1 %324, label %.loopexit4, label %318, !dbg !1917, !llvm.loop !1923

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1925

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1925, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %326, metadata !1927, metadata !DIExpression()), !dbg !1935
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1937
  %328 = icmp ne i32 %327, 0, !dbg !1938
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1609, metadata !DIExpression()), !dbg !1885
  br label %329, !dbg !1939

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1940

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1609, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1941
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1940
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1941
  call void @llvm.dbg.label(metadata !1633), !dbg !1942
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1943
  br label %624, !dbg !1943

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1738
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1945
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1609, metadata !DIExpression()), !dbg !1885
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1575, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1603, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1738
  %338 = icmp ult i64 %336, 2, !dbg !1946
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1947
  br i1 %340, label %433, label %341, !dbg !1947

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1628, metadata !DIExpression()), !dbg !1949
  br label %343, !dbg !1950

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1642
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1729
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1582, metadata !DIExpression()), !dbg !1642
  br i1 %339, label %394, label %350, !dbg !1951

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1956

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1738
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1959
  br i1 %352, label %369, label %353, !dbg !1959

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1961
  br i1 %354, label %355, label %357, !dbg !1965

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1961
  store i8 39, ptr %356, align 1, !dbg !1961, !tbaa !816
  br label %357, !dbg !1961

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1582, metadata !DIExpression()), !dbg !1642
  %359 = icmp ult i64 %358, %129, !dbg !1966
  br i1 %359, label %360, label %362, !dbg !1969

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1966
  store i8 36, ptr %361, align 1, !dbg !1966, !tbaa !816
  br label %362, !dbg !1966

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1969
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1582, metadata !DIExpression()), !dbg !1642
  %364 = icmp ult i64 %363, %129, !dbg !1970
  br i1 %364, label %365, label %367, !dbg !1973

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1970
  store i8 39, ptr %366, align 1, !dbg !1970, !tbaa !816
  br label %367, !dbg !1970

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %369, !dbg !1974

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1642
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1582, metadata !DIExpression()), !dbg !1642
  %372 = icmp ult i64 %370, %129, !dbg !1975
  br i1 %372, label %373, label %375, !dbg !1978

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1975
  store i8 92, ptr %374, align 1, !dbg !1975, !tbaa !816
  br label %375, !dbg !1975

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1582, metadata !DIExpression()), !dbg !1642
  %377 = icmp ult i64 %376, %129, !dbg !1979
  br i1 %377, label %378, label %382, !dbg !1982

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1979
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1979
  store i8 %380, ptr %381, align 1, !dbg !1979, !tbaa !816
  br label %382, !dbg !1979

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1982
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1582, metadata !DIExpression()), !dbg !1642
  %384 = icmp ult i64 %383, %129, !dbg !1983
  br i1 %384, label %385, label %390, !dbg !1986

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1983
  %388 = or disjoint i8 %387, 48, !dbg !1983
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1983
  store i8 %388, ptr %389, align 1, !dbg !1983, !tbaa !816
  br label %390, !dbg !1983

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1582, metadata !DIExpression()), !dbg !1642
  %392 = and i8 %349, 7, !dbg !1987
  %393 = or disjoint i8 %392, 48, !dbg !1988
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1604, metadata !DIExpression()), !dbg !1738
  br label %401, !dbg !1989

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !1990

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !1991
  br i1 %396, label %397, label %399, !dbg !1996

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1991
  store i8 92, ptr %398, align 1, !dbg !1991, !tbaa !816
  br label %399, !dbg !1991

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1738
  br label %401, !dbg !1997

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1642
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1582, metadata !DIExpression()), !dbg !1642
  %407 = add i64 %346, 1, !dbg !1998
  %408 = icmp ugt i64 %342, %407, !dbg !2000
  br i1 %408, label %409, label %.loopexit2, !dbg !2001

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2002
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2002
  br i1 %411, label %423, label %412, !dbg !2002

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2005
  br i1 %413, label %414, label %416, !dbg !2009

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2005
  store i8 39, ptr %415, align 1, !dbg !2005, !tbaa !816
  br label %416, !dbg !2005

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1582, metadata !DIExpression()), !dbg !1642
  %418 = icmp ult i64 %417, %129, !dbg !2010
  br i1 %418, label %419, label %421, !dbg !2013

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2010
  store i8 39, ptr %420, align 1, !dbg !2010, !tbaa !816
  br label %421, !dbg !2010

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %423, !dbg !2014

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2015
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1582, metadata !DIExpression()), !dbg !1642
  %426 = icmp ult i64 %424, %129, !dbg !2016
  br i1 %426, label %427, label %429, !dbg !2019

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2016
  store i8 %406, ptr %428, align 1, !dbg !2016, !tbaa !816
  br label %429, !dbg !2016

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1597, metadata !DIExpression()), !dbg !1729
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2020
  %432 = load i8, ptr %431, align 1, !dbg !2020, !tbaa !816
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1604, metadata !DIExpression()), !dbg !1738
  br label %343, !dbg !2021, !llvm.loop !2022

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2025
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1642
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1646
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1729
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1738
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1575, metadata !DIExpression()), !dbg !1642
  br i1 %111, label %455, label %444, !dbg !2026

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
  br i1 %120, label %456, label %476, !dbg !2028

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2029

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
  %467 = lshr i8 %458, 5, !dbg !2030
  %468 = zext nneg i8 %467 to i64, !dbg !2030
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2031
  %470 = load i32, ptr %469, align 4, !dbg !2031, !tbaa !807
  %471 = and i8 %458, 31, !dbg !2032
  %472 = zext nneg i8 %471 to i32, !dbg !2032
  %473 = shl nuw i32 1, %472, !dbg !2033
  %474 = and i32 %470, %473, !dbg !2033
  %475 = icmp eq i32 %474, 0, !dbg !2033
  br i1 %475, label %476, label %487, !dbg !2034

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
  br i1 %153, label %487, label %523, !dbg !2035

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2025
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1642
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1646
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2036
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1738
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1575, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1631), !dbg !2037
  br i1 %109, label %.loopexit8, label %497, !dbg !2038

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1738
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2040
  br i1 %498, label %515, label %499, !dbg !2040

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2042
  br i1 %500, label %501, label %503, !dbg !2046

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2042
  store i8 39, ptr %502, align 1, !dbg !2042, !tbaa !816
  br label %503, !dbg !2042

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1582, metadata !DIExpression()), !dbg !1642
  %505 = icmp ult i64 %504, %496, !dbg !2047
  br i1 %505, label %506, label %508, !dbg !2050

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2047
  store i8 36, ptr %507, align 1, !dbg !2047, !tbaa !816
  br label %508, !dbg !2047

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1582, metadata !DIExpression()), !dbg !1642
  %510 = icmp ult i64 %509, %496, !dbg !2051
  br i1 %510, label %511, label %513, !dbg !2054

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2051
  store i8 39, ptr %512, align 1, !dbg !2051, !tbaa !816
  br label %513, !dbg !2051

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2054
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %515, !dbg !2055

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1738
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1582, metadata !DIExpression()), !dbg !1642
  %518 = icmp ult i64 %516, %496, !dbg !2056
  br i1 %518, label %519, label %521, !dbg !2059

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2056
  store i8 92, ptr %520, align 1, !dbg !2056, !tbaa !816
  br label %521, !dbg !2056

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1575, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1632), !dbg !2060
  br label %547, !dbg !2061

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1642
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1738
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1729
  br label %523, !dbg !2061

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2025
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1642
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1646
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2036
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2064
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1604, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1603, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1602, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1575, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.label(metadata !1632), !dbg !2060
  %534 = xor i1 %528, true, !dbg !2061
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2061
  br i1 %535, label %547, label %536, !dbg !2061

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2065
  br i1 %537, label %538, label %540, !dbg !2069

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2065
  store i8 39, ptr %539, align 1, !dbg !2065, !tbaa !816
  br label %540, !dbg !2065

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1582, metadata !DIExpression()), !dbg !1642
  %542 = icmp ult i64 %541, %533, !dbg !2070
  br i1 %542, label %543, label %545, !dbg !2073

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2070
  store i8 39, ptr %544, align 1, !dbg !2070, !tbaa !816
  br label %545, !dbg !2070

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1591, metadata !DIExpression()), !dbg !1642
  br label %547, !dbg !2074

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1738
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1582, metadata !DIExpression()), !dbg !1642
  %557 = icmp ult i64 %555, %548, !dbg !2075
  br i1 %557, label %558, label %560, !dbg !2078

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2075
  store i8 %549, ptr %559, align 1, !dbg !2075, !tbaa !816
  br label %560, !dbg !2075

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1582, metadata !DIExpression()), !dbg !1642
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2079
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1642
  br label %563, !dbg !2080

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2025
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1642
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1646
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2036
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1597, metadata !DIExpression()), !dbg !1729
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1591, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1575, metadata !DIExpression()), !dbg !1642
  %572 = add i64 %570, 1, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1597, metadata !DIExpression()), !dbg !1729
  br label %121, !dbg !2082, !llvm.loop !2083

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1717
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1646
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1573, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1589, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1588, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1583, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1582, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1575, metadata !DIExpression()), !dbg !1642
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2085
  %575 = xor i1 %109, true, !dbg !2087
  %576 = or i1 %574, %575, !dbg !2087
  %577 = or i1 %576, %110, !dbg !2087
  br i1 %577, label %578, label %.loopexit13, !dbg !2087

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2088
  %580 = xor i1 %.lcssa38, true, !dbg !2088
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2088
  br i1 %581, label %589, label %582, !dbg !2088

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2090

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1646
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2092
  br label %638, !dbg !2094

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2095
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2097
  br i1 %588, label %27, label %589, !dbg !2097

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1642
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1717
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2098
  %592 = or i1 %591, %590, !dbg !2100
  br i1 %592, label %608, label %593, !dbg !2100

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1584, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1582, metadata !DIExpression()), !dbg !1642
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2101, !tbaa !816
  %595 = icmp eq i8 %594, 0, !dbg !2104
  br i1 %595, label %608, label %.preheader, !dbg !2104

.preheader:                                       ; preds = %593
  br label %596, !dbg !2104

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1584, metadata !DIExpression()), !dbg !1642
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1582, metadata !DIExpression()), !dbg !1642
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2105
  br i1 %600, label %601, label %603, !dbg !2108

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2105
  store i8 %597, ptr %602, align 1, !dbg !2105, !tbaa !816
  br label %603, !dbg !2105

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2108
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1582, metadata !DIExpression()), !dbg !1642
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2109
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1584, metadata !DIExpression()), !dbg !1642
  %606 = load i8, ptr %605, align 1, !dbg !2101, !tbaa !816
  %607 = icmp eq i8 %606, 0, !dbg !2104
  br i1 %607, label %.loopexit, label %596, !dbg !2104, !llvm.loop !2110

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2108
  br label %608, !dbg !2112

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1717
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1582, metadata !DIExpression()), !dbg !1642
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2112
  br i1 %610, label %611, label %638, !dbg !2114

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2115
  store i8 0, ptr %612, align 1, !dbg !2116, !tbaa !816
  br label %638, !dbg !2115

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1633), !dbg !1942
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2117
  br i1 %614, label %624, label %630, !dbg !1943

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1738
  br label %615, !dbg !2117

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2117

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2117

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1633), !dbg !1942
  %622 = icmp eq i32 %616, 2, !dbg !2117
  %623 = select i1 %619, i32 4, i32 2, !dbg !1943
  br i1 %622, label %624, label %630, !dbg !1943

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1943

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1744
  br label %630, !dbg !2118

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1576, metadata !DIExpression()), !dbg !1642
  %636 = and i32 %5, -3, !dbg !2118
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2119
  br label %638, !dbg !2120

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2121
}

; Function Attrs: nounwind
declare !dbg !2122 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2125 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2128 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2130 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2134, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2135, metadata !DIExpression()), !dbg !2137
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2136, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %0, metadata !2138, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2143, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata ptr null, metadata !2144, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata ptr %2, metadata !2145, metadata !DIExpression()), !dbg !2151
  %4 = icmp eq ptr %2, null, !dbg !2153
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2153
  call void @llvm.dbg.value(metadata ptr %5, metadata !2146, metadata !DIExpression()), !dbg !2151
  %6 = tail call ptr @__errno_location() #40, !dbg !2154
  %7 = load i32, ptr %6, align 4, !dbg !2154, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %7, metadata !2147, metadata !DIExpression()), !dbg !2151
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2155
  %9 = load i32, ptr %8, align 4, !dbg !2155, !tbaa !1516
  %10 = or i32 %9, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %10, metadata !2148, metadata !DIExpression()), !dbg !2151
  %11 = load i32, ptr %5, align 8, !dbg !2157, !tbaa !1466
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2158
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2159
  %14 = load ptr, ptr %13, align 8, !dbg !2159, !tbaa !1537
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2160
  %16 = load ptr, ptr %15, align 8, !dbg !2160, !tbaa !1540
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2161
  %18 = add i64 %17, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %18, metadata !2149, metadata !DIExpression()), !dbg !2151
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %19, metadata !2150, metadata !DIExpression()), !dbg !2151
  %20 = load i32, ptr %5, align 8, !dbg !2164, !tbaa !1466
  %21 = load ptr, ptr %13, align 8, !dbg !2165, !tbaa !1537
  %22 = load ptr, ptr %15, align 8, !dbg !2166, !tbaa !1540
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2167
  store i32 %7, ptr %6, align 4, !dbg !2168, !tbaa !807
  ret ptr %19, !dbg !2169
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2139 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2138, metadata !DIExpression()), !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2143, metadata !DIExpression()), !dbg !2170
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2144, metadata !DIExpression()), !dbg !2170
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2145, metadata !DIExpression()), !dbg !2170
  %5 = icmp eq ptr %3, null, !dbg !2171
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2171
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2146, metadata !DIExpression()), !dbg !2170
  %7 = tail call ptr @__errno_location() #40, !dbg !2172
  %8 = load i32, ptr %7, align 4, !dbg !2172, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2147, metadata !DIExpression()), !dbg !2170
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2173
  %10 = load i32, ptr %9, align 4, !dbg !2173, !tbaa !1516
  %11 = icmp eq ptr %2, null, !dbg !2174
  %12 = zext i1 %11 to i32, !dbg !2174
  %13 = or i32 %10, %12, !dbg !2175
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2148, metadata !DIExpression()), !dbg !2170
  %14 = load i32, ptr %6, align 8, !dbg !2176, !tbaa !1466
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2177
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2178
  %17 = load ptr, ptr %16, align 8, !dbg !2178, !tbaa !1537
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2179
  %19 = load ptr, ptr %18, align 8, !dbg !2179, !tbaa !1540
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2180
  %21 = add i64 %20, 1, !dbg !2181
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2149, metadata !DIExpression()), !dbg !2170
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2182
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2150, metadata !DIExpression()), !dbg !2170
  %23 = load i32, ptr %6, align 8, !dbg !2183, !tbaa !1466
  %24 = load ptr, ptr %16, align 8, !dbg !2184, !tbaa !1537
  %25 = load ptr, ptr %18, align 8, !dbg !2185, !tbaa !1540
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2186
  store i32 %8, ptr %7, align 4, !dbg !2187, !tbaa !807
  br i1 %11, label %28, label %27, !dbg !2188

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2189, !tbaa !2191
  br label %28, !dbg !2192

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2193
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2194 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2199, !tbaa !751
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2196, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !2201
  %2 = load i32, ptr @nslots, align 4, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2197, metadata !DIExpression()), !dbg !2201
  %3 = icmp sgt i32 %2, 1, !dbg !2202
  br i1 %3, label %4, label %6, !dbg !2204

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2202
  br label %10, !dbg !2204

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2205

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2205
  %8 = load ptr, ptr %7, align 8, !dbg !2205, !tbaa !2207
  %9 = icmp eq ptr %8, @slot0, !dbg !2209
  br i1 %9, label %17, label %16, !dbg !2210

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2197, metadata !DIExpression()), !dbg !2201
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2211
  %13 = load ptr, ptr %12, align 8, !dbg !2211, !tbaa !2207
  tail call void @free(ptr noundef %13) #37, !dbg !2212
  %14 = add nuw nsw i64 %11, 1, !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2197, metadata !DIExpression()), !dbg !2201
  %15 = icmp eq i64 %14, %5, !dbg !2202
  br i1 %15, label %.loopexit, label %10, !dbg !2204, !llvm.loop !2214

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2216
  store i64 256, ptr @slotvec0, align 8, !dbg !2218, !tbaa !2219
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2220, !tbaa !2207
  br label %17, !dbg !2221

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2222
  br i1 %18, label %20, label %19, !dbg !2224

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2225
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2227, !tbaa !751
  br label %20, !dbg !2228

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2229, !tbaa !807
  ret void, !dbg !2230
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2231 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2234 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2238
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2239
  ret ptr %3, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2241 {
  %5 = alloca i64, align 8, !DIAssignID !2261
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2255, metadata !DIExpression(), metadata !2261, metadata ptr %5, metadata !DIExpression()), !dbg !2262
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2246, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2247, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2248, metadata !DIExpression()), !dbg !2263
  %6 = tail call ptr @__errno_location() #40, !dbg !2264
  %7 = load i32, ptr %6, align 4, !dbg !2264, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2249, metadata !DIExpression()), !dbg !2263
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2265, !tbaa !751
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2250, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2251, metadata !DIExpression()), !dbg !2263
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2266
  br i1 %9, label %10, label %11, !dbg !2266

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2268
  unreachable, !dbg !2268

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2269, !tbaa !807
  %13 = icmp sgt i32 %12, %0, !dbg !2270
  br i1 %13, label %32, label %14, !dbg !2271

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2272
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2252, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2262
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2273
  %16 = sext i32 %12 to i64, !dbg !2274
  store i64 %16, ptr %5, align 8, !dbg !2275, !tbaa !2191, !DIAssignID !2276
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2255, metadata !DIExpression(), metadata !2276, metadata ptr %5, metadata !DIExpression()), !dbg !2262
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2277
  %18 = add nuw nsw i32 %0, 1, !dbg !2278
  %19 = sub i32 %18, %12, !dbg !2279
  %20 = sext i32 %19 to i64, !dbg !2280
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2281
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2250, metadata !DIExpression()), !dbg !2263
  store ptr %21, ptr @slotvec, align 8, !dbg !2282, !tbaa !751
  br i1 %15, label %22, label %23, !dbg !2283

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2284, !tbaa.struct !2286
  br label %23, !dbg !2287

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2288, !tbaa !807
  %25 = sext i32 %24 to i64, !dbg !2289
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2289
  %27 = load i64, ptr %5, align 8, !dbg !2290, !tbaa !2191
  %28 = sub nsw i64 %27, %25, !dbg !2291
  %29 = shl i64 %28, 4, !dbg !2292
  call void @llvm.dbg.value(metadata ptr %26, metadata !1675, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 0, metadata !1678, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %29, metadata !1679, metadata !DIExpression()), !dbg !2293
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2295
  %30 = load i64, ptr %5, align 8, !dbg !2296, !tbaa !2191
  %31 = trunc i64 %30 to i32, !dbg !2296
  store i32 %31, ptr @nslots, align 4, !dbg !2297, !tbaa !807
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2298
  br label %32, !dbg !2299

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2250, metadata !DIExpression()), !dbg !2263
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2300
  %36 = load i64, ptr %35, align 8, !dbg !2301, !tbaa !2219
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2256, metadata !DIExpression()), !dbg !2302
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2303
  %38 = load ptr, ptr %37, align 8, !dbg !2303, !tbaa !2207
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2258, metadata !DIExpression()), !dbg !2302
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2304
  %40 = load i32, ptr %39, align 4, !dbg !2304, !tbaa !1516
  %41 = or i32 %40, 1, !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2259, metadata !DIExpression()), !dbg !2302
  %42 = load i32, ptr %3, align 8, !dbg !2306, !tbaa !1466
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2307
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2308
  %45 = load ptr, ptr %44, align 8, !dbg !2308, !tbaa !1537
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2309
  %47 = load ptr, ptr %46, align 8, !dbg !2309, !tbaa !1540
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2260, metadata !DIExpression()), !dbg !2302
  %49 = icmp ugt i64 %36, %48, !dbg !2311
  br i1 %49, label %60, label %50, !dbg !2313

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2314
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2256, metadata !DIExpression()), !dbg !2302
  store i64 %51, ptr %35, align 8, !dbg !2316, !tbaa !2219
  %52 = icmp eq ptr %38, @slot0, !dbg !2317
  br i1 %52, label %54, label %53, !dbg !2319

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2320
  br label %54, !dbg !2320

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2321
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2258, metadata !DIExpression()), !dbg !2302
  store ptr %55, ptr %37, align 8, !dbg !2322, !tbaa !2207
  %56 = load i32, ptr %3, align 8, !dbg !2323, !tbaa !1466
  %57 = load ptr, ptr %44, align 8, !dbg !2324, !tbaa !1537
  %58 = load ptr, ptr %46, align 8, !dbg !2325, !tbaa !1540
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2326
  br label %60, !dbg !2327

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2302
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2258, metadata !DIExpression()), !dbg !2302
  store i32 %7, ptr %6, align 4, !dbg !2328, !tbaa !807
  ret ptr %61, !dbg !2329
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2330 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2334, metadata !DIExpression()), !dbg !2337
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2335, metadata !DIExpression()), !dbg !2337
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2336, metadata !DIExpression()), !dbg !2337
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2338
  ret ptr %4, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2340 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2342, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata ptr %0, metadata !2237, metadata !DIExpression()), !dbg !2344
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2346
  ret ptr %2, !dbg !2347
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2352, metadata !DIExpression()), !dbg !2354
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2353, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 0, metadata !2334, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %0, metadata !2335, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %1, metadata !2336, metadata !DIExpression()), !dbg !2355
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2357
  ret ptr %3, !dbg !2358
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2359 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2367
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2366, metadata !DIExpression(), metadata !2367, metadata ptr %4, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2363, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2364, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2365, metadata !DIExpression()), !dbg !2368
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2369
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !2374, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2382, !alias.scope !2370, !DIAssignID !2383
  call void @llvm.dbg.assign(metadata i8 0, metadata !2366, metadata !DIExpression(), metadata !2383, metadata ptr %4, metadata !DIExpression()), !dbg !2368
  %5 = icmp eq i32 %1, 10, !dbg !2384
  br i1 %5, label %6, label %7, !dbg !2386

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2387, !noalias !2370
  unreachable, !dbg !2387

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2388, !tbaa !1466, !alias.scope !2370, !DIAssignID !2389
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2389, metadata ptr %4, metadata !DIExpression()), !dbg !2368
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2390
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2391
  ret ptr %8, !dbg !2392
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2393 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2401, metadata !DIExpression(), metadata !2402, metadata ptr %5, metadata !DIExpression()), !dbg !2403
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2403
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2398, metadata !DIExpression()), !dbg !2403
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2399, metadata !DIExpression()), !dbg !2403
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2405), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %1, metadata !2374, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2379, metadata !DIExpression()), !dbg !2411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2411, !alias.scope !2405, !DIAssignID !2412
  call void @llvm.dbg.assign(metadata i8 0, metadata !2401, metadata !DIExpression(), metadata !2412, metadata ptr %5, metadata !DIExpression()), !dbg !2403
  %6 = icmp eq i32 %1, 10, !dbg !2413
  br i1 %6, label %7, label %8, !dbg !2414

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2415, !noalias !2405
  unreachable, !dbg !2415

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2416, !tbaa !1466, !alias.scope !2405, !DIAssignID !2417
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2417, metadata ptr %5, metadata !DIExpression()), !dbg !2403
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2418
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2419
  ret ptr %9, !dbg !2420
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2421 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2427
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2425, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2366, metadata !DIExpression(), metadata !2427, metadata ptr %3, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 0, metadata !2363, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata ptr %1, metadata !2365, metadata !DIExpression()), !dbg !2429
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2431
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2432), !dbg !2435
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2379, metadata !DIExpression()), !dbg !2438
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2438, !alias.scope !2432, !DIAssignID !2439
  call void @llvm.dbg.assign(metadata i8 0, metadata !2366, metadata !DIExpression(), metadata !2439, metadata ptr %3, metadata !DIExpression()), !dbg !2429
  %4 = icmp eq i32 %0, 10, !dbg !2440
  br i1 %4, label %5, label %6, !dbg !2441

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2442, !noalias !2432
  unreachable, !dbg !2442

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2443, !tbaa !1466, !alias.scope !2432, !DIAssignID !2444
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2444, metadata ptr %3, metadata !DIExpression()), !dbg !2429
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2445
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2446
  ret ptr %7, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2448 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2455
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2452, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2453, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2401, metadata !DIExpression(), metadata !2455, metadata ptr %4, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2397, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %0, metadata !2398, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata ptr %1, metadata !2399, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %2, metadata !2400, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2379, metadata !DIExpression()), !dbg !2466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2466, !alias.scope !2460, !DIAssignID !2467
  call void @llvm.dbg.assign(metadata i8 0, metadata !2401, metadata !DIExpression(), metadata !2467, metadata ptr %4, metadata !DIExpression()), !dbg !2457
  %5 = icmp eq i32 %0, 10, !dbg !2468
  br i1 %5, label %6, label %7, !dbg !2469

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2470, !noalias !2460
  unreachable, !dbg !2470

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2471, !tbaa !1466, !alias.scope !2460, !DIAssignID !2472
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2401, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2472, metadata ptr %4, metadata !DIExpression()), !dbg !2457
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2473
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2474
  ret ptr %8, !dbg !2475
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2476 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2484, metadata ptr %4, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2487, !tbaa.struct !2488, !DIAssignID !2489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2489, metadata ptr %4, metadata !DIExpression()), !dbg !2485
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1483, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1484, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1486, metadata !DIExpression()), !dbg !2490
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2492
  %6 = lshr i8 %2, 5, !dbg !2493
  %7 = zext nneg i8 %6 to i64, !dbg !2493
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2494
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1487, metadata !DIExpression()), !dbg !2490
  %9 = and i8 %2, 31, !dbg !2495
  %10 = zext nneg i8 %9 to i32, !dbg !2495
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1489, metadata !DIExpression()), !dbg !2490
  %11 = load i32, ptr %8, align 4, !dbg !2496, !tbaa !807
  %12 = lshr i32 %11, %10, !dbg !2497
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1490, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2490
  %13 = and i32 %12, 1, !dbg !2498
  %14 = xor i32 %13, 1, !dbg !2498
  %15 = shl nuw i32 %14, %10, !dbg !2499
  %16 = xor i32 %15, %11, !dbg !2500
  store i32 %16, ptr %8, align 4, !dbg !2500, !tbaa !807
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2501
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2502
  ret ptr %17, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2504 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2510
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2511
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2509, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2510, metadata ptr %3, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()), !dbg !2512
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2515, !tbaa.struct !2488, !DIAssignID !2516
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2516, metadata ptr %3, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata ptr %3, metadata !1483, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %1, metadata !1484, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i8 %1, metadata !1486, metadata !DIExpression()), !dbg !2517
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2519
  %5 = lshr i8 %1, 5, !dbg !2520
  %6 = zext nneg i8 %5 to i64, !dbg !2520
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %7, metadata !1487, metadata !DIExpression()), !dbg !2517
  %8 = and i8 %1, 31, !dbg !2522
  %9 = zext nneg i8 %8 to i32, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %9, metadata !1489, metadata !DIExpression()), !dbg !2517
  %10 = load i32, ptr %7, align 4, !dbg !2523, !tbaa !807
  %11 = lshr i32 %10, %9, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %11, metadata !1490, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2517
  %12 = and i32 %11, 1, !dbg !2525
  %13 = xor i32 %12, 1, !dbg !2525
  %14 = shl nuw i32 %13, %9, !dbg !2526
  %15 = xor i32 %14, %10, !dbg !2527
  store i32 %15, ptr %7, align 4, !dbg !2527, !tbaa !807
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2528
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2529
  ret ptr %16, !dbg !2530
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2531 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2534
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %0, metadata !2508, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 58, metadata !2509, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2534, metadata ptr %2, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !2538
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2541, !tbaa.struct !2488, !DIAssignID !2542
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2542, metadata ptr %2, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata ptr %2, metadata !1483, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 58, metadata !1484, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2543
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %3, metadata !1487, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i32 26, metadata !1489, metadata !DIExpression()), !dbg !2543
  %4 = load i32, ptr %3, align 4, !dbg !2546, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %4, metadata !1490, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2543
  %5 = or i32 %4, 67108864, !dbg !2547
  store i32 %5, ptr %3, align 4, !dbg !2547, !tbaa !807
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2548
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2549
  ret ptr %6, !dbg !2550
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2551 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2555
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2556
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2555, metadata ptr %3, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2560, !tbaa.struct !2488, !DIAssignID !2561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2483, metadata !DIExpression(), metadata !2561, metadata ptr %3, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %3, metadata !1483, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 58, metadata !1484, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2562
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %4, metadata !1487, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 26, metadata !1489, metadata !DIExpression()), !dbg !2562
  %5 = load i32, ptr %4, align 4, !dbg !2565, !tbaa !807
  call void @llvm.dbg.value(metadata i32 %5, metadata !1490, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2562
  %6 = or i32 %5, 67108864, !dbg !2566
  store i32 %6, ptr %4, align 4, !dbg !2566, !tbaa !807
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2567
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2568
  ret ptr %7, !dbg !2569
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2570 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2575, metadata !DIExpression(), metadata !2576, metadata ptr %4, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2379, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2578
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2572, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2573, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2574, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %1, metadata !2374, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2581
  %5 = icmp eq i32 %1, 10, !dbg !2582
  br i1 %5, label %6, label %7, !dbg !2583

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2584, !noalias !2585
  unreachable, !dbg !2584

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2379, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2581
  store i32 %1, ptr %4, align 8, !dbg !2588, !tbaa.struct !2488, !DIAssignID !2589
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2588
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2575, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2589, metadata ptr %4, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2575, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2590, metadata ptr %8, metadata !DIExpression()), !dbg !2577
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1483, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1484, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1485, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1486, metadata !DIExpression()), !dbg !2591
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2593
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1487, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1489, metadata !DIExpression()), !dbg !2591
  %10 = load i32, ptr %9, align 4, !dbg !2594, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1490, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2591
  %11 = or i32 %10, 67108864, !dbg !2595
  store i32 %11, ptr %9, align 4, !dbg !2595, !tbaa !807, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2575, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2596, metadata ptr %9, metadata !DIExpression()), !dbg !2577
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2598
  ret ptr %12, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2600 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2608
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2605, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2606, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2607, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2608, metadata ptr %5, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 -1, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2623, !tbaa.struct !2488, !DIAssignID !2624
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2624, metadata ptr %5, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2625, metadata ptr undef, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %5, metadata !1523, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %1, metadata !1524, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %5, metadata !1523, metadata !DIExpression()), !dbg !2626
  store i32 10, ptr %5, align 8, !dbg !2628, !tbaa !1466, !DIAssignID !2629
  call void @llvm.dbg.assign(metadata i32 10, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2629, metadata ptr %5, metadata !DIExpression()), !dbg !2620
  %6 = icmp ne ptr %1, null, !dbg !2630
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2631
  br i1 %8, label %10, label %9, !dbg !2631

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2632
  unreachable, !dbg !2632

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2633
  store ptr %1, ptr %11, align 8, !dbg !2634, !tbaa !1537, !DIAssignID !2635
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2635, metadata ptr %11, metadata !DIExpression()), !dbg !2620
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2636
  store ptr %2, ptr %12, align 8, !dbg !2637, !tbaa !1540, !DIAssignID !2638
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2638, metadata ptr %12, metadata !DIExpression()), !dbg !2620
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2639
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2640
  ret ptr %13, !dbg !2641
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2611 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2642
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2642, metadata ptr %6, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2618, metadata !DIExpression()), !dbg !2643
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2619, metadata !DIExpression()), !dbg !2643
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2645, !tbaa.struct !2488, !DIAssignID !2646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2646, metadata ptr %6, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2647, metadata ptr undef, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %6, metadata !1523, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %1, metadata !1524, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %6, metadata !1523, metadata !DIExpression()), !dbg !2648
  store i32 10, ptr %6, align 8, !dbg !2650, !tbaa !1466, !DIAssignID !2651
  call void @llvm.dbg.assign(metadata i32 10, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2651, metadata ptr %6, metadata !DIExpression()), !dbg !2643
  %7 = icmp ne ptr %1, null, !dbg !2652
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2653
  br i1 %9, label %11, label %10, !dbg !2653

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2654
  unreachable, !dbg !2654

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2655
  store ptr %1, ptr %12, align 8, !dbg !2656, !tbaa !1537, !DIAssignID !2657
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2657, metadata ptr %12, metadata !DIExpression()), !dbg !2643
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2658
  store ptr %2, ptr %13, align 8, !dbg !2659, !tbaa !1540, !DIAssignID !2660
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2660, metadata ptr %13, metadata !DIExpression()), !dbg !2643
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2661
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2662
  ret ptr %14, !dbg !2663
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2664 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2671
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2668, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2669, metadata !DIExpression()), !dbg !2672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 0, metadata !2604, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %0, metadata !2605, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !2606, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2607, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2671, metadata ptr %4, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !2615, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 -1, metadata !2619, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2678, !tbaa.struct !2488, !DIAssignID !2679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2679, metadata ptr %4, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2680, metadata ptr undef, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %4, metadata !1523, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !1525, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %4, metadata !1523, metadata !DIExpression()), !dbg !2681
  store i32 10, ptr %4, align 8, !dbg !2683, !tbaa !1466, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata i32 10, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2684, metadata ptr %4, metadata !DIExpression()), !dbg !2675
  %5 = icmp ne ptr %0, null, !dbg !2685
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2686
  br i1 %7, label %9, label %8, !dbg !2686

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2687
  unreachable, !dbg !2687

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2688
  store ptr %0, ptr %10, align 8, !dbg !2689, !tbaa !1537, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2690, metadata ptr %10, metadata !DIExpression()), !dbg !2675
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2691
  store ptr %1, ptr %11, align 8, !dbg !2692, !tbaa !1540, !DIAssignID !2693
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2693, metadata ptr %11, metadata !DIExpression()), !dbg !2675
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2694
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2695
  ret ptr %12, !dbg !2696
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2697 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2705
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2701, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2702, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2703, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2705, metadata ptr %5, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 0, metadata !2615, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %3, metadata !2619, metadata !DIExpression()), !dbg !2707
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2710, !tbaa.struct !2488, !DIAssignID !2711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2711, metadata ptr %5, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2712, metadata ptr undef, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %5, metadata !1523, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %1, metadata !1525, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %5, metadata !1523, metadata !DIExpression()), !dbg !2713
  store i32 10, ptr %5, align 8, !dbg !2715, !tbaa !1466, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata i32 10, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2716, metadata ptr %5, metadata !DIExpression()), !dbg !2707
  %6 = icmp ne ptr %0, null, !dbg !2717
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2718
  br i1 %8, label %10, label %9, !dbg !2718

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2719
  unreachable, !dbg !2719

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2720
  store ptr %0, ptr %11, align 8, !dbg !2721, !tbaa !1537, !DIAssignID !2722
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2722, metadata ptr %11, metadata !DIExpression()), !dbg !2707
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2723
  store ptr %1, ptr %12, align 8, !dbg !2724, !tbaa !1540, !DIAssignID !2725
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2610, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2725, metadata ptr %12, metadata !DIExpression()), !dbg !2707
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2726
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2727
  ret ptr %13, !dbg !2728
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2729 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2734, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2735, metadata !DIExpression()), !dbg !2736
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2737
  ret ptr %4, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2739 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2746
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2748
  ret ptr %3, !dbg !2749
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2750 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2755, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i32 %0, metadata !2733, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %1, metadata !2734, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 -1, metadata !2735, metadata !DIExpression()), !dbg !2757
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2759
  ret ptr %3, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2761 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %0, metadata !2755, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i32 0, metadata !2733, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 -1, metadata !2735, metadata !DIExpression()), !dbg !2769
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2771
  ret ptr %2, !dbg !2772
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2773 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2812, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2813, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2814, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2815, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2816, metadata !DIExpression()), !dbg !2818
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2817, metadata !DIExpression()), !dbg !2818
  %7 = icmp eq ptr %1, null, !dbg !2819
  br i1 %7, label %10, label %8, !dbg !2821

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2822
  br label %12, !dbg !2822

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.72, ptr noundef %2, ptr noundef %3) #37, !dbg !2823
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.3.74, i32 noundef 5) #37, !dbg !2824
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2824
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2825
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.5.76, i32 noundef 5) #37, !dbg !2826
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.77) #37, !dbg !2826
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %0), !dbg !2827
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
  ], !dbg !2828

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.7.78, i32 noundef 5) #37, !dbg !2829
  %21 = load ptr, ptr %4, align 8, !dbg !2829, !tbaa !751
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2829
  br label %147, !dbg !2831

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.8.79, i32 noundef 5) #37, !dbg !2832
  %25 = load ptr, ptr %4, align 8, !dbg !2832, !tbaa !751
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2832
  %27 = load ptr, ptr %26, align 8, !dbg !2832, !tbaa !751
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2832
  br label %147, !dbg !2833

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.9.80, i32 noundef 5) #37, !dbg !2834
  %31 = load ptr, ptr %4, align 8, !dbg !2834, !tbaa !751
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2834
  %33 = load ptr, ptr %32, align 8, !dbg !2834, !tbaa !751
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2834
  %35 = load ptr, ptr %34, align 8, !dbg !2834, !tbaa !751
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2834
  br label %147, !dbg !2835

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.10.81, i32 noundef 5) #37, !dbg !2836
  %39 = load ptr, ptr %4, align 8, !dbg !2836, !tbaa !751
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2836
  %41 = load ptr, ptr %40, align 8, !dbg !2836, !tbaa !751
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2836
  %43 = load ptr, ptr %42, align 8, !dbg !2836, !tbaa !751
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2836
  %45 = load ptr, ptr %44, align 8, !dbg !2836, !tbaa !751
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2836
  br label %147, !dbg !2837

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.11.82, i32 noundef 5) #37, !dbg !2838
  %49 = load ptr, ptr %4, align 8, !dbg !2838, !tbaa !751
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2838
  %51 = load ptr, ptr %50, align 8, !dbg !2838, !tbaa !751
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2838
  %53 = load ptr, ptr %52, align 8, !dbg !2838, !tbaa !751
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2838
  %55 = load ptr, ptr %54, align 8, !dbg !2838, !tbaa !751
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2838
  %57 = load ptr, ptr %56, align 8, !dbg !2838, !tbaa !751
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2838
  br label %147, !dbg !2839

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.12.83, i32 noundef 5) #37, !dbg !2840
  %61 = load ptr, ptr %4, align 8, !dbg !2840, !tbaa !751
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2840
  %63 = load ptr, ptr %62, align 8, !dbg !2840, !tbaa !751
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2840
  %65 = load ptr, ptr %64, align 8, !dbg !2840, !tbaa !751
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2840
  %67 = load ptr, ptr %66, align 8, !dbg !2840, !tbaa !751
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2840
  %69 = load ptr, ptr %68, align 8, !dbg !2840, !tbaa !751
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2840
  %71 = load ptr, ptr %70, align 8, !dbg !2840, !tbaa !751
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2840
  br label %147, !dbg !2841

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.13.84, i32 noundef 5) #37, !dbg !2842
  %75 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !751
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2842
  %77 = load ptr, ptr %76, align 8, !dbg !2842, !tbaa !751
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2842
  %79 = load ptr, ptr %78, align 8, !dbg !2842, !tbaa !751
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2842
  %81 = load ptr, ptr %80, align 8, !dbg !2842, !tbaa !751
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2842
  %83 = load ptr, ptr %82, align 8, !dbg !2842, !tbaa !751
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2842
  %85 = load ptr, ptr %84, align 8, !dbg !2842, !tbaa !751
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2842
  %87 = load ptr, ptr %86, align 8, !dbg !2842, !tbaa !751
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2842
  br label %147, !dbg !2843

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.14.85, i32 noundef 5) #37, !dbg !2844
  %91 = load ptr, ptr %4, align 8, !dbg !2844, !tbaa !751
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2844
  %93 = load ptr, ptr %92, align 8, !dbg !2844, !tbaa !751
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2844
  %95 = load ptr, ptr %94, align 8, !dbg !2844, !tbaa !751
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2844
  %97 = load ptr, ptr %96, align 8, !dbg !2844, !tbaa !751
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2844
  %99 = load ptr, ptr %98, align 8, !dbg !2844, !tbaa !751
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2844
  %101 = load ptr, ptr %100, align 8, !dbg !2844, !tbaa !751
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2844
  %103 = load ptr, ptr %102, align 8, !dbg !2844, !tbaa !751
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2844
  %105 = load ptr, ptr %104, align 8, !dbg !2844, !tbaa !751
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2844
  br label %147, !dbg !2845

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.15.86, i32 noundef 5) #37, !dbg !2846
  %109 = load ptr, ptr %4, align 8, !dbg !2846, !tbaa !751
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2846
  %111 = load ptr, ptr %110, align 8, !dbg !2846, !tbaa !751
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2846
  %113 = load ptr, ptr %112, align 8, !dbg !2846, !tbaa !751
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2846
  %115 = load ptr, ptr %114, align 8, !dbg !2846, !tbaa !751
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2846
  %117 = load ptr, ptr %116, align 8, !dbg !2846, !tbaa !751
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2846
  %119 = load ptr, ptr %118, align 8, !dbg !2846, !tbaa !751
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2846
  %121 = load ptr, ptr %120, align 8, !dbg !2846, !tbaa !751
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2846
  %123 = load ptr, ptr %122, align 8, !dbg !2846, !tbaa !751
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2846
  %125 = load ptr, ptr %124, align 8, !dbg !2846, !tbaa !751
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2846
  br label %147, !dbg !2847

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.16.87, i32 noundef 5) #37, !dbg !2848
  %129 = load ptr, ptr %4, align 8, !dbg !2848, !tbaa !751
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2848
  %131 = load ptr, ptr %130, align 8, !dbg !2848, !tbaa !751
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2848
  %133 = load ptr, ptr %132, align 8, !dbg !2848, !tbaa !751
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2848
  %135 = load ptr, ptr %134, align 8, !dbg !2848, !tbaa !751
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2848
  %137 = load ptr, ptr %136, align 8, !dbg !2848, !tbaa !751
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2848
  %139 = load ptr, ptr %138, align 8, !dbg !2848, !tbaa !751
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2848
  %141 = load ptr, ptr %140, align 8, !dbg !2848, !tbaa !751
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2848
  %143 = load ptr, ptr %142, align 8, !dbg !2848, !tbaa !751
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2848
  %145 = load ptr, ptr %144, align 8, !dbg !2848, !tbaa !751
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2848
  br label %147, !dbg !2849

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2850
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2851 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2855, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2856, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2857, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2858, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2859, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2860, metadata !DIExpression()), !dbg !2861
  br label %6, !dbg !2862

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2860, metadata !DIExpression()), !dbg !2861
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2865
  %9 = load ptr, ptr %8, align 8, !dbg !2865, !tbaa !751
  %10 = icmp eq ptr %9, null, !dbg !2867
  %11 = add i64 %7, 1, !dbg !2868
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2860, metadata !DIExpression()), !dbg !2861
  br i1 %10, label %12, label %6, !dbg !2867, !llvm.loop !2869

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2864
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2871
  ret void, !dbg !2872
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2873 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2895
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2893, metadata !DIExpression(), metadata !2895, metadata ptr %6, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2890, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2891, metadata !DIExpression(DW_OP_deref)), !dbg !2896
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2892, metadata !DIExpression()), !dbg !2896
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2892, metadata !DIExpression()), !dbg !2896
  %10 = icmp sgt i32 %9, -1, !dbg !2898
  br i1 %10, label %18, label %11, !dbg !2898

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2898
  store i32 %12, ptr %7, align 8, !dbg !2898
  %13 = icmp ult i32 %9, -7, !dbg !2898
  br i1 %13, label %14, label %18, !dbg !2898

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2898
  %16 = sext i32 %9 to i64, !dbg !2898
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2898
  br label %22, !dbg !2898

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2898
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2898
  store ptr %21, ptr %4, align 8, !dbg !2898
  br label %22, !dbg !2898

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2898
  %25 = load ptr, ptr %24, align 8, !dbg !2898
  store ptr %25, ptr %6, align 8, !dbg !2901, !tbaa !751
  %26 = icmp eq ptr %25, null, !dbg !2902
  br i1 %26, label %197, label %27, !dbg !2903

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2892, metadata !DIExpression()), !dbg !2896
  %28 = icmp sgt i32 %23, -1, !dbg !2898
  br i1 %28, label %36, label %29, !dbg !2898

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2898
  store i32 %30, ptr %7, align 8, !dbg !2898
  %31 = icmp ult i32 %23, -7, !dbg !2898
  br i1 %31, label %32, label %36, !dbg !2898

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2898
  %34 = sext i32 %23 to i64, !dbg !2898
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2898
  br label %40, !dbg !2898

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2898
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2898
  store ptr %39, ptr %4, align 8, !dbg !2898
  br label %40, !dbg !2898

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2898
  %43 = load ptr, ptr %42, align 8, !dbg !2898
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2904
  store ptr %43, ptr %44, align 8, !dbg !2901, !tbaa !751
  %45 = icmp eq ptr %43, null, !dbg !2902
  br i1 %45, label %197, label %46, !dbg !2903

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2892, metadata !DIExpression()), !dbg !2896
  %47 = icmp sgt i32 %41, -1, !dbg !2898
  br i1 %47, label %55, label %48, !dbg !2898

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2898
  store i32 %49, ptr %7, align 8, !dbg !2898
  %50 = icmp ult i32 %41, -7, !dbg !2898
  br i1 %50, label %51, label %55, !dbg !2898

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2898
  %53 = sext i32 %41 to i64, !dbg !2898
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2898
  br label %59, !dbg !2898

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2898
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2898
  store ptr %58, ptr %4, align 8, !dbg !2898
  br label %59, !dbg !2898

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2898
  %62 = load ptr, ptr %61, align 8, !dbg !2898
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2904
  store ptr %62, ptr %63, align 8, !dbg !2901, !tbaa !751
  %64 = icmp eq ptr %62, null, !dbg !2902
  br i1 %64, label %197, label %65, !dbg !2903

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2892, metadata !DIExpression()), !dbg !2896
  %66 = icmp sgt i32 %60, -1, !dbg !2898
  br i1 %66, label %74, label %67, !dbg !2898

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2898
  store i32 %68, ptr %7, align 8, !dbg !2898
  %69 = icmp ult i32 %60, -7, !dbg !2898
  br i1 %69, label %70, label %74, !dbg !2898

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2898
  %72 = sext i32 %60 to i64, !dbg !2898
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2898
  br label %78, !dbg !2898

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2898
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2898
  store ptr %77, ptr %4, align 8, !dbg !2898
  br label %78, !dbg !2898

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2898
  %81 = load ptr, ptr %80, align 8, !dbg !2898
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2904
  store ptr %81, ptr %82, align 8, !dbg !2901, !tbaa !751
  %83 = icmp eq ptr %81, null, !dbg !2902
  br i1 %83, label %197, label %84, !dbg !2903

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2892, metadata !DIExpression()), !dbg !2896
  %85 = icmp sgt i32 %79, -1, !dbg !2898
  br i1 %85, label %93, label %86, !dbg !2898

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2898
  store i32 %87, ptr %7, align 8, !dbg !2898
  %88 = icmp ult i32 %79, -7, !dbg !2898
  br i1 %88, label %89, label %93, !dbg !2898

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2898
  %91 = sext i32 %79 to i64, !dbg !2898
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2898
  br label %97, !dbg !2898

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2898
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2898
  store ptr %96, ptr %4, align 8, !dbg !2898
  br label %97, !dbg !2898

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2898
  %100 = load ptr, ptr %99, align 8, !dbg !2898
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2904
  store ptr %100, ptr %101, align 8, !dbg !2901, !tbaa !751
  %102 = icmp eq ptr %100, null, !dbg !2902
  br i1 %102, label %197, label %103, !dbg !2903

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2892, metadata !DIExpression()), !dbg !2896
  %104 = icmp sgt i32 %98, -1, !dbg !2898
  br i1 %104, label %112, label %105, !dbg !2898

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2898
  store i32 %106, ptr %7, align 8, !dbg !2898
  %107 = icmp ult i32 %98, -7, !dbg !2898
  br i1 %107, label %108, label %112, !dbg !2898

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2898
  %110 = sext i32 %98 to i64, !dbg !2898
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2898
  br label %116, !dbg !2898

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2898
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2898
  store ptr %115, ptr %4, align 8, !dbg !2898
  br label %116, !dbg !2898

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2898
  %119 = load ptr, ptr %118, align 8, !dbg !2898
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2904
  store ptr %119, ptr %120, align 8, !dbg !2901, !tbaa !751
  %121 = icmp eq ptr %119, null, !dbg !2902
  br i1 %121, label %197, label %122, !dbg !2903

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2892, metadata !DIExpression()), !dbg !2896
  %123 = icmp sgt i32 %117, -1, !dbg !2898
  br i1 %123, label %131, label %124, !dbg !2898

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2898
  store i32 %125, ptr %7, align 8, !dbg !2898
  %126 = icmp ult i32 %117, -7, !dbg !2898
  br i1 %126, label %127, label %131, !dbg !2898

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2898
  %129 = sext i32 %117 to i64, !dbg !2898
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2898
  br label %135, !dbg !2898

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2898
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2898
  store ptr %134, ptr %4, align 8, !dbg !2898
  br label %135, !dbg !2898

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2898
  %138 = load ptr, ptr %137, align 8, !dbg !2898
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2904
  store ptr %138, ptr %139, align 8, !dbg !2901, !tbaa !751
  %140 = icmp eq ptr %138, null, !dbg !2902
  br i1 %140, label %197, label %141, !dbg !2903

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2892, metadata !DIExpression()), !dbg !2896
  %142 = icmp sgt i32 %136, -1, !dbg !2898
  br i1 %142, label %150, label %143, !dbg !2898

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2898
  store i32 %144, ptr %7, align 8, !dbg !2898
  %145 = icmp ult i32 %136, -7, !dbg !2898
  br i1 %145, label %146, label %150, !dbg !2898

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2898
  %148 = sext i32 %136 to i64, !dbg !2898
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2898
  br label %154, !dbg !2898

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2898
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2898
  store ptr %153, ptr %4, align 8, !dbg !2898
  br label %154, !dbg !2898

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2898
  %157 = load ptr, ptr %156, align 8, !dbg !2898
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2904
  store ptr %157, ptr %158, align 8, !dbg !2901, !tbaa !751
  %159 = icmp eq ptr %157, null, !dbg !2902
  br i1 %159, label %197, label %160, !dbg !2903

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2892, metadata !DIExpression()), !dbg !2896
  %161 = icmp sgt i32 %155, -1, !dbg !2898
  br i1 %161, label %169, label %162, !dbg !2898

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2898
  store i32 %163, ptr %7, align 8, !dbg !2898
  %164 = icmp ult i32 %155, -7, !dbg !2898
  br i1 %164, label %165, label %169, !dbg !2898

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2898
  %167 = sext i32 %155 to i64, !dbg !2898
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2898
  br label %173, !dbg !2898

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2898
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2898
  store ptr %172, ptr %4, align 8, !dbg !2898
  br label %173, !dbg !2898

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2898
  %176 = load ptr, ptr %175, align 8, !dbg !2898
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2904
  store ptr %176, ptr %177, align 8, !dbg !2901, !tbaa !751
  %178 = icmp eq ptr %176, null, !dbg !2902
  br i1 %178, label %197, label %179, !dbg !2903

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2892, metadata !DIExpression()), !dbg !2896
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2892, metadata !DIExpression()), !dbg !2896
  %180 = icmp sgt i32 %174, -1, !dbg !2898
  br i1 %180, label %188, label %181, !dbg !2898

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2898
  store i32 %182, ptr %7, align 8, !dbg !2898
  %183 = icmp ult i32 %174, -7, !dbg !2898
  br i1 %183, label %184, label %188, !dbg !2898

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2898
  %186 = sext i32 %174 to i64, !dbg !2898
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2898
  br label %191, !dbg !2898

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2898
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2898
  store ptr %190, ptr %4, align 8, !dbg !2898
  br label %191, !dbg !2898

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2898
  %193 = load ptr, ptr %192, align 8, !dbg !2898
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2904
  store ptr %193, ptr %194, align 8, !dbg !2901, !tbaa !751
  %195 = icmp eq ptr %193, null, !dbg !2902
  %196 = select i1 %195, i64 9, i64 10, !dbg !2903
  br label %197, !dbg !2903

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2905
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2906
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2907
  ret void, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2908 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2917
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2916, metadata !DIExpression(), metadata !2917, metadata ptr %5, metadata !DIExpression()), !dbg !2918
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2914, metadata !DIExpression()), !dbg !2918
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2915, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2919
  call void @llvm.va_start(ptr nonnull %5), !dbg !2920
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2921, !tbaa.struct !1067
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2921
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2921
  call void @llvm.va_end(ptr nonnull %5), !dbg !2922
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2923
  ret void, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2924 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2925, !tbaa !751
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.75, ptr noundef %1), !dbg !2925
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !2926
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2926
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.19.92, i32 noundef 5) #37, !dbg !2927
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2927
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.73, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2928
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.93) #37, !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2930 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2937, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2944
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2952
  %5 = icmp eq ptr %4, null, !dbg !2954
  br i1 %5, label %6, label %7, !dbg !2956

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2957
  unreachable, !dbg !2957

7:                                                ; preds = %3
  ret ptr %4, !dbg !2958
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2940 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2959
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2959
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2960
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2961
  %5 = icmp eq ptr %4, null, !dbg !2963
  br i1 %5, label %6, label %7, !dbg !2964

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2965
  unreachable, !dbg !2965

7:                                                ; preds = %3
  ret ptr %4, !dbg !2966
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2967 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !2972
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !2974
  %3 = icmp eq ptr %2, null, !dbg !2976
  br i1 %3, label %4, label %5, !dbg !2977

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2978
  unreachable, !dbg !2978

5:                                                ; preds = %1
  ret ptr %2, !dbg !2979
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2980 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2981 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !2991
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !2994
  %3 = icmp eq ptr %2, null, !dbg !2996
  br i1 %3, label %4, label %5, !dbg !2997

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2998
  unreachable, !dbg !2998

5:                                                ; preds = %1
  ret ptr %2, !dbg !2999
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3000 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !3006
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3009
  %3 = icmp eq ptr %2, null, !dbg !3011
  br i1 %3, label %4, label %5, !dbg !3012

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3013
  unreachable, !dbg !3013

5:                                                ; preds = %1
  ret ptr %2, !dbg !3014
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3015 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3029
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3031
  %5 = icmp eq ptr %4, null, !dbg !3033
  br i1 %5, label %6, label %7, !dbg !3034

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3035
  unreachable, !dbg !3035

7:                                                ; preds = %2
  ret ptr %4, !dbg !3036
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3037 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3038 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %0, metadata !3045, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3051
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3053
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3055
  %5 = icmp eq ptr %4, null, !dbg !3057
  br i1 %5, label %6, label %7, !dbg !3058

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3059
  unreachable, !dbg !3059

7:                                                ; preds = %2
  ret ptr %4, !dbg !3060
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3061 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %2, metadata !3073, metadata !DIExpression()), !dbg !3074
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3077
  %5 = icmp eq ptr %4, null, !dbg !3079
  br i1 %5, label %6, label %7, !dbg !3080

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3081
  unreachable, !dbg !3081

7:                                                ; preds = %3
  ret ptr %4, !dbg !3082
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3083 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr null, metadata !2939, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %0, metadata !2942, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()), !dbg !3090
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3093
  %4 = icmp eq ptr %3, null, !dbg !3095
  br i1 %4, label %5, label %6, !dbg !3096

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3097
  unreachable, !dbg !3097

6:                                                ; preds = %2
  ret ptr %3, !dbg !3098
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3099 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr null, metadata !3065, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %0, metadata !3066, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr null, metadata !3069, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3072, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3108
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3111
  %4 = icmp eq ptr %3, null, !dbg !3113
  br i1 %4, label %5, label %6, !dbg !3114

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3115
  unreachable, !dbg !3115

6:                                                ; preds = %2
  ret ptr %3, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3117 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !687, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !688, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 1, metadata !689, metadata !DIExpression()), !dbg !3124
  %3 = load i64, ptr %1, align 8, !dbg !3126, !tbaa !2191
  call void @llvm.dbg.value(metadata i64 %3, metadata !690, metadata !DIExpression()), !dbg !3124
  %4 = icmp eq ptr %0, null, !dbg !3127
  br i1 %4, label %5, label %8, !dbg !3129

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3130
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3133
  br label %15, !dbg !3133

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3134
  %10 = add nuw i64 %9, 1, !dbg !3134
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3134
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3134
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %13, metadata !690, metadata !DIExpression()), !dbg !3124
  br i1 %12, label %14, label %15, !dbg !3137

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3138
  unreachable, !dbg !3138

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %16, metadata !690, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %16, metadata !2942, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 1, metadata !2943, metadata !DIExpression()), !dbg !3139
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %17, metadata !2947, metadata !DIExpression()), !dbg !3142
  %18 = icmp eq ptr %17, null, !dbg !3144
  br i1 %18, label %19, label %20, !dbg !3145

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3146
  unreachable, !dbg !3146

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !687, metadata !DIExpression()), !dbg !3124
  store i64 %16, ptr %1, align 8, !dbg !3147, !tbaa !2191
  ret ptr %17, !dbg !3148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !682 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !687, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !688, metadata !DIExpression()), !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !689, metadata !DIExpression()), !dbg !3149
  %4 = load i64, ptr %1, align 8, !dbg !3150, !tbaa !2191
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !690, metadata !DIExpression()), !dbg !3149
  %5 = icmp eq ptr %0, null, !dbg !3151
  br i1 %5, label %6, label %13, !dbg !3152

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3153
  br i1 %7, label %8, label %20, !dbg !3154

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3155
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !690, metadata !DIExpression()), !dbg !3149
  %10 = icmp ugt i64 %2, 128, !dbg !3157
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3158
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !690, metadata !DIExpression()), !dbg !3149
  br label %20, !dbg !3159

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3160
  %15 = add nuw i64 %14, 1, !dbg !3160
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3160
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3160
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3160
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !690, metadata !DIExpression()), !dbg !3149
  br i1 %17, label %19, label %20, !dbg !3161

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3162
  unreachable, !dbg !3162

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3149
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !690, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %21, metadata !2942, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !3163
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %22, metadata !2947, metadata !DIExpression()), !dbg !3166
  %23 = icmp eq ptr %22, null, !dbg !3168
  br i1 %23, label %24, label %25, !dbg !3169

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3170
  unreachable, !dbg !3170

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !687, metadata !DIExpression()), !dbg !3149
  store i64 %21, ptr %1, align 8, !dbg !3171, !tbaa !2191
  ret ptr %22, !dbg !3172
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !694 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !703, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !704, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !705, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !706, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !707, metadata !DIExpression()), !dbg !3173
  %6 = load i64, ptr %1, align 8, !dbg !3174, !tbaa !2191
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !708, metadata !DIExpression()), !dbg !3173
  %7 = ashr i64 %6, 1, !dbg !3175
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3175
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3175
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !709, metadata !DIExpression()), !dbg !3173
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3177
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !709, metadata !DIExpression()), !dbg !3173
  %12 = icmp sgt i64 %3, -1, !dbg !3178
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3180
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !709, metadata !DIExpression()), !dbg !3173
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3181
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3181
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !710, metadata !DIExpression()), !dbg !3173
  %18 = icmp slt i64 %17, 128, !dbg !3181
  %19 = select i1 %18, i64 128, i64 0, !dbg !3181
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3181
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !711, metadata !DIExpression()), !dbg !3173
  %21 = icmp eq i64 %20, 0, !dbg !3182
  br i1 %21, label %28, label %22, !dbg !3184

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !709, metadata !DIExpression()), !dbg !3173
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !710, metadata !DIExpression()), !dbg !3173
  br label %28, !dbg !3188

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3173
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !710, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !709, metadata !DIExpression()), !dbg !3173
  %31 = icmp eq ptr %0, null, !dbg !3189
  br i1 %31, label %32, label %33, !dbg !3191

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3192, !tbaa !2191
  br label %33, !dbg !3193

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3194
  %35 = icmp slt i64 %34, %2, !dbg !3196
  br i1 %35, label %36, label %48, !dbg !3197

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3198
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3198
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !709, metadata !DIExpression()), !dbg !3173
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3199
  br i1 %42, label %47, label %43, !dbg !3199

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3200
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3200
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !710, metadata !DIExpression()), !dbg !3173
  br i1 %45, label %47, label %48, !dbg !3201

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3202
  unreachable, !dbg !3202

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3173
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !710, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !709, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %50, metadata !3020, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %50, metadata !3026, metadata !DIExpression()), !dbg !3205
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3207
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %52, metadata !2947, metadata !DIExpression()), !dbg !3209
  %53 = icmp eq ptr %52, null, !dbg !3211
  br i1 %53, label %54, label %55, !dbg !3212

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3213
  unreachable, !dbg !3213

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !703, metadata !DIExpression()), !dbg !3173
  store i64 %49, ptr %1, align 8, !dbg !3214, !tbaa !2191
  ret ptr %52, !dbg !3215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3216 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 1, metadata !3223, metadata !DIExpression()), !dbg !3224
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3227
  %3 = icmp eq ptr %2, null, !dbg !3229
  br i1 %3, label %4, label %5, !dbg !3230

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3231
  unreachable, !dbg !3231

5:                                                ; preds = %1
  ret ptr %2, !dbg !3232
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3233 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3221 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3234
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3234
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3236
  %4 = icmp eq ptr %3, null, !dbg !3238
  br i1 %4, label %5, label %6, !dbg !3239

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3240
  unreachable, !dbg !3240

6:                                                ; preds = %2
  ret ptr %3, !dbg !3241
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3242 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 1, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3259
  %3 = icmp eq ptr %2, null, !dbg !3261
  br i1 %3, label %4, label %5, !dbg !3262

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3263
  unreachable, !dbg !3263

5:                                                ; preds = %1
  ret ptr %2, !dbg !3264
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3247 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3265
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3266
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3269
  %4 = icmp eq ptr %3, null, !dbg !3271
  br i1 %4, label %5, label %6, !dbg !3272

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3273
  unreachable, !dbg !3273

6:                                                ; preds = %2
  ret ptr %3, !dbg !3274
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3275 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !3282
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3285
  %4 = icmp eq ptr %3, null, !dbg !3287
  br i1 %4, label %5, label %6, !dbg !3288

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3289
  unreachable, !dbg !3289

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3298
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3300
  ret ptr %3, !dbg !3301
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3302 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !3311
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3313
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3314
  %4 = icmp eq ptr %3, null, !dbg !3316
  br i1 %4, label %5, label %6, !dbg !3317

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3318
  unreachable, !dbg !3318

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3290, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3321
  ret ptr %3, !dbg !3322
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3323 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3330
  %3 = add nsw i64 %1, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %3, metadata !2985, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !3334
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3336
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3337
  %5 = icmp eq ptr %4, null, !dbg !3339
  br i1 %5, label %6, label %7, !dbg !3340

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3341
  unreachable, !dbg !3341

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3329, metadata !DIExpression()), !dbg !3330
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3342
  store i8 0, ptr %8, align 1, !dbg !3343, !tbaa !816
  call void @llvm.dbg.value(metadata ptr %4, metadata !3290, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3346
  ret ptr %4, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3350, metadata !DIExpression()), !dbg !3351
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3352
  %3 = add i64 %2, 1, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %3, metadata !3280, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %3, metadata !2971, metadata !DIExpression()), !dbg !3356
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3359
  %5 = icmp eq ptr %4, null, !dbg !3361
  br i1 %5, label %6, label %7, !dbg !3362

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3363
  unreachable, !dbg !3363

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3290, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata ptr %0, metadata !3296, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3297, metadata !DIExpression()), !dbg !3364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3366
  ret ptr %4, !dbg !3367
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3368 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3373, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3370, metadata !DIExpression()), !dbg !3374
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #37, !dbg !3373
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #37, !dbg !3373
  %3 = icmp eq i32 %1, 0, !dbg !3373
  tail call void @llvm.assume(i1 %3), !dbg !3373
  tail call void @abort() #39, !dbg !3375
  unreachable, !dbg !3375
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3376 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3419
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3420
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3415, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3421, metadata !DIExpression()), !dbg !3424
  %3 = load i32, ptr %0, align 8, !dbg !3426, !tbaa !3427
  %4 = and i32 %3, 32, !dbg !3428
  %5 = icmp eq i32 %4, 0, !dbg !3428
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3429
  %7 = icmp eq i32 %6, 0, !dbg !3430
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  br i1 %5, label %8, label %18, !dbg !3431

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3433
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3434
  %11 = xor i1 %7, true, !dbg !3434
  %12 = sext i1 %11 to i32, !dbg !3434
  br i1 %10, label %21, label %13, !dbg !3434

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3435
  %15 = load i32, ptr %14, align 4, !dbg !3435, !tbaa !807
  %16 = icmp ne i32 %15, 9, !dbg !3436
  %17 = sext i1 %16 to i32, !dbg !3437
  br label %21, !dbg !3437

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3438

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3440
  store i32 0, ptr %20, align 4, !dbg !3442, !tbaa !807
  br label %21, !dbg !3440

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3419
  ret i32 %22, !dbg !3443
}

; Function Attrs: nounwind
declare !dbg !3444 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3448 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3486, metadata !DIExpression()), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3490
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3491
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3488, metadata !DIExpression()), !dbg !3490
  %3 = icmp slt i32 %2, 0, !dbg !3492
  br i1 %3, label %4, label %6, !dbg !3494

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3495
  br label %24, !dbg !3496

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3497
  %8 = icmp eq i32 %7, 0, !dbg !3497
  br i1 %8, label %13, label %9, !dbg !3499

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3500
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3501
  %12 = icmp eq i64 %11, -1, !dbg !3502
  br i1 %12, label %16, label %13, !dbg !3503

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3504
  %15 = icmp eq i32 %14, 0, !dbg !3504
  br i1 %15, label %16, label %18, !dbg !3505

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3489, metadata !DIExpression()), !dbg !3490
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3489, metadata !DIExpression()), !dbg !3490
  br label %24, !dbg !3507

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3508
  %20 = load i32, ptr %19, align 4, !dbg !3508, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3487, metadata !DIExpression()), !dbg !3490
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3489, metadata !DIExpression()), !dbg !3490
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3506
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3489, metadata !DIExpression()), !dbg !3490
  %22 = icmp eq i32 %20, 0, !dbg !3509
  br i1 %22, label %24, label %23, !dbg !3507

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3511, !tbaa !807
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3489, metadata !DIExpression()), !dbg !3490
  br label %24, !dbg !3513

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3490
  ret i32 %25, !dbg !3514
}

; Function Attrs: nofree nounwind
declare !dbg !3515 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3516 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3517 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3518 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3559, metadata !DIExpression()), !dbg !3560
  %2 = icmp eq ptr %0, null, !dbg !3561
  br i1 %2, label %6, label %3, !dbg !3563

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3564
  %5 = icmp eq i32 %4, 0, !dbg !3564
  br i1 %5, label %6, label %8, !dbg !3565

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3566
  br label %16, !dbg !3567

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3573
  %9 = load i32, ptr %0, align 8, !dbg !3575, !tbaa !3427
  %10 = and i32 %9, 256, !dbg !3577
  %11 = icmp eq i32 %10, 0, !dbg !3577
  br i1 %11, label %14, label %12, !dbg !3578

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3579
  br label %14, !dbg !3579

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3580
  br label %16, !dbg !3581

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3560
  ret i32 %17, !dbg !3582
}

; Function Attrs: nofree nounwind
declare !dbg !3583 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3584 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3623, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3624, metadata !DIExpression()), !dbg !3629
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3625, metadata !DIExpression()), !dbg !3629
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3630
  %5 = load ptr, ptr %4, align 8, !dbg !3630, !tbaa !3631
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3632
  %7 = load ptr, ptr %6, align 8, !dbg !3632, !tbaa !3633
  %8 = icmp eq ptr %5, %7, !dbg !3634
  br i1 %8, label %9, label %27, !dbg !3635

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3636
  %11 = load ptr, ptr %10, align 8, !dbg !3636, !tbaa !1180
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3637
  %13 = load ptr, ptr %12, align 8, !dbg !3637, !tbaa !3638
  %14 = icmp eq ptr %11, %13, !dbg !3639
  br i1 %14, label %15, label %27, !dbg !3640

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3641
  %17 = load ptr, ptr %16, align 8, !dbg !3641, !tbaa !3642
  %18 = icmp eq ptr %17, null, !dbg !3643
  br i1 %18, label %19, label %27, !dbg !3644

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3645
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3646
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3626, metadata !DIExpression()), !dbg !3647
  %22 = icmp eq i64 %21, -1, !dbg !3648
  br i1 %22, label %29, label %23, !dbg !3650

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3651, !tbaa !3427
  %25 = and i32 %24, -17, !dbg !3651
  store i32 %25, ptr %0, align 8, !dbg !3651, !tbaa !3427
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3652
  store i64 %21, ptr %26, align 8, !dbg !3653, !tbaa !3654
  br label %29, !dbg !3655

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3656
  br label %29, !dbg !3657

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3629
  ret i32 %30, !dbg !3658
}

; Function Attrs: nofree nounwind
declare !dbg !3659 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3662 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3667, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3668, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3669, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3670, metadata !DIExpression()), !dbg !3672
  %5 = icmp eq ptr %1, null, !dbg !3673
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3675
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3675
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3669, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3668, metadata !DIExpression()), !dbg !3672
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3667, metadata !DIExpression()), !dbg !3672
  %9 = icmp eq ptr %3, null, !dbg !3676
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3678
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3670, metadata !DIExpression()), !dbg !3672
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3671, metadata !DIExpression()), !dbg !3672
  %12 = icmp ult i64 %11, -3, !dbg !3680
  br i1 %12, label %13, label %17, !dbg !3682

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3683
  %15 = icmp eq i32 %14, 0, !dbg !3683
  br i1 %15, label %16, label %29, !dbg !3684

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3685, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata ptr %10, metadata !3692, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i32 0, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 8, metadata !3696, metadata !DIExpression()), !dbg !3697
  store i64 0, ptr %10, align 1, !dbg !3699
  br label %29, !dbg !3700

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3701
  br i1 %18, label %19, label %20, !dbg !3703

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3704
  unreachable, !dbg !3704

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3705

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3707
  br i1 %23, label %29, label %24, !dbg !3708

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3709
  br i1 %25, label %29, label %26, !dbg !3712

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3713, !tbaa !816
  %28 = zext i8 %27 to i32, !dbg !3714
  store i32 %28, ptr %6, align 4, !dbg !3715, !tbaa !807
  br label %29, !dbg !3716

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3672
  ret i64 %30, !dbg !3717
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3718 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3724 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3727, metadata !DIExpression()), !dbg !3730
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3728, metadata !DIExpression()), !dbg !3730
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3731
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3729, metadata !DIExpression()), !dbg !3730
  br i1 %5, label %6, label %8, !dbg !3733

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3734
  store i32 12, ptr %7, align 4, !dbg !3736, !tbaa !807
  br label %12, !dbg !3737

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3731
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3729, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %0, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %9, metadata !3741, metadata !DIExpression()), !dbg !3742
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3744
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3745
  br label %12, !dbg !3746

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3730
  ret ptr %13, !dbg !3747
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3748 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3757
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3753, metadata !DIExpression(), metadata !3757, metadata ptr %2, metadata !DIExpression()), !dbg !3758
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3752, metadata !DIExpression()), !dbg !3758
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3759
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3760
  %4 = icmp eq i32 %3, 0, !dbg !3760
  br i1 %4, label %5, label %12, !dbg !3762

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3763, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata ptr @.str.122, metadata !3766, metadata !DIExpression()), !dbg !3767
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.122, i64 2), !dbg !3770
  %7 = icmp eq i32 %6, 0, !dbg !3771
  br i1 %7, label %11, label %8, !dbg !3772

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3763, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3766, metadata !DIExpression()), !dbg !3773
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3775
  %10 = icmp eq i32 %9, 0, !dbg !3776
  br i1 %10, label %11, label %12, !dbg !3777

11:                                               ; preds = %8, %5
  br label %12, !dbg !3778

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3758
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3779
  ret i1 %13, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3780 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3785, metadata !DIExpression()), !dbg !3787
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3786, metadata !DIExpression()), !dbg !3787
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3788
  ret i32 %4, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3790 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3795
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3796
  ret ptr %2, !dbg !3797
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3798 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3802
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3801, metadata !DIExpression()), !dbg !3802
  ret ptr %2, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3805 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3807, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3808, metadata !DIExpression()), !dbg !3814
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3809, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i32 %0, metadata !3800, metadata !DIExpression()), !dbg !3815
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3817
  call void @llvm.dbg.value(metadata ptr %4, metadata !3801, metadata !DIExpression()), !dbg !3815
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3810, metadata !DIExpression()), !dbg !3814
  %5 = icmp eq ptr %4, null, !dbg !3818
  br i1 %5, label %6, label %9, !dbg !3819

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3820
  br i1 %7, label %19, label %8, !dbg !3823

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3824, !tbaa !816
  br label %19, !dbg !3825

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3811, metadata !DIExpression()), !dbg !3827
  %11 = icmp ult i64 %10, %2, !dbg !3828
  br i1 %11, label %12, label %14, !dbg !3830

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3831
  call void @llvm.dbg.value(metadata ptr %1, metadata !3833, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %4, metadata !3836, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %13, metadata !3837, metadata !DIExpression()), !dbg !3838
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3840
  br label %19, !dbg !3841

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3842
  br i1 %15, label %19, label %16, !dbg !3845

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3846
  call void @llvm.dbg.value(metadata ptr %1, metadata !3833, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %4, metadata !3836, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %17, metadata !3837, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3850
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3851
  store i8 0, ptr %18, align 1, !dbg !3852, !tbaa !816
  br label %19, !dbg !3853

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3854
  ret i32 %20, !dbg !3855
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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

!llvm.dbg.cu = !{!70, !293, !297, !312, !636, !670, !371, !392, !406, !454, !672, !628, !678, !713, !715, !717, !719, !721, !652, !723, !725, !727, !729}
!llvm.ident = !{!731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731}
!llvm.module.flags = !{!732, !733, !734, !735, !736, !737, !738, !739}

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
!70 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/hostid.o -MD -MP -MF src/.deps/hostid.Tpo -c src/hostid.c -o src/.hostid.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !71, retainedTypes: !88, globals: !96, splitDebugInlining: false, nameTableKind: None)
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
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 18, baseType: !94)
!93 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!293 = distinct !DICompileUnit(language: DW_LANG_C11, file: !290, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !294, splitDebugInlining: false, nameTableKind: None)
!294 = !{!288, !291}
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "file_name", scope: !297, file: !298, line: 45, type: !68, isLocal: true, isDefinition: true)
!297 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !299, splitDebugInlining: false, nameTableKind: None)
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
!311 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !312, file: !313, line: 66, type: !363, isLocal: false, isDefinition: true)
!312 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !314, globals: !315, splitDebugInlining: false, nameTableKind: None)
!313 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!314 = !{!89, !95}
!315 = !{!316, !318, !342, !344, !346, !348, !310, !350, !352, !354, !356, !361}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !313, line: 272, type: !99, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "old_file_name", scope: !320, file: !313, line: 304, type: !68, isLocal: true, isDefinition: true)
!320 = distinct !DISubprogram(name: "verror_at_line", scope: !313, file: !313, line: 298, type: !321, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !335)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !90, !90, !68, !74, !68, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !325)
!324 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 12, baseType: !327)
!326 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !313, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !329)
!329 = !{!330, !331, !332, !333, !334}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !328, file: !313, baseType: !89, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !328, file: !313, baseType: !89, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !328, file: !313, baseType: !89, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !328, file: !313, baseType: !90, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !328, file: !313, baseType: !90, size: 32, offset: 224)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DILocalVariable(name: "status", arg: 1, scope: !320, file: !313, line: 298, type: !90)
!337 = !DILocalVariable(name: "errnum", arg: 2, scope: !320, file: !313, line: 298, type: !90)
!338 = !DILocalVariable(name: "file_name", arg: 3, scope: !320, file: !313, line: 298, type: !68)
!339 = !DILocalVariable(name: "line_number", arg: 4, scope: !320, file: !313, line: 298, type: !74)
!340 = !DILocalVariable(name: "message", arg: 5, scope: !320, file: !313, line: 298, type: !68)
!341 = !DILocalVariable(name: "args", arg: 6, scope: !320, file: !313, line: 298, type: !323)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "old_line_number", scope: !320, file: !313, line: 305, type: !74, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !313, line: 338, type: !106, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !135, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !313, line: 346, type: !113, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "error_message_count", scope: !312, file: !313, line: 69, type: !74, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !312, file: !313, line: 295, type: !90, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !14, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !313, line: 208, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 21)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !313, line: 214, type: !99, isLocal: true, isDefinition: true)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !368, line: 60, type: !113, isLocal: true, isDefinition: true)
!368 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "long_options", scope: !371, file: !368, line: 34, type: !380, isLocal: true, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, globals: !373, splitDebugInlining: false, nameTableKind: None)
!372 = !{!89}
!373 = !{!366, !374, !376, !378, !369}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !368, line: 112, type: !29, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !368, line: 36, type: !99, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !368, line: 37, type: !135, isLocal: true, isDefinition: true)
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
!392 = distinct !DICompileUnit(language: DW_LANG_C11, file: !393, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !394, globals: !395, splitDebugInlining: false, nameTableKind: None)
!393 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!394 = !{!89, !237}
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
!406 = distinct !DICompileUnit(language: DW_LANG_C11, file: !403, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !407, splitDebugInlining: false, nameTableKind: None)
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
!454 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !455, retainedTypes: !475, globals: !476, splitDebugInlining: false, nameTableKind: None)
!455 = !{!456, !470, !72}
!456 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !457, line: 42, baseType: !74, size: 32, elements: !458)
!457 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!475 = !{!89, !90, !91, !92}
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
!628 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !630, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!630 = !{!626}
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 376, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 47)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "exit_failure", scope: !636, file: !637, line: 24, type: !639, isLocal: false, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !638, splitDebugInlining: false, nameTableKind: None)
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
!652 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !653, globals: !654, splitDebugInlining: false, nameTableKind: None)
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
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !546, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !372, globals: !677, splitDebugInlining: false, nameTableKind: None)
!673 = !{!674}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !546, line: 40, baseType: !74, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!677 = !{!544, !547, !549, !551, !553, !555, !560, !565, !567, !572, !577, !582, !587, !589, !594, !599, !604, !609, !611, !613, !615, !617, !619, !621}
!678 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !680, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!680 = !{!681, !693}
!681 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !682, file: !679, line: 188, baseType: !74, size: 32, elements: !691)
!682 = distinct !DISubprogram(name: "x2nrealloc", scope: !679, file: !679, line: 176, type: !683, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !686)
!683 = !DISubroutineType(types: !684)
!684 = !{!89, !89, !685, !92}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "p", arg: 1, scope: !682, file: !679, line: 176, type: !89)
!688 = !DILocalVariable(name: "pn", arg: 2, scope: !682, file: !679, line: 176, type: !685)
!689 = !DILocalVariable(name: "s", arg: 3, scope: !682, file: !679, line: 176, type: !92)
!690 = !DILocalVariable(name: "n", scope: !682, file: !679, line: 178, type: !92)
!691 = !{!692}
!692 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!693 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !694, file: !679, line: 228, baseType: !74, size: 32, elements: !691)
!694 = distinct !DISubprogram(name: "xpalloc", scope: !679, file: !679, line: 223, type: !695, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !702)
!695 = !DISubroutineType(types: !696)
!696 = !{!89, !89, !697, !698, !700, !698}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !699, line: 130, baseType: !700)
!699 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !701, line: 18, baseType: !258)
!701 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711}
!703 = !DILocalVariable(name: "pa", arg: 1, scope: !694, file: !679, line: 223, type: !89)
!704 = !DILocalVariable(name: "pn", arg: 2, scope: !694, file: !679, line: 223, type: !697)
!705 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !694, file: !679, line: 223, type: !698)
!706 = !DILocalVariable(name: "n_max", arg: 4, scope: !694, file: !679, line: 223, type: !700)
!707 = !DILocalVariable(name: "s", arg: 5, scope: !694, file: !679, line: 223, type: !698)
!708 = !DILocalVariable(name: "n0", scope: !694, file: !679, line: 230, type: !698)
!709 = !DILocalVariable(name: "n", scope: !694, file: !679, line: 237, type: !698)
!710 = !DILocalVariable(name: "nbytes", scope: !694, file: !679, line: 248, type: !698)
!711 = !DILocalVariable(name: "adjusted_nbytes", scope: !694, file: !679, line: 252, type: !698)
!712 = !{!237, !89}
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !642, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !714, splitDebugInlining: false, nameTableKind: None)
!714 = !{!640, !643, !645}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !667, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !726, splitDebugInlining: false, nameTableKind: None)
!726 = !{!665, !668}
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !372, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!731 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!732 = !{i32 7, !"Dwarf Version", i32 5}
!733 = !{i32 2, !"Debug Info Version", i32 3}
!734 = !{i32 1, !"wchar_size", i32 4}
!735 = !{i32 8, !"PIC Level", i32 2}
!736 = !{i32 7, !"PIE Level", i32 2}
!737 = !{i32 7, !"uwtable", i32 2}
!738 = !{i32 7, !"frame-pointer", i32 1}
!739 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!778 = !{}
!779 = !DILocation(line: 857, column: 3, scope: !760, inlinedAt: !777)
!780 = !DILocation(line: 861, column: 29, scope: !760, inlinedAt: !777)
!781 = !DILocation(line: 862, column: 7, scope: !782, inlinedAt: !777)
!782 = distinct !DILexicalBlock(scope: !760, file: !65, line: 862, column: 7)
!783 = !DILocation(line: 862, column: 19, scope: !782, inlinedAt: !777)
!784 = !DILocation(line: 862, column: 22, scope: !782, inlinedAt: !777)
!785 = !DILocation(line: 862, column: 7, scope: !760, inlinedAt: !777)
!786 = !DILocation(line: 868, column: 7, scope: !787, inlinedAt: !777)
!787 = distinct !DILexicalBlock(scope: !782, file: !65, line: 863, column: 5)
!788 = !DILocation(line: 870, column: 5, scope: !787, inlinedAt: !777)
!789 = !DILocation(line: 875, column: 3, scope: !760, inlinedAt: !777)
!790 = !DILocation(line: 877, column: 3, scope: !760, inlinedAt: !777)
!791 = !DILocation(line: 49, column: 3, scope: !740)
!792 = !DISubprogram(name: "dcgettext", scope: !793, file: !793, line: 51, type: !794, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!793 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!794 = !DISubroutineType(types: !795)
!795 = !{!237, !68, !68, !90}
!796 = !DISubprogram(name: "__fprintf_chk", scope: !797, file: !797, line: 93, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!798 = !DISubroutineType(types: !799)
!799 = !{!90, !800, !90, !801, null}
!800 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!801 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!802 = !DISubprogram(name: "__printf_chk", scope: !797, file: !797, line: 95, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!919 = !DISubprogram(name: "setlocale", scope: !920, file: !920, line: 122, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!920 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!921 = !DISubroutineType(types: !922)
!922 = !{!237, !90, !68}
!923 = !DISubprogram(name: "strncmp", scope: !924, file: !924, line: 159, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!925 = !DISubroutineType(types: !926)
!926 = !{!90, !68, !68, !92}
!927 = !DISubprogram(name: "fputs_unlocked", scope: !324, file: !324, line: 691, type: !928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DISubroutineType(types: !929)
!929 = !{!90, !801, !800}
!930 = !DISubprogram(name: "exit", scope: !931, file: !931, line: 624, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!931 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!932 = !DISubprogram(name: "getenv", scope: !931, file: !931, line: 641, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DISubroutineType(types: !934)
!934 = !{!237, !68}
!935 = !DISubprogram(name: "strcmp", scope: !924, file: !924, line: 156, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!90, !68, !68}
!938 = !DISubprogram(name: "strspn", scope: !924, file: !924, line: 297, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!94, !68, !68}
!941 = !DISubprogram(name: "strchr", scope: !924, file: !924, line: 246, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!237, !68, !90}
!944 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!950 = !DISubprogram(name: "strcspn", scope: !924, file: !924, line: 293, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubprogram(name: "fwrite_unlocked", scope: !324, file: !324, line: 704, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!985 = !DISubprogram(name: "bindtextdomain", scope: !793, file: !793, line: 86, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!237, !68, !68}
!988 = !DISubprogram(name: "textdomain", scope: !793, file: !793, line: 82, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubprogram(name: "atexit", scope: !931, file: !931, line: 602, type: !990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubroutineType(types: !991)
!991 = !{!90, !363}
!992 = !DISubprogram(name: "gethostid", scope: !993, file: !993, line: 1002, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1012 = distinct !DISubprogram(name: "close_stdout", scope: !298, file: !298, line: 116, type: !364, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !297, retainedNodes: !1013)
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
!1045 = !DISubprogram(name: "__errno_location", scope: !1046, file: !1046, line: 37, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!388}
!1049 = !DISubprogram(name: "_exit", scope: !993, file: !993, line: 624, type: !741, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1050 = distinct !DISubprogram(name: "verror", scope: !313, file: !313, line: 251, type: !1051, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1053)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{null, !90, !90, !68, !323}
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DILocalVariable(name: "status", arg: 1, scope: !1050, file: !313, line: 251, type: !90)
!1055 = !DILocalVariable(name: "errnum", arg: 2, scope: !1050, file: !313, line: 251, type: !90)
!1056 = !DILocalVariable(name: "message", arg: 3, scope: !1050, file: !313, line: 251, type: !68)
!1057 = !DILocalVariable(name: "args", arg: 4, scope: !1050, file: !313, line: 251, type: !323)
!1058 = !DILocation(line: 0, scope: !1050)
!1059 = !DILocation(line: 261, column: 3, scope: !1050)
!1060 = !DILocation(line: 265, column: 7, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !313, line: 265, column: 7)
!1062 = !DILocation(line: 265, column: 7, scope: !1050)
!1063 = !DILocation(line: 266, column: 5, scope: !1061)
!1064 = !DILocation(line: 272, column: 7, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !313, line: 268, column: 5)
!1066 = !DILocation(line: 276, column: 3, scope: !1050)
!1067 = !{i64 0, i64 8, !751, i64 8, i64 8, !751, i64 16, i64 8, !751, i64 24, i64 4, !807, i64 28, i64 4, !807}
!1068 = !DILocation(line: 282, column: 1, scope: !1050)
!1069 = distinct !DISubprogram(name: "flush_stdout", scope: !313, file: !313, line: 163, type: !364, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1070)
!1070 = !{!1071}
!1071 = !DILocalVariable(name: "stdout_fd", scope: !1069, file: !313, line: 166, type: !90)
!1072 = !DILocation(line: 0, scope: !1069)
!1073 = !DILocalVariable(name: "fd", arg: 1, scope: !1074, file: !313, line: 145, type: !90)
!1074 = distinct !DISubprogram(name: "is_open", scope: !313, file: !313, line: 145, type: !1075, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!90, !90}
!1077 = !{!1073}
!1078 = !DILocation(line: 0, scope: !1074, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 182, column: 25, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !313, line: 182, column: 7)
!1081 = !DILocation(line: 157, column: 15, scope: !1074, inlinedAt: !1079)
!1082 = !DILocation(line: 157, column: 12, scope: !1074, inlinedAt: !1079)
!1083 = !DILocation(line: 182, column: 7, scope: !1069)
!1084 = !DILocation(line: 184, column: 5, scope: !1080)
!1085 = !DILocation(line: 185, column: 1, scope: !1069)
!1086 = distinct !DISubprogram(name: "error_tail", scope: !313, file: !313, line: 219, type: !1051, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1087)
!1087 = !{!1088, !1089, !1090, !1091}
!1088 = !DILocalVariable(name: "status", arg: 1, scope: !1086, file: !313, line: 219, type: !90)
!1089 = !DILocalVariable(name: "errnum", arg: 2, scope: !1086, file: !313, line: 219, type: !90)
!1090 = !DILocalVariable(name: "message", arg: 3, scope: !1086, file: !313, line: 219, type: !68)
!1091 = !DILocalVariable(name: "args", arg: 4, scope: !1086, file: !313, line: 219, type: !323)
!1092 = distinct !DIAssignID()
!1093 = !DILocation(line: 0, scope: !1086)
!1094 = !DILocation(line: 229, column: 13, scope: !1086)
!1095 = !DILocation(line: 135, column: 10, scope: !1096, inlinedAt: !1138)
!1096 = distinct !DISubprogram(name: "vfprintf", scope: !797, file: !797, line: 132, type: !1097, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1134)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!90, !1099, !801, !325}
!1099 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1102, file: !233, line: 51, baseType: !90, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1102, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1102, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1102, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1102, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1102, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1102, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1102, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1102, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1102, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1102, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1102, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1102, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1102, file: !233, line: 70, baseType: !1118, size: 64, offset: 832)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1102, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1102, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1102, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1102, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1102, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1102, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1102, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1102, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1102, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1102, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1102, file: !233, line: 93, baseType: !1118, size: 64, offset: 1344)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1102, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1102, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1102, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1102, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!1134 = !{!1135, !1136, !1137}
!1135 = !DILocalVariable(name: "__stream", arg: 1, scope: !1096, file: !797, line: 132, type: !1099)
!1136 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1096, file: !797, line: 133, type: !801)
!1137 = !DILocalVariable(name: "__ap", arg: 3, scope: !1096, file: !797, line: 133, type: !325)
!1138 = distinct !DILocation(line: 229, column: 3, scope: !1086)
!1139 = !{!1140, !1142}
!1140 = distinct !{!1140, !1141, !"vfprintf.inline: argument 0"}
!1141 = distinct !{!1141, !"vfprintf.inline"}
!1142 = distinct !{!1142, !1141, !"vfprintf.inline: argument 1"}
!1143 = !DILocation(line: 229, column: 3, scope: !1086)
!1144 = !DILocation(line: 0, scope: !1096, inlinedAt: !1138)
!1145 = !DILocation(line: 232, column: 3, scope: !1086)
!1146 = !DILocation(line: 233, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1086, file: !313, line: 233, column: 7)
!1148 = !DILocation(line: 233, column: 7, scope: !1086)
!1149 = !DILocalVariable(name: "errbuf", scope: !1150, file: !313, line: 193, type: !1154)
!1150 = distinct !DISubprogram(name: "print_errno_message", scope: !313, file: !313, line: 188, type: !741, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1151)
!1151 = !{!1152, !1153, !1149}
!1152 = !DILocalVariable(name: "errnum", arg: 1, scope: !1150, file: !313, line: 188, type: !90)
!1153 = !DILocalVariable(name: "s", scope: !1150, file: !313, line: 190, type: !68)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 1024)
!1157 = !DILocation(line: 0, scope: !1150, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 234, column: 5, scope: !1147)
!1159 = !DILocation(line: 193, column: 3, scope: !1150, inlinedAt: !1158)
!1160 = !DILocation(line: 195, column: 7, scope: !1150, inlinedAt: !1158)
!1161 = !DILocation(line: 207, column: 9, scope: !1162, inlinedAt: !1158)
!1162 = distinct !DILexicalBlock(scope: !1150, file: !313, line: 207, column: 7)
!1163 = !DILocation(line: 207, column: 7, scope: !1150, inlinedAt: !1158)
!1164 = !DILocation(line: 208, column: 9, scope: !1162, inlinedAt: !1158)
!1165 = !DILocation(line: 208, column: 5, scope: !1162, inlinedAt: !1158)
!1166 = !DILocation(line: 214, column: 3, scope: !1150, inlinedAt: !1158)
!1167 = !DILocation(line: 216, column: 1, scope: !1150, inlinedAt: !1158)
!1168 = !DILocation(line: 234, column: 5, scope: !1147)
!1169 = !DILocation(line: 238, column: 3, scope: !1086)
!1170 = !DILocalVariable(name: "__c", arg: 1, scope: !1171, file: !1172, line: 101, type: !90)
!1171 = distinct !DISubprogram(name: "putc_unlocked", scope: !1172, file: !1172, line: 101, type: !1173, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1175)
!1172 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!90, !90, !1100}
!1175 = !{!1170, !1176}
!1176 = !DILocalVariable(name: "__stream", arg: 2, scope: !1171, file: !1172, line: 101, type: !1100)
!1177 = !DILocation(line: 0, scope: !1171, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 238, column: 3, scope: !1086)
!1179 = !DILocation(line: 103, column: 10, scope: !1171, inlinedAt: !1178)
!1180 = !{!1181, !752, i64 40}
!1181 = !{!"_IO_FILE", !808, i64 0, !752, i64 8, !752, i64 16, !752, i64 24, !752, i64 32, !752, i64 40, !752, i64 48, !752, i64 56, !752, i64 64, !752, i64 72, !752, i64 80, !752, i64 88, !752, i64 96, !752, i64 104, !808, i64 112, !808, i64 116, !1182, i64 120, !849, i64 128, !753, i64 130, !753, i64 131, !752, i64 136, !1182, i64 144, !752, i64 152, !752, i64 160, !752, i64 168, !752, i64 176, !1182, i64 184, !808, i64 192, !753, i64 196}
!1182 = !{!"long", !753, i64 0}
!1183 = !{!1181, !752, i64 48}
!1184 = !{!"branch_weights", i32 2000, i32 1}
!1185 = !DILocation(line: 240, column: 3, scope: !1086)
!1186 = !DILocation(line: 241, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1086, file: !313, line: 241, column: 7)
!1188 = !DILocation(line: 241, column: 7, scope: !1086)
!1189 = !DILocation(line: 242, column: 5, scope: !1187)
!1190 = !DILocation(line: 243, column: 1, scope: !1086)
!1191 = !DISubprogram(name: "__vfprintf_chk", scope: !797, file: !797, line: 96, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!90, !1099, !90, !801, !325}
!1194 = !DISubprogram(name: "strerror_r", scope: !924, file: !924, line: 444, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!237, !90, !237, !92}
!1197 = !DISubprogram(name: "__overflow", scope: !324, file: !324, line: 886, type: !1198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!90, !1100, !90}
!1200 = !DISubprogram(name: "fflush_unlocked", scope: !324, file: !324, line: 239, type: !1201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!90, !1100}
!1203 = !DISubprogram(name: "fcntl", scope: !1204, file: !1204, line: 149, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!90, !90, !90, null}
!1207 = distinct !DISubprogram(name: "error", scope: !313, file: !313, line: 285, type: !1208, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1210)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{null, !90, !90, !68, null}
!1210 = !{!1211, !1212, !1213, !1214}
!1211 = !DILocalVariable(name: "status", arg: 1, scope: !1207, file: !313, line: 285, type: !90)
!1212 = !DILocalVariable(name: "errnum", arg: 2, scope: !1207, file: !313, line: 285, type: !90)
!1213 = !DILocalVariable(name: "message", arg: 3, scope: !1207, file: !313, line: 285, type: !68)
!1214 = !DILocalVariable(name: "ap", scope: !1207, file: !313, line: 287, type: !323)
!1215 = distinct !DIAssignID()
!1216 = !DILocation(line: 0, scope: !1207)
!1217 = !DILocation(line: 287, column: 3, scope: !1207)
!1218 = !DILocation(line: 288, column: 3, scope: !1207)
!1219 = !DILocation(line: 289, column: 3, scope: !1207)
!1220 = !DILocation(line: 290, column: 3, scope: !1207)
!1221 = !DILocation(line: 291, column: 1, scope: !1207)
!1222 = !DILocation(line: 0, scope: !320)
!1223 = !DILocation(line: 302, column: 7, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !320, file: !313, line: 302, column: 7)
!1225 = !DILocation(line: 302, column: 7, scope: !320)
!1226 = !DILocation(line: 307, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !313, line: 307, column: 11)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !313, line: 303, column: 5)
!1229 = !DILocation(line: 307, column: 27, scope: !1227)
!1230 = !DILocation(line: 308, column: 11, scope: !1227)
!1231 = !DILocation(line: 308, column: 28, scope: !1227)
!1232 = !DILocation(line: 308, column: 25, scope: !1227)
!1233 = !DILocation(line: 309, column: 15, scope: !1227)
!1234 = !DILocation(line: 309, column: 33, scope: !1227)
!1235 = !DILocation(line: 310, column: 19, scope: !1227)
!1236 = !DILocation(line: 311, column: 22, scope: !1227)
!1237 = !DILocation(line: 311, column: 56, scope: !1227)
!1238 = !DILocation(line: 307, column: 11, scope: !1228)
!1239 = !DILocation(line: 316, column: 21, scope: !1228)
!1240 = !DILocation(line: 317, column: 23, scope: !1228)
!1241 = !DILocation(line: 318, column: 5, scope: !1228)
!1242 = !DILocation(line: 327, column: 3, scope: !320)
!1243 = !DILocation(line: 331, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !320, file: !313, line: 331, column: 7)
!1245 = !DILocation(line: 331, column: 7, scope: !320)
!1246 = !DILocation(line: 332, column: 5, scope: !1244)
!1247 = !DILocation(line: 338, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !313, line: 334, column: 5)
!1249 = !DILocation(line: 346, column: 3, scope: !320)
!1250 = !DILocation(line: 350, column: 3, scope: !320)
!1251 = !DILocation(line: 356, column: 1, scope: !320)
!1252 = distinct !DISubprogram(name: "error_at_line", scope: !313, file: !313, line: 359, type: !1253, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !312, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !90, !90, !68, !74, !68, null}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1261}
!1256 = !DILocalVariable(name: "status", arg: 1, scope: !1252, file: !313, line: 359, type: !90)
!1257 = !DILocalVariable(name: "errnum", arg: 2, scope: !1252, file: !313, line: 359, type: !90)
!1258 = !DILocalVariable(name: "file_name", arg: 3, scope: !1252, file: !313, line: 359, type: !68)
!1259 = !DILocalVariable(name: "line_number", arg: 4, scope: !1252, file: !313, line: 360, type: !74)
!1260 = !DILocalVariable(name: "message", arg: 5, scope: !1252, file: !313, line: 360, type: !68)
!1261 = !DILocalVariable(name: "ap", scope: !1252, file: !313, line: 362, type: !323)
!1262 = distinct !DIAssignID()
!1263 = !DILocation(line: 0, scope: !1252)
!1264 = !DILocation(line: 362, column: 3, scope: !1252)
!1265 = !DILocation(line: 363, column: 3, scope: !1252)
!1266 = !DILocation(line: 364, column: 3, scope: !1252)
!1267 = !DILocation(line: 366, column: 3, scope: !1252)
!1268 = !DILocation(line: 367, column: 1, scope: !1252)
!1269 = distinct !DISubprogram(name: "getprogname", scope: !671, file: !671, line: 54, type: !1270, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!68}
!1272 = !DILocation(line: 58, column: 10, scope: !1269)
!1273 = !DILocation(line: 58, column: 3, scope: !1269)
!1274 = distinct !DISubprogram(name: "parse_long_options", scope: !368, file: !368, line: 45, type: !1275, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1278)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !90, !960, !68, !68, !68, !1277, null}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1289}
!1279 = !DILocalVariable(name: "argc", arg: 1, scope: !1274, file: !368, line: 45, type: !90)
!1280 = !DILocalVariable(name: "argv", arg: 2, scope: !1274, file: !368, line: 46, type: !960)
!1281 = !DILocalVariable(name: "command_name", arg: 3, scope: !1274, file: !368, line: 47, type: !68)
!1282 = !DILocalVariable(name: "package", arg: 4, scope: !1274, file: !368, line: 48, type: !68)
!1283 = !DILocalVariable(name: "version", arg: 5, scope: !1274, file: !368, line: 49, type: !68)
!1284 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1274, file: !368, line: 50, type: !1277)
!1285 = !DILocalVariable(name: "saved_opterr", scope: !1274, file: !368, line: 53, type: !90)
!1286 = !DILocalVariable(name: "c", scope: !1287, file: !368, line: 60, type: !90)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !368, line: 59, column: 5)
!1288 = distinct !DILexicalBlock(scope: !1274, file: !368, line: 58, column: 7)
!1289 = !DILocalVariable(name: "authors", scope: !1290, file: !368, line: 71, type: !1294)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !368, line: 70, column: 15)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !368, line: 64, column: 13)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !368, line: 62, column: 9)
!1293 = distinct !DILexicalBlock(scope: !1287, file: !368, line: 61, column: 11)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 12, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !368, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1297, file: !368, line: 71, baseType: !89, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1297, file: !368, line: 71, baseType: !89, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1297, file: !368, line: 71, baseType: !89, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1297, file: !368, line: 71, baseType: !90, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1297, file: !368, line: 71, baseType: !90, size: 32, offset: 224)
!1304 = distinct !DIAssignID()
!1305 = !DILocation(line: 0, scope: !1290)
!1306 = !DILocation(line: 0, scope: !1274)
!1307 = !DILocation(line: 53, column: 22, scope: !1274)
!1308 = !DILocation(line: 56, column: 10, scope: !1274)
!1309 = !DILocation(line: 58, column: 12, scope: !1288)
!1310 = !DILocation(line: 58, column: 7, scope: !1274)
!1311 = !DILocation(line: 60, column: 15, scope: !1287)
!1312 = !DILocation(line: 0, scope: !1287)
!1313 = !DILocation(line: 61, column: 11, scope: !1287)
!1314 = !DILocation(line: 66, column: 15, scope: !1291)
!1315 = !DILocation(line: 67, column: 15, scope: !1291)
!1316 = !DILocation(line: 71, column: 17, scope: !1290)
!1317 = !DILocation(line: 72, column: 17, scope: !1290)
!1318 = !DILocation(line: 73, column: 33, scope: !1290)
!1319 = !DILocation(line: 73, column: 17, scope: !1290)
!1320 = !DILocation(line: 74, column: 17, scope: !1290)
!1321 = !DILocation(line: 85, column: 10, scope: !1274)
!1322 = !DILocation(line: 89, column: 10, scope: !1274)
!1323 = !DILocation(line: 90, column: 1, scope: !1274)
!1324 = !DISubprogram(name: "getopt_long", scope: !383, file: !383, line: 66, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!90, !90, !1327, !68, !1329, !388}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1330 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !368, file: !368, line: 98, type: !1331, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !90, !960, !68, !68, !68, !216, !1277, null}
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1334 = !DILocalVariable(name: "argc", arg: 1, scope: !1330, file: !368, line: 98, type: !90)
!1335 = !DILocalVariable(name: "argv", arg: 2, scope: !1330, file: !368, line: 99, type: !960)
!1336 = !DILocalVariable(name: "command_name", arg: 3, scope: !1330, file: !368, line: 100, type: !68)
!1337 = !DILocalVariable(name: "package", arg: 4, scope: !1330, file: !368, line: 101, type: !68)
!1338 = !DILocalVariable(name: "version", arg: 5, scope: !1330, file: !368, line: 102, type: !68)
!1339 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1330, file: !368, line: 103, type: !216)
!1340 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1330, file: !368, line: 104, type: !1277)
!1341 = !DILocalVariable(name: "saved_opterr", scope: !1330, file: !368, line: 107, type: !90)
!1342 = !DILocalVariable(name: "optstring", scope: !1330, file: !368, line: 112, type: !68)
!1343 = !DILocalVariable(name: "c", scope: !1330, file: !368, line: 114, type: !90)
!1344 = !DILocalVariable(name: "authors", scope: !1345, file: !368, line: 125, type: !1294)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !368, line: 124, column: 11)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !368, line: 118, column: 9)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !368, line: 116, column: 5)
!1348 = distinct !DILexicalBlock(scope: !1330, file: !368, line: 115, column: 7)
!1349 = distinct !DIAssignID()
!1350 = !DILocation(line: 0, scope: !1345)
!1351 = !DILocation(line: 0, scope: !1330)
!1352 = !DILocation(line: 107, column: 22, scope: !1330)
!1353 = !DILocation(line: 110, column: 10, scope: !1330)
!1354 = !DILocation(line: 112, column: 27, scope: !1330)
!1355 = !DILocation(line: 114, column: 11, scope: !1330)
!1356 = !DILocation(line: 115, column: 7, scope: !1330)
!1357 = !DILocation(line: 125, column: 13, scope: !1345)
!1358 = !DILocation(line: 126, column: 13, scope: !1345)
!1359 = !DILocation(line: 127, column: 29, scope: !1345)
!1360 = !DILocation(line: 127, column: 13, scope: !1345)
!1361 = !DILocation(line: 128, column: 13, scope: !1345)
!1362 = !DILocation(line: 132, column: 26, scope: !1346)
!1363 = !DILocation(line: 133, column: 11, scope: !1346)
!1364 = !DILocation(line: 0, scope: !1346)
!1365 = !DILocation(line: 138, column: 10, scope: !1330)
!1366 = !DILocation(line: 139, column: 1, scope: !1330)
!1367 = distinct !DISubprogram(name: "set_program_name", scope: !393, file: !393, line: 37, type: !761, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DILocalVariable(name: "argv0", arg: 1, scope: !1367, file: !393, line: 37, type: !68)
!1370 = !DILocalVariable(name: "slash", scope: !1367, file: !393, line: 44, type: !68)
!1371 = !DILocalVariable(name: "base", scope: !1367, file: !393, line: 45, type: !68)
!1372 = !DILocation(line: 0, scope: !1367)
!1373 = !DILocation(line: 44, column: 23, scope: !1367)
!1374 = !DILocation(line: 45, column: 22, scope: !1367)
!1375 = !DILocation(line: 46, column: 17, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !393, line: 46, column: 7)
!1377 = !DILocation(line: 46, column: 9, scope: !1376)
!1378 = !DILocation(line: 46, column: 25, scope: !1376)
!1379 = !DILocation(line: 46, column: 40, scope: !1376)
!1380 = !DILocalVariable(name: "__s1", arg: 1, scope: !1381, file: !820, line: 974, type: !955)
!1381 = distinct !DISubprogram(name: "memeq", scope: !820, file: !820, line: 974, type: !1382, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!216, !955, !955, !92}
!1384 = !{!1380, !1385, !1386}
!1385 = !DILocalVariable(name: "__s2", arg: 2, scope: !1381, file: !820, line: 974, type: !955)
!1386 = !DILocalVariable(name: "__n", arg: 3, scope: !1381, file: !820, line: 974, type: !92)
!1387 = !DILocation(line: 0, scope: !1381, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 46, column: 28, scope: !1376)
!1389 = !DILocation(line: 976, column: 11, scope: !1381, inlinedAt: !1388)
!1390 = !DILocation(line: 976, column: 10, scope: !1381, inlinedAt: !1388)
!1391 = !DILocation(line: 46, column: 7, scope: !1367)
!1392 = !DILocation(line: 49, column: 11, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !393, line: 49, column: 11)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !393, line: 47, column: 5)
!1395 = !DILocation(line: 49, column: 36, scope: !1393)
!1396 = !DILocation(line: 49, column: 11, scope: !1394)
!1397 = !DILocation(line: 65, column: 16, scope: !1367)
!1398 = !DILocation(line: 71, column: 27, scope: !1367)
!1399 = !DILocation(line: 74, column: 33, scope: !1367)
!1400 = !DILocation(line: 76, column: 1, scope: !1367)
!1401 = !DISubprogram(name: "strrchr", scope: !924, file: !924, line: 273, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1402 = distinct !DIAssignID()
!1403 = !DILocation(line: 0, scope: !402)
!1404 = distinct !DIAssignID()
!1405 = !DILocation(line: 40, column: 29, scope: !402)
!1406 = !DILocation(line: 41, column: 19, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !402, file: !403, line: 41, column: 7)
!1408 = !DILocation(line: 41, column: 7, scope: !402)
!1409 = !DILocation(line: 47, column: 3, scope: !402)
!1410 = !DILocation(line: 48, column: 3, scope: !402)
!1411 = !DILocalVariable(name: "ps", arg: 1, scope: !1412, file: !1413, line: 1135, type: !1416)
!1412 = distinct !DISubprogram(name: "mbszero", scope: !1413, file: !1413, line: 1135, type: !1414, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1417)
!1413 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1414 = !DISubroutineType(types: !1415)
!1415 = !{null, !1416}
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1417 = !{!1411}
!1418 = !DILocation(line: 0, scope: !1412, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 48, column: 18, scope: !402)
!1420 = !DILocalVariable(name: "__dest", arg: 1, scope: !1421, file: !1422, line: 57, type: !89)
!1421 = distinct !DISubprogram(name: "memset", scope: !1422, file: !1422, line: 57, type: !1423, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !406, retainedNodes: !1425)
!1422 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!89, !89, !90, !92}
!1425 = !{!1420, !1426, !1427}
!1426 = !DILocalVariable(name: "__ch", arg: 2, scope: !1421, file: !1422, line: 57, type: !90)
!1427 = !DILocalVariable(name: "__len", arg: 3, scope: !1421, file: !1422, line: 57, type: !92)
!1428 = !DILocation(line: 0, scope: !1421, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 1137, column: 3, scope: !1412, inlinedAt: !1419)
!1430 = !DILocation(line: 59, column: 10, scope: !1421, inlinedAt: !1429)
!1431 = !DILocation(line: 49, column: 7, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !402, file: !403, line: 49, column: 7)
!1433 = !DILocation(line: 49, column: 39, scope: !1432)
!1434 = !DILocation(line: 49, column: 44, scope: !1432)
!1435 = !DILocation(line: 54, column: 1, scope: !402)
!1436 = !DISubprogram(name: "mbrtoc32", scope: !414, file: !414, line: 57, type: !1437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!92, !1439, !801, !92, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1416)
!1442 = distinct !DISubprogram(name: "clone_quoting_options", scope: !433, file: !433, line: 113, type: !1443, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1446)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1445, !1445}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1446 = !{!1447, !1448, !1449}
!1447 = !DILocalVariable(name: "o", arg: 1, scope: !1442, file: !433, line: 113, type: !1445)
!1448 = !DILocalVariable(name: "saved_errno", scope: !1442, file: !433, line: 115, type: !90)
!1449 = !DILocalVariable(name: "p", scope: !1442, file: !433, line: 116, type: !1445)
!1450 = !DILocation(line: 0, scope: !1442)
!1451 = !DILocation(line: 115, column: 21, scope: !1442)
!1452 = !DILocation(line: 116, column: 40, scope: !1442)
!1453 = !DILocation(line: 116, column: 31, scope: !1442)
!1454 = !DILocation(line: 118, column: 9, scope: !1442)
!1455 = !DILocation(line: 119, column: 3, scope: !1442)
!1456 = distinct !DISubprogram(name: "get_quoting_style", scope: !433, file: !433, line: 124, type: !1457, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1461)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!456, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!1461 = !{!1462}
!1462 = !DILocalVariable(name: "o", arg: 1, scope: !1456, file: !433, line: 124, type: !1459)
!1463 = !DILocation(line: 0, scope: !1456)
!1464 = !DILocation(line: 126, column: 11, scope: !1456)
!1465 = !DILocation(line: 126, column: 46, scope: !1456)
!1466 = !{!1467, !808, i64 0}
!1467 = !{!"quoting_options", !808, i64 0, !808, i64 4, !753, i64 8, !752, i64 40, !752, i64 48}
!1468 = !DILocation(line: 126, column: 3, scope: !1456)
!1469 = distinct !DISubprogram(name: "set_quoting_style", scope: !433, file: !433, line: 132, type: !1470, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1445, !456}
!1472 = !{!1473, !1474}
!1473 = !DILocalVariable(name: "o", arg: 1, scope: !1469, file: !433, line: 132, type: !1445)
!1474 = !DILocalVariable(name: "s", arg: 2, scope: !1469, file: !433, line: 132, type: !456)
!1475 = !DILocation(line: 0, scope: !1469)
!1476 = !DILocation(line: 134, column: 4, scope: !1469)
!1477 = !DILocation(line: 134, column: 45, scope: !1469)
!1478 = !DILocation(line: 135, column: 1, scope: !1469)
!1479 = distinct !DISubprogram(name: "set_char_quoting", scope: !433, file: !433, line: 143, type: !1480, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!90, !1445, !4, !90}
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1489, !1490}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1479, file: !433, line: 143, type: !1445)
!1484 = !DILocalVariable(name: "c", arg: 2, scope: !1479, file: !433, line: 143, type: !4)
!1485 = !DILocalVariable(name: "i", arg: 3, scope: !1479, file: !433, line: 143, type: !90)
!1486 = !DILocalVariable(name: "uc", scope: !1479, file: !433, line: 145, type: !95)
!1487 = !DILocalVariable(name: "p", scope: !1479, file: !433, line: 146, type: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1489 = !DILocalVariable(name: "shift", scope: !1479, file: !433, line: 148, type: !90)
!1490 = !DILocalVariable(name: "r", scope: !1479, file: !433, line: 149, type: !74)
!1491 = !DILocation(line: 0, scope: !1479)
!1492 = !DILocation(line: 147, column: 6, scope: !1479)
!1493 = !DILocation(line: 147, column: 41, scope: !1479)
!1494 = !DILocation(line: 147, column: 62, scope: !1479)
!1495 = !DILocation(line: 147, column: 57, scope: !1479)
!1496 = !DILocation(line: 148, column: 15, scope: !1479)
!1497 = !DILocation(line: 149, column: 21, scope: !1479)
!1498 = !DILocation(line: 149, column: 24, scope: !1479)
!1499 = !DILocation(line: 149, column: 34, scope: !1479)
!1500 = !DILocation(line: 150, column: 19, scope: !1479)
!1501 = !DILocation(line: 150, column: 24, scope: !1479)
!1502 = !DILocation(line: 150, column: 6, scope: !1479)
!1503 = !DILocation(line: 151, column: 3, scope: !1479)
!1504 = distinct !DISubprogram(name: "set_quoting_flags", scope: !433, file: !433, line: 159, type: !1505, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!90, !1445, !90}
!1507 = !{!1508, !1509, !1510}
!1508 = !DILocalVariable(name: "o", arg: 1, scope: !1504, file: !433, line: 159, type: !1445)
!1509 = !DILocalVariable(name: "i", arg: 2, scope: !1504, file: !433, line: 159, type: !90)
!1510 = !DILocalVariable(name: "r", scope: !1504, file: !433, line: 163, type: !90)
!1511 = !DILocation(line: 0, scope: !1504)
!1512 = !DILocation(line: 161, column: 8, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1504, file: !433, line: 161, column: 7)
!1514 = !DILocation(line: 161, column: 7, scope: !1504)
!1515 = !DILocation(line: 163, column: 14, scope: !1504)
!1516 = !{!1467, !808, i64 4}
!1517 = !DILocation(line: 164, column: 12, scope: !1504)
!1518 = !DILocation(line: 165, column: 3, scope: !1504)
!1519 = distinct !DISubprogram(name: "set_custom_quoting", scope: !433, file: !433, line: 169, type: !1520, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !1445, !68, !68}
!1522 = !{!1523, !1524, !1525}
!1523 = !DILocalVariable(name: "o", arg: 1, scope: !1519, file: !433, line: 169, type: !1445)
!1524 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1519, file: !433, line: 170, type: !68)
!1525 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1519, file: !433, line: 170, type: !68)
!1526 = !DILocation(line: 0, scope: !1519)
!1527 = !DILocation(line: 172, column: 8, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1519, file: !433, line: 172, column: 7)
!1529 = !DILocation(line: 172, column: 7, scope: !1519)
!1530 = !DILocation(line: 174, column: 12, scope: !1519)
!1531 = !DILocation(line: 175, column: 8, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1519, file: !433, line: 175, column: 7)
!1533 = !DILocation(line: 175, column: 19, scope: !1532)
!1534 = !DILocation(line: 176, column: 5, scope: !1532)
!1535 = !DILocation(line: 177, column: 6, scope: !1519)
!1536 = !DILocation(line: 177, column: 17, scope: !1519)
!1537 = !{!1467, !752, i64 40}
!1538 = !DILocation(line: 178, column: 6, scope: !1519)
!1539 = !DILocation(line: 178, column: 18, scope: !1519)
!1540 = !{!1467, !752, i64 48}
!1541 = !DILocation(line: 179, column: 1, scope: !1519)
!1542 = !DISubprogram(name: "abort", scope: !931, file: !931, line: 598, type: !364, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1543 = distinct !DISubprogram(name: "quotearg_buffer", scope: !433, file: !433, line: 774, type: !1544, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!92, !237, !92, !68, !92, !1459}
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1547 = !DILocalVariable(name: "buffer", arg: 1, scope: !1543, file: !433, line: 774, type: !237)
!1548 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1543, file: !433, line: 774, type: !92)
!1549 = !DILocalVariable(name: "arg", arg: 3, scope: !1543, file: !433, line: 775, type: !68)
!1550 = !DILocalVariable(name: "argsize", arg: 4, scope: !1543, file: !433, line: 775, type: !92)
!1551 = !DILocalVariable(name: "o", arg: 5, scope: !1543, file: !433, line: 776, type: !1459)
!1552 = !DILocalVariable(name: "p", scope: !1543, file: !433, line: 778, type: !1459)
!1553 = !DILocalVariable(name: "saved_errno", scope: !1543, file: !433, line: 779, type: !90)
!1554 = !DILocalVariable(name: "r", scope: !1543, file: !433, line: 780, type: !92)
!1555 = !DILocation(line: 0, scope: !1543)
!1556 = !DILocation(line: 778, column: 37, scope: !1543)
!1557 = !DILocation(line: 779, column: 21, scope: !1543)
!1558 = !DILocation(line: 781, column: 43, scope: !1543)
!1559 = !DILocation(line: 781, column: 53, scope: !1543)
!1560 = !DILocation(line: 781, column: 63, scope: !1543)
!1561 = !DILocation(line: 782, column: 43, scope: !1543)
!1562 = !DILocation(line: 782, column: 58, scope: !1543)
!1563 = !DILocation(line: 780, column: 14, scope: !1543)
!1564 = !DILocation(line: 783, column: 9, scope: !1543)
!1565 = !DILocation(line: 784, column: 3, scope: !1543)
!1566 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !433, file: !433, line: 251, type: !1567, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1571)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!92, !237, !92, !68, !92, !456, !90, !1569, !68, !68}
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1597, !1599, !1602, !1603, !1604, !1605, !1608, !1609, !1611, !1612, !1615, !1619, !1620, !1628, !1631, !1632, !1633}
!1572 = !DILocalVariable(name: "buffer", arg: 1, scope: !1566, file: !433, line: 251, type: !237)
!1573 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1566, file: !433, line: 251, type: !92)
!1574 = !DILocalVariable(name: "arg", arg: 3, scope: !1566, file: !433, line: 252, type: !68)
!1575 = !DILocalVariable(name: "argsize", arg: 4, scope: !1566, file: !433, line: 252, type: !92)
!1576 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1566, file: !433, line: 253, type: !456)
!1577 = !DILocalVariable(name: "flags", arg: 6, scope: !1566, file: !433, line: 253, type: !90)
!1578 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1566, file: !433, line: 254, type: !1569)
!1579 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1566, file: !433, line: 255, type: !68)
!1580 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1566, file: !433, line: 256, type: !68)
!1581 = !DILocalVariable(name: "unibyte_locale", scope: !1566, file: !433, line: 258, type: !216)
!1582 = !DILocalVariable(name: "len", scope: !1566, file: !433, line: 260, type: !92)
!1583 = !DILocalVariable(name: "orig_buffersize", scope: !1566, file: !433, line: 261, type: !92)
!1584 = !DILocalVariable(name: "quote_string", scope: !1566, file: !433, line: 262, type: !68)
!1585 = !DILocalVariable(name: "quote_string_len", scope: !1566, file: !433, line: 263, type: !92)
!1586 = !DILocalVariable(name: "backslash_escapes", scope: !1566, file: !433, line: 264, type: !216)
!1587 = !DILocalVariable(name: "elide_outer_quotes", scope: !1566, file: !433, line: 265, type: !216)
!1588 = !DILocalVariable(name: "encountered_single_quote", scope: !1566, file: !433, line: 266, type: !216)
!1589 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1566, file: !433, line: 267, type: !216)
!1590 = !DILabel(scope: !1566, name: "process_input", file: !433, line: 308)
!1591 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1566, file: !433, line: 309, type: !216)
!1592 = !DILocalVariable(name: "lq", scope: !1593, file: !433, line: 361, type: !68)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !433, line: 361, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !433, line: 360, column: 13)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !433, line: 333, column: 7)
!1596 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 312, column: 5)
!1597 = !DILocalVariable(name: "i", scope: !1598, file: !433, line: 395, type: !92)
!1598 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 395, column: 3)
!1599 = !DILocalVariable(name: "is_right_quote", scope: !1600, file: !433, line: 397, type: !216)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !433, line: 396, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1598, file: !433, line: 395, column: 3)
!1602 = !DILocalVariable(name: "escaping", scope: !1600, file: !433, line: 398, type: !216)
!1603 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1600, file: !433, line: 399, type: !216)
!1604 = !DILocalVariable(name: "c", scope: !1600, file: !433, line: 417, type: !95)
!1605 = !DILabel(scope: !1606, name: "c_and_shell_escape", file: !433, line: 502)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 478, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 419, column: 9)
!1608 = !DILabel(scope: !1606, name: "c_escape", file: !433, line: 507)
!1609 = !DILocalVariable(name: "m", scope: !1610, file: !433, line: 598, type: !92)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 596, column: 11)
!1611 = !DILocalVariable(name: "printable", scope: !1610, file: !433, line: 600, type: !216)
!1612 = !DILocalVariable(name: "mbs", scope: !1613, file: !433, line: 609, type: !517)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !433, line: 608, column: 15)
!1614 = distinct !DILexicalBlock(scope: !1610, file: !433, line: 602, column: 17)
!1615 = !DILocalVariable(name: "w", scope: !1616, file: !433, line: 618, type: !413)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !433, line: 617, column: 19)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !433, line: 616, column: 17)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !433, line: 616, column: 17)
!1619 = !DILocalVariable(name: "bytes", scope: !1616, file: !433, line: 619, type: !92)
!1620 = !DILocalVariable(name: "j", scope: !1621, file: !433, line: 648, type: !92)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !433, line: 648, column: 29)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !433, line: 647, column: 27)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !433, line: 645, column: 29)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !433, line: 636, column: 23)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !433, line: 628, column: 30)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !433, line: 623, column: 30)
!1627 = distinct !DILexicalBlock(scope: !1616, file: !433, line: 621, column: 25)
!1628 = !DILocalVariable(name: "ilim", scope: !1629, file: !433, line: 674, type: !92)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !433, line: 671, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1610, file: !433, line: 670, column: 17)
!1631 = !DILabel(scope: !1600, name: "store_escape", file: !433, line: 709)
!1632 = !DILabel(scope: !1600, name: "store_c", file: !433, line: 712)
!1633 = !DILabel(scope: !1566, name: "force_outer_quoting_style", file: !433, line: 753)
!1634 = distinct !DIAssignID()
!1635 = distinct !DIAssignID()
!1636 = distinct !DIAssignID()
!1637 = distinct !DIAssignID()
!1638 = distinct !DIAssignID()
!1639 = !DILocation(line: 0, scope: !1613)
!1640 = distinct !DIAssignID()
!1641 = !DILocation(line: 0, scope: !1616)
!1642 = !DILocation(line: 0, scope: !1566)
!1643 = !DILocation(line: 258, column: 25, scope: !1566)
!1644 = !DILocation(line: 258, column: 36, scope: !1566)
!1645 = !DILocation(line: 267, column: 3, scope: !1566)
!1646 = !DILocation(line: 261, column: 10, scope: !1566)
!1647 = !DILocation(line: 262, column: 15, scope: !1566)
!1648 = !DILocation(line: 263, column: 10, scope: !1566)
!1649 = !DILocation(line: 308, column: 2, scope: !1566)
!1650 = !DILocation(line: 311, column: 3, scope: !1566)
!1651 = !DILocation(line: 318, column: 11, scope: !1596)
!1652 = !DILocation(line: 319, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !433, line: 319, column: 9)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !433, line: 319, column: 9)
!1655 = distinct !DILexicalBlock(scope: !1596, file: !433, line: 318, column: 11)
!1656 = !DILocation(line: 319, column: 9, scope: !1654)
!1657 = !DILocation(line: 0, scope: !508, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 357, column: 26, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !433, line: 335, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1595, file: !433, line: 334, column: 13)
!1661 = !DILocation(line: 199, column: 29, scope: !508, inlinedAt: !1658)
!1662 = !DILocation(line: 201, column: 19, scope: !1663, inlinedAt: !1658)
!1663 = distinct !DILexicalBlock(scope: !508, file: !433, line: 201, column: 7)
!1664 = !DILocation(line: 201, column: 7, scope: !508, inlinedAt: !1658)
!1665 = !DILocation(line: 229, column: 3, scope: !508, inlinedAt: !1658)
!1666 = !DILocation(line: 230, column: 3, scope: !508, inlinedAt: !1658)
!1667 = !DILocalVariable(name: "ps", arg: 1, scope: !1668, file: !1413, line: 1135, type: !1671)
!1668 = distinct !DISubprogram(name: "mbszero", scope: !1413, file: !1413, line: 1135, type: !1669, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1672)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{null, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1672 = !{!1667}
!1673 = !DILocation(line: 0, scope: !1668, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 230, column: 18, scope: !508, inlinedAt: !1658)
!1675 = !DILocalVariable(name: "__dest", arg: 1, scope: !1676, file: !1422, line: 57, type: !89)
!1676 = distinct !DISubprogram(name: "memset", scope: !1422, file: !1422, line: 57, type: !1423, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1677)
!1677 = !{!1675, !1678, !1679}
!1678 = !DILocalVariable(name: "__ch", arg: 2, scope: !1676, file: !1422, line: 57, type: !90)
!1679 = !DILocalVariable(name: "__len", arg: 3, scope: !1676, file: !1422, line: 57, type: !92)
!1680 = !DILocation(line: 0, scope: !1676, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 1137, column: 3, scope: !1668, inlinedAt: !1674)
!1682 = !DILocation(line: 59, column: 10, scope: !1676, inlinedAt: !1681)
!1683 = !DILocation(line: 231, column: 7, scope: !1684, inlinedAt: !1658)
!1684 = distinct !DILexicalBlock(scope: !508, file: !433, line: 231, column: 7)
!1685 = !DILocation(line: 231, column: 40, scope: !1684, inlinedAt: !1658)
!1686 = !DILocation(line: 231, column: 45, scope: !1684, inlinedAt: !1658)
!1687 = !DILocation(line: 235, column: 1, scope: !508, inlinedAt: !1658)
!1688 = !DILocation(line: 0, scope: !508, inlinedAt: !1689)
!1689 = distinct !DILocation(line: 358, column: 27, scope: !1659)
!1690 = !DILocation(line: 199, column: 29, scope: !508, inlinedAt: !1689)
!1691 = !DILocation(line: 201, column: 19, scope: !1663, inlinedAt: !1689)
!1692 = !DILocation(line: 201, column: 7, scope: !508, inlinedAt: !1689)
!1693 = !DILocation(line: 229, column: 3, scope: !508, inlinedAt: !1689)
!1694 = !DILocation(line: 230, column: 3, scope: !508, inlinedAt: !1689)
!1695 = !DILocation(line: 0, scope: !1668, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 230, column: 18, scope: !508, inlinedAt: !1689)
!1697 = !DILocation(line: 0, scope: !1676, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 1137, column: 3, scope: !1668, inlinedAt: !1696)
!1699 = !DILocation(line: 59, column: 10, scope: !1676, inlinedAt: !1698)
!1700 = !DILocation(line: 231, column: 7, scope: !1684, inlinedAt: !1689)
!1701 = !DILocation(line: 231, column: 40, scope: !1684, inlinedAt: !1689)
!1702 = !DILocation(line: 231, column: 45, scope: !1684, inlinedAt: !1689)
!1703 = !DILocation(line: 235, column: 1, scope: !508, inlinedAt: !1689)
!1704 = !DILocation(line: 360, column: 13, scope: !1595)
!1705 = !DILocation(line: 0, scope: !1593)
!1706 = !DILocation(line: 361, column: 45, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1593, file: !433, line: 361, column: 11)
!1708 = !DILocation(line: 361, column: 11, scope: !1593)
!1709 = !DILocation(line: 362, column: 13, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !433, line: 362, column: 13)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !433, line: 362, column: 13)
!1712 = !DILocation(line: 362, column: 13, scope: !1711)
!1713 = !DILocation(line: 361, column: 52, scope: !1707)
!1714 = distinct !{!1714, !1708, !1715, !854}
!1715 = !DILocation(line: 362, column: 13, scope: !1593)
!1716 = !DILocation(line: 365, column: 28, scope: !1595)
!1717 = !DILocation(line: 260, column: 10, scope: !1566)
!1718 = !DILocation(line: 367, column: 7, scope: !1596)
!1719 = !DILocation(line: 373, column: 7, scope: !1596)
!1720 = !DILocation(line: 381, column: 11, scope: !1596)
!1721 = !DILocation(line: 376, column: 11, scope: !1596)
!1722 = !DILocation(line: 382, column: 9, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !433, line: 382, column: 9)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !433, line: 382, column: 9)
!1725 = distinct !DILexicalBlock(scope: !1596, file: !433, line: 381, column: 11)
!1726 = !DILocation(line: 382, column: 9, scope: !1724)
!1727 = !DILocation(line: 389, column: 7, scope: !1596)
!1728 = !DILocation(line: 392, column: 7, scope: !1596)
!1729 = !DILocation(line: 0, scope: !1598)
!1730 = !DILocation(line: 395, column: 8, scope: !1598)
!1731 = !DILocation(line: 395, scope: !1598)
!1732 = !DILocation(line: 395, column: 34, scope: !1601)
!1733 = !DILocation(line: 395, column: 26, scope: !1601)
!1734 = !DILocation(line: 395, column: 48, scope: !1601)
!1735 = !DILocation(line: 395, column: 55, scope: !1601)
!1736 = !DILocation(line: 395, column: 3, scope: !1598)
!1737 = !DILocation(line: 395, column: 67, scope: !1601)
!1738 = !DILocation(line: 0, scope: !1600)
!1739 = !DILocation(line: 402, column: 11, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 401, column: 11)
!1741 = !DILocation(line: 404, column: 17, scope: !1740)
!1742 = !DILocation(line: 405, column: 39, scope: !1740)
!1743 = !DILocation(line: 409, column: 32, scope: !1740)
!1744 = !DILocation(line: 405, column: 19, scope: !1740)
!1745 = !DILocation(line: 405, column: 15, scope: !1740)
!1746 = !DILocation(line: 410, column: 11, scope: !1740)
!1747 = !DILocation(line: 410, column: 25, scope: !1740)
!1748 = !DILocalVariable(name: "__s1", arg: 1, scope: !1749, file: !820, line: 974, type: !955)
!1749 = distinct !DISubprogram(name: "memeq", scope: !820, file: !820, line: 974, type: !1382, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !1750)
!1750 = !{!1748, !1751, !1752}
!1751 = !DILocalVariable(name: "__s2", arg: 2, scope: !1749, file: !820, line: 974, type: !955)
!1752 = !DILocalVariable(name: "__n", arg: 3, scope: !1749, file: !820, line: 974, type: !92)
!1753 = !DILocation(line: 0, scope: !1749, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 410, column: 14, scope: !1740)
!1755 = !DILocation(line: 976, column: 11, scope: !1749, inlinedAt: !1754)
!1756 = !DILocation(line: 976, column: 10, scope: !1749, inlinedAt: !1754)
!1757 = !DILocation(line: 401, column: 11, scope: !1600)
!1758 = !DILocation(line: 417, column: 25, scope: !1600)
!1759 = !DILocation(line: 418, column: 7, scope: !1600)
!1760 = !DILocation(line: 421, column: 15, scope: !1607)
!1761 = !DILocation(line: 423, column: 15, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !433, line: 423, column: 15)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !433, line: 422, column: 13)
!1764 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 421, column: 15)
!1765 = !DILocation(line: 423, column: 15, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !433, line: 423, column: 15)
!1767 = !DILocation(line: 423, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !433, line: 423, column: 15)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !433, line: 423, column: 15)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !433, line: 423, column: 15)
!1771 = !DILocation(line: 423, column: 15, scope: !1769)
!1772 = !DILocation(line: 423, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !433, line: 423, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !433, line: 423, column: 15)
!1775 = !DILocation(line: 423, column: 15, scope: !1774)
!1776 = !DILocation(line: 423, column: 15, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !433, line: 423, column: 15)
!1778 = distinct !DILexicalBlock(scope: !1770, file: !433, line: 423, column: 15)
!1779 = !DILocation(line: 423, column: 15, scope: !1778)
!1780 = !DILocation(line: 423, column: 15, scope: !1770)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !433, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1762, file: !433, line: 423, column: 15)
!1784 = !DILocation(line: 423, column: 15, scope: !1783)
!1785 = !DILocation(line: 431, column: 19, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1763, file: !433, line: 430, column: 19)
!1787 = !DILocation(line: 431, column: 24, scope: !1786)
!1788 = !DILocation(line: 431, column: 28, scope: !1786)
!1789 = !DILocation(line: 431, column: 38, scope: !1786)
!1790 = !DILocation(line: 431, column: 48, scope: !1786)
!1791 = !DILocation(line: 431, column: 59, scope: !1786)
!1792 = !DILocation(line: 433, column: 19, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !433, line: 433, column: 19)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !433, line: 433, column: 19)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !433, line: 432, column: 17)
!1796 = !DILocation(line: 433, column: 19, scope: !1794)
!1797 = !DILocation(line: 434, column: 19, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !433, line: 434, column: 19)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !433, line: 434, column: 19)
!1800 = !DILocation(line: 434, column: 19, scope: !1799)
!1801 = !DILocation(line: 435, column: 17, scope: !1795)
!1802 = !DILocation(line: 442, column: 20, scope: !1764)
!1803 = !DILocation(line: 447, column: 11, scope: !1607)
!1804 = !DILocation(line: 450, column: 19, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 448, column: 13)
!1806 = !DILocation(line: 456, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1805, file: !433, line: 455, column: 19)
!1808 = !DILocation(line: 456, column: 24, scope: !1807)
!1809 = !DILocation(line: 456, column: 28, scope: !1807)
!1810 = !DILocation(line: 456, column: 38, scope: !1807)
!1811 = !DILocation(line: 456, column: 41, scope: !1807)
!1812 = !DILocation(line: 456, column: 52, scope: !1807)
!1813 = !DILocation(line: 455, column: 19, scope: !1805)
!1814 = !DILocation(line: 457, column: 25, scope: !1807)
!1815 = !DILocation(line: 457, column: 17, scope: !1807)
!1816 = !DILocation(line: 464, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1807, file: !433, line: 458, column: 19)
!1818 = !DILocation(line: 468, column: 21, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !433, line: 468, column: 21)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 468, column: 21)
!1821 = !DILocation(line: 468, column: 21, scope: !1820)
!1822 = !DILocation(line: 469, column: 21, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !433, line: 469, column: 21)
!1824 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 469, column: 21)
!1825 = !DILocation(line: 469, column: 21, scope: !1824)
!1826 = !DILocation(line: 470, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !433, line: 470, column: 21)
!1828 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 470, column: 21)
!1829 = !DILocation(line: 470, column: 21, scope: !1828)
!1830 = !DILocation(line: 471, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !433, line: 471, column: 21)
!1832 = distinct !DILexicalBlock(scope: !1817, file: !433, line: 471, column: 21)
!1833 = !DILocation(line: 471, column: 21, scope: !1832)
!1834 = !DILocation(line: 472, column: 21, scope: !1817)
!1835 = !DILocation(line: 482, column: 33, scope: !1606)
!1836 = !DILocation(line: 483, column: 33, scope: !1606)
!1837 = !DILocation(line: 485, column: 33, scope: !1606)
!1838 = !DILocation(line: 486, column: 33, scope: !1606)
!1839 = !DILocation(line: 487, column: 33, scope: !1606)
!1840 = !DILocation(line: 490, column: 17, scope: !1606)
!1841 = !DILocation(line: 492, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !433, line: 491, column: 15)
!1843 = distinct !DILexicalBlock(scope: !1606, file: !433, line: 490, column: 17)
!1844 = !DILocation(line: 499, column: 35, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1606, file: !433, line: 499, column: 17)
!1846 = !DILocation(line: 0, scope: !1606)
!1847 = !DILocation(line: 502, column: 11, scope: !1606)
!1848 = !DILocation(line: 504, column: 17, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1606, file: !433, line: 503, column: 17)
!1850 = !DILocation(line: 507, column: 11, scope: !1606)
!1851 = !DILocation(line: 508, column: 17, scope: !1606)
!1852 = !DILocation(line: 517, column: 15, scope: !1607)
!1853 = !DILocation(line: 517, column: 40, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 517, column: 15)
!1855 = !DILocation(line: 517, column: 47, scope: !1854)
!1856 = !DILocation(line: 517, column: 18, scope: !1854)
!1857 = !DILocation(line: 521, column: 17, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 521, column: 15)
!1859 = !DILocation(line: 521, column: 15, scope: !1607)
!1860 = !DILocation(line: 525, column: 11, scope: !1607)
!1861 = !DILocation(line: 537, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 536, column: 15)
!1863 = !DILocation(line: 536, column: 15, scope: !1607)
!1864 = !DILocation(line: 544, column: 15, scope: !1607)
!1865 = !DILocation(line: 546, column: 19, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !433, line: 545, column: 13)
!1867 = distinct !DILexicalBlock(scope: !1607, file: !433, line: 544, column: 15)
!1868 = !DILocation(line: 549, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !433, line: 549, column: 19)
!1870 = !DILocation(line: 549, column: 30, scope: !1869)
!1871 = !DILocation(line: 558, column: 15, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !433, line: 558, column: 15)
!1873 = distinct !DILexicalBlock(scope: !1866, file: !433, line: 558, column: 15)
!1874 = !DILocation(line: 558, column: 15, scope: !1873)
!1875 = !DILocation(line: 559, column: 15, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !433, line: 559, column: 15)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !433, line: 559, column: 15)
!1878 = !DILocation(line: 559, column: 15, scope: !1877)
!1879 = !DILocation(line: 560, column: 15, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !433, line: 560, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1866, file: !433, line: 560, column: 15)
!1882 = !DILocation(line: 560, column: 15, scope: !1881)
!1883 = !DILocation(line: 562, column: 13, scope: !1866)
!1884 = !DILocation(line: 602, column: 17, scope: !1610)
!1885 = !DILocation(line: 0, scope: !1610)
!1886 = !DILocation(line: 605, column: 29, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1614, file: !433, line: 603, column: 15)
!1888 = !DILocation(line: 605, column: 41, scope: !1887)
!1889 = !DILocation(line: 606, column: 15, scope: !1887)
!1890 = !DILocation(line: 609, column: 17, scope: !1613)
!1891 = !DILocation(line: 0, scope: !1668, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 609, column: 32, scope: !1613)
!1893 = !DILocation(line: 0, scope: !1676, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 1137, column: 3, scope: !1668, inlinedAt: !1892)
!1895 = !DILocation(line: 59, column: 10, scope: !1676, inlinedAt: !1894)
!1896 = !DILocation(line: 613, column: 29, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1613, file: !433, line: 613, column: 21)
!1898 = !DILocation(line: 613, column: 21, scope: !1613)
!1899 = !DILocation(line: 614, column: 29, scope: !1897)
!1900 = !DILocation(line: 614, column: 19, scope: !1897)
!1901 = !DILocation(line: 618, column: 21, scope: !1616)
!1902 = !DILocation(line: 620, column: 54, scope: !1616)
!1903 = !DILocation(line: 619, column: 36, scope: !1616)
!1904 = !DILocation(line: 621, column: 25, scope: !1616)
!1905 = !DILocation(line: 631, column: 38, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1625, file: !433, line: 629, column: 23)
!1907 = !DILocation(line: 631, column: 48, scope: !1906)
!1908 = !DILocation(line: 631, column: 25, scope: !1906)
!1909 = !DILocation(line: 626, column: 25, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1626, file: !433, line: 624, column: 23)
!1911 = !DILocation(line: 631, column: 51, scope: !1906)
!1912 = !DILocation(line: 632, column: 28, scope: !1906)
!1913 = !DILocation(line: 631, column: 34, scope: !1906)
!1914 = distinct !{!1914, !1908, !1912, !854}
!1915 = !DILocation(line: 0, scope: !1621)
!1916 = !DILocation(line: 646, column: 29, scope: !1623)
!1917 = !DILocation(line: 648, column: 29, scope: !1621)
!1918 = !DILocation(line: 649, column: 39, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1621, file: !433, line: 648, column: 29)
!1920 = !DILocation(line: 649, column: 31, scope: !1919)
!1921 = !DILocation(line: 648, column: 60, scope: !1919)
!1922 = !DILocation(line: 648, column: 50, scope: !1919)
!1923 = distinct !{!1923, !1917, !1924, !854}
!1924 = !DILocation(line: 654, column: 33, scope: !1621)
!1925 = !DILocation(line: 657, column: 43, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1624, file: !433, line: 657, column: 29)
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
!1939 = !DILocation(line: 664, column: 23, scope: !1616)
!1940 = !DILocation(line: 665, column: 19, scope: !1617)
!1941 = !DILocation(line: 666, column: 15, scope: !1614)
!1942 = !DILocation(line: 753, column: 2, scope: !1566)
!1943 = !DILocation(line: 756, column: 51, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 756, column: 7)
!1945 = !DILocation(line: 0, scope: !1614)
!1946 = !DILocation(line: 670, column: 19, scope: !1630)
!1947 = !DILocation(line: 670, column: 23, scope: !1630)
!1948 = !DILocation(line: 674, column: 33, scope: !1629)
!1949 = !DILocation(line: 0, scope: !1629)
!1950 = !DILocation(line: 676, column: 17, scope: !1629)
!1951 = !DILocation(line: 678, column: 43, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 678, column: 25)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !433, line: 677, column: 19)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !433, line: 676, column: 17)
!1955 = distinct !DILexicalBlock(scope: !1629, file: !433, line: 676, column: 17)
!1956 = !DILocation(line: 680, column: 25, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !433, line: 680, column: 25)
!1958 = distinct !DILexicalBlock(scope: !1952, file: !433, line: 679, column: 23)
!1959 = !DILocation(line: 680, column: 25, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !433, line: 680, column: 25)
!1961 = !DILocation(line: 680, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !433, line: 680, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !433, line: 680, column: 25)
!1964 = distinct !DILexicalBlock(scope: !1960, file: !433, line: 680, column: 25)
!1965 = !DILocation(line: 680, column: 25, scope: !1963)
!1966 = !DILocation(line: 680, column: 25, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !433, line: 680, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1964, file: !433, line: 680, column: 25)
!1969 = !DILocation(line: 680, column: 25, scope: !1968)
!1970 = !DILocation(line: 680, column: 25, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !433, line: 680, column: 25)
!1972 = distinct !DILexicalBlock(scope: !1964, file: !433, line: 680, column: 25)
!1973 = !DILocation(line: 680, column: 25, scope: !1972)
!1974 = !DILocation(line: 680, column: 25, scope: !1964)
!1975 = !DILocation(line: 680, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !433, line: 680, column: 25)
!1977 = distinct !DILexicalBlock(scope: !1957, file: !433, line: 680, column: 25)
!1978 = !DILocation(line: 680, column: 25, scope: !1977)
!1979 = !DILocation(line: 681, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !433, line: 681, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1958, file: !433, line: 681, column: 25)
!1982 = !DILocation(line: 681, column: 25, scope: !1981)
!1983 = !DILocation(line: 682, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !433, line: 682, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1958, file: !433, line: 682, column: 25)
!1986 = !DILocation(line: 682, column: 25, scope: !1985)
!1987 = !DILocation(line: 683, column: 38, scope: !1958)
!1988 = !DILocation(line: 683, column: 33, scope: !1958)
!1989 = !DILocation(line: 684, column: 23, scope: !1958)
!1990 = !DILocation(line: 685, column: 30, scope: !1952)
!1991 = !DILocation(line: 687, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !433, line: 687, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !433, line: 687, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !433, line: 686, column: 23)
!1995 = distinct !DILexicalBlock(scope: !1952, file: !433, line: 685, column: 30)
!1996 = !DILocation(line: 687, column: 25, scope: !1993)
!1997 = !DILocation(line: 689, column: 23, scope: !1994)
!1998 = !DILocation(line: 690, column: 35, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 690, column: 25)
!2000 = !DILocation(line: 690, column: 30, scope: !1999)
!2001 = !DILocation(line: 690, column: 25, scope: !1953)
!2002 = !DILocation(line: 692, column: 21, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !433, line: 692, column: 21)
!2004 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 692, column: 21)
!2005 = !DILocation(line: 692, column: 21, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !433, line: 692, column: 21)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !433, line: 692, column: 21)
!2008 = distinct !DILexicalBlock(scope: !2003, file: !433, line: 692, column: 21)
!2009 = !DILocation(line: 692, column: 21, scope: !2007)
!2010 = !DILocation(line: 692, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !433, line: 692, column: 21)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !433, line: 692, column: 21)
!2013 = !DILocation(line: 692, column: 21, scope: !2012)
!2014 = !DILocation(line: 692, column: 21, scope: !2008)
!2015 = !DILocation(line: 0, scope: !1953)
!2016 = !DILocation(line: 693, column: 21, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !433, line: 693, column: 21)
!2018 = distinct !DILexicalBlock(scope: !1953, file: !433, line: 693, column: 21)
!2019 = !DILocation(line: 693, column: 21, scope: !2018)
!2020 = !DILocation(line: 694, column: 25, scope: !1953)
!2021 = !DILocation(line: 676, column: 17, scope: !1954)
!2022 = distinct !{!2022, !2023, !2024}
!2023 = !DILocation(line: 676, column: 17, scope: !1955)
!2024 = !DILocation(line: 695, column: 19, scope: !1955)
!2025 = !DILocation(line: 409, column: 30, scope: !1740)
!2026 = !DILocation(line: 702, column: 34, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 702, column: 11)
!2028 = !DILocation(line: 704, column: 14, scope: !2027)
!2029 = !DILocation(line: 705, column: 14, scope: !2027)
!2030 = !DILocation(line: 705, column: 35, scope: !2027)
!2031 = !DILocation(line: 705, column: 17, scope: !2027)
!2032 = !DILocation(line: 705, column: 47, scope: !2027)
!2033 = !DILocation(line: 705, column: 65, scope: !2027)
!2034 = !DILocation(line: 706, column: 11, scope: !2027)
!2035 = !DILocation(line: 702, column: 11, scope: !1600)
!2036 = !DILocation(line: 395, column: 15, scope: !1598)
!2037 = !DILocation(line: 709, column: 5, scope: !1600)
!2038 = !DILocation(line: 710, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 710, column: 7)
!2040 = !DILocation(line: 710, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2039, file: !433, line: 710, column: 7)
!2042 = !DILocation(line: 710, column: 7, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !433, line: 710, column: 7)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !433, line: 710, column: 7)
!2045 = distinct !DILexicalBlock(scope: !2041, file: !433, line: 710, column: 7)
!2046 = !DILocation(line: 710, column: 7, scope: !2044)
!2047 = !DILocation(line: 710, column: 7, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !433, line: 710, column: 7)
!2049 = distinct !DILexicalBlock(scope: !2045, file: !433, line: 710, column: 7)
!2050 = !DILocation(line: 710, column: 7, scope: !2049)
!2051 = !DILocation(line: 710, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !433, line: 710, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2045, file: !433, line: 710, column: 7)
!2054 = !DILocation(line: 710, column: 7, scope: !2053)
!2055 = !DILocation(line: 710, column: 7, scope: !2045)
!2056 = !DILocation(line: 710, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !433, line: 710, column: 7)
!2058 = distinct !DILexicalBlock(scope: !2039, file: !433, line: 710, column: 7)
!2059 = !DILocation(line: 710, column: 7, scope: !2058)
!2060 = !DILocation(line: 712, column: 5, scope: !1600)
!2061 = !DILocation(line: 713, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !433, line: 713, column: 7)
!2063 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 713, column: 7)
!2064 = !DILocation(line: 417, column: 21, scope: !1600)
!2065 = !DILocation(line: 713, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !433, line: 713, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !433, line: 713, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !433, line: 713, column: 7)
!2069 = !DILocation(line: 713, column: 7, scope: !2067)
!2070 = !DILocation(line: 713, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !433, line: 713, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !433, line: 713, column: 7)
!2073 = !DILocation(line: 713, column: 7, scope: !2072)
!2074 = !DILocation(line: 713, column: 7, scope: !2068)
!2075 = !DILocation(line: 714, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !433, line: 714, column: 7)
!2077 = distinct !DILexicalBlock(scope: !1600, file: !433, line: 714, column: 7)
!2078 = !DILocation(line: 714, column: 7, scope: !2077)
!2079 = !DILocation(line: 716, column: 11, scope: !1600)
!2080 = !DILocation(line: 718, column: 5, scope: !1601)
!2081 = !DILocation(line: 395, column: 82, scope: !1601)
!2082 = !DILocation(line: 395, column: 3, scope: !1601)
!2083 = distinct !{!2083, !1736, !2084, !854}
!2084 = !DILocation(line: 718, column: 5, scope: !1598)
!2085 = !DILocation(line: 720, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 720, column: 7)
!2087 = !DILocation(line: 720, column: 16, scope: !2086)
!2088 = !DILocation(line: 728, column: 51, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 728, column: 7)
!2090 = !DILocation(line: 731, column: 11, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2089, file: !433, line: 730, column: 5)
!2092 = !DILocation(line: 732, column: 16, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !433, line: 731, column: 11)
!2094 = !DILocation(line: 732, column: 9, scope: !2093)
!2095 = !DILocation(line: 736, column: 18, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2093, file: !433, line: 736, column: 16)
!2097 = !DILocation(line: 736, column: 29, scope: !2096)
!2098 = !DILocation(line: 745, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 745, column: 7)
!2100 = !DILocation(line: 745, column: 20, scope: !2099)
!2101 = !DILocation(line: 746, column: 12, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !433, line: 746, column: 5)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !433, line: 746, column: 5)
!2104 = !DILocation(line: 746, column: 5, scope: !2103)
!2105 = !DILocation(line: 747, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !433, line: 747, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !433, line: 747, column: 7)
!2108 = !DILocation(line: 747, column: 7, scope: !2107)
!2109 = !DILocation(line: 746, column: 39, scope: !2102)
!2110 = distinct !{!2110, !2104, !2111, !854}
!2111 = !DILocation(line: 747, column: 7, scope: !2103)
!2112 = !DILocation(line: 749, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1566, file: !433, line: 749, column: 7)
!2114 = !DILocation(line: 749, column: 7, scope: !1566)
!2115 = !DILocation(line: 750, column: 5, scope: !2113)
!2116 = !DILocation(line: 750, column: 17, scope: !2113)
!2117 = !DILocation(line: 756, column: 21, scope: !1944)
!2118 = !DILocation(line: 760, column: 42, scope: !1566)
!2119 = !DILocation(line: 758, column: 10, scope: !1566)
!2120 = !DILocation(line: 758, column: 3, scope: !1566)
!2121 = !DILocation(line: 762, column: 1, scope: !1566)
!2122 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !931, file: !931, line: 98, type: !2123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!92}
!2125 = !DISubprogram(name: "strlen", scope: !924, file: !924, line: 407, type: !2126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!94, !68}
!2128 = !DISubprogram(name: "iswprint", scope: !2129, file: !2129, line: 120, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2129 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2130 = distinct !DISubprogram(name: "quotearg_alloc", scope: !433, file: !433, line: 788, type: !2131, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!237, !68, !92, !1459}
!2133 = !{!2134, !2135, !2136}
!2134 = !DILocalVariable(name: "arg", arg: 1, scope: !2130, file: !433, line: 788, type: !68)
!2135 = !DILocalVariable(name: "argsize", arg: 2, scope: !2130, file: !433, line: 788, type: !92)
!2136 = !DILocalVariable(name: "o", arg: 3, scope: !2130, file: !433, line: 789, type: !1459)
!2137 = !DILocation(line: 0, scope: !2130)
!2138 = !DILocalVariable(name: "arg", arg: 1, scope: !2139, file: !433, line: 801, type: !68)
!2139 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !433, file: !433, line: 801, type: !2140, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!237, !68, !92, !685, !1459}
!2142 = !{!2138, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2143 = !DILocalVariable(name: "argsize", arg: 2, scope: !2139, file: !433, line: 801, type: !92)
!2144 = !DILocalVariable(name: "size", arg: 3, scope: !2139, file: !433, line: 801, type: !685)
!2145 = !DILocalVariable(name: "o", arg: 4, scope: !2139, file: !433, line: 802, type: !1459)
!2146 = !DILocalVariable(name: "p", scope: !2139, file: !433, line: 804, type: !1459)
!2147 = !DILocalVariable(name: "saved_errno", scope: !2139, file: !433, line: 805, type: !90)
!2148 = !DILocalVariable(name: "flags", scope: !2139, file: !433, line: 807, type: !90)
!2149 = !DILocalVariable(name: "bufsize", scope: !2139, file: !433, line: 808, type: !92)
!2150 = !DILocalVariable(name: "buf", scope: !2139, file: !433, line: 812, type: !237)
!2151 = !DILocation(line: 0, scope: !2139, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 791, column: 10, scope: !2130)
!2153 = !DILocation(line: 804, column: 37, scope: !2139, inlinedAt: !2152)
!2154 = !DILocation(line: 805, column: 21, scope: !2139, inlinedAt: !2152)
!2155 = !DILocation(line: 807, column: 18, scope: !2139, inlinedAt: !2152)
!2156 = !DILocation(line: 807, column: 24, scope: !2139, inlinedAt: !2152)
!2157 = !DILocation(line: 808, column: 72, scope: !2139, inlinedAt: !2152)
!2158 = !DILocation(line: 809, column: 56, scope: !2139, inlinedAt: !2152)
!2159 = !DILocation(line: 810, column: 49, scope: !2139, inlinedAt: !2152)
!2160 = !DILocation(line: 811, column: 49, scope: !2139, inlinedAt: !2152)
!2161 = !DILocation(line: 808, column: 20, scope: !2139, inlinedAt: !2152)
!2162 = !DILocation(line: 811, column: 62, scope: !2139, inlinedAt: !2152)
!2163 = !DILocation(line: 812, column: 15, scope: !2139, inlinedAt: !2152)
!2164 = !DILocation(line: 813, column: 60, scope: !2139, inlinedAt: !2152)
!2165 = !DILocation(line: 815, column: 32, scope: !2139, inlinedAt: !2152)
!2166 = !DILocation(line: 815, column: 47, scope: !2139, inlinedAt: !2152)
!2167 = !DILocation(line: 813, column: 3, scope: !2139, inlinedAt: !2152)
!2168 = !DILocation(line: 816, column: 9, scope: !2139, inlinedAt: !2152)
!2169 = !DILocation(line: 791, column: 3, scope: !2130)
!2170 = !DILocation(line: 0, scope: !2139)
!2171 = !DILocation(line: 804, column: 37, scope: !2139)
!2172 = !DILocation(line: 805, column: 21, scope: !2139)
!2173 = !DILocation(line: 807, column: 18, scope: !2139)
!2174 = !DILocation(line: 807, column: 27, scope: !2139)
!2175 = !DILocation(line: 807, column: 24, scope: !2139)
!2176 = !DILocation(line: 808, column: 72, scope: !2139)
!2177 = !DILocation(line: 809, column: 56, scope: !2139)
!2178 = !DILocation(line: 810, column: 49, scope: !2139)
!2179 = !DILocation(line: 811, column: 49, scope: !2139)
!2180 = !DILocation(line: 808, column: 20, scope: !2139)
!2181 = !DILocation(line: 811, column: 62, scope: !2139)
!2182 = !DILocation(line: 812, column: 15, scope: !2139)
!2183 = !DILocation(line: 813, column: 60, scope: !2139)
!2184 = !DILocation(line: 815, column: 32, scope: !2139)
!2185 = !DILocation(line: 815, column: 47, scope: !2139)
!2186 = !DILocation(line: 813, column: 3, scope: !2139)
!2187 = !DILocation(line: 816, column: 9, scope: !2139)
!2188 = !DILocation(line: 817, column: 7, scope: !2139)
!2189 = !DILocation(line: 818, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2139, file: !433, line: 817, column: 7)
!2191 = !{!1182, !1182, i64 0}
!2192 = !DILocation(line: 818, column: 5, scope: !2190)
!2193 = !DILocation(line: 819, column: 3, scope: !2139)
!2194 = distinct !DISubprogram(name: "quotearg_free", scope: !433, file: !433, line: 837, type: !364, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2195)
!2195 = !{!2196, !2197}
!2196 = !DILocalVariable(name: "sv", scope: !2194, file: !433, line: 839, type: !531)
!2197 = !DILocalVariable(name: "i", scope: !2198, file: !433, line: 840, type: !90)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !433, line: 840, column: 3)
!2199 = !DILocation(line: 839, column: 24, scope: !2194)
!2200 = !DILocation(line: 0, scope: !2194)
!2201 = !DILocation(line: 0, scope: !2198)
!2202 = !DILocation(line: 840, column: 21, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2198, file: !433, line: 840, column: 3)
!2204 = !DILocation(line: 840, column: 3, scope: !2198)
!2205 = !DILocation(line: 842, column: 13, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2194, file: !433, line: 842, column: 7)
!2207 = !{!2208, !752, i64 8}
!2208 = !{!"slotvec", !1182, i64 0, !752, i64 8}
!2209 = !DILocation(line: 842, column: 17, scope: !2206)
!2210 = !DILocation(line: 842, column: 7, scope: !2194)
!2211 = !DILocation(line: 841, column: 17, scope: !2203)
!2212 = !DILocation(line: 841, column: 5, scope: !2203)
!2213 = !DILocation(line: 840, column: 32, scope: !2203)
!2214 = distinct !{!2214, !2204, !2215, !854}
!2215 = !DILocation(line: 841, column: 20, scope: !2198)
!2216 = !DILocation(line: 844, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2206, file: !433, line: 843, column: 5)
!2218 = !DILocation(line: 845, column: 21, scope: !2217)
!2219 = !{!2208, !1182, i64 0}
!2220 = !DILocation(line: 846, column: 20, scope: !2217)
!2221 = !DILocation(line: 847, column: 5, scope: !2217)
!2222 = !DILocation(line: 848, column: 10, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2194, file: !433, line: 848, column: 7)
!2224 = !DILocation(line: 848, column: 7, scope: !2194)
!2225 = !DILocation(line: 850, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2223, file: !433, line: 849, column: 5)
!2227 = !DILocation(line: 851, column: 15, scope: !2226)
!2228 = !DILocation(line: 852, column: 5, scope: !2226)
!2229 = !DILocation(line: 853, column: 10, scope: !2194)
!2230 = !DILocation(line: 854, column: 1, scope: !2194)
!2231 = !DISubprogram(name: "free", scope: !1413, file: !1413, line: 786, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !89}
!2234 = distinct !DISubprogram(name: "quotearg_n", scope: !433, file: !433, line: 919, type: !921, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "n", arg: 1, scope: !2234, file: !433, line: 919, type: !90)
!2237 = !DILocalVariable(name: "arg", arg: 2, scope: !2234, file: !433, line: 919, type: !68)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !DILocation(line: 921, column: 10, scope: !2234)
!2240 = !DILocation(line: 921, column: 3, scope: !2234)
!2241 = distinct !DISubprogram(name: "quotearg_n_options", scope: !433, file: !433, line: 866, type: !2242, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!237, !90, !68, !92, !1459}
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2255, !2256, !2258, !2259, !2260}
!2245 = !DILocalVariable(name: "n", arg: 1, scope: !2241, file: !433, line: 866, type: !90)
!2246 = !DILocalVariable(name: "arg", arg: 2, scope: !2241, file: !433, line: 866, type: !68)
!2247 = !DILocalVariable(name: "argsize", arg: 3, scope: !2241, file: !433, line: 866, type: !92)
!2248 = !DILocalVariable(name: "options", arg: 4, scope: !2241, file: !433, line: 867, type: !1459)
!2249 = !DILocalVariable(name: "saved_errno", scope: !2241, file: !433, line: 869, type: !90)
!2250 = !DILocalVariable(name: "sv", scope: !2241, file: !433, line: 871, type: !531)
!2251 = !DILocalVariable(name: "nslots_max", scope: !2241, file: !433, line: 873, type: !90)
!2252 = !DILocalVariable(name: "preallocated", scope: !2253, file: !433, line: 879, type: !216)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !433, line: 878, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2241, file: !433, line: 877, column: 7)
!2255 = !DILocalVariable(name: "new_nslots", scope: !2253, file: !433, line: 880, type: !698)
!2256 = !DILocalVariable(name: "size", scope: !2257, file: !433, line: 891, type: !92)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !433, line: 890, column: 3)
!2258 = !DILocalVariable(name: "val", scope: !2257, file: !433, line: 892, type: !237)
!2259 = !DILocalVariable(name: "flags", scope: !2257, file: !433, line: 894, type: !90)
!2260 = !DILocalVariable(name: "qsize", scope: !2257, file: !433, line: 895, type: !92)
!2261 = distinct !DIAssignID()
!2262 = !DILocation(line: 0, scope: !2253)
!2263 = !DILocation(line: 0, scope: !2241)
!2264 = !DILocation(line: 869, column: 21, scope: !2241)
!2265 = !DILocation(line: 871, column: 24, scope: !2241)
!2266 = !DILocation(line: 874, column: 17, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2241, file: !433, line: 874, column: 7)
!2268 = !DILocation(line: 875, column: 5, scope: !2267)
!2269 = !DILocation(line: 877, column: 7, scope: !2254)
!2270 = !DILocation(line: 877, column: 14, scope: !2254)
!2271 = !DILocation(line: 877, column: 7, scope: !2241)
!2272 = !DILocation(line: 879, column: 31, scope: !2253)
!2273 = !DILocation(line: 880, column: 7, scope: !2253)
!2274 = !DILocation(line: 880, column: 26, scope: !2253)
!2275 = !DILocation(line: 880, column: 13, scope: !2253)
!2276 = distinct !DIAssignID()
!2277 = !DILocation(line: 882, column: 31, scope: !2253)
!2278 = !DILocation(line: 883, column: 33, scope: !2253)
!2279 = !DILocation(line: 883, column: 42, scope: !2253)
!2280 = !DILocation(line: 883, column: 31, scope: !2253)
!2281 = !DILocation(line: 882, column: 22, scope: !2253)
!2282 = !DILocation(line: 882, column: 15, scope: !2253)
!2283 = !DILocation(line: 884, column: 11, scope: !2253)
!2284 = !DILocation(line: 885, column: 15, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2253, file: !433, line: 884, column: 11)
!2286 = !{i64 0, i64 8, !2191, i64 8, i64 8, !751}
!2287 = !DILocation(line: 885, column: 9, scope: !2285)
!2288 = !DILocation(line: 886, column: 20, scope: !2253)
!2289 = !DILocation(line: 886, column: 18, scope: !2253)
!2290 = !DILocation(line: 886, column: 32, scope: !2253)
!2291 = !DILocation(line: 886, column: 43, scope: !2253)
!2292 = !DILocation(line: 886, column: 53, scope: !2253)
!2293 = !DILocation(line: 0, scope: !1676, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 886, column: 7, scope: !2253)
!2295 = !DILocation(line: 59, column: 10, scope: !1676, inlinedAt: !2294)
!2296 = !DILocation(line: 887, column: 16, scope: !2253)
!2297 = !DILocation(line: 887, column: 14, scope: !2253)
!2298 = !DILocation(line: 888, column: 5, scope: !2254)
!2299 = !DILocation(line: 888, column: 5, scope: !2253)
!2300 = !DILocation(line: 891, column: 19, scope: !2257)
!2301 = !DILocation(line: 891, column: 25, scope: !2257)
!2302 = !DILocation(line: 0, scope: !2257)
!2303 = !DILocation(line: 892, column: 23, scope: !2257)
!2304 = !DILocation(line: 894, column: 26, scope: !2257)
!2305 = !DILocation(line: 894, column: 32, scope: !2257)
!2306 = !DILocation(line: 896, column: 55, scope: !2257)
!2307 = !DILocation(line: 897, column: 55, scope: !2257)
!2308 = !DILocation(line: 898, column: 55, scope: !2257)
!2309 = !DILocation(line: 899, column: 55, scope: !2257)
!2310 = !DILocation(line: 895, column: 20, scope: !2257)
!2311 = !DILocation(line: 901, column: 14, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2257, file: !433, line: 901, column: 9)
!2313 = !DILocation(line: 901, column: 9, scope: !2257)
!2314 = !DILocation(line: 903, column: 35, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2312, file: !433, line: 902, column: 7)
!2316 = !DILocation(line: 903, column: 20, scope: !2315)
!2317 = !DILocation(line: 904, column: 17, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !433, line: 904, column: 13)
!2319 = !DILocation(line: 904, column: 13, scope: !2315)
!2320 = !DILocation(line: 905, column: 11, scope: !2318)
!2321 = !DILocation(line: 906, column: 27, scope: !2315)
!2322 = !DILocation(line: 906, column: 19, scope: !2315)
!2323 = !DILocation(line: 907, column: 69, scope: !2315)
!2324 = !DILocation(line: 909, column: 44, scope: !2315)
!2325 = !DILocation(line: 910, column: 44, scope: !2315)
!2326 = !DILocation(line: 907, column: 9, scope: !2315)
!2327 = !DILocation(line: 911, column: 7, scope: !2315)
!2328 = !DILocation(line: 913, column: 11, scope: !2257)
!2329 = !DILocation(line: 914, column: 5, scope: !2257)
!2330 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !433, file: !433, line: 925, type: !2331, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!237, !90, !68, !92}
!2333 = !{!2334, !2335, !2336}
!2334 = !DILocalVariable(name: "n", arg: 1, scope: !2330, file: !433, line: 925, type: !90)
!2335 = !DILocalVariable(name: "arg", arg: 2, scope: !2330, file: !433, line: 925, type: !68)
!2336 = !DILocalVariable(name: "argsize", arg: 3, scope: !2330, file: !433, line: 925, type: !92)
!2337 = !DILocation(line: 0, scope: !2330)
!2338 = !DILocation(line: 927, column: 10, scope: !2330)
!2339 = !DILocation(line: 927, column: 3, scope: !2330)
!2340 = distinct !DISubprogram(name: "quotearg", scope: !433, file: !433, line: 931, type: !933, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2341)
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "arg", arg: 1, scope: !2340, file: !433, line: 931, type: !68)
!2343 = !DILocation(line: 0, scope: !2340)
!2344 = !DILocation(line: 0, scope: !2234, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 933, column: 10, scope: !2340)
!2346 = !DILocation(line: 921, column: 10, scope: !2234, inlinedAt: !2345)
!2347 = !DILocation(line: 933, column: 3, scope: !2340)
!2348 = distinct !DISubprogram(name: "quotearg_mem", scope: !433, file: !433, line: 937, type: !2349, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!237, !68, !92}
!2351 = !{!2352, !2353}
!2352 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !433, line: 937, type: !68)
!2353 = !DILocalVariable(name: "argsize", arg: 2, scope: !2348, file: !433, line: 937, type: !92)
!2354 = !DILocation(line: 0, scope: !2348)
!2355 = !DILocation(line: 0, scope: !2330, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 939, column: 10, scope: !2348)
!2357 = !DILocation(line: 927, column: 10, scope: !2330, inlinedAt: !2356)
!2358 = !DILocation(line: 939, column: 3, scope: !2348)
!2359 = distinct !DISubprogram(name: "quotearg_n_style", scope: !433, file: !433, line: 943, type: !2360, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2362)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!237, !90, !456, !68}
!2362 = !{!2363, !2364, !2365, !2366}
!2363 = !DILocalVariable(name: "n", arg: 1, scope: !2359, file: !433, line: 943, type: !90)
!2364 = !DILocalVariable(name: "s", arg: 2, scope: !2359, file: !433, line: 943, type: !456)
!2365 = !DILocalVariable(name: "arg", arg: 3, scope: !2359, file: !433, line: 943, type: !68)
!2366 = !DILocalVariable(name: "o", scope: !2359, file: !433, line: 945, type: !1460)
!2367 = distinct !DIAssignID()
!2368 = !DILocation(line: 0, scope: !2359)
!2369 = !DILocation(line: 945, column: 3, scope: !2359)
!2370 = !{!2371}
!2371 = distinct !{!2371, !2372, !"quoting_options_from_style: argument 0"}
!2372 = distinct !{!2372, !"quoting_options_from_style"}
!2373 = !DILocation(line: 945, column: 36, scope: !2359)
!2374 = !DILocalVariable(name: "style", arg: 1, scope: !2375, file: !433, line: 183, type: !456)
!2375 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !433, file: !433, line: 183, type: !2376, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!483, !456}
!2378 = !{!2374, !2379}
!2379 = !DILocalVariable(name: "o", scope: !2375, file: !433, line: 185, type: !483)
!2380 = !DILocation(line: 0, scope: !2375, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 945, column: 36, scope: !2359)
!2382 = !DILocation(line: 185, column: 26, scope: !2375, inlinedAt: !2381)
!2383 = distinct !DIAssignID()
!2384 = !DILocation(line: 186, column: 13, scope: !2385, inlinedAt: !2381)
!2385 = distinct !DILexicalBlock(scope: !2375, file: !433, line: 186, column: 7)
!2386 = !DILocation(line: 186, column: 7, scope: !2375, inlinedAt: !2381)
!2387 = !DILocation(line: 187, column: 5, scope: !2385, inlinedAt: !2381)
!2388 = !DILocation(line: 188, column: 11, scope: !2375, inlinedAt: !2381)
!2389 = distinct !DIAssignID()
!2390 = !DILocation(line: 946, column: 10, scope: !2359)
!2391 = !DILocation(line: 947, column: 1, scope: !2359)
!2392 = !DILocation(line: 946, column: 3, scope: !2359)
!2393 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !433, file: !433, line: 950, type: !2394, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!237, !90, !456, !68, !92}
!2396 = !{!2397, !2398, !2399, !2400, !2401}
!2397 = !DILocalVariable(name: "n", arg: 1, scope: !2393, file: !433, line: 950, type: !90)
!2398 = !DILocalVariable(name: "s", arg: 2, scope: !2393, file: !433, line: 950, type: !456)
!2399 = !DILocalVariable(name: "arg", arg: 3, scope: !2393, file: !433, line: 951, type: !68)
!2400 = !DILocalVariable(name: "argsize", arg: 4, scope: !2393, file: !433, line: 951, type: !92)
!2401 = !DILocalVariable(name: "o", scope: !2393, file: !433, line: 953, type: !1460)
!2402 = distinct !DIAssignID()
!2403 = !DILocation(line: 0, scope: !2393)
!2404 = !DILocation(line: 953, column: 3, scope: !2393)
!2405 = !{!2406}
!2406 = distinct !{!2406, !2407, !"quoting_options_from_style: argument 0"}
!2407 = distinct !{!2407, !"quoting_options_from_style"}
!2408 = !DILocation(line: 953, column: 36, scope: !2393)
!2409 = !DILocation(line: 0, scope: !2375, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 953, column: 36, scope: !2393)
!2411 = !DILocation(line: 185, column: 26, scope: !2375, inlinedAt: !2410)
!2412 = distinct !DIAssignID()
!2413 = !DILocation(line: 186, column: 13, scope: !2385, inlinedAt: !2410)
!2414 = !DILocation(line: 186, column: 7, scope: !2375, inlinedAt: !2410)
!2415 = !DILocation(line: 187, column: 5, scope: !2385, inlinedAt: !2410)
!2416 = !DILocation(line: 188, column: 11, scope: !2375, inlinedAt: !2410)
!2417 = distinct !DIAssignID()
!2418 = !DILocation(line: 954, column: 10, scope: !2393)
!2419 = !DILocation(line: 955, column: 1, scope: !2393)
!2420 = !DILocation(line: 954, column: 3, scope: !2393)
!2421 = distinct !DISubprogram(name: "quotearg_style", scope: !433, file: !433, line: 958, type: !2422, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!237, !456, !68}
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "s", arg: 1, scope: !2421, file: !433, line: 958, type: !456)
!2426 = !DILocalVariable(name: "arg", arg: 2, scope: !2421, file: !433, line: 958, type: !68)
!2427 = distinct !DIAssignID()
!2428 = !DILocation(line: 0, scope: !2421)
!2429 = !DILocation(line: 0, scope: !2359, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 960, column: 10, scope: !2421)
!2431 = !DILocation(line: 945, column: 3, scope: !2359, inlinedAt: !2430)
!2432 = !{!2433}
!2433 = distinct !{!2433, !2434, !"quoting_options_from_style: argument 0"}
!2434 = distinct !{!2434, !"quoting_options_from_style"}
!2435 = !DILocation(line: 945, column: 36, scope: !2359, inlinedAt: !2430)
!2436 = !DILocation(line: 0, scope: !2375, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 945, column: 36, scope: !2359, inlinedAt: !2430)
!2438 = !DILocation(line: 185, column: 26, scope: !2375, inlinedAt: !2437)
!2439 = distinct !DIAssignID()
!2440 = !DILocation(line: 186, column: 13, scope: !2385, inlinedAt: !2437)
!2441 = !DILocation(line: 186, column: 7, scope: !2375, inlinedAt: !2437)
!2442 = !DILocation(line: 187, column: 5, scope: !2385, inlinedAt: !2437)
!2443 = !DILocation(line: 188, column: 11, scope: !2375, inlinedAt: !2437)
!2444 = distinct !DIAssignID()
!2445 = !DILocation(line: 946, column: 10, scope: !2359, inlinedAt: !2430)
!2446 = !DILocation(line: 947, column: 1, scope: !2359, inlinedAt: !2430)
!2447 = !DILocation(line: 960, column: 3, scope: !2421)
!2448 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !433, file: !433, line: 964, type: !2449, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2451)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!237, !456, !68, !92}
!2451 = !{!2452, !2453, !2454}
!2452 = !DILocalVariable(name: "s", arg: 1, scope: !2448, file: !433, line: 964, type: !456)
!2453 = !DILocalVariable(name: "arg", arg: 2, scope: !2448, file: !433, line: 964, type: !68)
!2454 = !DILocalVariable(name: "argsize", arg: 3, scope: !2448, file: !433, line: 964, type: !92)
!2455 = distinct !DIAssignID()
!2456 = !DILocation(line: 0, scope: !2448)
!2457 = !DILocation(line: 0, scope: !2393, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 966, column: 10, scope: !2448)
!2459 = !DILocation(line: 953, column: 3, scope: !2393, inlinedAt: !2458)
!2460 = !{!2461}
!2461 = distinct !{!2461, !2462, !"quoting_options_from_style: argument 0"}
!2462 = distinct !{!2462, !"quoting_options_from_style"}
!2463 = !DILocation(line: 953, column: 36, scope: !2393, inlinedAt: !2458)
!2464 = !DILocation(line: 0, scope: !2375, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 953, column: 36, scope: !2393, inlinedAt: !2458)
!2466 = !DILocation(line: 185, column: 26, scope: !2375, inlinedAt: !2465)
!2467 = distinct !DIAssignID()
!2468 = !DILocation(line: 186, column: 13, scope: !2385, inlinedAt: !2465)
!2469 = !DILocation(line: 186, column: 7, scope: !2375, inlinedAt: !2465)
!2470 = !DILocation(line: 187, column: 5, scope: !2385, inlinedAt: !2465)
!2471 = !DILocation(line: 188, column: 11, scope: !2375, inlinedAt: !2465)
!2472 = distinct !DIAssignID()
!2473 = !DILocation(line: 954, column: 10, scope: !2393, inlinedAt: !2458)
!2474 = !DILocation(line: 955, column: 1, scope: !2393, inlinedAt: !2458)
!2475 = !DILocation(line: 966, column: 3, scope: !2448)
!2476 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !433, file: !433, line: 970, type: !2477, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!237, !68, !92, !4}
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "arg", arg: 1, scope: !2476, file: !433, line: 970, type: !68)
!2481 = !DILocalVariable(name: "argsize", arg: 2, scope: !2476, file: !433, line: 970, type: !92)
!2482 = !DILocalVariable(name: "ch", arg: 3, scope: !2476, file: !433, line: 970, type: !4)
!2483 = !DILocalVariable(name: "options", scope: !2476, file: !433, line: 972, type: !483)
!2484 = distinct !DIAssignID()
!2485 = !DILocation(line: 0, scope: !2476)
!2486 = !DILocation(line: 972, column: 3, scope: !2476)
!2487 = !DILocation(line: 973, column: 13, scope: !2476)
!2488 = !{i64 0, i64 4, !807, i64 4, i64 4, !807, i64 8, i64 32, !816, i64 40, i64 8, !751, i64 48, i64 8, !751}
!2489 = distinct !DIAssignID()
!2490 = !DILocation(line: 0, scope: !1479, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 974, column: 3, scope: !2476)
!2492 = !DILocation(line: 147, column: 41, scope: !1479, inlinedAt: !2491)
!2493 = !DILocation(line: 147, column: 62, scope: !1479, inlinedAt: !2491)
!2494 = !DILocation(line: 147, column: 57, scope: !1479, inlinedAt: !2491)
!2495 = !DILocation(line: 148, column: 15, scope: !1479, inlinedAt: !2491)
!2496 = !DILocation(line: 149, column: 21, scope: !1479, inlinedAt: !2491)
!2497 = !DILocation(line: 149, column: 24, scope: !1479, inlinedAt: !2491)
!2498 = !DILocation(line: 150, column: 19, scope: !1479, inlinedAt: !2491)
!2499 = !DILocation(line: 150, column: 24, scope: !1479, inlinedAt: !2491)
!2500 = !DILocation(line: 150, column: 6, scope: !1479, inlinedAt: !2491)
!2501 = !DILocation(line: 975, column: 10, scope: !2476)
!2502 = !DILocation(line: 976, column: 1, scope: !2476)
!2503 = !DILocation(line: 975, column: 3, scope: !2476)
!2504 = distinct !DISubprogram(name: "quotearg_char", scope: !433, file: !433, line: 979, type: !2505, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!237, !68, !4}
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !433, line: 979, type: !68)
!2509 = !DILocalVariable(name: "ch", arg: 2, scope: !2504, file: !433, line: 979, type: !4)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 0, scope: !2504)
!2512 = !DILocation(line: 0, scope: !2476, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 981, column: 10, scope: !2504)
!2514 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2513)
!2515 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2513)
!2516 = distinct !DIAssignID()
!2517 = !DILocation(line: 0, scope: !1479, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2513)
!2519 = !DILocation(line: 147, column: 41, scope: !1479, inlinedAt: !2518)
!2520 = !DILocation(line: 147, column: 62, scope: !1479, inlinedAt: !2518)
!2521 = !DILocation(line: 147, column: 57, scope: !1479, inlinedAt: !2518)
!2522 = !DILocation(line: 148, column: 15, scope: !1479, inlinedAt: !2518)
!2523 = !DILocation(line: 149, column: 21, scope: !1479, inlinedAt: !2518)
!2524 = !DILocation(line: 149, column: 24, scope: !1479, inlinedAt: !2518)
!2525 = !DILocation(line: 150, column: 19, scope: !1479, inlinedAt: !2518)
!2526 = !DILocation(line: 150, column: 24, scope: !1479, inlinedAt: !2518)
!2527 = !DILocation(line: 150, column: 6, scope: !1479, inlinedAt: !2518)
!2528 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2513)
!2529 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2513)
!2530 = !DILocation(line: 981, column: 3, scope: !2504)
!2531 = distinct !DISubprogram(name: "quotearg_colon", scope: !433, file: !433, line: 985, type: !933, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2532)
!2532 = !{!2533}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2531, file: !433, line: 985, type: !68)
!2534 = distinct !DIAssignID()
!2535 = !DILocation(line: 0, scope: !2531)
!2536 = !DILocation(line: 0, scope: !2504, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 987, column: 10, scope: !2531)
!2538 = !DILocation(line: 0, scope: !2476, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 981, column: 10, scope: !2504, inlinedAt: !2537)
!2540 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2539)
!2541 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2539)
!2542 = distinct !DIAssignID()
!2543 = !DILocation(line: 0, scope: !1479, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2539)
!2545 = !DILocation(line: 147, column: 57, scope: !1479, inlinedAt: !2544)
!2546 = !DILocation(line: 149, column: 21, scope: !1479, inlinedAt: !2544)
!2547 = !DILocation(line: 150, column: 6, scope: !1479, inlinedAt: !2544)
!2548 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2539)
!2549 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2539)
!2550 = !DILocation(line: 987, column: 3, scope: !2531)
!2551 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !433, file: !433, line: 991, type: !2349, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2552)
!2552 = !{!2553, !2554}
!2553 = !DILocalVariable(name: "arg", arg: 1, scope: !2551, file: !433, line: 991, type: !68)
!2554 = !DILocalVariable(name: "argsize", arg: 2, scope: !2551, file: !433, line: 991, type: !92)
!2555 = distinct !DIAssignID()
!2556 = !DILocation(line: 0, scope: !2551)
!2557 = !DILocation(line: 0, scope: !2476, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 993, column: 10, scope: !2551)
!2559 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2558)
!2560 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2558)
!2561 = distinct !DIAssignID()
!2562 = !DILocation(line: 0, scope: !1479, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2558)
!2564 = !DILocation(line: 147, column: 57, scope: !1479, inlinedAt: !2563)
!2565 = !DILocation(line: 149, column: 21, scope: !1479, inlinedAt: !2563)
!2566 = !DILocation(line: 150, column: 6, scope: !1479, inlinedAt: !2563)
!2567 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2558)
!2568 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2558)
!2569 = !DILocation(line: 993, column: 3, scope: !2551)
!2570 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !433, file: !433, line: 997, type: !2360, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2571)
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DILocalVariable(name: "n", arg: 1, scope: !2570, file: !433, line: 997, type: !90)
!2573 = !DILocalVariable(name: "s", arg: 2, scope: !2570, file: !433, line: 997, type: !456)
!2574 = !DILocalVariable(name: "arg", arg: 3, scope: !2570, file: !433, line: 997, type: !68)
!2575 = !DILocalVariable(name: "options", scope: !2570, file: !433, line: 999, type: !483)
!2576 = distinct !DIAssignID()
!2577 = !DILocation(line: 0, scope: !2570)
!2578 = !DILocation(line: 185, column: 26, scope: !2375, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 1000, column: 13, scope: !2570)
!2580 = !DILocation(line: 999, column: 3, scope: !2570)
!2581 = !DILocation(line: 0, scope: !2375, inlinedAt: !2579)
!2582 = !DILocation(line: 186, column: 13, scope: !2385, inlinedAt: !2579)
!2583 = !DILocation(line: 186, column: 7, scope: !2375, inlinedAt: !2579)
!2584 = !DILocation(line: 187, column: 5, scope: !2385, inlinedAt: !2579)
!2585 = !{!2586}
!2586 = distinct !{!2586, !2587, !"quoting_options_from_style: argument 0"}
!2587 = distinct !{!2587, !"quoting_options_from_style"}
!2588 = !DILocation(line: 1000, column: 13, scope: !2570)
!2589 = distinct !DIAssignID()
!2590 = distinct !DIAssignID()
!2591 = !DILocation(line: 0, scope: !1479, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1001, column: 3, scope: !2570)
!2593 = !DILocation(line: 147, column: 57, scope: !1479, inlinedAt: !2592)
!2594 = !DILocation(line: 149, column: 21, scope: !1479, inlinedAt: !2592)
!2595 = !DILocation(line: 150, column: 6, scope: !1479, inlinedAt: !2592)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 1002, column: 10, scope: !2570)
!2598 = !DILocation(line: 1003, column: 1, scope: !2570)
!2599 = !DILocation(line: 1002, column: 3, scope: !2570)
!2600 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !433, file: !433, line: 1006, type: !2601, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!237, !90, !68, !68, !68}
!2603 = !{!2604, !2605, !2606, !2607}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !433, line: 1006, type: !90)
!2605 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2600, file: !433, line: 1006, type: !68)
!2606 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2600, file: !433, line: 1007, type: !68)
!2607 = !DILocalVariable(name: "arg", arg: 4, scope: !2600, file: !433, line: 1007, type: !68)
!2608 = distinct !DIAssignID()
!2609 = !DILocation(line: 0, scope: !2600)
!2610 = !DILocalVariable(name: "o", scope: !2611, file: !433, line: 1018, type: !483)
!2611 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !433, file: !433, line: 1014, type: !2612, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!237, !90, !68, !68, !68, !92}
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2610}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !433, line: 1014, type: !90)
!2616 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2611, file: !433, line: 1014, type: !68)
!2617 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2611, file: !433, line: 1015, type: !68)
!2618 = !DILocalVariable(name: "arg", arg: 4, scope: !2611, file: !433, line: 1016, type: !68)
!2619 = !DILocalVariable(name: "argsize", arg: 5, scope: !2611, file: !433, line: 1016, type: !92)
!2620 = !DILocation(line: 0, scope: !2611, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1009, column: 10, scope: !2600)
!2622 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2621)
!2623 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2621)
!2624 = distinct !DIAssignID()
!2625 = distinct !DIAssignID()
!2626 = !DILocation(line: 0, scope: !1519, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2621)
!2628 = !DILocation(line: 174, column: 12, scope: !1519, inlinedAt: !2627)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 175, column: 8, scope: !1532, inlinedAt: !2627)
!2631 = !DILocation(line: 175, column: 19, scope: !1532, inlinedAt: !2627)
!2632 = !DILocation(line: 176, column: 5, scope: !1532, inlinedAt: !2627)
!2633 = !DILocation(line: 177, column: 6, scope: !1519, inlinedAt: !2627)
!2634 = !DILocation(line: 177, column: 17, scope: !1519, inlinedAt: !2627)
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 178, column: 6, scope: !1519, inlinedAt: !2627)
!2637 = !DILocation(line: 178, column: 18, scope: !1519, inlinedAt: !2627)
!2638 = distinct !DIAssignID()
!2639 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2621)
!2640 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2621)
!2641 = !DILocation(line: 1009, column: 3, scope: !2600)
!2642 = distinct !DIAssignID()
!2643 = !DILocation(line: 0, scope: !2611)
!2644 = !DILocation(line: 1018, column: 3, scope: !2611)
!2645 = !DILocation(line: 1018, column: 30, scope: !2611)
!2646 = distinct !DIAssignID()
!2647 = distinct !DIAssignID()
!2648 = !DILocation(line: 0, scope: !1519, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1019, column: 3, scope: !2611)
!2650 = !DILocation(line: 174, column: 12, scope: !1519, inlinedAt: !2649)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 175, column: 8, scope: !1532, inlinedAt: !2649)
!2653 = !DILocation(line: 175, column: 19, scope: !1532, inlinedAt: !2649)
!2654 = !DILocation(line: 176, column: 5, scope: !1532, inlinedAt: !2649)
!2655 = !DILocation(line: 177, column: 6, scope: !1519, inlinedAt: !2649)
!2656 = !DILocation(line: 177, column: 17, scope: !1519, inlinedAt: !2649)
!2657 = distinct !DIAssignID()
!2658 = !DILocation(line: 178, column: 6, scope: !1519, inlinedAt: !2649)
!2659 = !DILocation(line: 178, column: 18, scope: !1519, inlinedAt: !2649)
!2660 = distinct !DIAssignID()
!2661 = !DILocation(line: 1020, column: 10, scope: !2611)
!2662 = !DILocation(line: 1021, column: 1, scope: !2611)
!2663 = !DILocation(line: 1020, column: 3, scope: !2611)
!2664 = distinct !DISubprogram(name: "quotearg_custom", scope: !433, file: !433, line: 1024, type: !2665, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2667)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!237, !68, !68, !68}
!2667 = !{!2668, !2669, !2670}
!2668 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2664, file: !433, line: 1024, type: !68)
!2669 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2664, file: !433, line: 1024, type: !68)
!2670 = !DILocalVariable(name: "arg", arg: 3, scope: !2664, file: !433, line: 1025, type: !68)
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 0, scope: !2664)
!2673 = !DILocation(line: 0, scope: !2600, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1027, column: 10, scope: !2664)
!2675 = !DILocation(line: 0, scope: !2611, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1009, column: 10, scope: !2600, inlinedAt: !2674)
!2677 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2676)
!2678 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2676)
!2679 = distinct !DIAssignID()
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 0, scope: !1519, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2676)
!2683 = !DILocation(line: 174, column: 12, scope: !1519, inlinedAt: !2682)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 175, column: 8, scope: !1532, inlinedAt: !2682)
!2686 = !DILocation(line: 175, column: 19, scope: !1532, inlinedAt: !2682)
!2687 = !DILocation(line: 176, column: 5, scope: !1532, inlinedAt: !2682)
!2688 = !DILocation(line: 177, column: 6, scope: !1519, inlinedAt: !2682)
!2689 = !DILocation(line: 177, column: 17, scope: !1519, inlinedAt: !2682)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 178, column: 6, scope: !1519, inlinedAt: !2682)
!2692 = !DILocation(line: 178, column: 18, scope: !1519, inlinedAt: !2682)
!2693 = distinct !DIAssignID()
!2694 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2676)
!2695 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2676)
!2696 = !DILocation(line: 1027, column: 3, scope: !2664)
!2697 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !433, file: !433, line: 1031, type: !2698, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!237, !68, !68, !68, !92}
!2700 = !{!2701, !2702, !2703, !2704}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !433, line: 1031, type: !68)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !433, line: 1031, type: !68)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !433, line: 1032, type: !68)
!2704 = !DILocalVariable(name: "argsize", arg: 4, scope: !2697, file: !433, line: 1032, type: !92)
!2705 = distinct !DIAssignID()
!2706 = !DILocation(line: 0, scope: !2697)
!2707 = !DILocation(line: 0, scope: !2611, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1034, column: 10, scope: !2697)
!2709 = !DILocation(line: 1018, column: 3, scope: !2611, inlinedAt: !2708)
!2710 = !DILocation(line: 1018, column: 30, scope: !2611, inlinedAt: !2708)
!2711 = distinct !DIAssignID()
!2712 = distinct !DIAssignID()
!2713 = !DILocation(line: 0, scope: !1519, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1019, column: 3, scope: !2611, inlinedAt: !2708)
!2715 = !DILocation(line: 174, column: 12, scope: !1519, inlinedAt: !2714)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 175, column: 8, scope: !1532, inlinedAt: !2714)
!2718 = !DILocation(line: 175, column: 19, scope: !1532, inlinedAt: !2714)
!2719 = !DILocation(line: 176, column: 5, scope: !1532, inlinedAt: !2714)
!2720 = !DILocation(line: 177, column: 6, scope: !1519, inlinedAt: !2714)
!2721 = !DILocation(line: 177, column: 17, scope: !1519, inlinedAt: !2714)
!2722 = distinct !DIAssignID()
!2723 = !DILocation(line: 178, column: 6, scope: !1519, inlinedAt: !2714)
!2724 = !DILocation(line: 178, column: 18, scope: !1519, inlinedAt: !2714)
!2725 = distinct !DIAssignID()
!2726 = !DILocation(line: 1020, column: 10, scope: !2611, inlinedAt: !2708)
!2727 = !DILocation(line: 1021, column: 1, scope: !2611, inlinedAt: !2708)
!2728 = !DILocation(line: 1034, column: 3, scope: !2697)
!2729 = distinct !DISubprogram(name: "quote_n_mem", scope: !433, file: !433, line: 1049, type: !2730, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2732)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{!68, !90, !68, !92}
!2732 = !{!2733, !2734, !2735}
!2733 = !DILocalVariable(name: "n", arg: 1, scope: !2729, file: !433, line: 1049, type: !90)
!2734 = !DILocalVariable(name: "arg", arg: 2, scope: !2729, file: !433, line: 1049, type: !68)
!2735 = !DILocalVariable(name: "argsize", arg: 3, scope: !2729, file: !433, line: 1049, type: !92)
!2736 = !DILocation(line: 0, scope: !2729)
!2737 = !DILocation(line: 1051, column: 10, scope: !2729)
!2738 = !DILocation(line: 1051, column: 3, scope: !2729)
!2739 = distinct !DISubprogram(name: "quote_mem", scope: !433, file: !433, line: 1055, type: !2740, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!68, !68, !92}
!2742 = !{!2743, !2744}
!2743 = !DILocalVariable(name: "arg", arg: 1, scope: !2739, file: !433, line: 1055, type: !68)
!2744 = !DILocalVariable(name: "argsize", arg: 2, scope: !2739, file: !433, line: 1055, type: !92)
!2745 = !DILocation(line: 0, scope: !2739)
!2746 = !DILocation(line: 0, scope: !2729, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1057, column: 10, scope: !2739)
!2748 = !DILocation(line: 1051, column: 10, scope: !2729, inlinedAt: !2747)
!2749 = !DILocation(line: 1057, column: 3, scope: !2739)
!2750 = distinct !DISubprogram(name: "quote_n", scope: !433, file: !433, line: 1061, type: !2751, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!68, !90, !68}
!2753 = !{!2754, !2755}
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2750, file: !433, line: 1061, type: !90)
!2755 = !DILocalVariable(name: "arg", arg: 2, scope: !2750, file: !433, line: 1061, type: !68)
!2756 = !DILocation(line: 0, scope: !2750)
!2757 = !DILocation(line: 0, scope: !2729, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 1063, column: 10, scope: !2750)
!2759 = !DILocation(line: 1051, column: 10, scope: !2729, inlinedAt: !2758)
!2760 = !DILocation(line: 1063, column: 3, scope: !2750)
!2761 = distinct !DISubprogram(name: "quote", scope: !433, file: !433, line: 1067, type: !2762, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!68, !68}
!2764 = !{!2765}
!2765 = !DILocalVariable(name: "arg", arg: 1, scope: !2761, file: !433, line: 1067, type: !68)
!2766 = !DILocation(line: 0, scope: !2761)
!2767 = !DILocation(line: 0, scope: !2750, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1069, column: 10, scope: !2761)
!2769 = !DILocation(line: 0, scope: !2729, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1063, column: 10, scope: !2750, inlinedAt: !2768)
!2771 = !DILocation(line: 1051, column: 10, scope: !2729, inlinedAt: !2770)
!2772 = !DILocation(line: 1069, column: 3, scope: !2761)
!2773 = distinct !DISubprogram(name: "version_etc_arn", scope: !546, file: !546, line: 61, type: !2774, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2811)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{null, !2776, !68, !68, !68, !2810, !92}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2778, file: !233, line: 51, baseType: !90, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2778, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2778, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2778, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2778, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2778, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2778, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2778, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2778, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2778, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2778, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2778, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2778, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2778, file: !233, line: 70, baseType: !2794, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2778, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2778, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2778, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2778, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2778, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2778, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2778, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2778, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2778, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2778, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2778, file: !233, line: 93, baseType: !2794, size: 64, offset: 1344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2778, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2778, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2778, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2778, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817}
!2812 = !DILocalVariable(name: "stream", arg: 1, scope: !2773, file: !546, line: 61, type: !2776)
!2813 = !DILocalVariable(name: "command_name", arg: 2, scope: !2773, file: !546, line: 62, type: !68)
!2814 = !DILocalVariable(name: "package", arg: 3, scope: !2773, file: !546, line: 62, type: !68)
!2815 = !DILocalVariable(name: "version", arg: 4, scope: !2773, file: !546, line: 63, type: !68)
!2816 = !DILocalVariable(name: "authors", arg: 5, scope: !2773, file: !546, line: 64, type: !2810)
!2817 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2773, file: !546, line: 64, type: !92)
!2818 = !DILocation(line: 0, scope: !2773)
!2819 = !DILocation(line: 66, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2773, file: !546, line: 66, column: 7)
!2821 = !DILocation(line: 66, column: 7, scope: !2773)
!2822 = !DILocation(line: 67, column: 5, scope: !2820)
!2823 = !DILocation(line: 69, column: 5, scope: !2820)
!2824 = !DILocation(line: 83, column: 3, scope: !2773)
!2825 = !DILocation(line: 85, column: 3, scope: !2773)
!2826 = !DILocation(line: 88, column: 3, scope: !2773)
!2827 = !DILocation(line: 95, column: 3, scope: !2773)
!2828 = !DILocation(line: 97, column: 3, scope: !2773)
!2829 = !DILocation(line: 105, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2773, file: !546, line: 98, column: 5)
!2831 = !DILocation(line: 106, column: 7, scope: !2830)
!2832 = !DILocation(line: 109, column: 7, scope: !2830)
!2833 = !DILocation(line: 110, column: 7, scope: !2830)
!2834 = !DILocation(line: 113, column: 7, scope: !2830)
!2835 = !DILocation(line: 115, column: 7, scope: !2830)
!2836 = !DILocation(line: 120, column: 7, scope: !2830)
!2837 = !DILocation(line: 122, column: 7, scope: !2830)
!2838 = !DILocation(line: 127, column: 7, scope: !2830)
!2839 = !DILocation(line: 129, column: 7, scope: !2830)
!2840 = !DILocation(line: 134, column: 7, scope: !2830)
!2841 = !DILocation(line: 137, column: 7, scope: !2830)
!2842 = !DILocation(line: 142, column: 7, scope: !2830)
!2843 = !DILocation(line: 145, column: 7, scope: !2830)
!2844 = !DILocation(line: 150, column: 7, scope: !2830)
!2845 = !DILocation(line: 154, column: 7, scope: !2830)
!2846 = !DILocation(line: 159, column: 7, scope: !2830)
!2847 = !DILocation(line: 163, column: 7, scope: !2830)
!2848 = !DILocation(line: 170, column: 7, scope: !2830)
!2849 = !DILocation(line: 174, column: 7, scope: !2830)
!2850 = !DILocation(line: 176, column: 1, scope: !2773)
!2851 = distinct !DISubprogram(name: "version_etc_ar", scope: !546, file: !546, line: 183, type: !2852, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2854)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !2776, !68, !68, !68, !2810}
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860}
!2855 = !DILocalVariable(name: "stream", arg: 1, scope: !2851, file: !546, line: 183, type: !2776)
!2856 = !DILocalVariable(name: "command_name", arg: 2, scope: !2851, file: !546, line: 184, type: !68)
!2857 = !DILocalVariable(name: "package", arg: 3, scope: !2851, file: !546, line: 184, type: !68)
!2858 = !DILocalVariable(name: "version", arg: 4, scope: !2851, file: !546, line: 185, type: !68)
!2859 = !DILocalVariable(name: "authors", arg: 5, scope: !2851, file: !546, line: 185, type: !2810)
!2860 = !DILocalVariable(name: "n_authors", scope: !2851, file: !546, line: 187, type: !92)
!2861 = !DILocation(line: 0, scope: !2851)
!2862 = !DILocation(line: 189, column: 8, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2851, file: !546, line: 189, column: 3)
!2864 = !DILocation(line: 189, scope: !2863)
!2865 = !DILocation(line: 189, column: 23, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2863, file: !546, line: 189, column: 3)
!2867 = !DILocation(line: 189, column: 3, scope: !2863)
!2868 = !DILocation(line: 189, column: 52, scope: !2866)
!2869 = distinct !{!2869, !2867, !2870, !854}
!2870 = !DILocation(line: 190, column: 5, scope: !2863)
!2871 = !DILocation(line: 191, column: 3, scope: !2851)
!2872 = !DILocation(line: 192, column: 1, scope: !2851)
!2873 = distinct !DISubprogram(name: "version_etc_va", scope: !546, file: !546, line: 199, type: !2874, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2886)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{null, !2776, !68, !68, !68, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !324, line: 52, baseType: !2877)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !326, line: 12, baseType: !2878)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !546, baseType: !2879)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884, !2885}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2879, file: !546, line: 192, baseType: !89, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2879, file: !546, line: 192, baseType: !89, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2879, file: !546, line: 192, baseType: !89, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2879, file: !546, line: 192, baseType: !90, size: 32, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2879, file: !546, line: 192, baseType: !90, size: 32, offset: 224)
!2886 = !{!2887, !2888, !2889, !2890, !2891, !2892, !2893}
!2887 = !DILocalVariable(name: "stream", arg: 1, scope: !2873, file: !546, line: 199, type: !2776)
!2888 = !DILocalVariable(name: "command_name", arg: 2, scope: !2873, file: !546, line: 200, type: !68)
!2889 = !DILocalVariable(name: "package", arg: 3, scope: !2873, file: !546, line: 200, type: !68)
!2890 = !DILocalVariable(name: "version", arg: 4, scope: !2873, file: !546, line: 201, type: !68)
!2891 = !DILocalVariable(name: "authors", arg: 5, scope: !2873, file: !546, line: 201, type: !2876)
!2892 = !DILocalVariable(name: "n_authors", scope: !2873, file: !546, line: 203, type: !92)
!2893 = !DILocalVariable(name: "authtab", scope: !2873, file: !546, line: 204, type: !2894)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 640, elements: !35)
!2895 = distinct !DIAssignID()
!2896 = !DILocation(line: 0, scope: !2873)
!2897 = !DILocation(line: 204, column: 3, scope: !2873)
!2898 = !DILocation(line: 208, column: 35, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !546, line: 206, column: 3)
!2900 = distinct !DILexicalBlock(scope: !2873, file: !546, line: 206, column: 3)
!2901 = !DILocation(line: 208, column: 33, scope: !2899)
!2902 = !DILocation(line: 208, column: 67, scope: !2899)
!2903 = !DILocation(line: 206, column: 3, scope: !2900)
!2904 = !DILocation(line: 208, column: 14, scope: !2899)
!2905 = !DILocation(line: 0, scope: !2900)
!2906 = !DILocation(line: 211, column: 3, scope: !2873)
!2907 = !DILocation(line: 213, column: 1, scope: !2873)
!2908 = distinct !DISubprogram(name: "version_etc", scope: !546, file: !546, line: 230, type: !2909, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !2776, !68, !68, !68, null}
!2911 = !{!2912, !2913, !2914, !2915, !2916}
!2912 = !DILocalVariable(name: "stream", arg: 1, scope: !2908, file: !546, line: 230, type: !2776)
!2913 = !DILocalVariable(name: "command_name", arg: 2, scope: !2908, file: !546, line: 231, type: !68)
!2914 = !DILocalVariable(name: "package", arg: 3, scope: !2908, file: !546, line: 231, type: !68)
!2915 = !DILocalVariable(name: "version", arg: 4, scope: !2908, file: !546, line: 232, type: !68)
!2916 = !DILocalVariable(name: "authors", scope: !2908, file: !546, line: 234, type: !2876)
!2917 = distinct !DIAssignID()
!2918 = !DILocation(line: 0, scope: !2908)
!2919 = !DILocation(line: 234, column: 3, scope: !2908)
!2920 = !DILocation(line: 235, column: 3, scope: !2908)
!2921 = !DILocation(line: 236, column: 3, scope: !2908)
!2922 = !DILocation(line: 237, column: 3, scope: !2908)
!2923 = !DILocation(line: 238, column: 1, scope: !2908)
!2924 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !546, file: !546, line: 241, type: !364, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672)
!2925 = !DILocation(line: 243, column: 3, scope: !2924)
!2926 = !DILocation(line: 248, column: 3, scope: !2924)
!2927 = !DILocation(line: 254, column: 3, scope: !2924)
!2928 = !DILocation(line: 259, column: 3, scope: !2924)
!2929 = !DILocation(line: 261, column: 1, scope: !2924)
!2930 = distinct !DISubprogram(name: "xnrealloc", scope: !2931, file: !2931, line: 147, type: !2932, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2934)
!2931 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!89, !89, !92, !92}
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2930, file: !2931, line: 147, type: !89)
!2936 = !DILocalVariable(name: "n", arg: 2, scope: !2930, file: !2931, line: 147, type: !92)
!2937 = !DILocalVariable(name: "s", arg: 3, scope: !2930, file: !2931, line: 147, type: !92)
!2938 = !DILocation(line: 0, scope: !2930)
!2939 = !DILocalVariable(name: "p", arg: 1, scope: !2940, file: !679, line: 83, type: !89)
!2940 = distinct !DISubprogram(name: "xreallocarray", scope: !679, file: !679, line: 83, type: !2932, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2941)
!2941 = !{!2939, !2942, !2943}
!2942 = !DILocalVariable(name: "n", arg: 2, scope: !2940, file: !679, line: 83, type: !92)
!2943 = !DILocalVariable(name: "s", arg: 3, scope: !2940, file: !679, line: 83, type: !92)
!2944 = !DILocation(line: 0, scope: !2940, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 149, column: 10, scope: !2930)
!2946 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !2945)
!2947 = !DILocalVariable(name: "p", arg: 1, scope: !2948, file: !679, line: 37, type: !89)
!2948 = distinct !DISubprogram(name: "check_nonnull", scope: !679, file: !679, line: 37, type: !2949, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!89, !89}
!2951 = !{!2947}
!2952 = !DILocation(line: 0, scope: !2948, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !2945)
!2954 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2953)
!2955 = distinct !DILexicalBlock(scope: !2948, file: !679, line: 39, column: 7)
!2956 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2953)
!2957 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2953)
!2958 = !DILocation(line: 149, column: 3, scope: !2930)
!2959 = !DILocation(line: 0, scope: !2940)
!2960 = !DILocation(line: 85, column: 25, scope: !2940)
!2961 = !DILocation(line: 0, scope: !2948, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 85, column: 10, scope: !2940)
!2963 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2962)
!2964 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2962)
!2965 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2962)
!2966 = !DILocation(line: 85, column: 3, scope: !2940)
!2967 = distinct !DISubprogram(name: "xmalloc", scope: !679, file: !679, line: 47, type: !2968, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!89, !92}
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "s", arg: 1, scope: !2967, file: !679, line: 47, type: !92)
!2972 = !DILocation(line: 0, scope: !2967)
!2973 = !DILocation(line: 49, column: 25, scope: !2967)
!2974 = !DILocation(line: 0, scope: !2948, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 49, column: 10, scope: !2967)
!2976 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2975)
!2977 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2975)
!2978 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2975)
!2979 = !DILocation(line: 49, column: 3, scope: !2967)
!2980 = !DISubprogram(name: "malloc", scope: !931, file: !931, line: 540, type: !2968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2981 = distinct !DISubprogram(name: "ximalloc", scope: !679, file: !679, line: 53, type: !2982, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!89, !698}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !679, line: 53, type: !698)
!2986 = !DILocation(line: 0, scope: !2981)
!2987 = !DILocalVariable(name: "s", arg: 1, scope: !2988, file: !2989, line: 55, type: !698)
!2988 = distinct !DISubprogram(name: "imalloc", scope: !2989, file: !2989, line: 55, type: !2982, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !2990)
!2989 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2990 = !{!2987}
!2991 = !DILocation(line: 0, scope: !2988, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 55, column: 25, scope: !2981)
!2993 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !2992)
!2994 = !DILocation(line: 0, scope: !2948, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 55, column: 10, scope: !2981)
!2996 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2995)
!2997 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2995)
!2998 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2995)
!2999 = !DILocation(line: 55, column: 3, scope: !2981)
!3000 = distinct !DISubprogram(name: "xcharalloc", scope: !679, file: !679, line: 59, type: !3001, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!237, !92}
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !679, line: 59, type: !92)
!3005 = !DILocation(line: 0, scope: !3000)
!3006 = !DILocation(line: 0, scope: !2967, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 61, column: 10, scope: !3000)
!3008 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3007)
!3009 = !DILocation(line: 0, scope: !2948, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3007)
!3011 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3010)
!3012 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3010)
!3013 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3010)
!3014 = !DILocation(line: 61, column: 3, scope: !3000)
!3015 = distinct !DISubprogram(name: "xrealloc", scope: !679, file: !679, line: 68, type: !3016, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!89, !89, !92}
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3015, file: !679, line: 68, type: !89)
!3020 = !DILocalVariable(name: "s", arg: 2, scope: !3015, file: !679, line: 68, type: !92)
!3021 = !DILocation(line: 0, scope: !3015)
!3022 = !DILocalVariable(name: "ptr", arg: 1, scope: !3023, file: !3024, line: 2057, type: !89)
!3023 = distinct !DISubprogram(name: "rpl_realloc", scope: !3024, file: !3024, line: 2057, type: !3016, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3025)
!3024 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3025 = !{!3022, !3026}
!3026 = !DILocalVariable(name: "size", arg: 2, scope: !3023, file: !3024, line: 2057, type: !92)
!3027 = !DILocation(line: 0, scope: !3023, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 70, column: 25, scope: !3015)
!3029 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3028)
!3030 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3028)
!3031 = !DILocation(line: 0, scope: !2948, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 70, column: 10, scope: !3015)
!3033 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3032)
!3034 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3032)
!3035 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3032)
!3036 = !DILocation(line: 70, column: 3, scope: !3015)
!3037 = !DISubprogram(name: "realloc", scope: !931, file: !931, line: 551, type: !3016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3038 = distinct !DISubprogram(name: "xirealloc", scope: !679, file: !679, line: 74, type: !3039, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!89, !89, !698}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !679, line: 74, type: !89)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3038, file: !679, line: 74, type: !698)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !2989, line: 66, type: !89)
!3046 = distinct !DISubprogram(name: "irealloc", scope: !2989, file: !2989, line: 66, type: !3039, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3047)
!3047 = !{!3045, !3048}
!3048 = !DILocalVariable(name: "s", arg: 2, scope: !3046, file: !2989, line: 66, type: !698)
!3049 = !DILocation(line: 0, scope: !3046, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 76, column: 25, scope: !3038)
!3051 = !DILocation(line: 0, scope: !3023, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 68, column: 26, scope: !3046, inlinedAt: !3050)
!3053 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3052)
!3054 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3052)
!3055 = !DILocation(line: 0, scope: !2948, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 76, column: 10, scope: !3038)
!3057 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3056)
!3060 = !DILocation(line: 76, column: 3, scope: !3038)
!3061 = distinct !DISubprogram(name: "xireallocarray", scope: !679, file: !679, line: 89, type: !3062, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!89, !89, !698, !698}
!3064 = !{!3065, !3066, !3067}
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3061, file: !679, line: 89, type: !89)
!3066 = !DILocalVariable(name: "n", arg: 2, scope: !3061, file: !679, line: 89, type: !698)
!3067 = !DILocalVariable(name: "s", arg: 3, scope: !3061, file: !679, line: 89, type: !698)
!3068 = !DILocation(line: 0, scope: !3061)
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !2989, line: 98, type: !89)
!3070 = distinct !DISubprogram(name: "ireallocarray", scope: !2989, file: !2989, line: 98, type: !3062, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3071)
!3071 = !{!3069, !3072, !3073}
!3072 = !DILocalVariable(name: "n", arg: 2, scope: !3070, file: !2989, line: 98, type: !698)
!3073 = !DILocalVariable(name: "s", arg: 3, scope: !3070, file: !2989, line: 98, type: !698)
!3074 = !DILocation(line: 0, scope: !3070, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 91, column: 25, scope: !3061)
!3076 = !DILocation(line: 101, column: 13, scope: !3070, inlinedAt: !3075)
!3077 = !DILocation(line: 0, scope: !2948, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 91, column: 10, scope: !3061)
!3079 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3078)
!3082 = !DILocation(line: 91, column: 3, scope: !3061)
!3083 = distinct !DISubprogram(name: "xnmalloc", scope: !679, file: !679, line: 98, type: !3084, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!89, !92, !92}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !679, line: 98, type: !92)
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !679, line: 98, type: !92)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 0, scope: !2940, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 100, column: 10, scope: !3083)
!3092 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !2948, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3091)
!3095 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3094)
!3096 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3094)
!3097 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3094)
!3098 = !DILocation(line: 100, column: 3, scope: !3083)
!3099 = distinct !DISubprogram(name: "xinmalloc", scope: !679, file: !679, line: 104, type: !3100, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!89, !698, !698}
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "n", arg: 1, scope: !3099, file: !679, line: 104, type: !698)
!3104 = !DILocalVariable(name: "s", arg: 2, scope: !3099, file: !679, line: 104, type: !698)
!3105 = !DILocation(line: 0, scope: !3099)
!3106 = !DILocation(line: 0, scope: !3061, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 106, column: 10, scope: !3099)
!3108 = !DILocation(line: 0, scope: !3070, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 91, column: 25, scope: !3061, inlinedAt: !3107)
!3110 = !DILocation(line: 101, column: 13, scope: !3070, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !2948, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 91, column: 10, scope: !3061, inlinedAt: !3107)
!3113 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3112)
!3114 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3112)
!3115 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3112)
!3116 = !DILocation(line: 106, column: 3, scope: !3099)
!3117 = distinct !DISubprogram(name: "x2realloc", scope: !679, file: !679, line: 116, type: !3118, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!89, !89, !685}
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3117, file: !679, line: 116, type: !89)
!3122 = !DILocalVariable(name: "ps", arg: 2, scope: !3117, file: !679, line: 116, type: !685)
!3123 = !DILocation(line: 0, scope: !3117)
!3124 = !DILocation(line: 0, scope: !682, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 118, column: 10, scope: !3117)
!3126 = !DILocation(line: 178, column: 14, scope: !682, inlinedAt: !3125)
!3127 = !DILocation(line: 180, column: 9, scope: !3128, inlinedAt: !3125)
!3128 = distinct !DILexicalBlock(scope: !682, file: !679, line: 180, column: 7)
!3129 = !DILocation(line: 180, column: 7, scope: !682, inlinedAt: !3125)
!3130 = !DILocation(line: 182, column: 13, scope: !3131, inlinedAt: !3125)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !679, line: 182, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !679, line: 181, column: 5)
!3133 = !DILocation(line: 182, column: 11, scope: !3132, inlinedAt: !3125)
!3134 = !DILocation(line: 197, column: 11, scope: !3135, inlinedAt: !3125)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !679, line: 197, column: 11)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !679, line: 195, column: 5)
!3137 = !DILocation(line: 197, column: 11, scope: !3136, inlinedAt: !3125)
!3138 = !DILocation(line: 198, column: 9, scope: !3135, inlinedAt: !3125)
!3139 = !DILocation(line: 0, scope: !2940, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 201, column: 7, scope: !682, inlinedAt: !3125)
!3141 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !2948, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3140)
!3144 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3143)
!3147 = !DILocation(line: 202, column: 7, scope: !682, inlinedAt: !3125)
!3148 = !DILocation(line: 118, column: 3, scope: !3117)
!3149 = !DILocation(line: 0, scope: !682)
!3150 = !DILocation(line: 178, column: 14, scope: !682)
!3151 = !DILocation(line: 180, column: 9, scope: !3128)
!3152 = !DILocation(line: 180, column: 7, scope: !682)
!3153 = !DILocation(line: 182, column: 13, scope: !3131)
!3154 = !DILocation(line: 182, column: 11, scope: !3132)
!3155 = !DILocation(line: 190, column: 30, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3131, file: !679, line: 183, column: 9)
!3157 = !DILocation(line: 191, column: 16, scope: !3156)
!3158 = !DILocation(line: 191, column: 13, scope: !3156)
!3159 = !DILocation(line: 192, column: 9, scope: !3156)
!3160 = !DILocation(line: 197, column: 11, scope: !3135)
!3161 = !DILocation(line: 197, column: 11, scope: !3136)
!3162 = !DILocation(line: 198, column: 9, scope: !3135)
!3163 = !DILocation(line: 0, scope: !2940, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 201, column: 7, scope: !682)
!3165 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3164)
!3166 = !DILocation(line: 0, scope: !2948, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3164)
!3168 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3167)
!3169 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3167)
!3170 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3167)
!3171 = !DILocation(line: 202, column: 7, scope: !682)
!3172 = !DILocation(line: 203, column: 3, scope: !682)
!3173 = !DILocation(line: 0, scope: !694)
!3174 = !DILocation(line: 230, column: 14, scope: !694)
!3175 = !DILocation(line: 238, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !694, file: !679, line: 238, column: 7)
!3177 = !DILocation(line: 238, column: 7, scope: !694)
!3178 = !DILocation(line: 240, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !694, file: !679, line: 240, column: 7)
!3180 = !DILocation(line: 240, column: 18, scope: !3179)
!3181 = !DILocation(line: 253, column: 8, scope: !694)
!3182 = !DILocation(line: 256, column: 7, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !694, file: !679, line: 256, column: 7)
!3184 = !DILocation(line: 256, column: 7, scope: !694)
!3185 = !DILocation(line: 258, column: 27, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !679, line: 257, column: 5)
!3187 = !DILocation(line: 259, column: 32, scope: !3186)
!3188 = !DILocation(line: 260, column: 5, scope: !3186)
!3189 = !DILocation(line: 262, column: 9, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !694, file: !679, line: 262, column: 7)
!3191 = !DILocation(line: 262, column: 7, scope: !694)
!3192 = !DILocation(line: 263, column: 9, scope: !3190)
!3193 = !DILocation(line: 263, column: 5, scope: !3190)
!3194 = !DILocation(line: 264, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !694, file: !679, line: 264, column: 7)
!3196 = !DILocation(line: 264, column: 14, scope: !3195)
!3197 = !DILocation(line: 265, column: 7, scope: !3195)
!3198 = !DILocation(line: 265, column: 11, scope: !3195)
!3199 = !DILocation(line: 266, column: 11, scope: !3195)
!3200 = !DILocation(line: 267, column: 14, scope: !3195)
!3201 = !DILocation(line: 264, column: 7, scope: !694)
!3202 = !DILocation(line: 268, column: 5, scope: !3195)
!3203 = !DILocation(line: 0, scope: !3015, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 269, column: 8, scope: !694)
!3205 = !DILocation(line: 0, scope: !3023, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 70, column: 25, scope: !3015, inlinedAt: !3204)
!3207 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3206)
!3208 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3206)
!3209 = !DILocation(line: 0, scope: !2948, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 70, column: 10, scope: !3015, inlinedAt: !3204)
!3211 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3210)
!3214 = !DILocation(line: 270, column: 7, scope: !694)
!3215 = !DILocation(line: 271, column: 3, scope: !694)
!3216 = distinct !DISubprogram(name: "xzalloc", scope: !679, file: !679, line: 279, type: !2968, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3217)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3216, file: !679, line: 279, type: !92)
!3219 = !DILocation(line: 0, scope: !3216)
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !679, line: 294, type: !92)
!3221 = distinct !DISubprogram(name: "xcalloc", scope: !679, file: !679, line: 294, type: !3084, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !679, line: 294, type: !92)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 281, column: 10, scope: !3216)
!3226 = !DILocation(line: 296, column: 25, scope: !3221, inlinedAt: !3225)
!3227 = !DILocation(line: 0, scope: !2948, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 296, column: 10, scope: !3221, inlinedAt: !3225)
!3229 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3228)
!3230 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3228)
!3231 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3228)
!3232 = !DILocation(line: 281, column: 3, scope: !3216)
!3233 = !DISubprogram(name: "calloc", scope: !931, file: !931, line: 543, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3234 = !DILocation(line: 0, scope: !3221)
!3235 = !DILocation(line: 296, column: 25, scope: !3221)
!3236 = !DILocation(line: 0, scope: !2948, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 296, column: 10, scope: !3221)
!3238 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3237)
!3241 = !DILocation(line: 296, column: 3, scope: !3221)
!3242 = distinct !DISubprogram(name: "xizalloc", scope: !679, file: !679, line: 285, type: !2982, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3243)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "s", arg: 1, scope: !3242, file: !679, line: 285, type: !698)
!3245 = !DILocation(line: 0, scope: !3242)
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !679, line: 300, type: !698)
!3247 = distinct !DISubprogram(name: "xicalloc", scope: !679, file: !679, line: 300, type: !3100, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3248)
!3248 = !{!3246, !3249}
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !679, line: 300, type: !698)
!3250 = !DILocation(line: 0, scope: !3247, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 287, column: 10, scope: !3242)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !2989, line: 77, type: !698)
!3253 = distinct !DISubprogram(name: "icalloc", scope: !2989, file: !2989, line: 77, type: !3100, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3254)
!3254 = !{!3252, !3255}
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !2989, line: 77, type: !698)
!3256 = !DILocation(line: 0, scope: !3253, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 302, column: 25, scope: !3247, inlinedAt: !3251)
!3258 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3257)
!3259 = !DILocation(line: 0, scope: !2948, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 302, column: 10, scope: !3247, inlinedAt: !3251)
!3261 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3260)
!3264 = !DILocation(line: 287, column: 3, scope: !3242)
!3265 = !DILocation(line: 0, scope: !3247)
!3266 = !DILocation(line: 0, scope: !3253, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 302, column: 25, scope: !3247)
!3268 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2948, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 302, column: 10, scope: !3247)
!3271 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3270)
!3274 = !DILocation(line: 302, column: 3, scope: !3247)
!3275 = distinct !DISubprogram(name: "xmemdup", scope: !679, file: !679, line: 310, type: !3276, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!89, !955, !92}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !679, line: 310, type: !955)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !679, line: 310, type: !92)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 0, scope: !2967, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 312, column: 18, scope: !3275)
!3284 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3283)
!3285 = !DILocation(line: 0, scope: !2948, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3283)
!3287 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3286)
!3288 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3286)
!3289 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3286)
!3290 = !DILocalVariable(name: "__dest", arg: 1, scope: !3291, file: !1422, line: 26, type: !3294)
!3291 = distinct !DISubprogram(name: "memcpy", scope: !1422, file: !1422, line: 26, type: !3292, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3295)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!89, !3294, !954, !92}
!3294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!3295 = !{!3290, !3296, !3297}
!3296 = !DILocalVariable(name: "__src", arg: 2, scope: !3291, file: !1422, line: 26, type: !954)
!3297 = !DILocalVariable(name: "__len", arg: 3, scope: !3291, file: !1422, line: 26, type: !92)
!3298 = !DILocation(line: 0, scope: !3291, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 312, column: 10, scope: !3275)
!3300 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3299)
!3301 = !DILocation(line: 312, column: 3, scope: !3275)
!3302 = distinct !DISubprogram(name: "ximemdup", scope: !679, file: !679, line: 316, type: !3303, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!89, !955, !698}
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "p", arg: 1, scope: !3302, file: !679, line: 316, type: !955)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !679, line: 316, type: !698)
!3308 = !DILocation(line: 0, scope: !3302)
!3309 = !DILocation(line: 0, scope: !2981, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 318, column: 18, scope: !3302)
!3311 = !DILocation(line: 0, scope: !2988, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 55, column: 25, scope: !2981, inlinedAt: !3310)
!3313 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !3312)
!3314 = !DILocation(line: 0, scope: !2948, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 55, column: 10, scope: !2981, inlinedAt: !3310)
!3316 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3315)
!3317 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3315)
!3318 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3315)
!3319 = !DILocation(line: 0, scope: !3291, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 318, column: 10, scope: !3302)
!3321 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3320)
!3322 = !DILocation(line: 318, column: 3, scope: !3302)
!3323 = distinct !DISubprogram(name: "ximemdup0", scope: !679, file: !679, line: 325, type: !3324, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!237, !955, !698}
!3326 = !{!3327, !3328, !3329}
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !679, line: 325, type: !955)
!3328 = !DILocalVariable(name: "s", arg: 2, scope: !3323, file: !679, line: 325, type: !698)
!3329 = !DILocalVariable(name: "result", scope: !3323, file: !679, line: 327, type: !237)
!3330 = !DILocation(line: 0, scope: !3323)
!3331 = !DILocation(line: 327, column: 30, scope: !3323)
!3332 = !DILocation(line: 0, scope: !2981, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 327, column: 18, scope: !3323)
!3334 = !DILocation(line: 0, scope: !2988, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 55, column: 25, scope: !2981, inlinedAt: !3333)
!3336 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !3335)
!3337 = !DILocation(line: 0, scope: !2948, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 55, column: 10, scope: !2981, inlinedAt: !3333)
!3339 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3338)
!3340 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3338)
!3341 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3338)
!3342 = !DILocation(line: 328, column: 3, scope: !3323)
!3343 = !DILocation(line: 328, column: 13, scope: !3323)
!3344 = !DILocation(line: 0, scope: !3291, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 329, column: 10, scope: !3323)
!3346 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3345)
!3347 = !DILocation(line: 329, column: 3, scope: !3323)
!3348 = distinct !DISubprogram(name: "xstrdup", scope: !679, file: !679, line: 335, type: !933, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "string", arg: 1, scope: !3348, file: !679, line: 335, type: !68)
!3351 = !DILocation(line: 0, scope: !3348)
!3352 = !DILocation(line: 337, column: 27, scope: !3348)
!3353 = !DILocation(line: 337, column: 43, scope: !3348)
!3354 = !DILocation(line: 0, scope: !3275, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 337, column: 10, scope: !3348)
!3356 = !DILocation(line: 0, scope: !2967, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 312, column: 18, scope: !3275, inlinedAt: !3355)
!3358 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3357)
!3359 = !DILocation(line: 0, scope: !2948, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3357)
!3361 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3360)
!3362 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3360)
!3363 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3360)
!3364 = !DILocation(line: 0, scope: !3291, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 312, column: 10, scope: !3275, inlinedAt: !3355)
!3366 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3365)
!3367 = !DILocation(line: 337, column: 3, scope: !3348)
!3368 = distinct !DISubprogram(name: "xalloc_die", scope: !642, file: !642, line: 32, type: !364, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3369)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "__errstatus", scope: !3371, file: !642, line: 34, type: !3372)
!3371 = distinct !DILexicalBlock(scope: !3368, file: !642, line: 34, column: 3)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3373 = !DILocation(line: 34, column: 3, scope: !3371)
!3374 = !DILocation(line: 0, scope: !3371)
!3375 = !DILocation(line: 40, column: 3, scope: !3368)
!3376 = distinct !DISubprogram(name: "close_stream", scope: !716, file: !716, line: 55, type: !3377, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3413)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!90, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3381, file: !233, line: 51, baseType: !90, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3381, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3381, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3381, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3381, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3381, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3381, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3381, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3381, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3381, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3381, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3381, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3381, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3381, file: !233, line: 70, baseType: !3397, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3381, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3381, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3381, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3381, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3381, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3381, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3381, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3381, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3381, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3381, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3381, file: !233, line: 93, baseType: !3397, size: 64, offset: 1344)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3381, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3381, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3381, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3381, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3413 = !{!3414, !3415, !3417, !3418}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !716, line: 55, type: !3379)
!3415 = !DILocalVariable(name: "some_pending", scope: !3376, file: !716, line: 57, type: !3416)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!3417 = !DILocalVariable(name: "prev_fail", scope: !3376, file: !716, line: 58, type: !3416)
!3418 = !DILocalVariable(name: "fclose_fail", scope: !3376, file: !716, line: 59, type: !3416)
!3419 = !DILocation(line: 0, scope: !3376)
!3420 = !DILocation(line: 57, column: 30, scope: !3376)
!3421 = !DILocalVariable(name: "__stream", arg: 1, scope: !3422, file: !1172, line: 135, type: !3379)
!3422 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1172, file: !1172, line: 135, type: !3377, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3423)
!3423 = !{!3421}
!3424 = !DILocation(line: 0, scope: !3422, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 58, column: 27, scope: !3376)
!3426 = !DILocation(line: 137, column: 10, scope: !3422, inlinedAt: !3425)
!3427 = !{!1181, !808, i64 0}
!3428 = !DILocation(line: 58, column: 43, scope: !3376)
!3429 = !DILocation(line: 59, column: 29, scope: !3376)
!3430 = !DILocation(line: 59, column: 45, scope: !3376)
!3431 = !DILocation(line: 69, column: 17, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3376, file: !716, line: 69, column: 7)
!3433 = !DILocation(line: 57, column: 50, scope: !3376)
!3434 = !DILocation(line: 69, column: 33, scope: !3432)
!3435 = !DILocation(line: 69, column: 53, scope: !3432)
!3436 = !DILocation(line: 69, column: 59, scope: !3432)
!3437 = !DILocation(line: 69, column: 7, scope: !3376)
!3438 = !DILocation(line: 71, column: 11, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3432, file: !716, line: 70, column: 5)
!3440 = !DILocation(line: 72, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3439, file: !716, line: 71, column: 11)
!3442 = !DILocation(line: 72, column: 15, scope: !3441)
!3443 = !DILocation(line: 77, column: 1, scope: !3376)
!3444 = !DISubprogram(name: "__fpending", scope: !3445, file: !3445, line: 75, type: !3446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3445 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!92, !3379}
!3448 = distinct !DISubprogram(name: "rpl_fclose", scope: !718, file: !718, line: 58, type: !3449, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3485)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!90, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3453)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3454)
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3453, file: !233, line: 51, baseType: !90, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3453, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3453, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3453, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3453, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3453, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3453, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3453, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3453, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3453, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3453, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3453, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3453, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3453, file: !233, line: 70, baseType: !3469, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3453, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3453, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3453, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3453, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3453, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3453, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3453, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3453, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3453, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3453, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3453, file: !233, line: 93, baseType: !3469, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3453, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3453, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3453, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3453, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DILocalVariable(name: "fp", arg: 1, scope: !3448, file: !718, line: 58, type: !3451)
!3487 = !DILocalVariable(name: "saved_errno", scope: !3448, file: !718, line: 60, type: !90)
!3488 = !DILocalVariable(name: "fd", scope: !3448, file: !718, line: 63, type: !90)
!3489 = !DILocalVariable(name: "result", scope: !3448, file: !718, line: 74, type: !90)
!3490 = !DILocation(line: 0, scope: !3448)
!3491 = !DILocation(line: 63, column: 12, scope: !3448)
!3492 = !DILocation(line: 64, column: 10, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3448, file: !718, line: 64, column: 7)
!3494 = !DILocation(line: 64, column: 7, scope: !3448)
!3495 = !DILocation(line: 65, column: 12, scope: !3493)
!3496 = !DILocation(line: 65, column: 5, scope: !3493)
!3497 = !DILocation(line: 70, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3448, file: !718, line: 70, column: 7)
!3499 = !DILocation(line: 70, column: 23, scope: !3498)
!3500 = !DILocation(line: 70, column: 33, scope: !3498)
!3501 = !DILocation(line: 70, column: 26, scope: !3498)
!3502 = !DILocation(line: 70, column: 59, scope: !3498)
!3503 = !DILocation(line: 71, column: 7, scope: !3498)
!3504 = !DILocation(line: 71, column: 10, scope: !3498)
!3505 = !DILocation(line: 70, column: 7, scope: !3448)
!3506 = !DILocation(line: 100, column: 12, scope: !3448)
!3507 = !DILocation(line: 105, column: 7, scope: !3448)
!3508 = !DILocation(line: 72, column: 19, scope: !3498)
!3509 = !DILocation(line: 105, column: 19, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3448, file: !718, line: 105, column: 7)
!3511 = !DILocation(line: 107, column: 13, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3510, file: !718, line: 106, column: 5)
!3513 = !DILocation(line: 109, column: 5, scope: !3512)
!3514 = !DILocation(line: 112, column: 1, scope: !3448)
!3515 = !DISubprogram(name: "fileno", scope: !324, file: !324, line: 809, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3516 = !DISubprogram(name: "fclose", scope: !324, file: !324, line: 178, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3517 = !DISubprogram(name: "__freading", scope: !3445, file: !3445, line: 51, type: !3449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3518 = !DISubprogram(name: "lseek", scope: !993, file: !993, line: 339, type: !3519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!256, !90, !256, !90}
!3521 = distinct !DISubprogram(name: "rpl_fflush", scope: !720, file: !720, line: 130, type: !3522, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3558)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!90, !3524}
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3526, file: !233, line: 51, baseType: !90, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3526, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3526, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3526, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3526, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3526, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3526, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3526, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3526, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3526, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3526, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3526, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3526, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3526, file: !233, line: 70, baseType: !3542, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3526, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3526, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3526, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3526, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3526, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3526, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3526, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3526, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3526, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3526, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3526, file: !233, line: 93, baseType: !3542, size: 64, offset: 1344)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3526, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3526, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3526, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3526, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3558 = !{!3559}
!3559 = !DILocalVariable(name: "stream", arg: 1, scope: !3521, file: !720, line: 130, type: !3524)
!3560 = !DILocation(line: 0, scope: !3521)
!3561 = !DILocation(line: 151, column: 14, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3521, file: !720, line: 151, column: 7)
!3563 = !DILocation(line: 151, column: 22, scope: !3562)
!3564 = !DILocation(line: 151, column: 27, scope: !3562)
!3565 = !DILocation(line: 151, column: 7, scope: !3521)
!3566 = !DILocation(line: 152, column: 12, scope: !3562)
!3567 = !DILocation(line: 152, column: 5, scope: !3562)
!3568 = !DILocalVariable(name: "fp", arg: 1, scope: !3569, file: !720, line: 42, type: !3524)
!3569 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !720, file: !720, line: 42, type: !3570, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !3524}
!3572 = !{!3568}
!3573 = !DILocation(line: 0, scope: !3569, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 157, column: 3, scope: !3521)
!3575 = !DILocation(line: 44, column: 12, scope: !3576, inlinedAt: !3574)
!3576 = distinct !DILexicalBlock(scope: !3569, file: !720, line: 44, column: 7)
!3577 = !DILocation(line: 44, column: 19, scope: !3576, inlinedAt: !3574)
!3578 = !DILocation(line: 44, column: 7, scope: !3569, inlinedAt: !3574)
!3579 = !DILocation(line: 46, column: 5, scope: !3576, inlinedAt: !3574)
!3580 = !DILocation(line: 159, column: 10, scope: !3521)
!3581 = !DILocation(line: 159, column: 3, scope: !3521)
!3582 = !DILocation(line: 236, column: 1, scope: !3521)
!3583 = !DISubprogram(name: "fflush", scope: !324, file: !324, line: 230, type: !3522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3584 = distinct !DISubprogram(name: "rpl_fseeko", scope: !722, file: !722, line: 28, type: !3585, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3622)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!90, !3587, !3621, !90}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !231, line: 7, baseType: !3589)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !233, line: 49, size: 1728, elements: !3590)
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3589, file: !233, line: 51, baseType: !90, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3589, file: !233, line: 54, baseType: !237, size: 64, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3589, file: !233, line: 55, baseType: !237, size: 64, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3589, file: !233, line: 56, baseType: !237, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3589, file: !233, line: 57, baseType: !237, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3589, file: !233, line: 58, baseType: !237, size: 64, offset: 320)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3589, file: !233, line: 59, baseType: !237, size: 64, offset: 384)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3589, file: !233, line: 60, baseType: !237, size: 64, offset: 448)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3589, file: !233, line: 61, baseType: !237, size: 64, offset: 512)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3589, file: !233, line: 64, baseType: !237, size: 64, offset: 576)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3589, file: !233, line: 65, baseType: !237, size: 64, offset: 640)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3589, file: !233, line: 66, baseType: !237, size: 64, offset: 704)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3589, file: !233, line: 68, baseType: !249, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3589, file: !233, line: 70, baseType: !3605, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3589, file: !233, line: 72, baseType: !90, size: 32, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3589, file: !233, line: 73, baseType: !90, size: 32, offset: 928)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3589, file: !233, line: 74, baseType: !256, size: 64, offset: 960)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3589, file: !233, line: 77, baseType: !91, size: 16, offset: 1024)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3589, file: !233, line: 78, baseType: !261, size: 8, offset: 1040)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3589, file: !233, line: 79, baseType: !29, size: 8, offset: 1048)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3589, file: !233, line: 81, baseType: !264, size: 64, offset: 1088)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3589, file: !233, line: 89, baseType: !267, size: 64, offset: 1152)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3589, file: !233, line: 91, baseType: !269, size: 64, offset: 1216)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3589, file: !233, line: 92, baseType: !272, size: 64, offset: 1280)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3589, file: !233, line: 93, baseType: !3605, size: 64, offset: 1344)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3589, file: !233, line: 94, baseType: !89, size: 64, offset: 1408)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3589, file: !233, line: 95, baseType: !92, size: 64, offset: 1472)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3589, file: !233, line: 96, baseType: !90, size: 32, offset: 1536)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3589, file: !233, line: 98, baseType: !279, size: 160, offset: 1568)
!3621 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !324, line: 63, baseType: !256)
!3622 = !{!3623, !3624, !3625, !3626}
!3623 = !DILocalVariable(name: "fp", arg: 1, scope: !3584, file: !722, line: 28, type: !3587)
!3624 = !DILocalVariable(name: "offset", arg: 2, scope: !3584, file: !722, line: 28, type: !3621)
!3625 = !DILocalVariable(name: "whence", arg: 3, scope: !3584, file: !722, line: 28, type: !90)
!3626 = !DILocalVariable(name: "pos", scope: !3627, file: !722, line: 123, type: !3621)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !722, line: 119, column: 5)
!3628 = distinct !DILexicalBlock(scope: !3584, file: !722, line: 55, column: 7)
!3629 = !DILocation(line: 0, scope: !3584)
!3630 = !DILocation(line: 55, column: 12, scope: !3628)
!3631 = !{!1181, !752, i64 16}
!3632 = !DILocation(line: 55, column: 33, scope: !3628)
!3633 = !{!1181, !752, i64 8}
!3634 = !DILocation(line: 55, column: 25, scope: !3628)
!3635 = !DILocation(line: 56, column: 7, scope: !3628)
!3636 = !DILocation(line: 56, column: 15, scope: !3628)
!3637 = !DILocation(line: 56, column: 37, scope: !3628)
!3638 = !{!1181, !752, i64 32}
!3639 = !DILocation(line: 56, column: 29, scope: !3628)
!3640 = !DILocation(line: 57, column: 7, scope: !3628)
!3641 = !DILocation(line: 57, column: 15, scope: !3628)
!3642 = !{!1181, !752, i64 72}
!3643 = !DILocation(line: 57, column: 29, scope: !3628)
!3644 = !DILocation(line: 55, column: 7, scope: !3584)
!3645 = !DILocation(line: 123, column: 26, scope: !3627)
!3646 = !DILocation(line: 123, column: 19, scope: !3627)
!3647 = !DILocation(line: 0, scope: !3627)
!3648 = !DILocation(line: 124, column: 15, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3627, file: !722, line: 124, column: 11)
!3650 = !DILocation(line: 124, column: 11, scope: !3627)
!3651 = !DILocation(line: 135, column: 19, scope: !3627)
!3652 = !DILocation(line: 136, column: 12, scope: !3627)
!3653 = !DILocation(line: 136, column: 20, scope: !3627)
!3654 = !{!1181, !1182, i64 144}
!3655 = !DILocation(line: 167, column: 7, scope: !3627)
!3656 = !DILocation(line: 169, column: 10, scope: !3584)
!3657 = !DILocation(line: 169, column: 3, scope: !3584)
!3658 = !DILocation(line: 170, column: 1, scope: !3584)
!3659 = !DISubprogram(name: "fseeko", scope: !324, file: !324, line: 736, type: !3660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!90, !3587, !256, !90}
!3662 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !649, file: !649, line: 100, type: !3663, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3666)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!92, !1440, !68, !92, !3665}
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3666 = !{!3667, !3668, !3669, !3670, !3671}
!3667 = !DILocalVariable(name: "pwc", arg: 1, scope: !3662, file: !649, line: 100, type: !1440)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !649, line: 100, type: !68)
!3669 = !DILocalVariable(name: "n", arg: 3, scope: !3662, file: !649, line: 100, type: !92)
!3670 = !DILocalVariable(name: "ps", arg: 4, scope: !3662, file: !649, line: 100, type: !3665)
!3671 = !DILocalVariable(name: "ret", scope: !3662, file: !649, line: 130, type: !92)
!3672 = !DILocation(line: 0, scope: !3662)
!3673 = !DILocation(line: 105, column: 9, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3662, file: !649, line: 105, column: 7)
!3675 = !DILocation(line: 105, column: 7, scope: !3662)
!3676 = !DILocation(line: 117, column: 10, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3662, file: !649, line: 117, column: 7)
!3678 = !DILocation(line: 117, column: 7, scope: !3662)
!3679 = !DILocation(line: 130, column: 16, scope: !3662)
!3680 = !DILocation(line: 135, column: 11, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3662, file: !649, line: 135, column: 7)
!3682 = !DILocation(line: 135, column: 25, scope: !3681)
!3683 = !DILocation(line: 135, column: 30, scope: !3681)
!3684 = !DILocation(line: 135, column: 7, scope: !3662)
!3685 = !DILocalVariable(name: "ps", arg: 1, scope: !3686, file: !1413, line: 1135, type: !3665)
!3686 = distinct !DISubprogram(name: "mbszero", scope: !1413, file: !1413, line: 1135, type: !3687, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3689)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{null, !3665}
!3689 = !{!3685}
!3690 = !DILocation(line: 0, scope: !3686, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 137, column: 5, scope: !3681)
!3692 = !DILocalVariable(name: "__dest", arg: 1, scope: !3693, file: !1422, line: 57, type: !89)
!3693 = distinct !DISubprogram(name: "memset", scope: !1422, file: !1422, line: 57, type: !1423, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !652, retainedNodes: !3694)
!3694 = !{!3692, !3695, !3696}
!3695 = !DILocalVariable(name: "__ch", arg: 2, scope: !3693, file: !1422, line: 57, type: !90)
!3696 = !DILocalVariable(name: "__len", arg: 3, scope: !3693, file: !1422, line: 57, type: !92)
!3697 = !DILocation(line: 0, scope: !3693, inlinedAt: !3698)
!3698 = distinct !DILocation(line: 1137, column: 3, scope: !3686, inlinedAt: !3691)
!3699 = !DILocation(line: 59, column: 10, scope: !3693, inlinedAt: !3698)
!3700 = !DILocation(line: 137, column: 5, scope: !3681)
!3701 = !DILocation(line: 138, column: 11, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3662, file: !649, line: 138, column: 7)
!3703 = !DILocation(line: 138, column: 7, scope: !3662)
!3704 = !DILocation(line: 139, column: 5, scope: !3702)
!3705 = !DILocation(line: 143, column: 26, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3662, file: !649, line: 143, column: 7)
!3707 = !DILocation(line: 143, column: 41, scope: !3706)
!3708 = !DILocation(line: 143, column: 7, scope: !3662)
!3709 = !DILocation(line: 145, column: 15, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !649, line: 145, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3706, file: !649, line: 144, column: 5)
!3712 = !DILocation(line: 145, column: 11, scope: !3711)
!3713 = !DILocation(line: 146, column: 32, scope: !3710)
!3714 = !DILocation(line: 146, column: 16, scope: !3710)
!3715 = !DILocation(line: 146, column: 14, scope: !3710)
!3716 = !DILocation(line: 146, column: 9, scope: !3710)
!3717 = !DILocation(line: 286, column: 1, scope: !3662)
!3718 = !DISubprogram(name: "mbsinit", scope: !3719, file: !3719, line: 293, type: !3720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3719 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!90, !3722}
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!3724 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !724, file: !724, line: 27, type: !2932, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3725)
!3725 = !{!3726, !3727, !3728, !3729}
!3726 = !DILocalVariable(name: "ptr", arg: 1, scope: !3724, file: !724, line: 27, type: !89)
!3727 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3724, file: !724, line: 27, type: !92)
!3728 = !DILocalVariable(name: "size", arg: 3, scope: !3724, file: !724, line: 27, type: !92)
!3729 = !DILocalVariable(name: "nbytes", scope: !3724, file: !724, line: 29, type: !92)
!3730 = !DILocation(line: 0, scope: !3724)
!3731 = !DILocation(line: 30, column: 7, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3724, file: !724, line: 30, column: 7)
!3733 = !DILocation(line: 30, column: 7, scope: !3724)
!3734 = !DILocation(line: 32, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3732, file: !724, line: 31, column: 5)
!3736 = !DILocation(line: 32, column: 13, scope: !3735)
!3737 = !DILocation(line: 33, column: 7, scope: !3735)
!3738 = !DILocalVariable(name: "ptr", arg: 1, scope: !3739, file: !3024, line: 2057, type: !89)
!3739 = distinct !DISubprogram(name: "rpl_realloc", scope: !3024, file: !3024, line: 2057, type: !3016, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3740)
!3740 = !{!3738, !3741}
!3741 = !DILocalVariable(name: "size", arg: 2, scope: !3739, file: !3024, line: 2057, type: !92)
!3742 = !DILocation(line: 0, scope: !3739, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 37, column: 10, scope: !3724)
!3744 = !DILocation(line: 2059, column: 24, scope: !3739, inlinedAt: !3743)
!3745 = !DILocation(line: 2059, column: 10, scope: !3739, inlinedAt: !3743)
!3746 = !DILocation(line: 37, column: 3, scope: !3724)
!3747 = !DILocation(line: 38, column: 1, scope: !3724)
!3748 = distinct !DISubprogram(name: "hard_locale", scope: !667, file: !667, line: 28, type: !3749, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!216, !90}
!3751 = !{!3752, !3753}
!3752 = !DILocalVariable(name: "category", arg: 1, scope: !3748, file: !667, line: 28, type: !90)
!3753 = !DILocalVariable(name: "locale", scope: !3748, file: !667, line: 30, type: !3754)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3755)
!3755 = !{!3756}
!3756 = !DISubrange(count: 257)
!3757 = distinct !DIAssignID()
!3758 = !DILocation(line: 0, scope: !3748)
!3759 = !DILocation(line: 30, column: 3, scope: !3748)
!3760 = !DILocation(line: 32, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3748, file: !667, line: 32, column: 7)
!3762 = !DILocation(line: 32, column: 7, scope: !3748)
!3763 = !DILocalVariable(name: "__s1", arg: 1, scope: !3764, file: !820, line: 1359, type: !68)
!3764 = distinct !DISubprogram(name: "streq", scope: !820, file: !820, line: 1359, type: !821, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3765)
!3765 = !{!3763, !3766}
!3766 = !DILocalVariable(name: "__s2", arg: 2, scope: !3764, file: !820, line: 1359, type: !68)
!3767 = !DILocation(line: 0, scope: !3764, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 35, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3748, file: !667, line: 35, column: 7)
!3770 = !DILocation(line: 1361, column: 11, scope: !3764, inlinedAt: !3768)
!3771 = !DILocation(line: 1361, column: 10, scope: !3764, inlinedAt: !3768)
!3772 = !DILocation(line: 35, column: 29, scope: !3769)
!3773 = !DILocation(line: 0, scope: !3764, inlinedAt: !3774)
!3774 = distinct !DILocation(line: 35, column: 32, scope: !3769)
!3775 = !DILocation(line: 1361, column: 11, scope: !3764, inlinedAt: !3774)
!3776 = !DILocation(line: 1361, column: 10, scope: !3764, inlinedAt: !3774)
!3777 = !DILocation(line: 35, column: 7, scope: !3748)
!3778 = !DILocation(line: 46, column: 3, scope: !3748)
!3779 = !DILocation(line: 47, column: 1, scope: !3748)
!3780 = distinct !DISubprogram(name: "setlocale_null_r", scope: !728, file: !728, line: 154, type: !3781, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!90, !90, !237, !92}
!3783 = !{!3784, !3785, !3786}
!3784 = !DILocalVariable(name: "category", arg: 1, scope: !3780, file: !728, line: 154, type: !90)
!3785 = !DILocalVariable(name: "buf", arg: 2, scope: !3780, file: !728, line: 154, type: !237)
!3786 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3780, file: !728, line: 154, type: !92)
!3787 = !DILocation(line: 0, scope: !3780)
!3788 = !DILocation(line: 159, column: 10, scope: !3780)
!3789 = !DILocation(line: 159, column: 3, scope: !3780)
!3790 = distinct !DISubprogram(name: "setlocale_null", scope: !728, file: !728, line: 186, type: !3791, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!68, !90}
!3793 = !{!3794}
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3790, file: !728, line: 186, type: !90)
!3795 = !DILocation(line: 0, scope: !3790)
!3796 = !DILocation(line: 189, column: 10, scope: !3790)
!3797 = !DILocation(line: 189, column: 3, scope: !3790)
!3798 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !730, file: !730, line: 35, type: !3791, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3799)
!3799 = !{!3800, !3801}
!3800 = !DILocalVariable(name: "category", arg: 1, scope: !3798, file: !730, line: 35, type: !90)
!3801 = !DILocalVariable(name: "result", scope: !3798, file: !730, line: 37, type: !68)
!3802 = !DILocation(line: 0, scope: !3798)
!3803 = !DILocation(line: 37, column: 24, scope: !3798)
!3804 = !DILocation(line: 62, column: 3, scope: !3798)
!3805 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !730, file: !730, line: 66, type: !3781, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3806)
!3806 = !{!3807, !3808, !3809, !3810, !3811}
!3807 = !DILocalVariable(name: "category", arg: 1, scope: !3805, file: !730, line: 66, type: !90)
!3808 = !DILocalVariable(name: "buf", arg: 2, scope: !3805, file: !730, line: 66, type: !237)
!3809 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3805, file: !730, line: 66, type: !92)
!3810 = !DILocalVariable(name: "result", scope: !3805, file: !730, line: 111, type: !68)
!3811 = !DILocalVariable(name: "length", scope: !3812, file: !730, line: 125, type: !92)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !730, line: 124, column: 5)
!3813 = distinct !DILexicalBlock(scope: !3805, file: !730, line: 113, column: 7)
!3814 = !DILocation(line: 0, scope: !3805)
!3815 = !DILocation(line: 0, scope: !3798, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 111, column: 24, scope: !3805)
!3817 = !DILocation(line: 37, column: 24, scope: !3798, inlinedAt: !3816)
!3818 = !DILocation(line: 113, column: 14, scope: !3813)
!3819 = !DILocation(line: 113, column: 7, scope: !3805)
!3820 = !DILocation(line: 116, column: 19, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !730, line: 116, column: 11)
!3822 = distinct !DILexicalBlock(scope: !3813, file: !730, line: 114, column: 5)
!3823 = !DILocation(line: 116, column: 11, scope: !3822)
!3824 = !DILocation(line: 120, column: 16, scope: !3821)
!3825 = !DILocation(line: 120, column: 9, scope: !3821)
!3826 = !DILocation(line: 125, column: 23, scope: !3812)
!3827 = !DILocation(line: 0, scope: !3812)
!3828 = !DILocation(line: 126, column: 18, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3812, file: !730, line: 126, column: 11)
!3830 = !DILocation(line: 126, column: 11, scope: !3812)
!3831 = !DILocation(line: 128, column: 39, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3829, file: !730, line: 127, column: 9)
!3833 = !DILocalVariable(name: "__dest", arg: 1, scope: !3834, file: !1422, line: 26, type: !3294)
!3834 = distinct !DISubprogram(name: "memcpy", scope: !1422, file: !1422, line: 26, type: !3292, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3835)
!3835 = !{!3833, !3836, !3837}
!3836 = !DILocalVariable(name: "__src", arg: 2, scope: !3834, file: !1422, line: 26, type: !954)
!3837 = !DILocalVariable(name: "__len", arg: 3, scope: !3834, file: !1422, line: 26, type: !92)
!3838 = !DILocation(line: 0, scope: !3834, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 128, column: 11, scope: !3832)
!3840 = !DILocation(line: 29, column: 10, scope: !3834, inlinedAt: !3839)
!3841 = !DILocation(line: 129, column: 11, scope: !3832)
!3842 = !DILocation(line: 133, column: 23, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !730, line: 133, column: 15)
!3844 = distinct !DILexicalBlock(scope: !3829, file: !730, line: 132, column: 9)
!3845 = !DILocation(line: 133, column: 15, scope: !3844)
!3846 = !DILocation(line: 138, column: 44, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !730, line: 134, column: 13)
!3848 = !DILocation(line: 0, scope: !3834, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 138, column: 15, scope: !3847)
!3850 = !DILocation(line: 29, column: 10, scope: !3834, inlinedAt: !3849)
!3851 = !DILocation(line: 139, column: 15, scope: !3847)
!3852 = !DILocation(line: 139, column: 32, scope: !3847)
!3853 = !DILocation(line: 140, column: 13, scope: !3847)
!3854 = !DILocation(line: 0, scope: !3813)
!3855 = !DILocation(line: 145, column: 1, scope: !3805)
