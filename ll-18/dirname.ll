; ModuleID = 'src/dirname.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [28 x i8] c"Usage: %s [OPTION] NAME...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [152 x i8] c"Output each NAME with its last non-slash component and trailing slashes\0Aremoved; if NAME contains no /'s, output '.' (meaning the current directory).\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"dirname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [66 x i8] c"  -z, --zero\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [130 x i8] c"\0AExamples:\0A  %s /usr/bin/          -> \22/usr\22\0A  %s dir1/str dir2/str  -> \22dir1\22 followed by \22dir2\22\0A  %s stdio.h            -> \22.\22\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"z\00", align 1, !dbg !57
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.51, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !62
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !99
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1, !dbg !109
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !114
@main.dot = internal constant i8 46, align 1, !dbg !116
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !194
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !224
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !229
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !231
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !236
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !273
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !275
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !277
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !282
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !287
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !292
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !297
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !299
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !301
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !303
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !314
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !316
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !321
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !326
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !331
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !336
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !338
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !340
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !352
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !355
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !359
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !372
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !364
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !366
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !368
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !370
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !374
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !380
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !416
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !382
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !406
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !408
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !410
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !412
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !414
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !418
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !420
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !425
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !430
@.str.54 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !436
@.str.1.55 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !438
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !440
@.str.58 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !471
@.str.1.59 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !474
@.str.2.60 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !476
@.str.3.61 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !478
@.str.4.62 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !480
@.str.5.63 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !482
@.str.6.64 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !484
@.str.7.65 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !486
@.str.8.66 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !488
@.str.9.67 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !490
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.58, ptr @.str.1.59, ptr @.str.2.60, ptr @.str.3.61, ptr @.str.4.62, ptr @.str.5.63, ptr @.str.6.64, ptr @.str.7.65, ptr @.str.8.66, ptr @.str.9.67, ptr null], align 8, !dbg !492
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !517
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !531
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !569
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !576
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !533
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !578
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !521
@.str.10.70 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !538
@.str.11.68 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !540
@.str.12.71 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !542
@.str.13.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !544
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !546
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !584
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !587
@.str.2.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !589
@.str.3.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !591
@.str.4.78 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !593
@.str.5.79 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !595
@.str.6.80 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !600
@.str.7.81 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !605
@.str.8.82 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !607
@.str.9.83 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !612
@.str.10.84 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !614
@.str.11.85 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !619
@.str.12.86 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !624
@.str.13.87 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !626
@.str.14.88 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !631
@.str.15.89 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !636
@.str.16.90 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !641
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.95 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !646
@.str.18.96 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !648
@.str.19.97 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !650
@.str.20.98 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !652
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !654
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !656
@.str.23.99 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !658
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !663
@exit_failure = dso_local global i32 1, align 4, !dbg !671
@.str.112 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !677
@.str.1.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !680
@.str.2.111 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !682
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !684
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !687
@.str.130 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !702
@.str.1.131 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !705

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !781 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !785, metadata !DIExpression()), !dbg !786
  %2 = icmp eq i32 %0, 0, !dbg !787
  br i1 %2, label %8, label %3, !dbg !789

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !790, !tbaa !792
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !790
  %6 = load ptr, ptr @program_name, align 8, !dbg !790, !tbaa !792
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !790
  br label %35, !dbg !790

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !796
  %10 = load ptr, ptr @program_name, align 8, !dbg !796, !tbaa !792
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #40, !dbg !796
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !798
  %13 = load ptr, ptr @stdout, align 8, !dbg !798, !tbaa !792
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !798
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !799
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !799
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !800
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !800
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !801
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !801
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !802
  %19 = load ptr, ptr @program_name, align 8, !dbg !802, !tbaa !792
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %18, ptr noundef %19, ptr noundef %19, ptr noundef %19) #40, !dbg !802
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !803, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata !822, metadata !816, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata ptr poison, metadata !815, metadata !DIExpression()), !dbg !820
  tail call void @emit_bug_reporting_address() #40, !dbg !823
  %21 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !824
  call void @llvm.dbg.value(metadata ptr %21, metadata !818, metadata !DIExpression()), !dbg !820
  %22 = icmp eq ptr %21, null, !dbg !825
  br i1 %22, label %30, label %23, !dbg !827

23:                                               ; preds = %8
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #41, !dbg !828
  %25 = icmp eq i32 %24, 0, !dbg !828
  br i1 %25, label %30, label %26, !dbg !829

26:                                               ; preds = %23
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #40, !dbg !830
  %28 = load ptr, ptr @stdout, align 8, !dbg !830, !tbaa !792
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !830
  br label %30, !dbg !832

30:                                               ; preds = %8, %23, %26
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !815, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !820
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #40, !dbg !833
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #40, !dbg !833
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #40, !dbg !834
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #40, !dbg !834
  br label %35

35:                                               ; preds = %30, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !835
  unreachable, !dbg !835
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !836 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !840 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !846 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !849 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !196 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !200, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !201, metadata !DIExpression()), !dbg !852
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !853, !tbaa !854
  %3 = icmp eq i32 %2, -1, !dbg !856
  br i1 %3, label %4, label %16, !dbg !857

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #40, !dbg !858
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !202, metadata !DIExpression()), !dbg !859
  %6 = icmp eq ptr %5, null, !dbg !860
  br i1 %6, label %14, label %7, !dbg !861

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !862, !tbaa !863
  %9 = icmp eq i8 %8, 0, !dbg !862
  br i1 %9, label %14, label %10, !dbg !864

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !865, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !871, metadata !DIExpression()), !dbg !872
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #41, !dbg !874
  %12 = icmp eq i32 %11, 0, !dbg !875
  %13 = zext i1 %12 to i32, !dbg !864
  br label %14, !dbg !864

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !876, !tbaa !854
  br label %16, !dbg !877

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !878
  %18 = icmp eq i32 %17, 0, !dbg !878
  br i1 %18, label %22, label %19, !dbg !880

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !881, !tbaa !792
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !881
  br label %121, !dbg !883

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !205, metadata !DIExpression()), !dbg !852
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #41, !dbg !884
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !885
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !206, metadata !DIExpression()), !dbg !852
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !886
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !207, metadata !DIExpression()), !dbg !852
  %26 = icmp eq ptr %25, null, !dbg !887
  br i1 %26, label %53, label %27, !dbg !888

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !889
  br i1 %28, label %53, label %29, !dbg !890

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !208, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata i64 0, metadata !212, metadata !DIExpression()), !dbg !891
  %30 = icmp ult ptr %24, %25, !dbg !892
  br i1 %30, label %31, label %53, !dbg !893

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !852
  %33 = load ptr, ptr %32, align 8, !tbaa !792
  br label %34, !dbg !893

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !208, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !212, metadata !DIExpression()), !dbg !891
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !208, metadata !DIExpression()), !dbg !891
  %38 = load i8, ptr %35, align 1, !dbg !894, !tbaa !863
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !894
  %41 = load i16, ptr %40, align 2, !dbg !894, !tbaa !895
  %42 = freeze i16 %41, !dbg !897
  %43 = lshr i16 %42, 13, !dbg !897
  %44 = and i16 %43, 1, !dbg !897
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !212, metadata !DIExpression()), !dbg !891
  %47 = icmp ult ptr %37, %25, !dbg !892
  %48 = icmp ult i64 %46, 2, !dbg !899
  %49 = select i1 %47, i1 %48, i1 false, !dbg !899
  br i1 %49, label %34, label %50, !dbg !893, !llvm.loop !900

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !898
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !902
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !904
  br label %53, !dbg !904

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !852
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !205, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !207, metadata !DIExpression()), !dbg !852
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.19) #41, !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !213, metadata !DIExpression()), !dbg !852
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !906
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !214, metadata !DIExpression()), !dbg !852
  br label %58, !dbg !907

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !852
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !205, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !214, metadata !DIExpression()), !dbg !852
  %61 = load i8, ptr %59, align 1, !dbg !908, !tbaa !863
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !909

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !910
  %64 = load i8, ptr %63, align 1, !dbg !913, !tbaa !863
  %65 = icmp ne i8 %64, 45, !dbg !914
  %66 = select i1 %65, i1 %60, i1 false, !dbg !915
  br label %67, !dbg !915

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !205, metadata !DIExpression()), !dbg !852
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !916
  %70 = load ptr, ptr %69, align 8, !dbg !916, !tbaa !792
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !916
  %73 = load i16, ptr %72, align 2, !dbg !916, !tbaa !895
  %74 = and i16 %73, 8192, !dbg !916
  %75 = icmp eq i16 %74, 0, !dbg !916
  br i1 %75, label %89, label %76, !dbg !918

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !919
  br i1 %77, label %91, label %78, !dbg !922

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !923
  %80 = load i8, ptr %79, align 1, !dbg !923, !tbaa !863
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !923
  %83 = load i16, ptr %82, align 2, !dbg !923, !tbaa !895
  %84 = and i16 %83, 8192, !dbg !923
  %85 = icmp eq i16 %84, 0, !dbg !923
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !924
  br i1 %88, label %89, label %91, !dbg !924

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !925
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !214, metadata !DIExpression()), !dbg !852
  br label %58, !dbg !907, !llvm.loop !926

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !852
  %92 = ptrtoint ptr %24 to i64, !dbg !928
  %93 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !792
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !928
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !865, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata !822, metadata !871, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !852
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #41, !dbg !949
  %96 = icmp eq i32 %95, 0, !dbg !949
  br i1 %96, label %100, label %97, !dbg !951

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #41, !dbg !952
  %99 = icmp eq i32 %98, 0, !dbg !952
  br i1 %99, label %100, label %103, !dbg !953

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !954
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !954
  br label %106, !dbg !956

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !957
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !957
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !792
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %107), !dbg !959
  %109 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !792
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %109), !dbg !960
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !961
  %112 = sub i64 %111, %92, !dbg !961
  %113 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !792
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !961
  %115 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !792
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %115), !dbg !962
  %117 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !792
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %117), !dbg !963
  %119 = load ptr, ptr @stdout, align 8, !dbg !964, !tbaa !792
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !964
  br label %121, !dbg !965

121:                                              ; preds = %106, %19
  ret void, !dbg !965
}

; Function Attrs: nounwind
declare !dbg !966 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !970 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !974 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !976 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !979 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !982 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !985 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !988 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !994 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !995 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !118 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !124, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !1001
  %3 = load ptr, ptr %1, align 8, !dbg !1002, !tbaa !792
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1003
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #40, !dbg !1004
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #40, !dbg !1005
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #40, !dbg !1006
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1007
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !1001
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !1009
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 122, label %.preheader
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1010

.preheader:                                       ; preds = %2
  br label %9, !dbg !1010

9:                                                ; preds = %.preheader, %9
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !1001
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #40, !dbg !1008
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !127, metadata !DIExpression()), !dbg !1009
  switch i32 %10, label %.loopexit [
    i32 -1, label %.loopexit1
    i32 122, label %9
    i32 -2, label %.loopexit2
    i32 -3, label %.loopexit3
  ], !dbg !1010, !llvm.loop !1011

.loopexit2:                                       ; preds = %9
  br label %11, !dbg !1013

11:                                               ; preds = %.loopexit2, %2
  tail call void @usage(i32 noundef 0) #44, !dbg !1013
  unreachable, !dbg !1013

.loopexit3:                                       ; preds = %9
  br label %12, !dbg !1015

12:                                               ; preds = %.loopexit3, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1015, !tbaa !792
  %14 = load ptr, ptr @Version, align 8, !dbg !1015, !tbaa !792
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #40, !dbg !1015
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #40, !dbg !1015
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #40, !dbg !1015
  tail call void @exit(i32 noundef 0) #42, !dbg !1015
  unreachable, !dbg !1015

.loopexit:                                        ; preds = %9
  br label %17, !dbg !1016

17:                                               ; preds = %.loopexit, %2
  tail call void @usage(i32 noundef 1) #44, !dbg !1016
  unreachable, !dbg !1016

.loopexit1:                                       ; preds = %9
  br label %18, !dbg !1017

18:                                               ; preds = %.loopexit1, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %.loopexit1 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !1001
  %20 = load i32, ptr @optind, align 4, !dbg !1017, !tbaa !854
  %21 = icmp slt i32 %20, %0, !dbg !1019
  br i1 %21, label %22, label %24, !dbg !1020

22:                                               ; preds = %18
  %23 = trunc i32 %19 to i8
  br label %26, !dbg !1021

24:                                               ; preds = %18
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !1022
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #40, !dbg !1022
  tail call void @usage(i32 noundef 1) #44, !dbg !1024
  unreachable, !dbg !1024

26:                                               ; preds = %47, %22
  %27 = phi i32 [ %20, %22 ], [ %49, %47 ]
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1025
  %28 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !792
  %29 = sext i32 %27 to i64, !dbg !1027
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1027
  %31 = load ptr, ptr %30, align 8, !dbg !1027, !tbaa !792
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !129, metadata !DIExpression()), !dbg !1025
  %32 = tail call i64 @dir_len(ptr noundef %31) #41, !dbg !1028
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !133, metadata !DIExpression()), !dbg !1025
  %33 = tail call i64 @llvm.umax.i64(i64 %32, i64 1), !dbg !1029
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !133, metadata !DIExpression()), !dbg !1025
  %34 = icmp eq i64 %32, 0, !dbg !1030
  %35 = select i1 %34, ptr @main.dot, ptr %31, !dbg !1029
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !129, metadata !DIExpression()), !dbg !1025
  %36 = tail call i64 @fwrite_unlocked(ptr noundef %35, i64 noundef 1, i64 noundef %33, ptr noundef %28), !dbg !1026
  call void @llvm.dbg.value(metadata i32 %19, metadata !1032, metadata !DIExpression()), !dbg !1038
  %37 = load ptr, ptr @stdout, align 8, !dbg !1040, !tbaa !792
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 5, !dbg !1040
  %39 = load ptr, ptr %38, align 8, !dbg !1040, !tbaa !1041
  %40 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 6, !dbg !1040
  %41 = load ptr, ptr %40, align 8, !dbg !1040, !tbaa !1044
  %42 = icmp ult ptr %39, %41, !dbg !1040
  br i1 %42, label %45, label %43, !dbg !1040, !prof !1045

43:                                               ; preds = %26
  %44 = tail call i32 @__overflow(ptr noundef nonnull %37, i32 noundef %19) #40, !dbg !1040
  br label %47, !dbg !1040

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1040
  store ptr %46, ptr %38, align 8, !dbg !1040, !tbaa !1041
  store i8 %23, ptr %39, align 1, !dbg !1040, !tbaa !863
  br label %47, !dbg !1040

47:                                               ; preds = %43, %45
  %48 = load i32, ptr @optind, align 4, !dbg !1046, !tbaa !854
  %49 = add nsw i32 %48, 1, !dbg !1046
  store i32 %49, ptr @optind, align 4, !dbg !1046, !tbaa !854
  %50 = icmp slt i32 %49, %0, !dbg !1047
  br i1 %50, label %26, label %51, !dbg !1021, !llvm.loop !1048

51:                                               ; preds = %47
  ret i32 0, !dbg !1050
}

; Function Attrs: nounwind
declare !dbg !1051 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1054 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1055 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1058 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

declare !dbg !1064 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1067 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1069, metadata !DIExpression()), !dbg !1070
  store ptr %0, ptr @file_name, align 8, !dbg !1071, !tbaa !792
  ret void, !dbg !1072
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1073 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1077, metadata !DIExpression()), !dbg !1078
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1079, !tbaa !1080
  ret void, !dbg !1082
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1083 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1088, !tbaa !792
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1089
  %3 = icmp eq i32 %2, 0, !dbg !1090
  br i1 %3, label %22, label %4, !dbg !1091

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1092, !tbaa !1080, !range !1093, !noundef !822
  %6 = icmp eq i8 %5, 0, !dbg !1092
  br i1 %6, label %11, label %7, !dbg !1094

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1095
  %9 = load i32, ptr %8, align 4, !dbg !1095, !tbaa !854
  %10 = icmp eq i32 %9, 32, !dbg !1096
  br i1 %10, label %22, label %11, !dbg !1097

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #40, !dbg !1098
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1085, metadata !DIExpression()), !dbg !1099
  %13 = load ptr, ptr @file_name, align 8, !dbg !1100, !tbaa !792
  %14 = icmp eq ptr %13, null, !dbg !1100
  %15 = tail call ptr @__errno_location() #43, !dbg !1102
  %16 = load i32, ptr %15, align 4, !dbg !1102, !tbaa !854
  br i1 %14, label %19, label %17, !dbg !1103

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1104
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #40, !dbg !1104
  br label %20, !dbg !1104

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #40, !dbg !1105
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1106, !tbaa !854
  tail call void @_exit(i32 noundef %21) #42, !dbg !1107
  unreachable, !dbg !1107

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1108, !tbaa !792
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1110
  %25 = icmp eq i32 %24, 0, !dbg !1111
  br i1 %25, label %28, label %26, !dbg !1112

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1113, !tbaa !854
  tail call void @_exit(i32 noundef %27) #42, !dbg !1114
  unreachable, !dbg !1114

28:                                               ; preds = %22
  ret void, !dbg !1115
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1116 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1120 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @dir_len(ptr noundef %0) local_unnamed_addr #13 !dbg !1122 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1126, metadata !DIExpression()), !dbg !1129
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1127, metadata !DIExpression()), !dbg !1129
  %2 = load i8, ptr %0, align 1, !dbg !1130, !tbaa !863
  %3 = icmp eq i8 %2, 47, !dbg !1130
  %4 = zext i1 %3 to i64
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1127, metadata !DIExpression()), !dbg !1129
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #41, !dbg !1131
  %6 = ptrtoint ptr %5 to i64, !dbg !1133
  %7 = ptrtoint ptr %0 to i64, !dbg !1133
  %8 = sub i64 %6, %7, !dbg !1133
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1128, metadata !DIExpression()), !dbg !1129
  %9 = getelementptr i8, ptr %0, i64 -1, !dbg !1134
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1128, metadata !DIExpression()), !dbg !1129
  %10 = icmp ugt i64 %8, %4, !dbg !1135
  br i1 %10, label %.preheader, label %19, !dbg !1137

.preheader:                                       ; preds = %1
  br label %11, !dbg !1137

11:                                               ; preds = %.preheader, %16
  %12 = phi i64 [ %17, %16 ], [ %8, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1128, metadata !DIExpression()), !dbg !1129
  %13 = getelementptr i8, ptr %9, i64 %12, !dbg !1138
  %14 = load i8, ptr %13, align 1, !dbg !1138, !tbaa !863
  %15 = icmp eq i8 %14, 47, !dbg !1138
  br i1 %15, label %16, label %.loopexit, !dbg !1140

16:                                               ; preds = %11
  %17 = add i64 %12, -1, !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1128, metadata !DIExpression()), !dbg !1129
  %18 = icmp ugt i64 %17, %4, !dbg !1135
  br i1 %18, label %11, label %.loopexit, !dbg !1137, !llvm.loop !1142

.loopexit:                                        ; preds = %11, %16
  %.ph = phi i64 [ %4, %16 ], [ %12, %11 ]
  br label %19, !dbg !1144

19:                                               ; preds = %.loopexit, %1
  %20 = phi i64 [ %8, %1 ], [ %.ph, %.loopexit ], !dbg !1145
  ret i64 %20, !dbg !1144
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias noundef ptr @mdir_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1146 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1148, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr %0, metadata !1126, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.value(metadata i64 0, metadata !1127, metadata !DIExpression()), !dbg !1153
  %2 = load i8, ptr %0, align 1, !dbg !1155, !tbaa !863
  %3 = icmp eq i8 %2, 47, !dbg !1155
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1127, metadata !DIExpression()), !dbg !1153
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #41, !dbg !1156
  %6 = ptrtoint ptr %5 to i64, !dbg !1157
  %7 = ptrtoint ptr %0 to i64, !dbg !1157
  %8 = sub i64 %6, %7, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %8, metadata !1128, metadata !DIExpression()), !dbg !1153
  %9 = getelementptr i8, ptr %0, i64 -1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %8, metadata !1128, metadata !DIExpression()), !dbg !1153
  %10 = icmp ugt i64 %8, %4, !dbg !1159
  br i1 %10, label %.preheader, label %19, !dbg !1160

.preheader:                                       ; preds = %1
  br label %11, !dbg !1160

11:                                               ; preds = %.preheader, %16
  %12 = phi i64 [ %17, %16 ], [ %8, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1128, metadata !DIExpression()), !dbg !1153
  %13 = getelementptr i8, ptr %9, i64 %12, !dbg !1161
  %14 = load i8, ptr %13, align 1, !dbg !1161, !tbaa !863
  %15 = icmp eq i8 %14, 47, !dbg !1161
  br i1 %15, label %16, label %.loopexit, !dbg !1162

16:                                               ; preds = %11
  %17 = add i64 %12, -1, !dbg !1163
  call void @llvm.dbg.value(metadata i64 %17, metadata !1128, metadata !DIExpression()), !dbg !1153
  %18 = icmp ugt i64 %17, %4, !dbg !1159
  br i1 %18, label %11, label %.loopexit, !dbg !1160, !llvm.loop !1164

.loopexit:                                        ; preds = %16, %11
  %.ph = phi i64 [ %12, %11 ], [ %4, %16 ]
  br label %19, !dbg !1166

19:                                               ; preds = %.loopexit, %1
  %20 = phi i64 [ %8, %1 ], [ %.ph, %.loopexit ], !dbg !1167
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1149, metadata !DIExpression()), !dbg !1152
  %21 = icmp eq i64 %20, 0, !dbg !1166
  tail call void @llvm.dbg.value(metadata i1 %21, metadata !1150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1152
  %22 = zext i1 %21 to i64, !dbg !1168
  %23 = add i64 %20, 1, !dbg !1169
  %24 = add i64 %23, %22, !dbg !1170
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #45, !dbg !1171
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !1151, metadata !DIExpression()), !dbg !1152
  %26 = icmp eq ptr %25, null, !dbg !1172
  br i1 %26, label %32, label %27, !dbg !1174

27:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %25, metadata !1175, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata ptr %0, metadata !1182, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 %20, metadata !1183, metadata !DIExpression()), !dbg !1184
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %25, ptr noundef nonnull align 1 %0, i64 noundef %20, i1 noundef false) #40, !dbg !1186
  br i1 %21, label %28, label %29, !dbg !1187

28:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1149, metadata !DIExpression()), !dbg !1152
  store i8 46, ptr %25, align 1, !dbg !1188, !tbaa !863
  br label %29, !dbg !1190

29:                                               ; preds = %28, %27
  %30 = phi i64 [ 1, %28 ], [ %20, %27 ], !dbg !1152
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1149, metadata !DIExpression()), !dbg !1152
  %31 = getelementptr inbounds i8, ptr %25, i64 %30, !dbg !1191
  store i8 0, ptr %31, align 1, !dbg !1192, !tbaa !863
  br label %32, !dbg !1193

32:                                               ; preds = %19, %29
  ret ptr %25, !dbg !1194
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1195 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1198 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1202, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1203, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1204, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1205, metadata !DIExpression(DW_OP_deref)), !dbg !1206
  tail call fastcc void @flush_stdout(), !dbg !1207
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1208, !tbaa !792
  %7 = icmp eq ptr %6, null, !dbg !1208
  br i1 %7, label %9, label %8, !dbg !1210

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1211
  br label %13, !dbg !1211

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1212, !tbaa !792
  %11 = tail call ptr @getprogname() #41, !dbg !1212
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #40, !dbg !1212
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1214, !tbaa.struct !1215
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1214
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1214
  ret void, !dbg !1216
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1217 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1219, metadata !DIExpression()), !dbg !1220
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()), !dbg !1224
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1227
  %2 = icmp slt i32 %1, 0, !dbg !1228
  br i1 %2, label %6, label %3, !dbg !1229

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1230, !tbaa !792
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1230
  br label %6, !dbg !1230

6:                                                ; preds = %3, %0
  ret void, !dbg !1231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1232 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1238
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1234, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1235, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1236, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1237, metadata !DIExpression(DW_OP_deref)), !dbg !1239
  %7 = load ptr, ptr @stderr, align 8, !dbg !1240, !tbaa !792
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1241, !noalias !1285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %7, metadata !1281, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %2, metadata !1282, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr poison, metadata !1283, metadata !DIExpression(DW_OP_deref)), !dbg !1290
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1241, !noalias !1285
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1291, !tbaa !854
  %10 = add i32 %9, 1, !dbg !1291
  store i32 %10, ptr @error_message_count, align 4, !dbg !1291, !tbaa !854
  %11 = icmp eq i32 %1, 0, !dbg !1292
  br i1 %11, label %21, label %12, !dbg !1294

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1295, metadata !DIExpression(), metadata !1238, metadata ptr %5, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i32 %1, metadata !1298, metadata !DIExpression()), !dbg !1303
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1305
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1306
  call void @llvm.dbg.value(metadata ptr %13, metadata !1299, metadata !DIExpression()), !dbg !1303
  %14 = icmp eq ptr %13, null, !dbg !1307
  br i1 %14, label %15, label %17, !dbg !1309

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #40, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %16, metadata !1299, metadata !DIExpression()), !dbg !1303
  br label %17, !dbg !1311

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1303
  call void @llvm.dbg.value(metadata ptr %18, metadata !1299, metadata !DIExpression()), !dbg !1303
  %19 = load ptr, ptr @stderr, align 8, !dbg !1312, !tbaa !792
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #40, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1313
  br label %21, !dbg !1314

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1315, !tbaa !792
  call void @llvm.dbg.value(metadata i32 10, metadata !1316, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata ptr %22, metadata !1321, metadata !DIExpression()), !dbg !1322
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1324
  %24 = load ptr, ptr %23, align 8, !dbg !1324, !tbaa !1041
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1324
  %26 = load ptr, ptr %25, align 8, !dbg !1324, !tbaa !1044
  %27 = icmp ult ptr %24, %26, !dbg !1324
  br i1 %27, label %30, label %28, !dbg !1324, !prof !1045

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1324
  br label %32, !dbg !1324

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1324
  store ptr %31, ptr %23, align 8, !dbg !1324, !tbaa !1041
  store i8 10, ptr %24, align 1, !dbg !1324, !tbaa !863
  br label %32, !dbg !1324

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1325, !tbaa !792
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1325
  %35 = icmp eq i32 %0, 0, !dbg !1326
  br i1 %35, label %37, label %36, !dbg !1328

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1329
  unreachable, !dbg !1329

37:                                               ; preds = %32
  ret void, !dbg !1330
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1331 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1334 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1337 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1340 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1344 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1352
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1351, metadata !DIExpression(), metadata !1352, metadata ptr %4, metadata !DIExpression()), !dbg !1353
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1349, metadata !DIExpression()), !dbg !1353
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1350, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1354
  call void @llvm.va_start(ptr nonnull %4), !dbg !1355
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1356
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1356, !tbaa.struct !1215
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1356
  call void @llvm.va_end(ptr nonnull %4), !dbg !1357
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1358
  ret void, !dbg !1358
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !384 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !400, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !401, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !403, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !404, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !405, metadata !DIExpression(DW_OP_deref)), !dbg !1359
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1360, !tbaa !854
  %9 = icmp eq i32 %8, 0, !dbg !1360
  br i1 %9, label %24, label %10, !dbg !1362

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1363, !tbaa !854
  %12 = icmp eq i32 %11, %3, !dbg !1366
  br i1 %12, label %13, label %23, !dbg !1367

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1368, !tbaa !792
  %15 = icmp eq ptr %14, %2, !dbg !1369
  br i1 %15, label %37, label %16, !dbg !1370

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1371
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1372
  br i1 %19, label %20, label %23, !dbg !1372

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1373
  %22 = icmp eq i32 %21, 0, !dbg !1374
  br i1 %22, label %37, label %23, !dbg !1375

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1376, !tbaa !792
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1377, !tbaa !854
  br label %24, !dbg !1378

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1379
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1380, !tbaa !792
  %26 = icmp eq ptr %25, null, !dbg !1380
  br i1 %26, label %28, label %27, !dbg !1382

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1383
  br label %32, !dbg !1383

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1384, !tbaa !792
  %30 = tail call ptr @getprogname() #41, !dbg !1384
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #40, !dbg !1384
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1386, !tbaa !792
  %34 = icmp eq ptr %2, null, !dbg !1386
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1386
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1386
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1387, !tbaa.struct !1215
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1387
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1387
  br label %37, !dbg !1388

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1388
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1389 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1398, metadata !DIExpression(), metadata !1399, metadata ptr %6, metadata !DIExpression()), !dbg !1400
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1393, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1394, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1395, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1396, metadata !DIExpression()), !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1397, metadata !DIExpression()), !dbg !1400
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1401
  call void @llvm.va_start(ptr nonnull %6), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1403, !tbaa.struct !1215
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !1403
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1403
  call void @llvm.va_end(ptr nonnull %6), !dbg !1404
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1405
  ret void, !dbg !1405
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1406 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1409, !tbaa !792
  ret ptr %1, !dbg !1410
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1411 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1413, metadata !DIExpression()), !dbg !1416
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1417
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1414, metadata !DIExpression()), !dbg !1416
  %3 = icmp eq ptr %2, null, !dbg !1418
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1418
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !1416
  %6 = ptrtoint ptr %5 to i64, !dbg !1419
  %7 = ptrtoint ptr %0 to i64, !dbg !1419
  %8 = sub i64 %6, %7, !dbg !1419
  %9 = icmp sgt i64 %8, 6, !dbg !1421
  br i1 %9, label %10, label %19, !dbg !1422

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %11, metadata !1424, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr @.str.54, metadata !1429, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i64 7, metadata !1430, metadata !DIExpression()), !dbg !1431
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.54, i64 7), !dbg !1433
  %13 = icmp eq i32 %12, 0, !dbg !1434
  br i1 %13, label %14, label %19, !dbg !1435

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1413, metadata !DIExpression()), !dbg !1416
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.55, i64 noundef 3) #41, !dbg !1436
  %16 = icmp eq i32 %15, 0, !dbg !1439
  %17 = select i1 %16, i64 3, i64 0, !dbg !1440
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1440
  br label %19, !dbg !1440

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1415, metadata !DIExpression()), !dbg !1416
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1413, metadata !DIExpression()), !dbg !1416
  store ptr %20, ptr @program_name, align 8, !dbg !1441, !tbaa !792
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1442, !tbaa !792
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1443, !tbaa !792
  ret void, !dbg !1444
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1445 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !442 {
  %3 = alloca i32, align 4, !DIAssignID !1446
  call void @llvm.dbg.assign(metadata i1 undef, metadata !452, metadata !DIExpression(), metadata !1446, metadata ptr %3, metadata !DIExpression()), !dbg !1447
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1448
  call void @llvm.dbg.assign(metadata i1 undef, metadata !457, metadata !DIExpression(), metadata !1448, metadata ptr %4, metadata !DIExpression()), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !449, metadata !DIExpression()), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !450, metadata !DIExpression()), !dbg !1447
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !451, metadata !DIExpression()), !dbg !1447
  %6 = icmp eq ptr %5, %0, !dbg !1450
  br i1 %6, label %7, label %14, !dbg !1452

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !1453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %4, metadata !1455, metadata !DIExpression()), !dbg !1462
  call void @llvm.dbg.value(metadata ptr %4, metadata !1464, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1469, metadata !DIExpression()), !dbg !1471
  call void @llvm.dbg.value(metadata i64 8, metadata !1470, metadata !DIExpression()), !dbg !1471
  store i64 0, ptr %4, align 8, !dbg !1473
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !1474
  %9 = icmp eq i64 %8, 2, !dbg !1476
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1477
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1447
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !1478
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !1478
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1447
  ret ptr %15, !dbg !1478
}

; Function Attrs: nounwind
declare !dbg !1479 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1485 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1490, metadata !DIExpression()), !dbg !1493
  %2 = tail call ptr @__errno_location() #43, !dbg !1494
  %3 = load i32, ptr %2, align 4, !dbg !1494, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1491, metadata !DIExpression()), !dbg !1493
  %4 = icmp eq ptr %0, null, !dbg !1495
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1495
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !1496
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i32 %3, ptr %2, align 4, !dbg !1497, !tbaa !854
  ret ptr %6, !dbg !1498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1505, metadata !DIExpression()), !dbg !1506
  %2 = icmp eq ptr %0, null, !dbg !1507
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1507
  %4 = load i32, ptr %3, align 8, !dbg !1508, !tbaa !1509
  ret i32 %4, !dbg !1511
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1512 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1516, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1517, metadata !DIExpression()), !dbg !1518
  %3 = icmp eq ptr %0, null, !dbg !1519
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1519
  store i32 %1, ptr %4, align 8, !dbg !1520, !tbaa !1509
  ret void, !dbg !1521
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1522 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1526, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1528, metadata !DIExpression()), !dbg !1534
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()), !dbg !1534
  %4 = icmp eq ptr %0, null, !dbg !1535
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1535
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1536
  %7 = lshr i8 %1, 5, !dbg !1537
  %8 = zext nneg i8 %7 to i64, !dbg !1537
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1530, metadata !DIExpression()), !dbg !1534
  %10 = and i8 %1, 31, !dbg !1539
  %11 = zext nneg i8 %10 to i32, !dbg !1539
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1532, metadata !DIExpression()), !dbg !1534
  %12 = load i32, ptr %9, align 4, !dbg !1540, !tbaa !854
  %13 = lshr i32 %12, %11, !dbg !1541
  %14 = and i32 %13, 1, !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1533, metadata !DIExpression()), !dbg !1534
  %15 = xor i32 %13, %2, !dbg !1543
  %16 = and i32 %15, 1, !dbg !1543
  %17 = shl nuw i32 %16, %11, !dbg !1544
  %18 = xor i32 %17, %12, !dbg !1545
  store i32 %18, ptr %9, align 4, !dbg !1545, !tbaa !854
  ret i32 %14, !dbg !1546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1547 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1551, metadata !DIExpression()), !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1552, metadata !DIExpression()), !dbg !1554
  %3 = icmp eq ptr %0, null, !dbg !1555
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1557
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1551, metadata !DIExpression()), !dbg !1554
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1558
  %6 = load i32, ptr %5, align 4, !dbg !1558, !tbaa !1559
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i32 %1, ptr %5, align 4, !dbg !1560, !tbaa !1559
  ret i32 %6, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1562 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !1569
  %4 = icmp eq ptr %0, null, !dbg !1570
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !1569
  store i32 10, ptr %5, align 8, !dbg !1573, !tbaa !1509
  %6 = icmp ne ptr %1, null, !dbg !1574
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1576
  br i1 %8, label %10, label %9, !dbg !1576

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !1577
  unreachable, !dbg !1577

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1578
  store ptr %1, ptr %11, align 8, !dbg !1579, !tbaa !1580
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1581
  store ptr %2, ptr %12, align 8, !dbg !1582, !tbaa !1583
  ret void, !dbg !1584
}

; Function Attrs: noreturn nounwind
declare !dbg !1585 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1586 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1590, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1591, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1592, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1593, metadata !DIExpression()), !dbg !1598
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1594, metadata !DIExpression()), !dbg !1598
  %6 = icmp eq ptr %4, null, !dbg !1599
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1599
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1595, metadata !DIExpression()), !dbg !1598
  %8 = tail call ptr @__errno_location() #43, !dbg !1600
  %9 = load i32, ptr %8, align 4, !dbg !1600, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1596, metadata !DIExpression()), !dbg !1598
  %10 = load i32, ptr %7, align 8, !dbg !1601, !tbaa !1509
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1602
  %12 = load i32, ptr %11, align 4, !dbg !1602, !tbaa !1559
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1603
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1604
  %15 = load ptr, ptr %14, align 8, !dbg !1604, !tbaa !1580
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1605
  %17 = load ptr, ptr %16, align 8, !dbg !1605, !tbaa !1583
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1606
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1597, metadata !DIExpression()), !dbg !1598
  store i32 %9, ptr %8, align 4, !dbg !1607, !tbaa !854
  ret i64 %18, !dbg !1608
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1609 {
  %10 = alloca i32, align 4, !DIAssignID !1677
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1678
  %12 = alloca i32, align 4, !DIAssignID !1679
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1680
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1655, metadata !DIExpression(), metadata !1681, metadata ptr %14, metadata !DIExpression()), !dbg !1682
  %15 = alloca i32, align 4, !DIAssignID !1683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1658, metadata !DIExpression(), metadata !1683, metadata ptr %15, metadata !DIExpression()), !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1615, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1617, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1619, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1620, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1621, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1623, metadata !DIExpression()), !dbg !1685
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !1686
  %17 = icmp eq i64 %16, 1, !dbg !1687
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1630, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1685
  %18 = and i32 %5, 2, !dbg !1688
  %19 = icmp ne i32 %18, 0, !dbg !1688
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1688

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1689
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1690
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1691
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1619, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1633), !dbg !1692
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
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
  ], !dbg !1693

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1685
  br label %101, !dbg !1694

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1619, metadata !DIExpression()), !dbg !1685
  br i1 %36, label %101, label %42, !dbg !1694

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1695
  br i1 %43, label %101, label %44, !dbg !1699

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1695, !tbaa !863
  br label %101, !dbg !1695

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !1679, metadata ptr %12, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !1680, metadata ptr %13, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr @.str.11.68, metadata !552, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %28, metadata !553, metadata !DIExpression()), !dbg !1700
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.11.68, i32 noundef 5) #40, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %46, metadata !554, metadata !DIExpression()), !dbg !1700
  %47 = icmp eq ptr %46, @.str.11.68, !dbg !1705
  br i1 %47, label %48, label %57, !dbg !1707

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !1708
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %13, metadata !1710, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %13, metadata !1718, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 8, metadata !1722, metadata !DIExpression()), !dbg !1723
  store i64 0, ptr %13, align 8, !dbg !1725
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !1726
  %50 = icmp eq i64 %49, 3, !dbg !1728
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1729
  %54 = icmp eq i32 %28, 9, !dbg !1729
  %55 = select i1 %54, ptr @.str.10.70, ptr @.str.12.71, !dbg !1729
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !1730
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1700
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1622, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !1677, metadata ptr %10, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !556, metadata !DIExpression(), metadata !1678, metadata ptr %11, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata ptr @.str.12.71, metadata !552, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i32 %28, metadata !553, metadata !DIExpression()), !dbg !1731
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.12.71, i32 noundef 5) #40, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %59, metadata !554, metadata !DIExpression()), !dbg !1731
  %60 = icmp eq ptr %59, @.str.12.71, !dbg !1734
  br i1 %60, label %61, label %70, !dbg !1735

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !1736
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !1737
  call void @llvm.dbg.value(metadata ptr %11, metadata !1710, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata ptr %11, metadata !1718, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 8, metadata !1722, metadata !DIExpression()), !dbg !1740
  store i64 0, ptr %11, align 8, !dbg !1742
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !1743
  %63 = icmp eq i64 %62, 3, !dbg !1744
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1745
  %67 = icmp eq i32 %28, 9, !dbg !1745
  %68 = select i1 %67, ptr @.str.10.70, ptr @.str.12.71, !dbg !1745
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !1746
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !1746
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1622, metadata !DIExpression()), !dbg !1685
  br i1 %36, label %88, label %73, !dbg !1747

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1635, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1685
  %74 = load i8, ptr %71, align 1, !dbg !1749, !tbaa !863
  %75 = icmp eq i8 %74, 0, !dbg !1751
  br i1 %75, label %88, label %.preheader11, !dbg !1751

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1751

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1635, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1625, metadata !DIExpression()), !dbg !1685
  %80 = icmp ult i64 %79, %39, !dbg !1752
  br i1 %80, label %81, label %83, !dbg !1755

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1752
  store i8 %77, ptr %82, align 1, !dbg !1752, !tbaa !863
  br label %83, !dbg !1752

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1755
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1625, metadata !DIExpression()), !dbg !1685
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1756
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1635, metadata !DIExpression()), !dbg !1748
  %86 = load i8, ptr %85, align 1, !dbg !1749, !tbaa !863
  %87 = icmp eq i8 %86, 0, !dbg !1751
  br i1 %87, label %.loopexit12, label %76, !dbg !1751, !llvm.loop !1757

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1755
  br label %88, !dbg !1759

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1627, metadata !DIExpression()), !dbg !1685
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1628, metadata !DIExpression()), !dbg !1685
  br label %101, !dbg !1761

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1685
  br label %101, !dbg !1762

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1685
  br label %101, !dbg !1763

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  br i1 %36, label %101, label %95, !dbg !1764

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1619, metadata !DIExpression()), !dbg !1685
  br i1 %36, label %101, label %95, !dbg !1763

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1765
  br i1 %97, label %101, label %98, !dbg !1769

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1765, !tbaa !863
  br label %101, !dbg !1765

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1685
  br label %101, !dbg !1770

100:                                              ; preds = %27
  call void @abort() #42, !dbg !1771
  unreachable, !dbg !1771

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1760
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.70, %42 ], [ @.str.10.70, %44 ], [ @.str.10.70, %41 ], [ %33, %27 ], [ @.str.12.71, %95 ], [ @.str.12.71, %98 ], [ @.str.12.71, %94 ], [ @.str.10.70, %40 ], [ @.str.12.71, %91 ], [ @.str.12.71, %92 ], [ @.str.12.71, %93 ], !dbg !1685
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1685
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1628, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1623, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1622, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1619, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1640, metadata !DIExpression()), !dbg !1772
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
  br label %121, !dbg !1773

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1760
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1689
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1774
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1618, metadata !DIExpression()), !dbg !1685
  %130 = icmp eq i64 %122, -1, !dbg !1775
  br i1 %130, label %131, label %135, !dbg !1776

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1777
  %133 = load i8, ptr %132, align 1, !dbg !1777, !tbaa !863
  %134 = icmp eq i8 %133, 0, !dbg !1778
  br i1 %134, label %573, label %137, !dbg !1779

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1780
  br i1 %136, label %573, label %137, !dbg !1779

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1781
  br i1 %113, label %138, label %151, !dbg !1782

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1784
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1785
  br i1 %140, label %141, label %143, !dbg !1785

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1786
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %143, !dbg !1787

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1787
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1618, metadata !DIExpression()), !dbg !1685
  %145 = icmp ugt i64 %139, %144, !dbg !1788
  br i1 %145, label %151, label %146, !dbg !1789

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %147, metadata !1791, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata ptr %106, metadata !1794, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %107, metadata !1795, metadata !DIExpression()), !dbg !1796
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1798
  %149 = icmp eq i32 %148, 0, !dbg !1799
  %150 = and i1 %149, %109, !dbg !1800
  br i1 %150, label %.loopexit7, label %151, !dbg !1800

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1618, metadata !DIExpression()), !dbg !1685
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1801
  %155 = load i8, ptr %154, align 1, !dbg !1801, !tbaa !863
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1647, metadata !DIExpression()), !dbg !1781
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
  ], !dbg !1802

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1803

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1804

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1781
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1808
  br i1 %159, label %176, label %160, !dbg !1808

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1810
  br i1 %161, label %162, label %164, !dbg !1814

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1810
  store i8 39, ptr %163, align 1, !dbg !1810, !tbaa !863
  br label %164, !dbg !1810

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1814
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1625, metadata !DIExpression()), !dbg !1685
  %166 = icmp ult i64 %165, %129, !dbg !1815
  br i1 %166, label %167, label %169, !dbg !1818

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1815
  store i8 36, ptr %168, align 1, !dbg !1815, !tbaa !863
  br label %169, !dbg !1815

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1625, metadata !DIExpression()), !dbg !1685
  %171 = icmp ult i64 %170, %129, !dbg !1819
  br i1 %171, label %172, label %174, !dbg !1822

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1819
  store i8 39, ptr %173, align 1, !dbg !1819, !tbaa !863
  br label %174, !dbg !1819

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1822
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %176, !dbg !1823

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1685
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1625, metadata !DIExpression()), !dbg !1685
  %179 = icmp ult i64 %177, %129, !dbg !1824
  br i1 %179, label %180, label %182, !dbg !1827

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1824
  store i8 92, ptr %181, align 1, !dbg !1824, !tbaa !863
  br label %182, !dbg !1824

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1827
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1625, metadata !DIExpression()), !dbg !1685
  br i1 %110, label %184, label %476, !dbg !1828

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1830
  %186 = icmp ult i64 %185, %152, !dbg !1831
  br i1 %186, label %187, label %433, !dbg !1832

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1833
  %189 = load i8, ptr %188, align 1, !dbg !1833, !tbaa !863
  %190 = add i8 %189, -48, !dbg !1834
  %191 = icmp ult i8 %190, 10, !dbg !1834
  br i1 %191, label %192, label %433, !dbg !1834

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1835
  br i1 %193, label %194, label %196, !dbg !1839

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1835
  store i8 48, ptr %195, align 1, !dbg !1835, !tbaa !863
  br label %196, !dbg !1835

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1625, metadata !DIExpression()), !dbg !1685
  %198 = icmp ult i64 %197, %129, !dbg !1840
  br i1 %198, label %199, label %201, !dbg !1843

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1840
  store i8 48, ptr %200, align 1, !dbg !1840, !tbaa !863
  br label %201, !dbg !1840

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1625, metadata !DIExpression()), !dbg !1685
  br label %433, !dbg !1844

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1845

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1846

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1847

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1849

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1851
  %209 = icmp ult i64 %208, %152, !dbg !1852
  br i1 %209, label %210, label %433, !dbg !1853

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1854
  %212 = load i8, ptr %211, align 1, !dbg !1854, !tbaa !863
  %213 = icmp eq i8 %212, 63, !dbg !1855
  br i1 %213, label %214, label %433, !dbg !1856

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1857
  %216 = load i8, ptr %215, align 1, !dbg !1857, !tbaa !863
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
  ], !dbg !1858

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1859

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1640, metadata !DIExpression()), !dbg !1772
  %219 = icmp ult i64 %123, %129, !dbg !1861
  br i1 %219, label %220, label %222, !dbg !1864

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1861
  store i8 63, ptr %221, align 1, !dbg !1861, !tbaa !863
  br label %222, !dbg !1861

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1864
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1625, metadata !DIExpression()), !dbg !1685
  %224 = icmp ult i64 %223, %129, !dbg !1865
  br i1 %224, label %225, label %227, !dbg !1868

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1865
  store i8 34, ptr %226, align 1, !dbg !1865, !tbaa !863
  br label %227, !dbg !1865

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1625, metadata !DIExpression()), !dbg !1685
  %229 = icmp ult i64 %228, %129, !dbg !1869
  br i1 %229, label %230, label %232, !dbg !1872

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1869
  store i8 34, ptr %231, align 1, !dbg !1869, !tbaa !863
  br label %232, !dbg !1869

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1872
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1625, metadata !DIExpression()), !dbg !1685
  %234 = icmp ult i64 %233, %129, !dbg !1873
  br i1 %234, label %235, label %237, !dbg !1876

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1873
  store i8 63, ptr %236, align 1, !dbg !1873, !tbaa !863
  br label %237, !dbg !1873

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1876
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1625, metadata !DIExpression()), !dbg !1685
  br label %433, !dbg !1877

239:                                              ; preds = %151
  br label %249, !dbg !1878

240:                                              ; preds = %151
  br label %249, !dbg !1879

241:                                              ; preds = %151
  br label %247, !dbg !1880

242:                                              ; preds = %151
  br label %247, !dbg !1881

243:                                              ; preds = %151
  br label %249, !dbg !1882

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1883

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1884

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1887

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1648), !dbg !1890
  br i1 %118, label %.loopexit8, label %249, !dbg !1891

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1651), !dbg !1893
  br i1 %108, label %487, label %444, !dbg !1894

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1895

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1896, !tbaa !863
  %254 = icmp eq i8 %253, 0, !dbg !1898
  br i1 %254, label %255, label %433, !dbg !1899

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1900
  br i1 %256, label %257, label %433, !dbg !1902

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1781
  br label %258, !dbg !1903

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1781
  br i1 %115, label %260, label %433, !dbg !1904

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1906

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1646, metadata !DIExpression()), !dbg !1781
  br i1 %115, label %262, label %433, !dbg !1907

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1908

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1911
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1913
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1913
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1626, metadata !DIExpression()), !dbg !1685
  %269 = icmp ult i64 %123, %268, !dbg !1914
  br i1 %269, label %270, label %272, !dbg !1917

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1914
  store i8 39, ptr %271, align 1, !dbg !1914, !tbaa !863
  br label %272, !dbg !1914

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1625, metadata !DIExpression()), !dbg !1685
  %274 = icmp ult i64 %273, %268, !dbg !1918
  br i1 %274, label %275, label %277, !dbg !1921

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1918
  store i8 92, ptr %276, align 1, !dbg !1918, !tbaa !863
  br label %277, !dbg !1918

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1625, metadata !DIExpression()), !dbg !1685
  %279 = icmp ult i64 %278, %268, !dbg !1922
  br i1 %279, label %280, label %282, !dbg !1925

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1922
  store i8 39, ptr %281, align 1, !dbg !1922, !tbaa !863
  br label %282, !dbg !1922

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1925
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %433, !dbg !1926

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1927

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1652, metadata !DIExpression()), !dbg !1928
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !1929
  %287 = load ptr, ptr %286, align 8, !dbg !1929, !tbaa !792
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1929
  %290 = load i16, ptr %289, align 2, !dbg !1929, !tbaa !895
  %291 = and i16 %290, 16384, !dbg !1929
  %292 = icmp ne i16 %291, 0, !dbg !1931
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1654, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  br label %334, !dbg !1932

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !1933
  call void @llvm.dbg.value(metadata ptr %14, metadata !1710, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %14, metadata !1718, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i64 8, metadata !1722, metadata !DIExpression()), !dbg !1936
  store i64 0, ptr %14, align 8, !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1928
  %294 = icmp eq i64 %152, -1, !dbg !1939
  br i1 %294, label %295, label %297, !dbg !1941

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1942
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1618, metadata !DIExpression()), !dbg !1685
  br label %297, !dbg !1943

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !1944
  %299 = sub i64 %298, %128, !dbg !1945
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1662, metadata !DIExpression()), !dbg !1684
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1947

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  %302 = icmp ult i64 %128, %298, !dbg !1948
  br i1 %302, label %.preheader5, label %329, !dbg !1950

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1951

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1928
  br label %329, !dbg !1952

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1652, metadata !DIExpression()), !dbg !1928
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1954
  %308 = load i8, ptr %307, align 1, !dbg !1954, !tbaa !863
  %309 = icmp eq i8 %308, 0, !dbg !1950
  br i1 %309, label %.loopexit6, label %310, !dbg !1951

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1955
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1652, metadata !DIExpression()), !dbg !1928
  %312 = add i64 %311, %128, !dbg !1956
  %313 = icmp eq i64 %311, %299, !dbg !1948
  br i1 %313, label %.loopexit6, label %304, !dbg !1950, !llvm.loop !1957

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1663, metadata !DIExpression()), !dbg !1958
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1959
  %317 = and i1 %316, %109, !dbg !1959
  br i1 %317, label %.preheader3, label %325, !dbg !1959

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1960

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1663, metadata !DIExpression()), !dbg !1958
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1961
  %321 = load i8, ptr %320, align 1, !dbg !1961, !tbaa !863
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1963

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1964
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1663, metadata !DIExpression()), !dbg !1958
  %324 = icmp eq i64 %323, %300, !dbg !1965
  br i1 %324, label %.loopexit4, label %318, !dbg !1960, !llvm.loop !1966

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1968

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1968, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %326, metadata !1970, metadata !DIExpression()), !dbg !1978
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !1980
  %328 = icmp ne i32 %327, 0, !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1652, metadata !DIExpression()), !dbg !1928
  br label %329, !dbg !1982

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1983

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !1983
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !1984
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !1983
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !1984
  call void @llvm.dbg.label(metadata !1676), !dbg !1985
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1986
  br label %624, !dbg !1986

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1781
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1988
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1652, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1618, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1646, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1781
  %338 = icmp ult i64 %336, 2, !dbg !1989
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1990
  br i1 %340, label %433, label %341, !dbg !1990

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1671, metadata !DIExpression()), !dbg !1992
  br label %343, !dbg !1993

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1685
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1772
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1625, metadata !DIExpression()), !dbg !1685
  br i1 %339, label %394, label %350, !dbg !1994

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1999

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1781
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2002
  br i1 %352, label %369, label %353, !dbg !2002

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2004
  br i1 %354, label %355, label %357, !dbg !2008

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2004
  store i8 39, ptr %356, align 1, !dbg !2004, !tbaa !863
  br label %357, !dbg !2004

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1625, metadata !DIExpression()), !dbg !1685
  %359 = icmp ult i64 %358, %129, !dbg !2009
  br i1 %359, label %360, label %362, !dbg !2012

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2009
  store i8 36, ptr %361, align 1, !dbg !2009, !tbaa !863
  br label %362, !dbg !2009

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1625, metadata !DIExpression()), !dbg !1685
  %364 = icmp ult i64 %363, %129, !dbg !2013
  br i1 %364, label %365, label %367, !dbg !2016

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2013
  store i8 39, ptr %366, align 1, !dbg !2013, !tbaa !863
  br label %367, !dbg !2013

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %369, !dbg !2017

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1685
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1625, metadata !DIExpression()), !dbg !1685
  %372 = icmp ult i64 %370, %129, !dbg !2018
  br i1 %372, label %373, label %375, !dbg !2021

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2018
  store i8 92, ptr %374, align 1, !dbg !2018, !tbaa !863
  br label %375, !dbg !2018

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1625, metadata !DIExpression()), !dbg !1685
  %377 = icmp ult i64 %376, %129, !dbg !2022
  br i1 %377, label %378, label %382, !dbg !2025

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2022
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2022
  store i8 %380, ptr %381, align 1, !dbg !2022, !tbaa !863
  br label %382, !dbg !2022

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1625, metadata !DIExpression()), !dbg !1685
  %384 = icmp ult i64 %383, %129, !dbg !2026
  br i1 %384, label %385, label %390, !dbg !2029

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2026
  %388 = or disjoint i8 %387, 48, !dbg !2026
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2026
  store i8 %388, ptr %389, align 1, !dbg !2026, !tbaa !863
  br label %390, !dbg !2026

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1625, metadata !DIExpression()), !dbg !1685
  %392 = and i8 %349, 7, !dbg !2030
  %393 = or disjoint i8 %392, 48, !dbg !2031
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1647, metadata !DIExpression()), !dbg !1781
  br label %401, !dbg !2032

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2033

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2034
  br i1 %396, label %397, label %399, !dbg !2039

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2034
  store i8 92, ptr %398, align 1, !dbg !2034, !tbaa !863
  br label %399, !dbg !2034

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1781
  br label %401, !dbg !2040

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1685
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1625, metadata !DIExpression()), !dbg !1685
  %407 = add i64 %346, 1, !dbg !2041
  %408 = icmp ugt i64 %342, %407, !dbg !2043
  br i1 %408, label %409, label %.loopexit2, !dbg !2044

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2045
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2045
  br i1 %411, label %423, label %412, !dbg !2045

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2048
  br i1 %413, label %414, label %416, !dbg !2052

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2048
  store i8 39, ptr %415, align 1, !dbg !2048, !tbaa !863
  br label %416, !dbg !2048

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2052
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1625, metadata !DIExpression()), !dbg !1685
  %418 = icmp ult i64 %417, %129, !dbg !2053
  br i1 %418, label %419, label %421, !dbg !2056

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2053
  store i8 39, ptr %420, align 1, !dbg !2053, !tbaa !863
  br label %421, !dbg !2053

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2056
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %423, !dbg !2057

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2058
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1625, metadata !DIExpression()), !dbg !1685
  %426 = icmp ult i64 %424, %129, !dbg !2059
  br i1 %426, label %427, label %429, !dbg !2062

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2059
  store i8 %406, ptr %428, align 1, !dbg !2059, !tbaa !863
  br label %429, !dbg !2059

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2062
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1640, metadata !DIExpression()), !dbg !1772
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2063
  %432 = load i8, ptr %431, align 1, !dbg !2063, !tbaa !863
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1647, metadata !DIExpression()), !dbg !1781
  br label %343, !dbg !2064, !llvm.loop !2065

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2068
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1685
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1689
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1772
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1781
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1618, metadata !DIExpression()), !dbg !1685
  br i1 %111, label %455, label %444, !dbg !2069

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
  br i1 %120, label %456, label %476, !dbg !2071

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2072

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
  %467 = lshr i8 %458, 5, !dbg !2073
  %468 = zext nneg i8 %467 to i64, !dbg !2073
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2074
  %470 = load i32, ptr %469, align 4, !dbg !2074, !tbaa !854
  %471 = and i8 %458, 31, !dbg !2075
  %472 = zext nneg i8 %471 to i32, !dbg !2075
  %473 = shl nuw i32 1, %472, !dbg !2076
  %474 = and i32 %470, %473, !dbg !2076
  %475 = icmp eq i32 %474, 0, !dbg !2076
  br i1 %475, label %476, label %487, !dbg !2077

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
  br i1 %153, label %487, label %523, !dbg !2078

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2068
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1685
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1689
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2079
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1781
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1674), !dbg !2080
  br i1 %109, label %.loopexit8, label %497, !dbg !2081

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1645, metadata !DIExpression()), !dbg !1781
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2083
  br i1 %498, label %515, label %499, !dbg !2083

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2085
  br i1 %500, label %501, label %503, !dbg !2089

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2085
  store i8 39, ptr %502, align 1, !dbg !2085, !tbaa !863
  br label %503, !dbg !2085

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1625, metadata !DIExpression()), !dbg !1685
  %505 = icmp ult i64 %504, %496, !dbg !2090
  br i1 %505, label %506, label %508, !dbg !2093

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2090
  store i8 36, ptr %507, align 1, !dbg !2090, !tbaa !863
  br label %508, !dbg !2090

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1625, metadata !DIExpression()), !dbg !1685
  %510 = icmp ult i64 %509, %496, !dbg !2094
  br i1 %510, label %511, label %513, !dbg !2097

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2094
  store i8 39, ptr %512, align 1, !dbg !2094, !tbaa !863
  br label %513, !dbg !2094

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %515, !dbg !2098

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1781
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1625, metadata !DIExpression()), !dbg !1685
  %518 = icmp ult i64 %516, %496, !dbg !2099
  br i1 %518, label %519, label %521, !dbg !2102

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2099
  store i8 92, ptr %520, align 1, !dbg !2099, !tbaa !863
  br label %521, !dbg !2099

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1675), !dbg !2103
  br label %547, !dbg !2104

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1685
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1781
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1772
  br label %523, !dbg !2104

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2068
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1685
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1689
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2079
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2107
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1647, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1618, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.label(metadata !1675), !dbg !2103
  %534 = xor i1 %528, true, !dbg !2104
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2104
  br i1 %535, label %547, label %536, !dbg !2104

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2108
  br i1 %537, label %538, label %540, !dbg !2112

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2108
  store i8 39, ptr %539, align 1, !dbg !2108, !tbaa !863
  br label %540, !dbg !2108

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2112
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1625, metadata !DIExpression()), !dbg !1685
  %542 = icmp ult i64 %541, %533, !dbg !2113
  br i1 %542, label %543, label %545, !dbg !2116

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2113
  store i8 39, ptr %544, align 1, !dbg !2113, !tbaa !863
  br label %545, !dbg !2113

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2116
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1685
  br label %547, !dbg !2117

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1781
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1625, metadata !DIExpression()), !dbg !1685
  %557 = icmp ult i64 %555, %548, !dbg !2118
  br i1 %557, label %558, label %560, !dbg !2121

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2118
  store i8 %549, ptr %559, align 1, !dbg !2118, !tbaa !863
  br label %560, !dbg !2118

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2121
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1625, metadata !DIExpression()), !dbg !1685
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2122
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1685
  br label %563, !dbg !2123

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2068
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1685
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1689
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2079
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1640, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1618, metadata !DIExpression()), !dbg !1685
  %572 = add i64 %570, 1, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1640, metadata !DIExpression()), !dbg !1772
  br label %121, !dbg !2125, !llvm.loop !2126

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1760
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1689
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1616, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1626, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1625, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1618, metadata !DIExpression()), !dbg !1685
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2128
  %575 = xor i1 %109, true, !dbg !2130
  %576 = or i1 %574, %575, !dbg !2130
  %577 = or i1 %576, %110, !dbg !2130
  br i1 %577, label %578, label %.loopexit13, !dbg !2130

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2131
  %580 = xor i1 %.lcssa38, true, !dbg !2131
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2131
  br i1 %581, label %589, label %582, !dbg !2131

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2133

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1689
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2135
  br label %638, !dbg !2137

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2138
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2140
  br i1 %588, label %27, label %589, !dbg !2140

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1685
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1760
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2141
  %592 = or i1 %591, %590, !dbg !2143
  br i1 %592, label %608, label %593, !dbg !2143

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1625, metadata !DIExpression()), !dbg !1685
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2144, !tbaa !863
  %595 = icmp eq i8 %594, 0, !dbg !2147
  br i1 %595, label %608, label %.preheader, !dbg !2147

.preheader:                                       ; preds = %593
  br label %596, !dbg !2147

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1627, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1625, metadata !DIExpression()), !dbg !1685
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2148
  br i1 %600, label %601, label %603, !dbg !2151

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2148
  store i8 %597, ptr %602, align 1, !dbg !2148, !tbaa !863
  br label %603, !dbg !2148

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1625, metadata !DIExpression()), !dbg !1685
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2152
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1627, metadata !DIExpression()), !dbg !1685
  %606 = load i8, ptr %605, align 1, !dbg !2144, !tbaa !863
  %607 = icmp eq i8 %606, 0, !dbg !2147
  br i1 %607, label %.loopexit, label %596, !dbg !2147, !llvm.loop !2153

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2151
  br label %608, !dbg !2155

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1760
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1625, metadata !DIExpression()), !dbg !1685
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2155
  br i1 %610, label %611, label %638, !dbg !2157

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2158
  store i8 0, ptr %612, align 1, !dbg !2159, !tbaa !863
  br label %638, !dbg !2158

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1676), !dbg !1985
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2160
  br i1 %614, label %624, label %630, !dbg !1986

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1781
  br label %615, !dbg !2160

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2160

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2160

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1676), !dbg !1985
  %622 = icmp eq i32 %616, 2, !dbg !2160
  %623 = select i1 %619, i32 4, i32 2, !dbg !1986
  br i1 %622, label %624, label %630, !dbg !1986

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1986

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1787
  br label %630, !dbg !2161

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1619, metadata !DIExpression()), !dbg !1685
  %636 = and i32 %5, -3, !dbg !2161
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2162
  br label %638, !dbg !2163

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2164
}

; Function Attrs: nounwind
declare !dbg !2165 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2168 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2171 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2173 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2177, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr %0, metadata !2181, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %1, metadata !2186, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr null, metadata !2187, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %2, metadata !2188, metadata !DIExpression()), !dbg !2194
  %4 = icmp eq ptr %2, null, !dbg !2196
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %5, metadata !2189, metadata !DIExpression()), !dbg !2194
  %6 = tail call ptr @__errno_location() #43, !dbg !2197
  %7 = load i32, ptr %6, align 4, !dbg !2197, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %7, metadata !2190, metadata !DIExpression()), !dbg !2194
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2198
  %9 = load i32, ptr %8, align 4, !dbg !2198, !tbaa !1559
  %10 = or i32 %9, 1, !dbg !2199
  call void @llvm.dbg.value(metadata i32 %10, metadata !2191, metadata !DIExpression()), !dbg !2194
  %11 = load i32, ptr %5, align 8, !dbg !2200, !tbaa !1509
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2201
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2202
  %14 = load ptr, ptr %13, align 8, !dbg !2202, !tbaa !1580
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2203
  %16 = load ptr, ptr %15, align 8, !dbg !2203, !tbaa !1583
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2204
  %18 = add i64 %17, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %18, metadata !2192, metadata !DIExpression()), !dbg !2194
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %19, metadata !2193, metadata !DIExpression()), !dbg !2194
  %20 = load i32, ptr %5, align 8, !dbg !2207, !tbaa !1509
  %21 = load ptr, ptr %13, align 8, !dbg !2208, !tbaa !1580
  %22 = load ptr, ptr %15, align 8, !dbg !2209, !tbaa !1583
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2210
  store i32 %7, ptr %6, align 4, !dbg !2211, !tbaa !854
  ret ptr %19, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2182 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2181, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2186, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2187, metadata !DIExpression()), !dbg !2213
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2188, metadata !DIExpression()), !dbg !2213
  %5 = icmp eq ptr %3, null, !dbg !2214
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2214
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2189, metadata !DIExpression()), !dbg !2213
  %7 = tail call ptr @__errno_location() #43, !dbg !2215
  %8 = load i32, ptr %7, align 4, !dbg !2215, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2190, metadata !DIExpression()), !dbg !2213
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2216
  %10 = load i32, ptr %9, align 4, !dbg !2216, !tbaa !1559
  %11 = icmp eq ptr %2, null, !dbg !2217
  %12 = zext i1 %11 to i32, !dbg !2217
  %13 = or i32 %10, %12, !dbg !2218
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2191, metadata !DIExpression()), !dbg !2213
  %14 = load i32, ptr %6, align 8, !dbg !2219, !tbaa !1509
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2220
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2221
  %17 = load ptr, ptr %16, align 8, !dbg !2221, !tbaa !1580
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2222
  %19 = load ptr, ptr %18, align 8, !dbg !2222, !tbaa !1583
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2223
  %21 = add i64 %20, 1, !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2192, metadata !DIExpression()), !dbg !2213
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !2225
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2193, metadata !DIExpression()), !dbg !2213
  %23 = load i32, ptr %6, align 8, !dbg !2226, !tbaa !1509
  %24 = load ptr, ptr %16, align 8, !dbg !2227, !tbaa !1580
  %25 = load ptr, ptr %18, align 8, !dbg !2228, !tbaa !1583
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2229
  store i32 %8, ptr %7, align 4, !dbg !2230, !tbaa !854
  br i1 %11, label %28, label %27, !dbg !2231

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2232, !tbaa !2234
  br label %28, !dbg !2235

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2236
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2237 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2242, !tbaa !792
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2239, metadata !DIExpression()), !dbg !2243
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2240, metadata !DIExpression()), !dbg !2244
  %2 = load i32, ptr @nslots, align 4, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2240, metadata !DIExpression()), !dbg !2244
  %3 = icmp sgt i32 %2, 1, !dbg !2245
  br i1 %3, label %4, label %6, !dbg !2247

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2245
  br label %10, !dbg !2247

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2248

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2248
  %8 = load ptr, ptr %7, align 8, !dbg !2248, !tbaa !2250
  %9 = icmp eq ptr %8, @slot0, !dbg !2252
  br i1 %9, label %17, label %16, !dbg !2253

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2240, metadata !DIExpression()), !dbg !2244
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2254
  %13 = load ptr, ptr %12, align 8, !dbg !2254, !tbaa !2250
  tail call void @free(ptr noundef %13) #40, !dbg !2255
  %14 = add nuw nsw i64 %11, 1, !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2240, metadata !DIExpression()), !dbg !2244
  %15 = icmp eq i64 %14, %5, !dbg !2245
  br i1 %15, label %.loopexit, label %10, !dbg !2247, !llvm.loop !2257

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2259
  store i64 256, ptr @slotvec0, align 8, !dbg !2261, !tbaa !2262
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2263, !tbaa !2250
  br label %17, !dbg !2264

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2265
  br i1 %18, label %20, label %19, !dbg !2267

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2268
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2270, !tbaa !792
  br label %20, !dbg !2271

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2272, !tbaa !854
  ret void, !dbg !2273
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2274 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2277 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2279, metadata !DIExpression()), !dbg !2281
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2280, metadata !DIExpression()), !dbg !2281
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2282
  ret ptr %3, !dbg !2283
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2284 {
  %5 = alloca i64, align 8, !DIAssignID !2304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2298, metadata !DIExpression(), metadata !2304, metadata ptr %5, metadata !DIExpression()), !dbg !2305
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2288, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2289, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2290, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2291, metadata !DIExpression()), !dbg !2306
  %6 = tail call ptr @__errno_location() #43, !dbg !2307
  %7 = load i32, ptr %6, align 4, !dbg !2307, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2292, metadata !DIExpression()), !dbg !2306
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2308, !tbaa !792
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2293, metadata !DIExpression()), !dbg !2306
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2294, metadata !DIExpression()), !dbg !2306
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2309
  br i1 %9, label %10, label %11, !dbg !2309

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2311
  unreachable, !dbg !2311

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2312, !tbaa !854
  %13 = icmp sgt i32 %12, %0, !dbg !2313
  br i1 %13, label %32, label %14, !dbg !2314

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2315
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2295, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2316
  %16 = sext i32 %12 to i64, !dbg !2317
  store i64 %16, ptr %5, align 8, !dbg !2318, !tbaa !2234, !DIAssignID !2319
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2298, metadata !DIExpression(), metadata !2319, metadata ptr %5, metadata !DIExpression()), !dbg !2305
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2320
  %18 = add nuw nsw i32 %0, 1, !dbg !2321
  %19 = sub i32 %18, %12, !dbg !2322
  %20 = sext i32 %19 to i64, !dbg !2323
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2293, metadata !DIExpression()), !dbg !2306
  store ptr %21, ptr @slotvec, align 8, !dbg !2325, !tbaa !792
  br i1 %15, label %22, label %23, !dbg !2326

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2327, !tbaa.struct !2329
  br label %23, !dbg !2330

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2331, !tbaa !854
  %25 = sext i32 %24 to i64, !dbg !2332
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2332
  %27 = load i64, ptr %5, align 8, !dbg !2333, !tbaa !2234
  %28 = sub nsw i64 %27, %25, !dbg !2334
  %29 = shl i64 %28, 4, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %26, metadata !1718, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %29, metadata !1722, metadata !DIExpression()), !dbg !2336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2338
  %30 = load i64, ptr %5, align 8, !dbg !2339, !tbaa !2234
  %31 = trunc i64 %30 to i32, !dbg !2339
  store i32 %31, ptr @nslots, align 4, !dbg !2340, !tbaa !854
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2341
  br label %32, !dbg !2342

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2293, metadata !DIExpression()), !dbg !2306
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2343
  %36 = load i64, ptr %35, align 8, !dbg !2344, !tbaa !2262
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2299, metadata !DIExpression()), !dbg !2345
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2346
  %38 = load ptr, ptr %37, align 8, !dbg !2346, !tbaa !2250
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2301, metadata !DIExpression()), !dbg !2345
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2347
  %40 = load i32, ptr %39, align 4, !dbg !2347, !tbaa !1559
  %41 = or i32 %40, 1, !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2302, metadata !DIExpression()), !dbg !2345
  %42 = load i32, ptr %3, align 8, !dbg !2349, !tbaa !1509
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2350
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2351
  %45 = load ptr, ptr %44, align 8, !dbg !2351, !tbaa !1580
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2352
  %47 = load ptr, ptr %46, align 8, !dbg !2352, !tbaa !1583
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2303, metadata !DIExpression()), !dbg !2345
  %49 = icmp ugt i64 %36, %48, !dbg !2354
  br i1 %49, label %60, label %50, !dbg !2356

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2299, metadata !DIExpression()), !dbg !2345
  store i64 %51, ptr %35, align 8, !dbg !2359, !tbaa !2262
  %52 = icmp eq ptr %38, @slot0, !dbg !2360
  br i1 %52, label %54, label %53, !dbg !2362

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2363
  br label %54, !dbg !2363

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !2364
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2301, metadata !DIExpression()), !dbg !2345
  store ptr %55, ptr %37, align 8, !dbg !2365, !tbaa !2250
  %56 = load i32, ptr %3, align 8, !dbg !2366, !tbaa !1509
  %57 = load ptr, ptr %44, align 8, !dbg !2367, !tbaa !1580
  %58 = load ptr, ptr %46, align 8, !dbg !2368, !tbaa !1583
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2369
  br label %60, !dbg !2370

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2345
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2301, metadata !DIExpression()), !dbg !2345
  store i32 %7, ptr %6, align 4, !dbg !2371, !tbaa !854
  ret ptr %61, !dbg !2372
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2373 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2377, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2378, metadata !DIExpression()), !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2379, metadata !DIExpression()), !dbg !2380
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2381
  ret ptr %4, !dbg !2382
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2385, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 0, metadata !2279, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata ptr %0, metadata !2280, metadata !DIExpression()), !dbg !2387
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2389
  ret ptr %2, !dbg !2390
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2391 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2395, metadata !DIExpression()), !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2396, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 0, metadata !2377, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %0, metadata !2378, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i64 %1, metadata !2379, metadata !DIExpression()), !dbg !2398
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2400
  ret ptr %3, !dbg !2401
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2402 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2410
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2409, metadata !DIExpression(), metadata !2410, metadata ptr %4, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2406, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2411
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2408, metadata !DIExpression()), !dbg !2411
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2413), !dbg !2416
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !2425
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2425, !alias.scope !2413, !DIAssignID !2426
  call void @llvm.dbg.assign(metadata i8 0, metadata !2409, metadata !DIExpression(), metadata !2426, metadata ptr %4, metadata !DIExpression()), !dbg !2411
  %5 = icmp eq i32 %1, 10, !dbg !2427
  br i1 %5, label %6, label %7, !dbg !2429

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2430, !noalias !2413
  unreachable, !dbg !2430

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2431, !tbaa !1509, !alias.scope !2413, !DIAssignID !2432
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2432, metadata ptr %4, metadata !DIExpression()), !dbg !2411
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2433
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2434
  ret ptr %8, !dbg !2435
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2436 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2444, metadata !DIExpression(), metadata !2445, metadata ptr %5, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2441, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2442, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2443, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2422, metadata !DIExpression()), !dbg !2454
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2454, !alias.scope !2448, !DIAssignID !2455
  call void @llvm.dbg.assign(metadata i8 0, metadata !2444, metadata !DIExpression(), metadata !2455, metadata ptr %5, metadata !DIExpression()), !dbg !2446
  %6 = icmp eq i32 %1, 10, !dbg !2456
  br i1 %6, label %7, label %8, !dbg !2457

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2458, !noalias !2448
  unreachable, !dbg !2458

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2459, !tbaa !1509, !alias.scope !2448, !DIAssignID !2460
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2444, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2460, metadata ptr %5, metadata !DIExpression()), !dbg !2446
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2461
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2462
  ret ptr %9, !dbg !2463
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2464 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2470
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()), !dbg !2471
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2469, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2409, metadata !DIExpression(), metadata !2470, metadata ptr %3, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2406, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %1, metadata !2408, metadata !DIExpression()), !dbg !2472
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475), !dbg !2478
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2422, metadata !DIExpression()), !dbg !2481
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2481, !alias.scope !2475, !DIAssignID !2482
  call void @llvm.dbg.assign(metadata i8 0, metadata !2409, metadata !DIExpression(), metadata !2482, metadata ptr %3, metadata !DIExpression()), !dbg !2472
  %4 = icmp eq i32 %0, 10, !dbg !2483
  br i1 %4, label %5, label %6, !dbg !2484

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !2485, !noalias !2475
  unreachable, !dbg !2485

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2486, !tbaa !1509, !alias.scope !2475, !DIAssignID !2487
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2487, metadata ptr %3, metadata !DIExpression()), !dbg !2472
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2488
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2489
  ret ptr %7, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2491 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2498
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2495, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2496, metadata !DIExpression()), !dbg !2499
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2444, metadata !DIExpression(), metadata !2498, metadata ptr %4, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2440, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i32 %0, metadata !2441, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i64 %2, metadata !2443, metadata !DIExpression()), !dbg !2500
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2502
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !2509
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2509, !alias.scope !2503, !DIAssignID !2510
  call void @llvm.dbg.assign(metadata i8 0, metadata !2444, metadata !DIExpression(), metadata !2510, metadata ptr %4, metadata !DIExpression()), !dbg !2500
  %5 = icmp eq i32 %0, 10, !dbg !2511
  br i1 %5, label %6, label %7, !dbg !2512

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2513, !noalias !2503
  unreachable, !dbg !2513

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2514, !tbaa !1509, !alias.scope !2503, !DIAssignID !2515
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2444, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2515, metadata ptr %4, metadata !DIExpression()), !dbg !2500
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2516
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2517
  ret ptr %8, !dbg !2518
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2519 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2527, metadata ptr %4, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2524, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2530, !tbaa.struct !2531, !DIAssignID !2532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2532, metadata ptr %4, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1529, metadata !DIExpression()), !dbg !2533
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2535
  %6 = lshr i8 %2, 5, !dbg !2536
  %7 = zext nneg i8 %6 to i64, !dbg !2536
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2537
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1530, metadata !DIExpression()), !dbg !2533
  %9 = and i8 %2, 31, !dbg !2538
  %10 = zext nneg i8 %9 to i32, !dbg !2538
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression()), !dbg !2533
  %11 = load i32, ptr %8, align 4, !dbg !2539, !tbaa !854
  %12 = lshr i32 %11, %10, !dbg !2540
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1533, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2533
  %13 = and i32 %12, 1, !dbg !2541
  %14 = xor i32 %13, 1, !dbg !2541
  %15 = shl nuw i32 %14, %10, !dbg !2542
  %16 = xor i32 %15, %11, !dbg !2543
  store i32 %16, ptr %8, align 4, !dbg !2543, !tbaa !854
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2544
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2545
  ret ptr %17, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2547 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2553
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2554
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2552, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2553, metadata ptr %3, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 -1, metadata !2524, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 %1, metadata !2525, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2558, !tbaa.struct !2531, !DIAssignID !2559
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2559, metadata ptr %3, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 %1, metadata !1529, metadata !DIExpression()), !dbg !2560
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2562
  %5 = lshr i8 %1, 5, !dbg !2563
  %6 = zext nneg i8 %5 to i64, !dbg !2563
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %7, metadata !1530, metadata !DIExpression()), !dbg !2560
  %8 = and i8 %1, 31, !dbg !2565
  %9 = zext nneg i8 %8 to i32, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %9, metadata !1532, metadata !DIExpression()), !dbg !2560
  %10 = load i32, ptr %7, align 4, !dbg !2566, !tbaa !854
  %11 = lshr i32 %10, %9, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %11, metadata !1533, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2560
  %12 = and i32 %11, 1, !dbg !2568
  %13 = xor i32 %12, 1, !dbg !2568
  %14 = shl nuw i32 %13, %9, !dbg !2569
  %15 = xor i32 %14, %10, !dbg !2570
  store i32 %15, ptr %7, align 4, !dbg !2570, !tbaa !854
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2572
  ret ptr %16, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2574 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2577
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata ptr %0, metadata !2551, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 58, metadata !2552, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2577, metadata ptr %2, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 -1, metadata !2524, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !2525, metadata !DIExpression()), !dbg !2581
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !2583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2584, !tbaa.struct !2531, !DIAssignID !2585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2585, metadata ptr %2, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %2, metadata !1526, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2586
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2588
  call void @llvm.dbg.value(metadata ptr %3, metadata !1530, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2586
  %4 = load i32, ptr %3, align 4, !dbg !2589, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %4, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2586
  %5 = or i32 %4, 67108864, !dbg !2590
  store i32 %5, ptr %3, align 4, !dbg !2590, !tbaa !854
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2591
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !2592
  ret ptr %6, !dbg !2593
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2594 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2598
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2596, metadata !DIExpression()), !dbg !2599
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2598, metadata ptr %3, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %0, metadata !2523, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2524, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !2525, metadata !DIExpression()), !dbg !2600
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !2602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2603, !tbaa.struct !2531, !DIAssignID !2604
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2526, metadata !DIExpression(), metadata !2604, metadata ptr %3, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata ptr %3, metadata !1526, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2605
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2605
  %5 = load i32, ptr %4, align 4, !dbg !2608, !tbaa !854
  call void @llvm.dbg.value(metadata i32 %5, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2605
  %6 = or i32 %5, 67108864, !dbg !2609
  store i32 %6, ptr %4, align 4, !dbg !2609, !tbaa !854
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !2611
  ret ptr %7, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2619
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2618, metadata !DIExpression(), metadata !2619, metadata ptr %4, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2422, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2616, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  %5 = icmp eq i32 %1, 10, !dbg !2625
  br i1 %5, label %6, label %7, !dbg !2626

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2627, !noalias !2628
  unreachable, !dbg !2627

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  store i32 %1, ptr %4, align 8, !dbg !2631, !tbaa.struct !2531, !DIAssignID !2632
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2631
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2631
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2632, metadata ptr %4, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2618, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2633, metadata ptr %8, metadata !DIExpression()), !dbg !2620
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1528, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1529, metadata !DIExpression()), !dbg !2634
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2636
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1530, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1532, metadata !DIExpression()), !dbg !2634
  %10 = load i32, ptr %9, align 4, !dbg !2637, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1533, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2634
  %11 = or i32 %10, 67108864, !dbg !2638
  store i32 %11, ptr %9, align 4, !dbg !2638, !tbaa !854, !DIAssignID !2639
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2618, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2639, metadata ptr %9, metadata !DIExpression()), !dbg !2620
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2640
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2641
  ret ptr %12, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2643 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2651
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2647, metadata !DIExpression()), !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2648, metadata !DIExpression()), !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2649, metadata !DIExpression()), !dbg !2652
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2650, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2651, metadata ptr %5, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2659, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %2, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %3, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 -1, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2666, !tbaa.struct !2531, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2667, metadata ptr %5, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2668, metadata ptr undef, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2669
  store i32 10, ptr %5, align 8, !dbg !2671, !tbaa !1509, !DIAssignID !2672
  call void @llvm.dbg.assign(metadata i32 10, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2672, metadata ptr %5, metadata !DIExpression()), !dbg !2663
  %6 = icmp ne ptr %1, null, !dbg !2673
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2674
  br i1 %8, label %10, label %9, !dbg !2674

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2675
  unreachable, !dbg !2675

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2676
  store ptr %1, ptr %11, align 8, !dbg !2677, !tbaa !1580, !DIAssignID !2678
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2678, metadata ptr %11, metadata !DIExpression()), !dbg !2663
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2679
  store ptr %2, ptr %12, align 8, !dbg !2680, !tbaa !1583, !DIAssignID !2681
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2681, metadata ptr %12, metadata !DIExpression()), !dbg !2663
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2683
  ret ptr %13, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2654 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2685, metadata ptr %6, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2658, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2659, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2660, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2661, metadata !DIExpression()), !dbg !2686
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2662, metadata !DIExpression()), !dbg !2686
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2688, !tbaa.struct !2531, !DIAssignID !2689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2689, metadata ptr %6, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2690, metadata ptr undef, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %6, metadata !1566, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !1568, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %6, metadata !1566, metadata !DIExpression()), !dbg !2691
  store i32 10, ptr %6, align 8, !dbg !2693, !tbaa !1509, !DIAssignID !2694
  call void @llvm.dbg.assign(metadata i32 10, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2694, metadata ptr %6, metadata !DIExpression()), !dbg !2686
  %7 = icmp ne ptr %1, null, !dbg !2695
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2696
  br i1 %9, label %11, label %10, !dbg !2696

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !2697
  unreachable, !dbg !2697

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2698
  store ptr %1, ptr %12, align 8, !dbg !2699, !tbaa !1580, !DIAssignID !2700
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2700, metadata ptr %12, metadata !DIExpression()), !dbg !2686
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2701
  store ptr %2, ptr %13, align 8, !dbg !2702, !tbaa !1583, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2703, metadata ptr %13, metadata !DIExpression()), !dbg !2686
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2704
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !2705
  ret ptr %14, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2707 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2714
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2711, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2712, metadata !DIExpression()), !dbg !2715
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !2647, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %0, metadata !2648, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata ptr %2, metadata !2650, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2714, metadata ptr %4, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %0, metadata !2659, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %2, metadata !2661, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 -1, metadata !2662, metadata !DIExpression()), !dbg !2718
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2721, !tbaa.struct !2531, !DIAssignID !2722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2722, metadata ptr %4, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2723, metadata ptr undef, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %4, metadata !1566, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %1, metadata !1568, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %4, metadata !1566, metadata !DIExpression()), !dbg !2724
  store i32 10, ptr %4, align 8, !dbg !2726, !tbaa !1509, !DIAssignID !2727
  call void @llvm.dbg.assign(metadata i32 10, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2727, metadata ptr %4, metadata !DIExpression()), !dbg !2718
  %5 = icmp ne ptr %0, null, !dbg !2728
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2729
  br i1 %7, label %9, label %8, !dbg !2729

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2730
  unreachable, !dbg !2730

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2731
  store ptr %0, ptr %10, align 8, !dbg !2732, !tbaa !1580, !DIAssignID !2733
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2733, metadata ptr %10, metadata !DIExpression()), !dbg !2718
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2734
  store ptr %1, ptr %11, align 8, !dbg !2735, !tbaa !1583, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2736, metadata ptr %11, metadata !DIExpression()), !dbg !2718
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2737
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2738
  ret ptr %12, !dbg !2739
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2740 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2748
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2745, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2746, metadata !DIExpression()), !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2748, metadata ptr %5, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2658, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %0, metadata !2659, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %1, metadata !2660, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %2, metadata !2661, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i64 %3, metadata !2662, metadata !DIExpression()), !dbg !2750
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !2752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2753, !tbaa.struct !2531, !DIAssignID !2754
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(), metadata !2754, metadata ptr %5, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2755, metadata ptr undef, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !1568, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %5, metadata !1566, metadata !DIExpression()), !dbg !2756
  store i32 10, ptr %5, align 8, !dbg !2758, !tbaa !1509, !DIAssignID !2759
  call void @llvm.dbg.assign(metadata i32 10, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2759, metadata ptr %5, metadata !DIExpression()), !dbg !2750
  %6 = icmp ne ptr %0, null, !dbg !2760
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2761
  br i1 %8, label %10, label %9, !dbg !2761

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !2762
  unreachable, !dbg !2762

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2763
  store ptr %0, ptr %11, align 8, !dbg !2764, !tbaa !1580, !DIAssignID !2765
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2765, metadata ptr %11, metadata !DIExpression()), !dbg !2750
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2766
  store ptr %1, ptr %12, align 8, !dbg !2767, !tbaa !1583, !DIAssignID !2768
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2653, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2768, metadata ptr %12, metadata !DIExpression()), !dbg !2750
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2769
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !2770
  ret ptr %13, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2772 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2778, metadata !DIExpression()), !dbg !2779
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2780
  ret ptr %4, !dbg !2781
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 0, metadata !2776, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %0, metadata !2777, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %1, metadata !2778, metadata !DIExpression()), !dbg !2789
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2791
  ret ptr %3, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2797, metadata !DIExpression()), !dbg !2799
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 %0, metadata !2776, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %1, metadata !2777, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 -1, metadata !2778, metadata !DIExpression()), !dbg !2800
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2802
  ret ptr %3, !dbg !2803
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2804 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 0, metadata !2797, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %0, metadata !2798, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 0, metadata !2776, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata ptr %0, metadata !2777, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i64 -1, metadata !2778, metadata !DIExpression()), !dbg !2812
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2814
  ret ptr %2, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2816 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2855, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2856, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2857, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2858, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2859, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2860, metadata !DIExpression()), !dbg !2861
  %7 = icmp eq ptr %1, null, !dbg !2862
  br i1 %7, label %10, label %8, !dbg !2864

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !2865
  br label %12, !dbg !2865

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.75, ptr noundef %2, ptr noundef %3) #40, !dbg !2866
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.3.77, i32 noundef 5) #40, !dbg !2867
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !2867
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2868
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.5.79, i32 noundef 5) #40, !dbg !2869
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.80) #40, !dbg !2869
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2870
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
  ], !dbg !2871

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.7.81, i32 noundef 5) #40, !dbg !2872
  %21 = load ptr, ptr %4, align 8, !dbg !2872, !tbaa !792
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !2872
  br label %147, !dbg !2874

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.8.82, i32 noundef 5) #40, !dbg !2875
  %25 = load ptr, ptr %4, align 8, !dbg !2875, !tbaa !792
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2875
  %27 = load ptr, ptr %26, align 8, !dbg !2875, !tbaa !792
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !2875
  br label %147, !dbg !2876

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.9.83, i32 noundef 5) #40, !dbg !2877
  %31 = load ptr, ptr %4, align 8, !dbg !2877, !tbaa !792
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2877
  %33 = load ptr, ptr %32, align 8, !dbg !2877, !tbaa !792
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2877
  %35 = load ptr, ptr %34, align 8, !dbg !2877, !tbaa !792
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !2877
  br label %147, !dbg !2878

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.10.84, i32 noundef 5) #40, !dbg !2879
  %39 = load ptr, ptr %4, align 8, !dbg !2879, !tbaa !792
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2879
  %41 = load ptr, ptr %40, align 8, !dbg !2879, !tbaa !792
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2879
  %43 = load ptr, ptr %42, align 8, !dbg !2879, !tbaa !792
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2879
  %45 = load ptr, ptr %44, align 8, !dbg !2879, !tbaa !792
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !2879
  br label %147, !dbg !2880

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.11.85, i32 noundef 5) #40, !dbg !2881
  %49 = load ptr, ptr %4, align 8, !dbg !2881, !tbaa !792
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2881
  %51 = load ptr, ptr %50, align 8, !dbg !2881, !tbaa !792
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2881
  %53 = load ptr, ptr %52, align 8, !dbg !2881, !tbaa !792
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2881
  %55 = load ptr, ptr %54, align 8, !dbg !2881, !tbaa !792
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2881
  %57 = load ptr, ptr %56, align 8, !dbg !2881, !tbaa !792
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !2881
  br label %147, !dbg !2882

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.12.86, i32 noundef 5) #40, !dbg !2883
  %61 = load ptr, ptr %4, align 8, !dbg !2883, !tbaa !792
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2883
  %63 = load ptr, ptr %62, align 8, !dbg !2883, !tbaa !792
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2883
  %65 = load ptr, ptr %64, align 8, !dbg !2883, !tbaa !792
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2883
  %67 = load ptr, ptr %66, align 8, !dbg !2883, !tbaa !792
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2883
  %69 = load ptr, ptr %68, align 8, !dbg !2883, !tbaa !792
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2883
  %71 = load ptr, ptr %70, align 8, !dbg !2883, !tbaa !792
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !2883
  br label %147, !dbg !2884

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.13.87, i32 noundef 5) #40, !dbg !2885
  %75 = load ptr, ptr %4, align 8, !dbg !2885, !tbaa !792
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2885
  %77 = load ptr, ptr %76, align 8, !dbg !2885, !tbaa !792
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2885
  %79 = load ptr, ptr %78, align 8, !dbg !2885, !tbaa !792
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2885
  %81 = load ptr, ptr %80, align 8, !dbg !2885, !tbaa !792
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2885
  %83 = load ptr, ptr %82, align 8, !dbg !2885, !tbaa !792
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2885
  %85 = load ptr, ptr %84, align 8, !dbg !2885, !tbaa !792
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2885
  %87 = load ptr, ptr %86, align 8, !dbg !2885, !tbaa !792
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !2885
  br label %147, !dbg !2886

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.14.88, i32 noundef 5) #40, !dbg !2887
  %91 = load ptr, ptr %4, align 8, !dbg !2887, !tbaa !792
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2887
  %93 = load ptr, ptr %92, align 8, !dbg !2887, !tbaa !792
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2887
  %95 = load ptr, ptr %94, align 8, !dbg !2887, !tbaa !792
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2887
  %97 = load ptr, ptr %96, align 8, !dbg !2887, !tbaa !792
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2887
  %99 = load ptr, ptr %98, align 8, !dbg !2887, !tbaa !792
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2887
  %101 = load ptr, ptr %100, align 8, !dbg !2887, !tbaa !792
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2887
  %103 = load ptr, ptr %102, align 8, !dbg !2887, !tbaa !792
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2887
  %105 = load ptr, ptr %104, align 8, !dbg !2887, !tbaa !792
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !2887
  br label %147, !dbg !2888

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.15.89, i32 noundef 5) #40, !dbg !2889
  %109 = load ptr, ptr %4, align 8, !dbg !2889, !tbaa !792
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2889
  %111 = load ptr, ptr %110, align 8, !dbg !2889, !tbaa !792
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2889
  %113 = load ptr, ptr %112, align 8, !dbg !2889, !tbaa !792
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2889
  %115 = load ptr, ptr %114, align 8, !dbg !2889, !tbaa !792
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2889
  %117 = load ptr, ptr %116, align 8, !dbg !2889, !tbaa !792
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2889
  %119 = load ptr, ptr %118, align 8, !dbg !2889, !tbaa !792
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2889
  %121 = load ptr, ptr %120, align 8, !dbg !2889, !tbaa !792
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2889
  %123 = load ptr, ptr %122, align 8, !dbg !2889, !tbaa !792
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2889
  %125 = load ptr, ptr %124, align 8, !dbg !2889, !tbaa !792
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !2889
  br label %147, !dbg !2890

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.16.90, i32 noundef 5) #40, !dbg !2891
  %129 = load ptr, ptr %4, align 8, !dbg !2891, !tbaa !792
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2891
  %131 = load ptr, ptr %130, align 8, !dbg !2891, !tbaa !792
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2891
  %133 = load ptr, ptr %132, align 8, !dbg !2891, !tbaa !792
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2891
  %135 = load ptr, ptr %134, align 8, !dbg !2891, !tbaa !792
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2891
  %137 = load ptr, ptr %136, align 8, !dbg !2891, !tbaa !792
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2891
  %139 = load ptr, ptr %138, align 8, !dbg !2891, !tbaa !792
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2891
  %141 = load ptr, ptr %140, align 8, !dbg !2891, !tbaa !792
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2891
  %143 = load ptr, ptr %142, align 8, !dbg !2891, !tbaa !792
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2891
  %145 = load ptr, ptr %144, align 8, !dbg !2891, !tbaa !792
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !2891
  br label %147, !dbg !2892

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2893
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2894 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2899, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2901, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2902, metadata !DIExpression()), !dbg !2904
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2903, metadata !DIExpression()), !dbg !2904
  br label %6, !dbg !2905

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2903, metadata !DIExpression()), !dbg !2904
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2908
  %9 = load ptr, ptr %8, align 8, !dbg !2908, !tbaa !792
  %10 = icmp eq ptr %9, null, !dbg !2910
  %11 = add i64 %7, 1, !dbg !2911
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2903, metadata !DIExpression()), !dbg !2904
  br i1 %10, label %12, label %6, !dbg !2910, !llvm.loop !2912

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2907
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2914
  ret void, !dbg !2915
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2916 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2936, metadata !DIExpression(), metadata !2938, metadata ptr %6, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2931, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2933, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2934, metadata !DIExpression(DW_OP_deref)), !dbg !2939
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !2940
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2935, metadata !DIExpression()), !dbg !2939
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2935, metadata !DIExpression()), !dbg !2939
  %10 = icmp sgt i32 %9, -1, !dbg !2941
  br i1 %10, label %18, label %11, !dbg !2941

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2941
  store i32 %12, ptr %7, align 8, !dbg !2941
  %13 = icmp ult i32 %9, -7, !dbg !2941
  br i1 %13, label %14, label %18, !dbg !2941

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2941
  %16 = sext i32 %9 to i64, !dbg !2941
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2941
  br label %22, !dbg !2941

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2941
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2941
  store ptr %21, ptr %4, align 8, !dbg !2941
  br label %22, !dbg !2941

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2941
  %25 = load ptr, ptr %24, align 8, !dbg !2941
  store ptr %25, ptr %6, align 8, !dbg !2944, !tbaa !792
  %26 = icmp eq ptr %25, null, !dbg !2945
  br i1 %26, label %197, label %27, !dbg !2946

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2935, metadata !DIExpression()), !dbg !2939
  %28 = icmp sgt i32 %23, -1, !dbg !2941
  br i1 %28, label %36, label %29, !dbg !2941

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2941
  store i32 %30, ptr %7, align 8, !dbg !2941
  %31 = icmp ult i32 %23, -7, !dbg !2941
  br i1 %31, label %32, label %36, !dbg !2941

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2941
  %34 = sext i32 %23 to i64, !dbg !2941
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2941
  br label %40, !dbg !2941

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2941
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2941
  store ptr %39, ptr %4, align 8, !dbg !2941
  br label %40, !dbg !2941

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2941
  %43 = load ptr, ptr %42, align 8, !dbg !2941
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2947
  store ptr %43, ptr %44, align 8, !dbg !2944, !tbaa !792
  %45 = icmp eq ptr %43, null, !dbg !2945
  br i1 %45, label %197, label %46, !dbg !2946

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2935, metadata !DIExpression()), !dbg !2939
  %47 = icmp sgt i32 %41, -1, !dbg !2941
  br i1 %47, label %55, label %48, !dbg !2941

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2941
  store i32 %49, ptr %7, align 8, !dbg !2941
  %50 = icmp ult i32 %41, -7, !dbg !2941
  br i1 %50, label %51, label %55, !dbg !2941

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2941
  %53 = sext i32 %41 to i64, !dbg !2941
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2941
  br label %59, !dbg !2941

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2941
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2941
  store ptr %58, ptr %4, align 8, !dbg !2941
  br label %59, !dbg !2941

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2941
  %62 = load ptr, ptr %61, align 8, !dbg !2941
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2947
  store ptr %62, ptr %63, align 8, !dbg !2944, !tbaa !792
  %64 = icmp eq ptr %62, null, !dbg !2945
  br i1 %64, label %197, label %65, !dbg !2946

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2935, metadata !DIExpression()), !dbg !2939
  %66 = icmp sgt i32 %60, -1, !dbg !2941
  br i1 %66, label %74, label %67, !dbg !2941

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2941
  store i32 %68, ptr %7, align 8, !dbg !2941
  %69 = icmp ult i32 %60, -7, !dbg !2941
  br i1 %69, label %70, label %74, !dbg !2941

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2941
  %72 = sext i32 %60 to i64, !dbg !2941
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2941
  br label %78, !dbg !2941

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2941
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2941
  store ptr %77, ptr %4, align 8, !dbg !2941
  br label %78, !dbg !2941

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2941
  %81 = load ptr, ptr %80, align 8, !dbg !2941
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2947
  store ptr %81, ptr %82, align 8, !dbg !2944, !tbaa !792
  %83 = icmp eq ptr %81, null, !dbg !2945
  br i1 %83, label %197, label %84, !dbg !2946

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2935, metadata !DIExpression()), !dbg !2939
  %85 = icmp sgt i32 %79, -1, !dbg !2941
  br i1 %85, label %93, label %86, !dbg !2941

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2941
  store i32 %87, ptr %7, align 8, !dbg !2941
  %88 = icmp ult i32 %79, -7, !dbg !2941
  br i1 %88, label %89, label %93, !dbg !2941

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2941
  %91 = sext i32 %79 to i64, !dbg !2941
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2941
  br label %97, !dbg !2941

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2941
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2941
  store ptr %96, ptr %4, align 8, !dbg !2941
  br label %97, !dbg !2941

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2941
  %100 = load ptr, ptr %99, align 8, !dbg !2941
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2947
  store ptr %100, ptr %101, align 8, !dbg !2944, !tbaa !792
  %102 = icmp eq ptr %100, null, !dbg !2945
  br i1 %102, label %197, label %103, !dbg !2946

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2935, metadata !DIExpression()), !dbg !2939
  %104 = icmp sgt i32 %98, -1, !dbg !2941
  br i1 %104, label %112, label %105, !dbg !2941

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2941
  store i32 %106, ptr %7, align 8, !dbg !2941
  %107 = icmp ult i32 %98, -7, !dbg !2941
  br i1 %107, label %108, label %112, !dbg !2941

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2941
  %110 = sext i32 %98 to i64, !dbg !2941
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2941
  br label %116, !dbg !2941

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2941
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2941
  store ptr %115, ptr %4, align 8, !dbg !2941
  br label %116, !dbg !2941

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2941
  %119 = load ptr, ptr %118, align 8, !dbg !2941
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2947
  store ptr %119, ptr %120, align 8, !dbg !2944, !tbaa !792
  %121 = icmp eq ptr %119, null, !dbg !2945
  br i1 %121, label %197, label %122, !dbg !2946

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2935, metadata !DIExpression()), !dbg !2939
  %123 = icmp sgt i32 %117, -1, !dbg !2941
  br i1 %123, label %131, label %124, !dbg !2941

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2941
  store i32 %125, ptr %7, align 8, !dbg !2941
  %126 = icmp ult i32 %117, -7, !dbg !2941
  br i1 %126, label %127, label %131, !dbg !2941

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2941
  %129 = sext i32 %117 to i64, !dbg !2941
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2941
  br label %135, !dbg !2941

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2941
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2941
  store ptr %134, ptr %4, align 8, !dbg !2941
  br label %135, !dbg !2941

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2941
  %138 = load ptr, ptr %137, align 8, !dbg !2941
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2947
  store ptr %138, ptr %139, align 8, !dbg !2944, !tbaa !792
  %140 = icmp eq ptr %138, null, !dbg !2945
  br i1 %140, label %197, label %141, !dbg !2946

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2935, metadata !DIExpression()), !dbg !2939
  %142 = icmp sgt i32 %136, -1, !dbg !2941
  br i1 %142, label %150, label %143, !dbg !2941

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2941
  store i32 %144, ptr %7, align 8, !dbg !2941
  %145 = icmp ult i32 %136, -7, !dbg !2941
  br i1 %145, label %146, label %150, !dbg !2941

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2941
  %148 = sext i32 %136 to i64, !dbg !2941
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2941
  br label %154, !dbg !2941

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2941
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2941
  store ptr %153, ptr %4, align 8, !dbg !2941
  br label %154, !dbg !2941

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2941
  %157 = load ptr, ptr %156, align 8, !dbg !2941
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2947
  store ptr %157, ptr %158, align 8, !dbg !2944, !tbaa !792
  %159 = icmp eq ptr %157, null, !dbg !2945
  br i1 %159, label %197, label %160, !dbg !2946

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2935, metadata !DIExpression()), !dbg !2939
  %161 = icmp sgt i32 %155, -1, !dbg !2941
  br i1 %161, label %169, label %162, !dbg !2941

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2941
  store i32 %163, ptr %7, align 8, !dbg !2941
  %164 = icmp ult i32 %155, -7, !dbg !2941
  br i1 %164, label %165, label %169, !dbg !2941

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2941
  %167 = sext i32 %155 to i64, !dbg !2941
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2941
  br label %173, !dbg !2941

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2941
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2941
  store ptr %172, ptr %4, align 8, !dbg !2941
  br label %173, !dbg !2941

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2941
  %176 = load ptr, ptr %175, align 8, !dbg !2941
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2947
  store ptr %176, ptr %177, align 8, !dbg !2944, !tbaa !792
  %178 = icmp eq ptr %176, null, !dbg !2945
  br i1 %178, label %197, label %179, !dbg !2946

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2935, metadata !DIExpression()), !dbg !2939
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2935, metadata !DIExpression()), !dbg !2939
  %180 = icmp sgt i32 %174, -1, !dbg !2941
  br i1 %180, label %188, label %181, !dbg !2941

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2941
  store i32 %182, ptr %7, align 8, !dbg !2941
  %183 = icmp ult i32 %174, -7, !dbg !2941
  br i1 %183, label %184, label %188, !dbg !2941

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2941
  %186 = sext i32 %174 to i64, !dbg !2941
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2941
  br label %191, !dbg !2941

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2941
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2941
  store ptr %190, ptr %4, align 8, !dbg !2941
  br label %191, !dbg !2941

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2941
  %193 = load ptr, ptr %192, align 8, !dbg !2941
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2947
  store ptr %193, ptr %194, align 8, !dbg !2944, !tbaa !792
  %195 = icmp eq ptr %193, null, !dbg !2945
  %196 = select i1 %195, i64 9, i64 10, !dbg !2946
  br label %197, !dbg !2946

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2948
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2949
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !2950
  ret void, !dbg !2950
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2951 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2960
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2959, metadata !DIExpression(), metadata !2960, metadata ptr %5, metadata !DIExpression()), !dbg !2961
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2956, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !2961
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2958, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !2962
  call void @llvm.va_start(ptr nonnull %5), !dbg !2963
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !2964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2964, !tbaa.struct !1215
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2964
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !2964
  call void @llvm.va_end(ptr nonnull %5), !dbg !2965
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !2966
  ret void, !dbg !2966
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2967 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2968, !tbaa !792
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %1), !dbg !2968
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.17.95, i32 noundef 5) #40, !dbg !2969
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.96) #40, !dbg !2969
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.19.97, i32 noundef 5) #40, !dbg !2970
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.98, ptr noundef nonnull @.str.21) #40, !dbg !2970
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !2971
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.99) #40, !dbg !2971
  ret void, !dbg !2972
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !2973 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2979, metadata !DIExpression()), !dbg !2981
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2980, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !2987
  call void @llvm.dbg.value(metadata i64 %2, metadata !2986, metadata !DIExpression()), !dbg !2987
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !2989
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !2995
  %5 = icmp eq ptr %4, null, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2999

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3000
  unreachable, !dbg !3000

7:                                                ; preds = %3
  ret ptr %4, !dbg !3001
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !2983 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !3002
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2986, metadata !DIExpression()), !dbg !3002
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3003
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3004
  %5 = icmp eq ptr %4, null, !dbg !3006
  br i1 %5, label %6, label %7, !dbg !3007

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3008
  unreachable, !dbg !3008

7:                                                ; preds = %3
  ret ptr %4, !dbg !3009
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3010 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3012, metadata !DIExpression()), !dbg !3013
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3015
  %3 = icmp eq ptr %2, null, !dbg !3017
  br i1 %3, label %4, label %5, !dbg !3018

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3019
  unreachable, !dbg !3019

5:                                                ; preds = %1
  ret ptr %2, !dbg !3020
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3021 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3025, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %0, metadata !3027, metadata !DIExpression()), !dbg !3031
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3034
  %3 = icmp eq ptr %2, null, !dbg !3036
  br i1 %3, label %4, label %5, !dbg !3037

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3038
  unreachable, !dbg !3038

5:                                                ; preds = %1
  ret ptr %2, !dbg !3039
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %0, metadata !3012, metadata !DIExpression()), !dbg !3046
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3049
  %3 = icmp eq ptr %2, null, !dbg !3051
  br i1 %3, label %4, label %5, !dbg !3052

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3053
  unreachable, !dbg !3053

5:                                                ; preds = %1
  ret ptr %2, !dbg !3054
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3055 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3061
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3067
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3069
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3071
  %5 = icmp eq ptr %4, null, !dbg !3073
  br i1 %5, label %6, label %7, !dbg !3074

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3075
  unreachable, !dbg !3075

7:                                                ; preds = %2
  ret ptr %4, !dbg !3076
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3077 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3078 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3082, metadata !DIExpression()), !dbg !3084
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3091
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3093
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3095
  %5 = icmp eq ptr %4, null, !dbg !3097
  br i1 %5, label %6, label %7, !dbg !3098

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3099
  unreachable, !dbg !3099

7:                                                ; preds = %2
  ret ptr %4, !dbg !3100
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3101 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3105, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3108
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !3109, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %2, metadata !3113, metadata !DIExpression()), !dbg !3114
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3117
  %5 = icmp eq ptr %4, null, !dbg !3119
  br i1 %5, label %6, label %7, !dbg !3120

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3121
  unreachable, !dbg !3121

7:                                                ; preds = %3
  ret ptr %4, !dbg !3122
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3123 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3127, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr null, metadata !2982, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !2986, metadata !DIExpression()), !dbg !3130
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3133
  %4 = icmp eq ptr %3, null, !dbg !3135
  br i1 %4, label %5, label %6, !dbg !3136

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3137
  unreachable, !dbg !3137

6:                                                ; preds = %2
  ret ptr %3, !dbg !3138
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3139 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr null, metadata !3105, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr null, metadata !3109, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3148
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3151
  %4 = icmp eq ptr %3, null, !dbg !3153
  br i1 %4, label %5, label %6, !dbg !3154

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3155
  unreachable, !dbg !3155

6:                                                ; preds = %2
  ret ptr %3, !dbg !3156
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3157 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3161, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 1, metadata !729, metadata !DIExpression()), !dbg !3164
  %3 = load i64, ptr %1, align 8, !dbg !3166, !tbaa !2234
  call void @llvm.dbg.value(metadata i64 %3, metadata !730, metadata !DIExpression()), !dbg !3164
  %4 = icmp eq ptr %0, null, !dbg !3167
  br i1 %4, label %5, label %8, !dbg !3169

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3170
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3173
  br label %15, !dbg !3173

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3174
  %10 = add nuw i64 %9, 1, !dbg !3174
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3174
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3174
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %13, metadata !730, metadata !DIExpression()), !dbg !3164
  br i1 %12, label %14, label %15, !dbg !3177

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3178
  unreachable, !dbg !3178

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3164
  call void @llvm.dbg.value(metadata i64 %16, metadata !730, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 %16, metadata !2985, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i64 1, metadata !2986, metadata !DIExpression()), !dbg !3179
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %17, metadata !2990, metadata !DIExpression()), !dbg !3182
  %18 = icmp eq ptr %17, null, !dbg !3184
  br i1 %18, label %19, label %20, !dbg !3185

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3186
  unreachable, !dbg !3186

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !727, metadata !DIExpression()), !dbg !3164
  store i64 %16, ptr %1, align 8, !dbg !3187, !tbaa !2234
  ret ptr %17, !dbg !3188
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !722 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !729, metadata !DIExpression()), !dbg !3189
  %4 = load i64, ptr %1, align 8, !dbg !3190, !tbaa !2234
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !730, metadata !DIExpression()), !dbg !3189
  %5 = icmp eq ptr %0, null, !dbg !3191
  br i1 %5, label %6, label %13, !dbg !3192

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3193
  br i1 %7, label %8, label %20, !dbg !3194

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !730, metadata !DIExpression()), !dbg !3189
  %10 = icmp ugt i64 %2, 128, !dbg !3197
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !730, metadata !DIExpression()), !dbg !3189
  br label %20, !dbg !3199

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3200
  %15 = add nuw i64 %14, 1, !dbg !3200
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3200
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3200
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !730, metadata !DIExpression()), !dbg !3189
  br i1 %17, label %19, label %20, !dbg !3201

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3202
  unreachable, !dbg !3202

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !730, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata ptr %0, metadata !2982, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %21, metadata !2985, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %2, metadata !2986, metadata !DIExpression()), !dbg !3203
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %22, metadata !2990, metadata !DIExpression()), !dbg !3206
  %23 = icmp eq ptr %22, null, !dbg !3208
  br i1 %23, label %24, label %25, !dbg !3209

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3210
  unreachable, !dbg !3210

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !727, metadata !DIExpression()), !dbg !3189
  store i64 %21, ptr %1, align 8, !dbg !3211, !tbaa !2234
  ret ptr %22, !dbg !3212
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !741, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !742, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !743, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !744, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !745, metadata !DIExpression()), !dbg !3213
  %6 = load i64, ptr %1, align 8, !dbg !3214, !tbaa !2234
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !746, metadata !DIExpression()), !dbg !3213
  %7 = ashr i64 %6, 1, !dbg !3215
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3215
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3215
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !747, metadata !DIExpression()), !dbg !3213
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3217
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !747, metadata !DIExpression()), !dbg !3213
  %12 = icmp sgt i64 %3, -1, !dbg !3218
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3220
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !747, metadata !DIExpression()), !dbg !3213
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3221
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3221
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !748, metadata !DIExpression()), !dbg !3213
  %18 = icmp slt i64 %17, 128, !dbg !3221
  %19 = select i1 %18, i64 128, i64 0, !dbg !3221
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !749, metadata !DIExpression()), !dbg !3213
  %21 = icmp eq i64 %20, 0, !dbg !3222
  br i1 %21, label %28, label %22, !dbg !3224

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !747, metadata !DIExpression()), !dbg !3213
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !748, metadata !DIExpression()), !dbg !3213
  br label %28, !dbg !3228

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3213
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !748, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !747, metadata !DIExpression()), !dbg !3213
  %31 = icmp eq ptr %0, null, !dbg !3229
  br i1 %31, label %32, label %33, !dbg !3231

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3232, !tbaa !2234
  br label %33, !dbg !3233

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3234
  %35 = icmp slt i64 %34, %2, !dbg !3236
  br i1 %35, label %36, label %48, !dbg !3237

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3238
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3238
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !747, metadata !DIExpression()), !dbg !3213
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3239
  br i1 %42, label %47, label %43, !dbg !3239

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3240
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3240
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !748, metadata !DIExpression()), !dbg !3213
  br i1 %45, label %47, label %48, !dbg !3241

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !3242
  unreachable, !dbg !3242

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3213
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !748, metadata !DIExpression()), !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !747, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %50, metadata !3060, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %50, metadata !3066, metadata !DIExpression()), !dbg !3245
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3247
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #47, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %52, metadata !2990, metadata !DIExpression()), !dbg !3249
  %53 = icmp eq ptr %52, null, !dbg !3251
  br i1 %53, label %54, label %55, !dbg !3252

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !3253
  unreachable, !dbg !3253

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !741, metadata !DIExpression()), !dbg !3213
  store i64 %49, ptr %1, align 8, !dbg !3254, !tbaa !2234
  ret ptr %52, !dbg !3255
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 1, metadata !3263, metadata !DIExpression()), !dbg !3264
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3267
  %3 = icmp eq ptr %2, null, !dbg !3269
  br i1 %3, label %4, label %5, !dbg !3270

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3271
  unreachable, !dbg !3271

5:                                                ; preds = %1
  ret ptr %2, !dbg !3272
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3273 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3260, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3274
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3275
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3276
  %4 = icmp eq ptr %3, null, !dbg !3278
  br i1 %4, label %5, label %6, !dbg !3279

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3280
  unreachable, !dbg !3280

6:                                                ; preds = %2
  ret ptr %3, !dbg !3281
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3282 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 1, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !3298
  call void @llvm.dbg.value(metadata ptr %2, metadata !2990, metadata !DIExpression()), !dbg !3299
  %3 = icmp eq ptr %2, null, !dbg !3301
  br i1 %3, label %4, label %5, !dbg !3302

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3303
  unreachable, !dbg !3303

5:                                                ; preds = %1
  ret ptr %2, !dbg !3304
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3287 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3306
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3309
  %4 = icmp eq ptr %3, null, !dbg !3311
  br i1 %4, label %5, label %6, !dbg !3312

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3313
  unreachable, !dbg !3313

6:                                                ; preds = %2
  ret ptr %3, !dbg !3314
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3315 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3012, metadata !DIExpression()), !dbg !3322
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3325
  %4 = icmp eq ptr %3, null, !dbg !3327
  br i1 %4, label %5, label %6, !dbg !3328

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3329
  unreachable, !dbg !3329

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3337
  ret ptr %3, !dbg !3338
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3339 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3343, metadata !DIExpression()), !dbg !3345
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3025, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()), !dbg !3348
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %3, metadata !2990, metadata !DIExpression()), !dbg !3351
  %4 = icmp eq ptr %3, null, !dbg !3353
  br i1 %4, label %5, label %6, !dbg !3354

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3355
  unreachable, !dbg !3355

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3358
  ret ptr %3, !dbg !3359
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3360 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3364, metadata !DIExpression()), !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3365, metadata !DIExpression()), !dbg !3367
  %3 = add nsw i64 %1, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %3, metadata !3025, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %3, metadata !3027, metadata !DIExpression()), !dbg !3371
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3373
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3374
  %5 = icmp eq ptr %4, null, !dbg !3376
  br i1 %5, label %6, label %7, !dbg !3377

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3378
  unreachable, !dbg !3378

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3366, metadata !DIExpression()), !dbg !3367
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3379
  store i8 0, ptr %8, align 1, !dbg !3380, !tbaa !863
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3334, metadata !DIExpression()), !dbg !3381
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3383
  ret ptr %4, !dbg !3384
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3385 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3388
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3389
  %3 = add i64 %2, 1, !dbg !3390
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i64 %3, metadata !3012, metadata !DIExpression()), !dbg !3393
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !3395
  call void @llvm.dbg.value(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !3396
  %5 = icmp eq ptr %4, null, !dbg !3398
  br i1 %5, label %6, label %7, !dbg !3399

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3400
  unreachable, !dbg !3400

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %0, metadata !3333, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %3, metadata !3334, metadata !DIExpression()), !dbg !3401
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !3403
  ret ptr %4, !dbg !3404
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3405 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3410, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3407, metadata !DIExpression()), !dbg !3411
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.110, ptr noundef nonnull @.str.2.111, i32 noundef 5) #40, !dbg !3410
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef %2) #40, !dbg !3410
  %3 = icmp eq i32 %1, 0, !dbg !3410
  tail call void @llvm.assume(i1 %3), !dbg !3410
  tail call void @abort() #42, !dbg !3412
  unreachable, !dbg !3412
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !3413 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3415, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3416, metadata !DIExpression()), !dbg !3420
  br label %2, !dbg !3421

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3420
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3416, metadata !DIExpression()), !dbg !3420
  %4 = load i8, ptr %3, align 1, !dbg !3422, !tbaa !863
  %5 = icmp eq i8 %4, 47, !dbg !3422
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3423
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3416, metadata !DIExpression()), !dbg !3420
  br i1 %5, label %2, label %.preheader, !dbg !3421, !llvm.loop !3424

.preheader:                                       ; preds = %2
  %.lcssa2 = phi ptr [ %3, %2 ], !dbg !3420
  %.lcssa1 = phi i8 [ %4, %2 ], !dbg !3422
  br label %7, !dbg !3425

7:                                                ; preds = %.preheader, %15
  %8 = phi i8 [ %19, %15 ], [ %.lcssa1, %.preheader ], !dbg !3426
  %9 = phi ptr [ %16, %15 ], [ %.lcssa2, %.preheader ], !dbg !3428
  %10 = phi i1 [ %17, %15 ], [ false, %.preheader ]
  %11 = phi ptr [ %18, %15 ], [ %.lcssa2, %.preheader ], !dbg !3429
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !3418, metadata !DIExpression()), !dbg !3430
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3417, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3416, metadata !DIExpression()), !dbg !3420
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3425

12:                                               ; preds = %7
  %.lcssa = phi ptr [ %9, %7 ], !dbg !3428
  ret ptr %.lcssa, !dbg !3431

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3432
  br label %15, !dbg !3432

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3420
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3417, metadata !DIExpression()), !dbg !3420
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !3416, metadata !DIExpression()), !dbg !3420
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3435
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !3418, metadata !DIExpression()), !dbg !3430
  %19 = load i8, ptr %18, align 1, !dbg !3426, !tbaa !863
  br label %7, !dbg !3436, !llvm.loop !3437
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #37 !dbg !3439 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3441, metadata !DIExpression()), !dbg !3444
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3444
  %3 = getelementptr i8, ptr %0, i64 -1, !dbg !3447
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3444
  %4 = icmp ugt i64 %2, 1, !dbg !3448
  br i1 %4, label %.preheader, label %13, !dbg !3450

.preheader:                                       ; preds = %1
  br label %5, !dbg !3451

5:                                                ; preds = %.preheader, %10
  %6 = phi i64 [ %11, %10 ], [ %2, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !3442, metadata !DIExpression()), !dbg !3444
  %7 = getelementptr i8, ptr %3, i64 %6, !dbg !3452
  %8 = load i8, ptr %7, align 1, !dbg !3452, !tbaa !863
  %9 = icmp eq i8 %8, 47, !dbg !3452
  br i1 %9, label %10, label %.loopexit, !dbg !3451

10:                                               ; preds = %5
  %11 = add i64 %6, -1, !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3442, metadata !DIExpression()), !dbg !3444
  %12 = icmp ugt i64 %11, 1, !dbg !3448
  br i1 %12, label %5, label %.loopexit, !dbg !3450, !llvm.loop !3454

.loopexit:                                        ; preds = %10, %5
  %.ph = phi i64 [ %6, %5 ], [ 1, %10 ]
  br label %13, !dbg !3456

13:                                               ; preds = %.loopexit, %1
  %14 = phi i64 [ %2, %1 ], [ %.ph, %.loopexit ], !dbg !3457
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3443, metadata !DIExpression()), !dbg !3444
  ret i64 %14, !dbg !3456
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3501
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !3502
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3497, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3501
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3503, metadata !DIExpression()), !dbg !3506
  %3 = load i32, ptr %0, align 8, !dbg !3508, !tbaa !3509
  %4 = and i32 %3, 32, !dbg !3510
  %5 = icmp eq i32 %4, 0, !dbg !3510
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3499, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3501
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !3511
  %7 = icmp eq i32 %6, 0, !dbg !3512
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3500, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3501
  br i1 %5, label %8, label %18, !dbg !3513

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3515
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3497, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3501
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3516
  %11 = xor i1 %7, true, !dbg !3516
  %12 = sext i1 %11 to i32, !dbg !3516
  br i1 %10, label %21, label %13, !dbg !3516

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !3517
  %15 = load i32, ptr %14, align 4, !dbg !3517, !tbaa !854
  %16 = icmp ne i32 %15, 9, !dbg !3518
  %17 = sext i1 %16 to i32, !dbg !3519
  br label %21, !dbg !3519

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3520

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !3522
  store i32 0, ptr %20, align 4, !dbg !3524, !tbaa !854
  br label %21, !dbg !3522

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3501
  ret i32 %22, !dbg !3525
}

; Function Attrs: nounwind
declare !dbg !3526 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3530 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3568, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()), !dbg !3572
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3573
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3570, metadata !DIExpression()), !dbg !3572
  %3 = icmp slt i32 %2, 0, !dbg !3574
  br i1 %3, label %4, label %6, !dbg !3576

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3577
  br label %24, !dbg !3578

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !3579
  %8 = icmp eq i32 %7, 0, !dbg !3579
  br i1 %8, label %13, label %9, !dbg !3581

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3582
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !3583
  %12 = icmp eq i64 %11, -1, !dbg !3584
  br i1 %12, label %16, label %13, !dbg !3585

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !3586
  %15 = icmp eq i32 %14, 0, !dbg !3586
  br i1 %15, label %16, label %18, !dbg !3587

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3569, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3571, metadata !DIExpression()), !dbg !3572
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3571, metadata !DIExpression()), !dbg !3572
  br label %24, !dbg !3589

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !3590
  %20 = load i32, ptr %19, align 4, !dbg !3590, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3569, metadata !DIExpression()), !dbg !3572
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3571, metadata !DIExpression()), !dbg !3572
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3588
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3571, metadata !DIExpression()), !dbg !3572
  %22 = icmp eq i32 %20, 0, !dbg !3591
  br i1 %22, label %24, label %23, !dbg !3589

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3593, !tbaa !854
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3571, metadata !DIExpression()), !dbg !3572
  br label %24, !dbg !3595

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3572
  ret i32 %25, !dbg !3596
}

; Function Attrs: nofree nounwind
declare !dbg !3597 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3598 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3599 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3600 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3603 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3641, metadata !DIExpression()), !dbg !3642
  %2 = icmp eq ptr %0, null, !dbg !3643
  br i1 %2, label %6, label %3, !dbg !3645

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !3646
  %5 = icmp eq i32 %4, 0, !dbg !3646
  br i1 %5, label %6, label %8, !dbg !3647

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3648
  br label %16, !dbg !3649

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3650, metadata !DIExpression()), !dbg !3655
  %9 = load i32, ptr %0, align 8, !dbg !3657, !tbaa !3509
  %10 = and i32 %9, 256, !dbg !3659
  %11 = icmp eq i32 %10, 0, !dbg !3659
  br i1 %11, label %14, label %12, !dbg !3660

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !3661
  br label %14, !dbg !3661

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3662
  br label %16, !dbg !3663

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3642
  ret i32 %17, !dbg !3664
}

; Function Attrs: nofree nounwind
declare !dbg !3665 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3705, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3706, metadata !DIExpression()), !dbg !3711
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3707, metadata !DIExpression()), !dbg !3711
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3712
  %5 = load ptr, ptr %4, align 8, !dbg !3712, !tbaa !3713
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3714
  %7 = load ptr, ptr %6, align 8, !dbg !3714, !tbaa !3715
  %8 = icmp eq ptr %5, %7, !dbg !3716
  br i1 %8, label %9, label %27, !dbg !3717

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3718
  %11 = load ptr, ptr %10, align 8, !dbg !3718, !tbaa !1041
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3719
  %13 = load ptr, ptr %12, align 8, !dbg !3719, !tbaa !3720
  %14 = icmp eq ptr %11, %13, !dbg !3721
  br i1 %14, label %15, label %27, !dbg !3722

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3723
  %17 = load ptr, ptr %16, align 8, !dbg !3723, !tbaa !3724
  %18 = icmp eq ptr %17, null, !dbg !3725
  br i1 %18, label %19, label %27, !dbg !3726

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !3727
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !3728
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3708, metadata !DIExpression()), !dbg !3729
  %22 = icmp eq i64 %21, -1, !dbg !3730
  br i1 %22, label %29, label %23, !dbg !3732

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3733, !tbaa !3509
  %25 = and i32 %24, -17, !dbg !3733
  store i32 %25, ptr %0, align 8, !dbg !3733, !tbaa !3509
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3734
  store i64 %21, ptr %26, align 8, !dbg !3735, !tbaa !3736
  br label %29, !dbg !3737

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3738
  br label %29, !dbg !3739

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3711
  ret i32 %30, !dbg !3740
}

; Function Attrs: nofree nounwind
declare !dbg !3741 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3749, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3750, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3751, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3752, metadata !DIExpression()), !dbg !3754
  %5 = icmp eq ptr %1, null, !dbg !3755
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3757
  %7 = select i1 %5, ptr @.str.125, ptr %1, !dbg !3757
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3757
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3751, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3750, metadata !DIExpression()), !dbg !3754
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3749, metadata !DIExpression()), !dbg !3754
  %9 = icmp eq ptr %3, null, !dbg !3758
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3760
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3752, metadata !DIExpression()), !dbg !3754
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !3761
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3753, metadata !DIExpression()), !dbg !3754
  %12 = icmp ult i64 %11, -3, !dbg !3762
  br i1 %12, label %13, label %17, !dbg !3764

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !3765
  %15 = icmp eq i32 %14, 0, !dbg !3765
  br i1 %15, label %16, label %29, !dbg !3766

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3767, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.value(metadata ptr %10, metadata !3774, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 0, metadata !3777, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i64 8, metadata !3778, metadata !DIExpression()), !dbg !3779
  store i64 0, ptr %10, align 1, !dbg !3781
  br label %29, !dbg !3782

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3783
  br i1 %18, label %19, label %20, !dbg !3785

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !3786
  unreachable, !dbg !3786

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3787

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !3789
  br i1 %23, label %29, label %24, !dbg !3790

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3791
  br i1 %25, label %29, label %26, !dbg !3794

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3795, !tbaa !863
  %28 = zext i8 %27 to i32, !dbg !3796
  store i32 %28, ptr %6, align 4, !dbg !3797, !tbaa !854
  br label %29, !dbg !3798

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3754
  ret i64 %30, !dbg !3799
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3800 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !3806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3808, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3809, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3810, metadata !DIExpression()), !dbg !3812
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3813
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3811, metadata !DIExpression()), !dbg !3812
  br i1 %5, label %6, label %8, !dbg !3815

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !3816
  store i32 12, ptr %7, align 4, !dbg !3818, !tbaa !854
  br label %12, !dbg !3819

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3813
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3811, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %0, metadata !3820, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 %9, metadata !3823, metadata !DIExpression()), !dbg !3824
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3826
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !3827
  br label %12, !dbg !3828

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3812
  ret ptr %13, !dbg !3829
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3830 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3839
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3835, metadata !DIExpression(), metadata !3839, metadata ptr %2, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3834, metadata !DIExpression()), !dbg !3840
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !3841
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !3842
  %4 = icmp eq i32 %3, 0, !dbg !3842
  br i1 %4, label %5, label %12, !dbg !3844

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3845, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata ptr @.str.130, metadata !3848, metadata !DIExpression()), !dbg !3849
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.130, i64 2), !dbg !3852
  %7 = icmp eq i32 %6, 0, !dbg !3853
  br i1 %7, label %11, label %8, !dbg !3854

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3845, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata ptr @.str.1.131, metadata !3848, metadata !DIExpression()), !dbg !3855
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.131, i64 6), !dbg !3857
  %10 = icmp eq i32 %9, 0, !dbg !3858
  br i1 %10, label %11, label %12, !dbg !3859

11:                                               ; preds = %8, %5
  br label %12, !dbg !3860

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3840
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !3861
  ret i1 %13, !dbg !3861
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3862 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3866, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3867, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3868, metadata !DIExpression()), !dbg !3869
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !3870
  ret i32 %4, !dbg !3871
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3872 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3876, metadata !DIExpression()), !dbg !3877
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !3878
  ret ptr %2, !dbg !3879
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3880 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3884
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !3885
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3883, metadata !DIExpression()), !dbg !3884
  ret ptr %2, !dbg !3886
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3887 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3889, metadata !DIExpression()), !dbg !3896
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3890, metadata !DIExpression()), !dbg !3896
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3891, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i32 %0, metadata !3882, metadata !DIExpression()), !dbg !3897
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !3899
  call void @llvm.dbg.value(metadata ptr %4, metadata !3883, metadata !DIExpression()), !dbg !3897
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3892, metadata !DIExpression()), !dbg !3896
  %5 = icmp eq ptr %4, null, !dbg !3900
  br i1 %5, label %6, label %9, !dbg !3901

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3902
  br i1 %7, label %19, label %8, !dbg !3905

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3906, !tbaa !863
  br label %19, !dbg !3907

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !3908
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3893, metadata !DIExpression()), !dbg !3909
  %11 = icmp ult i64 %10, %2, !dbg !3910
  br i1 %11, label %12, label %14, !dbg !3912

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3913
  call void @llvm.dbg.value(metadata ptr %1, metadata !3915, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %4, metadata !3918, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i64 %13, metadata !3919, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !3922
  br label %19, !dbg !3923

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3924
  br i1 %15, label %19, label %16, !dbg !3927

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3928
  call void @llvm.dbg.value(metadata ptr %1, metadata !3915, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata ptr %4, metadata !3918, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i64 %17, metadata !3919, metadata !DIExpression()), !dbg !3930
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !3932
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3933
  store i8 0, ptr %18, align 1, !dbg !3934, !tbaa !863
  br label %19, !dbg !3935

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3936
  ret i32 %20, !dbg !3937
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
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { noreturn }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(1) }
attributes #48 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !357, !361, !707, !376, !673, !709, !432, !446, !494, !711, !665, !718, !751, !753, !756, !758, !760, !762, !689, !764, !766, !768, !770}
!llvm.ident = !{!772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772, !772}
!llvm.module.flags = !{!773, !774, !775, !776, !777, !778, !779, !780}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/dirname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a60dd6e6d60eda028b732002e611b3c7")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 28)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 152)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 66)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 50)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 62)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1040, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 130)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "longopts", scope: !64, file: !2, line: 34, type: !342, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/dirname.o -MD -MP -MF src/.deps/dirname.Tpo -c src/dirname.c -o src/.dirname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !88, globals: !98, splitDebugInlining: false, nameTableKind: None)
!65 = !{!66, !72}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 337, baseType: !68, size: 32, elements: !69)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!69 = !{!70, !71}
!70 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!71 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
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
!88 = !{!89, !90, !91, !94, !68, !96, !97}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 18, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !99, !104, !109, !114, !116, !194, !224, !229, !231, !236, !241, !243, !245, !247, !252, !254, !256, !258, !263, !265, !267, !269, !271, !273, !275, !277, !282, !287, !292, !297, !299, !301, !303, !305, !307, !312, !314, !316, !321, !326, !331, !336, !338, !340, !62}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 14)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 16)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 13)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !106, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "dot", scope: !118, file: !2, line: 124, type: !95, isLocal: true, isDefinition: true)
!118 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 78, type: !119, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !122)
!119 = !DISubroutineType(types: !120)
!120 = !{!68, !68, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!122 = !{!123, !124, !125, !127, !129, !133, !139, !141, !193}
!123 = !DILocalVariable(name: "argc", arg: 1, scope: !118, file: !2, line: 78, type: !68)
!124 = !DILocalVariable(name: "argv", arg: 2, scope: !118, file: !2, line: 78, type: !121)
!125 = !DILocalVariable(name: "use_nuls", scope: !118, file: !2, line: 80, type: !126)
!126 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!127 = !DILocalVariable(name: "c", scope: !128, file: !2, line: 92, type: !68)
!128 = distinct !DILexicalBlock(scope: !118, file: !2, line: 91, column: 5)
!129 = !DILocalVariable(name: "result", scope: !130, file: !2, line: 119, type: !94)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 118, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 117, column: 3)
!132 = distinct !DILexicalBlock(scope: !118, file: !2, line: 117, column: 3)
!133 = !DILocalVariable(name: "len", scope: !130, file: !2, line: 120, type: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !135, line: 130, baseType: !136)
!135 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !137, line: 18, baseType: !138)
!137 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!138 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!139 = !DILocalVariable(name: "__ptr", scope: !140, file: !2, line: 129, type: !94)
!140 = distinct !DILexicalBlock(scope: !130, file: !2, line: 129, column: 7)
!141 = !DILocalVariable(name: "__stream", scope: !140, file: !2, line: 129, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !145)
!144 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !147)
!146 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !163, !165, !166, !167, !170, !171, !173, !174, !177, !179, !182, !185, !186, !187, !188, !189}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !146, line: 51, baseType: !68, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !145, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !145, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !145, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !145, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !145, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !145, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !145, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !145, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !145, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !145, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !145, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !145, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !146, line: 36, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !145, file: !146, line: 70, baseType: !164, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !145, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !145, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !145, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !169, line: 152, baseType: !138)
!169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !145, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !145, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!172 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !145, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !145, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !146, line: 43, baseType: null)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !145, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !169, line: 153, baseType: !138)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !145, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !146, line: 37, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !145, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !146, line: 38, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !145, file: !146, line: 93, baseType: !164, size: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !145, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !145, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !145, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !145, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 20)
!193 = !DILocalVariable(name: "__cnt", scope: !140, file: !2, line: 129, type: !91)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !196, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!196 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !197, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !199)
!197 = !DISubroutineType(cc: DW_CC_nocall, types: !198)
!198 = !{null, !94, !94}
!199 = !{!200, !201, !202, !205, !206, !207, !208, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223}
!200 = !DILocalVariable(name: "program", arg: 1, scope: !196, file: !67, line: 573, type: !94)
!201 = !DILocalVariable(name: "option", arg: 2, scope: !196, file: !67, line: 573, type: !94)
!202 = !DILocalVariable(name: "term", scope: !203, file: !67, line: 585, type: !94)
!203 = distinct !DILexicalBlock(scope: !204, file: !67, line: 582, column: 5)
!204 = distinct !DILexicalBlock(scope: !196, file: !67, line: 581, column: 7)
!205 = !DILocalVariable(name: "double_space", scope: !196, file: !67, line: 594, type: !126)
!206 = !DILocalVariable(name: "first_word", scope: !196, file: !67, line: 595, type: !94)
!207 = !DILocalVariable(name: "option_text", scope: !196, file: !67, line: 596, type: !94)
!208 = !DILocalVariable(name: "s", scope: !209, file: !67, line: 608, type: !94)
!209 = distinct !DILexicalBlock(scope: !210, file: !67, line: 605, column: 5)
!210 = distinct !DILexicalBlock(scope: !211, file: !67, line: 604, column: 12)
!211 = distinct !DILexicalBlock(scope: !196, file: !67, line: 597, column: 7)
!212 = !DILocalVariable(name: "spaces", scope: !209, file: !67, line: 609, type: !91)
!213 = !DILocalVariable(name: "anchor_len", scope: !196, file: !67, line: 620, type: !91)
!214 = !DILocalVariable(name: "desc_text", scope: !196, file: !67, line: 625, type: !94)
!215 = !DILocalVariable(name: "__ptr", scope: !216, file: !67, line: 644, type: !94)
!216 = distinct !DILexicalBlock(scope: !196, file: !67, line: 644, column: 3)
!217 = !DILocalVariable(name: "__stream", scope: !216, file: !67, line: 644, type: !142)
!218 = !DILocalVariable(name: "__cnt", scope: !216, file: !67, line: 644, type: !91)
!219 = !DILocalVariable(name: "url_program", scope: !196, file: !67, line: 648, type: !94)
!220 = !DILocalVariable(name: "__ptr", scope: !221, file: !67, line: 686, type: !94)
!221 = distinct !DILexicalBlock(scope: !196, file: !67, line: 686, column: 3)
!222 = !DILocalVariable(name: "__stream", scope: !221, file: !67, line: 686, type: !142)
!223 = !DILocalVariable(name: "__cnt", scope: !221, file: !67, line: 686, type: !91)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 5)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !226, isLocal: true, isDefinition: true)
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
!242 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !59, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !226, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !233, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !249, isLocal: true, isDefinition: true)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 3)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !226, isLocal: true, isDefinition: true)
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
!264 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !260, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 17)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 40)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 15)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 61)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !249, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !226, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !226, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !106, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 22)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !289, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !233, isLocal: true, isDefinition: true)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 71)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 27)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 51)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 12)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !226, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !226, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1024, elements: !234)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !345, line: 50, size: 256, elements: !346)
!345 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!346 = !{!347, !348, !349, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !344, file: !345, line: 52, baseType: !94, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !344, file: !345, line: 55, baseType: !68, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !344, file: !345, line: 56, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !344, file: !345, line: 57, baseType: !68, size: 32, offset: 192)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !354, line: 3, type: !289, isLocal: true, isDefinition: true)
!354 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "Version", scope: !357, file: !354, line: 3, type: !94, isLocal: false, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C11, file: !354, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !358, splitDebugInlining: false, nameTableKind: None)
!358 = !{!352, !355}
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "file_name", scope: !361, file: !362, line: 45, type: !94, isLocal: true, isDefinition: true)
!361 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !363, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!363 = !{!364, !366, !368, !370, !359, !372}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !362, line: 121, type: !260, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !362, line: 121, type: !333, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !362, line: 123, type: !260, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !362, line: 126, type: !249, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !361, file: !362, line: 55, type: !126, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !376, file: !377, line: 66, type: !427, isLocal: false, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C11, file: !377, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !378, globals: !379, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!378 = !{!90, !97}
!379 = !{!380, !382, !406, !408, !410, !412, !374, !414, !416, !418, !420, !425}
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !377, line: 272, type: !226, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "old_file_name", scope: !384, file: !377, line: 304, type: !94, isLocal: true, isDefinition: true)
!384 = distinct !DISubprogram(name: "verror_at_line", scope: !377, file: !377, line: 298, type: !385, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !399)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !68, !68, !94, !74, !94, !387}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !388, line: 52, baseType: !389)
!388 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !390, line: 12, baseType: !391)
!390 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !377, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !393)
!393 = !{!394, !395, !396, !397, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !392, file: !377, baseType: !90, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !392, file: !377, baseType: !90, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !392, file: !377, baseType: !90, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !392, file: !377, baseType: !68, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !392, file: !377, baseType: !68, size: 32, offset: 224)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DILocalVariable(name: "status", arg: 1, scope: !384, file: !377, line: 298, type: !68)
!401 = !DILocalVariable(name: "errnum", arg: 2, scope: !384, file: !377, line: 298, type: !68)
!402 = !DILocalVariable(name: "file_name", arg: 3, scope: !384, file: !377, line: 298, type: !94)
!403 = !DILocalVariable(name: "line_number", arg: 4, scope: !384, file: !377, line: 298, type: !74)
!404 = !DILocalVariable(name: "message", arg: 5, scope: !384, file: !377, line: 298, type: !94)
!405 = !DILocalVariable(name: "args", arg: 6, scope: !384, file: !377, line: 298, type: !387)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "old_line_number", scope: !384, file: !377, line: 305, type: !74, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !377, line: 338, type: !233, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !377, line: 346, type: !19, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !377, line: 346, type: !59, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "error_message_count", scope: !376, file: !377, line: 69, type: !74, isLocal: false, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !376, file: !377, line: 295, type: !68, isLocal: false, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !377, line: 208, type: !260, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !377, line: 208, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 21)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !377, line: 214, type: !226, isLocal: true, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null}
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "program_name", scope: !432, file: !433, line: 31, type: !94, isLocal: false, isDefinition: true)
!432 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !434, globals: !435, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!434 = !{!90, !89}
!435 = !{!430, !436, !438}
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !433, line: 46, type: !19, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !433, line: 49, type: !233, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "utf07FF", scope: !442, file: !443, line: 46, type: !470, isLocal: true, isDefinition: true)
!442 = distinct !DISubprogram(name: "proper_name_lite", scope: !443, file: !443, line: 38, type: !444, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !448)
!443 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!444 = !DISubroutineType(types: !445)
!445 = !{!94, !94, !94}
!446 = distinct !DICompileUnit(language: DW_LANG_C11, file: !443, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !447, splitDebugInlining: false, nameTableKind: None)
!447 = !{!440}
!448 = !{!449, !450, !451, !452, !457}
!449 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !442, file: !443, line: 38, type: !94)
!450 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !442, file: !443, line: 38, type: !94)
!451 = !DILocalVariable(name: "translation", scope: !442, file: !443, line: 40, type: !94)
!452 = !DILocalVariable(name: "w", scope: !442, file: !443, line: 47, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !454, line: 37, baseType: !455)
!454 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !74)
!457 = !DILocalVariable(name: "mbs", scope: !442, file: !443, line: 48, type: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !459, line: 6, baseType: !460)
!459 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !461, line: 21, baseType: !462)
!461 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 13, size: 64, elements: !463)
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !462, file: !461, line: 15, baseType: !68, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !462, file: !461, line: 20, baseType: !466, size: 32, offset: 32)
!466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !462, file: !461, line: 16, size: 32, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !466, file: !461, line: 18, baseType: !74, size: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !466, file: !461, line: 19, baseType: !233, size: 32)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 16, elements: !60)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !473, line: 78, type: !19, isLocal: true, isDefinition: true)
!473 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !473, line: 79, type: !238, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !473, line: 80, type: !111, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !473, line: 81, type: !111, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !473, line: 82, type: !190, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !473, line: 83, type: !59, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !473, line: 84, type: !19, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !473, line: 85, type: !260, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !473, line: 86, type: !260, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !473, line: 87, type: !19, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !494, file: !473, line: 76, type: !580, isLocal: false, isDefinition: true)
!494 = distinct !DICompileUnit(language: DW_LANG_C11, file: !473, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !495, retainedTypes: !515, globals: !516, splitDebugInlining: false, nameTableKind: None)
!495 = !{!496, !510, !72}
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !497, line: 42, baseType: !74, size: 32, elements: !498)
!497 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509}
!499 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!500 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!501 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!502 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!503 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!504 = !DIEnumerator(name: "c_quoting_style", value: 5)
!505 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!506 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!507 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!508 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!509 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!510 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !497, line: 254, baseType: !74, size: 32, elements: !511)
!511 = !{!512, !513, !514}
!512 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!513 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!514 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!515 = !{!90, !68, !96, !91}
!516 = !{!471, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !517, !521, !531, !533, !538, !540, !542, !544, !546, !569, !576, !578}
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !494, file: !473, line: 92, type: !519, isLocal: false, isDefinition: true)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 320, elements: !50)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !494, file: !473, line: 1040, type: !523, isLocal: false, isDefinition: true)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !473, line: 56, size: 448, elements: !524)
!524 = !{!525, !526, !527, !529, !530}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !523, file: !473, line: 59, baseType: !496, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !523, file: !473, line: 62, baseType: !68, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !523, file: !473, line: 66, baseType: !528, size: 256, offset: 64)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !20)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !523, file: !473, line: 69, baseType: !94, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !523, file: !473, line: 72, baseType: !94, size: 64, offset: 384)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !494, file: !473, line: 107, type: !523, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "slot0", scope: !494, file: !473, line: 831, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 256)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !473, line: 321, type: !59, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !473, line: 357, type: !59, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !473, line: 358, type: !59, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !473, line: 199, type: !260, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "quote", scope: !548, file: !473, line: 228, type: !567, isLocal: true, isDefinition: true)
!548 = distinct !DISubprogram(name: "gettext_quote", scope: !473, file: !473, line: 197, type: !549, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!94, !94, !496}
!551 = !{!552, !553, !554, !555, !556}
!552 = !DILocalVariable(name: "msgid", arg: 1, scope: !548, file: !473, line: 197, type: !94)
!553 = !DILocalVariable(name: "s", arg: 2, scope: !548, file: !473, line: 197, type: !496)
!554 = !DILocalVariable(name: "translation", scope: !548, file: !473, line: 199, type: !94)
!555 = !DILocalVariable(name: "w", scope: !548, file: !473, line: 229, type: !453)
!556 = !DILocalVariable(name: "mbs", scope: !548, file: !473, line: 230, type: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !459, line: 6, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !461, line: 21, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 13, size: 64, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !559, file: !461, line: 15, baseType: !68, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !559, file: !461, line: 20, baseType: !563, size: 32, offset: 32)
!563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !461, line: 16, size: 32, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !563, file: !461, line: 18, baseType: !74, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !563, file: !461, line: 19, baseType: !233, size: 32)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !568)
!568 = !{!61, !235}
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(name: "slotvec", scope: !494, file: !473, line: 834, type: !571, isLocal: true, isDefinition: true)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !473, line: 823, size: 128, elements: !573)
!573 = !{!574, !575}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !473, line: 825, baseType: !91, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !572, file: !473, line: 826, baseType: !89, size: 64, offset: 64)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "nslots", scope: !494, file: !473, line: 832, type: !68, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "slotvec0", scope: !494, file: !473, line: 833, type: !572, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 704, elements: !582)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!582 = !{!583}
!583 = !DISubrange(count: 11)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !586, line: 67, type: !333, isLocal: true, isDefinition: true)
!586 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !586, line: 69, type: !260, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !260, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !233, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !586, line: 85, type: !59, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !586, line: 88, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 171)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !586, line: 88, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 34)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !586, line: 105, type: !106, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !586, line: 109, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 23)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !586, line: 113, type: !9, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !586, line: 120, type: !616, isLocal: true, isDefinition: true)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !617)
!617 = !{!618}
!618 = !DISubrange(count: 32)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !586, line: 127, type: !621, isLocal: true, isDefinition: true)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !622)
!622 = !{!623}
!623 = !DISubrange(count: 36)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !586, line: 134, type: !284, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !586, line: 142, type: !628, isLocal: true, isDefinition: true)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 44)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !586, line: 150, type: !633, isLocal: true, isDefinition: true)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 48)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !586, line: 159, type: !638, isLocal: true, isDefinition: true)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 52)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !586, line: 170, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 60)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !190, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !309, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !190, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !101, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !284, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !3, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 29)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !665, file: !666, line: 26, type: !668, isLocal: false, isDefinition: true)
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !667, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!667 = !{!663}
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 376, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 47)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "exit_failure", scope: !673, file: !674, line: 24, type: !676, isLocal: false, isDefinition: true)
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !675, splitDebugInlining: false, nameTableKind: None)
!674 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!675 = !{!671}
!676 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !249, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !260, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !279, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 108, type: !44, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "internal_state", scope: !689, file: !686, line: 97, type: !692, isLocal: true, isDefinition: true)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, globals: !691, splitDebugInlining: false, nameTableKind: None)
!690 = !{!90, !91, !97}
!691 = !{!684, !687}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !459, line: 6, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !461, line: 21, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 13, size: 64, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !694, file: !461, line: 15, baseType: !68, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !694, file: !461, line: 20, baseType: !698, size: 32, offset: 32)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !461, line: 16, size: 32, elements: !699)
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !698, file: !461, line: 18, baseType: !74, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !698, file: !461, line: 19, baseType: !233, size: 32)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !59, isLocal: true, isDefinition: true)
!704 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !238, isLocal: true, isDefinition: true)
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dirname-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-dirname-lgpl.Tpo -c lib/dirname-lgpl.c -o lib/.libcoreutils_a-dirname-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !716, globals: !717, splitDebugInlining: false, nameTableKind: None)
!712 = !{!713}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !586, line: 40, baseType: !74, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!716 = !{!90}
!717 = !{!584, !587, !589, !591, !593, !595, !600, !605, !607, !612, !614, !619, !624, !626, !631, !636, !641, !646, !648, !650, !652, !654, !656, !658}
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !720, retainedTypes: !750, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!720 = !{!721, !733}
!721 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !722, file: !719, line: 188, baseType: !74, size: 32, elements: !731)
!722 = distinct !DISubprogram(name: "x2nrealloc", scope: !719, file: !719, line: 176, type: !723, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !726)
!723 = !DISubroutineType(types: !724)
!724 = !{!90, !90, !725, !91}
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!726 = !{!727, !728, !729, !730}
!727 = !DILocalVariable(name: "p", arg: 1, scope: !722, file: !719, line: 176, type: !90)
!728 = !DILocalVariable(name: "pn", arg: 2, scope: !722, file: !719, line: 176, type: !725)
!729 = !DILocalVariable(name: "s", arg: 3, scope: !722, file: !719, line: 176, type: !91)
!730 = !DILocalVariable(name: "n", scope: !722, file: !719, line: 178, type: !91)
!731 = !{!732}
!732 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!733 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !734, file: !719, line: 228, baseType: !74, size: 32, elements: !731)
!734 = distinct !DISubprogram(name: "xpalloc", scope: !719, file: !719, line: 223, type: !735, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !740)
!735 = !DISubroutineType(types: !736)
!736 = !{!90, !90, !737, !738, !136, !738}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !739, line: 130, baseType: !136)
!739 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749}
!741 = !DILocalVariable(name: "pa", arg: 1, scope: !734, file: !719, line: 223, type: !90)
!742 = !DILocalVariable(name: "pn", arg: 2, scope: !734, file: !719, line: 223, type: !737)
!743 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !734, file: !719, line: 223, type: !738)
!744 = !DILocalVariable(name: "n_max", arg: 4, scope: !734, file: !719, line: 223, type: !136)
!745 = !DILocalVariable(name: "s", arg: 5, scope: !734, file: !719, line: 223, type: !738)
!746 = !DILocalVariable(name: "n0", scope: !734, file: !719, line: 230, type: !738)
!747 = !DILocalVariable(name: "n", scope: !734, file: !719, line: 237, type: !738)
!748 = !DILocalVariable(name: "nbytes", scope: !734, file: !719, line: 248, type: !738)
!749 = !DILocalVariable(name: "adjusted_nbytes", scope: !734, file: !719, line: 252, type: !738)
!750 = !{!89, !90}
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !752, splitDebugInlining: false, nameTableKind: None)
!752 = !{!677, !680, !682}
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-basename-lgpl.o -MD -MP -MF lib/.deps/libcoreutils_a-basename-lgpl.Tpo -c lib/basename-lgpl.c -o lib/.libcoreutils_a-basename-lgpl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !755, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!755 = !{!89}
!756 = distinct !DICompileUnit(language: DW_LANG_C11, file: !757, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!757 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!758 = distinct !DICompileUnit(language: DW_LANG_C11, file: !759, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!759 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!760 = distinct !DICompileUnit(language: DW_LANG_C11, file: !761, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!761 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!762 = distinct !DICompileUnit(language: DW_LANG_C11, file: !763, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!763 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!765 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !767, splitDebugInlining: false, nameTableKind: None)
!767 = !{!702, !705}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!770 = distinct !DICompileUnit(language: DW_LANG_C11, file: !771, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!771 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!772 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!773 = !{i32 7, !"Dwarf Version", i32 5}
!774 = !{i32 2, !"Debug Info Version", i32 3}
!775 = !{i32 1, !"wchar_size", i32 4}
!776 = !{i32 8, !"PIC Level", i32 2}
!777 = !{i32 7, !"PIE Level", i32 2}
!778 = !{i32 7, !"uwtable", i32 2}
!779 = !{i32 7, !"frame-pointer", i32 1}
!780 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!781 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !782, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !68}
!784 = !{!785}
!785 = !DILocalVariable(name: "status", arg: 1, scope: !781, file: !2, line: 43, type: !68)
!786 = !DILocation(line: 0, scope: !781)
!787 = !DILocation(line: 45, column: 14, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !2, line: 45, column: 7)
!789 = !DILocation(line: 45, column: 7, scope: !781)
!790 = !DILocation(line: 46, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !788, file: !2, line: 46, column: 5)
!792 = !{!793, !793, i64 0}
!793 = !{!"any pointer", !794, i64 0}
!794 = !{!"omnipotent char", !795, i64 0}
!795 = !{!"Simple C/C++ TBAA"}
!796 = !DILocation(line: 49, column: 7, scope: !797)
!797 = distinct !DILexicalBlock(scope: !788, file: !2, line: 48, column: 5)
!798 = !DILocation(line: 53, column: 7, scope: !797)
!799 = !DILocation(line: 58, column: 7, scope: !797)
!800 = !DILocation(line: 62, column: 7, scope: !797)
!801 = !DILocation(line: 63, column: 7, scope: !797)
!802 = !DILocation(line: 64, column: 7, scope: !797)
!803 = !DILocalVariable(name: "program", arg: 1, scope: !804, file: !67, line: 836, type: !94)
!804 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !805, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !94}
!807 = !{!803, !808, !815, !816, !818, !819}
!808 = !DILocalVariable(name: "infomap", scope: !804, file: !67, line: 838, type: !809)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 896, elements: !261)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !804, file: !67, line: 838, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !811, file: !67, line: 838, baseType: !94, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !811, file: !67, line: 838, baseType: !94, size: 64, offset: 64)
!815 = !DILocalVariable(name: "node", scope: !804, file: !67, line: 848, type: !94)
!816 = !DILocalVariable(name: "map_prog", scope: !804, file: !67, line: 849, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!818 = !DILocalVariable(name: "lc_messages", scope: !804, file: !67, line: 861, type: !94)
!819 = !DILocalVariable(name: "url_program", scope: !804, file: !67, line: 874, type: !94)
!820 = !DILocation(line: 0, scope: !804, inlinedAt: !821)
!821 = distinct !DILocation(line: 72, column: 7, scope: !797)
!822 = !{}
!823 = !DILocation(line: 857, column: 3, scope: !804, inlinedAt: !821)
!824 = !DILocation(line: 861, column: 29, scope: !804, inlinedAt: !821)
!825 = !DILocation(line: 862, column: 7, scope: !826, inlinedAt: !821)
!826 = distinct !DILexicalBlock(scope: !804, file: !67, line: 862, column: 7)
!827 = !DILocation(line: 862, column: 19, scope: !826, inlinedAt: !821)
!828 = !DILocation(line: 862, column: 22, scope: !826, inlinedAt: !821)
!829 = !DILocation(line: 862, column: 7, scope: !804, inlinedAt: !821)
!830 = !DILocation(line: 868, column: 7, scope: !831, inlinedAt: !821)
!831 = distinct !DILexicalBlock(scope: !826, file: !67, line: 863, column: 5)
!832 = !DILocation(line: 870, column: 5, scope: !831, inlinedAt: !821)
!833 = !DILocation(line: 875, column: 3, scope: !804, inlinedAt: !821)
!834 = !DILocation(line: 877, column: 3, scope: !804, inlinedAt: !821)
!835 = !DILocation(line: 74, column: 3, scope: !781)
!836 = !DISubprogram(name: "dcgettext", scope: !837, file: !837, line: 51, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!838 = !DISubroutineType(types: !839)
!839 = !{!89, !94, !94, !68}
!840 = !DISubprogram(name: "__fprintf_chk", scope: !841, file: !841, line: 93, type: !842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!841 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!842 = !DISubroutineType(types: !843)
!843 = !{!68, !844, !68, !845, null}
!844 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!845 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!846 = !DISubprogram(name: "__printf_chk", scope: !841, file: !841, line: 95, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!847 = !DISubroutineType(types: !848)
!848 = !{!68, !68, !845, null}
!849 = !DISubprogram(name: "fputs_unlocked", scope: !388, file: !388, line: 691, type: !850, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!850 = !DISubroutineType(types: !851)
!851 = !{!68, !845, !844}
!852 = !DILocation(line: 0, scope: !196)
!853 = !DILocation(line: 581, column: 7, scope: !204)
!854 = !{!855, !855, i64 0}
!855 = !{!"int", !794, i64 0}
!856 = !DILocation(line: 581, column: 19, scope: !204)
!857 = !DILocation(line: 581, column: 7, scope: !196)
!858 = !DILocation(line: 585, column: 26, scope: !203)
!859 = !DILocation(line: 0, scope: !203)
!860 = !DILocation(line: 586, column: 23, scope: !203)
!861 = !DILocation(line: 586, column: 28, scope: !203)
!862 = !DILocation(line: 586, column: 32, scope: !203)
!863 = !{!794, !794, i64 0}
!864 = !DILocation(line: 586, column: 38, scope: !203)
!865 = !DILocalVariable(name: "__s1", arg: 1, scope: !866, file: !867, line: 1359, type: !94)
!866 = distinct !DISubprogram(name: "streq", scope: !867, file: !867, line: 1359, type: !868, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !870)
!867 = !DIFile(filename: "./lib/string.h", directory: "/src")
!868 = !DISubroutineType(types: !869)
!869 = !{!126, !94, !94}
!870 = !{!865, !871}
!871 = !DILocalVariable(name: "__s2", arg: 2, scope: !866, file: !867, line: 1359, type: !94)
!872 = !DILocation(line: 0, scope: !866, inlinedAt: !873)
!873 = distinct !DILocation(line: 586, column: 41, scope: !203)
!874 = !DILocation(line: 1361, column: 11, scope: !866, inlinedAt: !873)
!875 = !DILocation(line: 1361, column: 10, scope: !866, inlinedAt: !873)
!876 = !DILocation(line: 586, column: 19, scope: !203)
!877 = !DILocation(line: 587, column: 5, scope: !203)
!878 = !DILocation(line: 588, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !196, file: !67, line: 588, column: 7)
!880 = !DILocation(line: 588, column: 7, scope: !196)
!881 = !DILocation(line: 590, column: 7, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !67, line: 589, column: 5)
!883 = !DILocation(line: 591, column: 7, scope: !882)
!884 = !DILocation(line: 595, column: 37, scope: !196)
!885 = !DILocation(line: 595, column: 35, scope: !196)
!886 = !DILocation(line: 596, column: 29, scope: !196)
!887 = !DILocation(line: 597, column: 8, scope: !211)
!888 = !DILocation(line: 597, column: 7, scope: !196)
!889 = !DILocation(line: 604, column: 24, scope: !210)
!890 = !DILocation(line: 604, column: 12, scope: !211)
!891 = !DILocation(line: 0, scope: !209)
!892 = !DILocation(line: 610, column: 16, scope: !209)
!893 = !DILocation(line: 610, column: 7, scope: !209)
!894 = !DILocation(line: 611, column: 21, scope: !209)
!895 = !{!896, !896, i64 0}
!896 = !{!"short", !794, i64 0}
!897 = !DILocation(line: 611, column: 19, scope: !209)
!898 = !DILocation(line: 611, column: 16, scope: !209)
!899 = !DILocation(line: 610, column: 30, scope: !209)
!900 = distinct !{!900, !893, !894, !901}
!901 = !{!"llvm.loop.mustprogress"}
!902 = !DILocation(line: 612, column: 18, scope: !903)
!903 = distinct !DILexicalBlock(scope: !209, file: !67, line: 612, column: 11)
!904 = !DILocation(line: 612, column: 11, scope: !209)
!905 = !DILocation(line: 620, column: 23, scope: !196)
!906 = !DILocation(line: 625, column: 39, scope: !196)
!907 = !DILocation(line: 626, column: 3, scope: !196)
!908 = !DILocation(line: 626, column: 10, scope: !196)
!909 = !DILocation(line: 626, column: 21, scope: !196)
!910 = !DILocation(line: 628, column: 44, scope: !911)
!911 = distinct !DILexicalBlock(scope: !912, file: !67, line: 628, column: 11)
!912 = distinct !DILexicalBlock(scope: !196, file: !67, line: 627, column: 5)
!913 = !DILocation(line: 628, column: 32, scope: !911)
!914 = !DILocation(line: 628, column: 49, scope: !911)
!915 = !DILocation(line: 628, column: 11, scope: !912)
!916 = !DILocation(line: 630, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !67, line: 630, column: 11)
!918 = !DILocation(line: 630, column: 11, scope: !912)
!919 = !DILocation(line: 632, column: 26, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !67, line: 632, column: 15)
!921 = distinct !DILexicalBlock(scope: !917, file: !67, line: 631, column: 9)
!922 = !DILocation(line: 632, column: 34, scope: !920)
!923 = !DILocation(line: 632, column: 37, scope: !920)
!924 = !DILocation(line: 632, column: 15, scope: !921)
!925 = !DILocation(line: 640, column: 16, scope: !912)
!926 = distinct !{!926, !907, !927, !901}
!927 = !DILocation(line: 641, column: 5, scope: !196)
!928 = !DILocation(line: 644, column: 3, scope: !196)
!929 = !DILocation(line: 0, scope: !866, inlinedAt: !930)
!930 = distinct !DILocation(line: 648, column: 31, scope: !196)
!931 = !DILocation(line: 0, scope: !866, inlinedAt: !932)
!932 = distinct !DILocation(line: 649, column: 31, scope: !196)
!933 = !DILocation(line: 0, scope: !866, inlinedAt: !934)
!934 = distinct !DILocation(line: 650, column: 31, scope: !196)
!935 = !DILocation(line: 0, scope: !866, inlinedAt: !936)
!936 = distinct !DILocation(line: 651, column: 31, scope: !196)
!937 = !DILocation(line: 0, scope: !866, inlinedAt: !938)
!938 = distinct !DILocation(line: 652, column: 31, scope: !196)
!939 = !DILocation(line: 0, scope: !866, inlinedAt: !940)
!940 = distinct !DILocation(line: 653, column: 31, scope: !196)
!941 = !DILocation(line: 0, scope: !866, inlinedAt: !942)
!942 = distinct !DILocation(line: 654, column: 31, scope: !196)
!943 = !DILocation(line: 0, scope: !866, inlinedAt: !944)
!944 = distinct !DILocation(line: 655, column: 31, scope: !196)
!945 = !DILocation(line: 0, scope: !866, inlinedAt: !946)
!946 = distinct !DILocation(line: 656, column: 31, scope: !196)
!947 = !DILocation(line: 0, scope: !866, inlinedAt: !948)
!948 = distinct !DILocation(line: 657, column: 31, scope: !196)
!949 = !DILocation(line: 663, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !196, file: !67, line: 663, column: 7)
!951 = !DILocation(line: 664, column: 7, scope: !950)
!952 = !DILocation(line: 664, column: 10, scope: !950)
!953 = !DILocation(line: 663, column: 7, scope: !196)
!954 = !DILocation(line: 669, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !950, file: !67, line: 665, column: 5)
!956 = !DILocation(line: 671, column: 5, scope: !955)
!957 = !DILocation(line: 676, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !950, file: !67, line: 673, column: 5)
!959 = !DILocation(line: 679, column: 3, scope: !196)
!960 = !DILocation(line: 683, column: 3, scope: !196)
!961 = !DILocation(line: 686, column: 3, scope: !196)
!962 = !DILocation(line: 688, column: 3, scope: !196)
!963 = !DILocation(line: 691, column: 3, scope: !196)
!964 = !DILocation(line: 695, column: 3, scope: !196)
!965 = !DILocation(line: 696, column: 1, scope: !196)
!966 = !DISubprogram(name: "setlocale", scope: !967, file: !967, line: 122, type: !968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!967 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!968 = !DISubroutineType(types: !969)
!969 = !{!89, !68, !94}
!970 = !DISubprogram(name: "strncmp", scope: !971, file: !971, line: 159, type: !972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!971 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!972 = !DISubroutineType(types: !973)
!973 = !{!68, !94, !94, !91}
!974 = !DISubprogram(name: "exit", scope: !975, file: !975, line: 624, type: !782, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!975 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!976 = !DISubprogram(name: "getenv", scope: !975, file: !975, line: 641, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!977 = !DISubroutineType(types: !978)
!978 = !{!89, !94}
!979 = !DISubprogram(name: "strcmp", scope: !971, file: !971, line: 156, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!980 = !DISubroutineType(types: !981)
!981 = !{!68, !94, !94}
!982 = !DISubprogram(name: "strspn", scope: !971, file: !971, line: 297, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{!93, !94, !94}
!985 = !DISubprogram(name: "strchr", scope: !971, file: !971, line: 246, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DISubroutineType(types: !987)
!987 = !{!89, !94, !68}
!988 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!989 = !DISubroutineType(types: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!994 = !DISubprogram(name: "strcspn", scope: !971, file: !971, line: 293, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubprogram(name: "fwrite_unlocked", scope: !388, file: !388, line: 704, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubroutineType(types: !997)
!997 = !{!91, !998, !91, !91, !844}
!998 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1001 = !DILocation(line: 0, scope: !118)
!1002 = !DILocation(line: 83, column: 21, scope: !118)
!1003 = !DILocation(line: 83, column: 3, scope: !118)
!1004 = !DILocation(line: 84, column: 3, scope: !118)
!1005 = !DILocation(line: 85, column: 3, scope: !118)
!1006 = !DILocation(line: 86, column: 3, scope: !118)
!1007 = !DILocation(line: 88, column: 3, scope: !118)
!1008 = !DILocation(line: 92, column: 15, scope: !128)
!1009 = !DILocation(line: 0, scope: !128)
!1010 = !DILocation(line: 94, column: 11, scope: !128)
!1011 = distinct !{!1011, !1012}
!1012 = !{!"llvm.loop.peeled.count", i32 1}
!1013 = !DILocation(line: 103, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !128, file: !2, line: 98, column: 9)
!1015 = !DILocation(line: 104, column: 9, scope: !1014)
!1016 = !DILocation(line: 107, column: 11, scope: !1014)
!1017 = !DILocation(line: 111, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !118, file: !2, line: 111, column: 7)
!1019 = !DILocation(line: 111, column: 12, scope: !1018)
!1020 = !DILocation(line: 111, column: 7, scope: !118)
!1021 = !DILocation(line: 117, column: 3, scope: !132)
!1022 = !DILocation(line: 113, column: 7, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 112, column: 5)
!1024 = !DILocation(line: 114, column: 7, scope: !1023)
!1025 = !DILocation(line: 0, scope: !130)
!1026 = !DILocation(line: 129, column: 7, scope: !130)
!1027 = !DILocation(line: 119, column: 28, scope: !130)
!1028 = !DILocation(line: 120, column: 19, scope: !130)
!1029 = !DILocation(line: 122, column: 11, scope: !130)
!1030 = !DILocation(line: 122, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !130, file: !2, line: 122, column: 11)
!1032 = !DILocalVariable(name: "__c", arg: 1, scope: !1033, file: !1034, line: 108, type: !68)
!1033 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1034, file: !1034, line: 108, type: !1035, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1037)
!1034 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!68, !68}
!1037 = !{!1032}
!1038 = !DILocation(line: 0, scope: !1033, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 130, column: 7, scope: !130)
!1040 = !DILocation(line: 110, column: 10, scope: !1033, inlinedAt: !1039)
!1041 = !{!1042, !793, i64 40}
!1042 = !{!"_IO_FILE", !855, i64 0, !793, i64 8, !793, i64 16, !793, i64 24, !793, i64 32, !793, i64 40, !793, i64 48, !793, i64 56, !793, i64 64, !793, i64 72, !793, i64 80, !793, i64 88, !793, i64 96, !793, i64 104, !855, i64 112, !855, i64 116, !1043, i64 120, !896, i64 128, !794, i64 130, !794, i64 131, !793, i64 136, !1043, i64 144, !793, i64 152, !793, i64 160, !793, i64 168, !793, i64 176, !1043, i64 184, !855, i64 192, !794, i64 196}
!1043 = !{!"long", !794, i64 0}
!1044 = !{!1042, !793, i64 48}
!1045 = !{!"branch_weights", i32 2000, i32 1}
!1046 = !DILocation(line: 117, column: 31, scope: !131)
!1047 = !DILocation(line: 117, column: 17, scope: !131)
!1048 = distinct !{!1048, !1021, !1049, !901}
!1049 = !DILocation(line: 131, column: 5, scope: !132)
!1050 = !DILocation(line: 134, column: 1, scope: !118)
!1051 = !DISubprogram(name: "bindtextdomain", scope: !837, file: !837, line: 86, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!89, !94, !94}
!1054 = !DISubprogram(name: "textdomain", scope: !837, file: !837, line: 82, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1055 = !DISubprogram(name: "atexit", scope: !975, file: !975, line: 602, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!68, !427}
!1058 = !DISubprogram(name: "getopt_long", scope: !345, file: !345, line: 66, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!68, !68, !1061, !94, !1063, !350}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!1064 = !DISubprogram(name: "__overflow", scope: !388, file: !388, line: 886, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!68, !142, !68}
!1067 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !362, file: !362, line: 50, type: !805, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1068)
!1068 = !{!1069}
!1069 = !DILocalVariable(name: "file", arg: 1, scope: !1067, file: !362, line: 50, type: !94)
!1070 = !DILocation(line: 0, scope: !1067)
!1071 = !DILocation(line: 52, column: 13, scope: !1067)
!1072 = !DILocation(line: 53, column: 1, scope: !1067)
!1073 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !362, file: !362, line: 87, type: !1074, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !126}
!1076 = !{!1077}
!1077 = !DILocalVariable(name: "ignore", arg: 1, scope: !1073, file: !362, line: 87, type: !126)
!1078 = !DILocation(line: 0, scope: !1073)
!1079 = !DILocation(line: 89, column: 16, scope: !1073)
!1080 = !{!1081, !1081, i64 0}
!1081 = !{!"_Bool", !794, i64 0}
!1082 = !DILocation(line: 90, column: 1, scope: !1073)
!1083 = distinct !DISubprogram(name: "close_stdout", scope: !362, file: !362, line: 116, type: !428, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1084)
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "write_error", scope: !1086, file: !362, line: 121, type: !94)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !362, line: 120, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !362, line: 118, column: 7)
!1088 = !DILocation(line: 118, column: 21, scope: !1087)
!1089 = !DILocation(line: 118, column: 7, scope: !1087)
!1090 = !DILocation(line: 118, column: 29, scope: !1087)
!1091 = !DILocation(line: 119, column: 7, scope: !1087)
!1092 = !DILocation(line: 119, column: 12, scope: !1087)
!1093 = !{i8 0, i8 2}
!1094 = !DILocation(line: 119, column: 25, scope: !1087)
!1095 = !DILocation(line: 119, column: 28, scope: !1087)
!1096 = !DILocation(line: 119, column: 34, scope: !1087)
!1097 = !DILocation(line: 118, column: 7, scope: !1083)
!1098 = !DILocation(line: 121, column: 33, scope: !1086)
!1099 = !DILocation(line: 0, scope: !1086)
!1100 = !DILocation(line: 122, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1086, file: !362, line: 122, column: 11)
!1102 = !DILocation(line: 0, scope: !1101)
!1103 = !DILocation(line: 122, column: 11, scope: !1086)
!1104 = !DILocation(line: 123, column: 9, scope: !1101)
!1105 = !DILocation(line: 126, column: 9, scope: !1101)
!1106 = !DILocation(line: 128, column: 14, scope: !1086)
!1107 = !DILocation(line: 128, column: 7, scope: !1086)
!1108 = !DILocation(line: 133, column: 42, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1083, file: !362, line: 133, column: 7)
!1110 = !DILocation(line: 133, column: 28, scope: !1109)
!1111 = !DILocation(line: 133, column: 50, scope: !1109)
!1112 = !DILocation(line: 133, column: 7, scope: !1083)
!1113 = !DILocation(line: 134, column: 12, scope: !1109)
!1114 = !DILocation(line: 134, column: 5, scope: !1109)
!1115 = !DILocation(line: 135, column: 1, scope: !1083)
!1116 = !DISubprogram(name: "__errno_location", scope: !1117, file: !1117, line: 37, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!350}
!1120 = !DISubprogram(name: "_exit", scope: !1121, file: !1121, line: 624, type: !782, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1121 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1122 = distinct !DISubprogram(name: "dir_len", scope: !708, file: !708, line: 32, type: !1123, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!91, !94}
!1125 = !{!1126, !1127, !1128}
!1126 = !DILocalVariable(name: "file", arg: 1, scope: !1122, file: !708, line: 32, type: !94)
!1127 = !DILocalVariable(name: "prefix_length", scope: !1122, file: !708, line: 34, type: !91)
!1128 = !DILocalVariable(name: "length", scope: !1122, file: !708, line: 47, type: !91)
!1129 = !DILocation(line: 0, scope: !1122)
!1130 = !DILocation(line: 40, column: 24, scope: !1122)
!1131 = !DILocation(line: 48, column: 17, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1122, file: !708, line: 48, column: 3)
!1133 = !DILocation(line: 48, column: 39, scope: !1132)
!1134 = !DILocation(line: 48, column: 8, scope: !1132)
!1135 = !DILocation(line: 49, column: 22, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !708, line: 48, column: 3)
!1137 = !DILocation(line: 48, column: 3, scope: !1132)
!1138 = !DILocation(line: 51, column: 11, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !708, line: 51, column: 9)
!1140 = !DILocation(line: 51, column: 9, scope: !1136)
!1141 = !DILocation(line: 50, column: 14, scope: !1136)
!1142 = distinct !{!1142, !1137, !1143, !901}
!1143 = !DILocation(line: 52, column: 7, scope: !1132)
!1144 = !DILocation(line: 53, column: 3, scope: !1122)
!1145 = !DILocation(line: 0, scope: !1132)
!1146 = distinct !DISubprogram(name: "mdir_name", scope: !708, file: !708, line: 72, type: !977, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1147)
!1147 = !{!1148, !1149, !1150, !1151}
!1148 = !DILocalVariable(name: "file", arg: 1, scope: !1146, file: !708, line: 72, type: !94)
!1149 = !DILocalVariable(name: "length", scope: !1146, file: !708, line: 74, type: !91)
!1150 = !DILocalVariable(name: "append_dot", scope: !1146, file: !708, line: 75, type: !126)
!1151 = !DILocalVariable(name: "dir", scope: !1146, file: !708, line: 79, type: !89)
!1152 = !DILocation(line: 0, scope: !1146)
!1153 = !DILocation(line: 0, scope: !1122, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 74, column: 19, scope: !1146)
!1155 = !DILocation(line: 40, column: 24, scope: !1122, inlinedAt: !1154)
!1156 = !DILocation(line: 48, column: 17, scope: !1132, inlinedAt: !1154)
!1157 = !DILocation(line: 48, column: 39, scope: !1132, inlinedAt: !1154)
!1158 = !DILocation(line: 48, column: 8, scope: !1132, inlinedAt: !1154)
!1159 = !DILocation(line: 49, column: 22, scope: !1136, inlinedAt: !1154)
!1160 = !DILocation(line: 48, column: 3, scope: !1132, inlinedAt: !1154)
!1161 = !DILocation(line: 51, column: 11, scope: !1139, inlinedAt: !1154)
!1162 = !DILocation(line: 51, column: 9, scope: !1136, inlinedAt: !1154)
!1163 = !DILocation(line: 50, column: 14, scope: !1136, inlinedAt: !1154)
!1164 = distinct !{!1164, !1160, !1165, !901}
!1165 = !DILocation(line: 52, column: 7, scope: !1132, inlinedAt: !1154)
!1166 = !DILocation(line: 75, column: 29, scope: !1146)
!1167 = !DILocation(line: 0, scope: !1132, inlinedAt: !1154)
!1168 = !DILocation(line: 79, column: 32, scope: !1146)
!1169 = !DILocation(line: 79, column: 30, scope: !1146)
!1170 = !DILocation(line: 79, column: 43, scope: !1146)
!1171 = !DILocation(line: 79, column: 15, scope: !1146)
!1172 = !DILocation(line: 80, column: 8, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1146, file: !708, line: 80, column: 7)
!1174 = !DILocation(line: 80, column: 7, scope: !1146)
!1175 = !DILocalVariable(name: "__dest", arg: 1, scope: !1176, file: !1177, line: 26, type: !1180)
!1176 = distinct !DISubprogram(name: "memcpy", scope: !1177, file: !1177, line: 26, type: !1178, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1181)
!1177 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!90, !1180, !998, !91}
!1180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!1181 = !{!1175, !1182, !1183}
!1182 = !DILocalVariable(name: "__src", arg: 2, scope: !1176, file: !1177, line: 26, type: !998)
!1183 = !DILocalVariable(name: "__len", arg: 3, scope: !1176, file: !1177, line: 26, type: !91)
!1184 = !DILocation(line: 0, scope: !1176, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 82, column: 3, scope: !1146)
!1186 = !DILocation(line: 29, column: 10, scope: !1176, inlinedAt: !1185)
!1187 = !DILocation(line: 83, column: 7, scope: !1146)
!1188 = !DILocation(line: 84, column: 19, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1146, file: !708, line: 83, column: 7)
!1190 = !DILocation(line: 84, column: 5, scope: !1189)
!1191 = !DILocation(line: 85, column: 3, scope: !1146)
!1192 = !DILocation(line: 85, column: 15, scope: !1146)
!1193 = !DILocation(line: 86, column: 3, scope: !1146)
!1194 = !DILocation(line: 87, column: 1, scope: !1146)
!1195 = !DISubprogram(name: "malloc", scope: !975, file: !975, line: 540, type: !1196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!90, !91}
!1198 = distinct !DISubprogram(name: "verror", scope: !377, file: !377, line: 251, type: !1199, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !68, !68, !94, !387}
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DILocalVariable(name: "status", arg: 1, scope: !1198, file: !377, line: 251, type: !68)
!1203 = !DILocalVariable(name: "errnum", arg: 2, scope: !1198, file: !377, line: 251, type: !68)
!1204 = !DILocalVariable(name: "message", arg: 3, scope: !1198, file: !377, line: 251, type: !94)
!1205 = !DILocalVariable(name: "args", arg: 4, scope: !1198, file: !377, line: 251, type: !387)
!1206 = !DILocation(line: 0, scope: !1198)
!1207 = !DILocation(line: 261, column: 3, scope: !1198)
!1208 = !DILocation(line: 265, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1198, file: !377, line: 265, column: 7)
!1210 = !DILocation(line: 265, column: 7, scope: !1198)
!1211 = !DILocation(line: 266, column: 5, scope: !1209)
!1212 = !DILocation(line: 272, column: 7, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !377, line: 268, column: 5)
!1214 = !DILocation(line: 276, column: 3, scope: !1198)
!1215 = !{i64 0, i64 8, !792, i64 8, i64 8, !792, i64 16, i64 8, !792, i64 24, i64 4, !854, i64 28, i64 4, !854}
!1216 = !DILocation(line: 282, column: 1, scope: !1198)
!1217 = distinct !DISubprogram(name: "flush_stdout", scope: !377, file: !377, line: 163, type: !428, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1218)
!1218 = !{!1219}
!1219 = !DILocalVariable(name: "stdout_fd", scope: !1217, file: !377, line: 166, type: !68)
!1220 = !DILocation(line: 0, scope: !1217)
!1221 = !DILocalVariable(name: "fd", arg: 1, scope: !1222, file: !377, line: 145, type: !68)
!1222 = distinct !DISubprogram(name: "is_open", scope: !377, file: !377, line: 145, type: !1035, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1223)
!1223 = !{!1221}
!1224 = !DILocation(line: 0, scope: !1222, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 182, column: 25, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !377, line: 182, column: 7)
!1227 = !DILocation(line: 157, column: 15, scope: !1222, inlinedAt: !1225)
!1228 = !DILocation(line: 157, column: 12, scope: !1222, inlinedAt: !1225)
!1229 = !DILocation(line: 182, column: 7, scope: !1217)
!1230 = !DILocation(line: 184, column: 5, scope: !1226)
!1231 = !DILocation(line: 185, column: 1, scope: !1217)
!1232 = distinct !DISubprogram(name: "error_tail", scope: !377, file: !377, line: 219, type: !1199, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1233)
!1233 = !{!1234, !1235, !1236, !1237}
!1234 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !377, line: 219, type: !68)
!1235 = !DILocalVariable(name: "errnum", arg: 2, scope: !1232, file: !377, line: 219, type: !68)
!1236 = !DILocalVariable(name: "message", arg: 3, scope: !1232, file: !377, line: 219, type: !94)
!1237 = !DILocalVariable(name: "args", arg: 4, scope: !1232, file: !377, line: 219, type: !387)
!1238 = distinct !DIAssignID()
!1239 = !DILocation(line: 0, scope: !1232)
!1240 = !DILocation(line: 229, column: 13, scope: !1232)
!1241 = !DILocation(line: 135, column: 10, scope: !1242, inlinedAt: !1284)
!1242 = distinct !DISubprogram(name: "vfprintf", scope: !841, file: !841, line: 132, type: !1243, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1280)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!68, !1245, !845, !389}
!1245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1248)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1248, file: !146, line: 51, baseType: !68, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1248, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1248, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1248, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1248, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1248, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1248, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1248, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1248, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1248, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1248, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1248, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1248, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1248, file: !146, line: 70, baseType: !1264, size: 64, offset: 832)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1248, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1248, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1248, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1248, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1248, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1248, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1248, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1248, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1248, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1248, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1248, file: !146, line: 93, baseType: !1264, size: 64, offset: 1344)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1248, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1248, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1248, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1248, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!1280 = !{!1281, !1282, !1283}
!1281 = !DILocalVariable(name: "__stream", arg: 1, scope: !1242, file: !841, line: 132, type: !1245)
!1282 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1242, file: !841, line: 133, type: !845)
!1283 = !DILocalVariable(name: "__ap", arg: 3, scope: !1242, file: !841, line: 133, type: !389)
!1284 = distinct !DILocation(line: 229, column: 3, scope: !1232)
!1285 = !{!1286, !1288}
!1286 = distinct !{!1286, !1287, !"vfprintf.inline: argument 0"}
!1287 = distinct !{!1287, !"vfprintf.inline"}
!1288 = distinct !{!1288, !1287, !"vfprintf.inline: argument 1"}
!1289 = !DILocation(line: 229, column: 3, scope: !1232)
!1290 = !DILocation(line: 0, scope: !1242, inlinedAt: !1284)
!1291 = !DILocation(line: 232, column: 3, scope: !1232)
!1292 = !DILocation(line: 233, column: 7, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1232, file: !377, line: 233, column: 7)
!1294 = !DILocation(line: 233, column: 7, scope: !1232)
!1295 = !DILocalVariable(name: "errbuf", scope: !1296, file: !377, line: 193, type: !1300)
!1296 = distinct !DISubprogram(name: "print_errno_message", scope: !377, file: !377, line: 188, type: !782, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1297)
!1297 = !{!1298, !1299, !1295}
!1298 = !DILocalVariable(name: "errnum", arg: 1, scope: !1296, file: !377, line: 188, type: !68)
!1299 = !DILocalVariable(name: "s", scope: !1296, file: !377, line: 190, type: !94)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1301)
!1301 = !{!1302}
!1302 = !DISubrange(count: 1024)
!1303 = !DILocation(line: 0, scope: !1296, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 234, column: 5, scope: !1293)
!1305 = !DILocation(line: 193, column: 3, scope: !1296, inlinedAt: !1304)
!1306 = !DILocation(line: 195, column: 7, scope: !1296, inlinedAt: !1304)
!1307 = !DILocation(line: 207, column: 9, scope: !1308, inlinedAt: !1304)
!1308 = distinct !DILexicalBlock(scope: !1296, file: !377, line: 207, column: 7)
!1309 = !DILocation(line: 207, column: 7, scope: !1296, inlinedAt: !1304)
!1310 = !DILocation(line: 208, column: 9, scope: !1308, inlinedAt: !1304)
!1311 = !DILocation(line: 208, column: 5, scope: !1308, inlinedAt: !1304)
!1312 = !DILocation(line: 214, column: 3, scope: !1296, inlinedAt: !1304)
!1313 = !DILocation(line: 216, column: 1, scope: !1296, inlinedAt: !1304)
!1314 = !DILocation(line: 234, column: 5, scope: !1293)
!1315 = !DILocation(line: 238, column: 3, scope: !1232)
!1316 = !DILocalVariable(name: "__c", arg: 1, scope: !1317, file: !1034, line: 101, type: !68)
!1317 = distinct !DISubprogram(name: "putc_unlocked", scope: !1034, file: !1034, line: 101, type: !1318, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!68, !68, !1246}
!1320 = !{!1316, !1321}
!1321 = !DILocalVariable(name: "__stream", arg: 2, scope: !1317, file: !1034, line: 101, type: !1246)
!1322 = !DILocation(line: 0, scope: !1317, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 238, column: 3, scope: !1232)
!1324 = !DILocation(line: 103, column: 10, scope: !1317, inlinedAt: !1323)
!1325 = !DILocation(line: 240, column: 3, scope: !1232)
!1326 = !DILocation(line: 241, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1232, file: !377, line: 241, column: 7)
!1328 = !DILocation(line: 241, column: 7, scope: !1232)
!1329 = !DILocation(line: 242, column: 5, scope: !1327)
!1330 = !DILocation(line: 243, column: 1, scope: !1232)
!1331 = !DISubprogram(name: "__vfprintf_chk", scope: !841, file: !841, line: 96, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!68, !1245, !68, !845, !389}
!1334 = !DISubprogram(name: "strerror_r", scope: !971, file: !971, line: 444, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!89, !68, !89, !91}
!1337 = !DISubprogram(name: "fflush_unlocked", scope: !388, file: !388, line: 239, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!68, !1246}
!1340 = !DISubprogram(name: "fcntl", scope: !1341, file: !1341, line: 149, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1341 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!68, !68, !68, null}
!1344 = distinct !DISubprogram(name: "error", scope: !377, file: !377, line: 285, type: !1345, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !68, !68, !94, null}
!1347 = !{!1348, !1349, !1350, !1351}
!1348 = !DILocalVariable(name: "status", arg: 1, scope: !1344, file: !377, line: 285, type: !68)
!1349 = !DILocalVariable(name: "errnum", arg: 2, scope: !1344, file: !377, line: 285, type: !68)
!1350 = !DILocalVariable(name: "message", arg: 3, scope: !1344, file: !377, line: 285, type: !94)
!1351 = !DILocalVariable(name: "ap", scope: !1344, file: !377, line: 287, type: !387)
!1352 = distinct !DIAssignID()
!1353 = !DILocation(line: 0, scope: !1344)
!1354 = !DILocation(line: 287, column: 3, scope: !1344)
!1355 = !DILocation(line: 288, column: 3, scope: !1344)
!1356 = !DILocation(line: 289, column: 3, scope: !1344)
!1357 = !DILocation(line: 290, column: 3, scope: !1344)
!1358 = !DILocation(line: 291, column: 1, scope: !1344)
!1359 = !DILocation(line: 0, scope: !384)
!1360 = !DILocation(line: 302, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !384, file: !377, line: 302, column: 7)
!1362 = !DILocation(line: 302, column: 7, scope: !384)
!1363 = !DILocation(line: 307, column: 11, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !377, line: 307, column: 11)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !377, line: 303, column: 5)
!1366 = !DILocation(line: 307, column: 27, scope: !1364)
!1367 = !DILocation(line: 308, column: 11, scope: !1364)
!1368 = !DILocation(line: 308, column: 28, scope: !1364)
!1369 = !DILocation(line: 308, column: 25, scope: !1364)
!1370 = !DILocation(line: 309, column: 15, scope: !1364)
!1371 = !DILocation(line: 309, column: 33, scope: !1364)
!1372 = !DILocation(line: 310, column: 19, scope: !1364)
!1373 = !DILocation(line: 311, column: 22, scope: !1364)
!1374 = !DILocation(line: 311, column: 56, scope: !1364)
!1375 = !DILocation(line: 307, column: 11, scope: !1365)
!1376 = !DILocation(line: 316, column: 21, scope: !1365)
!1377 = !DILocation(line: 317, column: 23, scope: !1365)
!1378 = !DILocation(line: 318, column: 5, scope: !1365)
!1379 = !DILocation(line: 327, column: 3, scope: !384)
!1380 = !DILocation(line: 331, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !384, file: !377, line: 331, column: 7)
!1382 = !DILocation(line: 331, column: 7, scope: !384)
!1383 = !DILocation(line: 332, column: 5, scope: !1381)
!1384 = !DILocation(line: 338, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !377, line: 334, column: 5)
!1386 = !DILocation(line: 346, column: 3, scope: !384)
!1387 = !DILocation(line: 350, column: 3, scope: !384)
!1388 = !DILocation(line: 356, column: 1, scope: !384)
!1389 = distinct !DISubprogram(name: "error_at_line", scope: !377, file: !377, line: 359, type: !1390, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !68, !68, !94, !74, !94, null}
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398}
!1393 = !DILocalVariable(name: "status", arg: 1, scope: !1389, file: !377, line: 359, type: !68)
!1394 = !DILocalVariable(name: "errnum", arg: 2, scope: !1389, file: !377, line: 359, type: !68)
!1395 = !DILocalVariable(name: "file_name", arg: 3, scope: !1389, file: !377, line: 359, type: !94)
!1396 = !DILocalVariable(name: "line_number", arg: 4, scope: !1389, file: !377, line: 360, type: !74)
!1397 = !DILocalVariable(name: "message", arg: 5, scope: !1389, file: !377, line: 360, type: !94)
!1398 = !DILocalVariable(name: "ap", scope: !1389, file: !377, line: 362, type: !387)
!1399 = distinct !DIAssignID()
!1400 = !DILocation(line: 0, scope: !1389)
!1401 = !DILocation(line: 362, column: 3, scope: !1389)
!1402 = !DILocation(line: 363, column: 3, scope: !1389)
!1403 = !DILocation(line: 364, column: 3, scope: !1389)
!1404 = !DILocation(line: 366, column: 3, scope: !1389)
!1405 = !DILocation(line: 367, column: 1, scope: !1389)
!1406 = distinct !DISubprogram(name: "getprogname", scope: !710, file: !710, line: 54, type: !1407, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!94}
!1409 = !DILocation(line: 58, column: 10, scope: !1406)
!1410 = !DILocation(line: 58, column: 3, scope: !1406)
!1411 = distinct !DISubprogram(name: "set_program_name", scope: !433, file: !433, line: 37, type: !805, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1412)
!1412 = !{!1413, !1414, !1415}
!1413 = !DILocalVariable(name: "argv0", arg: 1, scope: !1411, file: !433, line: 37, type: !94)
!1414 = !DILocalVariable(name: "slash", scope: !1411, file: !433, line: 44, type: !94)
!1415 = !DILocalVariable(name: "base", scope: !1411, file: !433, line: 45, type: !94)
!1416 = !DILocation(line: 0, scope: !1411)
!1417 = !DILocation(line: 44, column: 23, scope: !1411)
!1418 = !DILocation(line: 45, column: 22, scope: !1411)
!1419 = !DILocation(line: 46, column: 17, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1411, file: !433, line: 46, column: 7)
!1421 = !DILocation(line: 46, column: 9, scope: !1420)
!1422 = !DILocation(line: 46, column: 25, scope: !1420)
!1423 = !DILocation(line: 46, column: 40, scope: !1420)
!1424 = !DILocalVariable(name: "__s1", arg: 1, scope: !1425, file: !867, line: 974, type: !999)
!1425 = distinct !DISubprogram(name: "memeq", scope: !867, file: !867, line: 974, type: !1426, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1428)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!126, !999, !999, !91}
!1428 = !{!1424, !1429, !1430}
!1429 = !DILocalVariable(name: "__s2", arg: 2, scope: !1425, file: !867, line: 974, type: !999)
!1430 = !DILocalVariable(name: "__n", arg: 3, scope: !1425, file: !867, line: 974, type: !91)
!1431 = !DILocation(line: 0, scope: !1425, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 46, column: 28, scope: !1420)
!1433 = !DILocation(line: 976, column: 11, scope: !1425, inlinedAt: !1432)
!1434 = !DILocation(line: 976, column: 10, scope: !1425, inlinedAt: !1432)
!1435 = !DILocation(line: 46, column: 7, scope: !1411)
!1436 = !DILocation(line: 49, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !433, line: 49, column: 11)
!1438 = distinct !DILexicalBlock(scope: !1420, file: !433, line: 47, column: 5)
!1439 = !DILocation(line: 49, column: 36, scope: !1437)
!1440 = !DILocation(line: 49, column: 11, scope: !1438)
!1441 = !DILocation(line: 65, column: 16, scope: !1411)
!1442 = !DILocation(line: 71, column: 27, scope: !1411)
!1443 = !DILocation(line: 74, column: 33, scope: !1411)
!1444 = !DILocation(line: 76, column: 1, scope: !1411)
!1445 = !DISubprogram(name: "strrchr", scope: !971, file: !971, line: 273, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1446 = distinct !DIAssignID()
!1447 = !DILocation(line: 0, scope: !442)
!1448 = distinct !DIAssignID()
!1449 = !DILocation(line: 40, column: 29, scope: !442)
!1450 = !DILocation(line: 41, column: 19, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !442, file: !443, line: 41, column: 7)
!1452 = !DILocation(line: 41, column: 7, scope: !442)
!1453 = !DILocation(line: 47, column: 3, scope: !442)
!1454 = !DILocation(line: 48, column: 3, scope: !442)
!1455 = !DILocalVariable(name: "ps", arg: 1, scope: !1456, file: !1457, line: 1135, type: !1460)
!1456 = distinct !DISubprogram(name: "mbszero", scope: !1457, file: !1457, line: 1135, type: !1458, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !1461)
!1457 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !1460}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1461 = !{!1455}
!1462 = !DILocation(line: 0, scope: !1456, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 48, column: 18, scope: !442)
!1464 = !DILocalVariable(name: "__dest", arg: 1, scope: !1465, file: !1177, line: 57, type: !90)
!1465 = distinct !DISubprogram(name: "memset", scope: !1177, file: !1177, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!90, !90, !68, !91}
!1468 = !{!1464, !1469, !1470}
!1469 = !DILocalVariable(name: "__ch", arg: 2, scope: !1465, file: !1177, line: 57, type: !68)
!1470 = !DILocalVariable(name: "__len", arg: 3, scope: !1465, file: !1177, line: 57, type: !91)
!1471 = !DILocation(line: 0, scope: !1465, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 1137, column: 3, scope: !1456, inlinedAt: !1463)
!1473 = !DILocation(line: 59, column: 10, scope: !1465, inlinedAt: !1472)
!1474 = !DILocation(line: 49, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !442, file: !443, line: 49, column: 7)
!1476 = !DILocation(line: 49, column: 39, scope: !1475)
!1477 = !DILocation(line: 49, column: 44, scope: !1475)
!1478 = !DILocation(line: 54, column: 1, scope: !442)
!1479 = !DISubprogram(name: "mbrtoc32", scope: !454, file: !454, line: 57, type: !1480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!91, !1482, !845, !91, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1460)
!1485 = distinct !DISubprogram(name: "clone_quoting_options", scope: !473, file: !473, line: 113, type: !1486, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1489)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1488, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1489 = !{!1490, !1491, !1492}
!1490 = !DILocalVariable(name: "o", arg: 1, scope: !1485, file: !473, line: 113, type: !1488)
!1491 = !DILocalVariable(name: "saved_errno", scope: !1485, file: !473, line: 115, type: !68)
!1492 = !DILocalVariable(name: "p", scope: !1485, file: !473, line: 116, type: !1488)
!1493 = !DILocation(line: 0, scope: !1485)
!1494 = !DILocation(line: 115, column: 21, scope: !1485)
!1495 = !DILocation(line: 116, column: 40, scope: !1485)
!1496 = !DILocation(line: 116, column: 31, scope: !1485)
!1497 = !DILocation(line: 118, column: 9, scope: !1485)
!1498 = !DILocation(line: 119, column: 3, scope: !1485)
!1499 = distinct !DISubprogram(name: "get_quoting_style", scope: !473, file: !473, line: 124, type: !1500, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1504)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!496, !1502}
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!1504 = !{!1505}
!1505 = !DILocalVariable(name: "o", arg: 1, scope: !1499, file: !473, line: 124, type: !1502)
!1506 = !DILocation(line: 0, scope: !1499)
!1507 = !DILocation(line: 126, column: 11, scope: !1499)
!1508 = !DILocation(line: 126, column: 46, scope: !1499)
!1509 = !{!1510, !855, i64 0}
!1510 = !{!"quoting_options", !855, i64 0, !855, i64 4, !794, i64 8, !793, i64 40, !793, i64 48}
!1511 = !DILocation(line: 126, column: 3, scope: !1499)
!1512 = distinct !DISubprogram(name: "set_quoting_style", scope: !473, file: !473, line: 132, type: !1513, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !1488, !496}
!1515 = !{!1516, !1517}
!1516 = !DILocalVariable(name: "o", arg: 1, scope: !1512, file: !473, line: 132, type: !1488)
!1517 = !DILocalVariable(name: "s", arg: 2, scope: !1512, file: !473, line: 132, type: !496)
!1518 = !DILocation(line: 0, scope: !1512)
!1519 = !DILocation(line: 134, column: 4, scope: !1512)
!1520 = !DILocation(line: 134, column: 45, scope: !1512)
!1521 = !DILocation(line: 135, column: 1, scope: !1512)
!1522 = distinct !DISubprogram(name: "set_char_quoting", scope: !473, file: !473, line: 143, type: !1523, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!68, !1488, !4, !68}
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1532, !1533}
!1526 = !DILocalVariable(name: "o", arg: 1, scope: !1522, file: !473, line: 143, type: !1488)
!1527 = !DILocalVariable(name: "c", arg: 2, scope: !1522, file: !473, line: 143, type: !4)
!1528 = !DILocalVariable(name: "i", arg: 3, scope: !1522, file: !473, line: 143, type: !68)
!1529 = !DILocalVariable(name: "uc", scope: !1522, file: !473, line: 145, type: !97)
!1530 = !DILocalVariable(name: "p", scope: !1522, file: !473, line: 146, type: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1532 = !DILocalVariable(name: "shift", scope: !1522, file: !473, line: 148, type: !68)
!1533 = !DILocalVariable(name: "r", scope: !1522, file: !473, line: 149, type: !74)
!1534 = !DILocation(line: 0, scope: !1522)
!1535 = !DILocation(line: 147, column: 6, scope: !1522)
!1536 = !DILocation(line: 147, column: 41, scope: !1522)
!1537 = !DILocation(line: 147, column: 62, scope: !1522)
!1538 = !DILocation(line: 147, column: 57, scope: !1522)
!1539 = !DILocation(line: 148, column: 15, scope: !1522)
!1540 = !DILocation(line: 149, column: 21, scope: !1522)
!1541 = !DILocation(line: 149, column: 24, scope: !1522)
!1542 = !DILocation(line: 149, column: 34, scope: !1522)
!1543 = !DILocation(line: 150, column: 19, scope: !1522)
!1544 = !DILocation(line: 150, column: 24, scope: !1522)
!1545 = !DILocation(line: 150, column: 6, scope: !1522)
!1546 = !DILocation(line: 151, column: 3, scope: !1522)
!1547 = distinct !DISubprogram(name: "set_quoting_flags", scope: !473, file: !473, line: 159, type: !1548, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1550)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!68, !1488, !68}
!1550 = !{!1551, !1552, !1553}
!1551 = !DILocalVariable(name: "o", arg: 1, scope: !1547, file: !473, line: 159, type: !1488)
!1552 = !DILocalVariable(name: "i", arg: 2, scope: !1547, file: !473, line: 159, type: !68)
!1553 = !DILocalVariable(name: "r", scope: !1547, file: !473, line: 163, type: !68)
!1554 = !DILocation(line: 0, scope: !1547)
!1555 = !DILocation(line: 161, column: 8, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !473, line: 161, column: 7)
!1557 = !DILocation(line: 161, column: 7, scope: !1547)
!1558 = !DILocation(line: 163, column: 14, scope: !1547)
!1559 = !{!1510, !855, i64 4}
!1560 = !DILocation(line: 164, column: 12, scope: !1547)
!1561 = !DILocation(line: 165, column: 3, scope: !1547)
!1562 = distinct !DISubprogram(name: "set_custom_quoting", scope: !473, file: !473, line: 169, type: !1563, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1565)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !1488, !94, !94}
!1565 = !{!1566, !1567, !1568}
!1566 = !DILocalVariable(name: "o", arg: 1, scope: !1562, file: !473, line: 169, type: !1488)
!1567 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1562, file: !473, line: 170, type: !94)
!1568 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1562, file: !473, line: 170, type: !94)
!1569 = !DILocation(line: 0, scope: !1562)
!1570 = !DILocation(line: 172, column: 8, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1562, file: !473, line: 172, column: 7)
!1572 = !DILocation(line: 172, column: 7, scope: !1562)
!1573 = !DILocation(line: 174, column: 12, scope: !1562)
!1574 = !DILocation(line: 175, column: 8, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1562, file: !473, line: 175, column: 7)
!1576 = !DILocation(line: 175, column: 19, scope: !1575)
!1577 = !DILocation(line: 176, column: 5, scope: !1575)
!1578 = !DILocation(line: 177, column: 6, scope: !1562)
!1579 = !DILocation(line: 177, column: 17, scope: !1562)
!1580 = !{!1510, !793, i64 40}
!1581 = !DILocation(line: 178, column: 6, scope: !1562)
!1582 = !DILocation(line: 178, column: 18, scope: !1562)
!1583 = !{!1510, !793, i64 48}
!1584 = !DILocation(line: 179, column: 1, scope: !1562)
!1585 = !DISubprogram(name: "abort", scope: !975, file: !975, line: 598, type: !428, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1586 = distinct !DISubprogram(name: "quotearg_buffer", scope: !473, file: !473, line: 774, type: !1587, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!91, !89, !91, !94, !91, !1502}
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1590 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !473, line: 774, type: !89)
!1591 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !473, line: 774, type: !91)
!1592 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !473, line: 775, type: !94)
!1593 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !473, line: 775, type: !91)
!1594 = !DILocalVariable(name: "o", arg: 5, scope: !1586, file: !473, line: 776, type: !1502)
!1595 = !DILocalVariable(name: "p", scope: !1586, file: !473, line: 778, type: !1502)
!1596 = !DILocalVariable(name: "saved_errno", scope: !1586, file: !473, line: 779, type: !68)
!1597 = !DILocalVariable(name: "r", scope: !1586, file: !473, line: 780, type: !91)
!1598 = !DILocation(line: 0, scope: !1586)
!1599 = !DILocation(line: 778, column: 37, scope: !1586)
!1600 = !DILocation(line: 779, column: 21, scope: !1586)
!1601 = !DILocation(line: 781, column: 43, scope: !1586)
!1602 = !DILocation(line: 781, column: 53, scope: !1586)
!1603 = !DILocation(line: 781, column: 63, scope: !1586)
!1604 = !DILocation(line: 782, column: 43, scope: !1586)
!1605 = !DILocation(line: 782, column: 58, scope: !1586)
!1606 = !DILocation(line: 780, column: 14, scope: !1586)
!1607 = !DILocation(line: 783, column: 9, scope: !1586)
!1608 = !DILocation(line: 784, column: 3, scope: !1586)
!1609 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !473, file: !473, line: 251, type: !1610, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1614)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!91, !89, !91, !94, !91, !496, !68, !1612, !94, !94}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1640, !1642, !1645, !1646, !1647, !1648, !1651, !1652, !1654, !1655, !1658, !1662, !1663, !1671, !1674, !1675, !1676}
!1615 = !DILocalVariable(name: "buffer", arg: 1, scope: !1609, file: !473, line: 251, type: !89)
!1616 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1609, file: !473, line: 251, type: !91)
!1617 = !DILocalVariable(name: "arg", arg: 3, scope: !1609, file: !473, line: 252, type: !94)
!1618 = !DILocalVariable(name: "argsize", arg: 4, scope: !1609, file: !473, line: 252, type: !91)
!1619 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1609, file: !473, line: 253, type: !496)
!1620 = !DILocalVariable(name: "flags", arg: 6, scope: !1609, file: !473, line: 253, type: !68)
!1621 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1609, file: !473, line: 254, type: !1612)
!1622 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1609, file: !473, line: 255, type: !94)
!1623 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1609, file: !473, line: 256, type: !94)
!1624 = !DILocalVariable(name: "unibyte_locale", scope: !1609, file: !473, line: 258, type: !126)
!1625 = !DILocalVariable(name: "len", scope: !1609, file: !473, line: 260, type: !91)
!1626 = !DILocalVariable(name: "orig_buffersize", scope: !1609, file: !473, line: 261, type: !91)
!1627 = !DILocalVariable(name: "quote_string", scope: !1609, file: !473, line: 262, type: !94)
!1628 = !DILocalVariable(name: "quote_string_len", scope: !1609, file: !473, line: 263, type: !91)
!1629 = !DILocalVariable(name: "backslash_escapes", scope: !1609, file: !473, line: 264, type: !126)
!1630 = !DILocalVariable(name: "elide_outer_quotes", scope: !1609, file: !473, line: 265, type: !126)
!1631 = !DILocalVariable(name: "encountered_single_quote", scope: !1609, file: !473, line: 266, type: !126)
!1632 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1609, file: !473, line: 267, type: !126)
!1633 = !DILabel(scope: !1609, name: "process_input", file: !473, line: 308)
!1634 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1609, file: !473, line: 309, type: !126)
!1635 = !DILocalVariable(name: "lq", scope: !1636, file: !473, line: 361, type: !94)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !473, line: 361, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !473, line: 360, column: 13)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !473, line: 333, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 312, column: 5)
!1640 = !DILocalVariable(name: "i", scope: !1641, file: !473, line: 395, type: !91)
!1641 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 395, column: 3)
!1642 = !DILocalVariable(name: "is_right_quote", scope: !1643, file: !473, line: 397, type: !126)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !473, line: 396, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1641, file: !473, line: 395, column: 3)
!1645 = !DILocalVariable(name: "escaping", scope: !1643, file: !473, line: 398, type: !126)
!1646 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1643, file: !473, line: 399, type: !126)
!1647 = !DILocalVariable(name: "c", scope: !1643, file: !473, line: 417, type: !97)
!1648 = !DILabel(scope: !1649, name: "c_and_shell_escape", file: !473, line: 502)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 478, column: 9)
!1650 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 419, column: 9)
!1651 = !DILabel(scope: !1649, name: "c_escape", file: !473, line: 507)
!1652 = !DILocalVariable(name: "m", scope: !1653, file: !473, line: 598, type: !91)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 596, column: 11)
!1654 = !DILocalVariable(name: "printable", scope: !1653, file: !473, line: 600, type: !126)
!1655 = !DILocalVariable(name: "mbs", scope: !1656, file: !473, line: 609, type: !557)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !473, line: 608, column: 15)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !473, line: 602, column: 17)
!1658 = !DILocalVariable(name: "w", scope: !1659, file: !473, line: 618, type: !453)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !473, line: 617, column: 19)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !473, line: 616, column: 17)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !473, line: 616, column: 17)
!1662 = !DILocalVariable(name: "bytes", scope: !1659, file: !473, line: 619, type: !91)
!1663 = !DILocalVariable(name: "j", scope: !1664, file: !473, line: 648, type: !91)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !473, line: 648, column: 29)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !473, line: 647, column: 27)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !473, line: 645, column: 29)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !473, line: 636, column: 23)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !473, line: 628, column: 30)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !473, line: 623, column: 30)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !473, line: 621, column: 25)
!1671 = !DILocalVariable(name: "ilim", scope: !1672, file: !473, line: 674, type: !91)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !473, line: 671, column: 15)
!1673 = distinct !DILexicalBlock(scope: !1653, file: !473, line: 670, column: 17)
!1674 = !DILabel(scope: !1643, name: "store_escape", file: !473, line: 709)
!1675 = !DILabel(scope: !1643, name: "store_c", file: !473, line: 712)
!1676 = !DILabel(scope: !1609, name: "force_outer_quoting_style", file: !473, line: 753)
!1677 = distinct !DIAssignID()
!1678 = distinct !DIAssignID()
!1679 = distinct !DIAssignID()
!1680 = distinct !DIAssignID()
!1681 = distinct !DIAssignID()
!1682 = !DILocation(line: 0, scope: !1656)
!1683 = distinct !DIAssignID()
!1684 = !DILocation(line: 0, scope: !1659)
!1685 = !DILocation(line: 0, scope: !1609)
!1686 = !DILocation(line: 258, column: 25, scope: !1609)
!1687 = !DILocation(line: 258, column: 36, scope: !1609)
!1688 = !DILocation(line: 267, column: 3, scope: !1609)
!1689 = !DILocation(line: 261, column: 10, scope: !1609)
!1690 = !DILocation(line: 262, column: 15, scope: !1609)
!1691 = !DILocation(line: 263, column: 10, scope: !1609)
!1692 = !DILocation(line: 308, column: 2, scope: !1609)
!1693 = !DILocation(line: 311, column: 3, scope: !1609)
!1694 = !DILocation(line: 318, column: 11, scope: !1639)
!1695 = !DILocation(line: 319, column: 9, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !473, line: 319, column: 9)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !473, line: 319, column: 9)
!1698 = distinct !DILexicalBlock(scope: !1639, file: !473, line: 318, column: 11)
!1699 = !DILocation(line: 319, column: 9, scope: !1697)
!1700 = !DILocation(line: 0, scope: !548, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 357, column: 26, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !473, line: 335, column: 11)
!1703 = distinct !DILexicalBlock(scope: !1638, file: !473, line: 334, column: 13)
!1704 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !1701)
!1705 = !DILocation(line: 201, column: 19, scope: !1706, inlinedAt: !1701)
!1706 = distinct !DILexicalBlock(scope: !548, file: !473, line: 201, column: 7)
!1707 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !1701)
!1708 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !1701)
!1709 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !1701)
!1710 = !DILocalVariable(name: "ps", arg: 1, scope: !1711, file: !1457, line: 1135, type: !1714)
!1711 = distinct !DISubprogram(name: "mbszero", scope: !1457, file: !1457, line: 1135, type: !1712, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1715)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !1714}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1715 = !{!1710}
!1716 = !DILocation(line: 0, scope: !1711, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !1701)
!1718 = !DILocalVariable(name: "__dest", arg: 1, scope: !1719, file: !1177, line: 57, type: !90)
!1719 = distinct !DISubprogram(name: "memset", scope: !1177, file: !1177, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1720)
!1720 = !{!1718, !1721, !1722}
!1721 = !DILocalVariable(name: "__ch", arg: 2, scope: !1719, file: !1177, line: 57, type: !68)
!1722 = !DILocalVariable(name: "__len", arg: 3, scope: !1719, file: !1177, line: 57, type: !91)
!1723 = !DILocation(line: 0, scope: !1719, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 1137, column: 3, scope: !1711, inlinedAt: !1717)
!1725 = !DILocation(line: 59, column: 10, scope: !1719, inlinedAt: !1724)
!1726 = !DILocation(line: 231, column: 7, scope: !1727, inlinedAt: !1701)
!1727 = distinct !DILexicalBlock(scope: !548, file: !473, line: 231, column: 7)
!1728 = !DILocation(line: 231, column: 40, scope: !1727, inlinedAt: !1701)
!1729 = !DILocation(line: 231, column: 45, scope: !1727, inlinedAt: !1701)
!1730 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !1701)
!1731 = !DILocation(line: 0, scope: !548, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 358, column: 27, scope: !1702)
!1733 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !1732)
!1734 = !DILocation(line: 201, column: 19, scope: !1706, inlinedAt: !1732)
!1735 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !1732)
!1736 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !1732)
!1737 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !1732)
!1738 = !DILocation(line: 0, scope: !1711, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !1732)
!1740 = !DILocation(line: 0, scope: !1719, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 1137, column: 3, scope: !1711, inlinedAt: !1739)
!1742 = !DILocation(line: 59, column: 10, scope: !1719, inlinedAt: !1741)
!1743 = !DILocation(line: 231, column: 7, scope: !1727, inlinedAt: !1732)
!1744 = !DILocation(line: 231, column: 40, scope: !1727, inlinedAt: !1732)
!1745 = !DILocation(line: 231, column: 45, scope: !1727, inlinedAt: !1732)
!1746 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !1732)
!1747 = !DILocation(line: 360, column: 13, scope: !1638)
!1748 = !DILocation(line: 0, scope: !1636)
!1749 = !DILocation(line: 361, column: 45, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1636, file: !473, line: 361, column: 11)
!1751 = !DILocation(line: 361, column: 11, scope: !1636)
!1752 = !DILocation(line: 362, column: 13, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !473, line: 362, column: 13)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !473, line: 362, column: 13)
!1755 = !DILocation(line: 362, column: 13, scope: !1754)
!1756 = !DILocation(line: 361, column: 52, scope: !1750)
!1757 = distinct !{!1757, !1751, !1758, !901}
!1758 = !DILocation(line: 362, column: 13, scope: !1636)
!1759 = !DILocation(line: 365, column: 28, scope: !1638)
!1760 = !DILocation(line: 260, column: 10, scope: !1609)
!1761 = !DILocation(line: 367, column: 7, scope: !1639)
!1762 = !DILocation(line: 373, column: 7, scope: !1639)
!1763 = !DILocation(line: 381, column: 11, scope: !1639)
!1764 = !DILocation(line: 376, column: 11, scope: !1639)
!1765 = !DILocation(line: 382, column: 9, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !473, line: 382, column: 9)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !473, line: 382, column: 9)
!1768 = distinct !DILexicalBlock(scope: !1639, file: !473, line: 381, column: 11)
!1769 = !DILocation(line: 382, column: 9, scope: !1767)
!1770 = !DILocation(line: 389, column: 7, scope: !1639)
!1771 = !DILocation(line: 392, column: 7, scope: !1639)
!1772 = !DILocation(line: 0, scope: !1641)
!1773 = !DILocation(line: 395, column: 8, scope: !1641)
!1774 = !DILocation(line: 395, scope: !1641)
!1775 = !DILocation(line: 395, column: 34, scope: !1644)
!1776 = !DILocation(line: 395, column: 26, scope: !1644)
!1777 = !DILocation(line: 395, column: 48, scope: !1644)
!1778 = !DILocation(line: 395, column: 55, scope: !1644)
!1779 = !DILocation(line: 395, column: 3, scope: !1641)
!1780 = !DILocation(line: 395, column: 67, scope: !1644)
!1781 = !DILocation(line: 0, scope: !1643)
!1782 = !DILocation(line: 402, column: 11, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 401, column: 11)
!1784 = !DILocation(line: 404, column: 17, scope: !1783)
!1785 = !DILocation(line: 405, column: 39, scope: !1783)
!1786 = !DILocation(line: 409, column: 32, scope: !1783)
!1787 = !DILocation(line: 405, column: 19, scope: !1783)
!1788 = !DILocation(line: 405, column: 15, scope: !1783)
!1789 = !DILocation(line: 410, column: 11, scope: !1783)
!1790 = !DILocation(line: 410, column: 25, scope: !1783)
!1791 = !DILocalVariable(name: "__s1", arg: 1, scope: !1792, file: !867, line: 974, type: !999)
!1792 = distinct !DISubprogram(name: "memeq", scope: !867, file: !867, line: 974, type: !1426, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1793)
!1793 = !{!1791, !1794, !1795}
!1794 = !DILocalVariable(name: "__s2", arg: 2, scope: !1792, file: !867, line: 974, type: !999)
!1795 = !DILocalVariable(name: "__n", arg: 3, scope: !1792, file: !867, line: 974, type: !91)
!1796 = !DILocation(line: 0, scope: !1792, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 410, column: 14, scope: !1783)
!1798 = !DILocation(line: 976, column: 11, scope: !1792, inlinedAt: !1797)
!1799 = !DILocation(line: 976, column: 10, scope: !1792, inlinedAt: !1797)
!1800 = !DILocation(line: 401, column: 11, scope: !1643)
!1801 = !DILocation(line: 417, column: 25, scope: !1643)
!1802 = !DILocation(line: 418, column: 7, scope: !1643)
!1803 = !DILocation(line: 421, column: 15, scope: !1650)
!1804 = !DILocation(line: 423, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !473, line: 423, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !473, line: 422, column: 13)
!1807 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 421, column: 15)
!1808 = !DILocation(line: 423, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !473, line: 423, column: 15)
!1810 = !DILocation(line: 423, column: 15, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !473, line: 423, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !473, line: 423, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !473, line: 423, column: 15)
!1814 = !DILocation(line: 423, column: 15, scope: !1812)
!1815 = !DILocation(line: 423, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !473, line: 423, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !473, line: 423, column: 15)
!1818 = !DILocation(line: 423, column: 15, scope: !1817)
!1819 = !DILocation(line: 423, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !473, line: 423, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !473, line: 423, column: 15)
!1822 = !DILocation(line: 423, column: 15, scope: !1821)
!1823 = !DILocation(line: 423, column: 15, scope: !1813)
!1824 = !DILocation(line: 423, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !473, line: 423, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1805, file: !473, line: 423, column: 15)
!1827 = !DILocation(line: 423, column: 15, scope: !1826)
!1828 = !DILocation(line: 431, column: 19, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1806, file: !473, line: 430, column: 19)
!1830 = !DILocation(line: 431, column: 24, scope: !1829)
!1831 = !DILocation(line: 431, column: 28, scope: !1829)
!1832 = !DILocation(line: 431, column: 38, scope: !1829)
!1833 = !DILocation(line: 431, column: 48, scope: !1829)
!1834 = !DILocation(line: 431, column: 59, scope: !1829)
!1835 = !DILocation(line: 433, column: 19, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !473, line: 433, column: 19)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !473, line: 433, column: 19)
!1838 = distinct !DILexicalBlock(scope: !1829, file: !473, line: 432, column: 17)
!1839 = !DILocation(line: 433, column: 19, scope: !1837)
!1840 = !DILocation(line: 434, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !473, line: 434, column: 19)
!1842 = distinct !DILexicalBlock(scope: !1838, file: !473, line: 434, column: 19)
!1843 = !DILocation(line: 434, column: 19, scope: !1842)
!1844 = !DILocation(line: 435, column: 17, scope: !1838)
!1845 = !DILocation(line: 442, column: 20, scope: !1807)
!1846 = !DILocation(line: 447, column: 11, scope: !1650)
!1847 = !DILocation(line: 450, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 448, column: 13)
!1849 = !DILocation(line: 456, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1848, file: !473, line: 455, column: 19)
!1851 = !DILocation(line: 456, column: 24, scope: !1850)
!1852 = !DILocation(line: 456, column: 28, scope: !1850)
!1853 = !DILocation(line: 456, column: 38, scope: !1850)
!1854 = !DILocation(line: 456, column: 41, scope: !1850)
!1855 = !DILocation(line: 456, column: 52, scope: !1850)
!1856 = !DILocation(line: 455, column: 19, scope: !1848)
!1857 = !DILocation(line: 457, column: 25, scope: !1850)
!1858 = !DILocation(line: 457, column: 17, scope: !1850)
!1859 = !DILocation(line: 464, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1850, file: !473, line: 458, column: 19)
!1861 = !DILocation(line: 468, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !473, line: 468, column: 21)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !473, line: 468, column: 21)
!1864 = !DILocation(line: 468, column: 21, scope: !1863)
!1865 = !DILocation(line: 469, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !473, line: 469, column: 21)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !473, line: 469, column: 21)
!1868 = !DILocation(line: 469, column: 21, scope: !1867)
!1869 = !DILocation(line: 470, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !473, line: 470, column: 21)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !473, line: 470, column: 21)
!1872 = !DILocation(line: 470, column: 21, scope: !1871)
!1873 = !DILocation(line: 471, column: 21, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !473, line: 471, column: 21)
!1875 = distinct !DILexicalBlock(scope: !1860, file: !473, line: 471, column: 21)
!1876 = !DILocation(line: 471, column: 21, scope: !1875)
!1877 = !DILocation(line: 472, column: 21, scope: !1860)
!1878 = !DILocation(line: 482, column: 33, scope: !1649)
!1879 = !DILocation(line: 483, column: 33, scope: !1649)
!1880 = !DILocation(line: 485, column: 33, scope: !1649)
!1881 = !DILocation(line: 486, column: 33, scope: !1649)
!1882 = !DILocation(line: 487, column: 33, scope: !1649)
!1883 = !DILocation(line: 490, column: 17, scope: !1649)
!1884 = !DILocation(line: 492, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !473, line: 491, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1649, file: !473, line: 490, column: 17)
!1887 = !DILocation(line: 499, column: 35, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1649, file: !473, line: 499, column: 17)
!1889 = !DILocation(line: 0, scope: !1649)
!1890 = !DILocation(line: 502, column: 11, scope: !1649)
!1891 = !DILocation(line: 504, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1649, file: !473, line: 503, column: 17)
!1893 = !DILocation(line: 507, column: 11, scope: !1649)
!1894 = !DILocation(line: 508, column: 17, scope: !1649)
!1895 = !DILocation(line: 517, column: 15, scope: !1650)
!1896 = !DILocation(line: 517, column: 40, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 517, column: 15)
!1898 = !DILocation(line: 517, column: 47, scope: !1897)
!1899 = !DILocation(line: 517, column: 18, scope: !1897)
!1900 = !DILocation(line: 521, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 521, column: 15)
!1902 = !DILocation(line: 521, column: 15, scope: !1650)
!1903 = !DILocation(line: 525, column: 11, scope: !1650)
!1904 = !DILocation(line: 537, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 536, column: 15)
!1906 = !DILocation(line: 536, column: 15, scope: !1650)
!1907 = !DILocation(line: 544, column: 15, scope: !1650)
!1908 = !DILocation(line: 546, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !473, line: 545, column: 13)
!1910 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 544, column: 15)
!1911 = !DILocation(line: 549, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !473, line: 549, column: 19)
!1913 = !DILocation(line: 549, column: 30, scope: !1912)
!1914 = !DILocation(line: 558, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !473, line: 558, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !473, line: 558, column: 15)
!1917 = !DILocation(line: 558, column: 15, scope: !1916)
!1918 = !DILocation(line: 559, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !473, line: 559, column: 15)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !473, line: 559, column: 15)
!1921 = !DILocation(line: 559, column: 15, scope: !1920)
!1922 = !DILocation(line: 560, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !473, line: 560, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !473, line: 560, column: 15)
!1925 = !DILocation(line: 560, column: 15, scope: !1924)
!1926 = !DILocation(line: 562, column: 13, scope: !1909)
!1927 = !DILocation(line: 602, column: 17, scope: !1653)
!1928 = !DILocation(line: 0, scope: !1653)
!1929 = !DILocation(line: 605, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1657, file: !473, line: 603, column: 15)
!1931 = !DILocation(line: 605, column: 41, scope: !1930)
!1932 = !DILocation(line: 606, column: 15, scope: !1930)
!1933 = !DILocation(line: 609, column: 17, scope: !1656)
!1934 = !DILocation(line: 0, scope: !1711, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 609, column: 32, scope: !1656)
!1936 = !DILocation(line: 0, scope: !1719, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1137, column: 3, scope: !1711, inlinedAt: !1935)
!1938 = !DILocation(line: 59, column: 10, scope: !1719, inlinedAt: !1937)
!1939 = !DILocation(line: 613, column: 29, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1656, file: !473, line: 613, column: 21)
!1941 = !DILocation(line: 613, column: 21, scope: !1656)
!1942 = !DILocation(line: 614, column: 29, scope: !1940)
!1943 = !DILocation(line: 614, column: 19, scope: !1940)
!1944 = !DILocation(line: 618, column: 21, scope: !1659)
!1945 = !DILocation(line: 620, column: 54, scope: !1659)
!1946 = !DILocation(line: 619, column: 36, scope: !1659)
!1947 = !DILocation(line: 621, column: 25, scope: !1659)
!1948 = !DILocation(line: 631, column: 38, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1668, file: !473, line: 629, column: 23)
!1950 = !DILocation(line: 631, column: 48, scope: !1949)
!1951 = !DILocation(line: 631, column: 25, scope: !1949)
!1952 = !DILocation(line: 626, column: 25, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1669, file: !473, line: 624, column: 23)
!1954 = !DILocation(line: 631, column: 51, scope: !1949)
!1955 = !DILocation(line: 632, column: 28, scope: !1949)
!1956 = !DILocation(line: 631, column: 34, scope: !1949)
!1957 = distinct !{!1957, !1951, !1955, !901}
!1958 = !DILocation(line: 0, scope: !1664)
!1959 = !DILocation(line: 646, column: 29, scope: !1666)
!1960 = !DILocation(line: 648, column: 29, scope: !1664)
!1961 = !DILocation(line: 649, column: 39, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1664, file: !473, line: 648, column: 29)
!1963 = !DILocation(line: 649, column: 31, scope: !1962)
!1964 = !DILocation(line: 648, column: 60, scope: !1962)
!1965 = !DILocation(line: 648, column: 50, scope: !1962)
!1966 = distinct !{!1966, !1960, !1967, !901}
!1967 = !DILocation(line: 654, column: 33, scope: !1664)
!1968 = !DILocation(line: 657, column: 43, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1667, file: !473, line: 657, column: 29)
!1970 = !DILocalVariable(name: "wc", arg: 1, scope: !1971, file: !1972, line: 865, type: !1975)
!1971 = distinct !DISubprogram(name: "c32isprint", scope: !1972, file: !1972, line: 865, type: !1973, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1977)
!1972 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!68, !1975}
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1976, line: 20, baseType: !74)
!1976 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1977 = !{!1970}
!1978 = !DILocation(line: 0, scope: !1971, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 657, column: 31, scope: !1969)
!1980 = !DILocation(line: 871, column: 10, scope: !1971, inlinedAt: !1979)
!1981 = !DILocation(line: 657, column: 31, scope: !1969)
!1982 = !DILocation(line: 664, column: 23, scope: !1659)
!1983 = !DILocation(line: 665, column: 19, scope: !1660)
!1984 = !DILocation(line: 666, column: 15, scope: !1657)
!1985 = !DILocation(line: 753, column: 2, scope: !1609)
!1986 = !DILocation(line: 756, column: 51, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 756, column: 7)
!1988 = !DILocation(line: 0, scope: !1657)
!1989 = !DILocation(line: 670, column: 19, scope: !1673)
!1990 = !DILocation(line: 670, column: 23, scope: !1673)
!1991 = !DILocation(line: 674, column: 33, scope: !1672)
!1992 = !DILocation(line: 0, scope: !1672)
!1993 = !DILocation(line: 676, column: 17, scope: !1672)
!1994 = !DILocation(line: 678, column: 43, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !473, line: 678, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !473, line: 677, column: 19)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !473, line: 676, column: 17)
!1998 = distinct !DILexicalBlock(scope: !1672, file: !473, line: 676, column: 17)
!1999 = !DILocation(line: 680, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !473, line: 680, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1995, file: !473, line: 679, column: 23)
!2002 = !DILocation(line: 680, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2000, file: !473, line: 680, column: 25)
!2004 = !DILocation(line: 680, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !473, line: 680, column: 25)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !473, line: 680, column: 25)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !473, line: 680, column: 25)
!2008 = !DILocation(line: 680, column: 25, scope: !2006)
!2009 = !DILocation(line: 680, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !473, line: 680, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !473, line: 680, column: 25)
!2012 = !DILocation(line: 680, column: 25, scope: !2011)
!2013 = !DILocation(line: 680, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !473, line: 680, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2007, file: !473, line: 680, column: 25)
!2016 = !DILocation(line: 680, column: 25, scope: !2015)
!2017 = !DILocation(line: 680, column: 25, scope: !2007)
!2018 = !DILocation(line: 680, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !473, line: 680, column: 25)
!2020 = distinct !DILexicalBlock(scope: !2000, file: !473, line: 680, column: 25)
!2021 = !DILocation(line: 680, column: 25, scope: !2020)
!2022 = !DILocation(line: 681, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !473, line: 681, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2001, file: !473, line: 681, column: 25)
!2025 = !DILocation(line: 681, column: 25, scope: !2024)
!2026 = !DILocation(line: 682, column: 25, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !473, line: 682, column: 25)
!2028 = distinct !DILexicalBlock(scope: !2001, file: !473, line: 682, column: 25)
!2029 = !DILocation(line: 682, column: 25, scope: !2028)
!2030 = !DILocation(line: 683, column: 38, scope: !2001)
!2031 = !DILocation(line: 683, column: 33, scope: !2001)
!2032 = !DILocation(line: 684, column: 23, scope: !2001)
!2033 = !DILocation(line: 685, column: 30, scope: !1995)
!2034 = !DILocation(line: 687, column: 25, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !473, line: 687, column: 25)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !473, line: 687, column: 25)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !473, line: 686, column: 23)
!2038 = distinct !DILexicalBlock(scope: !1995, file: !473, line: 685, column: 30)
!2039 = !DILocation(line: 687, column: 25, scope: !2036)
!2040 = !DILocation(line: 689, column: 23, scope: !2037)
!2041 = !DILocation(line: 690, column: 35, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1996, file: !473, line: 690, column: 25)
!2043 = !DILocation(line: 690, column: 30, scope: !2042)
!2044 = !DILocation(line: 690, column: 25, scope: !1996)
!2045 = !DILocation(line: 692, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !473, line: 692, column: 21)
!2047 = distinct !DILexicalBlock(scope: !1996, file: !473, line: 692, column: 21)
!2048 = !DILocation(line: 692, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !473, line: 692, column: 21)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !473, line: 692, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !473, line: 692, column: 21)
!2052 = !DILocation(line: 692, column: 21, scope: !2050)
!2053 = !DILocation(line: 692, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !473, line: 692, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !473, line: 692, column: 21)
!2056 = !DILocation(line: 692, column: 21, scope: !2055)
!2057 = !DILocation(line: 692, column: 21, scope: !2051)
!2058 = !DILocation(line: 0, scope: !1996)
!2059 = !DILocation(line: 693, column: 21, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !473, line: 693, column: 21)
!2061 = distinct !DILexicalBlock(scope: !1996, file: !473, line: 693, column: 21)
!2062 = !DILocation(line: 693, column: 21, scope: !2061)
!2063 = !DILocation(line: 694, column: 25, scope: !1996)
!2064 = !DILocation(line: 676, column: 17, scope: !1997)
!2065 = distinct !{!2065, !2066, !2067}
!2066 = !DILocation(line: 676, column: 17, scope: !1998)
!2067 = !DILocation(line: 695, column: 19, scope: !1998)
!2068 = !DILocation(line: 409, column: 30, scope: !1783)
!2069 = !DILocation(line: 702, column: 34, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 702, column: 11)
!2071 = !DILocation(line: 704, column: 14, scope: !2070)
!2072 = !DILocation(line: 705, column: 14, scope: !2070)
!2073 = !DILocation(line: 705, column: 35, scope: !2070)
!2074 = !DILocation(line: 705, column: 17, scope: !2070)
!2075 = !DILocation(line: 705, column: 47, scope: !2070)
!2076 = !DILocation(line: 705, column: 65, scope: !2070)
!2077 = !DILocation(line: 706, column: 11, scope: !2070)
!2078 = !DILocation(line: 702, column: 11, scope: !1643)
!2079 = !DILocation(line: 395, column: 15, scope: !1641)
!2080 = !DILocation(line: 709, column: 5, scope: !1643)
!2081 = !DILocation(line: 710, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 710, column: 7)
!2083 = !DILocation(line: 710, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2082, file: !473, line: 710, column: 7)
!2085 = !DILocation(line: 710, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !473, line: 710, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !473, line: 710, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !473, line: 710, column: 7)
!2089 = !DILocation(line: 710, column: 7, scope: !2087)
!2090 = !DILocation(line: 710, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !473, line: 710, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !473, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2092)
!2094 = !DILocation(line: 710, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !473, line: 710, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2088, file: !473, line: 710, column: 7)
!2097 = !DILocation(line: 710, column: 7, scope: !2096)
!2098 = !DILocation(line: 710, column: 7, scope: !2088)
!2099 = !DILocation(line: 710, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !473, line: 710, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2082, file: !473, line: 710, column: 7)
!2102 = !DILocation(line: 710, column: 7, scope: !2101)
!2103 = !DILocation(line: 712, column: 5, scope: !1643)
!2104 = !DILocation(line: 713, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !473, line: 713, column: 7)
!2106 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 713, column: 7)
!2107 = !DILocation(line: 417, column: 21, scope: !1643)
!2108 = !DILocation(line: 713, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !473, line: 713, column: 7)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !473, line: 713, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !473, line: 713, column: 7)
!2112 = !DILocation(line: 713, column: 7, scope: !2110)
!2113 = !DILocation(line: 713, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !473, line: 713, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !473, line: 713, column: 7)
!2116 = !DILocation(line: 713, column: 7, scope: !2115)
!2117 = !DILocation(line: 713, column: 7, scope: !2111)
!2118 = !DILocation(line: 714, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !473, line: 714, column: 7)
!2120 = distinct !DILexicalBlock(scope: !1643, file: !473, line: 714, column: 7)
!2121 = !DILocation(line: 714, column: 7, scope: !2120)
!2122 = !DILocation(line: 716, column: 11, scope: !1643)
!2123 = !DILocation(line: 718, column: 5, scope: !1644)
!2124 = !DILocation(line: 395, column: 82, scope: !1644)
!2125 = !DILocation(line: 395, column: 3, scope: !1644)
!2126 = distinct !{!2126, !1779, !2127, !901}
!2127 = !DILocation(line: 718, column: 5, scope: !1641)
!2128 = !DILocation(line: 720, column: 11, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 720, column: 7)
!2130 = !DILocation(line: 720, column: 16, scope: !2129)
!2131 = !DILocation(line: 728, column: 51, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 728, column: 7)
!2133 = !DILocation(line: 731, column: 11, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2132, file: !473, line: 730, column: 5)
!2135 = !DILocation(line: 732, column: 16, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2134, file: !473, line: 731, column: 11)
!2137 = !DILocation(line: 732, column: 9, scope: !2136)
!2138 = !DILocation(line: 736, column: 18, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !473, line: 736, column: 16)
!2140 = !DILocation(line: 736, column: 29, scope: !2139)
!2141 = !DILocation(line: 745, column: 7, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 745, column: 7)
!2143 = !DILocation(line: 745, column: 20, scope: !2142)
!2144 = !DILocation(line: 746, column: 12, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !473, line: 746, column: 5)
!2146 = distinct !DILexicalBlock(scope: !2142, file: !473, line: 746, column: 5)
!2147 = !DILocation(line: 746, column: 5, scope: !2146)
!2148 = !DILocation(line: 747, column: 7, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !473, line: 747, column: 7)
!2150 = distinct !DILexicalBlock(scope: !2145, file: !473, line: 747, column: 7)
!2151 = !DILocation(line: 747, column: 7, scope: !2150)
!2152 = !DILocation(line: 746, column: 39, scope: !2145)
!2153 = distinct !{!2153, !2147, !2154, !901}
!2154 = !DILocation(line: 747, column: 7, scope: !2146)
!2155 = !DILocation(line: 749, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1609, file: !473, line: 749, column: 7)
!2157 = !DILocation(line: 749, column: 7, scope: !1609)
!2158 = !DILocation(line: 750, column: 5, scope: !2156)
!2159 = !DILocation(line: 750, column: 17, scope: !2156)
!2160 = !DILocation(line: 756, column: 21, scope: !1987)
!2161 = !DILocation(line: 760, column: 42, scope: !1609)
!2162 = !DILocation(line: 758, column: 10, scope: !1609)
!2163 = !DILocation(line: 758, column: 3, scope: !1609)
!2164 = !DILocation(line: 762, column: 1, scope: !1609)
!2165 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !975, file: !975, line: 98, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!91}
!2168 = !DISubprogram(name: "strlen", scope: !971, file: !971, line: 407, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!93, !94}
!2171 = !DISubprogram(name: "iswprint", scope: !2172, file: !2172, line: 120, type: !1973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2173 = distinct !DISubprogram(name: "quotearg_alloc", scope: !473, file: !473, line: 788, type: !2174, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!89, !94, !91, !1502}
!2176 = !{!2177, !2178, !2179}
!2177 = !DILocalVariable(name: "arg", arg: 1, scope: !2173, file: !473, line: 788, type: !94)
!2178 = !DILocalVariable(name: "argsize", arg: 2, scope: !2173, file: !473, line: 788, type: !91)
!2179 = !DILocalVariable(name: "o", arg: 3, scope: !2173, file: !473, line: 789, type: !1502)
!2180 = !DILocation(line: 0, scope: !2173)
!2181 = !DILocalVariable(name: "arg", arg: 1, scope: !2182, file: !473, line: 801, type: !94)
!2182 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !473, file: !473, line: 801, type: !2183, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2185)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!89, !94, !91, !725, !1502}
!2185 = !{!2181, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2186 = !DILocalVariable(name: "argsize", arg: 2, scope: !2182, file: !473, line: 801, type: !91)
!2187 = !DILocalVariable(name: "size", arg: 3, scope: !2182, file: !473, line: 801, type: !725)
!2188 = !DILocalVariable(name: "o", arg: 4, scope: !2182, file: !473, line: 802, type: !1502)
!2189 = !DILocalVariable(name: "p", scope: !2182, file: !473, line: 804, type: !1502)
!2190 = !DILocalVariable(name: "saved_errno", scope: !2182, file: !473, line: 805, type: !68)
!2191 = !DILocalVariable(name: "flags", scope: !2182, file: !473, line: 807, type: !68)
!2192 = !DILocalVariable(name: "bufsize", scope: !2182, file: !473, line: 808, type: !91)
!2193 = !DILocalVariable(name: "buf", scope: !2182, file: !473, line: 812, type: !89)
!2194 = !DILocation(line: 0, scope: !2182, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 791, column: 10, scope: !2173)
!2196 = !DILocation(line: 804, column: 37, scope: !2182, inlinedAt: !2195)
!2197 = !DILocation(line: 805, column: 21, scope: !2182, inlinedAt: !2195)
!2198 = !DILocation(line: 807, column: 18, scope: !2182, inlinedAt: !2195)
!2199 = !DILocation(line: 807, column: 24, scope: !2182, inlinedAt: !2195)
!2200 = !DILocation(line: 808, column: 72, scope: !2182, inlinedAt: !2195)
!2201 = !DILocation(line: 809, column: 56, scope: !2182, inlinedAt: !2195)
!2202 = !DILocation(line: 810, column: 49, scope: !2182, inlinedAt: !2195)
!2203 = !DILocation(line: 811, column: 49, scope: !2182, inlinedAt: !2195)
!2204 = !DILocation(line: 808, column: 20, scope: !2182, inlinedAt: !2195)
!2205 = !DILocation(line: 811, column: 62, scope: !2182, inlinedAt: !2195)
!2206 = !DILocation(line: 812, column: 15, scope: !2182, inlinedAt: !2195)
!2207 = !DILocation(line: 813, column: 60, scope: !2182, inlinedAt: !2195)
!2208 = !DILocation(line: 815, column: 32, scope: !2182, inlinedAt: !2195)
!2209 = !DILocation(line: 815, column: 47, scope: !2182, inlinedAt: !2195)
!2210 = !DILocation(line: 813, column: 3, scope: !2182, inlinedAt: !2195)
!2211 = !DILocation(line: 816, column: 9, scope: !2182, inlinedAt: !2195)
!2212 = !DILocation(line: 791, column: 3, scope: !2173)
!2213 = !DILocation(line: 0, scope: !2182)
!2214 = !DILocation(line: 804, column: 37, scope: !2182)
!2215 = !DILocation(line: 805, column: 21, scope: !2182)
!2216 = !DILocation(line: 807, column: 18, scope: !2182)
!2217 = !DILocation(line: 807, column: 27, scope: !2182)
!2218 = !DILocation(line: 807, column: 24, scope: !2182)
!2219 = !DILocation(line: 808, column: 72, scope: !2182)
!2220 = !DILocation(line: 809, column: 56, scope: !2182)
!2221 = !DILocation(line: 810, column: 49, scope: !2182)
!2222 = !DILocation(line: 811, column: 49, scope: !2182)
!2223 = !DILocation(line: 808, column: 20, scope: !2182)
!2224 = !DILocation(line: 811, column: 62, scope: !2182)
!2225 = !DILocation(line: 812, column: 15, scope: !2182)
!2226 = !DILocation(line: 813, column: 60, scope: !2182)
!2227 = !DILocation(line: 815, column: 32, scope: !2182)
!2228 = !DILocation(line: 815, column: 47, scope: !2182)
!2229 = !DILocation(line: 813, column: 3, scope: !2182)
!2230 = !DILocation(line: 816, column: 9, scope: !2182)
!2231 = !DILocation(line: 817, column: 7, scope: !2182)
!2232 = !DILocation(line: 818, column: 11, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2182, file: !473, line: 817, column: 7)
!2234 = !{!1043, !1043, i64 0}
!2235 = !DILocation(line: 818, column: 5, scope: !2233)
!2236 = !DILocation(line: 819, column: 3, scope: !2182)
!2237 = distinct !DISubprogram(name: "quotearg_free", scope: !473, file: !473, line: 837, type: !428, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2238)
!2238 = !{!2239, !2240}
!2239 = !DILocalVariable(name: "sv", scope: !2237, file: !473, line: 839, type: !571)
!2240 = !DILocalVariable(name: "i", scope: !2241, file: !473, line: 840, type: !68)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !473, line: 840, column: 3)
!2242 = !DILocation(line: 839, column: 24, scope: !2237)
!2243 = !DILocation(line: 0, scope: !2237)
!2244 = !DILocation(line: 0, scope: !2241)
!2245 = !DILocation(line: 840, column: 21, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2241, file: !473, line: 840, column: 3)
!2247 = !DILocation(line: 840, column: 3, scope: !2241)
!2248 = !DILocation(line: 842, column: 13, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2237, file: !473, line: 842, column: 7)
!2250 = !{!2251, !793, i64 8}
!2251 = !{!"slotvec", !1043, i64 0, !793, i64 8}
!2252 = !DILocation(line: 842, column: 17, scope: !2249)
!2253 = !DILocation(line: 842, column: 7, scope: !2237)
!2254 = !DILocation(line: 841, column: 17, scope: !2246)
!2255 = !DILocation(line: 841, column: 5, scope: !2246)
!2256 = !DILocation(line: 840, column: 32, scope: !2246)
!2257 = distinct !{!2257, !2247, !2258, !901}
!2258 = !DILocation(line: 841, column: 20, scope: !2241)
!2259 = !DILocation(line: 844, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !473, line: 843, column: 5)
!2261 = !DILocation(line: 845, column: 21, scope: !2260)
!2262 = !{!2251, !1043, i64 0}
!2263 = !DILocation(line: 846, column: 20, scope: !2260)
!2264 = !DILocation(line: 847, column: 5, scope: !2260)
!2265 = !DILocation(line: 848, column: 10, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2237, file: !473, line: 848, column: 7)
!2267 = !DILocation(line: 848, column: 7, scope: !2237)
!2268 = !DILocation(line: 850, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !473, line: 849, column: 5)
!2270 = !DILocation(line: 851, column: 15, scope: !2269)
!2271 = !DILocation(line: 852, column: 5, scope: !2269)
!2272 = !DILocation(line: 853, column: 10, scope: !2237)
!2273 = !DILocation(line: 854, column: 1, scope: !2237)
!2274 = !DISubprogram(name: "free", scope: !1457, file: !1457, line: 786, type: !2275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{null, !90}
!2277 = distinct !DISubprogram(name: "quotearg_n", scope: !473, file: !473, line: 919, type: !968, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2278)
!2278 = !{!2279, !2280}
!2279 = !DILocalVariable(name: "n", arg: 1, scope: !2277, file: !473, line: 919, type: !68)
!2280 = !DILocalVariable(name: "arg", arg: 2, scope: !2277, file: !473, line: 919, type: !94)
!2281 = !DILocation(line: 0, scope: !2277)
!2282 = !DILocation(line: 921, column: 10, scope: !2277)
!2283 = !DILocation(line: 921, column: 3, scope: !2277)
!2284 = distinct !DISubprogram(name: "quotearg_n_options", scope: !473, file: !473, line: 866, type: !2285, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!89, !68, !94, !91, !1502}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2298, !2299, !2301, !2302, !2303}
!2288 = !DILocalVariable(name: "n", arg: 1, scope: !2284, file: !473, line: 866, type: !68)
!2289 = !DILocalVariable(name: "arg", arg: 2, scope: !2284, file: !473, line: 866, type: !94)
!2290 = !DILocalVariable(name: "argsize", arg: 3, scope: !2284, file: !473, line: 866, type: !91)
!2291 = !DILocalVariable(name: "options", arg: 4, scope: !2284, file: !473, line: 867, type: !1502)
!2292 = !DILocalVariable(name: "saved_errno", scope: !2284, file: !473, line: 869, type: !68)
!2293 = !DILocalVariable(name: "sv", scope: !2284, file: !473, line: 871, type: !571)
!2294 = !DILocalVariable(name: "nslots_max", scope: !2284, file: !473, line: 873, type: !68)
!2295 = !DILocalVariable(name: "preallocated", scope: !2296, file: !473, line: 879, type: !126)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !473, line: 878, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2284, file: !473, line: 877, column: 7)
!2298 = !DILocalVariable(name: "new_nslots", scope: !2296, file: !473, line: 880, type: !738)
!2299 = !DILocalVariable(name: "size", scope: !2300, file: !473, line: 891, type: !91)
!2300 = distinct !DILexicalBlock(scope: !2284, file: !473, line: 890, column: 3)
!2301 = !DILocalVariable(name: "val", scope: !2300, file: !473, line: 892, type: !89)
!2302 = !DILocalVariable(name: "flags", scope: !2300, file: !473, line: 894, type: !68)
!2303 = !DILocalVariable(name: "qsize", scope: !2300, file: !473, line: 895, type: !91)
!2304 = distinct !DIAssignID()
!2305 = !DILocation(line: 0, scope: !2296)
!2306 = !DILocation(line: 0, scope: !2284)
!2307 = !DILocation(line: 869, column: 21, scope: !2284)
!2308 = !DILocation(line: 871, column: 24, scope: !2284)
!2309 = !DILocation(line: 874, column: 17, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2284, file: !473, line: 874, column: 7)
!2311 = !DILocation(line: 875, column: 5, scope: !2310)
!2312 = !DILocation(line: 877, column: 7, scope: !2297)
!2313 = !DILocation(line: 877, column: 14, scope: !2297)
!2314 = !DILocation(line: 877, column: 7, scope: !2284)
!2315 = !DILocation(line: 879, column: 31, scope: !2296)
!2316 = !DILocation(line: 880, column: 7, scope: !2296)
!2317 = !DILocation(line: 880, column: 26, scope: !2296)
!2318 = !DILocation(line: 880, column: 13, scope: !2296)
!2319 = distinct !DIAssignID()
!2320 = !DILocation(line: 882, column: 31, scope: !2296)
!2321 = !DILocation(line: 883, column: 33, scope: !2296)
!2322 = !DILocation(line: 883, column: 42, scope: !2296)
!2323 = !DILocation(line: 883, column: 31, scope: !2296)
!2324 = !DILocation(line: 882, column: 22, scope: !2296)
!2325 = !DILocation(line: 882, column: 15, scope: !2296)
!2326 = !DILocation(line: 884, column: 11, scope: !2296)
!2327 = !DILocation(line: 885, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2296, file: !473, line: 884, column: 11)
!2329 = !{i64 0, i64 8, !2234, i64 8, i64 8, !792}
!2330 = !DILocation(line: 885, column: 9, scope: !2328)
!2331 = !DILocation(line: 886, column: 20, scope: !2296)
!2332 = !DILocation(line: 886, column: 18, scope: !2296)
!2333 = !DILocation(line: 886, column: 32, scope: !2296)
!2334 = !DILocation(line: 886, column: 43, scope: !2296)
!2335 = !DILocation(line: 886, column: 53, scope: !2296)
!2336 = !DILocation(line: 0, scope: !1719, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 886, column: 7, scope: !2296)
!2338 = !DILocation(line: 59, column: 10, scope: !1719, inlinedAt: !2337)
!2339 = !DILocation(line: 887, column: 16, scope: !2296)
!2340 = !DILocation(line: 887, column: 14, scope: !2296)
!2341 = !DILocation(line: 888, column: 5, scope: !2297)
!2342 = !DILocation(line: 888, column: 5, scope: !2296)
!2343 = !DILocation(line: 891, column: 19, scope: !2300)
!2344 = !DILocation(line: 891, column: 25, scope: !2300)
!2345 = !DILocation(line: 0, scope: !2300)
!2346 = !DILocation(line: 892, column: 23, scope: !2300)
!2347 = !DILocation(line: 894, column: 26, scope: !2300)
!2348 = !DILocation(line: 894, column: 32, scope: !2300)
!2349 = !DILocation(line: 896, column: 55, scope: !2300)
!2350 = !DILocation(line: 897, column: 55, scope: !2300)
!2351 = !DILocation(line: 898, column: 55, scope: !2300)
!2352 = !DILocation(line: 899, column: 55, scope: !2300)
!2353 = !DILocation(line: 895, column: 20, scope: !2300)
!2354 = !DILocation(line: 901, column: 14, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2300, file: !473, line: 901, column: 9)
!2356 = !DILocation(line: 901, column: 9, scope: !2300)
!2357 = !DILocation(line: 903, column: 35, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !473, line: 902, column: 7)
!2359 = !DILocation(line: 903, column: 20, scope: !2358)
!2360 = !DILocation(line: 904, column: 17, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !473, line: 904, column: 13)
!2362 = !DILocation(line: 904, column: 13, scope: !2358)
!2363 = !DILocation(line: 905, column: 11, scope: !2361)
!2364 = !DILocation(line: 906, column: 27, scope: !2358)
!2365 = !DILocation(line: 906, column: 19, scope: !2358)
!2366 = !DILocation(line: 907, column: 69, scope: !2358)
!2367 = !DILocation(line: 909, column: 44, scope: !2358)
!2368 = !DILocation(line: 910, column: 44, scope: !2358)
!2369 = !DILocation(line: 907, column: 9, scope: !2358)
!2370 = !DILocation(line: 911, column: 7, scope: !2358)
!2371 = !DILocation(line: 913, column: 11, scope: !2300)
!2372 = !DILocation(line: 914, column: 5, scope: !2300)
!2373 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !473, file: !473, line: 925, type: !2374, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!89, !68, !94, !91}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "n", arg: 1, scope: !2373, file: !473, line: 925, type: !68)
!2378 = !DILocalVariable(name: "arg", arg: 2, scope: !2373, file: !473, line: 925, type: !94)
!2379 = !DILocalVariable(name: "argsize", arg: 3, scope: !2373, file: !473, line: 925, type: !91)
!2380 = !DILocation(line: 0, scope: !2373)
!2381 = !DILocation(line: 927, column: 10, scope: !2373)
!2382 = !DILocation(line: 927, column: 3, scope: !2373)
!2383 = distinct !DISubprogram(name: "quotearg", scope: !473, file: !473, line: 931, type: !977, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2384)
!2384 = !{!2385}
!2385 = !DILocalVariable(name: "arg", arg: 1, scope: !2383, file: !473, line: 931, type: !94)
!2386 = !DILocation(line: 0, scope: !2383)
!2387 = !DILocation(line: 0, scope: !2277, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 933, column: 10, scope: !2383)
!2389 = !DILocation(line: 921, column: 10, scope: !2277, inlinedAt: !2388)
!2390 = !DILocation(line: 933, column: 3, scope: !2383)
!2391 = distinct !DISubprogram(name: "quotearg_mem", scope: !473, file: !473, line: 937, type: !2392, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!89, !94, !91}
!2394 = !{!2395, !2396}
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !473, line: 937, type: !94)
!2396 = !DILocalVariable(name: "argsize", arg: 2, scope: !2391, file: !473, line: 937, type: !91)
!2397 = !DILocation(line: 0, scope: !2391)
!2398 = !DILocation(line: 0, scope: !2373, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 939, column: 10, scope: !2391)
!2400 = !DILocation(line: 927, column: 10, scope: !2373, inlinedAt: !2399)
!2401 = !DILocation(line: 939, column: 3, scope: !2391)
!2402 = distinct !DISubprogram(name: "quotearg_n_style", scope: !473, file: !473, line: 943, type: !2403, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!89, !68, !496, !94}
!2405 = !{!2406, !2407, !2408, !2409}
!2406 = !DILocalVariable(name: "n", arg: 1, scope: !2402, file: !473, line: 943, type: !68)
!2407 = !DILocalVariable(name: "s", arg: 2, scope: !2402, file: !473, line: 943, type: !496)
!2408 = !DILocalVariable(name: "arg", arg: 3, scope: !2402, file: !473, line: 943, type: !94)
!2409 = !DILocalVariable(name: "o", scope: !2402, file: !473, line: 945, type: !1503)
!2410 = distinct !DIAssignID()
!2411 = !DILocation(line: 0, scope: !2402)
!2412 = !DILocation(line: 945, column: 3, scope: !2402)
!2413 = !{!2414}
!2414 = distinct !{!2414, !2415, !"quoting_options_from_style: argument 0"}
!2415 = distinct !{!2415, !"quoting_options_from_style"}
!2416 = !DILocation(line: 945, column: 36, scope: !2402)
!2417 = !DILocalVariable(name: "style", arg: 1, scope: !2418, file: !473, line: 183, type: !496)
!2418 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !473, file: !473, line: 183, type: !2419, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!523, !496}
!2421 = !{!2417, !2422}
!2422 = !DILocalVariable(name: "o", scope: !2418, file: !473, line: 185, type: !523)
!2423 = !DILocation(line: 0, scope: !2418, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 945, column: 36, scope: !2402)
!2425 = !DILocation(line: 185, column: 26, scope: !2418, inlinedAt: !2424)
!2426 = distinct !DIAssignID()
!2427 = !DILocation(line: 186, column: 13, scope: !2428, inlinedAt: !2424)
!2428 = distinct !DILexicalBlock(scope: !2418, file: !473, line: 186, column: 7)
!2429 = !DILocation(line: 186, column: 7, scope: !2418, inlinedAt: !2424)
!2430 = !DILocation(line: 187, column: 5, scope: !2428, inlinedAt: !2424)
!2431 = !DILocation(line: 188, column: 11, scope: !2418, inlinedAt: !2424)
!2432 = distinct !DIAssignID()
!2433 = !DILocation(line: 946, column: 10, scope: !2402)
!2434 = !DILocation(line: 947, column: 1, scope: !2402)
!2435 = !DILocation(line: 946, column: 3, scope: !2402)
!2436 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !473, file: !473, line: 950, type: !2437, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!89, !68, !496, !94, !91}
!2439 = !{!2440, !2441, !2442, !2443, !2444}
!2440 = !DILocalVariable(name: "n", arg: 1, scope: !2436, file: !473, line: 950, type: !68)
!2441 = !DILocalVariable(name: "s", arg: 2, scope: !2436, file: !473, line: 950, type: !496)
!2442 = !DILocalVariable(name: "arg", arg: 3, scope: !2436, file: !473, line: 951, type: !94)
!2443 = !DILocalVariable(name: "argsize", arg: 4, scope: !2436, file: !473, line: 951, type: !91)
!2444 = !DILocalVariable(name: "o", scope: !2436, file: !473, line: 953, type: !1503)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 0, scope: !2436)
!2447 = !DILocation(line: 953, column: 3, scope: !2436)
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"quoting_options_from_style: argument 0"}
!2450 = distinct !{!2450, !"quoting_options_from_style"}
!2451 = !DILocation(line: 953, column: 36, scope: !2436)
!2452 = !DILocation(line: 0, scope: !2418, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 953, column: 36, scope: !2436)
!2454 = !DILocation(line: 185, column: 26, scope: !2418, inlinedAt: !2453)
!2455 = distinct !DIAssignID()
!2456 = !DILocation(line: 186, column: 13, scope: !2428, inlinedAt: !2453)
!2457 = !DILocation(line: 186, column: 7, scope: !2418, inlinedAt: !2453)
!2458 = !DILocation(line: 187, column: 5, scope: !2428, inlinedAt: !2453)
!2459 = !DILocation(line: 188, column: 11, scope: !2418, inlinedAt: !2453)
!2460 = distinct !DIAssignID()
!2461 = !DILocation(line: 954, column: 10, scope: !2436)
!2462 = !DILocation(line: 955, column: 1, scope: !2436)
!2463 = !DILocation(line: 954, column: 3, scope: !2436)
!2464 = distinct !DISubprogram(name: "quotearg_style", scope: !473, file: !473, line: 958, type: !2465, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!89, !496, !94}
!2467 = !{!2468, !2469}
!2468 = !DILocalVariable(name: "s", arg: 1, scope: !2464, file: !473, line: 958, type: !496)
!2469 = !DILocalVariable(name: "arg", arg: 2, scope: !2464, file: !473, line: 958, type: !94)
!2470 = distinct !DIAssignID()
!2471 = !DILocation(line: 0, scope: !2464)
!2472 = !DILocation(line: 0, scope: !2402, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 960, column: 10, scope: !2464)
!2474 = !DILocation(line: 945, column: 3, scope: !2402, inlinedAt: !2473)
!2475 = !{!2476}
!2476 = distinct !{!2476, !2477, !"quoting_options_from_style: argument 0"}
!2477 = distinct !{!2477, !"quoting_options_from_style"}
!2478 = !DILocation(line: 945, column: 36, scope: !2402, inlinedAt: !2473)
!2479 = !DILocation(line: 0, scope: !2418, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 945, column: 36, scope: !2402, inlinedAt: !2473)
!2481 = !DILocation(line: 185, column: 26, scope: !2418, inlinedAt: !2480)
!2482 = distinct !DIAssignID()
!2483 = !DILocation(line: 186, column: 13, scope: !2428, inlinedAt: !2480)
!2484 = !DILocation(line: 186, column: 7, scope: !2418, inlinedAt: !2480)
!2485 = !DILocation(line: 187, column: 5, scope: !2428, inlinedAt: !2480)
!2486 = !DILocation(line: 188, column: 11, scope: !2418, inlinedAt: !2480)
!2487 = distinct !DIAssignID()
!2488 = !DILocation(line: 946, column: 10, scope: !2402, inlinedAt: !2473)
!2489 = !DILocation(line: 947, column: 1, scope: !2402, inlinedAt: !2473)
!2490 = !DILocation(line: 960, column: 3, scope: !2464)
!2491 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !473, file: !473, line: 964, type: !2492, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!89, !496, !94, !91}
!2494 = !{!2495, !2496, !2497}
!2495 = !DILocalVariable(name: "s", arg: 1, scope: !2491, file: !473, line: 964, type: !496)
!2496 = !DILocalVariable(name: "arg", arg: 2, scope: !2491, file: !473, line: 964, type: !94)
!2497 = !DILocalVariable(name: "argsize", arg: 3, scope: !2491, file: !473, line: 964, type: !91)
!2498 = distinct !DIAssignID()
!2499 = !DILocation(line: 0, scope: !2491)
!2500 = !DILocation(line: 0, scope: !2436, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 966, column: 10, scope: !2491)
!2502 = !DILocation(line: 953, column: 3, scope: !2436, inlinedAt: !2501)
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"quoting_options_from_style: argument 0"}
!2505 = distinct !{!2505, !"quoting_options_from_style"}
!2506 = !DILocation(line: 953, column: 36, scope: !2436, inlinedAt: !2501)
!2507 = !DILocation(line: 0, scope: !2418, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 953, column: 36, scope: !2436, inlinedAt: !2501)
!2509 = !DILocation(line: 185, column: 26, scope: !2418, inlinedAt: !2508)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 186, column: 13, scope: !2428, inlinedAt: !2508)
!2512 = !DILocation(line: 186, column: 7, scope: !2418, inlinedAt: !2508)
!2513 = !DILocation(line: 187, column: 5, scope: !2428, inlinedAt: !2508)
!2514 = !DILocation(line: 188, column: 11, scope: !2418, inlinedAt: !2508)
!2515 = distinct !DIAssignID()
!2516 = !DILocation(line: 954, column: 10, scope: !2436, inlinedAt: !2501)
!2517 = !DILocation(line: 955, column: 1, scope: !2436, inlinedAt: !2501)
!2518 = !DILocation(line: 966, column: 3, scope: !2491)
!2519 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !473, file: !473, line: 970, type: !2520, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!89, !94, !91, !4}
!2522 = !{!2523, !2524, !2525, !2526}
!2523 = !DILocalVariable(name: "arg", arg: 1, scope: !2519, file: !473, line: 970, type: !94)
!2524 = !DILocalVariable(name: "argsize", arg: 2, scope: !2519, file: !473, line: 970, type: !91)
!2525 = !DILocalVariable(name: "ch", arg: 3, scope: !2519, file: !473, line: 970, type: !4)
!2526 = !DILocalVariable(name: "options", scope: !2519, file: !473, line: 972, type: !523)
!2527 = distinct !DIAssignID()
!2528 = !DILocation(line: 0, scope: !2519)
!2529 = !DILocation(line: 972, column: 3, scope: !2519)
!2530 = !DILocation(line: 973, column: 13, scope: !2519)
!2531 = !{i64 0, i64 4, !854, i64 4, i64 4, !854, i64 8, i64 32, !863, i64 40, i64 8, !792, i64 48, i64 8, !792}
!2532 = distinct !DIAssignID()
!2533 = !DILocation(line: 0, scope: !1522, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 974, column: 3, scope: !2519)
!2535 = !DILocation(line: 147, column: 41, scope: !1522, inlinedAt: !2534)
!2536 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2534)
!2537 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2534)
!2538 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2534)
!2539 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2534)
!2540 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2534)
!2541 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2534)
!2542 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2534)
!2543 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2534)
!2544 = !DILocation(line: 975, column: 10, scope: !2519)
!2545 = !DILocation(line: 976, column: 1, scope: !2519)
!2546 = !DILocation(line: 975, column: 3, scope: !2519)
!2547 = distinct !DISubprogram(name: "quotearg_char", scope: !473, file: !473, line: 979, type: !2548, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!89, !94, !4}
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !473, line: 979, type: !94)
!2552 = !DILocalVariable(name: "ch", arg: 2, scope: !2547, file: !473, line: 979, type: !4)
!2553 = distinct !DIAssignID()
!2554 = !DILocation(line: 0, scope: !2547)
!2555 = !DILocation(line: 0, scope: !2519, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 981, column: 10, scope: !2547)
!2557 = !DILocation(line: 972, column: 3, scope: !2519, inlinedAt: !2556)
!2558 = !DILocation(line: 973, column: 13, scope: !2519, inlinedAt: !2556)
!2559 = distinct !DIAssignID()
!2560 = !DILocation(line: 0, scope: !1522, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 974, column: 3, scope: !2519, inlinedAt: !2556)
!2562 = !DILocation(line: 147, column: 41, scope: !1522, inlinedAt: !2561)
!2563 = !DILocation(line: 147, column: 62, scope: !1522, inlinedAt: !2561)
!2564 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2561)
!2565 = !DILocation(line: 148, column: 15, scope: !1522, inlinedAt: !2561)
!2566 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2561)
!2567 = !DILocation(line: 149, column: 24, scope: !1522, inlinedAt: !2561)
!2568 = !DILocation(line: 150, column: 19, scope: !1522, inlinedAt: !2561)
!2569 = !DILocation(line: 150, column: 24, scope: !1522, inlinedAt: !2561)
!2570 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2561)
!2571 = !DILocation(line: 975, column: 10, scope: !2519, inlinedAt: !2556)
!2572 = !DILocation(line: 976, column: 1, scope: !2519, inlinedAt: !2556)
!2573 = !DILocation(line: 981, column: 3, scope: !2547)
!2574 = distinct !DISubprogram(name: "quotearg_colon", scope: !473, file: !473, line: 985, type: !977, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2575)
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !473, line: 985, type: !94)
!2577 = distinct !DIAssignID()
!2578 = !DILocation(line: 0, scope: !2574)
!2579 = !DILocation(line: 0, scope: !2547, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 987, column: 10, scope: !2574)
!2581 = !DILocation(line: 0, scope: !2519, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 981, column: 10, scope: !2547, inlinedAt: !2580)
!2583 = !DILocation(line: 972, column: 3, scope: !2519, inlinedAt: !2582)
!2584 = !DILocation(line: 973, column: 13, scope: !2519, inlinedAt: !2582)
!2585 = distinct !DIAssignID()
!2586 = !DILocation(line: 0, scope: !1522, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 974, column: 3, scope: !2519, inlinedAt: !2582)
!2588 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2587)
!2589 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2587)
!2590 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2587)
!2591 = !DILocation(line: 975, column: 10, scope: !2519, inlinedAt: !2582)
!2592 = !DILocation(line: 976, column: 1, scope: !2519, inlinedAt: !2582)
!2593 = !DILocation(line: 987, column: 3, scope: !2574)
!2594 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !473, file: !473, line: 991, type: !2392, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2595)
!2595 = !{!2596, !2597}
!2596 = !DILocalVariable(name: "arg", arg: 1, scope: !2594, file: !473, line: 991, type: !94)
!2597 = !DILocalVariable(name: "argsize", arg: 2, scope: !2594, file: !473, line: 991, type: !91)
!2598 = distinct !DIAssignID()
!2599 = !DILocation(line: 0, scope: !2594)
!2600 = !DILocation(line: 0, scope: !2519, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 993, column: 10, scope: !2594)
!2602 = !DILocation(line: 972, column: 3, scope: !2519, inlinedAt: !2601)
!2603 = !DILocation(line: 973, column: 13, scope: !2519, inlinedAt: !2601)
!2604 = distinct !DIAssignID()
!2605 = !DILocation(line: 0, scope: !1522, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 974, column: 3, scope: !2519, inlinedAt: !2601)
!2607 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2606)
!2608 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2606)
!2609 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2606)
!2610 = !DILocation(line: 975, column: 10, scope: !2519, inlinedAt: !2601)
!2611 = !DILocation(line: 976, column: 1, scope: !2519, inlinedAt: !2601)
!2612 = !DILocation(line: 993, column: 3, scope: !2594)
!2613 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !473, file: !473, line: 997, type: !2403, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !473, line: 997, type: !68)
!2616 = !DILocalVariable(name: "s", arg: 2, scope: !2613, file: !473, line: 997, type: !496)
!2617 = !DILocalVariable(name: "arg", arg: 3, scope: !2613, file: !473, line: 997, type: !94)
!2618 = !DILocalVariable(name: "options", scope: !2613, file: !473, line: 999, type: !523)
!2619 = distinct !DIAssignID()
!2620 = !DILocation(line: 0, scope: !2613)
!2621 = !DILocation(line: 185, column: 26, scope: !2418, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1000, column: 13, scope: !2613)
!2623 = !DILocation(line: 999, column: 3, scope: !2613)
!2624 = !DILocation(line: 0, scope: !2418, inlinedAt: !2622)
!2625 = !DILocation(line: 186, column: 13, scope: !2428, inlinedAt: !2622)
!2626 = !DILocation(line: 186, column: 7, scope: !2418, inlinedAt: !2622)
!2627 = !DILocation(line: 187, column: 5, scope: !2428, inlinedAt: !2622)
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"quoting_options_from_style: argument 0"}
!2630 = distinct !{!2630, !"quoting_options_from_style"}
!2631 = !DILocation(line: 1000, column: 13, scope: !2613)
!2632 = distinct !DIAssignID()
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 0, scope: !1522, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1001, column: 3, scope: !2613)
!2636 = !DILocation(line: 147, column: 57, scope: !1522, inlinedAt: !2635)
!2637 = !DILocation(line: 149, column: 21, scope: !1522, inlinedAt: !2635)
!2638 = !DILocation(line: 150, column: 6, scope: !1522, inlinedAt: !2635)
!2639 = distinct !DIAssignID()
!2640 = !DILocation(line: 1002, column: 10, scope: !2613)
!2641 = !DILocation(line: 1003, column: 1, scope: !2613)
!2642 = !DILocation(line: 1002, column: 3, scope: !2613)
!2643 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !473, file: !473, line: 1006, type: !2644, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!89, !68, !94, !94, !94}
!2646 = !{!2647, !2648, !2649, !2650}
!2647 = !DILocalVariable(name: "n", arg: 1, scope: !2643, file: !473, line: 1006, type: !68)
!2648 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2643, file: !473, line: 1006, type: !94)
!2649 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2643, file: !473, line: 1007, type: !94)
!2650 = !DILocalVariable(name: "arg", arg: 4, scope: !2643, file: !473, line: 1007, type: !94)
!2651 = distinct !DIAssignID()
!2652 = !DILocation(line: 0, scope: !2643)
!2653 = !DILocalVariable(name: "o", scope: !2654, file: !473, line: 1018, type: !523)
!2654 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !473, file: !473, line: 1014, type: !2655, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!89, !68, !94, !94, !94, !91}
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2653}
!2658 = !DILocalVariable(name: "n", arg: 1, scope: !2654, file: !473, line: 1014, type: !68)
!2659 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2654, file: !473, line: 1014, type: !94)
!2660 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2654, file: !473, line: 1015, type: !94)
!2661 = !DILocalVariable(name: "arg", arg: 4, scope: !2654, file: !473, line: 1016, type: !94)
!2662 = !DILocalVariable(name: "argsize", arg: 5, scope: !2654, file: !473, line: 1016, type: !91)
!2663 = !DILocation(line: 0, scope: !2654, inlinedAt: !2664)
!2664 = distinct !DILocation(line: 1009, column: 10, scope: !2643)
!2665 = !DILocation(line: 1018, column: 3, scope: !2654, inlinedAt: !2664)
!2666 = !DILocation(line: 1018, column: 30, scope: !2654, inlinedAt: !2664)
!2667 = distinct !DIAssignID()
!2668 = distinct !DIAssignID()
!2669 = !DILocation(line: 0, scope: !1562, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1019, column: 3, scope: !2654, inlinedAt: !2664)
!2671 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2670)
!2672 = distinct !DIAssignID()
!2673 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2670)
!2674 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2670)
!2675 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2670)
!2676 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2670)
!2677 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2670)
!2678 = distinct !DIAssignID()
!2679 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2670)
!2680 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2670)
!2681 = distinct !DIAssignID()
!2682 = !DILocation(line: 1020, column: 10, scope: !2654, inlinedAt: !2664)
!2683 = !DILocation(line: 1021, column: 1, scope: !2654, inlinedAt: !2664)
!2684 = !DILocation(line: 1009, column: 3, scope: !2643)
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 0, scope: !2654)
!2687 = !DILocation(line: 1018, column: 3, scope: !2654)
!2688 = !DILocation(line: 1018, column: 30, scope: !2654)
!2689 = distinct !DIAssignID()
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 0, scope: !1562, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1019, column: 3, scope: !2654)
!2693 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2692)
!2694 = distinct !DIAssignID()
!2695 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2692)
!2696 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2692)
!2697 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2692)
!2698 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2692)
!2699 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2692)
!2700 = distinct !DIAssignID()
!2701 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2692)
!2702 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2692)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 1020, column: 10, scope: !2654)
!2705 = !DILocation(line: 1021, column: 1, scope: !2654)
!2706 = !DILocation(line: 1020, column: 3, scope: !2654)
!2707 = distinct !DISubprogram(name: "quotearg_custom", scope: !473, file: !473, line: 1024, type: !2708, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!89, !94, !94, !94}
!2710 = !{!2711, !2712, !2713}
!2711 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2707, file: !473, line: 1024, type: !94)
!2712 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2707, file: !473, line: 1024, type: !94)
!2713 = !DILocalVariable(name: "arg", arg: 3, scope: !2707, file: !473, line: 1025, type: !94)
!2714 = distinct !DIAssignID()
!2715 = !DILocation(line: 0, scope: !2707)
!2716 = !DILocation(line: 0, scope: !2643, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1027, column: 10, scope: !2707)
!2718 = !DILocation(line: 0, scope: !2654, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1009, column: 10, scope: !2643, inlinedAt: !2717)
!2720 = !DILocation(line: 1018, column: 3, scope: !2654, inlinedAt: !2719)
!2721 = !DILocation(line: 1018, column: 30, scope: !2654, inlinedAt: !2719)
!2722 = distinct !DIAssignID()
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 0, scope: !1562, inlinedAt: !2725)
!2725 = distinct !DILocation(line: 1019, column: 3, scope: !2654, inlinedAt: !2719)
!2726 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2725)
!2727 = distinct !DIAssignID()
!2728 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2725)
!2729 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2725)
!2730 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2725)
!2731 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2725)
!2732 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2725)
!2733 = distinct !DIAssignID()
!2734 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2725)
!2735 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2725)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 1020, column: 10, scope: !2654, inlinedAt: !2719)
!2738 = !DILocation(line: 1021, column: 1, scope: !2654, inlinedAt: !2719)
!2739 = !DILocation(line: 1027, column: 3, scope: !2707)
!2740 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !473, file: !473, line: 1031, type: !2741, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!89, !94, !94, !94, !91}
!2743 = !{!2744, !2745, !2746, !2747}
!2744 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2740, file: !473, line: 1031, type: !94)
!2745 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2740, file: !473, line: 1031, type: !94)
!2746 = !DILocalVariable(name: "arg", arg: 3, scope: !2740, file: !473, line: 1032, type: !94)
!2747 = !DILocalVariable(name: "argsize", arg: 4, scope: !2740, file: !473, line: 1032, type: !91)
!2748 = distinct !DIAssignID()
!2749 = !DILocation(line: 0, scope: !2740)
!2750 = !DILocation(line: 0, scope: !2654, inlinedAt: !2751)
!2751 = distinct !DILocation(line: 1034, column: 10, scope: !2740)
!2752 = !DILocation(line: 1018, column: 3, scope: !2654, inlinedAt: !2751)
!2753 = !DILocation(line: 1018, column: 30, scope: !2654, inlinedAt: !2751)
!2754 = distinct !DIAssignID()
!2755 = distinct !DIAssignID()
!2756 = !DILocation(line: 0, scope: !1562, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1019, column: 3, scope: !2654, inlinedAt: !2751)
!2758 = !DILocation(line: 174, column: 12, scope: !1562, inlinedAt: !2757)
!2759 = distinct !DIAssignID()
!2760 = !DILocation(line: 175, column: 8, scope: !1575, inlinedAt: !2757)
!2761 = !DILocation(line: 175, column: 19, scope: !1575, inlinedAt: !2757)
!2762 = !DILocation(line: 176, column: 5, scope: !1575, inlinedAt: !2757)
!2763 = !DILocation(line: 177, column: 6, scope: !1562, inlinedAt: !2757)
!2764 = !DILocation(line: 177, column: 17, scope: !1562, inlinedAt: !2757)
!2765 = distinct !DIAssignID()
!2766 = !DILocation(line: 178, column: 6, scope: !1562, inlinedAt: !2757)
!2767 = !DILocation(line: 178, column: 18, scope: !1562, inlinedAt: !2757)
!2768 = distinct !DIAssignID()
!2769 = !DILocation(line: 1020, column: 10, scope: !2654, inlinedAt: !2751)
!2770 = !DILocation(line: 1021, column: 1, scope: !2654, inlinedAt: !2751)
!2771 = !DILocation(line: 1034, column: 3, scope: !2740)
!2772 = distinct !DISubprogram(name: "quote_n_mem", scope: !473, file: !473, line: 1049, type: !2773, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!94, !68, !94, !91}
!2775 = !{!2776, !2777, !2778}
!2776 = !DILocalVariable(name: "n", arg: 1, scope: !2772, file: !473, line: 1049, type: !68)
!2777 = !DILocalVariable(name: "arg", arg: 2, scope: !2772, file: !473, line: 1049, type: !94)
!2778 = !DILocalVariable(name: "argsize", arg: 3, scope: !2772, file: !473, line: 1049, type: !91)
!2779 = !DILocation(line: 0, scope: !2772)
!2780 = !DILocation(line: 1051, column: 10, scope: !2772)
!2781 = !DILocation(line: 1051, column: 3, scope: !2772)
!2782 = distinct !DISubprogram(name: "quote_mem", scope: !473, file: !473, line: 1055, type: !2783, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!94, !94, !91}
!2785 = !{!2786, !2787}
!2786 = !DILocalVariable(name: "arg", arg: 1, scope: !2782, file: !473, line: 1055, type: !94)
!2787 = !DILocalVariable(name: "argsize", arg: 2, scope: !2782, file: !473, line: 1055, type: !91)
!2788 = !DILocation(line: 0, scope: !2782)
!2789 = !DILocation(line: 0, scope: !2772, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1057, column: 10, scope: !2782)
!2791 = !DILocation(line: 1051, column: 10, scope: !2772, inlinedAt: !2790)
!2792 = !DILocation(line: 1057, column: 3, scope: !2782)
!2793 = distinct !DISubprogram(name: "quote_n", scope: !473, file: !473, line: 1061, type: !2794, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2796)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!94, !68, !94}
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "n", arg: 1, scope: !2793, file: !473, line: 1061, type: !68)
!2798 = !DILocalVariable(name: "arg", arg: 2, scope: !2793, file: !473, line: 1061, type: !94)
!2799 = !DILocation(line: 0, scope: !2793)
!2800 = !DILocation(line: 0, scope: !2772, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1063, column: 10, scope: !2793)
!2802 = !DILocation(line: 1051, column: 10, scope: !2772, inlinedAt: !2801)
!2803 = !DILocation(line: 1063, column: 3, scope: !2793)
!2804 = distinct !DISubprogram(name: "quote", scope: !473, file: !473, line: 1067, type: !2805, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!94, !94}
!2807 = !{!2808}
!2808 = !DILocalVariable(name: "arg", arg: 1, scope: !2804, file: !473, line: 1067, type: !94)
!2809 = !DILocation(line: 0, scope: !2804)
!2810 = !DILocation(line: 0, scope: !2793, inlinedAt: !2811)
!2811 = distinct !DILocation(line: 1069, column: 10, scope: !2804)
!2812 = !DILocation(line: 0, scope: !2772, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 1063, column: 10, scope: !2793, inlinedAt: !2811)
!2814 = !DILocation(line: 1051, column: 10, scope: !2772, inlinedAt: !2813)
!2815 = !DILocation(line: 1069, column: 3, scope: !2804)
!2816 = distinct !DISubprogram(name: "version_etc_arn", scope: !586, file: !586, line: 61, type: !2817, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2854)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !2819, !94, !94, !94, !2853, !91}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2821)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2822)
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2821, file: !146, line: 51, baseType: !68, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2821, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2821, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2821, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2821, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2821, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2821, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2821, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2821, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2821, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2821, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2821, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2821, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2821, file: !146, line: 70, baseType: !2837, size: 64, offset: 832)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2821, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2821, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2821, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2821, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2821, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2821, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2821, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2821, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2821, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2821, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2821, file: !146, line: 93, baseType: !2837, size: 64, offset: 1344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2821, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2821, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2821, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2821, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!2854 = !{!2855, !2856, !2857, !2858, !2859, !2860}
!2855 = !DILocalVariable(name: "stream", arg: 1, scope: !2816, file: !586, line: 61, type: !2819)
!2856 = !DILocalVariable(name: "command_name", arg: 2, scope: !2816, file: !586, line: 62, type: !94)
!2857 = !DILocalVariable(name: "package", arg: 3, scope: !2816, file: !586, line: 62, type: !94)
!2858 = !DILocalVariable(name: "version", arg: 4, scope: !2816, file: !586, line: 63, type: !94)
!2859 = !DILocalVariable(name: "authors", arg: 5, scope: !2816, file: !586, line: 64, type: !2853)
!2860 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2816, file: !586, line: 64, type: !91)
!2861 = !DILocation(line: 0, scope: !2816)
!2862 = !DILocation(line: 66, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2816, file: !586, line: 66, column: 7)
!2864 = !DILocation(line: 66, column: 7, scope: !2816)
!2865 = !DILocation(line: 67, column: 5, scope: !2863)
!2866 = !DILocation(line: 69, column: 5, scope: !2863)
!2867 = !DILocation(line: 83, column: 3, scope: !2816)
!2868 = !DILocation(line: 85, column: 3, scope: !2816)
!2869 = !DILocation(line: 88, column: 3, scope: !2816)
!2870 = !DILocation(line: 95, column: 3, scope: !2816)
!2871 = !DILocation(line: 97, column: 3, scope: !2816)
!2872 = !DILocation(line: 105, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2816, file: !586, line: 98, column: 5)
!2874 = !DILocation(line: 106, column: 7, scope: !2873)
!2875 = !DILocation(line: 109, column: 7, scope: !2873)
!2876 = !DILocation(line: 110, column: 7, scope: !2873)
!2877 = !DILocation(line: 113, column: 7, scope: !2873)
!2878 = !DILocation(line: 115, column: 7, scope: !2873)
!2879 = !DILocation(line: 120, column: 7, scope: !2873)
!2880 = !DILocation(line: 122, column: 7, scope: !2873)
!2881 = !DILocation(line: 127, column: 7, scope: !2873)
!2882 = !DILocation(line: 129, column: 7, scope: !2873)
!2883 = !DILocation(line: 134, column: 7, scope: !2873)
!2884 = !DILocation(line: 137, column: 7, scope: !2873)
!2885 = !DILocation(line: 142, column: 7, scope: !2873)
!2886 = !DILocation(line: 145, column: 7, scope: !2873)
!2887 = !DILocation(line: 150, column: 7, scope: !2873)
!2888 = !DILocation(line: 154, column: 7, scope: !2873)
!2889 = !DILocation(line: 159, column: 7, scope: !2873)
!2890 = !DILocation(line: 163, column: 7, scope: !2873)
!2891 = !DILocation(line: 170, column: 7, scope: !2873)
!2892 = !DILocation(line: 174, column: 7, scope: !2873)
!2893 = !DILocation(line: 176, column: 1, scope: !2816)
!2894 = distinct !DISubprogram(name: "version_etc_ar", scope: !586, file: !586, line: 183, type: !2895, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{null, !2819, !94, !94, !94, !2853}
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903}
!2898 = !DILocalVariable(name: "stream", arg: 1, scope: !2894, file: !586, line: 183, type: !2819)
!2899 = !DILocalVariable(name: "command_name", arg: 2, scope: !2894, file: !586, line: 184, type: !94)
!2900 = !DILocalVariable(name: "package", arg: 3, scope: !2894, file: !586, line: 184, type: !94)
!2901 = !DILocalVariable(name: "version", arg: 4, scope: !2894, file: !586, line: 185, type: !94)
!2902 = !DILocalVariable(name: "authors", arg: 5, scope: !2894, file: !586, line: 185, type: !2853)
!2903 = !DILocalVariable(name: "n_authors", scope: !2894, file: !586, line: 187, type: !91)
!2904 = !DILocation(line: 0, scope: !2894)
!2905 = !DILocation(line: 189, column: 8, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2894, file: !586, line: 189, column: 3)
!2907 = !DILocation(line: 189, scope: !2906)
!2908 = !DILocation(line: 189, column: 23, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2906, file: !586, line: 189, column: 3)
!2910 = !DILocation(line: 189, column: 3, scope: !2906)
!2911 = !DILocation(line: 189, column: 52, scope: !2909)
!2912 = distinct !{!2912, !2910, !2913, !901}
!2913 = !DILocation(line: 190, column: 5, scope: !2906)
!2914 = !DILocation(line: 191, column: 3, scope: !2894)
!2915 = !DILocation(line: 192, column: 1, scope: !2894)
!2916 = distinct !DISubprogram(name: "version_etc_va", scope: !586, file: !586, line: 199, type: !2917, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2929)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !2819, !94, !94, !94, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !388, line: 52, baseType: !2920)
!2920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !390, line: 12, baseType: !2921)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !586, baseType: !2922)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2928}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2922, file: !586, line: 192, baseType: !90, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2922, file: !586, line: 192, baseType: !90, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2922, file: !586, line: 192, baseType: !90, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2922, file: !586, line: 192, baseType: !68, size: 32, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2922, file: !586, line: 192, baseType: !68, size: 32, offset: 224)
!2929 = !{!2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2930 = !DILocalVariable(name: "stream", arg: 1, scope: !2916, file: !586, line: 199, type: !2819)
!2931 = !DILocalVariable(name: "command_name", arg: 2, scope: !2916, file: !586, line: 200, type: !94)
!2932 = !DILocalVariable(name: "package", arg: 3, scope: !2916, file: !586, line: 200, type: !94)
!2933 = !DILocalVariable(name: "version", arg: 4, scope: !2916, file: !586, line: 201, type: !94)
!2934 = !DILocalVariable(name: "authors", arg: 5, scope: !2916, file: !586, line: 201, type: !2919)
!2935 = !DILocalVariable(name: "n_authors", scope: !2916, file: !586, line: 203, type: !91)
!2936 = !DILocalVariable(name: "authtab", scope: !2916, file: !586, line: 204, type: !2937)
!2937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !50)
!2938 = distinct !DIAssignID()
!2939 = !DILocation(line: 0, scope: !2916)
!2940 = !DILocation(line: 204, column: 3, scope: !2916)
!2941 = !DILocation(line: 208, column: 35, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !586, line: 206, column: 3)
!2943 = distinct !DILexicalBlock(scope: !2916, file: !586, line: 206, column: 3)
!2944 = !DILocation(line: 208, column: 33, scope: !2942)
!2945 = !DILocation(line: 208, column: 67, scope: !2942)
!2946 = !DILocation(line: 206, column: 3, scope: !2943)
!2947 = !DILocation(line: 208, column: 14, scope: !2942)
!2948 = !DILocation(line: 0, scope: !2943)
!2949 = !DILocation(line: 211, column: 3, scope: !2916)
!2950 = !DILocation(line: 213, column: 1, scope: !2916)
!2951 = distinct !DISubprogram(name: "version_etc", scope: !586, file: !586, line: 230, type: !2952, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2819, !94, !94, !94, null}
!2954 = !{!2955, !2956, !2957, !2958, !2959}
!2955 = !DILocalVariable(name: "stream", arg: 1, scope: !2951, file: !586, line: 230, type: !2819)
!2956 = !DILocalVariable(name: "command_name", arg: 2, scope: !2951, file: !586, line: 231, type: !94)
!2957 = !DILocalVariable(name: "package", arg: 3, scope: !2951, file: !586, line: 231, type: !94)
!2958 = !DILocalVariable(name: "version", arg: 4, scope: !2951, file: !586, line: 232, type: !94)
!2959 = !DILocalVariable(name: "authors", scope: !2951, file: !586, line: 234, type: !2919)
!2960 = distinct !DIAssignID()
!2961 = !DILocation(line: 0, scope: !2951)
!2962 = !DILocation(line: 234, column: 3, scope: !2951)
!2963 = !DILocation(line: 235, column: 3, scope: !2951)
!2964 = !DILocation(line: 236, column: 3, scope: !2951)
!2965 = !DILocation(line: 237, column: 3, scope: !2951)
!2966 = !DILocation(line: 238, column: 1, scope: !2951)
!2967 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !586, file: !586, line: 241, type: !428, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711)
!2968 = !DILocation(line: 243, column: 3, scope: !2967)
!2969 = !DILocation(line: 248, column: 3, scope: !2967)
!2970 = !DILocation(line: 254, column: 3, scope: !2967)
!2971 = !DILocation(line: 259, column: 3, scope: !2967)
!2972 = !DILocation(line: 261, column: 1, scope: !2967)
!2973 = distinct !DISubprogram(name: "xnrealloc", scope: !2974, file: !2974, line: 147, type: !2975, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2977)
!2974 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!90, !90, !91, !91}
!2977 = !{!2978, !2979, !2980}
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !2974, line: 147, type: !90)
!2979 = !DILocalVariable(name: "n", arg: 2, scope: !2973, file: !2974, line: 147, type: !91)
!2980 = !DILocalVariable(name: "s", arg: 3, scope: !2973, file: !2974, line: 147, type: !91)
!2981 = !DILocation(line: 0, scope: !2973)
!2982 = !DILocalVariable(name: "p", arg: 1, scope: !2983, file: !719, line: 83, type: !90)
!2983 = distinct !DISubprogram(name: "xreallocarray", scope: !719, file: !719, line: 83, type: !2975, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2984)
!2984 = !{!2982, !2985, !2986}
!2985 = !DILocalVariable(name: "n", arg: 2, scope: !2983, file: !719, line: 83, type: !91)
!2986 = !DILocalVariable(name: "s", arg: 3, scope: !2983, file: !719, line: 83, type: !91)
!2987 = !DILocation(line: 0, scope: !2983, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 149, column: 10, scope: !2973)
!2989 = !DILocation(line: 85, column: 25, scope: !2983, inlinedAt: !2988)
!2990 = !DILocalVariable(name: "p", arg: 1, scope: !2991, file: !719, line: 37, type: !90)
!2991 = distinct !DISubprogram(name: "check_nonnull", scope: !719, file: !719, line: 37, type: !2992, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!90, !90}
!2994 = !{!2990}
!2995 = !DILocation(line: 0, scope: !2991, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 85, column: 10, scope: !2983, inlinedAt: !2988)
!2997 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !2996)
!2998 = distinct !DILexicalBlock(scope: !2991, file: !719, line: 39, column: 7)
!2999 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !2996)
!3000 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !2996)
!3001 = !DILocation(line: 149, column: 3, scope: !2973)
!3002 = !DILocation(line: 0, scope: !2983)
!3003 = !DILocation(line: 85, column: 25, scope: !2983)
!3004 = !DILocation(line: 0, scope: !2991, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 85, column: 10, scope: !2983)
!3006 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3005)
!3007 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3005)
!3008 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3005)
!3009 = !DILocation(line: 85, column: 3, scope: !2983)
!3010 = distinct !DISubprogram(name: "xmalloc", scope: !719, file: !719, line: 47, type: !1196, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3011)
!3011 = !{!3012}
!3012 = !DILocalVariable(name: "s", arg: 1, scope: !3010, file: !719, line: 47, type: !91)
!3013 = !DILocation(line: 0, scope: !3010)
!3014 = !DILocation(line: 49, column: 25, scope: !3010)
!3015 = !DILocation(line: 0, scope: !2991, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 49, column: 10, scope: !3010)
!3017 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3016)
!3018 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3016)
!3019 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3016)
!3020 = !DILocation(line: 49, column: 3, scope: !3010)
!3021 = distinct !DISubprogram(name: "ximalloc", scope: !719, file: !719, line: 53, type: !3022, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!90, !738}
!3024 = !{!3025}
!3025 = !DILocalVariable(name: "s", arg: 1, scope: !3021, file: !719, line: 53, type: !738)
!3026 = !DILocation(line: 0, scope: !3021)
!3027 = !DILocalVariable(name: "s", arg: 1, scope: !3028, file: !3029, line: 55, type: !738)
!3028 = distinct !DISubprogram(name: "imalloc", scope: !3029, file: !3029, line: 55, type: !3022, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3030)
!3029 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3030 = !{!3027}
!3031 = !DILocation(line: 0, scope: !3028, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 55, column: 25, scope: !3021)
!3033 = !DILocation(line: 57, column: 26, scope: !3028, inlinedAt: !3032)
!3034 = !DILocation(line: 0, scope: !2991, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 55, column: 10, scope: !3021)
!3036 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3035)
!3039 = !DILocation(line: 55, column: 3, scope: !3021)
!3040 = distinct !DISubprogram(name: "xcharalloc", scope: !719, file: !719, line: 59, type: !3041, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!89, !91}
!3043 = !{!3044}
!3044 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !719, line: 59, type: !91)
!3045 = !DILocation(line: 0, scope: !3040)
!3046 = !DILocation(line: 0, scope: !3010, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 61, column: 10, scope: !3040)
!3048 = !DILocation(line: 49, column: 25, scope: !3010, inlinedAt: !3047)
!3049 = !DILocation(line: 0, scope: !2991, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 49, column: 10, scope: !3010, inlinedAt: !3047)
!3051 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3050)
!3052 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3050)
!3053 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3050)
!3054 = !DILocation(line: 61, column: 3, scope: !3040)
!3055 = distinct !DISubprogram(name: "xrealloc", scope: !719, file: !719, line: 68, type: !3056, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!90, !90, !91}
!3058 = !{!3059, !3060}
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3055, file: !719, line: 68, type: !90)
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3055, file: !719, line: 68, type: !91)
!3061 = !DILocation(line: 0, scope: !3055)
!3062 = !DILocalVariable(name: "ptr", arg: 1, scope: !3063, file: !3064, line: 2057, type: !90)
!3063 = distinct !DISubprogram(name: "rpl_realloc", scope: !3064, file: !3064, line: 2057, type: !3056, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3065)
!3064 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3065 = !{!3062, !3066}
!3066 = !DILocalVariable(name: "size", arg: 2, scope: !3063, file: !3064, line: 2057, type: !91)
!3067 = !DILocation(line: 0, scope: !3063, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 70, column: 25, scope: !3055)
!3069 = !DILocation(line: 2059, column: 24, scope: !3063, inlinedAt: !3068)
!3070 = !DILocation(line: 2059, column: 10, scope: !3063, inlinedAt: !3068)
!3071 = !DILocation(line: 0, scope: !2991, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 70, column: 10, scope: !3055)
!3073 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3072)
!3076 = !DILocation(line: 70, column: 3, scope: !3055)
!3077 = !DISubprogram(name: "realloc", scope: !975, file: !975, line: 551, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3078 = distinct !DISubprogram(name: "xirealloc", scope: !719, file: !719, line: 74, type: !3079, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3081)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!90, !90, !738}
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "p", arg: 1, scope: !3078, file: !719, line: 74, type: !90)
!3083 = !DILocalVariable(name: "s", arg: 2, scope: !3078, file: !719, line: 74, type: !738)
!3084 = !DILocation(line: 0, scope: !3078)
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !3029, line: 66, type: !90)
!3086 = distinct !DISubprogram(name: "irealloc", scope: !3029, file: !3029, line: 66, type: !3079, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3087)
!3087 = !{!3085, !3088}
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3086, file: !3029, line: 66, type: !738)
!3089 = !DILocation(line: 0, scope: !3086, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 76, column: 25, scope: !3078)
!3091 = !DILocation(line: 0, scope: !3063, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 68, column: 26, scope: !3086, inlinedAt: !3090)
!3093 = !DILocation(line: 2059, column: 24, scope: !3063, inlinedAt: !3092)
!3094 = !DILocation(line: 2059, column: 10, scope: !3063, inlinedAt: !3092)
!3095 = !DILocation(line: 0, scope: !2991, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 76, column: 10, scope: !3078)
!3097 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3096)
!3098 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3096)
!3099 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3096)
!3100 = !DILocation(line: 76, column: 3, scope: !3078)
!3101 = distinct !DISubprogram(name: "xireallocarray", scope: !719, file: !719, line: 89, type: !3102, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!90, !90, !738, !738}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "p", arg: 1, scope: !3101, file: !719, line: 89, type: !90)
!3106 = !DILocalVariable(name: "n", arg: 2, scope: !3101, file: !719, line: 89, type: !738)
!3107 = !DILocalVariable(name: "s", arg: 3, scope: !3101, file: !719, line: 89, type: !738)
!3108 = !DILocation(line: 0, scope: !3101)
!3109 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !3029, line: 98, type: !90)
!3110 = distinct !DISubprogram(name: "ireallocarray", scope: !3029, file: !3029, line: 98, type: !3102, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3111)
!3111 = !{!3109, !3112, !3113}
!3112 = !DILocalVariable(name: "n", arg: 2, scope: !3110, file: !3029, line: 98, type: !738)
!3113 = !DILocalVariable(name: "s", arg: 3, scope: !3110, file: !3029, line: 98, type: !738)
!3114 = !DILocation(line: 0, scope: !3110, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 91, column: 25, scope: !3101)
!3116 = !DILocation(line: 101, column: 13, scope: !3110, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !2991, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 91, column: 10, scope: !3101)
!3119 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3118)
!3122 = !DILocation(line: 91, column: 3, scope: !3101)
!3123 = distinct !DISubprogram(name: "xnmalloc", scope: !719, file: !719, line: 98, type: !3124, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!90, !91, !91}
!3126 = !{!3127, !3128}
!3127 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !719, line: 98, type: !91)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3123, file: !719, line: 98, type: !91)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocation(line: 0, scope: !2983, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 100, column: 10, scope: !3123)
!3132 = !DILocation(line: 85, column: 25, scope: !2983, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !2991, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 85, column: 10, scope: !2983, inlinedAt: !3131)
!3135 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3134)
!3138 = !DILocation(line: 100, column: 3, scope: !3123)
!3139 = distinct !DISubprogram(name: "xinmalloc", scope: !719, file: !719, line: 104, type: !3140, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!90, !738, !738}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "n", arg: 1, scope: !3139, file: !719, line: 104, type: !738)
!3144 = !DILocalVariable(name: "s", arg: 2, scope: !3139, file: !719, line: 104, type: !738)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocation(line: 0, scope: !3101, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 106, column: 10, scope: !3139)
!3148 = !DILocation(line: 0, scope: !3110, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 91, column: 25, scope: !3101, inlinedAt: !3147)
!3150 = !DILocation(line: 101, column: 13, scope: !3110, inlinedAt: !3149)
!3151 = !DILocation(line: 0, scope: !2991, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 91, column: 10, scope: !3101, inlinedAt: !3147)
!3153 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3152)
!3154 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3152)
!3155 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3152)
!3156 = !DILocation(line: 106, column: 3, scope: !3139)
!3157 = distinct !DISubprogram(name: "x2realloc", scope: !719, file: !719, line: 116, type: !3158, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3160)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!90, !90, !725}
!3160 = !{!3161, !3162}
!3161 = !DILocalVariable(name: "p", arg: 1, scope: !3157, file: !719, line: 116, type: !90)
!3162 = !DILocalVariable(name: "ps", arg: 2, scope: !3157, file: !719, line: 116, type: !725)
!3163 = !DILocation(line: 0, scope: !3157)
!3164 = !DILocation(line: 0, scope: !722, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 118, column: 10, scope: !3157)
!3166 = !DILocation(line: 178, column: 14, scope: !722, inlinedAt: !3165)
!3167 = !DILocation(line: 180, column: 9, scope: !3168, inlinedAt: !3165)
!3168 = distinct !DILexicalBlock(scope: !722, file: !719, line: 180, column: 7)
!3169 = !DILocation(line: 180, column: 7, scope: !722, inlinedAt: !3165)
!3170 = !DILocation(line: 182, column: 13, scope: !3171, inlinedAt: !3165)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !719, line: 182, column: 11)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !719, line: 181, column: 5)
!3173 = !DILocation(line: 182, column: 11, scope: !3172, inlinedAt: !3165)
!3174 = !DILocation(line: 197, column: 11, scope: !3175, inlinedAt: !3165)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !719, line: 197, column: 11)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !719, line: 195, column: 5)
!3177 = !DILocation(line: 197, column: 11, scope: !3176, inlinedAt: !3165)
!3178 = !DILocation(line: 198, column: 9, scope: !3175, inlinedAt: !3165)
!3179 = !DILocation(line: 0, scope: !2983, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 201, column: 7, scope: !722, inlinedAt: !3165)
!3181 = !DILocation(line: 85, column: 25, scope: !2983, inlinedAt: !3180)
!3182 = !DILocation(line: 0, scope: !2991, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 85, column: 10, scope: !2983, inlinedAt: !3180)
!3184 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3183)
!3185 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3183)
!3186 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3183)
!3187 = !DILocation(line: 202, column: 7, scope: !722, inlinedAt: !3165)
!3188 = !DILocation(line: 118, column: 3, scope: !3157)
!3189 = !DILocation(line: 0, scope: !722)
!3190 = !DILocation(line: 178, column: 14, scope: !722)
!3191 = !DILocation(line: 180, column: 9, scope: !3168)
!3192 = !DILocation(line: 180, column: 7, scope: !722)
!3193 = !DILocation(line: 182, column: 13, scope: !3171)
!3194 = !DILocation(line: 182, column: 11, scope: !3172)
!3195 = !DILocation(line: 190, column: 30, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3171, file: !719, line: 183, column: 9)
!3197 = !DILocation(line: 191, column: 16, scope: !3196)
!3198 = !DILocation(line: 191, column: 13, scope: !3196)
!3199 = !DILocation(line: 192, column: 9, scope: !3196)
!3200 = !DILocation(line: 197, column: 11, scope: !3175)
!3201 = !DILocation(line: 197, column: 11, scope: !3176)
!3202 = !DILocation(line: 198, column: 9, scope: !3175)
!3203 = !DILocation(line: 0, scope: !2983, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 201, column: 7, scope: !722)
!3205 = !DILocation(line: 85, column: 25, scope: !2983, inlinedAt: !3204)
!3206 = !DILocation(line: 0, scope: !2991, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 85, column: 10, scope: !2983, inlinedAt: !3204)
!3208 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3207)
!3209 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3207)
!3210 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3207)
!3211 = !DILocation(line: 202, column: 7, scope: !722)
!3212 = !DILocation(line: 203, column: 3, scope: !722)
!3213 = !DILocation(line: 0, scope: !734)
!3214 = !DILocation(line: 230, column: 14, scope: !734)
!3215 = !DILocation(line: 238, column: 7, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !734, file: !719, line: 238, column: 7)
!3217 = !DILocation(line: 238, column: 7, scope: !734)
!3218 = !DILocation(line: 240, column: 9, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !734, file: !719, line: 240, column: 7)
!3220 = !DILocation(line: 240, column: 18, scope: !3219)
!3221 = !DILocation(line: 253, column: 8, scope: !734)
!3222 = !DILocation(line: 256, column: 7, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !734, file: !719, line: 256, column: 7)
!3224 = !DILocation(line: 256, column: 7, scope: !734)
!3225 = !DILocation(line: 258, column: 27, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3223, file: !719, line: 257, column: 5)
!3227 = !DILocation(line: 259, column: 32, scope: !3226)
!3228 = !DILocation(line: 260, column: 5, scope: !3226)
!3229 = !DILocation(line: 262, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !734, file: !719, line: 262, column: 7)
!3231 = !DILocation(line: 262, column: 7, scope: !734)
!3232 = !DILocation(line: 263, column: 9, scope: !3230)
!3233 = !DILocation(line: 263, column: 5, scope: !3230)
!3234 = !DILocation(line: 264, column: 9, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !734, file: !719, line: 264, column: 7)
!3236 = !DILocation(line: 264, column: 14, scope: !3235)
!3237 = !DILocation(line: 265, column: 7, scope: !3235)
!3238 = !DILocation(line: 265, column: 11, scope: !3235)
!3239 = !DILocation(line: 266, column: 11, scope: !3235)
!3240 = !DILocation(line: 267, column: 14, scope: !3235)
!3241 = !DILocation(line: 264, column: 7, scope: !734)
!3242 = !DILocation(line: 268, column: 5, scope: !3235)
!3243 = !DILocation(line: 0, scope: !3055, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 269, column: 8, scope: !734)
!3245 = !DILocation(line: 0, scope: !3063, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 70, column: 25, scope: !3055, inlinedAt: !3244)
!3247 = !DILocation(line: 2059, column: 24, scope: !3063, inlinedAt: !3246)
!3248 = !DILocation(line: 2059, column: 10, scope: !3063, inlinedAt: !3246)
!3249 = !DILocation(line: 0, scope: !2991, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 70, column: 10, scope: !3055, inlinedAt: !3244)
!3251 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3250)
!3254 = !DILocation(line: 270, column: 7, scope: !734)
!3255 = !DILocation(line: 271, column: 3, scope: !734)
!3256 = distinct !DISubprogram(name: "xzalloc", scope: !719, file: !719, line: 279, type: !1196, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3257)
!3257 = !{!3258}
!3258 = !DILocalVariable(name: "s", arg: 1, scope: !3256, file: !719, line: 279, type: !91)
!3259 = !DILocation(line: 0, scope: !3256)
!3260 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !719, line: 294, type: !91)
!3261 = distinct !DISubprogram(name: "xcalloc", scope: !719, file: !719, line: 294, type: !3124, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3262)
!3262 = !{!3260, !3263}
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !719, line: 294, type: !91)
!3264 = !DILocation(line: 0, scope: !3261, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 281, column: 10, scope: !3256)
!3266 = !DILocation(line: 296, column: 25, scope: !3261, inlinedAt: !3265)
!3267 = !DILocation(line: 0, scope: !2991, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 296, column: 10, scope: !3261, inlinedAt: !3265)
!3269 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3268)
!3270 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3268)
!3271 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3268)
!3272 = !DILocation(line: 281, column: 3, scope: !3256)
!3273 = !DISubprogram(name: "calloc", scope: !975, file: !975, line: 543, type: !3124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3274 = !DILocation(line: 0, scope: !3261)
!3275 = !DILocation(line: 296, column: 25, scope: !3261)
!3276 = !DILocation(line: 0, scope: !2991, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 296, column: 10, scope: !3261)
!3278 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3277)
!3279 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3277)
!3280 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3277)
!3281 = !DILocation(line: 296, column: 3, scope: !3261)
!3282 = distinct !DISubprogram(name: "xizalloc", scope: !719, file: !719, line: 285, type: !3022, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "s", arg: 1, scope: !3282, file: !719, line: 285, type: !738)
!3285 = !DILocation(line: 0, scope: !3282)
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !719, line: 300, type: !738)
!3287 = distinct !DISubprogram(name: "xicalloc", scope: !719, file: !719, line: 300, type: !3140, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3288)
!3288 = !{!3286, !3289}
!3289 = !DILocalVariable(name: "s", arg: 2, scope: !3287, file: !719, line: 300, type: !738)
!3290 = !DILocation(line: 0, scope: !3287, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 287, column: 10, scope: !3282)
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !3029, line: 77, type: !738)
!3293 = distinct !DISubprogram(name: "icalloc", scope: !3029, file: !3029, line: 77, type: !3140, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3294)
!3294 = !{!3292, !3295}
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3293, file: !3029, line: 77, type: !738)
!3296 = !DILocation(line: 0, scope: !3293, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 302, column: 25, scope: !3287, inlinedAt: !3291)
!3298 = !DILocation(line: 91, column: 10, scope: !3293, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !2991, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 302, column: 10, scope: !3287, inlinedAt: !3291)
!3301 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3300)
!3302 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3300)
!3303 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3300)
!3304 = !DILocation(line: 287, column: 3, scope: !3282)
!3305 = !DILocation(line: 0, scope: !3287)
!3306 = !DILocation(line: 0, scope: !3293, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 302, column: 25, scope: !3287)
!3308 = !DILocation(line: 91, column: 10, scope: !3293, inlinedAt: !3307)
!3309 = !DILocation(line: 0, scope: !2991, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 302, column: 10, scope: !3287)
!3311 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3310)
!3312 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3310)
!3313 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3310)
!3314 = !DILocation(line: 302, column: 3, scope: !3287)
!3315 = distinct !DISubprogram(name: "xmemdup", scope: !719, file: !719, line: 310, type: !3316, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!90, !999, !91}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "p", arg: 1, scope: !3315, file: !719, line: 310, type: !999)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !719, line: 310, type: !91)
!3321 = !DILocation(line: 0, scope: !3315)
!3322 = !DILocation(line: 0, scope: !3010, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 312, column: 18, scope: !3315)
!3324 = !DILocation(line: 49, column: 25, scope: !3010, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !2991, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 49, column: 10, scope: !3010, inlinedAt: !3323)
!3327 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3326)
!3328 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3326)
!3329 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3326)
!3330 = !DILocalVariable(name: "__dest", arg: 1, scope: !3331, file: !1177, line: 26, type: !1180)
!3331 = distinct !DISubprogram(name: "memcpy", scope: !1177, file: !1177, line: 26, type: !1178, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3332)
!3332 = !{!3330, !3333, !3334}
!3333 = !DILocalVariable(name: "__src", arg: 2, scope: !3331, file: !1177, line: 26, type: !998)
!3334 = !DILocalVariable(name: "__len", arg: 3, scope: !3331, file: !1177, line: 26, type: !91)
!3335 = !DILocation(line: 0, scope: !3331, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 312, column: 10, scope: !3315)
!3337 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3336)
!3338 = !DILocation(line: 312, column: 3, scope: !3315)
!3339 = distinct !DISubprogram(name: "ximemdup", scope: !719, file: !719, line: 316, type: !3340, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!90, !999, !738}
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !719, line: 316, type: !999)
!3344 = !DILocalVariable(name: "s", arg: 2, scope: !3339, file: !719, line: 316, type: !738)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocation(line: 0, scope: !3021, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 318, column: 18, scope: !3339)
!3348 = !DILocation(line: 0, scope: !3028, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 55, column: 25, scope: !3021, inlinedAt: !3347)
!3350 = !DILocation(line: 57, column: 26, scope: !3028, inlinedAt: !3349)
!3351 = !DILocation(line: 0, scope: !2991, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 55, column: 10, scope: !3021, inlinedAt: !3347)
!3353 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3352)
!3354 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3352)
!3355 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3352)
!3356 = !DILocation(line: 0, scope: !3331, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 318, column: 10, scope: !3339)
!3358 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3357)
!3359 = !DILocation(line: 318, column: 3, scope: !3339)
!3360 = distinct !DISubprogram(name: "ximemdup0", scope: !719, file: !719, line: 325, type: !3361, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!89, !999, !738}
!3363 = !{!3364, !3365, !3366}
!3364 = !DILocalVariable(name: "p", arg: 1, scope: !3360, file: !719, line: 325, type: !999)
!3365 = !DILocalVariable(name: "s", arg: 2, scope: !3360, file: !719, line: 325, type: !738)
!3366 = !DILocalVariable(name: "result", scope: !3360, file: !719, line: 327, type: !89)
!3367 = !DILocation(line: 0, scope: !3360)
!3368 = !DILocation(line: 327, column: 30, scope: !3360)
!3369 = !DILocation(line: 0, scope: !3021, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 327, column: 18, scope: !3360)
!3371 = !DILocation(line: 0, scope: !3028, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 55, column: 25, scope: !3021, inlinedAt: !3370)
!3373 = !DILocation(line: 57, column: 26, scope: !3028, inlinedAt: !3372)
!3374 = !DILocation(line: 0, scope: !2991, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 55, column: 10, scope: !3021, inlinedAt: !3370)
!3376 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3375)
!3377 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3375)
!3378 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3375)
!3379 = !DILocation(line: 328, column: 3, scope: !3360)
!3380 = !DILocation(line: 328, column: 13, scope: !3360)
!3381 = !DILocation(line: 0, scope: !3331, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 329, column: 10, scope: !3360)
!3383 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3382)
!3384 = !DILocation(line: 329, column: 3, scope: !3360)
!3385 = distinct !DISubprogram(name: "xstrdup", scope: !719, file: !719, line: 335, type: !977, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3386)
!3386 = !{!3387}
!3387 = !DILocalVariable(name: "string", arg: 1, scope: !3385, file: !719, line: 335, type: !94)
!3388 = !DILocation(line: 0, scope: !3385)
!3389 = !DILocation(line: 337, column: 27, scope: !3385)
!3390 = !DILocation(line: 337, column: 43, scope: !3385)
!3391 = !DILocation(line: 0, scope: !3315, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 337, column: 10, scope: !3385)
!3393 = !DILocation(line: 0, scope: !3010, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 312, column: 18, scope: !3315, inlinedAt: !3392)
!3395 = !DILocation(line: 49, column: 25, scope: !3010, inlinedAt: !3394)
!3396 = !DILocation(line: 0, scope: !2991, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 49, column: 10, scope: !3010, inlinedAt: !3394)
!3398 = !DILocation(line: 39, column: 8, scope: !2998, inlinedAt: !3397)
!3399 = !DILocation(line: 39, column: 7, scope: !2991, inlinedAt: !3397)
!3400 = !DILocation(line: 40, column: 5, scope: !2998, inlinedAt: !3397)
!3401 = !DILocation(line: 0, scope: !3331, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 312, column: 10, scope: !3315, inlinedAt: !3392)
!3403 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3402)
!3404 = !DILocation(line: 337, column: 3, scope: !3385)
!3405 = distinct !DISubprogram(name: "xalloc_die", scope: !679, file: !679, line: 32, type: !428, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3406)
!3406 = !{!3407}
!3407 = !DILocalVariable(name: "__errstatus", scope: !3408, file: !679, line: 34, type: !3409)
!3408 = distinct !DILexicalBlock(scope: !3405, file: !679, line: 34, column: 3)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3410 = !DILocation(line: 34, column: 3, scope: !3408)
!3411 = !DILocation(line: 0, scope: !3408)
!3412 = !DILocation(line: 40, column: 3, scope: !3405)
!3413 = distinct !DISubprogram(name: "last_component", scope: !754, file: !754, line: 29, type: !977, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3414)
!3414 = !{!3415, !3416, !3417, !3418}
!3415 = !DILocalVariable(name: "name", arg: 1, scope: !3413, file: !754, line: 29, type: !94)
!3416 = !DILocalVariable(name: "base", scope: !3413, file: !754, line: 31, type: !94)
!3417 = !DILocalVariable(name: "last_was_slash", scope: !3413, file: !754, line: 35, type: !126)
!3418 = !DILocalVariable(name: "p", scope: !3419, file: !754, line: 36, type: !94)
!3419 = distinct !DILexicalBlock(scope: !3413, file: !754, line: 36, column: 3)
!3420 = !DILocation(line: 0, scope: !3413)
!3421 = !DILocation(line: 32, column: 3, scope: !3413)
!3422 = !DILocation(line: 32, column: 10, scope: !3413)
!3423 = !DILocation(line: 33, column: 9, scope: !3413)
!3424 = distinct !{!3424, !3421, !3423, !901}
!3425 = !DILocation(line: 36, column: 3, scope: !3419)
!3426 = !DILocation(line: 36, column: 30, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3419, file: !754, line: 36, column: 3)
!3428 = !DILocation(line: 31, column: 15, scope: !3413)
!3429 = !DILocation(line: 36, scope: !3419)
!3430 = !DILocation(line: 0, scope: !3419)
!3431 = !DILocation(line: 47, column: 3, scope: !3413)
!3432 = !DILocation(line: 40, column: 16, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !754, line: 38, column: 11)
!3434 = distinct !DILexicalBlock(scope: !3427, file: !754, line: 37, column: 5)
!3435 = !DILocation(line: 36, column: 35, scope: !3427)
!3436 = !DILocation(line: 36, column: 3, scope: !3427)
!3437 = distinct !{!3437, !3425, !3438, !901}
!3438 = !DILocation(line: 45, column: 5, scope: !3419)
!3439 = distinct !DISubprogram(name: "base_len", scope: !754, file: !754, line: 51, type: !1123, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DILocalVariable(name: "name", arg: 1, scope: !3439, file: !754, line: 51, type: !94)
!3442 = !DILocalVariable(name: "len", scope: !3439, file: !754, line: 53, type: !91)
!3443 = !DILocalVariable(name: "prefix_len", scope: !3439, file: !754, line: 61, type: !91)
!3444 = !DILocation(line: 0, scope: !3439)
!3445 = !DILocation(line: 54, column: 14, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3439, file: !754, line: 54, column: 3)
!3447 = !DILocation(line: 54, column: 8, scope: !3446)
!3448 = !DILocation(line: 54, column: 32, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3446, file: !754, line: 54, column: 3)
!3450 = !DILocation(line: 54, column: 38, scope: !3449)
!3451 = !DILocation(line: 54, column: 3, scope: !3446)
!3452 = !DILocation(line: 54, column: 41, scope: !3449)
!3453 = !DILocation(line: 54, column: 70, scope: !3449)
!3454 = distinct !{!3454, !3451, !3455, !901}
!3455 = !DILocation(line: 55, column: 5, scope: !3446)
!3456 = !DILocation(line: 66, column: 3, scope: !3439)
!3457 = !DILocation(line: 54, scope: !3446)
!3458 = distinct !DISubprogram(name: "close_stream", scope: !757, file: !757, line: 55, type: !3459, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3495)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!68, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !146, line: 51, baseType: !68, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !146, line: 70, baseType: !3479, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3463, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3463, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3463, file: !146, line: 93, baseType: !3479, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3463, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3495 = !{!3496, !3497, !3499, !3500}
!3496 = !DILocalVariable(name: "stream", arg: 1, scope: !3458, file: !757, line: 55, type: !3461)
!3497 = !DILocalVariable(name: "some_pending", scope: !3458, file: !757, line: 57, type: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3499 = !DILocalVariable(name: "prev_fail", scope: !3458, file: !757, line: 58, type: !3498)
!3500 = !DILocalVariable(name: "fclose_fail", scope: !3458, file: !757, line: 59, type: !3498)
!3501 = !DILocation(line: 0, scope: !3458)
!3502 = !DILocation(line: 57, column: 30, scope: !3458)
!3503 = !DILocalVariable(name: "__stream", arg: 1, scope: !3504, file: !1034, line: 135, type: !3461)
!3504 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1034, file: !1034, line: 135, type: !3459, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !756, retainedNodes: !3505)
!3505 = !{!3503}
!3506 = !DILocation(line: 0, scope: !3504, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 58, column: 27, scope: !3458)
!3508 = !DILocation(line: 137, column: 10, scope: !3504, inlinedAt: !3507)
!3509 = !{!1042, !855, i64 0}
!3510 = !DILocation(line: 58, column: 43, scope: !3458)
!3511 = !DILocation(line: 59, column: 29, scope: !3458)
!3512 = !DILocation(line: 59, column: 45, scope: !3458)
!3513 = !DILocation(line: 69, column: 17, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3458, file: !757, line: 69, column: 7)
!3515 = !DILocation(line: 57, column: 50, scope: !3458)
!3516 = !DILocation(line: 69, column: 33, scope: !3514)
!3517 = !DILocation(line: 69, column: 53, scope: !3514)
!3518 = !DILocation(line: 69, column: 59, scope: !3514)
!3519 = !DILocation(line: 69, column: 7, scope: !3458)
!3520 = !DILocation(line: 71, column: 11, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3514, file: !757, line: 70, column: 5)
!3522 = !DILocation(line: 72, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3521, file: !757, line: 71, column: 11)
!3524 = !DILocation(line: 72, column: 15, scope: !3523)
!3525 = !DILocation(line: 77, column: 1, scope: !3458)
!3526 = !DISubprogram(name: "__fpending", scope: !3527, file: !3527, line: 75, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3527 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!91, !3461}
!3530 = distinct !DISubprogram(name: "rpl_fclose", scope: !759, file: !759, line: 58, type: !3531, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !758, retainedNodes: !3567)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!68, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3535, file: !146, line: 51, baseType: !68, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3535, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3535, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3535, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3535, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3535, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3535, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3535, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3535, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3535, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3535, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3535, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3535, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3535, file: !146, line: 70, baseType: !3551, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3535, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3535, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3535, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3535, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3535, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3535, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3535, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3535, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3535, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3535, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3535, file: !146, line: 93, baseType: !3551, size: 64, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3535, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3535, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3535, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3535, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3567 = !{!3568, !3569, !3570, !3571}
!3568 = !DILocalVariable(name: "fp", arg: 1, scope: !3530, file: !759, line: 58, type: !3533)
!3569 = !DILocalVariable(name: "saved_errno", scope: !3530, file: !759, line: 60, type: !68)
!3570 = !DILocalVariable(name: "fd", scope: !3530, file: !759, line: 63, type: !68)
!3571 = !DILocalVariable(name: "result", scope: !3530, file: !759, line: 74, type: !68)
!3572 = !DILocation(line: 0, scope: !3530)
!3573 = !DILocation(line: 63, column: 12, scope: !3530)
!3574 = !DILocation(line: 64, column: 10, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3530, file: !759, line: 64, column: 7)
!3576 = !DILocation(line: 64, column: 7, scope: !3530)
!3577 = !DILocation(line: 65, column: 12, scope: !3575)
!3578 = !DILocation(line: 65, column: 5, scope: !3575)
!3579 = !DILocation(line: 70, column: 9, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3530, file: !759, line: 70, column: 7)
!3581 = !DILocation(line: 70, column: 23, scope: !3580)
!3582 = !DILocation(line: 70, column: 33, scope: !3580)
!3583 = !DILocation(line: 70, column: 26, scope: !3580)
!3584 = !DILocation(line: 70, column: 59, scope: !3580)
!3585 = !DILocation(line: 71, column: 7, scope: !3580)
!3586 = !DILocation(line: 71, column: 10, scope: !3580)
!3587 = !DILocation(line: 70, column: 7, scope: !3530)
!3588 = !DILocation(line: 100, column: 12, scope: !3530)
!3589 = !DILocation(line: 105, column: 7, scope: !3530)
!3590 = !DILocation(line: 72, column: 19, scope: !3580)
!3591 = !DILocation(line: 105, column: 19, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3530, file: !759, line: 105, column: 7)
!3593 = !DILocation(line: 107, column: 13, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3592, file: !759, line: 106, column: 5)
!3595 = !DILocation(line: 109, column: 5, scope: !3594)
!3596 = !DILocation(line: 112, column: 1, scope: !3530)
!3597 = !DISubprogram(name: "fileno", scope: !388, file: !388, line: 809, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3598 = !DISubprogram(name: "fclose", scope: !388, file: !388, line: 178, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3599 = !DISubprogram(name: "__freading", scope: !3527, file: !3527, line: 51, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3600 = !DISubprogram(name: "lseek", scope: !1121, file: !1121, line: 339, type: !3601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!168, !68, !168, !68}
!3603 = distinct !DISubprogram(name: "rpl_fflush", scope: !761, file: !761, line: 130, type: !3604, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3640)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!68, !3606}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3608)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3608, file: !146, line: 51, baseType: !68, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3608, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3608, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3608, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3608, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3608, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3608, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3608, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3608, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3608, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3608, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3608, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3608, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3608, file: !146, line: 70, baseType: !3624, size: 64, offset: 832)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3608, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3608, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3608, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3608, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3608, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3608, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3608, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3608, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3608, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3608, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3608, file: !146, line: 93, baseType: !3624, size: 64, offset: 1344)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3608, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3608, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3608, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3608, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3640 = !{!3641}
!3641 = !DILocalVariable(name: "stream", arg: 1, scope: !3603, file: !761, line: 130, type: !3606)
!3642 = !DILocation(line: 0, scope: !3603)
!3643 = !DILocation(line: 151, column: 14, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3603, file: !761, line: 151, column: 7)
!3645 = !DILocation(line: 151, column: 22, scope: !3644)
!3646 = !DILocation(line: 151, column: 27, scope: !3644)
!3647 = !DILocation(line: 151, column: 7, scope: !3603)
!3648 = !DILocation(line: 152, column: 12, scope: !3644)
!3649 = !DILocation(line: 152, column: 5, scope: !3644)
!3650 = !DILocalVariable(name: "fp", arg: 1, scope: !3651, file: !761, line: 42, type: !3606)
!3651 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !761, file: !761, line: 42, type: !3652, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !760, retainedNodes: !3654)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{null, !3606}
!3654 = !{!3650}
!3655 = !DILocation(line: 0, scope: !3651, inlinedAt: !3656)
!3656 = distinct !DILocation(line: 157, column: 3, scope: !3603)
!3657 = !DILocation(line: 44, column: 12, scope: !3658, inlinedAt: !3656)
!3658 = distinct !DILexicalBlock(scope: !3651, file: !761, line: 44, column: 7)
!3659 = !DILocation(line: 44, column: 19, scope: !3658, inlinedAt: !3656)
!3660 = !DILocation(line: 44, column: 7, scope: !3651, inlinedAt: !3656)
!3661 = !DILocation(line: 46, column: 5, scope: !3658, inlinedAt: !3656)
!3662 = !DILocation(line: 159, column: 10, scope: !3603)
!3663 = !DILocation(line: 159, column: 3, scope: !3603)
!3664 = !DILocation(line: 236, column: 1, scope: !3603)
!3665 = !DISubprogram(name: "fflush", scope: !388, file: !388, line: 230, type: !3604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3666 = distinct !DISubprogram(name: "rpl_fseeko", scope: !763, file: !763, line: 28, type: !3667, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !762, retainedNodes: !3704)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!68, !3669, !3703, !68}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3672)
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3671, file: !146, line: 51, baseType: !68, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3671, file: !146, line: 54, baseType: !89, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3671, file: !146, line: 55, baseType: !89, size: 64, offset: 128)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3671, file: !146, line: 56, baseType: !89, size: 64, offset: 192)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3671, file: !146, line: 57, baseType: !89, size: 64, offset: 256)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3671, file: !146, line: 58, baseType: !89, size: 64, offset: 320)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3671, file: !146, line: 59, baseType: !89, size: 64, offset: 384)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3671, file: !146, line: 60, baseType: !89, size: 64, offset: 448)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3671, file: !146, line: 61, baseType: !89, size: 64, offset: 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3671, file: !146, line: 64, baseType: !89, size: 64, offset: 576)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3671, file: !146, line: 65, baseType: !89, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3671, file: !146, line: 66, baseType: !89, size: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3671, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3671, file: !146, line: 70, baseType: !3687, size: 64, offset: 832)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3671, file: !146, line: 72, baseType: !68, size: 32, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3671, file: !146, line: 73, baseType: !68, size: 32, offset: 928)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3671, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3671, file: !146, line: 77, baseType: !96, size: 16, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3671, file: !146, line: 78, baseType: !172, size: 8, offset: 1040)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3671, file: !146, line: 79, baseType: !44, size: 8, offset: 1048)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3671, file: !146, line: 81, baseType: !175, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3671, file: !146, line: 89, baseType: !178, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3671, file: !146, line: 91, baseType: !180, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3671, file: !146, line: 92, baseType: !183, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3671, file: !146, line: 93, baseType: !3687, size: 64, offset: 1344)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3671, file: !146, line: 94, baseType: !90, size: 64, offset: 1408)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3671, file: !146, line: 95, baseType: !91, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3671, file: !146, line: 96, baseType: !68, size: 32, offset: 1536)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3671, file: !146, line: 98, baseType: !190, size: 160, offset: 1568)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !388, line: 63, baseType: !168)
!3704 = !{!3705, !3706, !3707, !3708}
!3705 = !DILocalVariable(name: "fp", arg: 1, scope: !3666, file: !763, line: 28, type: !3669)
!3706 = !DILocalVariable(name: "offset", arg: 2, scope: !3666, file: !763, line: 28, type: !3703)
!3707 = !DILocalVariable(name: "whence", arg: 3, scope: !3666, file: !763, line: 28, type: !68)
!3708 = !DILocalVariable(name: "pos", scope: !3709, file: !763, line: 123, type: !3703)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !763, line: 119, column: 5)
!3710 = distinct !DILexicalBlock(scope: !3666, file: !763, line: 55, column: 7)
!3711 = !DILocation(line: 0, scope: !3666)
!3712 = !DILocation(line: 55, column: 12, scope: !3710)
!3713 = !{!1042, !793, i64 16}
!3714 = !DILocation(line: 55, column: 33, scope: !3710)
!3715 = !{!1042, !793, i64 8}
!3716 = !DILocation(line: 55, column: 25, scope: !3710)
!3717 = !DILocation(line: 56, column: 7, scope: !3710)
!3718 = !DILocation(line: 56, column: 15, scope: !3710)
!3719 = !DILocation(line: 56, column: 37, scope: !3710)
!3720 = !{!1042, !793, i64 32}
!3721 = !DILocation(line: 56, column: 29, scope: !3710)
!3722 = !DILocation(line: 57, column: 7, scope: !3710)
!3723 = !DILocation(line: 57, column: 15, scope: !3710)
!3724 = !{!1042, !793, i64 72}
!3725 = !DILocation(line: 57, column: 29, scope: !3710)
!3726 = !DILocation(line: 55, column: 7, scope: !3666)
!3727 = !DILocation(line: 123, column: 26, scope: !3709)
!3728 = !DILocation(line: 123, column: 19, scope: !3709)
!3729 = !DILocation(line: 0, scope: !3709)
!3730 = !DILocation(line: 124, column: 15, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3709, file: !763, line: 124, column: 11)
!3732 = !DILocation(line: 124, column: 11, scope: !3709)
!3733 = !DILocation(line: 135, column: 19, scope: !3709)
!3734 = !DILocation(line: 136, column: 12, scope: !3709)
!3735 = !DILocation(line: 136, column: 20, scope: !3709)
!3736 = !{!1042, !1043, i64 144}
!3737 = !DILocation(line: 167, column: 7, scope: !3709)
!3738 = !DILocation(line: 169, column: 10, scope: !3666)
!3739 = !DILocation(line: 169, column: 3, scope: !3666)
!3740 = !DILocation(line: 170, column: 1, scope: !3666)
!3741 = !DISubprogram(name: "fseeko", scope: !388, file: !388, line: 736, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!68, !3669, !168, !68}
!3744 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !686, file: !686, line: 100, type: !3745, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3748)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!91, !1483, !94, !91, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3748 = !{!3749, !3750, !3751, !3752, !3753}
!3749 = !DILocalVariable(name: "pwc", arg: 1, scope: !3744, file: !686, line: 100, type: !1483)
!3750 = !DILocalVariable(name: "s", arg: 2, scope: !3744, file: !686, line: 100, type: !94)
!3751 = !DILocalVariable(name: "n", arg: 3, scope: !3744, file: !686, line: 100, type: !91)
!3752 = !DILocalVariable(name: "ps", arg: 4, scope: !3744, file: !686, line: 100, type: !3747)
!3753 = !DILocalVariable(name: "ret", scope: !3744, file: !686, line: 130, type: !91)
!3754 = !DILocation(line: 0, scope: !3744)
!3755 = !DILocation(line: 105, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3744, file: !686, line: 105, column: 7)
!3757 = !DILocation(line: 105, column: 7, scope: !3744)
!3758 = !DILocation(line: 117, column: 10, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3744, file: !686, line: 117, column: 7)
!3760 = !DILocation(line: 117, column: 7, scope: !3744)
!3761 = !DILocation(line: 130, column: 16, scope: !3744)
!3762 = !DILocation(line: 135, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3744, file: !686, line: 135, column: 7)
!3764 = !DILocation(line: 135, column: 25, scope: !3763)
!3765 = !DILocation(line: 135, column: 30, scope: !3763)
!3766 = !DILocation(line: 135, column: 7, scope: !3744)
!3767 = !DILocalVariable(name: "ps", arg: 1, scope: !3768, file: !1457, line: 1135, type: !3747)
!3768 = distinct !DISubprogram(name: "mbszero", scope: !1457, file: !1457, line: 1135, type: !3769, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !3747}
!3771 = !{!3767}
!3772 = !DILocation(line: 0, scope: !3768, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 137, column: 5, scope: !3763)
!3774 = !DILocalVariable(name: "__dest", arg: 1, scope: !3775, file: !1177, line: 57, type: !90)
!3775 = distinct !DISubprogram(name: "memset", scope: !1177, file: !1177, line: 57, type: !1466, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3776)
!3776 = !{!3774, !3777, !3778}
!3777 = !DILocalVariable(name: "__ch", arg: 2, scope: !3775, file: !1177, line: 57, type: !68)
!3778 = !DILocalVariable(name: "__len", arg: 3, scope: !3775, file: !1177, line: 57, type: !91)
!3779 = !DILocation(line: 0, scope: !3775, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 1137, column: 3, scope: !3768, inlinedAt: !3773)
!3781 = !DILocation(line: 59, column: 10, scope: !3775, inlinedAt: !3780)
!3782 = !DILocation(line: 137, column: 5, scope: !3763)
!3783 = !DILocation(line: 138, column: 11, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3744, file: !686, line: 138, column: 7)
!3785 = !DILocation(line: 138, column: 7, scope: !3744)
!3786 = !DILocation(line: 139, column: 5, scope: !3784)
!3787 = !DILocation(line: 143, column: 26, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3744, file: !686, line: 143, column: 7)
!3789 = !DILocation(line: 143, column: 41, scope: !3788)
!3790 = !DILocation(line: 143, column: 7, scope: !3744)
!3791 = !DILocation(line: 145, column: 15, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3793, file: !686, line: 145, column: 11)
!3793 = distinct !DILexicalBlock(scope: !3788, file: !686, line: 144, column: 5)
!3794 = !DILocation(line: 145, column: 11, scope: !3793)
!3795 = !DILocation(line: 146, column: 32, scope: !3792)
!3796 = !DILocation(line: 146, column: 16, scope: !3792)
!3797 = !DILocation(line: 146, column: 14, scope: !3792)
!3798 = !DILocation(line: 146, column: 9, scope: !3792)
!3799 = !DILocation(line: 286, column: 1, scope: !3744)
!3800 = !DISubprogram(name: "mbsinit", scope: !3801, file: !3801, line: 293, type: !3802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3801 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!68, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!3806 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !765, file: !765, line: 27, type: !2975, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3807)
!3807 = !{!3808, !3809, !3810, !3811}
!3808 = !DILocalVariable(name: "ptr", arg: 1, scope: !3806, file: !765, line: 27, type: !90)
!3809 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3806, file: !765, line: 27, type: !91)
!3810 = !DILocalVariable(name: "size", arg: 3, scope: !3806, file: !765, line: 27, type: !91)
!3811 = !DILocalVariable(name: "nbytes", scope: !3806, file: !765, line: 29, type: !91)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 30, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3806, file: !765, line: 30, column: 7)
!3815 = !DILocation(line: 30, column: 7, scope: !3806)
!3816 = !DILocation(line: 32, column: 7, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3814, file: !765, line: 31, column: 5)
!3818 = !DILocation(line: 32, column: 13, scope: !3817)
!3819 = !DILocation(line: 33, column: 7, scope: !3817)
!3820 = !DILocalVariable(name: "ptr", arg: 1, scope: !3821, file: !3064, line: 2057, type: !90)
!3821 = distinct !DISubprogram(name: "rpl_realloc", scope: !3064, file: !3064, line: 2057, type: !3056, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3822)
!3822 = !{!3820, !3823}
!3823 = !DILocalVariable(name: "size", arg: 2, scope: !3821, file: !3064, line: 2057, type: !91)
!3824 = !DILocation(line: 0, scope: !3821, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 37, column: 10, scope: !3806)
!3826 = !DILocation(line: 2059, column: 24, scope: !3821, inlinedAt: !3825)
!3827 = !DILocation(line: 2059, column: 10, scope: !3821, inlinedAt: !3825)
!3828 = !DILocation(line: 37, column: 3, scope: !3806)
!3829 = !DILocation(line: 38, column: 1, scope: !3806)
!3830 = distinct !DISubprogram(name: "hard_locale", scope: !704, file: !704, line: 28, type: !3831, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!126, !68}
!3833 = !{!3834, !3835}
!3834 = !DILocalVariable(name: "category", arg: 1, scope: !3830, file: !704, line: 28, type: !68)
!3835 = !DILocalVariable(name: "locale", scope: !3830, file: !704, line: 30, type: !3836)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3837)
!3837 = !{!3838}
!3838 = !DISubrange(count: 257)
!3839 = distinct !DIAssignID()
!3840 = !DILocation(line: 0, scope: !3830)
!3841 = !DILocation(line: 30, column: 3, scope: !3830)
!3842 = !DILocation(line: 32, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3830, file: !704, line: 32, column: 7)
!3844 = !DILocation(line: 32, column: 7, scope: !3830)
!3845 = !DILocalVariable(name: "__s1", arg: 1, scope: !3846, file: !867, line: 1359, type: !94)
!3846 = distinct !DISubprogram(name: "streq", scope: !867, file: !867, line: 1359, type: !868, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3847)
!3847 = !{!3845, !3848}
!3848 = !DILocalVariable(name: "__s2", arg: 2, scope: !3846, file: !867, line: 1359, type: !94)
!3849 = !DILocation(line: 0, scope: !3846, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 35, column: 9, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3830, file: !704, line: 35, column: 7)
!3852 = !DILocation(line: 1361, column: 11, scope: !3846, inlinedAt: !3850)
!3853 = !DILocation(line: 1361, column: 10, scope: !3846, inlinedAt: !3850)
!3854 = !DILocation(line: 35, column: 29, scope: !3851)
!3855 = !DILocation(line: 0, scope: !3846, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 35, column: 32, scope: !3851)
!3857 = !DILocation(line: 1361, column: 11, scope: !3846, inlinedAt: !3856)
!3858 = !DILocation(line: 1361, column: 10, scope: !3846, inlinedAt: !3856)
!3859 = !DILocation(line: 35, column: 7, scope: !3830)
!3860 = !DILocation(line: 46, column: 3, scope: !3830)
!3861 = !DILocation(line: 47, column: 1, scope: !3830)
!3862 = distinct !DISubprogram(name: "setlocale_null_r", scope: !769, file: !769, line: 154, type: !3863, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!68, !68, !89, !91}
!3865 = !{!3866, !3867, !3868}
!3866 = !DILocalVariable(name: "category", arg: 1, scope: !3862, file: !769, line: 154, type: !68)
!3867 = !DILocalVariable(name: "buf", arg: 2, scope: !3862, file: !769, line: 154, type: !89)
!3868 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3862, file: !769, line: 154, type: !91)
!3869 = !DILocation(line: 0, scope: !3862)
!3870 = !DILocation(line: 159, column: 10, scope: !3862)
!3871 = !DILocation(line: 159, column: 3, scope: !3862)
!3872 = distinct !DISubprogram(name: "setlocale_null", scope: !769, file: !769, line: 186, type: !3873, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!94, !68}
!3875 = !{!3876}
!3876 = !DILocalVariable(name: "category", arg: 1, scope: !3872, file: !769, line: 186, type: !68)
!3877 = !DILocation(line: 0, scope: !3872)
!3878 = !DILocation(line: 189, column: 10, scope: !3872)
!3879 = !DILocation(line: 189, column: 3, scope: !3872)
!3880 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !771, file: !771, line: 35, type: !3873, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3881)
!3881 = !{!3882, !3883}
!3882 = !DILocalVariable(name: "category", arg: 1, scope: !3880, file: !771, line: 35, type: !68)
!3883 = !DILocalVariable(name: "result", scope: !3880, file: !771, line: 37, type: !94)
!3884 = !DILocation(line: 0, scope: !3880)
!3885 = !DILocation(line: 37, column: 24, scope: !3880)
!3886 = !DILocation(line: 62, column: 3, scope: !3880)
!3887 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !771, file: !771, line: 66, type: !3863, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893}
!3889 = !DILocalVariable(name: "category", arg: 1, scope: !3887, file: !771, line: 66, type: !68)
!3890 = !DILocalVariable(name: "buf", arg: 2, scope: !3887, file: !771, line: 66, type: !89)
!3891 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3887, file: !771, line: 66, type: !91)
!3892 = !DILocalVariable(name: "result", scope: !3887, file: !771, line: 111, type: !94)
!3893 = !DILocalVariable(name: "length", scope: !3894, file: !771, line: 125, type: !91)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !771, line: 124, column: 5)
!3895 = distinct !DILexicalBlock(scope: !3887, file: !771, line: 113, column: 7)
!3896 = !DILocation(line: 0, scope: !3887)
!3897 = !DILocation(line: 0, scope: !3880, inlinedAt: !3898)
!3898 = distinct !DILocation(line: 111, column: 24, scope: !3887)
!3899 = !DILocation(line: 37, column: 24, scope: !3880, inlinedAt: !3898)
!3900 = !DILocation(line: 113, column: 14, scope: !3895)
!3901 = !DILocation(line: 113, column: 7, scope: !3887)
!3902 = !DILocation(line: 116, column: 19, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !771, line: 116, column: 11)
!3904 = distinct !DILexicalBlock(scope: !3895, file: !771, line: 114, column: 5)
!3905 = !DILocation(line: 116, column: 11, scope: !3904)
!3906 = !DILocation(line: 120, column: 16, scope: !3903)
!3907 = !DILocation(line: 120, column: 9, scope: !3903)
!3908 = !DILocation(line: 125, column: 23, scope: !3894)
!3909 = !DILocation(line: 0, scope: !3894)
!3910 = !DILocation(line: 126, column: 18, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3894, file: !771, line: 126, column: 11)
!3912 = !DILocation(line: 126, column: 11, scope: !3894)
!3913 = !DILocation(line: 128, column: 39, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !771, line: 127, column: 9)
!3915 = !DILocalVariable(name: "__dest", arg: 1, scope: !3916, file: !1177, line: 26, type: !1180)
!3916 = distinct !DISubprogram(name: "memcpy", scope: !1177, file: !1177, line: 26, type: !1178, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !770, retainedNodes: !3917)
!3917 = !{!3915, !3918, !3919}
!3918 = !DILocalVariable(name: "__src", arg: 2, scope: !3916, file: !1177, line: 26, type: !998)
!3919 = !DILocalVariable(name: "__len", arg: 3, scope: !3916, file: !1177, line: 26, type: !91)
!3920 = !DILocation(line: 0, scope: !3916, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 128, column: 11, scope: !3914)
!3922 = !DILocation(line: 29, column: 10, scope: !3916, inlinedAt: !3921)
!3923 = !DILocation(line: 129, column: 11, scope: !3914)
!3924 = !DILocation(line: 133, column: 23, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !771, line: 133, column: 15)
!3926 = distinct !DILexicalBlock(scope: !3911, file: !771, line: 132, column: 9)
!3927 = !DILocation(line: 133, column: 15, scope: !3926)
!3928 = !DILocation(line: 138, column: 44, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3925, file: !771, line: 134, column: 13)
!3930 = !DILocation(line: 0, scope: !3916, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 138, column: 15, scope: !3929)
!3932 = !DILocation(line: 29, column: 10, scope: !3916, inlinedAt: !3931)
!3933 = !DILocation(line: 139, column: 15, scope: !3929)
!3934 = !DILocation(line: 139, column: 32, scope: !3929)
!3935 = !DILocation(line: 140, column: 13, scope: !3929)
!3936 = !DILocation(line: 0, scope: !3895)
!3937 = !DILocation(line: 145, column: 1, scope: !3887)
