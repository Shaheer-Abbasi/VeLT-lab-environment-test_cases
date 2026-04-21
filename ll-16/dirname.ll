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
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !193
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !223
@.str.17 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !228
@.str.18 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !230
@.str.19 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !235
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !272
@.str.34 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !274
@.str.35 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !276
@.str.36 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !281
@.str.37 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !286
@.str.38 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !291
@.str.39 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !296
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !298
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !300
@.str.42 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !302
@.str.46 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !313
@.str.47 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !315
@.str.48 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !320
@.str.49 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !325
@.str.50 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !330
@.str.51 = private unnamed_addr constant [5 x i8] c"zero\00", align 1, !dbg !335
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !337
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !339
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !351
@Version = dso_local local_unnamed_addr global ptr @.str.20, align 8, !dbg !354
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !358
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !371
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !363
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !365
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !367
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !369
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !373
@stderr = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !379
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !416
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !381
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
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !778 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !782, metadata !DIExpression()), !dbg !783
  %2 = icmp eq i32 %0, 0, !dbg !784
  br i1 %2, label %8, label %3, !dbg !786

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !787, !tbaa !789
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !787
  %6 = load ptr, ptr @program_name, align 8, !dbg !787, !tbaa !789
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !787
  br label %35, !dbg !787

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !793
  %10 = load ptr, ptr @program_name, align 8, !dbg !793, !tbaa !789
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #39, !dbg !793
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !795
  %13 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !789
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !795
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !796
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !796
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !797
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !797
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !798
  tail call fastcc void @oputs_(ptr noundef %17), !dbg !798
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !799
  %19 = load ptr, ptr @program_name, align 8, !dbg !799, !tbaa !789
  %20 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %18, ptr noundef %19, ptr noundef %19, ptr noundef %19) #39, !dbg !799
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !800, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !812, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr poison, metadata !812, metadata !DIExpression()), !dbg !817
  tail call void @emit_bug_reporting_address() #39, !dbg !819
  %21 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !820
  call void @llvm.dbg.value(metadata ptr %21, metadata !815, metadata !DIExpression()), !dbg !817
  %22 = icmp eq ptr %21, null, !dbg !821
  br i1 %22, label %30, label %23, !dbg !823

23:                                               ; preds = %8
  %24 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(4) @.str.46, i64 noundef 3) #40, !dbg !824
  %25 = icmp eq i32 %24, 0, !dbg !824
  br i1 %25, label %30, label %26, !dbg !825

26:                                               ; preds = %23
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #39, !dbg !826
  %28 = load ptr, ptr @stdout, align 8, !dbg !826, !tbaa !789
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !826
  br label %30, !dbg !828

30:                                               ; preds = %8, %23, %26
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !812, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !816, metadata !DIExpression()), !dbg !817
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #39, !dbg !829
  %32 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %31, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3) #39, !dbg !829
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #39, !dbg !830
  %34 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.50) #39, !dbg !830
  br label %35

35:                                               ; preds = %30, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !831
  unreachable, !dbg !831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !832 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !837 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !843 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !846 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !195 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !199, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %0, metadata !200, metadata !DIExpression()), !dbg !849
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !850, !tbaa !851
  %3 = icmp eq i32 %2, -1, !dbg !853
  br i1 %3, label %4, label %16, !dbg !854

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #39, !dbg !855
  call void @llvm.dbg.value(metadata ptr %5, metadata !201, metadata !DIExpression()), !dbg !856
  %6 = icmp eq ptr %5, null, !dbg !857
  br i1 %6, label %14, label %7, !dbg !858

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !859, !tbaa !860
  %9 = icmp eq i8 %8, 0, !dbg !859
  br i1 %9, label %14, label %10, !dbg !861

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !862, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !868, metadata !DIExpression()), !dbg !869
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.17) #40, !dbg !871
  %12 = icmp eq i32 %11, 0, !dbg !872
  %13 = zext i1 %12 to i32, !dbg !861
  br label %14, !dbg !861

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !873, !tbaa !851
  br label %16, !dbg !874

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !875
  %18 = icmp eq i32 %17, 0, !dbg !875
  br i1 %18, label %22, label %19, !dbg !877

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !878, !tbaa !789
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !878
  br label %122, !dbg !880

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !204, metadata !DIExpression()), !dbg !849
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.18) #40, !dbg !881
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !882
  call void @llvm.dbg.value(metadata ptr %24, metadata !205, metadata !DIExpression()), !dbg !849
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !883
  call void @llvm.dbg.value(metadata ptr %25, metadata !206, metadata !DIExpression()), !dbg !849
  %26 = icmp eq ptr %25, null, !dbg !884
  br i1 %26, label %54, label %27, !dbg !885

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !886
  br i1 %28, label %54, label %29, !dbg !887

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !207, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64 0, metadata !211, metadata !DIExpression()), !dbg !888
  %30 = icmp ult ptr %24, %25, !dbg !889
  br i1 %30, label %31, label %52, !dbg !890

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !849
  %33 = load ptr, ptr %32, align 8, !tbaa !789
  br label %34, !dbg !890

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !207, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata i64 %36, metadata !211, metadata !DIExpression()), !dbg !888
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !891
  call void @llvm.dbg.value(metadata ptr %37, metadata !207, metadata !DIExpression()), !dbg !888
  %38 = load i8, ptr %35, align 1, !dbg !891, !tbaa !860
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !891
  %41 = load i16, ptr %40, align 2, !dbg !891, !tbaa !892
  %42 = freeze i16 %41, !dbg !894
  %43 = lshr i16 %42, 13, !dbg !894
  %44 = and i16 %43, 1, !dbg !894
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !895
  call void @llvm.dbg.value(metadata i64 %46, metadata !211, metadata !DIExpression()), !dbg !888
  %47 = icmp ult ptr %37, %25, !dbg !889
  %48 = icmp ult i64 %46, 2, !dbg !896
  %49 = select i1 %47, i1 %48, i1 false, !dbg !896
  br i1 %49, label %34, label %50, !dbg !890, !llvm.loop !897

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !899
  br i1 %51, label %52, label %54, !dbg !901

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !901

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !849
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !204, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %55, metadata !206, metadata !DIExpression()), !dbg !849
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.19) #40, !dbg !902
  call void @llvm.dbg.value(metadata i64 %57, metadata !212, metadata !DIExpression()), !dbg !849
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !903
  call void @llvm.dbg.value(metadata ptr %58, metadata !213, metadata !DIExpression()), !dbg !849
  br label %59, !dbg !904

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !849
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !204, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr %60, metadata !213, metadata !DIExpression()), !dbg !849
  %62 = load i8, ptr %60, align 1, !dbg !905, !tbaa !860
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !906

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !907
  %65 = load i8, ptr %64, align 1, !dbg !910, !tbaa !860
  %66 = icmp ne i8 %65, 45, !dbg !911
  %67 = select i1 %66, i1 %61, i1 false, !dbg !912
  br label %68, !dbg !912

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !204, metadata !DIExpression()), !dbg !849
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !913
  %71 = load ptr, ptr %70, align 8, !dbg !913, !tbaa !789
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !913
  %74 = load i16, ptr %73, align 2, !dbg !913, !tbaa !892
  %75 = and i16 %74, 8192, !dbg !913
  %76 = icmp eq i16 %75, 0, !dbg !913
  br i1 %76, label %90, label %77, !dbg !915

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !916
  br i1 %78, label %92, label %79, !dbg !919

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !920
  %81 = load i8, ptr %80, align 1, !dbg !920, !tbaa !860
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !920
  %84 = load i16, ptr %83, align 2, !dbg !920, !tbaa !892
  %85 = and i16 %84, 8192, !dbg !920
  %86 = icmp eq i16 %85, 0, !dbg !920
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !921
  br i1 %89, label %90, label %92, !dbg !921

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !922
  call void @llvm.dbg.value(metadata ptr %91, metadata !213, metadata !DIExpression()), !dbg !849
  br label %59, !dbg !904, !llvm.loop !923

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !925
  %94 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !789
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !925
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !862, metadata !DIExpression()), !dbg !944
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !218, metadata !DIExpression()), !dbg !849
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.33, i64 noundef 6) #40, !dbg !946
  %97 = icmp eq i32 %96, 0, !dbg !946
  br i1 %97, label %101, label %98, !dbg !948

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.34, i64 noundef 9) #40, !dbg !949
  %100 = icmp eq i32 %99, 0, !dbg !949
  br i1 %100, label %101, label %104, !dbg !950

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !951
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !951
  br label %107, !dbg !953

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !954
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !954
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !956, !tbaa !789
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %108), !dbg !956
  %110 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !789
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %110), !dbg !957
  %112 = ptrtoint ptr %60 to i64, !dbg !958
  %113 = sub i64 %112, %93, !dbg !958
  %114 = load ptr, ptr @stdout, align 8, !dbg !958, !tbaa !789
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !958
  %116 = load ptr, ptr @stdout, align 8, !dbg !959, !tbaa !789
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %116), !dbg !959
  %118 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !789
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %118), !dbg !960
  %120 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !789
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !961
  br label %122, !dbg !962

122:                                              ; preds = %107, %19
  ret void, !dbg !962
}

; Function Attrs: nounwind
declare !dbg !963 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !967 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !971 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !973 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !976 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !979 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !982 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !985 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !991 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !992 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr %1, metadata !124, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8 0, metadata !125, metadata !DIExpression()), !dbg !998
  %3 = load ptr, ptr %1, align 8, !dbg !999, !tbaa !789
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1000
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #39, !dbg !1001
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #39, !dbg !1002
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #39, !dbg !1003
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1004
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !998
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %8, metadata !127, metadata !DIExpression()), !dbg !1006
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1007

9:                                                ; preds = %2, %9
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !998
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @longopts, ptr noundef null) #39, !dbg !1005
  call void @llvm.dbg.value(metadata i32 %10, metadata !127, metadata !DIExpression()), !dbg !1006
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 122, label %9
    i32 -2, label %11
    i32 -3, label %12
  ], !dbg !1007, !llvm.loop !1008

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #43, !dbg !1010
  unreachable, !dbg !1010

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1012, !tbaa !789
  %14 = load ptr, ptr @Version, align 8, !dbg !1012, !tbaa !789
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #39, !dbg !1012
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #39, !dbg !1012
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #39, !dbg !1012
  tail call void @exit(i32 noundef 0) #41, !dbg !1012
  unreachable, !dbg !1012

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 1) #43, !dbg !1013
  unreachable, !dbg !1013

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !125, metadata !DIExpression()), !dbg !998
  %20 = load i32, ptr @optind, align 4, !dbg !1014, !tbaa !851
  %21 = icmp slt i32 %20, %0, !dbg !1016
  br i1 %21, label %22, label %24, !dbg !1017

22:                                               ; preds = %18
  %23 = trunc i32 %19 to i8
  br label %26, !dbg !1018

24:                                               ; preds = %18
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !1019
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #39, !dbg !1019
  tail call void @usage(i32 noundef 1) #43, !dbg !1021
  unreachable, !dbg !1021

26:                                               ; preds = %47, %22
  %27 = phi i32 [ %20, %22 ], [ %49, %47 ]
  call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata i64 poison, metadata !133, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.value(metadata ptr poison, metadata !129, metadata !DIExpression()), !dbg !1022
  %28 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !789
  %29 = sext i32 %27 to i64, !dbg !1024
  %30 = getelementptr inbounds ptr, ptr %1, i64 %29, !dbg !1024
  %31 = load ptr, ptr %30, align 8, !dbg !1024, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %31, metadata !129, metadata !DIExpression()), !dbg !1022
  %32 = tail call i64 @dir_len(ptr noundef %31) #40, !dbg !1025
  call void @llvm.dbg.value(metadata i64 %32, metadata !133, metadata !DIExpression()), !dbg !1022
  %33 = icmp eq i64 %32, 0, !dbg !1026
  %34 = select i1 %33, i64 1, i64 %32, !dbg !1028
  call void @llvm.dbg.value(metadata i64 %34, metadata !133, metadata !DIExpression()), !dbg !1022
  %35 = select i1 %33, ptr @main.dot, ptr %31, !dbg !1028
  call void @llvm.dbg.value(metadata ptr %35, metadata !129, metadata !DIExpression()), !dbg !1022
  %36 = tail call i64 @fwrite_unlocked(ptr noundef %35, i64 noundef 1, i64 noundef %34, ptr noundef %28), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %19, metadata !1029, metadata !DIExpression()), !dbg !1035
  %37 = load ptr, ptr @stdout, align 8, !dbg !1037, !tbaa !789
  %38 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 5, !dbg !1037
  %39 = load ptr, ptr %38, align 8, !dbg !1037, !tbaa !1038
  %40 = getelementptr inbounds %struct._IO_FILE, ptr %37, i64 0, i32 6, !dbg !1037
  %41 = load ptr, ptr %40, align 8, !dbg !1037, !tbaa !1041
  %42 = icmp ult ptr %39, %41, !dbg !1037
  br i1 %42, label %45, label %43, !dbg !1037, !prof !1042

43:                                               ; preds = %26
  %44 = tail call i32 @__overflow(ptr noundef nonnull %37, i32 noundef %19) #39, !dbg !1037
  br label %47, !dbg !1037

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %39, i64 1, !dbg !1037
  store ptr %46, ptr %38, align 8, !dbg !1037, !tbaa !1038
  store i8 %23, ptr %39, align 1, !dbg !1037, !tbaa !860
  br label %47, !dbg !1037

47:                                               ; preds = %43, %45
  %48 = load i32, ptr @optind, align 4, !dbg !1043, !tbaa !851
  %49 = add nsw i32 %48, 1, !dbg !1043
  store i32 %49, ptr @optind, align 4, !dbg !1043, !tbaa !851
  %50 = icmp slt i32 %49, %0, !dbg !1044
  br i1 %50, label %26, label %51, !dbg !1018, !llvm.loop !1045

51:                                               ; preds = %47
  ret i32 0, !dbg !1047
}

; Function Attrs: nounwind
declare !dbg !1048 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1051 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1052 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1055 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1061 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1064 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1066, metadata !DIExpression()), !dbg !1067
  store ptr %0, ptr @file_name, align 8, !dbg !1068, !tbaa !789
  ret void, !dbg !1069
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1070 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1076, !tbaa !1077
  ret void, !dbg !1079
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1080 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1085, !tbaa !789
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1086
  %3 = icmp eq i32 %2, 0, !dbg !1087
  br i1 %3, label %22, label %4, !dbg !1088

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1089, !tbaa !1077, !range !1090, !noundef !836
  %6 = icmp eq i8 %5, 0, !dbg !1089
  br i1 %6, label %11, label %7, !dbg !1091

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1092
  %9 = load i32, ptr %8, align 4, !dbg !1092, !tbaa !851
  %10 = icmp eq i32 %9, 32, !dbg !1093
  br i1 %10, label %22, label %11, !dbg !1094

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1.24, i32 noundef 5) #39, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %12, metadata !1082, metadata !DIExpression()), !dbg !1096
  %13 = load ptr, ptr @file_name, align 8, !dbg !1097, !tbaa !789
  %14 = icmp eq ptr %13, null, !dbg !1097
  %15 = tail call ptr @__errno_location() #42, !dbg !1099
  %16 = load i32, ptr %15, align 4, !dbg !1099, !tbaa !851
  br i1 %14, label %19, label %17, !dbg !1100

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1101
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.25, ptr noundef %18, ptr noundef %12) #39, !dbg !1101
  br label %20, !dbg !1101

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.26, ptr noundef %12) #39, !dbg !1102
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1103, !tbaa !851
  tail call void @_exit(i32 noundef %21) #41, !dbg !1104
  unreachable, !dbg !1104

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1105, !tbaa !789
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1107
  %25 = icmp eq i32 %24, 0, !dbg !1108
  br i1 %25, label %28, label %26, !dbg !1109

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1110, !tbaa !851
  tail call void @_exit(i32 noundef %27) #41, !dbg !1111
  unreachable, !dbg !1111

28:                                               ; preds = %22
  ret void, !dbg !1112
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1113 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1117 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i64 @dir_len(ptr noundef %0) local_unnamed_addr #13 !dbg !1119 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1123, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 0, metadata !1124, metadata !DIExpression()), !dbg !1126
  %2 = load i8, ptr %0, align 1, !dbg !1127, !tbaa !860
  %3 = icmp eq i8 %2, 47, !dbg !1127
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1124, metadata !DIExpression()), !dbg !1126
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #40, !dbg !1128
  %6 = ptrtoint ptr %5 to i64, !dbg !1130
  %7 = ptrtoint ptr %0 to i64, !dbg !1130
  %8 = sub i64 %6, %7, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %8, metadata !1125, metadata !DIExpression()), !dbg !1126
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4), !dbg !1131
  br label %10, !dbg !1131

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !1132
  call void @llvm.dbg.value(metadata i64 %11, metadata !1125, metadata !DIExpression()), !dbg !1126
  %12 = icmp ugt i64 %11, %4, !dbg !1133
  br i1 %12, label %13, label %18, !dbg !1135

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !1136
  %15 = getelementptr inbounds i8, ptr %0, i64 %14, !dbg !1136
  %16 = load i8, ptr %15, align 1, !dbg !1136, !tbaa !860
  %17 = icmp eq i8 %16, 47, !dbg !1136
  br i1 %17, label %10, label %18, !dbg !1138, !llvm.loop !1139

18:                                               ; preds = %13, %10
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !1132
  ret i64 %19, !dbg !1141
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noalias ptr @mdir_name(ptr noundef %0) local_unnamed_addr #14 !dbg !1142 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1144, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %0, metadata !1123, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 0, metadata !1124, metadata !DIExpression()), !dbg !1149
  %2 = load i8, ptr %0, align 1, !dbg !1151, !tbaa !860
  %3 = icmp eq i8 %2, 47, !dbg !1151
  %4 = zext i1 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !1124, metadata !DIExpression()), !dbg !1149
  %5 = tail call ptr @last_component(ptr noundef nonnull %0) #40, !dbg !1152
  %6 = ptrtoint ptr %5 to i64, !dbg !1153
  %7 = ptrtoint ptr %0 to i64, !dbg !1153
  %8 = sub i64 %6, %7, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %8, metadata !1125, metadata !DIExpression()), !dbg !1149
  %9 = tail call i64 @llvm.umin.i64(i64 %8, i64 %4), !dbg !1154
  br label %10, !dbg !1154

10:                                               ; preds = %13, %1
  %11 = phi i64 [ %8, %1 ], [ %14, %13 ], !dbg !1155
  call void @llvm.dbg.value(metadata i64 %11, metadata !1125, metadata !DIExpression()), !dbg !1149
  %12 = icmp ugt i64 %11, %4, !dbg !1156
  br i1 %12, label %13, label %18, !dbg !1157

13:                                               ; preds = %10
  %14 = add i64 %11, -1, !dbg !1158
  %15 = getelementptr inbounds i8, ptr %0, i64 %14, !dbg !1158
  %16 = load i8, ptr %15, align 1, !dbg !1158, !tbaa !860
  %17 = icmp eq i8 %16, 47, !dbg !1158
  br i1 %17, label %10, label %18, !dbg !1159, !llvm.loop !1160

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %11, %13 ], [ %9, %10 ], !dbg !1155
  call void @llvm.dbg.value(metadata i64 %19, metadata !1145, metadata !DIExpression()), !dbg !1148
  %20 = icmp eq i64 %19, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %20, metadata !1146, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1148
  %21 = zext i1 %20 to i64, !dbg !1163
  %22 = add i64 %19, 1, !dbg !1164
  %23 = add i64 %22, %21, !dbg !1165
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #44, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %24, metadata !1147, metadata !DIExpression()), !dbg !1148
  %25 = icmp eq ptr %24, null, !dbg !1167
  br i1 %25, label %31, label %26, !dbg !1169

26:                                               ; preds = %18
  call void @llvm.dbg.value(metadata ptr %24, metadata !1170, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata ptr %0, metadata !1177, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i64 %19, metadata !1178, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %24, ptr noundef nonnull align 1 %0, i64 noundef %19, i1 noundef false) #39, !dbg !1181
  br i1 %20, label %27, label %28, !dbg !1182

27:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 1, metadata !1145, metadata !DIExpression()), !dbg !1148
  store i8 46, ptr %24, align 1, !dbg !1183, !tbaa !860
  br label %28, !dbg !1185

28:                                               ; preds = %27, %26
  %29 = phi i64 [ 1, %27 ], [ %19, %26 ], !dbg !1148
  call void @llvm.dbg.value(metadata i64 %29, metadata !1145, metadata !DIExpression()), !dbg !1148
  %30 = getelementptr inbounds i8, ptr %24, i64 %29, !dbg !1186
  store i8 0, ptr %30, align 1, !dbg !1187, !tbaa !860
  br label %31, !dbg !1188

31:                                               ; preds = %18, %28
  ret ptr %24, !dbg !1189
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !1190 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !1193 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1197, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %2, metadata !1199, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1200, metadata !DIExpression()), !dbg !1202
  tail call fastcc void @flush_stdout(), !dbg !1203
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1204, !tbaa !789
  %7 = icmp eq ptr %6, null, !dbg !1204
  br i1 %7, label %9, label %8, !dbg !1206

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1207
  br label %13, !dbg !1207

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1208, !tbaa !789
  %11 = tail call ptr @getprogname() #40, !dbg !1208
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %11) #39, !dbg !1208
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1210, !tbaa.struct !1211
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1210
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1210
  ret void, !dbg !1212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1213 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1215, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i32 1, metadata !1217, metadata !DIExpression()), !dbg !1220
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1223
  %2 = icmp slt i32 %1, 0, !dbg !1224
  br i1 %2, label %6, label %3, !dbg !1225

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1226, !tbaa !789
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1226
  br label %6, !dbg !1226

6:                                                ; preds = %3, %0
  ret void, !dbg !1227
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #18

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1228 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1230, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %1, metadata !1231, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr %2, metadata !1232, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1233, metadata !DIExpression()), !dbg !1235
  %7 = load ptr, ptr @stderr, align 8, !dbg !1236, !tbaa !789
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1237, !noalias !1281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %7, metadata !1277, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %2, metadata !1278, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1279, metadata !DIExpression()), !dbg !1287
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1237, !noalias !1281
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1288, !tbaa !851
  %10 = add i32 %9, 1, !dbg !1288
  store i32 %10, ptr @error_message_count, align 4, !dbg !1288, !tbaa !851
  %11 = icmp eq i32 %1, 0, !dbg !1289
  br i1 %11, label %21, label %12, !dbg !1291

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1292, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1296, metadata !DIExpression()), !dbg !1303
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1304
  call void @llvm.dbg.value(metadata ptr %13, metadata !1295, metadata !DIExpression()), !dbg !1300
  %14 = icmp eq ptr %13, null, !dbg !1305
  br i1 %14, label %15, label %17, !dbg !1307

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.30, ptr noundef nonnull @.str.5.31, i32 noundef 5) #39, !dbg !1308
  call void @llvm.dbg.value(metadata ptr %16, metadata !1295, metadata !DIExpression()), !dbg !1300
  br label %17, !dbg !1309

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1300
  call void @llvm.dbg.value(metadata ptr %18, metadata !1295, metadata !DIExpression()), !dbg !1300
  %19 = load ptr, ptr @stderr, align 8, !dbg !1310, !tbaa !789
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.32, ptr noundef %18) #39, !dbg !1310
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1311
  br label %21, !dbg !1312

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1313, !tbaa !789
  call void @llvm.dbg.value(metadata i32 10, metadata !1314, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.value(metadata ptr %22, metadata !1319, metadata !DIExpression()), !dbg !1320
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1322
  %24 = load ptr, ptr %23, align 8, !dbg !1322, !tbaa !1038
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1322
  %26 = load ptr, ptr %25, align 8, !dbg !1322, !tbaa !1041
  %27 = icmp ult ptr %24, %26, !dbg !1322
  br i1 %27, label %30, label %28, !dbg !1322, !prof !1042

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1322
  br label %32, !dbg !1322

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1322
  store ptr %31, ptr %23, align 8, !dbg !1322, !tbaa !1038
  store i8 10, ptr %24, align 1, !dbg !1322, !tbaa !860
  br label %32, !dbg !1322

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1323, !tbaa !789
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1323
  %35 = icmp eq i32 %0, 0, !dbg !1324
  br i1 %35, label %37, label %36, !dbg !1326

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1327
  unreachable, !dbg !1327

37:                                               ; preds = %32
  ret void, !dbg !1328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #18

declare !dbg !1329 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1332 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1335 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1338 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1342 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1346, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %1, metadata !1347, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata ptr %2, metadata !1348, metadata !DIExpression()), !dbg !1350
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1351
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1349, metadata !DIExpression()), !dbg !1352
  call void @llvm.va_start(ptr nonnull %4), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1354, !tbaa.struct !1211
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1354
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1354
  call void @llvm.va_end(ptr nonnull %4), !dbg !1355
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1356
  ret void, !dbg !1356
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !383 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !400, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %1, metadata !401, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i32 %3, metadata !403, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %4, metadata !404, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %5, metadata !405, metadata !DIExpression()), !dbg !1358
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1359, !tbaa !851
  %9 = icmp eq i32 %8, 0, !dbg !1359
  br i1 %9, label %24, label %10, !dbg !1361

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1362, !tbaa !851
  %12 = icmp eq i32 %11, %3, !dbg !1365
  br i1 %12, label %13, label %23, !dbg !1366

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1367, !tbaa !789
  %15 = icmp eq ptr %14, %2, !dbg !1368
  br i1 %15, label %37, label %16, !dbg !1369

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1370
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1371
  br i1 %19, label %20, label %23, !dbg !1371

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1372
  %22 = icmp eq i32 %21, 0, !dbg !1373
  br i1 %22, label %37, label %23, !dbg !1374

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1375, !tbaa !789
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1376, !tbaa !851
  br label %24, !dbg !1377

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1378
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1379, !tbaa !789
  %26 = icmp eq ptr %25, null, !dbg !1379
  br i1 %26, label %28, label %27, !dbg !1381

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1382
  br label %32, !dbg !1382

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1383, !tbaa !789
  %30 = tail call ptr @getprogname() #40, !dbg !1383
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.35, ptr noundef %30) #39, !dbg !1383
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1385, !tbaa !789
  %34 = icmp eq ptr %2, null, !dbg !1385
  %35 = select i1 %34, ptr @.str.3.36, ptr @.str.2.37, !dbg !1385
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1385
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1386
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1386, !tbaa.struct !1211
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1386
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1386
  br label %37, !dbg !1387

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1387
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1388 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1392, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %1, metadata !1393, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata ptr %2, metadata !1394, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %3, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata ptr %4, metadata !1396, metadata !DIExpression()), !dbg !1398
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1397, metadata !DIExpression()), !dbg !1400
  call void @llvm.va_start(ptr nonnull %6), !dbg !1401
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1402, !tbaa.struct !1211
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1402
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1402
  call void @llvm.va_end(ptr nonnull %6), !dbg !1403
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1404
  ret void, !dbg !1404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1405 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1408, !tbaa !789
  ret ptr %1, !dbg !1409
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !1410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1412, metadata !DIExpression()), !dbg !1415
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %2, metadata !1413, metadata !DIExpression()), !dbg !1415
  %3 = icmp eq ptr %2, null, !dbg !1417
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1417
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %5, metadata !1414, metadata !DIExpression()), !dbg !1415
  %6 = ptrtoint ptr %5 to i64, !dbg !1418
  %7 = ptrtoint ptr %0 to i64, !dbg !1418
  %8 = sub i64 %6, %7, !dbg !1418
  %9 = icmp sgt i64 %8, 6, !dbg !1420
  br i1 %9, label %10, label %19, !dbg !1421

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %11, metadata !1423, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr @.str.54, metadata !1428, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 7, metadata !1429, metadata !DIExpression()), !dbg !1430
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.54, i64 7), !dbg !1432
  %13 = icmp eq i32 %12, 0, !dbg !1433
  br i1 %13, label %14, label %19, !dbg !1434

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !1415
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.55, i64 noundef 3) #40, !dbg !1435
  %16 = icmp eq i32 %15, 0, !dbg !1438
  %17 = select i1 %16, i64 3, i64 0, !dbg !1439
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1439
  br label %19, !dbg !1439

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1415
  call void @llvm.dbg.value(metadata ptr %21, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %20, metadata !1412, metadata !DIExpression()), !dbg !1415
  store ptr %20, ptr @program_name, align 8, !dbg !1440, !tbaa !789
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1441, !tbaa !789
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1442, !tbaa !789
  ret void, !dbg !1443
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1444 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !442 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !449, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata ptr %1, metadata !450, metadata !DIExpression()), !dbg !1445
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %5, metadata !451, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq ptr %5, %0, !dbg !1447
  br i1 %6, label %7, label %14, !dbg !1449

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !457, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %4, metadata !1453, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i64 8, metadata !1468, metadata !DIExpression()), !dbg !1469
  store i64 0, ptr %4, align 8, !dbg !1471
  call void @llvm.dbg.value(metadata ptr %3, metadata !452, metadata !DIExpression(DW_OP_deref)), !dbg !1445
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !1472
  %9 = icmp eq i64 %8, 2, !dbg !1474
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !452, metadata !DIExpression()), !dbg !1445
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1475
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !1476
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1445
  ret ptr %15, !dbg !1476
}

; Function Attrs: nounwind
declare !dbg !1477 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1483 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1491
  %2 = tail call ptr @__errno_location() #42, !dbg !1492
  %3 = load i32, ptr %2, align 4, !dbg !1492, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %3, metadata !1489, metadata !DIExpression()), !dbg !1491
  %4 = icmp eq ptr %0, null, !dbg !1493
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1493
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %6, metadata !1490, metadata !DIExpression()), !dbg !1491
  store i32 %3, ptr %2, align 4, !dbg !1495, !tbaa !851
  ret ptr %6, !dbg !1496
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !1497 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1503, metadata !DIExpression()), !dbg !1504
  %2 = icmp eq ptr %0, null, !dbg !1505
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1505
  %4 = load i32, ptr %3, align 8, !dbg !1506, !tbaa !1507
  ret i32 %4, !dbg !1509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1510 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1514, metadata !DIExpression()), !dbg !1516
  call void @llvm.dbg.value(metadata i32 %1, metadata !1515, metadata !DIExpression()), !dbg !1516
  %3 = icmp eq ptr %0, null, !dbg !1517
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1517
  store i32 %1, ptr %4, align 8, !dbg !1518, !tbaa !1507
  ret void, !dbg !1519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #25 !dbg !1520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1524, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %2, metadata !1526, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1532
  %4 = icmp eq ptr %0, null, !dbg !1533
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1533
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1534
  %7 = lshr i8 %1, 5, !dbg !1535
  %8 = zext i8 %7 to i64, !dbg !1535
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1536
  call void @llvm.dbg.value(metadata ptr %9, metadata !1528, metadata !DIExpression()), !dbg !1532
  %10 = and i8 %1, 31, !dbg !1537
  %11 = zext i8 %10 to i32, !dbg !1537
  call void @llvm.dbg.value(metadata i32 %11, metadata !1530, metadata !DIExpression()), !dbg !1532
  %12 = load i32, ptr %9, align 4, !dbg !1538, !tbaa !851
  %13 = lshr i32 %12, %11, !dbg !1539
  %14 = and i32 %13, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %14, metadata !1531, metadata !DIExpression()), !dbg !1532
  %15 = xor i32 %13, %2, !dbg !1541
  %16 = and i32 %15, 1, !dbg !1541
  %17 = shl nuw i32 %16, %11, !dbg !1542
  %18 = xor i32 %17, %12, !dbg !1543
  store i32 %18, ptr %9, align 4, !dbg !1543, !tbaa !851
  ret i32 %14, !dbg !1544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !1545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1552
  %3 = icmp eq ptr %0, null, !dbg !1553
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !1552
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1556
  %6 = load i32, ptr %5, align 4, !dbg !1556, !tbaa !1557
  call void @llvm.dbg.value(metadata i32 %6, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %1, ptr %5, align 4, !dbg !1558, !tbaa !1557
  ret i32 %6, !dbg !1559
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1560 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1564, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  %4 = icmp eq ptr %0, null, !dbg !1568
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !1567
  store i32 10, ptr %5, align 8, !dbg !1571, !tbaa !1507
  %6 = icmp ne ptr %1, null, !dbg !1572
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1574
  br i1 %8, label %10, label %9, !dbg !1574

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !1575
  unreachable, !dbg !1575

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1576
  store ptr %1, ptr %11, align 8, !dbg !1577, !tbaa !1578
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1579
  store ptr %2, ptr %12, align 8, !dbg !1580, !tbaa !1581
  ret void, !dbg !1582
}

; Function Attrs: noreturn nounwind
declare !dbg !1583 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1584 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1588, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %1, metadata !1589, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata ptr %2, metadata !1590, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %3, metadata !1591, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata ptr %4, metadata !1592, metadata !DIExpression()), !dbg !1596
  %6 = icmp eq ptr %4, null, !dbg !1597
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1597
  call void @llvm.dbg.value(metadata ptr %7, metadata !1593, metadata !DIExpression()), !dbg !1596
  %8 = tail call ptr @__errno_location() #42, !dbg !1598
  %9 = load i32, ptr %8, align 4, !dbg !1598, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %9, metadata !1594, metadata !DIExpression()), !dbg !1596
  %10 = load i32, ptr %7, align 8, !dbg !1599, !tbaa !1507
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1600
  %12 = load i32, ptr %11, align 4, !dbg !1600, !tbaa !1557
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1601
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1602
  %15 = load ptr, ptr %14, align 8, !dbg !1602, !tbaa !1578
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1603
  %17 = load ptr, ptr %16, align 8, !dbg !1603, !tbaa !1581
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %18, metadata !1595, metadata !DIExpression()), !dbg !1596
  store i32 %9, ptr %8, align 4, !dbg !1605, !tbaa !851
  ret i64 %18, !dbg !1606
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1607 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1613, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %1, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %2, metadata !1615, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %3, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %4, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %5, metadata !1618, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %6, metadata !1619, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %7, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %8, metadata !1621, metadata !DIExpression()), !dbg !1675
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !1676
  %17 = icmp eq i64 %16, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i1 %17, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr null, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %5, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1675
  %18 = and i32 %5, 2, !dbg !1678
  %19 = icmp ne i32 %18, 0, !dbg !1678
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1678

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1679
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1680
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1681
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %34, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %33, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %32, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %31, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %30, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %29, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %28, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1668), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
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
  ], !dbg !1683

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1675
  br label %102, !dbg !1684

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1675
  br i1 %36, label %102, label %42, !dbg !1684

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1685
  br i1 %43, label %102, label %44, !dbg !1689

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1685, !tbaa !860
  br label %102, !dbg !1685

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.68, metadata !552, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 %28, metadata !553, metadata !DIExpression()), !dbg !1690
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.11.68, i32 noundef 5) #39, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %46, metadata !554, metadata !DIExpression()), !dbg !1690
  %47 = icmp eq ptr %46, @.str.11.68, !dbg !1695
  br i1 %47, label %48, label %57, !dbg !1697

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !1698
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %13, metadata !556, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %13, metadata !1701, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %13, metadata !1709, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()), !dbg !1714
  store i64 0, ptr %13, align 8, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %12, metadata !555, metadata !DIExpression(DW_OP_deref)), !dbg !1690
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !1717
  %50 = icmp eq i64 %49, 3, !dbg !1719
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !555, metadata !DIExpression()), !dbg !1690
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1720
  %54 = icmp eq i32 %28, 9, !dbg !1720
  %55 = select i1 %54, ptr @.str.10.70, ptr @.str.12.71, !dbg !1720
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1720
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !1721
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1690
  call void @llvm.dbg.value(metadata ptr %58, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr @.str.12.71, metadata !552, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %28, metadata !553, metadata !DIExpression()), !dbg !1722
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.69, ptr noundef nonnull @.str.12.71, i32 noundef 5) #39, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %59, metadata !554, metadata !DIExpression()), !dbg !1722
  %60 = icmp eq ptr %59, @.str.12.71, !dbg !1725
  br i1 %60, label %61, label %70, !dbg !1726

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !1727
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !1728
  call void @llvm.dbg.declare(metadata ptr %11, metadata !556, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata ptr %11, metadata !1701, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %11, metadata !1709, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()), !dbg !1732
  store i64 0, ptr %11, align 8, !dbg !1734
  call void @llvm.dbg.value(metadata ptr %10, metadata !555, metadata !DIExpression(DW_OP_deref)), !dbg !1722
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !1735
  %63 = icmp eq i64 %62, 3, !dbg !1736
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !555, metadata !DIExpression()), !dbg !1722
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1737
  %67 = icmp eq i32 %28, 9, !dbg !1737
  %68 = select i1 %67, ptr @.str.10.70, ptr @.str.12.71, !dbg !1737
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1737
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !1738
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !1738
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %71, metadata !1620, metadata !DIExpression()), !dbg !1675
  br i1 %36, label %88, label %73, !dbg !1739

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1632, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  %74 = load i8, ptr %71, align 1, !dbg !1741, !tbaa !860
  %75 = icmp eq i8 %74, 0, !dbg !1743
  br i1 %75, label %88, label %76, !dbg !1743

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1632, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %79, metadata !1623, metadata !DIExpression()), !dbg !1675
  %80 = icmp ult i64 %79, %39, !dbg !1744
  br i1 %80, label %81, label %83, !dbg !1747

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1744
  store i8 %77, ptr %82, align 1, !dbg !1744, !tbaa !860
  br label %83, !dbg !1744

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %84, metadata !1623, metadata !DIExpression()), !dbg !1675
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata ptr %85, metadata !1632, metadata !DIExpression()), !dbg !1740
  %86 = load i8, ptr %85, align 1, !dbg !1741, !tbaa !860
  %87 = icmp eq i8 %86, 0, !dbg !1743
  br i1 %87, label %88, label %76, !dbg !1743, !llvm.loop !1749

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %89, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %72, metadata !1625, metadata !DIExpression()), !dbg !1675
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %90, metadata !1626, metadata !DIExpression()), !dbg !1675
  br label %102, !dbg !1753

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1675
  br label %93, !dbg !1754

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  br i1 %36, label %102, label %96, !dbg !1755

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 2, metadata !1617, metadata !DIExpression()), !dbg !1675
  br label %102, !dbg !1756

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 2, metadata !1617, metadata !DIExpression()), !dbg !1675
  br i1 %36, label %102, label %96, !dbg !1756

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1757
  br i1 %98, label %102, label %99, !dbg !1761

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1757, !tbaa !860
  br label %102, !dbg !1757

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1675
  br label %102, !dbg !1762

101:                                              ; preds = %27
  call void @abort() #41, !dbg !1763
  unreachable, !dbg !1763

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1751
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.70, %42 ], [ @.str.10.70, %44 ], [ @.str.10.70, %41 ], [ %33, %27 ], [ @.str.12.71, %96 ], [ @.str.12.71, %99 ], [ @.str.12.71, %95 ], [ @.str.10.70, %40 ], [ @.str.12.71, %93 ], [ @.str.12.71, %92 ], !dbg !1675
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1675
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %108, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %107, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %106, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %105, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %104, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %103, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1764
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
  br label %122, !dbg !1765

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1751
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1679
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1766
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %129, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %125, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %124, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %123, metadata !1616, metadata !DIExpression()), !dbg !1675
  %131 = icmp eq i64 %123, -1, !dbg !1767
  br i1 %131, label %132, label %136, !dbg !1768

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1769
  %134 = load i8, ptr %133, align 1, !dbg !1769, !tbaa !860
  %135 = icmp eq i8 %134, 0, !dbg !1770
  br i1 %135, label %579, label %138, !dbg !1771

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1772
  br i1 %137, label %579, label %138, !dbg !1771

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1773
  br i1 %114, label %139, label %152, !dbg !1774

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1776
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1777
  br i1 %141, label %142, label %144, !dbg !1777

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %143, metadata !1616, metadata !DIExpression()), !dbg !1675
  br label %144, !dbg !1779

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1779
  call void @llvm.dbg.value(metadata i64 %145, metadata !1616, metadata !DIExpression()), !dbg !1675
  %146 = icmp ugt i64 %140, %145, !dbg !1780
  br i1 %146, label %152, label %147, !dbg !1781

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %148, metadata !1783, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata ptr %107, metadata !1786, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i64 %108, metadata !1787, metadata !DIExpression()), !dbg !1788
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1790
  %150 = icmp eq i32 %149, 0, !dbg !1791
  %151 = and i1 %150, %110, !dbg !1792
  br i1 %151, label %630, label %152, !dbg !1792

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %153, metadata !1616, metadata !DIExpression()), !dbg !1675
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1793
  %156 = load i8, ptr %155, align 1, !dbg !1793, !tbaa !860
  call void @llvm.dbg.value(metadata i8 %156, metadata !1644, metadata !DIExpression()), !dbg !1773
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
  ], !dbg !1794

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1795

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1796

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1773
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1800
  br i1 %160, label %177, label %161, !dbg !1800

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1802
  br i1 %162, label %163, label %165, !dbg !1806

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1802
  store i8 39, ptr %164, align 1, !dbg !1802, !tbaa !860
  br label %165, !dbg !1802

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i64 %166, metadata !1623, metadata !DIExpression()), !dbg !1675
  %167 = icmp ult i64 %166, %130, !dbg !1807
  br i1 %167, label %168, label %170, !dbg !1810

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1807
  store i8 36, ptr %169, align 1, !dbg !1807, !tbaa !860
  br label %170, !dbg !1807

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %171, metadata !1623, metadata !DIExpression()), !dbg !1675
  %172 = icmp ult i64 %171, %130, !dbg !1811
  br i1 %172, label %173, label %175, !dbg !1814

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1811
  store i8 39, ptr %174, align 1, !dbg !1811, !tbaa !860
  br label %175, !dbg !1811

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %176, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %177, !dbg !1815

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1675
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %178, metadata !1623, metadata !DIExpression()), !dbg !1675
  %180 = icmp ult i64 %178, %130, !dbg !1816
  br i1 %180, label %181, label %183, !dbg !1819

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1816
  store i8 92, ptr %182, align 1, !dbg !1816, !tbaa !860
  br label %183, !dbg !1816

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %184, metadata !1623, metadata !DIExpression()), !dbg !1675
  br i1 %111, label %185, label %482, !dbg !1820

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1822
  %187 = icmp ult i64 %186, %153, !dbg !1823
  br i1 %187, label %188, label %439, !dbg !1824

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1825
  %190 = load i8, ptr %189, align 1, !dbg !1825, !tbaa !860
  %191 = add i8 %190, -48, !dbg !1826
  %192 = icmp ult i8 %191, 10, !dbg !1826
  br i1 %192, label %193, label %439, !dbg !1826

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1827
  br i1 %194, label %195, label %197, !dbg !1831

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1827
  store i8 48, ptr %196, align 1, !dbg !1827, !tbaa !860
  br label %197, !dbg !1827

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %198, metadata !1623, metadata !DIExpression()), !dbg !1675
  %199 = icmp ult i64 %198, %130, !dbg !1832
  br i1 %199, label %200, label %202, !dbg !1835

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1832
  store i8 48, ptr %201, align 1, !dbg !1832, !tbaa !860
  br label %202, !dbg !1832

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %203, metadata !1623, metadata !DIExpression()), !dbg !1675
  br label %439, !dbg !1836

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1837

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1838

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1839

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1841

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1843
  %210 = icmp ult i64 %209, %153, !dbg !1844
  br i1 %210, label %211, label %439, !dbg !1845

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1846
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1847
  %214 = load i8, ptr %213, align 1, !dbg !1847, !tbaa !860
  %215 = icmp eq i8 %214, 63, !dbg !1848
  br i1 %215, label %216, label %439, !dbg !1849

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1850
  %218 = load i8, ptr %217, align 1, !dbg !1850, !tbaa !860
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
  ], !dbg !1851

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1852

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %209, metadata !1637, metadata !DIExpression()), !dbg !1764
  %221 = icmp ult i64 %124, %130, !dbg !1854
  br i1 %221, label %222, label %224, !dbg !1857

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1854
  store i8 63, ptr %223, align 1, !dbg !1854, !tbaa !860
  br label %224, !dbg !1854

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %225, metadata !1623, metadata !DIExpression()), !dbg !1675
  %226 = icmp ult i64 %225, %130, !dbg !1858
  br i1 %226, label %227, label %229, !dbg !1861

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1858
  store i8 34, ptr %228, align 1, !dbg !1858, !tbaa !860
  br label %229, !dbg !1858

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %230, metadata !1623, metadata !DIExpression()), !dbg !1675
  %231 = icmp ult i64 %230, %130, !dbg !1862
  br i1 %231, label %232, label %234, !dbg !1865

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1862
  store i8 34, ptr %233, align 1, !dbg !1862, !tbaa !860
  br label %234, !dbg !1862

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1865
  call void @llvm.dbg.value(metadata i64 %235, metadata !1623, metadata !DIExpression()), !dbg !1675
  %236 = icmp ult i64 %235, %130, !dbg !1866
  br i1 %236, label %237, label %239, !dbg !1869

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1866
  store i8 63, ptr %238, align 1, !dbg !1866, !tbaa !860
  br label %239, !dbg !1866

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %240, metadata !1623, metadata !DIExpression()), !dbg !1675
  br label %439, !dbg !1870

241:                                              ; preds = %152
  br label %251, !dbg !1871

242:                                              ; preds = %152
  br label %251, !dbg !1872

243:                                              ; preds = %152
  br label %249, !dbg !1873

244:                                              ; preds = %152
  br label %249, !dbg !1874

245:                                              ; preds = %152
  br label %251, !dbg !1875

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1876

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1877

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1880

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1882
  call void @llvm.dbg.label(metadata !1669), !dbg !1883
  br i1 %119, label %621, label %251, !dbg !1884

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1882
  call void @llvm.dbg.label(metadata !1671), !dbg !1886
  br i1 %109, label %493, label %450, !dbg !1887

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1888

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1889, !tbaa !860
  %256 = icmp eq i8 %255, 0, !dbg !1891
  br i1 %256, label %257, label %439, !dbg !1892

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1893
  br i1 %258, label %259, label %439, !dbg !1895

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1773
  br label %260, !dbg !1896

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1773
  br i1 %116, label %262, label %439, !dbg !1897

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1899

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1773
  br i1 %116, label %264, label %439, !dbg !1900

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1901

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1904
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1906
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1906
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %270, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %269, metadata !1624, metadata !DIExpression()), !dbg !1675
  %271 = icmp ult i64 %124, %270, !dbg !1907
  br i1 %271, label %272, label %274, !dbg !1910

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1907
  store i8 39, ptr %273, align 1, !dbg !1907, !tbaa !860
  br label %274, !dbg !1907

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %275, metadata !1623, metadata !DIExpression()), !dbg !1675
  %276 = icmp ult i64 %275, %270, !dbg !1911
  br i1 %276, label %277, label %279, !dbg !1914

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1911
  store i8 92, ptr %278, align 1, !dbg !1911, !tbaa !860
  br label %279, !dbg !1911

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %280, metadata !1623, metadata !DIExpression()), !dbg !1675
  %281 = icmp ult i64 %280, %270, !dbg !1915
  br i1 %281, label %282, label %284, !dbg !1918

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1915
  store i8 39, ptr %283, align 1, !dbg !1915, !tbaa !860
  br label %284, !dbg !1915

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %285, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %439, !dbg !1919

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1920

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1645, metadata !DIExpression()), !dbg !1921
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !1922
  %289 = load ptr, ptr %288, align 8, !dbg !1922, !tbaa !789
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1922
  %292 = load i16, ptr %291, align 2, !dbg !1922, !tbaa !892
  %293 = and i16 %292, 16384, !dbg !1922
  %294 = icmp ne i16 %293, 0, !dbg !1924
  call void @llvm.dbg.value(metadata i1 %294, metadata !1648, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1921
  br label %337, !dbg !1925

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !1926
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1649, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata ptr %14, metadata !1701, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %14, metadata !1709, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()), !dbg !1930
  store i64 0, ptr %14, align 8, !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1921
  %296 = icmp eq i64 %153, -1, !dbg !1933
  br i1 %296, label %297, label %299, !dbg !1935

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %298, metadata !1616, metadata !DIExpression()), !dbg !1675
  br label %299, !dbg !1937

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1773
  call void @llvm.dbg.value(metadata i64 %300, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !1938
  %301 = sub i64 %300, %129, !dbg !1939
  call void @llvm.dbg.value(metadata ptr %15, metadata !1652, metadata !DIExpression(DW_OP_deref)), !dbg !1940
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %302, metadata !1656, metadata !DIExpression()), !dbg !1940
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1942

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  %304 = icmp ugt i64 %300, %129, !dbg !1943
  br i1 %304, label %306, label %332, !dbg !1945

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1921
  br label %332, !dbg !1946

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1645, metadata !DIExpression()), !dbg !1921
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1948
  %310 = load i8, ptr %309, align 1, !dbg !1948, !tbaa !860
  %311 = icmp eq i8 %310, 0, !dbg !1945
  br i1 %311, label %332, label %312, !dbg !1949

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %313, metadata !1645, metadata !DIExpression()), !dbg !1921
  %314 = add i64 %313, %129, !dbg !1951
  %315 = icmp eq i64 %313, %301, !dbg !1943
  br i1 %315, label %332, label %306, !dbg !1945, !llvm.loop !1952

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1953
  %319 = and i1 %318, %110, !dbg !1953
  call void @llvm.dbg.value(metadata i64 1, metadata !1657, metadata !DIExpression()), !dbg !1954
  br i1 %319, label %320, label %328, !dbg !1953

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1657, metadata !DIExpression()), !dbg !1954
  %322 = add i64 %321, %129, !dbg !1955
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1957
  %324 = load i8, ptr %323, align 1, !dbg !1957, !tbaa !860
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1958

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %326, metadata !1657, metadata !DIExpression()), !dbg !1954
  %327 = icmp eq i64 %326, %302, !dbg !1960
  br i1 %327, label %328, label %320, !dbg !1961, !llvm.loop !1962

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1964, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %329, metadata !1652, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %329, metadata !1966, metadata !DIExpression()), !dbg !1974
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !1976
  %331 = icmp ne i32 %330, 0, !dbg !1977
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %302, metadata !1645, metadata !DIExpression()), !dbg !1921
  br label %332, !dbg !1978

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %333, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1979
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1980
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !1979
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !1980
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %336 = select i1 %109, i32 4, i32 2, !dbg !1982
  br label %626, !dbg !1982

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1773
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1984
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %339, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %338, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i1 %340, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1773
  %341 = icmp ult i64 %339, 2, !dbg !1985
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1986
  br i1 %343, label %439, label %344, !dbg !1986

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %345, metadata !1665, metadata !DIExpression()), !dbg !1988
  br label %346, !dbg !1989

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1675
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1764
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1990
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8 %352, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %351, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %349, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %347, metadata !1623, metadata !DIExpression()), !dbg !1675
  br i1 %342, label %397, label %353, !dbg !1991

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1996

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1773
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1999
  br i1 %355, label %372, label %356, !dbg !1999

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2001
  br i1 %357, label %358, label %360, !dbg !2005

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2001
  store i8 39, ptr %359, align 1, !dbg !2001, !tbaa !860
  br label %360, !dbg !2001

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %361, metadata !1623, metadata !DIExpression()), !dbg !1675
  %362 = icmp ult i64 %361, %130, !dbg !2006
  br i1 %362, label %363, label %365, !dbg !2009

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2006
  store i8 36, ptr %364, align 1, !dbg !2006, !tbaa !860
  br label %365, !dbg !2006

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %366, metadata !1623, metadata !DIExpression()), !dbg !1675
  %367 = icmp ult i64 %366, %130, !dbg !2010
  br i1 %367, label %368, label %370, !dbg !2013

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2010
  store i8 39, ptr %369, align 1, !dbg !2010, !tbaa !860
  br label %370, !dbg !2010

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %371, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %372, !dbg !2014

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1675
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %373, metadata !1623, metadata !DIExpression()), !dbg !1675
  %375 = icmp ult i64 %373, %130, !dbg !2015
  br i1 %375, label %376, label %378, !dbg !2018

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2015
  store i8 92, ptr %377, align 1, !dbg !2015, !tbaa !860
  br label %378, !dbg !2015

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %379, metadata !1623, metadata !DIExpression()), !dbg !1675
  %380 = icmp ult i64 %379, %130, !dbg !2019
  br i1 %380, label %381, label %385, !dbg !2022

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2019
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2019
  store i8 %383, ptr %384, align 1, !dbg !2019, !tbaa !860
  br label %385, !dbg !2019

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %386, metadata !1623, metadata !DIExpression()), !dbg !1675
  %387 = icmp ult i64 %386, %130, !dbg !2023
  br i1 %387, label %388, label %393, !dbg !2026

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2023
  %391 = or i8 %390, 48, !dbg !2023
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2023
  store i8 %391, ptr %392, align 1, !dbg !2023, !tbaa !860
  br label %393, !dbg !2023

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %394, metadata !1623, metadata !DIExpression()), !dbg !1675
  %395 = and i8 %352, 7, !dbg !2027
  %396 = or i8 %395, 48, !dbg !2028
  call void @llvm.dbg.value(metadata i8 %396, metadata !1644, metadata !DIExpression()), !dbg !1773
  br label %404, !dbg !2029

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2030

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2031
  br i1 %399, label %400, label %402, !dbg !2036

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2031
  store i8 92, ptr %401, align 1, !dbg !2031, !tbaa !860
  br label %402, !dbg !2031

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %403, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1773
  br label %404, !dbg !2037

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1675
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1773
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1773
  call void @llvm.dbg.value(metadata i8 %409, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %408, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %405, metadata !1623, metadata !DIExpression()), !dbg !1675
  %410 = add i64 %349, 1, !dbg !2038
  %411 = icmp ugt i64 %345, %410, !dbg !2040
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2041

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2042
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2042
  br i1 %415, label %416, label %427, !dbg !2042

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2045
  br i1 %417, label %418, label %420, !dbg !2049

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2045
  store i8 39, ptr %419, align 1, !dbg !2045, !tbaa !860
  br label %420, !dbg !2045

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %421, metadata !1623, metadata !DIExpression()), !dbg !1675
  %422 = icmp ult i64 %421, %130, !dbg !2050
  br i1 %422, label %423, label %425, !dbg !2053

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2050
  store i8 39, ptr %424, align 1, !dbg !2050, !tbaa !860
  br label %425, !dbg !2050

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %426, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %427, !dbg !2054

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2055
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %428, metadata !1623, metadata !DIExpression()), !dbg !1675
  %430 = icmp ult i64 %428, %130, !dbg !2056
  br i1 %430, label %431, label %433, !dbg !2059

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2056
  store i8 %409, ptr %432, align 1, !dbg !2056, !tbaa !860
  br label %433, !dbg !2056

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %434, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %410, metadata !1637, metadata !DIExpression()), !dbg !1764
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2060
  %436 = load i8, ptr %435, align 1, !dbg !2060, !tbaa !860
  call void @llvm.dbg.value(metadata i8 %436, metadata !1644, metadata !DIExpression()), !dbg !1773
  br label %346, !dbg !2061, !llvm.loop !2062

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i1 %340, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1773
  call void @llvm.dbg.value(metadata i8 %408, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %349, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %405, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %338, metadata !1616, metadata !DIExpression()), !dbg !1675
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2065
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1675
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1679
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1764
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1773
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %448, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %445, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %442, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %441, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %440, metadata !1616, metadata !DIExpression()), !dbg !1675
  br i1 %112, label %461, label %450, !dbg !2066

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
  br i1 %121, label %462, label %482, !dbg !2068

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2069

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
  %473 = lshr i8 %464, 5, !dbg !2070
  %474 = zext i8 %473 to i64, !dbg !2070
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2071
  %476 = load i32, ptr %475, align 4, !dbg !2071, !tbaa !851
  %477 = and i8 %464, 31, !dbg !2072
  %478 = zext i8 %477 to i32, !dbg !2072
  %479 = shl nuw i32 1, %478, !dbg !2073
  %480 = and i32 %476, %479, !dbg !2073
  %481 = icmp eq i32 %480, 0, !dbg !2073
  br i1 %481, label %482, label %493, !dbg !2074

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
  br i1 %154, label %493, label %529, !dbg !2075

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2065
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1675
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1679
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2076
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1773
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %501, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %499, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %496, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %495, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %494, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1672), !dbg !2077
  br i1 %110, label %621, label %503, !dbg !2078

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1773
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2080
  br i1 %504, label %521, label %505, !dbg !2080

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2082
  br i1 %506, label %507, label %509, !dbg !2086

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2082
  store i8 39, ptr %508, align 1, !dbg !2082, !tbaa !860
  br label %509, !dbg !2082

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %510, metadata !1623, metadata !DIExpression()), !dbg !1675
  %511 = icmp ult i64 %510, %502, !dbg !2087
  br i1 %511, label %512, label %514, !dbg !2090

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2087
  store i8 36, ptr %513, align 1, !dbg !2087, !tbaa !860
  br label %514, !dbg !2087

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %515, metadata !1623, metadata !DIExpression()), !dbg !1675
  %516 = icmp ult i64 %515, %502, !dbg !2091
  br i1 %516, label %517, label %519, !dbg !2094

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2091
  store i8 39, ptr %518, align 1, !dbg !2091, !tbaa !860
  br label %519, !dbg !2091

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %520, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %521, !dbg !2095

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1773
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %522, metadata !1623, metadata !DIExpression()), !dbg !1675
  %524 = icmp ult i64 %522, %502, !dbg !2096
  br i1 %524, label %525, label %527, !dbg !2099

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2096
  store i8 92, ptr %526, align 1, !dbg !2096, !tbaa !860
  br label %527, !dbg !2096

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %502, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %501, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %499, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %496, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %528, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %494, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1673), !dbg !2100
  br label %553, !dbg !2101

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2065
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1675
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1679
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2076
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2104
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %538, metadata !1644, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %535, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %532, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %531, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %530, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1673), !dbg !2100
  %540 = xor i1 %534, true, !dbg !2101
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2101
  br i1 %541, label %553, label %542, !dbg !2101

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2105
  br i1 %543, label %544, label %546, !dbg !2109

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2105
  store i8 39, ptr %545, align 1, !dbg !2105, !tbaa !860
  br label %546, !dbg !2105

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %547, metadata !1623, metadata !DIExpression()), !dbg !1675
  %548 = icmp ult i64 %547, %539, !dbg !2110
  br i1 %548, label %549, label %551, !dbg !2113

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2110
  store i8 39, ptr %550, align 1, !dbg !2110, !tbaa !860
  br label %551, !dbg !2110

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2113
  call void @llvm.dbg.value(metadata i64 %552, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %553, !dbg !2114

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1773
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %561, metadata !1623, metadata !DIExpression()), !dbg !1675
  %563 = icmp ult i64 %561, %554, !dbg !2115
  br i1 %563, label %564, label %566, !dbg !2118

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2115
  store i8 %555, ptr %565, align 1, !dbg !2115, !tbaa !860
  br label %566, !dbg !2115

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %567, metadata !1623, metadata !DIExpression()), !dbg !1675
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2119
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  br label %569, !dbg !2120

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2065
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1675
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1679
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2076
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %576, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %572, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %571, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %570, metadata !1616, metadata !DIExpression()), !dbg !1675
  %578 = add i64 %576, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %578, metadata !1637, metadata !DIExpression()), !dbg !1764
  br label %122, !dbg !2122, !llvm.loop !2123

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %125, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %124, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %123, metadata !1616, metadata !DIExpression()), !dbg !1675
  %580 = icmp ne i64 %124, 0, !dbg !2125
  %581 = xor i1 %110, true, !dbg !2127
  %582 = or i1 %580, %581, !dbg !2127
  %583 = or i1 %582, %111, !dbg !2127
  br i1 %583, label %584, label %621, !dbg !2127

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2128
  %586 = xor i1 %126, true, !dbg !2128
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2128
  br i1 %587, label %595, label %588, !dbg !2128

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2130

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2132
  br label %636, !dbg !2134

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2135
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2137
  br i1 %594, label %27, label %595, !dbg !2137

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2138
  %598 = or i1 %597, %596, !dbg !2140
  br i1 %598, label %614, label %599, !dbg !2140

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %124, metadata !1623, metadata !DIExpression()), !dbg !1675
  %600 = load i8, ptr %107, align 1, !dbg !2141, !tbaa !860
  %601 = icmp eq i8 %600, 0, !dbg !2144
  br i1 %601, label %614, label %602, !dbg !2144

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %605, metadata !1623, metadata !DIExpression()), !dbg !1675
  %606 = icmp ult i64 %605, %130, !dbg !2145
  br i1 %606, label %607, label %609, !dbg !2148

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2145
  store i8 %603, ptr %608, align 1, !dbg !2145, !tbaa !860
  br label %609, !dbg !2145

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %610, metadata !1623, metadata !DIExpression()), !dbg !1675
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %611, metadata !1625, metadata !DIExpression()), !dbg !1675
  %612 = load i8, ptr %611, align 1, !dbg !2141, !tbaa !860
  %613 = icmp eq i8 %612, 0, !dbg !2144
  br i1 %613, label %614, label %602, !dbg !2144, !llvm.loop !2150

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %615, metadata !1623, metadata !DIExpression()), !dbg !1675
  %616 = icmp ult i64 %615, %130, !dbg !2152
  br i1 %616, label %617, label %636, !dbg !2154

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2155
  store i8 0, ptr %618, align 1, !dbg !2156, !tbaa !860
  br label %636, !dbg !2155

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %620 = icmp eq i32 %103, 2, !dbg !2157
  br i1 %620, label %626, label %630, !dbg !1982

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %624 = icmp eq i32 %103, 2, !dbg !2157
  %625 = select i1 %109, i32 4, i32 2, !dbg !1982
  br i1 %624, label %626, label %630, !dbg !1982

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1982

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1617, metadata !DIExpression()), !dbg !1675
  %634 = and i32 %5, -3, !dbg !2158
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2159
  br label %636, !dbg !2160

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2161
}

; Function Attrs: nounwind
declare !dbg !2162 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2165 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2168 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2170 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %1, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata ptr %2, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata ptr %0, metadata !2178, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i64 %1, metadata !2183, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr null, metadata !2184, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %2, metadata !2185, metadata !DIExpression()), !dbg !2191
  %4 = icmp eq ptr %2, null, !dbg !2193
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %5, metadata !2186, metadata !DIExpression()), !dbg !2191
  %6 = tail call ptr @__errno_location() #42, !dbg !2194
  %7 = load i32, ptr %6, align 4, !dbg !2194, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %7, metadata !2187, metadata !DIExpression()), !dbg !2191
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2195
  %9 = load i32, ptr %8, align 4, !dbg !2195, !tbaa !1557
  %10 = or i32 %9, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %10, metadata !2188, metadata !DIExpression()), !dbg !2191
  %11 = load i32, ptr %5, align 8, !dbg !2197, !tbaa !1507
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2198
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2199
  %14 = load ptr, ptr %13, align 8, !dbg !2199, !tbaa !1578
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2200
  %16 = load ptr, ptr %15, align 8, !dbg !2200, !tbaa !1581
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2201
  %18 = add i64 %17, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %18, metadata !2189, metadata !DIExpression()), !dbg !2191
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2203
  call void @llvm.dbg.value(metadata ptr %19, metadata !2190, metadata !DIExpression()), !dbg !2191
  %20 = load i32, ptr %5, align 8, !dbg !2204, !tbaa !1507
  %21 = load ptr, ptr %13, align 8, !dbg !2205, !tbaa !1578
  %22 = load ptr, ptr %15, align 8, !dbg !2206, !tbaa !1581
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2207
  store i32 %7, ptr %6, align 4, !dbg !2208, !tbaa !851
  ret ptr %19, !dbg !2209
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2179 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2178, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2183, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr %2, metadata !2184, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr %3, metadata !2185, metadata !DIExpression()), !dbg !2210
  %5 = icmp eq ptr %3, null, !dbg !2211
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2211
  call void @llvm.dbg.value(metadata ptr %6, metadata !2186, metadata !DIExpression()), !dbg !2210
  %7 = tail call ptr @__errno_location() #42, !dbg !2212
  %8 = load i32, ptr %7, align 4, !dbg !2212, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %8, metadata !2187, metadata !DIExpression()), !dbg !2210
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2213
  %10 = load i32, ptr %9, align 4, !dbg !2213, !tbaa !1557
  %11 = icmp eq ptr %2, null, !dbg !2214
  %12 = zext i1 %11 to i32, !dbg !2214
  %13 = or i32 %10, %12, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %13, metadata !2188, metadata !DIExpression()), !dbg !2210
  %14 = load i32, ptr %6, align 8, !dbg !2216, !tbaa !1507
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2217
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2218
  %17 = load ptr, ptr %16, align 8, !dbg !2218, !tbaa !1578
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2219
  %19 = load ptr, ptr %18, align 8, !dbg !2219, !tbaa !1581
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2220
  %21 = add i64 %20, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %21, metadata !2189, metadata !DIExpression()), !dbg !2210
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2222
  call void @llvm.dbg.value(metadata ptr %22, metadata !2190, metadata !DIExpression()), !dbg !2210
  %23 = load i32, ptr %6, align 8, !dbg !2223, !tbaa !1507
  %24 = load ptr, ptr %16, align 8, !dbg !2224, !tbaa !1578
  %25 = load ptr, ptr %18, align 8, !dbg !2225, !tbaa !1581
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2226
  store i32 %8, ptr %7, align 4, !dbg !2227, !tbaa !851
  br i1 %11, label %28, label %27, !dbg !2228

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2229, !tbaa !2231
  br label %28, !dbg !2232

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2233
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2234 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2239, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %1, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2241
  %2 = load i32, ptr @nslots, align 4, !tbaa !851
  call void @llvm.dbg.value(metadata i32 1, metadata !2237, metadata !DIExpression()), !dbg !2241
  %3 = icmp sgt i32 %2, 1, !dbg !2242
  br i1 %3, label %4, label %6, !dbg !2244

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2242
  br label %10, !dbg !2244

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2245
  %8 = load ptr, ptr %7, align 8, !dbg !2245, !tbaa !2247
  %9 = icmp eq ptr %8, @slot0, !dbg !2249
  br i1 %9, label %17, label %16, !dbg !2250

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2237, metadata !DIExpression()), !dbg !2241
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2251
  %13 = load ptr, ptr %12, align 8, !dbg !2251, !tbaa !2247
  tail call void @free(ptr noundef %13) #39, !dbg !2252
  %14 = add nuw nsw i64 %11, 1, !dbg !2253
  call void @llvm.dbg.value(metadata i64 %14, metadata !2237, metadata !DIExpression()), !dbg !2241
  %15 = icmp eq i64 %14, %5, !dbg !2242
  br i1 %15, label %6, label %10, !dbg !2244, !llvm.loop !2254

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2256
  store i64 256, ptr @slotvec0, align 8, !dbg !2258, !tbaa !2259
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2260, !tbaa !2247
  br label %17, !dbg !2261

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2262
  br i1 %18, label %20, label %19, !dbg !2264

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2265
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2267, !tbaa !789
  br label %20, !dbg !2268

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2269, !tbaa !851
  ret void, !dbg !2270
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2271 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2274 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata ptr %1, metadata !2277, metadata !DIExpression()), !dbg !2278
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2279
  ret ptr %3, !dbg !2280
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2281 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2285, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %1, metadata !2286, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %2, metadata !2287, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %3, metadata !2288, metadata !DIExpression()), !dbg !2301
  %6 = tail call ptr @__errno_location() #42, !dbg !2302
  %7 = load i32, ptr %6, align 4, !dbg !2302, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %7, metadata !2289, metadata !DIExpression()), !dbg !2301
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2303, !tbaa !789
  call void @llvm.dbg.value(metadata ptr %8, metadata !2290, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2291, metadata !DIExpression()), !dbg !2301
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2304
  br i1 %9, label %10, label %11, !dbg !2304

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2306
  unreachable, !dbg !2306

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2307, !tbaa !851
  %13 = icmp sgt i32 %12, %0, !dbg !2308
  br i1 %13, label %32, label %14, !dbg !2309

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2310
  call void @llvm.dbg.value(metadata i1 %15, metadata !2292, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2311
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2312
  %16 = sext i32 %12 to i64, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %16, metadata !2295, metadata !DIExpression()), !dbg !2311
  store i64 %16, ptr %5, align 8, !dbg !2314, !tbaa !2231
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2315
  %18 = add nuw nsw i32 %0, 1, !dbg !2316
  %19 = sub i32 %18, %12, !dbg !2317
  %20 = sext i32 %19 to i64, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %5, metadata !2295, metadata !DIExpression(DW_OP_deref)), !dbg !2311
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %21, metadata !2290, metadata !DIExpression()), !dbg !2301
  store ptr %21, ptr @slotvec, align 8, !dbg !2320, !tbaa !789
  br i1 %15, label %22, label %23, !dbg !2321

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2322, !tbaa.struct !2324
  br label %23, !dbg !2325

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2326, !tbaa !851
  %25 = sext i32 %24 to i64, !dbg !2327
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2327
  %27 = load i64, ptr %5, align 8, !dbg !2328, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %27, metadata !2295, metadata !DIExpression()), !dbg !2311
  %28 = sub nsw i64 %27, %25, !dbg !2329
  %29 = shl i64 %28, 4, !dbg !2330
  call void @llvm.dbg.value(metadata ptr %26, metadata !1709, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %29, metadata !1713, metadata !DIExpression()), !dbg !2331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2333
  %30 = load i64, ptr %5, align 8, !dbg !2334, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %30, metadata !2295, metadata !DIExpression()), !dbg !2311
  %31 = trunc i64 %30 to i32, !dbg !2334
  store i32 %31, ptr @nslots, align 4, !dbg !2335, !tbaa !851
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2336
  br label %32, !dbg !2337

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2301
  call void @llvm.dbg.value(metadata ptr %33, metadata !2290, metadata !DIExpression()), !dbg !2301
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2338
  %36 = load i64, ptr %35, align 8, !dbg !2339, !tbaa !2259
  call void @llvm.dbg.value(metadata i64 %36, metadata !2296, metadata !DIExpression()), !dbg !2340
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2341
  %38 = load ptr, ptr %37, align 8, !dbg !2341, !tbaa !2247
  call void @llvm.dbg.value(metadata ptr %38, metadata !2298, metadata !DIExpression()), !dbg !2340
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2342
  %40 = load i32, ptr %39, align 4, !dbg !2342, !tbaa !1557
  %41 = or i32 %40, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %41, metadata !2299, metadata !DIExpression()), !dbg !2340
  %42 = load i32, ptr %3, align 8, !dbg !2344, !tbaa !1507
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2345
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2346
  %45 = load ptr, ptr %44, align 8, !dbg !2346, !tbaa !1578
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2347
  %47 = load ptr, ptr %46, align 8, !dbg !2347, !tbaa !1581
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2348
  call void @llvm.dbg.value(metadata i64 %48, metadata !2300, metadata !DIExpression()), !dbg !2340
  %49 = icmp ugt i64 %36, %48, !dbg !2349
  br i1 %49, label %60, label %50, !dbg !2351

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2352
  call void @llvm.dbg.value(metadata i64 %51, metadata !2296, metadata !DIExpression()), !dbg !2340
  store i64 %51, ptr %35, align 8, !dbg !2354, !tbaa !2259
  %52 = icmp eq ptr %38, @slot0, !dbg !2355
  br i1 %52, label %54, label %53, !dbg !2357

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2358
  br label %54, !dbg !2358

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %55, metadata !2298, metadata !DIExpression()), !dbg !2340
  store ptr %55, ptr %37, align 8, !dbg !2360, !tbaa !2247
  %56 = load i32, ptr %3, align 8, !dbg !2361, !tbaa !1507
  %57 = load ptr, ptr %44, align 8, !dbg !2362, !tbaa !1578
  %58 = load ptr, ptr %46, align 8, !dbg !2363, !tbaa !1581
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2364
  br label %60, !dbg !2365

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2340
  call void @llvm.dbg.value(metadata ptr %61, metadata !2298, metadata !DIExpression()), !dbg !2340
  store i32 %7, ptr %6, align 4, !dbg !2366, !tbaa !851
  ret ptr %61, !dbg !2367
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2368 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %1, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %2, metadata !2374, metadata !DIExpression()), !dbg !2375
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2376
  ret ptr %4, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2378 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2276, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %0, metadata !2277, metadata !DIExpression()), !dbg !2382
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2384
  ret ptr %2, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2386 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %0, metadata !2373, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1, metadata !2374, metadata !DIExpression()), !dbg !2393
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2395
  ret ptr %3, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2397 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata ptr %2, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2404, metadata !DIExpression()), !dbg !2407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2420, !alias.scope !2408
  %5 = icmp eq i32 %1, 10, !dbg !2421
  br i1 %5, label %6, label %7, !dbg !2423

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2424, !noalias !2408
  unreachable, !dbg !2424

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2425, !tbaa !1507, !alias.scope !2408
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2426
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2427
  ret ptr %8, !dbg !2428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2429 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %1, metadata !2434, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata ptr %2, metadata !2435, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %3, metadata !2436, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2437, metadata !DIExpression()), !dbg !2440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441), !dbg !2444
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2417, metadata !DIExpression()), !dbg !2447
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2447, !alias.scope !2441
  %6 = icmp eq i32 %1, 10, !dbg !2448
  br i1 %6, label %7, label %8, !dbg !2449

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2450, !noalias !2441
  unreachable, !dbg !2450

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2451, !tbaa !1507, !alias.scope !2441
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2452
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2453
  ret ptr %9, !dbg !2454
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2455 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %1, metadata !2460, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %0, metadata !2402, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %1, metadata !2403, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2404, metadata !DIExpression()), !dbg !2465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2417, metadata !DIExpression()), !dbg !2472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2472, !alias.scope !2466
  %4 = icmp eq i32 %0, 10, !dbg !2473
  br i1 %4, label %5, label %6, !dbg !2474

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !2475, !noalias !2466
  unreachable, !dbg !2475

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2476, !tbaa !1507, !alias.scope !2466
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2477
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2478
  ret ptr %7, !dbg !2479
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2480 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2484, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr %1, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %2, metadata !2486, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 0, metadata !2433, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata ptr %1, metadata !2435, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %2, metadata !2436, metadata !DIExpression()), !dbg !2488
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2490
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2437, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2498
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2498, !alias.scope !2492
  %5 = icmp eq i32 %0, 10, !dbg !2499
  br i1 %5, label %6, label %7, !dbg !2500

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2501, !noalias !2492
  unreachable, !dbg !2501

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2502, !tbaa !1507, !alias.scope !2492
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2503
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2504
  ret ptr %8, !dbg !2505
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2506 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %2, metadata !2512, metadata !DIExpression()), !dbg !2514
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2515
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2517, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 %2, metadata !1525, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2519
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2521
  %6 = lshr i8 %2, 5, !dbg !2522
  %7 = zext i8 %6 to i64, !dbg !2522
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2523
  call void @llvm.dbg.value(metadata ptr %8, metadata !1528, metadata !DIExpression()), !dbg !2519
  %9 = and i8 %2, 31, !dbg !2524
  %10 = zext i8 %9 to i32, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %10, metadata !1530, metadata !DIExpression()), !dbg !2519
  %11 = load i32, ptr %8, align 4, !dbg !2525, !tbaa !851
  %12 = lshr i32 %11, %10, !dbg !2526
  call void @llvm.dbg.value(metadata i32 %12, metadata !1531, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2519
  %13 = and i32 %12, 1, !dbg !2527
  %14 = xor i32 %13, 1, !dbg !2527
  %15 = shl nuw i32 %14, %10, !dbg !2528
  %16 = xor i32 %15, %11, !dbg !2529
  store i32 %16, ptr %8, align 4, !dbg !2529, !tbaa !851
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2530
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2531
  ret ptr %17, !dbg !2532
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2533 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %1, metadata !2538, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 -1, metadata !2511, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %1, metadata !2512, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2513, metadata !DIExpression()), !dbg !2543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2544, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %3, metadata !1524, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !2545
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2547
  %5 = lshr i8 %1, 5, !dbg !2548
  %6 = zext i8 %5 to i64, !dbg !2548
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2549
  call void @llvm.dbg.value(metadata ptr %7, metadata !1528, metadata !DIExpression()), !dbg !2545
  %8 = and i8 %1, 31, !dbg !2550
  %9 = zext i8 %8 to i32, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %9, metadata !1530, metadata !DIExpression()), !dbg !2545
  %10 = load i32, ptr %7, align 4, !dbg !2551, !tbaa !851
  %11 = lshr i32 %10, %9, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %11, metadata !1531, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2545
  %12 = and i32 %11, 1, !dbg !2553
  %13 = xor i32 %12, 1, !dbg !2553
  %14 = shl nuw i32 %13, %9, !dbg !2554
  %15 = xor i32 %14, %10, !dbg !2555
  store i32 %15, ptr %7, align 4, !dbg !2555, !tbaa !851
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2556
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2557
  ret ptr %16, !dbg !2558
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2559 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2561, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %0, metadata !2537, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !2538, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i64 -1, metadata !2511, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 58, metadata !2512, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !2567
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2513, metadata !DIExpression()), !dbg !2568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2569, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %2, metadata !1524, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2570
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2572
  call void @llvm.dbg.value(metadata ptr %3, metadata !1528, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2570
  %4 = load i32, ptr %3, align 4, !dbg !2573, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %4, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2570
  %5 = or i32 %4, 67108864, !dbg !2574
  store i32 %5, ptr %3, align 4, !dbg !2574, !tbaa !851
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2575
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !2576
  ret ptr %6, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2578 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 58, metadata !2512, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !2585
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2513, metadata !DIExpression()), !dbg !2586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2587, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %3, metadata !1524, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2588
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2588
  %5 = load i32, ptr %4, align 4, !dbg !2591, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %5, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2588
  %6 = or i32 %5, 67108864, !dbg !2592
  store i32 %6, ptr %4, align 4, !dbg !2592, !tbaa !851
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2593
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !2594
  ret ptr %7, !dbg !2595
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2596 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2602
  call void @llvm.dbg.value(metadata i32 %0, metadata !2598, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2599, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2605
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2607
  %5 = icmp eq i32 %1, 10, !dbg !2608
  br i1 %5, label %6, label %7, !dbg !2609

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2610, !noalias !2611
  unreachable, !dbg !2610

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2607
  store i32 %1, ptr %4, align 8, !dbg !2614, !tbaa.struct !2518
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2614
  call void @llvm.dbg.value(metadata ptr %4, metadata !1524, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2615
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2617
  call void @llvm.dbg.value(metadata ptr %9, metadata !1528, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2615
  %10 = load i32, ptr %9, align 4, !dbg !2618, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %10, metadata !1531, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2615
  %11 = or i32 %10, 67108864, !dbg !2619
  store i32 %11, ptr %9, align 4, !dbg !2619, !tbaa !851
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2620
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2621
  ret ptr %12, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2623 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %3, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %2, metadata !2638, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %3, metadata !2639, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()), !dbg !2642
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2644
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2646, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2647
  store i32 10, ptr %5, align 8, !dbg !2649, !tbaa !1507
  %6 = icmp ne ptr %1, null, !dbg !2650
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2651
  br i1 %8, label %10, label %9, !dbg !2651

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2652
  unreachable, !dbg !2652

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2653
  store ptr %1, ptr %11, align 8, !dbg !2654, !tbaa !1578
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2655
  store ptr %2, ptr %12, align 8, !dbg !2656, !tbaa !1581
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2657
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2658
  ret ptr %13, !dbg !2659
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2633 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2632, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %2, metadata !2638, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata ptr %3, metadata !2639, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i64 %4, metadata !2640, metadata !DIExpression()), !dbg !2660
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !2661
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2641, metadata !DIExpression()), !dbg !2662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2663, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %6, metadata !1564, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !1565, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %6, metadata !1564, metadata !DIExpression()), !dbg !2664
  store i32 10, ptr %6, align 8, !dbg !2666, !tbaa !1507
  %7 = icmp ne ptr %1, null, !dbg !2667
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2668
  br i1 %9, label %11, label %10, !dbg !2668

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !2669
  unreachable, !dbg !2669

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2670
  store ptr %1, ptr %12, align 8, !dbg !2671, !tbaa !1578
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2672
  store ptr %2, ptr %13, align 8, !dbg !2673, !tbaa !1581
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !2675
  ret ptr %14, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2677 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %1, metadata !2682, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %0, metadata !2628, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2632, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 -1, metadata !2640, metadata !DIExpression()), !dbg !2687
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2641, metadata !DIExpression()), !dbg !2690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2691, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !2692
  store i32 10, ptr %4, align 8, !dbg !2694, !tbaa !1507
  %5 = icmp ne ptr %0, null, !dbg !2695
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2696
  br i1 %7, label %9, label %8, !dbg !2696

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2697
  unreachable, !dbg !2697

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2698
  store ptr %0, ptr %10, align 8, !dbg !2699, !tbaa !1578
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2700
  store ptr %1, ptr %11, align 8, !dbg !2701, !tbaa !1581
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2702
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2703
  ret ptr %12, !dbg !2704
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2705 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2709, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %1, metadata !2710, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %2, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 %3, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2632, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %0, metadata !2637, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %3, metadata !2640, metadata !DIExpression()), !dbg !2714
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2716
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2641, metadata !DIExpression()), !dbg !2717
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2718, !tbaa.struct !2518
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %5, metadata !1564, metadata !DIExpression()), !dbg !2719
  store i32 10, ptr %5, align 8, !dbg !2721, !tbaa !1507
  %6 = icmp ne ptr %0, null, !dbg !2722
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2723
  br i1 %8, label %10, label %9, !dbg !2723

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2724
  unreachable, !dbg !2724

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2725
  store ptr %0, ptr %11, align 8, !dbg !2726, !tbaa !1578
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2727
  store ptr %1, ptr %12, align 8, !dbg !2728, !tbaa !1581
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2729
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2730
  ret ptr %13, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2736, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %1, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 %2, metadata !2738, metadata !DIExpression()), !dbg !2739
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2740
  ret ptr %4, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2736, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %0, metadata !2737, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2738, metadata !DIExpression()), !dbg !2749
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2751
  ret ptr %3, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2753 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2757, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %1, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 %0, metadata !2736, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata ptr %1, metadata !2737, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 -1, metadata !2738, metadata !DIExpression()), !dbg !2760
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2762
  ret ptr %3, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i32 0, metadata !2757, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2736, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata ptr %0, metadata !2737, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 -1, metadata !2738, metadata !DIExpression()), !dbg !2772
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2774
  ret ptr %2, !dbg !2775
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2776 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %1, metadata !2816, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %2, metadata !2817, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %3, metadata !2818, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i64 %5, metadata !2820, metadata !DIExpression()), !dbg !2821
  %7 = icmp eq ptr %1, null, !dbg !2822
  br i1 %7, label %10, label %8, !dbg !2824

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !2825
  br label %12, !dbg !2825

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.75, ptr noundef %2, ptr noundef %3) #39, !dbg !2826
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.3.77, i32 noundef 5) #39, !dbg !2827
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !2827
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2828
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.5.79, i32 noundef 5) #39, !dbg !2829
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.80) #39, !dbg !2829
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %0), !dbg !2830
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
  ], !dbg !2831

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.7.81, i32 noundef 5) #39, !dbg !2832
  %21 = load ptr, ptr %4, align 8, !dbg !2832, !tbaa !789
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !2832
  br label %147, !dbg !2834

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.8.82, i32 noundef 5) #39, !dbg !2835
  %25 = load ptr, ptr %4, align 8, !dbg !2835, !tbaa !789
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2835
  %27 = load ptr, ptr %26, align 8, !dbg !2835, !tbaa !789
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !2835
  br label %147, !dbg !2836

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.9.83, i32 noundef 5) #39, !dbg !2837
  %31 = load ptr, ptr %4, align 8, !dbg !2837, !tbaa !789
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2837
  %33 = load ptr, ptr %32, align 8, !dbg !2837, !tbaa !789
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2837
  %35 = load ptr, ptr %34, align 8, !dbg !2837, !tbaa !789
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !2837
  br label %147, !dbg !2838

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.10.84, i32 noundef 5) #39, !dbg !2839
  %39 = load ptr, ptr %4, align 8, !dbg !2839, !tbaa !789
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2839
  %41 = load ptr, ptr %40, align 8, !dbg !2839, !tbaa !789
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2839
  %43 = load ptr, ptr %42, align 8, !dbg !2839, !tbaa !789
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2839
  %45 = load ptr, ptr %44, align 8, !dbg !2839, !tbaa !789
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !2839
  br label %147, !dbg !2840

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.11.85, i32 noundef 5) #39, !dbg !2841
  %49 = load ptr, ptr %4, align 8, !dbg !2841, !tbaa !789
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2841
  %51 = load ptr, ptr %50, align 8, !dbg !2841, !tbaa !789
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2841
  %53 = load ptr, ptr %52, align 8, !dbg !2841, !tbaa !789
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2841
  %55 = load ptr, ptr %54, align 8, !dbg !2841, !tbaa !789
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2841
  %57 = load ptr, ptr %56, align 8, !dbg !2841, !tbaa !789
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !2841
  br label %147, !dbg !2842

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.12.86, i32 noundef 5) #39, !dbg !2843
  %61 = load ptr, ptr %4, align 8, !dbg !2843, !tbaa !789
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2843
  %63 = load ptr, ptr %62, align 8, !dbg !2843, !tbaa !789
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2843
  %65 = load ptr, ptr %64, align 8, !dbg !2843, !tbaa !789
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2843
  %67 = load ptr, ptr %66, align 8, !dbg !2843, !tbaa !789
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2843
  %69 = load ptr, ptr %68, align 8, !dbg !2843, !tbaa !789
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2843
  %71 = load ptr, ptr %70, align 8, !dbg !2843, !tbaa !789
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !2843
  br label %147, !dbg !2844

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.13.87, i32 noundef 5) #39, !dbg !2845
  %75 = load ptr, ptr %4, align 8, !dbg !2845, !tbaa !789
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2845
  %77 = load ptr, ptr %76, align 8, !dbg !2845, !tbaa !789
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2845
  %79 = load ptr, ptr %78, align 8, !dbg !2845, !tbaa !789
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2845
  %81 = load ptr, ptr %80, align 8, !dbg !2845, !tbaa !789
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2845
  %83 = load ptr, ptr %82, align 8, !dbg !2845, !tbaa !789
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2845
  %85 = load ptr, ptr %84, align 8, !dbg !2845, !tbaa !789
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2845
  %87 = load ptr, ptr %86, align 8, !dbg !2845, !tbaa !789
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !2845
  br label %147, !dbg !2846

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.14.88, i32 noundef 5) #39, !dbg !2847
  %91 = load ptr, ptr %4, align 8, !dbg !2847, !tbaa !789
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2847
  %93 = load ptr, ptr %92, align 8, !dbg !2847, !tbaa !789
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2847
  %95 = load ptr, ptr %94, align 8, !dbg !2847, !tbaa !789
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2847
  %97 = load ptr, ptr %96, align 8, !dbg !2847, !tbaa !789
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2847
  %99 = load ptr, ptr %98, align 8, !dbg !2847, !tbaa !789
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2847
  %101 = load ptr, ptr %100, align 8, !dbg !2847, !tbaa !789
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2847
  %103 = load ptr, ptr %102, align 8, !dbg !2847, !tbaa !789
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2847
  %105 = load ptr, ptr %104, align 8, !dbg !2847, !tbaa !789
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !2847
  br label %147, !dbg !2848

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.15.89, i32 noundef 5) #39, !dbg !2849
  %109 = load ptr, ptr %4, align 8, !dbg !2849, !tbaa !789
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2849
  %111 = load ptr, ptr %110, align 8, !dbg !2849, !tbaa !789
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2849
  %113 = load ptr, ptr %112, align 8, !dbg !2849, !tbaa !789
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2849
  %115 = load ptr, ptr %114, align 8, !dbg !2849, !tbaa !789
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2849
  %117 = load ptr, ptr %116, align 8, !dbg !2849, !tbaa !789
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2849
  %119 = load ptr, ptr %118, align 8, !dbg !2849, !tbaa !789
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2849
  %121 = load ptr, ptr %120, align 8, !dbg !2849, !tbaa !789
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2849
  %123 = load ptr, ptr %122, align 8, !dbg !2849, !tbaa !789
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2849
  %125 = load ptr, ptr %124, align 8, !dbg !2849, !tbaa !789
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !2849
  br label %147, !dbg !2850

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.16.90, i32 noundef 5) #39, !dbg !2851
  %129 = load ptr, ptr %4, align 8, !dbg !2851, !tbaa !789
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2851
  %131 = load ptr, ptr %130, align 8, !dbg !2851, !tbaa !789
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2851
  %133 = load ptr, ptr %132, align 8, !dbg !2851, !tbaa !789
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2851
  %135 = load ptr, ptr %134, align 8, !dbg !2851, !tbaa !789
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2851
  %137 = load ptr, ptr %136, align 8, !dbg !2851, !tbaa !789
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2851
  %139 = load ptr, ptr %138, align 8, !dbg !2851, !tbaa !789
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2851
  %141 = load ptr, ptr %140, align 8, !dbg !2851, !tbaa !789
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2851
  %143 = load ptr, ptr %142, align 8, !dbg !2851, !tbaa !789
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2851
  %145 = load ptr, ptr %144, align 8, !dbg !2851, !tbaa !789
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !2851
  br label %147, !dbg !2852

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2853
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2854 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %1, metadata !2859, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %3, metadata !2861, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %4, metadata !2862, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 0, metadata !2863, metadata !DIExpression()), !dbg !2864
  br label %6, !dbg !2865

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2867
  call void @llvm.dbg.value(metadata i64 %7, metadata !2863, metadata !DIExpression()), !dbg !2864
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2868
  %9 = load ptr, ptr %8, align 8, !dbg !2868, !tbaa !789
  %10 = icmp eq ptr %9, null, !dbg !2870
  %11 = add i64 %7, 1, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %11, metadata !2863, metadata !DIExpression()), !dbg !2864
  br i1 %10, label %12, label %6, !dbg !2870, !llvm.loop !2872

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2874
  ret void, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2876 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2891, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %1, metadata !2892, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %2, metadata !2893, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata ptr %3, metadata !2894, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !2901
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 0, metadata !2896, metadata !DIExpression()), !dbg !2899
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2896, metadata !DIExpression()), !dbg !2899
  %10 = icmp sgt i32 %9, -1, !dbg !2903
  br i1 %10, label %18, label %11, !dbg !2903

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2903
  store i32 %12, ptr %7, align 8, !dbg !2903
  %13 = icmp ult i32 %9, -7, !dbg !2903
  br i1 %13, label %14, label %18, !dbg !2903

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2903
  %16 = sext i32 %9 to i64, !dbg !2903
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2903
  br label %22, !dbg !2903

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2903
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2903
  store ptr %21, ptr %4, align 8, !dbg !2903
  br label %22, !dbg !2903

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2903
  %25 = load ptr, ptr %24, align 8, !dbg !2903
  store ptr %25, ptr %6, align 8, !dbg !2906, !tbaa !789
  %26 = icmp eq ptr %25, null, !dbg !2907
  br i1 %26, label %197, label %27, !dbg !2908

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 1, metadata !2896, metadata !DIExpression()), !dbg !2899
  %28 = icmp sgt i32 %23, -1, !dbg !2903
  br i1 %28, label %36, label %29, !dbg !2903

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2903
  store i32 %30, ptr %7, align 8, !dbg !2903
  %31 = icmp ult i32 %23, -7, !dbg !2903
  br i1 %31, label %32, label %36, !dbg !2903

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2903
  %34 = sext i32 %23 to i64, !dbg !2903
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2903
  br label %40, !dbg !2903

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2903
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2903
  store ptr %39, ptr %4, align 8, !dbg !2903
  br label %40, !dbg !2903

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2903
  %43 = load ptr, ptr %42, align 8, !dbg !2903
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2909
  store ptr %43, ptr %44, align 8, !dbg !2906, !tbaa !789
  %45 = icmp eq ptr %43, null, !dbg !2907
  br i1 %45, label %197, label %46, !dbg !2908

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 2, metadata !2896, metadata !DIExpression()), !dbg !2899
  %47 = icmp sgt i32 %41, -1, !dbg !2903
  br i1 %47, label %55, label %48, !dbg !2903

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2903
  store i32 %49, ptr %7, align 8, !dbg !2903
  %50 = icmp ult i32 %41, -7, !dbg !2903
  br i1 %50, label %51, label %55, !dbg !2903

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2903
  %53 = sext i32 %41 to i64, !dbg !2903
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2903
  br label %59, !dbg !2903

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2903
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2903
  store ptr %58, ptr %4, align 8, !dbg !2903
  br label %59, !dbg !2903

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2903
  %62 = load ptr, ptr %61, align 8, !dbg !2903
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2909
  store ptr %62, ptr %63, align 8, !dbg !2906, !tbaa !789
  %64 = icmp eq ptr %62, null, !dbg !2907
  br i1 %64, label %197, label %65, !dbg !2908

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 3, metadata !2896, metadata !DIExpression()), !dbg !2899
  %66 = icmp sgt i32 %60, -1, !dbg !2903
  br i1 %66, label %74, label %67, !dbg !2903

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2903
  store i32 %68, ptr %7, align 8, !dbg !2903
  %69 = icmp ult i32 %60, -7, !dbg !2903
  br i1 %69, label %70, label %74, !dbg !2903

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2903
  %72 = sext i32 %60 to i64, !dbg !2903
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2903
  br label %78, !dbg !2903

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2903
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2903
  store ptr %77, ptr %4, align 8, !dbg !2903
  br label %78, !dbg !2903

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2903
  %81 = load ptr, ptr %80, align 8, !dbg !2903
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2909
  store ptr %81, ptr %82, align 8, !dbg !2906, !tbaa !789
  %83 = icmp eq ptr %81, null, !dbg !2907
  br i1 %83, label %197, label %84, !dbg !2908

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 4, metadata !2896, metadata !DIExpression()), !dbg !2899
  %85 = icmp sgt i32 %79, -1, !dbg !2903
  br i1 %85, label %93, label %86, !dbg !2903

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2903
  store i32 %87, ptr %7, align 8, !dbg !2903
  %88 = icmp ult i32 %79, -7, !dbg !2903
  br i1 %88, label %89, label %93, !dbg !2903

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2903
  %91 = sext i32 %79 to i64, !dbg !2903
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2903
  br label %97, !dbg !2903

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2903
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2903
  store ptr %96, ptr %4, align 8, !dbg !2903
  br label %97, !dbg !2903

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2903
  %100 = load ptr, ptr %99, align 8, !dbg !2903
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2909
  store ptr %100, ptr %101, align 8, !dbg !2906, !tbaa !789
  %102 = icmp eq ptr %100, null, !dbg !2907
  br i1 %102, label %197, label %103, !dbg !2908

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 5, metadata !2896, metadata !DIExpression()), !dbg !2899
  %104 = icmp sgt i32 %98, -1, !dbg !2903
  br i1 %104, label %112, label %105, !dbg !2903

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2903
  store i32 %106, ptr %7, align 8, !dbg !2903
  %107 = icmp ult i32 %98, -7, !dbg !2903
  br i1 %107, label %108, label %112, !dbg !2903

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2903
  %110 = sext i32 %98 to i64, !dbg !2903
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2903
  br label %116, !dbg !2903

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2903
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2903
  store ptr %115, ptr %4, align 8, !dbg !2903
  br label %116, !dbg !2903

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2903
  %119 = load ptr, ptr %118, align 8, !dbg !2903
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2909
  store ptr %119, ptr %120, align 8, !dbg !2906, !tbaa !789
  %121 = icmp eq ptr %119, null, !dbg !2907
  br i1 %121, label %197, label %122, !dbg !2908

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 6, metadata !2896, metadata !DIExpression()), !dbg !2899
  %123 = icmp sgt i32 %117, -1, !dbg !2903
  br i1 %123, label %131, label %124, !dbg !2903

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2903
  store i32 %125, ptr %7, align 8, !dbg !2903
  %126 = icmp ult i32 %117, -7, !dbg !2903
  br i1 %126, label %127, label %131, !dbg !2903

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2903
  %129 = sext i32 %117 to i64, !dbg !2903
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2903
  br label %135, !dbg !2903

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2903
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2903
  store ptr %134, ptr %4, align 8, !dbg !2903
  br label %135, !dbg !2903

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2903
  %138 = load ptr, ptr %137, align 8, !dbg !2903
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2909
  store ptr %138, ptr %139, align 8, !dbg !2906, !tbaa !789
  %140 = icmp eq ptr %138, null, !dbg !2907
  br i1 %140, label %197, label %141, !dbg !2908

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 7, metadata !2896, metadata !DIExpression()), !dbg !2899
  %142 = icmp sgt i32 %136, -1, !dbg !2903
  br i1 %142, label %150, label %143, !dbg !2903

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2903
  store i32 %144, ptr %7, align 8, !dbg !2903
  %145 = icmp ult i32 %136, -7, !dbg !2903
  br i1 %145, label %146, label %150, !dbg !2903

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2903
  %148 = sext i32 %136 to i64, !dbg !2903
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2903
  br label %154, !dbg !2903

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2903
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2903
  store ptr %153, ptr %4, align 8, !dbg !2903
  br label %154, !dbg !2903

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2903
  %157 = load ptr, ptr %156, align 8, !dbg !2903
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2909
  store ptr %157, ptr %158, align 8, !dbg !2906, !tbaa !789
  %159 = icmp eq ptr %157, null, !dbg !2907
  br i1 %159, label %197, label %160, !dbg !2908

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 8, metadata !2896, metadata !DIExpression()), !dbg !2899
  %161 = icmp sgt i32 %155, -1, !dbg !2903
  br i1 %161, label %169, label %162, !dbg !2903

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2903
  store i32 %163, ptr %7, align 8, !dbg !2903
  %164 = icmp ult i32 %155, -7, !dbg !2903
  br i1 %164, label %165, label %169, !dbg !2903

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2903
  %167 = sext i32 %155 to i64, !dbg !2903
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2903
  br label %173, !dbg !2903

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2903
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2903
  store ptr %172, ptr %4, align 8, !dbg !2903
  br label %173, !dbg !2903

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2903
  %176 = load ptr, ptr %175, align 8, !dbg !2903
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2909
  store ptr %176, ptr %177, align 8, !dbg !2906, !tbaa !789
  %178 = icmp eq ptr %176, null, !dbg !2907
  br i1 %178, label %197, label %179, !dbg !2908

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 9, metadata !2896, metadata !DIExpression()), !dbg !2899
  %180 = icmp sgt i32 %174, -1, !dbg !2903
  br i1 %180, label %188, label %181, !dbg !2903

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2903
  store i32 %182, ptr %7, align 8, !dbg !2903
  %183 = icmp ult i32 %174, -7, !dbg !2903
  br i1 %183, label %184, label %188, !dbg !2903

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2903
  %186 = sext i32 %174 to i64, !dbg !2903
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2903
  br label %191, !dbg !2903

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2903
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2903
  store ptr %190, ptr %4, align 8, !dbg !2903
  br label %191, !dbg !2903

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2903
  %193 = load ptr, ptr %192, align 8, !dbg !2903
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2909
  store ptr %193, ptr %194, align 8, !dbg !2906, !tbaa !789
  %195 = icmp eq ptr %193, null, !dbg !2907
  %196 = select i1 %195, i64 9, i64 10, !dbg !2908
  br label %197, !dbg !2908

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2910
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2911
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !2912
  ret void, !dbg !2912
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2913 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %3, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2921, metadata !DIExpression()), !dbg !2924
  call void @llvm.va_start(ptr nonnull %5), !dbg !2925
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2926
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2926, !tbaa.struct !1211
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2926
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2926
  call void @llvm.va_end(ptr nonnull %5), !dbg !2927
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2928
  ret void, !dbg !2928
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2929 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2930, !tbaa !789
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.78, ptr noundef %1), !dbg !2930
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.17.95, i32 noundef 5) #39, !dbg !2931
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.96) #39, !dbg !2931
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.19.97, i32 noundef 5) #39, !dbg !2932
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.98, ptr noundef nonnull @.str.21) #39, !dbg !2932
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.76, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !2933
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.99) #39, !dbg !2933
  ret void, !dbg !2934
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !2935 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2941, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %2, metadata !2948, metadata !DIExpression()), !dbg !2949
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !2951
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !2957
  %5 = icmp eq ptr %4, null, !dbg !2959
  br i1 %5, label %6, label %7, !dbg !2961

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !2962
  unreachable, !dbg !2962

7:                                                ; preds = %3
  ret ptr %4, !dbg !2963
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !2945 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2948, metadata !DIExpression()), !dbg !2964
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !2965
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !2966
  %5 = icmp eq ptr %4, null, !dbg !2968
  br i1 %5, label %6, label %7, !dbg !2969

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !2970
  unreachable, !dbg !2970

7:                                                ; preds = %3
  ret ptr %4, !dbg !2971
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !2972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2974, metadata !DIExpression()), !dbg !2975
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2977
  %3 = icmp eq ptr %2, null, !dbg !2979
  br i1 %3, label %4, label %5, !dbg !2980

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !2981
  unreachable, !dbg !2981

5:                                                ; preds = %1
  ret ptr %2, !dbg !2982
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !2983 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %0, metadata !2989, metadata !DIExpression()), !dbg !2993
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !2996
  %3 = icmp eq ptr %2, null, !dbg !2998
  br i1 %3, label %4, label %5, !dbg !2999

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3000
  unreachable, !dbg !3000

5:                                                ; preds = %1
  ret ptr %2, !dbg !3001
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3002 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i64 %0, metadata !2974, metadata !DIExpression()), !dbg !3008
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3010
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !3011
  %3 = icmp eq ptr %2, null, !dbg !3013
  br i1 %3, label %4, label %5, !dbg !3014

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3015
  unreachable, !dbg !3015

5:                                                ; preds = %1
  ret ptr %2, !dbg !3016
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3021, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata ptr %0, metadata !3024, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3029
  %3 = icmp eq i64 %1, 0, !dbg !3031
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3031
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %5, metadata !2952, metadata !DIExpression()), !dbg !3033
  %6 = icmp eq ptr %5, null, !dbg !3035
  br i1 %6, label %7, label %8, !dbg !3036

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3037
  unreachable, !dbg !3037

8:                                                ; preds = %2
  ret ptr %5, !dbg !3038
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3039 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3040 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata ptr %0, metadata !3024, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3053
  %3 = icmp eq i64 %1, 0, !dbg !3055
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3055
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !3056
  call void @llvm.dbg.value(metadata ptr %5, metadata !2952, metadata !DIExpression()), !dbg !3057
  %6 = icmp eq ptr %5, null, !dbg !3059
  br i1 %6, label %7, label %8, !dbg !3060

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3061
  unreachable, !dbg !3061

8:                                                ; preds = %2
  ret ptr %5, !dbg !3062
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3063 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %2, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %0, metadata !3071, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %2, metadata !3075, metadata !DIExpression()), !dbg !3076
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3078
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !3079
  %5 = icmp eq ptr %4, null, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3083
  unreachable, !dbg !3083

7:                                                ; preds = %3
  ret ptr %4, !dbg !3084
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3085 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata ptr null, metadata !2944, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %0, metadata !2947, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()), !dbg !3092
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3095
  %4 = icmp eq ptr %3, null, !dbg !3097
  br i1 %4, label %5, label %6, !dbg !3098

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3099
  unreachable, !dbg !3099

6:                                                ; preds = %2
  ret ptr %3, !dbg !3100
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3101 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr null, metadata !3067, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr null, metadata !3071, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3110
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3113
  %4 = icmp eq ptr %3, null, !dbg !3115
  br i1 %4, label %5, label %6, !dbg !3116

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3117
  unreachable, !dbg !3117

6:                                                ; preds = %2
  ret ptr %3, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3119 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %1, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 1, metadata !729, metadata !DIExpression()), !dbg !3126
  %3 = load i64, ptr %1, align 8, !dbg !3128, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %3, metadata !730, metadata !DIExpression()), !dbg !3126
  %4 = icmp eq ptr %0, null, !dbg !3129
  br i1 %4, label %5, label %8, !dbg !3131

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3132
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3135
  br label %15, !dbg !3135

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3136
  %10 = add nuw i64 %9, 1, !dbg !3136
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3136
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3136
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %13, metadata !730, metadata !DIExpression()), !dbg !3126
  br i1 %12, label %14, label %15, !dbg !3139

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3140
  unreachable, !dbg !3140

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3126
  call void @llvm.dbg.value(metadata i64 %16, metadata !730, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 %16, metadata !2947, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i64 1, metadata !2948, metadata !DIExpression()), !dbg !3141
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3143
  call void @llvm.dbg.value(metadata ptr %17, metadata !2952, metadata !DIExpression()), !dbg !3144
  %18 = icmp eq ptr %17, null, !dbg !3146
  br i1 %18, label %19, label %20, !dbg !3147

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3148
  unreachable, !dbg !3148

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !727, metadata !DIExpression()), !dbg !3126
  store i64 %16, ptr %1, align 8, !dbg !3149, !tbaa !2231
  ret ptr %17, !dbg !3150
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !727, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %1, metadata !728, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !729, metadata !DIExpression()), !dbg !3151
  %4 = load i64, ptr %1, align 8, !dbg !3152, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %4, metadata !730, metadata !DIExpression()), !dbg !3151
  %5 = icmp eq ptr %0, null, !dbg !3153
  br i1 %5, label %6, label %13, !dbg !3154

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3155
  br i1 %7, label %8, label %20, !dbg !3156

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %9, metadata !730, metadata !DIExpression()), !dbg !3151
  %10 = icmp ugt i64 %2, 128, !dbg !3159
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %12, metadata !730, metadata !DIExpression()), !dbg !3151
  br label %20, !dbg !3161

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3162
  %15 = add nuw i64 %14, 1, !dbg !3162
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3162
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3162
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %18, metadata !730, metadata !DIExpression()), !dbg !3151
  br i1 %17, label %19, label %20, !dbg !3163

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3164
  unreachable, !dbg !3164

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3151
  call void @llvm.dbg.value(metadata i64 %21, metadata !730, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %21, metadata !2947, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %2, metadata !2948, metadata !DIExpression()), !dbg !3165
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3167
  call void @llvm.dbg.value(metadata ptr %22, metadata !2952, metadata !DIExpression()), !dbg !3168
  %23 = icmp eq ptr %22, null, !dbg !3170
  br i1 %23, label %24, label %25, !dbg !3171

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3172
  unreachable, !dbg !3172

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !727, metadata !DIExpression()), !dbg !3151
  store i64 %21, ptr %1, align 8, !dbg !3173, !tbaa !2231
  ret ptr %22, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !739, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %1, metadata !740, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %2, metadata !741, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %3, metadata !742, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %4, metadata !743, metadata !DIExpression()), !dbg !3175
  %6 = load i64, ptr %1, align 8, !dbg !3176, !tbaa !2231
  call void @llvm.dbg.value(metadata i64 %6, metadata !744, metadata !DIExpression()), !dbg !3175
  %7 = ashr i64 %6, 1, !dbg !3177
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3177
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3177
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %10, metadata !745, metadata !DIExpression()), !dbg !3175
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %11, metadata !745, metadata !DIExpression()), !dbg !3175
  %12 = icmp sgt i64 %3, -1, !dbg !3180
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3182
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %15, metadata !745, metadata !DIExpression()), !dbg !3175
  %16 = icmp slt i64 %4, 0, !dbg !3183
  br i1 %16, label %17, label %30, !dbg !3183

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3183
  br i1 %18, label %19, label %24, !dbg !3183

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3183
  %21 = udiv i64 9223372036854775807, %20, !dbg !3183
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3183
  br i1 %23, label %46, label %43, !dbg !3183

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3183
  br i1 %25, label %43, label %26, !dbg !3183

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3183
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3183
  %29 = icmp ult i64 %28, %15, !dbg !3183
  br i1 %29, label %46, label %43, !dbg !3183

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3183
  br i1 %31, label %43, label %32, !dbg !3183

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3183
  br i1 %33, label %34, label %40, !dbg !3183

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3183
  br i1 %35, label %43, label %36, !dbg !3183

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3183
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3183
  %39 = icmp ult i64 %38, %4, !dbg !3183
  br i1 %39, label %46, label %43, !dbg !3183

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3183
  br i1 %42, label %46, label %43, !dbg !3183

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !746, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3175
  %44 = mul i64 %15, %4, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %44, metadata !746, metadata !DIExpression()), !dbg !3175
  %45 = icmp slt i64 %44, 128, !dbg !3183
  br i1 %45, label %46, label %52, !dbg !3183

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !747, metadata !DIExpression()), !dbg !3175
  %48 = sdiv i64 %47, %4, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %48, metadata !745, metadata !DIExpression()), !dbg !3175
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %51, metadata !746, metadata !DIExpression()), !dbg !3175
  br label %52, !dbg !3188

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3175
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3175
  call void @llvm.dbg.value(metadata i64 %54, metadata !746, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %53, metadata !745, metadata !DIExpression()), !dbg !3175
  %55 = icmp eq ptr %0, null, !dbg !3189
  br i1 %55, label %56, label %57, !dbg !3191

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3192, !tbaa !2231
  br label %57, !dbg !3193

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3194
  %59 = icmp slt i64 %58, %2, !dbg !3196
  br i1 %59, label %60, label %97, !dbg !3197

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3198
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3198
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %63, metadata !745, metadata !DIExpression()), !dbg !3175
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3199
  br i1 %66, label %96, label %67, !dbg !3199

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3200

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3200
  br i1 %69, label %70, label %75, !dbg !3200

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3200
  %72 = udiv i64 9223372036854775807, %71, !dbg !3200
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3200
  br i1 %74, label %96, label %94, !dbg !3200

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3200
  br i1 %76, label %94, label %77, !dbg !3200

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3200
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3200
  %80 = icmp ult i64 %79, %63, !dbg !3200
  br i1 %80, label %96, label %94, !dbg !3200

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3200
  br i1 %82, label %94, label %83, !dbg !3200

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3200
  br i1 %84, label %85, label %91, !dbg !3200

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3200
  br i1 %86, label %94, label %87, !dbg !3200

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3200
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3200
  %90 = icmp ult i64 %89, %4, !dbg !3200
  br i1 %90, label %96, label %94, !dbg !3200

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3200
  br i1 %93, label %96, label %94, !dbg !3200

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !746, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3175
  %95 = mul i64 %63, %4, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %95, metadata !746, metadata !DIExpression()), !dbg !3175
  br label %97, !dbg !3201

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !3202
  unreachable, !dbg !3202

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3175
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3175
  call void @llvm.dbg.value(metadata i64 %99, metadata !746, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %98, metadata !745, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata ptr %0, metadata !3021, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %99, metadata !3022, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata ptr %0, metadata !3024, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i64 %99, metadata !3028, metadata !DIExpression()), !dbg !3205
  %100 = icmp eq i64 %99, 0, !dbg !3207
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3207
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %102, metadata !2952, metadata !DIExpression()), !dbg !3209
  %103 = icmp eq ptr %102, null, !dbg !3211
  br i1 %103, label %104, label %105, !dbg !3212

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !3213
  unreachable, !dbg !3213

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !739, metadata !DIExpression()), !dbg !3175
  store i64 %98, ptr %1, align 8, !dbg !3214, !tbaa !2231
  ret ptr %102, !dbg !3215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3216 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 1, metadata !3223, metadata !DIExpression()), !dbg !3224
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3226
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !3227
  %3 = icmp eq ptr %2, null, !dbg !3229
  br i1 %3, label %4, label %5, !dbg !3230

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3231
  unreachable, !dbg !3231

5:                                                ; preds = %1
  ret ptr %2, !dbg !3232
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3233 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3221 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3220, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3223, metadata !DIExpression()), !dbg !3234
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3235
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3236
  %4 = icmp eq ptr %3, null, !dbg !3238
  br i1 %4, label %5, label %6, !dbg !3239

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3240
  unreachable, !dbg !3240

6:                                                ; preds = %2
  ret ptr %3, !dbg !3241
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3242 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 1, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %2, metadata !2952, metadata !DIExpression()), !dbg !3259
  %3 = icmp eq ptr %2, null, !dbg !3261
  br i1 %3, label %4, label %5, !dbg !3262

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3263
  unreachable, !dbg !3263

5:                                                ; preds = %1
  ret ptr %2, !dbg !3264
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3247 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3266
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3269
  %4 = icmp eq ptr %3, null, !dbg !3271
  br i1 %4, label %5, label %6, !dbg !3272

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3273
  unreachable, !dbg !3273

6:                                                ; preds = %2
  ret ptr %3, !dbg !3274
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3275 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()), !dbg !3282
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3285
  %4 = icmp eq ptr %3, null, !dbg !3287
  br i1 %4, label %5, label %6, !dbg !3288

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3289
  unreachable, !dbg !3289

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3290, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3295
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3297
  ret ptr %3, !dbg !3298
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3299 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3303, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !3304, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !3308
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3310
  call void @llvm.dbg.value(metadata ptr %3, metadata !2952, metadata !DIExpression()), !dbg !3311
  %4 = icmp eq ptr %3, null, !dbg !3313
  br i1 %4, label %5, label %6, !dbg !3314

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3315
  unreachable, !dbg !3315

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3290, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3318
  ret ptr %3, !dbg !3319
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3320 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3324, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3325, metadata !DIExpression()), !dbg !3327
  %3 = add nsw i64 %1, 1, !dbg !3328
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %3, metadata !2989, metadata !DIExpression()), !dbg !3331
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !3334
  %5 = icmp eq ptr %4, null, !dbg !3336
  br i1 %5, label %6, label %7, !dbg !3337

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3338
  unreachable, !dbg !3338

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3326, metadata !DIExpression()), !dbg !3327
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3339
  store i8 0, ptr %8, align 1, !dbg !3340, !tbaa !860
  call void @llvm.dbg.value(metadata ptr %4, metadata !3290, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1, metadata !3294, metadata !DIExpression()), !dbg !3341
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3343
  ret ptr %4, !dbg !3344
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3345 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3348
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3349
  %3 = add i64 %2, 1, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %3, metadata !3280, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %3, metadata !2974, metadata !DIExpression()), !dbg !3353
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3355
  call void @llvm.dbg.value(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !3356
  %5 = icmp eq ptr %4, null, !dbg !3358
  br i1 %5, label %6, label %7, !dbg !3359

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3360
  unreachable, !dbg !3360

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3290, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata ptr %0, metadata !3293, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata i64 %3, metadata !3294, metadata !DIExpression()), !dbg !3361
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3363
  ret ptr %4, !dbg !3364
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3365 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3370, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %1, metadata !3367, metadata !DIExpression()), !dbg !3371
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.110, ptr noundef nonnull @.str.2.111, i32 noundef 5) #39, !dbg !3370
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.112, ptr noundef %2) #39, !dbg !3370
  %3 = icmp eq i32 %1, 0, !dbg !3370
  tail call void @llvm.assume(i1 %3), !dbg !3370
  tail call void @abort() #41, !dbg !3372
  unreachable, !dbg !3372
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @last_component(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !3373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %0, metadata !3376, metadata !DIExpression()), !dbg !3380
  br label %2, !dbg !3381

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ], !dbg !3380
  call void @llvm.dbg.value(metadata ptr %3, metadata !3376, metadata !DIExpression()), !dbg !3380
  %4 = load i8, ptr %3, align 1, !dbg !3382, !tbaa !860
  %5 = icmp eq i8 %4, 47, !dbg !3382
  %6 = getelementptr inbounds i8, ptr %3, i64 1, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %6, metadata !3376, metadata !DIExpression()), !dbg !3380
  br i1 %5, label %2, label %7, !dbg !3381, !llvm.loop !3384

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3385
  %9 = phi ptr [ %16, %15 ], [ %3, %2 ], !dbg !3387
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi ptr [ %18, %15 ], [ %3, %2 ], !dbg !3388
  call void @llvm.dbg.value(metadata ptr %11, metadata !3378, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i8 poison, metadata !3377, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %9, metadata !3376, metadata !DIExpression()), !dbg !3380
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3390

12:                                               ; preds = %7
  ret ptr %9, !dbg !3391

13:                                               ; preds = %7
  %14 = select i1 %10, ptr %11, ptr %9, !dbg !3392
  br label %15, !dbg !3392

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %9, %7 ], [ %14, %13 ], !dbg !3380
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3377, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata ptr %16, metadata !3376, metadata !DIExpression()), !dbg !3380
  %18 = getelementptr inbounds i8, ptr %11, i64 1, !dbg !3395
  call void @llvm.dbg.value(metadata ptr %18, metadata !3378, metadata !DIExpression()), !dbg !3389
  %19 = load i8, ptr %18, align 1, !dbg !3385, !tbaa !860
  br label %7, !dbg !3396, !llvm.loop !3397
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @base_len(ptr nocapture noundef readonly %0) local_unnamed_addr #36 !dbg !3399 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3401, metadata !DIExpression()), !dbg !3404
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %2, metadata !3402, metadata !DIExpression()), !dbg !3404
  %3 = icmp ne i64 %2, 0, !dbg !3407
  %4 = zext i1 %3 to i64, !dbg !3407
  br label %5, !dbg !3407

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3408
  call void @llvm.dbg.value(metadata i64 %6, metadata !3402, metadata !DIExpression()), !dbg !3404
  %7 = icmp ugt i64 %6, 1, !dbg !3409
  br i1 %7, label %8, label %13, !dbg !3411

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3412
  %10 = getelementptr inbounds i8, ptr %0, i64 %9, !dbg !3412
  %11 = load i8, ptr %10, align 1, !dbg !3412, !tbaa !860
  %12 = icmp eq i8 %11, 47, !dbg !3412
  br i1 %12, label %5, label %13, !dbg !3413, !llvm.loop !3414

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3408
  call void @llvm.dbg.value(metadata i64 0, metadata !3403, metadata !DIExpression()), !dbg !3404
  ret i64 %14, !dbg !3416
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3417 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3455, metadata !DIExpression()), !dbg !3460
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3461
  call void @llvm.dbg.value(metadata i1 poison, metadata !3456, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3460
  call void @llvm.dbg.value(metadata ptr %0, metadata !3462, metadata !DIExpression()), !dbg !3465
  %3 = load i32, ptr %0, align 8, !dbg !3467, !tbaa !3468
  %4 = and i32 %3, 32, !dbg !3469
  %5 = icmp eq i32 %4, 0, !dbg !3469
  call void @llvm.dbg.value(metadata i1 %5, metadata !3458, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3460
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3470
  %7 = icmp eq i32 %6, 0, !dbg !3471
  call void @llvm.dbg.value(metadata i1 %7, metadata !3459, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3460
  br i1 %5, label %8, label %18, !dbg !3472

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3474
  call void @llvm.dbg.value(metadata i1 %9, metadata !3456, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3460
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3475
  %11 = xor i1 %7, true, !dbg !3475
  %12 = sext i1 %11 to i32, !dbg !3475
  br i1 %10, label %21, label %13, !dbg !3475

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !3476
  %15 = load i32, ptr %14, align 4, !dbg !3476, !tbaa !851
  %16 = icmp ne i32 %15, 9, !dbg !3477
  %17 = sext i1 %16 to i32, !dbg !3478
  br label %21, !dbg !3478

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3479

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !3481
  store i32 0, ptr %20, align 4, !dbg !3483, !tbaa !851
  br label %21, !dbg !3481

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3460
  ret i32 %22, !dbg !3484
}

; Function Attrs: nounwind
declare !dbg !3485 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3489 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3527, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3528, metadata !DIExpression()), !dbg !3531
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3532
  call void @llvm.dbg.value(metadata i32 %2, metadata !3529, metadata !DIExpression()), !dbg !3531
  %3 = icmp slt i32 %2, 0, !dbg !3533
  br i1 %3, label %4, label %6, !dbg !3535

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3536
  br label %24, !dbg !3537

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3538
  %8 = icmp eq i32 %7, 0, !dbg !3538
  br i1 %8, label %13, label %9, !dbg !3540

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3541
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !3542
  %12 = icmp eq i64 %11, -1, !dbg !3543
  br i1 %12, label %16, label %13, !dbg !3544

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !3545
  %15 = icmp eq i32 %14, 0, !dbg !3545
  br i1 %15, label %16, label %18, !dbg !3546

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3530, metadata !DIExpression()), !dbg !3531
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %17, metadata !3530, metadata !DIExpression()), !dbg !3531
  br label %24, !dbg !3548

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !3549
  %20 = load i32, ptr %19, align 4, !dbg !3549, !tbaa !851
  call void @llvm.dbg.value(metadata i32 %20, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i32 0, metadata !3530, metadata !DIExpression()), !dbg !3531
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3547
  call void @llvm.dbg.value(metadata i32 %21, metadata !3530, metadata !DIExpression()), !dbg !3531
  %22 = icmp eq i32 %20, 0, !dbg !3550
  br i1 %22, label %24, label %23, !dbg !3548

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3552, !tbaa !851
  call void @llvm.dbg.value(metadata i32 -1, metadata !3530, metadata !DIExpression()), !dbg !3531
  br label %24, !dbg !3554

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3531
  ret i32 %25, !dbg !3555
}

; Function Attrs: nofree nounwind
declare !dbg !3556 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3557 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3558 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3559 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3562 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3601
  %2 = icmp eq ptr %0, null, !dbg !3602
  br i1 %2, label %6, label %3, !dbg !3604

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !3605
  %5 = icmp eq i32 %4, 0, !dbg !3605
  br i1 %5, label %6, label %8, !dbg !3606

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3607
  br label %16, !dbg !3608

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3609, metadata !DIExpression()), !dbg !3614
  %9 = load i32, ptr %0, align 8, !dbg !3616, !tbaa !3468
  %10 = and i32 %9, 256, !dbg !3618
  %11 = icmp eq i32 %10, 0, !dbg !3618
  br i1 %11, label %14, label %12, !dbg !3619

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !3620
  br label %14, !dbg !3620

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3621
  br label %16, !dbg !3622

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3601
  ret i32 %17, !dbg !3623
}

; Function Attrs: nofree nounwind
declare !dbg !3624 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3625 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3664, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 %2, metadata !3666, metadata !DIExpression()), !dbg !3670
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3671
  %5 = load ptr, ptr %4, align 8, !dbg !3671, !tbaa !3672
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3673
  %7 = load ptr, ptr %6, align 8, !dbg !3673, !tbaa !3674
  %8 = icmp eq ptr %5, %7, !dbg !3675
  br i1 %8, label %9, label %27, !dbg !3676

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3677
  %11 = load ptr, ptr %10, align 8, !dbg !3677, !tbaa !1038
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3678
  %13 = load ptr, ptr %12, align 8, !dbg !3678, !tbaa !3679
  %14 = icmp eq ptr %11, %13, !dbg !3680
  br i1 %14, label %15, label %27, !dbg !3681

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3682
  %17 = load ptr, ptr %16, align 8, !dbg !3682, !tbaa !3683
  %18 = icmp eq ptr %17, null, !dbg !3684
  br i1 %18, label %19, label %27, !dbg !3685

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !3686
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !3687
  call void @llvm.dbg.value(metadata i64 %21, metadata !3667, metadata !DIExpression()), !dbg !3688
  %22 = icmp eq i64 %21, -1, !dbg !3689
  br i1 %22, label %29, label %23, !dbg !3691

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3692, !tbaa !3468
  %25 = and i32 %24, -17, !dbg !3692
  store i32 %25, ptr %0, align 8, !dbg !3692, !tbaa !3468
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3693
  store i64 %21, ptr %26, align 8, !dbg !3694, !tbaa !3695
  br label %29, !dbg !3696

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3697
  br label %29, !dbg !3698

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3670
  ret i32 %30, !dbg !3699
}

; Function Attrs: nofree nounwind
declare !dbg !3700 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %1, metadata !3709, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %3, metadata !3711, metadata !DIExpression()), !dbg !3713
  %5 = icmp eq ptr %1, null, !dbg !3714
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3716
  %7 = select i1 %5, ptr @.str.125, ptr %1, !dbg !3716
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %8, metadata !3710, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %7, metadata !3709, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata ptr %6, metadata !3708, metadata !DIExpression()), !dbg !3713
  %9 = icmp eq ptr %3, null, !dbg !3717
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3719
  call void @llvm.dbg.value(metadata ptr %10, metadata !3711, metadata !DIExpression()), !dbg !3713
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !3720
  call void @llvm.dbg.value(metadata i64 %11, metadata !3712, metadata !DIExpression()), !dbg !3713
  %12 = icmp ult i64 %11, -3, !dbg !3721
  br i1 %12, label %13, label %17, !dbg !3723

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !3724
  %15 = icmp eq i32 %14, 0, !dbg !3724
  br i1 %15, label %16, label %29, !dbg !3725

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3726, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata ptr %10, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i32 0, metadata !3736, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 8, metadata !3737, metadata !DIExpression()), !dbg !3738
  store i64 0, ptr %10, align 1, !dbg !3740
  br label %29, !dbg !3741

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3742
  br i1 %18, label %19, label %20, !dbg !3744

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !3745
  unreachable, !dbg !3745

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3746

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !3748
  br i1 %23, label %29, label %24, !dbg !3749

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3750
  br i1 %25, label %29, label %26, !dbg !3753

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3754, !tbaa !860
  %28 = zext i8 %27 to i32, !dbg !3755
  store i32 %28, ptr %6, align 4, !dbg !3756, !tbaa !851
  br label %29, !dbg !3757

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3713
  ret i64 %30, !dbg !3758
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3759 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !3765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3767, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %1, metadata !3768, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i64 %2, metadata !3769, metadata !DIExpression()), !dbg !3771
  %4 = icmp eq i64 %2, 0, !dbg !3772
  br i1 %4, label %8, label %5, !dbg !3772

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3772
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3772
  br i1 %7, label %13, label %8, !dbg !3772

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3770, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3771
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3770, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3771
  %9 = mul i64 %2, %1, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %9, metadata !3770, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %9, metadata !3777, metadata !DIExpression()), !dbg !3778
  %10 = icmp eq i64 %9, 0, !dbg !3780
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3780
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !3781
  br label %15, !dbg !3782

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3770, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3771
  %14 = tail call ptr @__errno_location() #42, !dbg !3783
  store i32 12, ptr %14, align 4, !dbg !3785, !tbaa !851
  br label %15, !dbg !3786

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3771
  ret ptr %16, !dbg !3787
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3788 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3797
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3793, metadata !DIExpression()), !dbg !3799
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !3800
  %4 = icmp eq i32 %3, 0, !dbg !3800
  br i1 %4, label %5, label %12, !dbg !3802

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3803, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata ptr @.str.130, metadata !3806, metadata !DIExpression()), !dbg !3807
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.130, i64 2), !dbg !3810
  %7 = icmp eq i32 %6, 0, !dbg !3811
  br i1 %7, label %11, label %8, !dbg !3812

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3803, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr @.str.1.131, metadata !3806, metadata !DIExpression()), !dbg !3813
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.131, i64 6), !dbg !3815
  %10 = icmp eq i32 %9, 0, !dbg !3816
  br i1 %10, label %11, label %12, !dbg !3817

11:                                               ; preds = %8, %5
  br label %12, !dbg !3818

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3797
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !3819
  ret i1 %13, !dbg !3819
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3820 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3824, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata ptr %1, metadata !3825, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %2, metadata !3826, metadata !DIExpression()), !dbg !3827
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !3828
  ret i32 %4, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3830 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3834, metadata !DIExpression()), !dbg !3835
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !3836
  ret ptr %2, !dbg !3837
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3838 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3840, metadata !DIExpression()), !dbg !3842
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3843
  call void @llvm.dbg.value(metadata ptr %2, metadata !3841, metadata !DIExpression()), !dbg !3842
  ret ptr %2, !dbg !3844
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3847, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %1, metadata !3848, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %2, metadata !3849, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %0, metadata !3840, metadata !DIExpression()), !dbg !3855
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !3857
  call void @llvm.dbg.value(metadata ptr %4, metadata !3841, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.value(metadata ptr %4, metadata !3850, metadata !DIExpression()), !dbg !3854
  %5 = icmp eq ptr %4, null, !dbg !3858
  br i1 %5, label %6, label %9, !dbg !3859

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3860
  br i1 %7, label %19, label %8, !dbg !3863

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3864, !tbaa !860
  br label %19, !dbg !3865

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !3866
  call void @llvm.dbg.value(metadata i64 %10, metadata !3851, metadata !DIExpression()), !dbg !3867
  %11 = icmp ult i64 %10, %2, !dbg !3868
  br i1 %11, label %12, label %14, !dbg !3870

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3871
  call void @llvm.dbg.value(metadata ptr %1, metadata !3873, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata ptr %4, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %13, metadata !3877, metadata !DIExpression()), !dbg !3878
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !3880
  br label %19, !dbg !3881

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3882
  br i1 %15, label %19, label %16, !dbg !3885

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %1, metadata !3873, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %4, metadata !3876, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %17, metadata !3877, metadata !DIExpression()), !dbg !3888
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !3890
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3891
  store i8 0, ptr %18, align 1, !dbg !3892, !tbaa !860
  br label %19, !dbg !3893

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3894
  ret i32 %20, !dbg !3895
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
attributes #36 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { noreturn }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!64, !356, !360, !707, !375, !673, !709, !432, !446, !494, !711, !665, !718, !749, !751, !753, !755, !757, !759, !689, !761, !764, !766, !768}
!llvm.ident = !{!770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770, !770}
!llvm.module.flags = !{!771, !772, !773, !774, !775, !776, !777}

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
!63 = distinct !DIGlobalVariable(name: "longopts", scope: !64, file: !2, line: 34, type: !341, isLocal: true, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !88, globals: !98, splitDebugInlining: false, nameTableKind: None)
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
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!93 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !99, !104, !109, !114, !116, !193, !223, !228, !230, !235, !240, !242, !244, !246, !251, !253, !255, !257, !262, !264, !266, !268, !270, !272, !274, !276, !281, !286, !291, !296, !298, !300, !302, !304, !306, !311, !313, !315, !320, !325, !330, !335, !337, !339, !62}
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
!122 = !{!123, !124, !125, !127, !129, !133, !138, !140, !192}
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
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !92, line: 35, baseType: !137)
!137 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!138 = !DILocalVariable(name: "__ptr", scope: !139, file: !2, line: 129, type: !94)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 129, column: 7)
!140 = !DILocalVariable(name: "__stream", scope: !139, file: !2, line: 129, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !144)
!143 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !146)
!145 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !162, !164, !165, !166, !169, !170, !172, !173, !176, !178, !181, !184, !185, !186, !187, !188}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !144, file: !145, line: 51, baseType: !68, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !144, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !144, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !144, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !144, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !144, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !144, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !144, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !144, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !144, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !144, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !144, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !144, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !145, line: 36, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !144, file: !145, line: 70, baseType: !163, size: 64, offset: 832)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !144, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !144, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !144, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !168, line: 152, baseType: !137)
!168 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !144, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !144, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!171 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !144, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !144, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !145, line: 43, baseType: null)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !144, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !168, line: 153, baseType: !137)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !144, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !145, line: 37, flags: DIFlagFwdDecl)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !144, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !145, line: 38, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !144, file: !145, line: 93, baseType: !163, size: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !144, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !144, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !144, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !144, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 20)
!192 = !DILocalVariable(name: "__cnt", scope: !139, file: !2, line: 129, type: !91)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !195, file: !67, line: 575, type: !68, isLocal: true, isDefinition: true)
!195 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !196, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !198)
!196 = !DISubroutineType(cc: DW_CC_nocall, types: !197)
!197 = !{null, !94, !94}
!198 = !{!199, !200, !201, !204, !205, !206, !207, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222}
!199 = !DILocalVariable(name: "program", arg: 1, scope: !195, file: !67, line: 573, type: !94)
!200 = !DILocalVariable(name: "option", arg: 2, scope: !195, file: !67, line: 573, type: !94)
!201 = !DILocalVariable(name: "term", scope: !202, file: !67, line: 585, type: !94)
!202 = distinct !DILexicalBlock(scope: !203, file: !67, line: 582, column: 5)
!203 = distinct !DILexicalBlock(scope: !195, file: !67, line: 581, column: 7)
!204 = !DILocalVariable(name: "double_space", scope: !195, file: !67, line: 594, type: !126)
!205 = !DILocalVariable(name: "first_word", scope: !195, file: !67, line: 595, type: !94)
!206 = !DILocalVariable(name: "option_text", scope: !195, file: !67, line: 596, type: !94)
!207 = !DILocalVariable(name: "s", scope: !208, file: !67, line: 608, type: !94)
!208 = distinct !DILexicalBlock(scope: !209, file: !67, line: 605, column: 5)
!209 = distinct !DILexicalBlock(scope: !210, file: !67, line: 604, column: 12)
!210 = distinct !DILexicalBlock(scope: !195, file: !67, line: 597, column: 7)
!211 = !DILocalVariable(name: "spaces", scope: !208, file: !67, line: 609, type: !91)
!212 = !DILocalVariable(name: "anchor_len", scope: !195, file: !67, line: 620, type: !91)
!213 = !DILocalVariable(name: "desc_text", scope: !195, file: !67, line: 625, type: !94)
!214 = !DILocalVariable(name: "__ptr", scope: !215, file: !67, line: 644, type: !94)
!215 = distinct !DILexicalBlock(scope: !195, file: !67, line: 644, column: 3)
!216 = !DILocalVariable(name: "__stream", scope: !215, file: !67, line: 644, type: !141)
!217 = !DILocalVariable(name: "__cnt", scope: !215, file: !67, line: 644, type: !91)
!218 = !DILocalVariable(name: "url_program", scope: !195, file: !67, line: 648, type: !94)
!219 = !DILocalVariable(name: "__ptr", scope: !220, file: !67, line: 686, type: !94)
!220 = distinct !DILexicalBlock(scope: !195, file: !67, line: 686, column: 3)
!221 = !DILocalVariable(name: "__stream", scope: !220, file: !67, line: 686, type: !141)
!222 = !DILocalVariable(name: "__cnt", scope: !220, file: !67, line: 686, type: !91)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 5)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !225, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 4)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 6)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !59, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !225, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !232, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 3)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !225, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !237, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !237, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 7)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !49, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !49, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !49, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !49, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !259, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !49, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 17)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 40)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !288, isLocal: true, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !289)
!289 = !{!290}
!290 = !DISubrange(count: 15)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 61)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !248, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !225, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !225, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !106, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 22)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !288, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !232, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 71)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 27)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 51)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 12)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !225, isLocal: true, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !225, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !19, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 1024, elements: !233)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !344, line: 50, size: 256, elements: !345)
!344 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!345 = !{!346, !347, !348, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !344, line: 52, baseType: !94, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !343, file: !344, line: 55, baseType: !68, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !343, file: !344, line: 56, baseType: !349, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !343, file: !344, line: 57, baseType: !68, size: 32, offset: 192)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !353, line: 3, type: !288, isLocal: true, isDefinition: true)
!353 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "Version", scope: !356, file: !353, line: 3, type: !94, isLocal: false, isDefinition: true)
!356 = distinct !DICompileUnit(language: DW_LANG_C11, file: !353, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !357, splitDebugInlining: false, nameTableKind: None)
!357 = !{!351, !354}
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "file_name", scope: !360, file: !361, line: 45, type: !94, isLocal: true, isDefinition: true)
!360 = distinct !DICompileUnit(language: DW_LANG_C11, file: !361, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !362, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!362 = !{!363, !365, !367, !369, !358, !371}
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !361, line: 121, type: !259, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !361, line: 121, type: !332, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !361, line: 123, type: !259, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !361, line: 126, type: !248, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !360, file: !361, line: 55, type: !126, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !375, file: !376, line: 66, type: !427, isLocal: false, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C11, file: !376, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !377, globals: !378, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!377 = !{!90, !97}
!378 = !{!379, !381, !406, !408, !410, !412, !373, !414, !416, !418, !420, !425}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !376, line: 272, type: !225, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "old_file_name", scope: !383, file: !376, line: 304, type: !94, isLocal: true, isDefinition: true)
!383 = distinct !DISubprogram(name: "verror_at_line", scope: !376, file: !376, line: 298, type: !384, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !399)
!384 = !DISubroutineType(types: !385)
!385 = !{null, !68, !68, !94, !74, !94, !386}
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !387, line: 52, baseType: !388)
!387 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !389, line: 14, baseType: !390)
!389 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !391, baseType: !392)
!391 = !DIFile(filename: "lib/error.c", directory: "/src")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !393)
!393 = !{!394, !395, !396, !397, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !392, file: !391, baseType: !90, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !392, file: !391, baseType: !90, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !392, file: !391, baseType: !90, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !392, file: !391, baseType: !68, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !392, file: !391, baseType: !68, size: 32, offset: 224)
!399 = !{!400, !401, !402, !403, !404, !405}
!400 = !DILocalVariable(name: "status", arg: 1, scope: !383, file: !376, line: 298, type: !68)
!401 = !DILocalVariable(name: "errnum", arg: 2, scope: !383, file: !376, line: 298, type: !68)
!402 = !DILocalVariable(name: "file_name", arg: 3, scope: !383, file: !376, line: 298, type: !94)
!403 = !DILocalVariable(name: "line_number", arg: 4, scope: !383, file: !376, line: 298, type: !74)
!404 = !DILocalVariable(name: "message", arg: 5, scope: !383, file: !376, line: 298, type: !94)
!405 = !DILocalVariable(name: "args", arg: 6, scope: !383, file: !376, line: 298, type: !386)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "old_line_number", scope: !383, file: !376, line: 305, type: !74, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !376, line: 338, type: !232, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !376, line: 346, type: !19, isLocal: true, isDefinition: true)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !376, line: 346, type: !59, isLocal: true, isDefinition: true)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(name: "error_message_count", scope: !375, file: !376, line: 69, type: !74, isLocal: false, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !375, file: !376, line: 295, type: !68, isLocal: false, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !376, line: 208, type: !259, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !376, line: 208, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 21)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !376, line: 214, type: !225, isLocal: true, isDefinition: true)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null}
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(name: "program_name", scope: !432, file: !433, line: 31, type: !94, isLocal: false, isDefinition: true)
!432 = distinct !DICompileUnit(language: DW_LANG_C11, file: !433, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !434, globals: !435, splitDebugInlining: false, nameTableKind: None)
!433 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!434 = !{!89}
!435 = !{!430, !436, !438}
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !433, line: 46, type: !19, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !433, line: 49, type: !232, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "utf07FF", scope: !442, file: !443, line: 46, type: !470, isLocal: true, isDefinition: true)
!442 = distinct !DISubprogram(name: "proper_name_lite", scope: !443, file: !443, line: 38, type: !444, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !448)
!443 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!444 = !DISubroutineType(types: !445)
!445 = !{!94, !94, !94}
!446 = distinct !DICompileUnit(language: DW_LANG_C11, file: !443, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !447, splitDebugInlining: false, nameTableKind: None)
!447 = !{!440}
!448 = !{!449, !450, !451, !452, !457}
!449 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !442, file: !443, line: 38, type: !94)
!450 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !442, file: !443, line: 38, type: !94)
!451 = !DILocalVariable(name: "translation", scope: !442, file: !443, line: 40, type: !94)
!452 = !DILocalVariable(name: "w", scope: !442, file: !443, line: 47, type: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !454, line: 37, baseType: !455)
!454 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !168, line: 57, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !168, line: 42, baseType: !74)
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
!469 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !466, file: !461, line: 19, baseType: !232, size: 32)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 16, elements: !60)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !473, line: 78, type: !19, isLocal: true, isDefinition: true)
!473 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !473, line: 79, type: !237, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !473, line: 80, type: !111, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !473, line: 81, type: !111, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !473, line: 82, type: !189, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !473, line: 83, type: !59, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !473, line: 84, type: !19, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !473, line: 85, type: !259, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !473, line: 86, type: !259, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !473, line: 87, type: !19, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !494, file: !473, line: 76, type: !580, isLocal: false, isDefinition: true)
!494 = distinct !DICompileUnit(language: DW_LANG_C11, file: !473, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !495, retainedTypes: !515, globals: !516, splitDebugInlining: false, nameTableKind: None)
!495 = !{!496, !510, !72}
!496 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !497, line: 42, baseType: !74, size: 32, elements: !498)
!497 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!515 = !{!68, !96, !91}
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
!545 = distinct !DIGlobalVariable(scope: null, file: !473, line: 199, type: !259, isLocal: true, isDefinition: true)
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
!566 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !563, file: !461, line: 19, baseType: !232, size: 32)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !568)
!568 = !{!61, !234}
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
!585 = distinct !DIGlobalVariable(scope: null, file: !586, line: 67, type: !332, isLocal: true, isDefinition: true)
!586 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(scope: null, file: !586, line: 69, type: !259, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !259, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !586, line: 83, type: !232, isLocal: true, isDefinition: true)
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
!625 = distinct !DIGlobalVariable(scope: null, file: !586, line: 134, type: !283, isLocal: true, isDefinition: true)
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
!647 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !189, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !586, line: 248, type: !308, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !189, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !101, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !586, line: 254, type: !283, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !3, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !586, line: 259, type: !660, isLocal: true, isDefinition: true)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 29)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !665, file: !666, line: 26, type: !668, isLocal: false, isDefinition: true)
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !667, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!667 = !{!663}
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 376, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 47)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "exit_failure", scope: !673, file: !674, line: 24, type: !676, isLocal: false, isDefinition: true)
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !675, splitDebugInlining: false, nameTableKind: None)
!674 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!675 = !{!671}
!676 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !248, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !259, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !679, line: 34, type: !278, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !686, line: 108, type: !44, isLocal: true, isDefinition: true)
!686 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!687 = !DIGlobalVariableExpression(var: !688, expr: !DIExpression())
!688 = distinct !DIGlobalVariable(name: "internal_state", scope: !689, file: !686, line: 97, type: !692, isLocal: true, isDefinition: true)
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !686, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !690, globals: !691, splitDebugInlining: false, nameTableKind: None)
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
!701 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !698, file: !461, line: 19, baseType: !232, size: 32)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !59, isLocal: true, isDefinition: true)
!704 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(scope: null, file: !704, line: 35, type: !237, isLocal: true, isDefinition: true)
!707 = distinct !DICompileUnit(language: DW_LANG_C11, file: !708, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!708 = !DIFile(filename: "lib/dirname-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12591251654a6c6fd0490c627594f543")
!709 = distinct !DICompileUnit(language: DW_LANG_C11, file: !710, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!710 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!711 = distinct !DICompileUnit(language: DW_LANG_C11, file: !586, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !712, retainedTypes: !716, globals: !717, splitDebugInlining: false, nameTableKind: None)
!712 = !{!713}
!713 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !586, line: 40, baseType: !74, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!716 = !{!90}
!717 = !{!584, !587, !589, !591, !593, !595, !600, !605, !607, !612, !614, !619, !624, !626, !631, !636, !641, !646, !648, !650, !652, !654, !656, !658}
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !720, retainedTypes: !748, splitDebugInlining: false, nameTableKind: None)
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
!734 = distinct !DISubprogram(name: "xpalloc", scope: !719, file: !719, line: 223, type: !735, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !738)
!735 = !DISubroutineType(types: !736)
!736 = !{!90, !90, !737, !134, !136, !134}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747}
!739 = !DILocalVariable(name: "pa", arg: 1, scope: !734, file: !719, line: 223, type: !90)
!740 = !DILocalVariable(name: "pn", arg: 2, scope: !734, file: !719, line: 223, type: !737)
!741 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !734, file: !719, line: 223, type: !134)
!742 = !DILocalVariable(name: "n_max", arg: 4, scope: !734, file: !719, line: 223, type: !136)
!743 = !DILocalVariable(name: "s", arg: 5, scope: !734, file: !719, line: 223, type: !134)
!744 = !DILocalVariable(name: "n0", scope: !734, file: !719, line: 230, type: !134)
!745 = !DILocalVariable(name: "n", scope: !734, file: !719, line: 237, type: !134)
!746 = !DILocalVariable(name: "nbytes", scope: !734, file: !719, line: 248, type: !134)
!747 = !DILocalVariable(name: "adjusted_nbytes", scope: !734, file: !719, line: 252, type: !134)
!748 = !{!89, !90, !126, !137, !93}
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !750, splitDebugInlining: false, nameTableKind: None)
!750 = !{!677, !680, !682}
!751 = distinct !DICompileUnit(language: DW_LANG_C11, file: !752, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !434, splitDebugInlining: false, nameTableKind: None)
!752 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!753 = distinct !DICompileUnit(language: DW_LANG_C11, file: !754, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!754 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!755 = distinct !DICompileUnit(language: DW_LANG_C11, file: !756, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!756 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!757 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!758 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!759 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!760 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!761 = distinct !DICompileUnit(language: DW_LANG_C11, file: !762, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !763, splitDebugInlining: false, nameTableKind: None)
!762 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!763 = !{!126, !93, !90}
!764 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !765, splitDebugInlining: false, nameTableKind: None)
!765 = !{!702, !705}
!766 = distinct !DICompileUnit(language: DW_LANG_C11, file: !767, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!767 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !769, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!769 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!770 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!771 = !{i32 7, !"Dwarf Version", i32 5}
!772 = !{i32 2, !"Debug Info Version", i32 3}
!773 = !{i32 1, !"wchar_size", i32 4}
!774 = !{i32 8, !"PIC Level", i32 2}
!775 = !{i32 7, !"PIE Level", i32 2}
!776 = !{i32 7, !"uwtable", i32 2}
!777 = !{i32 7, !"frame-pointer", i32 1}
!778 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 43, type: !779, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !68}
!781 = !{!782}
!782 = !DILocalVariable(name: "status", arg: 1, scope: !778, file: !2, line: 43, type: !68)
!783 = !DILocation(line: 0, scope: !778)
!784 = !DILocation(line: 45, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !2, line: 45, column: 7)
!786 = !DILocation(line: 45, column: 7, scope: !778)
!787 = !DILocation(line: 46, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !2, line: 46, column: 5)
!789 = !{!790, !790, i64 0}
!790 = !{!"any pointer", !791, i64 0}
!791 = !{!"omnipotent char", !792, i64 0}
!792 = !{!"Simple C/C++ TBAA"}
!793 = !DILocation(line: 49, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !785, file: !2, line: 48, column: 5)
!795 = !DILocation(line: 53, column: 7, scope: !794)
!796 = !DILocation(line: 58, column: 7, scope: !794)
!797 = !DILocation(line: 62, column: 7, scope: !794)
!798 = !DILocation(line: 63, column: 7, scope: !794)
!799 = !DILocation(line: 64, column: 7, scope: !794)
!800 = !DILocalVariable(name: "program", arg: 1, scope: !801, file: !67, line: 836, type: !94)
!801 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !802, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !94}
!804 = !{!800, !805, !812, !813, !815, !816}
!805 = !DILocalVariable(name: "infomap", scope: !801, file: !67, line: 838, type: !806)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !807, size: 896, elements: !260)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !801, file: !67, line: 838, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !808, file: !67, line: 838, baseType: !94, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !808, file: !67, line: 838, baseType: !94, size: 64, offset: 64)
!812 = !DILocalVariable(name: "node", scope: !801, file: !67, line: 848, type: !94)
!813 = !DILocalVariable(name: "map_prog", scope: !801, file: !67, line: 849, type: !814)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!815 = !DILocalVariable(name: "lc_messages", scope: !801, file: !67, line: 861, type: !94)
!816 = !DILocalVariable(name: "url_program", scope: !801, file: !67, line: 874, type: !94)
!817 = !DILocation(line: 0, scope: !801, inlinedAt: !818)
!818 = distinct !DILocation(line: 72, column: 7, scope: !794)
!819 = !DILocation(line: 857, column: 3, scope: !801, inlinedAt: !818)
!820 = !DILocation(line: 861, column: 29, scope: !801, inlinedAt: !818)
!821 = !DILocation(line: 862, column: 7, scope: !822, inlinedAt: !818)
!822 = distinct !DILexicalBlock(scope: !801, file: !67, line: 862, column: 7)
!823 = !DILocation(line: 862, column: 19, scope: !822, inlinedAt: !818)
!824 = !DILocation(line: 862, column: 22, scope: !822, inlinedAt: !818)
!825 = !DILocation(line: 862, column: 7, scope: !801, inlinedAt: !818)
!826 = !DILocation(line: 868, column: 7, scope: !827, inlinedAt: !818)
!827 = distinct !DILexicalBlock(scope: !822, file: !67, line: 863, column: 5)
!828 = !DILocation(line: 870, column: 5, scope: !827, inlinedAt: !818)
!829 = !DILocation(line: 875, column: 3, scope: !801, inlinedAt: !818)
!830 = !DILocation(line: 877, column: 3, scope: !801, inlinedAt: !818)
!831 = !DILocation(line: 74, column: 3, scope: !778)
!832 = !DISubprogram(name: "dcgettext", scope: !833, file: !833, line: 51, type: !834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!833 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!834 = !DISubroutineType(types: !835)
!835 = !{!89, !94, !94, !68}
!836 = !{}
!837 = !DISubprogram(name: "__fprintf_chk", scope: !838, file: !838, line: 93, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!838 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!839 = !DISubroutineType(types: !840)
!840 = !{!68, !841, !68, !842, null}
!841 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !141)
!842 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!843 = !DISubprogram(name: "__printf_chk", scope: !838, file: !838, line: 95, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!844 = !DISubroutineType(types: !845)
!845 = !{!68, !68, !842, null}
!846 = !DISubprogram(name: "fputs_unlocked", scope: !387, file: !387, line: 691, type: !847, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!847 = !DISubroutineType(types: !848)
!848 = !{!68, !842, !841}
!849 = !DILocation(line: 0, scope: !195)
!850 = !DILocation(line: 581, column: 7, scope: !203)
!851 = !{!852, !852, i64 0}
!852 = !{!"int", !791, i64 0}
!853 = !DILocation(line: 581, column: 19, scope: !203)
!854 = !DILocation(line: 581, column: 7, scope: !195)
!855 = !DILocation(line: 585, column: 26, scope: !202)
!856 = !DILocation(line: 0, scope: !202)
!857 = !DILocation(line: 586, column: 23, scope: !202)
!858 = !DILocation(line: 586, column: 28, scope: !202)
!859 = !DILocation(line: 586, column: 32, scope: !202)
!860 = !{!791, !791, i64 0}
!861 = !DILocation(line: 586, column: 38, scope: !202)
!862 = !DILocalVariable(name: "__s1", arg: 1, scope: !863, file: !864, line: 1359, type: !94)
!863 = distinct !DISubprogram(name: "streq", scope: !864, file: !864, line: 1359, type: !865, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !867)
!864 = !DIFile(filename: "./lib/string.h", directory: "/src")
!865 = !DISubroutineType(types: !866)
!866 = !{!126, !94, !94}
!867 = !{!862, !868}
!868 = !DILocalVariable(name: "__s2", arg: 2, scope: !863, file: !864, line: 1359, type: !94)
!869 = !DILocation(line: 0, scope: !863, inlinedAt: !870)
!870 = distinct !DILocation(line: 586, column: 41, scope: !202)
!871 = !DILocation(line: 1361, column: 11, scope: !863, inlinedAt: !870)
!872 = !DILocation(line: 1361, column: 10, scope: !863, inlinedAt: !870)
!873 = !DILocation(line: 586, column: 19, scope: !202)
!874 = !DILocation(line: 587, column: 5, scope: !202)
!875 = !DILocation(line: 588, column: 7, scope: !876)
!876 = distinct !DILexicalBlock(scope: !195, file: !67, line: 588, column: 7)
!877 = !DILocation(line: 588, column: 7, scope: !195)
!878 = !DILocation(line: 590, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !876, file: !67, line: 589, column: 5)
!880 = !DILocation(line: 591, column: 7, scope: !879)
!881 = !DILocation(line: 595, column: 37, scope: !195)
!882 = !DILocation(line: 595, column: 35, scope: !195)
!883 = !DILocation(line: 596, column: 29, scope: !195)
!884 = !DILocation(line: 597, column: 8, scope: !210)
!885 = !DILocation(line: 597, column: 7, scope: !195)
!886 = !DILocation(line: 604, column: 24, scope: !209)
!887 = !DILocation(line: 604, column: 12, scope: !210)
!888 = !DILocation(line: 0, scope: !208)
!889 = !DILocation(line: 610, column: 16, scope: !208)
!890 = !DILocation(line: 610, column: 7, scope: !208)
!891 = !DILocation(line: 611, column: 21, scope: !208)
!892 = !{!893, !893, i64 0}
!893 = !{!"short", !791, i64 0}
!894 = !DILocation(line: 611, column: 19, scope: !208)
!895 = !DILocation(line: 611, column: 16, scope: !208)
!896 = !DILocation(line: 610, column: 30, scope: !208)
!897 = distinct !{!897, !890, !891, !898}
!898 = !{!"llvm.loop.mustprogress"}
!899 = !DILocation(line: 612, column: 18, scope: !900)
!900 = distinct !DILexicalBlock(scope: !208, file: !67, line: 612, column: 11)
!901 = !DILocation(line: 612, column: 11, scope: !208)
!902 = !DILocation(line: 620, column: 23, scope: !195)
!903 = !DILocation(line: 625, column: 39, scope: !195)
!904 = !DILocation(line: 626, column: 3, scope: !195)
!905 = !DILocation(line: 626, column: 10, scope: !195)
!906 = !DILocation(line: 626, column: 21, scope: !195)
!907 = !DILocation(line: 628, column: 44, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !67, line: 628, column: 11)
!909 = distinct !DILexicalBlock(scope: !195, file: !67, line: 627, column: 5)
!910 = !DILocation(line: 628, column: 32, scope: !908)
!911 = !DILocation(line: 628, column: 49, scope: !908)
!912 = !DILocation(line: 628, column: 11, scope: !909)
!913 = !DILocation(line: 630, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !67, line: 630, column: 11)
!915 = !DILocation(line: 630, column: 11, scope: !909)
!916 = !DILocation(line: 632, column: 26, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !67, line: 632, column: 15)
!918 = distinct !DILexicalBlock(scope: !914, file: !67, line: 631, column: 9)
!919 = !DILocation(line: 632, column: 34, scope: !917)
!920 = !DILocation(line: 632, column: 37, scope: !917)
!921 = !DILocation(line: 632, column: 15, scope: !918)
!922 = !DILocation(line: 640, column: 16, scope: !909)
!923 = distinct !{!923, !904, !924, !898}
!924 = !DILocation(line: 641, column: 5, scope: !195)
!925 = !DILocation(line: 644, column: 3, scope: !195)
!926 = !DILocation(line: 0, scope: !863, inlinedAt: !927)
!927 = distinct !DILocation(line: 648, column: 31, scope: !195)
!928 = !DILocation(line: 0, scope: !863, inlinedAt: !929)
!929 = distinct !DILocation(line: 649, column: 31, scope: !195)
!930 = !DILocation(line: 0, scope: !863, inlinedAt: !931)
!931 = distinct !DILocation(line: 650, column: 31, scope: !195)
!932 = !DILocation(line: 0, scope: !863, inlinedAt: !933)
!933 = distinct !DILocation(line: 651, column: 31, scope: !195)
!934 = !DILocation(line: 0, scope: !863, inlinedAt: !935)
!935 = distinct !DILocation(line: 652, column: 31, scope: !195)
!936 = !DILocation(line: 0, scope: !863, inlinedAt: !937)
!937 = distinct !DILocation(line: 653, column: 31, scope: !195)
!938 = !DILocation(line: 0, scope: !863, inlinedAt: !939)
!939 = distinct !DILocation(line: 654, column: 31, scope: !195)
!940 = !DILocation(line: 0, scope: !863, inlinedAt: !941)
!941 = distinct !DILocation(line: 655, column: 31, scope: !195)
!942 = !DILocation(line: 0, scope: !863, inlinedAt: !943)
!943 = distinct !DILocation(line: 656, column: 31, scope: !195)
!944 = !DILocation(line: 0, scope: !863, inlinedAt: !945)
!945 = distinct !DILocation(line: 657, column: 31, scope: !195)
!946 = !DILocation(line: 663, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !195, file: !67, line: 663, column: 7)
!948 = !DILocation(line: 664, column: 7, scope: !947)
!949 = !DILocation(line: 664, column: 10, scope: !947)
!950 = !DILocation(line: 663, column: 7, scope: !195)
!951 = !DILocation(line: 669, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !947, file: !67, line: 665, column: 5)
!953 = !DILocation(line: 671, column: 5, scope: !952)
!954 = !DILocation(line: 676, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !947, file: !67, line: 673, column: 5)
!956 = !DILocation(line: 679, column: 3, scope: !195)
!957 = !DILocation(line: 683, column: 3, scope: !195)
!958 = !DILocation(line: 686, column: 3, scope: !195)
!959 = !DILocation(line: 688, column: 3, scope: !195)
!960 = !DILocation(line: 691, column: 3, scope: !195)
!961 = !DILocation(line: 695, column: 3, scope: !195)
!962 = !DILocation(line: 696, column: 1, scope: !195)
!963 = !DISubprogram(name: "setlocale", scope: !964, file: !964, line: 122, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!964 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!965 = !DISubroutineType(types: !966)
!966 = !{!89, !68, !94}
!967 = !DISubprogram(name: "strncmp", scope: !968, file: !968, line: 159, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!968 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!969 = !DISubroutineType(types: !970)
!970 = !{!68, !94, !94, !91}
!971 = !DISubprogram(name: "exit", scope: !972, file: !972, line: 624, type: !779, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !836)
!972 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!973 = !DISubprogram(name: "getenv", scope: !972, file: !972, line: 641, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!974 = !DISubroutineType(types: !975)
!975 = !{!89, !94}
!976 = !DISubprogram(name: "strcmp", scope: !968, file: !968, line: 156, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!977 = !DISubroutineType(types: !978)
!978 = !{!68, !94, !94}
!979 = !DISubprogram(name: "strspn", scope: !968, file: !968, line: 297, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!980 = !DISubroutineType(types: !981)
!981 = !{!93, !94, !94}
!982 = !DISubprogram(name: "strchr", scope: !968, file: !968, line: 246, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!983 = !DISubroutineType(types: !984)
!984 = !{!89, !94, !68}
!985 = !DISubprogram(name: "__ctype_b_loc", scope: !73, file: !73, line: 79, type: !986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!986 = !DISubroutineType(types: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!991 = !DISubprogram(name: "strcspn", scope: !968, file: !968, line: 293, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!992 = !DISubprogram(name: "fwrite_unlocked", scope: !387, file: !387, line: 704, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!993 = !DISubroutineType(types: !994)
!994 = !{!91, !995, !91, !91, !841}
!995 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!998 = !DILocation(line: 0, scope: !118)
!999 = !DILocation(line: 83, column: 21, scope: !118)
!1000 = !DILocation(line: 83, column: 3, scope: !118)
!1001 = !DILocation(line: 84, column: 3, scope: !118)
!1002 = !DILocation(line: 85, column: 3, scope: !118)
!1003 = !DILocation(line: 86, column: 3, scope: !118)
!1004 = !DILocation(line: 88, column: 3, scope: !118)
!1005 = !DILocation(line: 92, column: 15, scope: !128)
!1006 = !DILocation(line: 0, scope: !128)
!1007 = !DILocation(line: 94, column: 11, scope: !128)
!1008 = distinct !{!1008, !1009}
!1009 = !{!"llvm.loop.peeled.count", i32 1}
!1010 = !DILocation(line: 103, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !128, file: !2, line: 98, column: 9)
!1012 = !DILocation(line: 104, column: 9, scope: !1011)
!1013 = !DILocation(line: 107, column: 11, scope: !1011)
!1014 = !DILocation(line: 111, column: 14, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !118, file: !2, line: 111, column: 7)
!1016 = !DILocation(line: 111, column: 12, scope: !1015)
!1017 = !DILocation(line: 111, column: 7, scope: !118)
!1018 = !DILocation(line: 117, column: 3, scope: !132)
!1019 = !DILocation(line: 113, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !2, line: 112, column: 5)
!1021 = !DILocation(line: 114, column: 7, scope: !1020)
!1022 = !DILocation(line: 0, scope: !130)
!1023 = !DILocation(line: 129, column: 7, scope: !130)
!1024 = !DILocation(line: 119, column: 28, scope: !130)
!1025 = !DILocation(line: 120, column: 19, scope: !130)
!1026 = !DILocation(line: 122, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !130, file: !2, line: 122, column: 11)
!1028 = !DILocation(line: 122, column: 11, scope: !130)
!1029 = !DILocalVariable(name: "__c", arg: 1, scope: !1030, file: !1031, line: 108, type: !68)
!1030 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1031, file: !1031, line: 108, type: !1032, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !64, retainedNodes: !1034)
!1031 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!68, !68}
!1034 = !{!1029}
!1035 = !DILocation(line: 0, scope: !1030, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 130, column: 7, scope: !130)
!1037 = !DILocation(line: 110, column: 10, scope: !1030, inlinedAt: !1036)
!1038 = !{!1039, !790, i64 40}
!1039 = !{!"_IO_FILE", !852, i64 0, !790, i64 8, !790, i64 16, !790, i64 24, !790, i64 32, !790, i64 40, !790, i64 48, !790, i64 56, !790, i64 64, !790, i64 72, !790, i64 80, !790, i64 88, !790, i64 96, !790, i64 104, !852, i64 112, !852, i64 116, !1040, i64 120, !893, i64 128, !791, i64 130, !791, i64 131, !790, i64 136, !1040, i64 144, !790, i64 152, !790, i64 160, !790, i64 168, !790, i64 176, !1040, i64 184, !852, i64 192, !791, i64 196}
!1040 = !{!"long", !791, i64 0}
!1041 = !{!1039, !790, i64 48}
!1042 = !{!"branch_weights", i32 2000, i32 1}
!1043 = !DILocation(line: 117, column: 31, scope: !131)
!1044 = !DILocation(line: 117, column: 17, scope: !131)
!1045 = distinct !{!1045, !1018, !1046, !898}
!1046 = !DILocation(line: 131, column: 5, scope: !132)
!1047 = !DILocation(line: 134, column: 1, scope: !118)
!1048 = !DISubprogram(name: "bindtextdomain", scope: !833, file: !833, line: 86, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!89, !94, !94}
!1051 = !DISubprogram(name: "textdomain", scope: !833, file: !833, line: 82, type: !974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1052 = !DISubprogram(name: "atexit", scope: !972, file: !972, line: 602, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!68, !427}
!1055 = !DISubprogram(name: "getopt_long", scope: !344, file: !344, line: 66, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!68, !68, !1058, !94, !1060, !349}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1061 = !DISubprogram(name: "__overflow", scope: !387, file: !387, line: 886, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!68, !141, !68}
!1064 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !361, file: !361, line: 50, type: !802, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1065)
!1065 = !{!1066}
!1066 = !DILocalVariable(name: "file", arg: 1, scope: !1064, file: !361, line: 50, type: !94)
!1067 = !DILocation(line: 0, scope: !1064)
!1068 = !DILocation(line: 52, column: 13, scope: !1064)
!1069 = !DILocation(line: 53, column: 1, scope: !1064)
!1070 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !361, file: !361, line: 87, type: !1071, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !126}
!1073 = !{!1074}
!1074 = !DILocalVariable(name: "ignore", arg: 1, scope: !1070, file: !361, line: 87, type: !126)
!1075 = !DILocation(line: 0, scope: !1070)
!1076 = !DILocation(line: 89, column: 16, scope: !1070)
!1077 = !{!1078, !1078, i64 0}
!1078 = !{!"_Bool", !791, i64 0}
!1079 = !DILocation(line: 90, column: 1, scope: !1070)
!1080 = distinct !DISubprogram(name: "close_stdout", scope: !361, file: !361, line: 116, type: !428, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !1081)
!1081 = !{!1082}
!1082 = !DILocalVariable(name: "write_error", scope: !1083, file: !361, line: 121, type: !94)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !361, line: 120, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !361, line: 118, column: 7)
!1085 = !DILocation(line: 118, column: 21, scope: !1084)
!1086 = !DILocation(line: 118, column: 7, scope: !1084)
!1087 = !DILocation(line: 118, column: 29, scope: !1084)
!1088 = !DILocation(line: 119, column: 7, scope: !1084)
!1089 = !DILocation(line: 119, column: 12, scope: !1084)
!1090 = !{i8 0, i8 2}
!1091 = !DILocation(line: 119, column: 25, scope: !1084)
!1092 = !DILocation(line: 119, column: 28, scope: !1084)
!1093 = !DILocation(line: 119, column: 34, scope: !1084)
!1094 = !DILocation(line: 118, column: 7, scope: !1080)
!1095 = !DILocation(line: 121, column: 33, scope: !1083)
!1096 = !DILocation(line: 0, scope: !1083)
!1097 = !DILocation(line: 122, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1083, file: !361, line: 122, column: 11)
!1099 = !DILocation(line: 0, scope: !1098)
!1100 = !DILocation(line: 122, column: 11, scope: !1083)
!1101 = !DILocation(line: 123, column: 9, scope: !1098)
!1102 = !DILocation(line: 126, column: 9, scope: !1098)
!1103 = !DILocation(line: 128, column: 14, scope: !1083)
!1104 = !DILocation(line: 128, column: 7, scope: !1083)
!1105 = !DILocation(line: 133, column: 42, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1080, file: !361, line: 133, column: 7)
!1107 = !DILocation(line: 133, column: 28, scope: !1106)
!1108 = !DILocation(line: 133, column: 50, scope: !1106)
!1109 = !DILocation(line: 133, column: 7, scope: !1080)
!1110 = !DILocation(line: 134, column: 12, scope: !1106)
!1111 = !DILocation(line: 134, column: 5, scope: !1106)
!1112 = !DILocation(line: 135, column: 1, scope: !1080)
!1113 = !DISubprogram(name: "__errno_location", scope: !1114, file: !1114, line: 37, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1114 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!349}
!1117 = !DISubprogram(name: "_exit", scope: !1118, file: !1118, line: 624, type: !779, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1118 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1119 = distinct !DISubprogram(name: "dir_len", scope: !708, file: !708, line: 32, type: !1120, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!91, !94}
!1122 = !{!1123, !1124, !1125}
!1123 = !DILocalVariable(name: "file", arg: 1, scope: !1119, file: !708, line: 32, type: !94)
!1124 = !DILocalVariable(name: "prefix_length", scope: !1119, file: !708, line: 34, type: !91)
!1125 = !DILocalVariable(name: "length", scope: !1119, file: !708, line: 47, type: !91)
!1126 = !DILocation(line: 0, scope: !1119)
!1127 = !DILocation(line: 40, column: 24, scope: !1119)
!1128 = !DILocation(line: 48, column: 17, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1119, file: !708, line: 48, column: 3)
!1130 = !DILocation(line: 48, column: 39, scope: !1129)
!1131 = !DILocation(line: 48, column: 8, scope: !1129)
!1132 = !DILocation(line: 0, scope: !1129)
!1133 = !DILocation(line: 49, column: 22, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !708, line: 48, column: 3)
!1135 = !DILocation(line: 48, column: 3, scope: !1129)
!1136 = !DILocation(line: 51, column: 11, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !708, line: 51, column: 9)
!1138 = !DILocation(line: 51, column: 9, scope: !1134)
!1139 = distinct !{!1139, !1135, !1140, !898}
!1140 = !DILocation(line: 52, column: 7, scope: !1129)
!1141 = !DILocation(line: 53, column: 3, scope: !1119)
!1142 = distinct !DISubprogram(name: "mdir_name", scope: !708, file: !708, line: 72, type: !974, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1143)
!1143 = !{!1144, !1145, !1146, !1147}
!1144 = !DILocalVariable(name: "file", arg: 1, scope: !1142, file: !708, line: 72, type: !94)
!1145 = !DILocalVariable(name: "length", scope: !1142, file: !708, line: 74, type: !91)
!1146 = !DILocalVariable(name: "append_dot", scope: !1142, file: !708, line: 75, type: !126)
!1147 = !DILocalVariable(name: "dir", scope: !1142, file: !708, line: 79, type: !89)
!1148 = !DILocation(line: 0, scope: !1142)
!1149 = !DILocation(line: 0, scope: !1119, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 74, column: 19, scope: !1142)
!1151 = !DILocation(line: 40, column: 24, scope: !1119, inlinedAt: !1150)
!1152 = !DILocation(line: 48, column: 17, scope: !1129, inlinedAt: !1150)
!1153 = !DILocation(line: 48, column: 39, scope: !1129, inlinedAt: !1150)
!1154 = !DILocation(line: 48, column: 8, scope: !1129, inlinedAt: !1150)
!1155 = !DILocation(line: 0, scope: !1129, inlinedAt: !1150)
!1156 = !DILocation(line: 49, column: 22, scope: !1134, inlinedAt: !1150)
!1157 = !DILocation(line: 48, column: 3, scope: !1129, inlinedAt: !1150)
!1158 = !DILocation(line: 51, column: 11, scope: !1137, inlinedAt: !1150)
!1159 = !DILocation(line: 51, column: 9, scope: !1134, inlinedAt: !1150)
!1160 = distinct !{!1160, !1157, !1161, !898}
!1161 = !DILocation(line: 52, column: 7, scope: !1129, inlinedAt: !1150)
!1162 = !DILocation(line: 75, column: 29, scope: !1142)
!1163 = !DILocation(line: 79, column: 32, scope: !1142)
!1164 = !DILocation(line: 79, column: 30, scope: !1142)
!1165 = !DILocation(line: 79, column: 43, scope: !1142)
!1166 = !DILocation(line: 79, column: 15, scope: !1142)
!1167 = !DILocation(line: 80, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1142, file: !708, line: 80, column: 7)
!1169 = !DILocation(line: 80, column: 7, scope: !1142)
!1170 = !DILocalVariable(name: "__dest", arg: 1, scope: !1171, file: !1172, line: 26, type: !1175)
!1171 = distinct !DISubprogram(name: "memcpy", scope: !1172, file: !1172, line: 26, type: !1173, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !707, retainedNodes: !1176)
!1172 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!90, !1175, !995, !91}
!1175 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!1176 = !{!1170, !1177, !1178}
!1177 = !DILocalVariable(name: "__src", arg: 2, scope: !1171, file: !1172, line: 26, type: !995)
!1178 = !DILocalVariable(name: "__len", arg: 3, scope: !1171, file: !1172, line: 26, type: !91)
!1179 = !DILocation(line: 0, scope: !1171, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 82, column: 3, scope: !1142)
!1181 = !DILocation(line: 29, column: 10, scope: !1171, inlinedAt: !1180)
!1182 = !DILocation(line: 83, column: 7, scope: !1142)
!1183 = !DILocation(line: 84, column: 19, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1142, file: !708, line: 83, column: 7)
!1185 = !DILocation(line: 84, column: 5, scope: !1184)
!1186 = !DILocation(line: 85, column: 3, scope: !1142)
!1187 = !DILocation(line: 85, column: 15, scope: !1142)
!1188 = !DILocation(line: 86, column: 3, scope: !1142)
!1189 = !DILocation(line: 87, column: 1, scope: !1142)
!1190 = !DISubprogram(name: "malloc", scope: !972, file: !972, line: 540, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!90, !91}
!1193 = distinct !DISubprogram(name: "verror", scope: !376, file: !376, line: 251, type: !1194, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !68, !68, !94, !386}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "status", arg: 1, scope: !1193, file: !376, line: 251, type: !68)
!1198 = !DILocalVariable(name: "errnum", arg: 2, scope: !1193, file: !376, line: 251, type: !68)
!1199 = !DILocalVariable(name: "message", arg: 3, scope: !1193, file: !376, line: 251, type: !94)
!1200 = !DILocalVariable(name: "args", arg: 4, scope: !1193, file: !376, line: 251, type: !386)
!1201 = !DILocation(line: 0, scope: !1193)
!1202 = !DILocation(line: 251, column: 1, scope: !1193)
!1203 = !DILocation(line: 261, column: 3, scope: !1193)
!1204 = !DILocation(line: 265, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1193, file: !376, line: 265, column: 7)
!1206 = !DILocation(line: 265, column: 7, scope: !1193)
!1207 = !DILocation(line: 266, column: 5, scope: !1205)
!1208 = !DILocation(line: 272, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !376, line: 268, column: 5)
!1210 = !DILocation(line: 276, column: 3, scope: !1193)
!1211 = !{i64 0, i64 8, !789, i64 8, i64 8, !789, i64 16, i64 8, !789, i64 24, i64 4, !851, i64 28, i64 4, !851}
!1212 = !DILocation(line: 282, column: 1, scope: !1193)
!1213 = distinct !DISubprogram(name: "flush_stdout", scope: !376, file: !376, line: 163, type: !428, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1214)
!1214 = !{!1215}
!1215 = !DILocalVariable(name: "stdout_fd", scope: !1213, file: !376, line: 166, type: !68)
!1216 = !DILocation(line: 0, scope: !1213)
!1217 = !DILocalVariable(name: "fd", arg: 1, scope: !1218, file: !376, line: 145, type: !68)
!1218 = distinct !DISubprogram(name: "is_open", scope: !376, file: !376, line: 145, type: !1032, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1219)
!1219 = !{!1217}
!1220 = !DILocation(line: 0, scope: !1218, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 182, column: 25, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !376, line: 182, column: 7)
!1223 = !DILocation(line: 157, column: 15, scope: !1218, inlinedAt: !1221)
!1224 = !DILocation(line: 157, column: 12, scope: !1218, inlinedAt: !1221)
!1225 = !DILocation(line: 182, column: 7, scope: !1213)
!1226 = !DILocation(line: 184, column: 5, scope: !1222)
!1227 = !DILocation(line: 185, column: 1, scope: !1213)
!1228 = distinct !DISubprogram(name: "error_tail", scope: !376, file: !376, line: 219, type: !1194, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1229)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DILocalVariable(name: "status", arg: 1, scope: !1228, file: !376, line: 219, type: !68)
!1231 = !DILocalVariable(name: "errnum", arg: 2, scope: !1228, file: !376, line: 219, type: !68)
!1232 = !DILocalVariable(name: "message", arg: 3, scope: !1228, file: !376, line: 219, type: !94)
!1233 = !DILocalVariable(name: "args", arg: 4, scope: !1228, file: !376, line: 219, type: !386)
!1234 = !DILocation(line: 0, scope: !1228)
!1235 = !DILocation(line: 219, column: 1, scope: !1228)
!1236 = !DILocation(line: 229, column: 13, scope: !1228)
!1237 = !DILocation(line: 135, column: 10, scope: !1238, inlinedAt: !1280)
!1238 = distinct !DISubprogram(name: "vfprintf", scope: !838, file: !838, line: 132, type: !1239, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1276)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!68, !1241, !842, !388}
!1241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1244, file: !145, line: 51, baseType: !68, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1244, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1244, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1244, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1244, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1244, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1244, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1244, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1244, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1244, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1244, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1244, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1244, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1244, file: !145, line: 70, baseType: !1260, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1244, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1244, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1244, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1244, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1244, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1244, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1244, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1244, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1244, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1244, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1244, file: !145, line: 93, baseType: !1260, size: 64, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1244, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1244, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1244, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1244, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "__stream", arg: 1, scope: !1238, file: !838, line: 132, type: !1241)
!1278 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1238, file: !838, line: 133, type: !842)
!1279 = !DILocalVariable(name: "__ap", arg: 3, scope: !1238, file: !838, line: 133, type: !388)
!1280 = distinct !DILocation(line: 229, column: 3, scope: !1228)
!1281 = !{!1282, !1284}
!1282 = distinct !{!1282, !1283, !"vfprintf.inline: argument 0"}
!1283 = distinct !{!1283, !"vfprintf.inline"}
!1284 = distinct !{!1284, !1283, !"vfprintf.inline: argument 1"}
!1285 = !DILocation(line: 229, column: 3, scope: !1228)
!1286 = !DILocation(line: 0, scope: !1238, inlinedAt: !1280)
!1287 = !DILocation(line: 133, column: 49, scope: !1238, inlinedAt: !1280)
!1288 = !DILocation(line: 232, column: 3, scope: !1228)
!1289 = !DILocation(line: 233, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1228, file: !376, line: 233, column: 7)
!1291 = !DILocation(line: 233, column: 7, scope: !1228)
!1292 = !DILocalVariable(name: "errnum", arg: 1, scope: !1293, file: !376, line: 188, type: !68)
!1293 = distinct !DISubprogram(name: "print_errno_message", scope: !376, file: !376, line: 188, type: !779, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1294)
!1294 = !{!1292, !1295, !1296}
!1295 = !DILocalVariable(name: "s", scope: !1293, file: !376, line: 190, type: !94)
!1296 = !DILocalVariable(name: "errbuf", scope: !1293, file: !376, line: 193, type: !1297)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 1024)
!1300 = !DILocation(line: 0, scope: !1293, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 234, column: 5, scope: !1290)
!1302 = !DILocation(line: 193, column: 3, scope: !1293, inlinedAt: !1301)
!1303 = !DILocation(line: 193, column: 8, scope: !1293, inlinedAt: !1301)
!1304 = !DILocation(line: 195, column: 7, scope: !1293, inlinedAt: !1301)
!1305 = !DILocation(line: 207, column: 9, scope: !1306, inlinedAt: !1301)
!1306 = distinct !DILexicalBlock(scope: !1293, file: !376, line: 207, column: 7)
!1307 = !DILocation(line: 207, column: 7, scope: !1293, inlinedAt: !1301)
!1308 = !DILocation(line: 208, column: 9, scope: !1306, inlinedAt: !1301)
!1309 = !DILocation(line: 208, column: 5, scope: !1306, inlinedAt: !1301)
!1310 = !DILocation(line: 214, column: 3, scope: !1293, inlinedAt: !1301)
!1311 = !DILocation(line: 216, column: 1, scope: !1293, inlinedAt: !1301)
!1312 = !DILocation(line: 234, column: 5, scope: !1290)
!1313 = !DILocation(line: 238, column: 3, scope: !1228)
!1314 = !DILocalVariable(name: "__c", arg: 1, scope: !1315, file: !1031, line: 101, type: !68)
!1315 = distinct !DISubprogram(name: "putc_unlocked", scope: !1031, file: !1031, line: 101, type: !1316, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!68, !68, !1242}
!1318 = !{!1314, !1319}
!1319 = !DILocalVariable(name: "__stream", arg: 2, scope: !1315, file: !1031, line: 101, type: !1242)
!1320 = !DILocation(line: 0, scope: !1315, inlinedAt: !1321)
!1321 = distinct !DILocation(line: 238, column: 3, scope: !1228)
!1322 = !DILocation(line: 103, column: 10, scope: !1315, inlinedAt: !1321)
!1323 = !DILocation(line: 240, column: 3, scope: !1228)
!1324 = !DILocation(line: 241, column: 7, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1228, file: !376, line: 241, column: 7)
!1326 = !DILocation(line: 241, column: 7, scope: !1228)
!1327 = !DILocation(line: 242, column: 5, scope: !1325)
!1328 = !DILocation(line: 243, column: 1, scope: !1228)
!1329 = !DISubprogram(name: "__vfprintf_chk", scope: !838, file: !838, line: 96, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!68, !1241, !68, !842, !388}
!1332 = !DISubprogram(name: "strerror_r", scope: !968, file: !968, line: 444, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!89, !68, !89, !91}
!1335 = !DISubprogram(name: "fflush_unlocked", scope: !387, file: !387, line: 239, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!68, !1242}
!1338 = !DISubprogram(name: "fcntl", scope: !1339, file: !1339, line: 149, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1339 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!68, !68, !68, null}
!1342 = distinct !DISubprogram(name: "error", scope: !376, file: !376, line: 285, type: !1343, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !68, !68, !94, null}
!1345 = !{!1346, !1347, !1348, !1349}
!1346 = !DILocalVariable(name: "status", arg: 1, scope: !1342, file: !376, line: 285, type: !68)
!1347 = !DILocalVariable(name: "errnum", arg: 2, scope: !1342, file: !376, line: 285, type: !68)
!1348 = !DILocalVariable(name: "message", arg: 3, scope: !1342, file: !376, line: 285, type: !94)
!1349 = !DILocalVariable(name: "ap", scope: !1342, file: !376, line: 287, type: !386)
!1350 = !DILocation(line: 0, scope: !1342)
!1351 = !DILocation(line: 287, column: 3, scope: !1342)
!1352 = !DILocation(line: 287, column: 11, scope: !1342)
!1353 = !DILocation(line: 288, column: 3, scope: !1342)
!1354 = !DILocation(line: 289, column: 3, scope: !1342)
!1355 = !DILocation(line: 290, column: 3, scope: !1342)
!1356 = !DILocation(line: 291, column: 1, scope: !1342)
!1357 = !DILocation(line: 0, scope: !383)
!1358 = !DILocation(line: 298, column: 1, scope: !383)
!1359 = !DILocation(line: 302, column: 7, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !383, file: !376, line: 302, column: 7)
!1361 = !DILocation(line: 302, column: 7, scope: !383)
!1362 = !DILocation(line: 307, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !376, line: 307, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !376, line: 303, column: 5)
!1365 = !DILocation(line: 307, column: 27, scope: !1363)
!1366 = !DILocation(line: 308, column: 11, scope: !1363)
!1367 = !DILocation(line: 308, column: 28, scope: !1363)
!1368 = !DILocation(line: 308, column: 25, scope: !1363)
!1369 = !DILocation(line: 309, column: 15, scope: !1363)
!1370 = !DILocation(line: 309, column: 33, scope: !1363)
!1371 = !DILocation(line: 310, column: 19, scope: !1363)
!1372 = !DILocation(line: 311, column: 22, scope: !1363)
!1373 = !DILocation(line: 311, column: 56, scope: !1363)
!1374 = !DILocation(line: 307, column: 11, scope: !1364)
!1375 = !DILocation(line: 316, column: 21, scope: !1364)
!1376 = !DILocation(line: 317, column: 23, scope: !1364)
!1377 = !DILocation(line: 318, column: 5, scope: !1364)
!1378 = !DILocation(line: 327, column: 3, scope: !383)
!1379 = !DILocation(line: 331, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !383, file: !376, line: 331, column: 7)
!1381 = !DILocation(line: 331, column: 7, scope: !383)
!1382 = !DILocation(line: 332, column: 5, scope: !1380)
!1383 = !DILocation(line: 338, column: 7, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !376, line: 334, column: 5)
!1385 = !DILocation(line: 346, column: 3, scope: !383)
!1386 = !DILocation(line: 350, column: 3, scope: !383)
!1387 = !DILocation(line: 356, column: 1, scope: !383)
!1388 = distinct !DISubprogram(name: "error_at_line", scope: !376, file: !376, line: 359, type: !1389, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{null, !68, !68, !94, !74, !94, null}
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397}
!1392 = !DILocalVariable(name: "status", arg: 1, scope: !1388, file: !376, line: 359, type: !68)
!1393 = !DILocalVariable(name: "errnum", arg: 2, scope: !1388, file: !376, line: 359, type: !68)
!1394 = !DILocalVariable(name: "file_name", arg: 3, scope: !1388, file: !376, line: 359, type: !94)
!1395 = !DILocalVariable(name: "line_number", arg: 4, scope: !1388, file: !376, line: 360, type: !74)
!1396 = !DILocalVariable(name: "message", arg: 5, scope: !1388, file: !376, line: 360, type: !94)
!1397 = !DILocalVariable(name: "ap", scope: !1388, file: !376, line: 362, type: !386)
!1398 = !DILocation(line: 0, scope: !1388)
!1399 = !DILocation(line: 362, column: 3, scope: !1388)
!1400 = !DILocation(line: 362, column: 11, scope: !1388)
!1401 = !DILocation(line: 363, column: 3, scope: !1388)
!1402 = !DILocation(line: 364, column: 3, scope: !1388)
!1403 = !DILocation(line: 366, column: 3, scope: !1388)
!1404 = !DILocation(line: 367, column: 1, scope: !1388)
!1405 = distinct !DISubprogram(name: "getprogname", scope: !710, file: !710, line: 54, type: !1406, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !709, retainedNodes: !836)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!94}
!1408 = !DILocation(line: 58, column: 10, scope: !1405)
!1409 = !DILocation(line: 58, column: 3, scope: !1405)
!1410 = distinct !DISubprogram(name: "set_program_name", scope: !433, file: !433, line: 37, type: !802, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DILocalVariable(name: "argv0", arg: 1, scope: !1410, file: !433, line: 37, type: !94)
!1413 = !DILocalVariable(name: "slash", scope: !1410, file: !433, line: 44, type: !94)
!1414 = !DILocalVariable(name: "base", scope: !1410, file: !433, line: 45, type: !94)
!1415 = !DILocation(line: 0, scope: !1410)
!1416 = !DILocation(line: 44, column: 23, scope: !1410)
!1417 = !DILocation(line: 45, column: 22, scope: !1410)
!1418 = !DILocation(line: 46, column: 17, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1410, file: !433, line: 46, column: 7)
!1420 = !DILocation(line: 46, column: 9, scope: !1419)
!1421 = !DILocation(line: 46, column: 25, scope: !1419)
!1422 = !DILocation(line: 46, column: 40, scope: !1419)
!1423 = !DILocalVariable(name: "__s1", arg: 1, scope: !1424, file: !864, line: 974, type: !996)
!1424 = distinct !DISubprogram(name: "memeq", scope: !864, file: !864, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !432, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!126, !996, !996, !91}
!1427 = !{!1423, !1428, !1429}
!1428 = !DILocalVariable(name: "__s2", arg: 2, scope: !1424, file: !864, line: 974, type: !996)
!1429 = !DILocalVariable(name: "__n", arg: 3, scope: !1424, file: !864, line: 974, type: !91)
!1430 = !DILocation(line: 0, scope: !1424, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 46, column: 28, scope: !1419)
!1432 = !DILocation(line: 976, column: 11, scope: !1424, inlinedAt: !1431)
!1433 = !DILocation(line: 976, column: 10, scope: !1424, inlinedAt: !1431)
!1434 = !DILocation(line: 46, column: 7, scope: !1410)
!1435 = !DILocation(line: 49, column: 11, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !433, line: 49, column: 11)
!1437 = distinct !DILexicalBlock(scope: !1419, file: !433, line: 47, column: 5)
!1438 = !DILocation(line: 49, column: 36, scope: !1436)
!1439 = !DILocation(line: 49, column: 11, scope: !1437)
!1440 = !DILocation(line: 65, column: 16, scope: !1410)
!1441 = !DILocation(line: 71, column: 27, scope: !1410)
!1442 = !DILocation(line: 74, column: 33, scope: !1410)
!1443 = !DILocation(line: 76, column: 1, scope: !1410)
!1444 = !DISubprogram(name: "strrchr", scope: !968, file: !968, line: 273, type: !983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1445 = !DILocation(line: 0, scope: !442)
!1446 = !DILocation(line: 40, column: 29, scope: !442)
!1447 = !DILocation(line: 41, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !442, file: !443, line: 41, column: 7)
!1449 = !DILocation(line: 41, column: 7, scope: !442)
!1450 = !DILocation(line: 47, column: 3, scope: !442)
!1451 = !DILocation(line: 48, column: 3, scope: !442)
!1452 = !DILocation(line: 48, column: 13, scope: !442)
!1453 = !DILocalVariable(name: "ps", arg: 1, scope: !1454, file: !1455, line: 1135, type: !1458)
!1454 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1456, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !1459)
!1455 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1459 = !{!1453}
!1460 = !DILocation(line: 0, scope: !1454, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 48, column: 18, scope: !442)
!1462 = !DILocalVariable(name: "__dest", arg: 1, scope: !1463, file: !1172, line: 57, type: !90)
!1463 = distinct !DISubprogram(name: "memset", scope: !1172, file: !1172, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!90, !90, !68, !91}
!1466 = !{!1462, !1467, !1468}
!1467 = !DILocalVariable(name: "__ch", arg: 2, scope: !1463, file: !1172, line: 57, type: !68)
!1468 = !DILocalVariable(name: "__len", arg: 3, scope: !1463, file: !1172, line: 57, type: !91)
!1469 = !DILocation(line: 0, scope: !1463, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 1137, column: 3, scope: !1454, inlinedAt: !1461)
!1471 = !DILocation(line: 59, column: 10, scope: !1463, inlinedAt: !1470)
!1472 = !DILocation(line: 49, column: 7, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !442, file: !443, line: 49, column: 7)
!1474 = !DILocation(line: 49, column: 39, scope: !1473)
!1475 = !DILocation(line: 49, column: 44, scope: !1473)
!1476 = !DILocation(line: 54, column: 1, scope: !442)
!1477 = !DISubprogram(name: "mbrtoc32", scope: !454, file: !454, line: 57, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!91, !1480, !842, !91, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1481)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1458)
!1483 = distinct !DISubprogram(name: "clone_quoting_options", scope: !473, file: !473, line: 113, type: !1484, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1487)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1486, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1487 = !{!1488, !1489, !1490}
!1488 = !DILocalVariable(name: "o", arg: 1, scope: !1483, file: !473, line: 113, type: !1486)
!1489 = !DILocalVariable(name: "saved_errno", scope: !1483, file: !473, line: 115, type: !68)
!1490 = !DILocalVariable(name: "p", scope: !1483, file: !473, line: 116, type: !1486)
!1491 = !DILocation(line: 0, scope: !1483)
!1492 = !DILocation(line: 115, column: 21, scope: !1483)
!1493 = !DILocation(line: 116, column: 40, scope: !1483)
!1494 = !DILocation(line: 116, column: 31, scope: !1483)
!1495 = !DILocation(line: 118, column: 9, scope: !1483)
!1496 = !DILocation(line: 119, column: 3, scope: !1483)
!1497 = distinct !DISubprogram(name: "get_quoting_style", scope: !473, file: !473, line: 124, type: !1498, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1502)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!496, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!1502 = !{!1503}
!1503 = !DILocalVariable(name: "o", arg: 1, scope: !1497, file: !473, line: 124, type: !1500)
!1504 = !DILocation(line: 0, scope: !1497)
!1505 = !DILocation(line: 126, column: 11, scope: !1497)
!1506 = !DILocation(line: 126, column: 46, scope: !1497)
!1507 = !{!1508, !791, i64 0}
!1508 = !{!"quoting_options", !791, i64 0, !852, i64 4, !791, i64 8, !790, i64 40, !790, i64 48}
!1509 = !DILocation(line: 126, column: 3, scope: !1497)
!1510 = distinct !DISubprogram(name: "set_quoting_style", scope: !473, file: !473, line: 132, type: !1511, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null, !1486, !496}
!1513 = !{!1514, !1515}
!1514 = !DILocalVariable(name: "o", arg: 1, scope: !1510, file: !473, line: 132, type: !1486)
!1515 = !DILocalVariable(name: "s", arg: 2, scope: !1510, file: !473, line: 132, type: !496)
!1516 = !DILocation(line: 0, scope: !1510)
!1517 = !DILocation(line: 134, column: 4, scope: !1510)
!1518 = !DILocation(line: 134, column: 45, scope: !1510)
!1519 = !DILocation(line: 135, column: 1, scope: !1510)
!1520 = distinct !DISubprogram(name: "set_char_quoting", scope: !473, file: !473, line: 143, type: !1521, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!68, !1486, !4, !68}
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1530, !1531}
!1524 = !DILocalVariable(name: "o", arg: 1, scope: !1520, file: !473, line: 143, type: !1486)
!1525 = !DILocalVariable(name: "c", arg: 2, scope: !1520, file: !473, line: 143, type: !4)
!1526 = !DILocalVariable(name: "i", arg: 3, scope: !1520, file: !473, line: 143, type: !68)
!1527 = !DILocalVariable(name: "uc", scope: !1520, file: !473, line: 145, type: !97)
!1528 = !DILocalVariable(name: "p", scope: !1520, file: !473, line: 146, type: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!1530 = !DILocalVariable(name: "shift", scope: !1520, file: !473, line: 148, type: !68)
!1531 = !DILocalVariable(name: "r", scope: !1520, file: !473, line: 149, type: !74)
!1532 = !DILocation(line: 0, scope: !1520)
!1533 = !DILocation(line: 147, column: 6, scope: !1520)
!1534 = !DILocation(line: 147, column: 41, scope: !1520)
!1535 = !DILocation(line: 147, column: 62, scope: !1520)
!1536 = !DILocation(line: 147, column: 57, scope: !1520)
!1537 = !DILocation(line: 148, column: 15, scope: !1520)
!1538 = !DILocation(line: 149, column: 21, scope: !1520)
!1539 = !DILocation(line: 149, column: 24, scope: !1520)
!1540 = !DILocation(line: 149, column: 34, scope: !1520)
!1541 = !DILocation(line: 150, column: 19, scope: !1520)
!1542 = !DILocation(line: 150, column: 24, scope: !1520)
!1543 = !DILocation(line: 150, column: 6, scope: !1520)
!1544 = !DILocation(line: 151, column: 3, scope: !1520)
!1545 = distinct !DISubprogram(name: "set_quoting_flags", scope: !473, file: !473, line: 159, type: !1546, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!68, !1486, !68}
!1548 = !{!1549, !1550, !1551}
!1549 = !DILocalVariable(name: "o", arg: 1, scope: !1545, file: !473, line: 159, type: !1486)
!1550 = !DILocalVariable(name: "i", arg: 2, scope: !1545, file: !473, line: 159, type: !68)
!1551 = !DILocalVariable(name: "r", scope: !1545, file: !473, line: 163, type: !68)
!1552 = !DILocation(line: 0, scope: !1545)
!1553 = !DILocation(line: 161, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !473, line: 161, column: 7)
!1555 = !DILocation(line: 161, column: 7, scope: !1545)
!1556 = !DILocation(line: 163, column: 14, scope: !1545)
!1557 = !{!1508, !852, i64 4}
!1558 = !DILocation(line: 164, column: 12, scope: !1545)
!1559 = !DILocation(line: 165, column: 3, scope: !1545)
!1560 = distinct !DISubprogram(name: "set_custom_quoting", scope: !473, file: !473, line: 169, type: !1561, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1486, !94, !94}
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1560, file: !473, line: 169, type: !1486)
!1565 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1560, file: !473, line: 170, type: !94)
!1566 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1560, file: !473, line: 170, type: !94)
!1567 = !DILocation(line: 0, scope: !1560)
!1568 = !DILocation(line: 172, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !473, line: 172, column: 7)
!1570 = !DILocation(line: 172, column: 7, scope: !1560)
!1571 = !DILocation(line: 174, column: 12, scope: !1560)
!1572 = !DILocation(line: 175, column: 8, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1560, file: !473, line: 175, column: 7)
!1574 = !DILocation(line: 175, column: 19, scope: !1573)
!1575 = !DILocation(line: 176, column: 5, scope: !1573)
!1576 = !DILocation(line: 177, column: 6, scope: !1560)
!1577 = !DILocation(line: 177, column: 17, scope: !1560)
!1578 = !{!1508, !790, i64 40}
!1579 = !DILocation(line: 178, column: 6, scope: !1560)
!1580 = !DILocation(line: 178, column: 18, scope: !1560)
!1581 = !{!1508, !790, i64 48}
!1582 = !DILocation(line: 179, column: 1, scope: !1560)
!1583 = !DISubprogram(name: "abort", scope: !972, file: !972, line: 598, type: !428, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !836)
!1584 = distinct !DISubprogram(name: "quotearg_buffer", scope: !473, file: !473, line: 774, type: !1585, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!91, !89, !91, !94, !91, !1500}
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1588 = !DILocalVariable(name: "buffer", arg: 1, scope: !1584, file: !473, line: 774, type: !89)
!1589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1584, file: !473, line: 774, type: !91)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1584, file: !473, line: 775, type: !94)
!1591 = !DILocalVariable(name: "argsize", arg: 4, scope: !1584, file: !473, line: 775, type: !91)
!1592 = !DILocalVariable(name: "o", arg: 5, scope: !1584, file: !473, line: 776, type: !1500)
!1593 = !DILocalVariable(name: "p", scope: !1584, file: !473, line: 778, type: !1500)
!1594 = !DILocalVariable(name: "saved_errno", scope: !1584, file: !473, line: 779, type: !68)
!1595 = !DILocalVariable(name: "r", scope: !1584, file: !473, line: 780, type: !91)
!1596 = !DILocation(line: 0, scope: !1584)
!1597 = !DILocation(line: 778, column: 37, scope: !1584)
!1598 = !DILocation(line: 779, column: 21, scope: !1584)
!1599 = !DILocation(line: 781, column: 43, scope: !1584)
!1600 = !DILocation(line: 781, column: 53, scope: !1584)
!1601 = !DILocation(line: 781, column: 63, scope: !1584)
!1602 = !DILocation(line: 782, column: 43, scope: !1584)
!1603 = !DILocation(line: 782, column: 58, scope: !1584)
!1604 = !DILocation(line: 780, column: 14, scope: !1584)
!1605 = !DILocation(line: 783, column: 9, scope: !1584)
!1606 = !DILocation(line: 784, column: 3, scope: !1584)
!1607 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !473, file: !473, line: 251, type: !1608, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1612)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!91, !89, !91, !94, !91, !496, !68, !1610, !94, !94}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1637, !1639, !1642, !1643, !1644, !1645, !1648, !1649, !1652, !1656, !1657, !1665, !1668, !1669, !1671, !1672, !1673, !1674}
!1613 = !DILocalVariable(name: "buffer", arg: 1, scope: !1607, file: !473, line: 251, type: !89)
!1614 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1607, file: !473, line: 251, type: !91)
!1615 = !DILocalVariable(name: "arg", arg: 3, scope: !1607, file: !473, line: 252, type: !94)
!1616 = !DILocalVariable(name: "argsize", arg: 4, scope: !1607, file: !473, line: 252, type: !91)
!1617 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1607, file: !473, line: 253, type: !496)
!1618 = !DILocalVariable(name: "flags", arg: 6, scope: !1607, file: !473, line: 253, type: !68)
!1619 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1607, file: !473, line: 254, type: !1610)
!1620 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1607, file: !473, line: 255, type: !94)
!1621 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1607, file: !473, line: 256, type: !94)
!1622 = !DILocalVariable(name: "unibyte_locale", scope: !1607, file: !473, line: 258, type: !126)
!1623 = !DILocalVariable(name: "len", scope: !1607, file: !473, line: 260, type: !91)
!1624 = !DILocalVariable(name: "orig_buffersize", scope: !1607, file: !473, line: 261, type: !91)
!1625 = !DILocalVariable(name: "quote_string", scope: !1607, file: !473, line: 262, type: !94)
!1626 = !DILocalVariable(name: "quote_string_len", scope: !1607, file: !473, line: 263, type: !91)
!1627 = !DILocalVariable(name: "backslash_escapes", scope: !1607, file: !473, line: 264, type: !126)
!1628 = !DILocalVariable(name: "elide_outer_quotes", scope: !1607, file: !473, line: 265, type: !126)
!1629 = !DILocalVariable(name: "encountered_single_quote", scope: !1607, file: !473, line: 266, type: !126)
!1630 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1607, file: !473, line: 267, type: !126)
!1631 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1607, file: !473, line: 309, type: !126)
!1632 = !DILocalVariable(name: "lq", scope: !1633, file: !473, line: 361, type: !94)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !473, line: 361, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !473, line: 360, column: 13)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !473, line: 333, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 312, column: 5)
!1637 = !DILocalVariable(name: "i", scope: !1638, file: !473, line: 395, type: !91)
!1638 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 395, column: 3)
!1639 = !DILocalVariable(name: "is_right_quote", scope: !1640, file: !473, line: 397, type: !126)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !473, line: 396, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !473, line: 395, column: 3)
!1642 = !DILocalVariable(name: "escaping", scope: !1640, file: !473, line: 398, type: !126)
!1643 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1640, file: !473, line: 399, type: !126)
!1644 = !DILocalVariable(name: "c", scope: !1640, file: !473, line: 417, type: !97)
!1645 = !DILocalVariable(name: "m", scope: !1646, file: !473, line: 598, type: !91)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 596, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 419, column: 9)
!1648 = !DILocalVariable(name: "printable", scope: !1646, file: !473, line: 600, type: !126)
!1649 = !DILocalVariable(name: "mbs", scope: !1650, file: !473, line: 609, type: !557)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !473, line: 608, column: 15)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !473, line: 602, column: 17)
!1652 = !DILocalVariable(name: "w", scope: !1653, file: !473, line: 618, type: !453)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !473, line: 617, column: 19)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !473, line: 616, column: 17)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 616, column: 17)
!1656 = !DILocalVariable(name: "bytes", scope: !1653, file: !473, line: 619, type: !91)
!1657 = !DILocalVariable(name: "j", scope: !1658, file: !473, line: 648, type: !91)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !473, line: 648, column: 29)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !473, line: 647, column: 27)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !473, line: 645, column: 29)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !473, line: 636, column: 23)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !473, line: 628, column: 30)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !473, line: 623, column: 30)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !473, line: 621, column: 25)
!1665 = !DILocalVariable(name: "ilim", scope: !1666, file: !473, line: 674, type: !91)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !473, line: 671, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1646, file: !473, line: 670, column: 17)
!1668 = !DILabel(scope: !1607, name: "process_input", file: !473, line: 308)
!1669 = !DILabel(scope: !1670, name: "c_and_shell_escape", file: !473, line: 502)
!1670 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 478, column: 9)
!1671 = !DILabel(scope: !1670, name: "c_escape", file: !473, line: 507)
!1672 = !DILabel(scope: !1640, name: "store_escape", file: !473, line: 709)
!1673 = !DILabel(scope: !1640, name: "store_c", file: !473, line: 712)
!1674 = !DILabel(scope: !1607, name: "force_outer_quoting_style", file: !473, line: 753)
!1675 = !DILocation(line: 0, scope: !1607)
!1676 = !DILocation(line: 258, column: 25, scope: !1607)
!1677 = !DILocation(line: 258, column: 36, scope: !1607)
!1678 = !DILocation(line: 267, column: 3, scope: !1607)
!1679 = !DILocation(line: 261, column: 10, scope: !1607)
!1680 = !DILocation(line: 262, column: 15, scope: !1607)
!1681 = !DILocation(line: 263, column: 10, scope: !1607)
!1682 = !DILocation(line: 308, column: 2, scope: !1607)
!1683 = !DILocation(line: 311, column: 3, scope: !1607)
!1684 = !DILocation(line: 318, column: 11, scope: !1636)
!1685 = !DILocation(line: 319, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !473, line: 319, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !473, line: 319, column: 9)
!1688 = distinct !DILexicalBlock(scope: !1636, file: !473, line: 318, column: 11)
!1689 = !DILocation(line: 319, column: 9, scope: !1687)
!1690 = !DILocation(line: 0, scope: !548, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 357, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !473, line: 335, column: 11)
!1693 = distinct !DILexicalBlock(scope: !1635, file: !473, line: 334, column: 13)
!1694 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !1691)
!1695 = !DILocation(line: 201, column: 19, scope: !1696, inlinedAt: !1691)
!1696 = distinct !DILexicalBlock(scope: !548, file: !473, line: 201, column: 7)
!1697 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !1691)
!1698 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !1691)
!1699 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !1691)
!1700 = !DILocation(line: 230, column: 13, scope: !548, inlinedAt: !1691)
!1701 = !DILocalVariable(name: "ps", arg: 1, scope: !1702, file: !1455, line: 1135, type: !1705)
!1702 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1703, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1706)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1706 = !{!1701}
!1707 = !DILocation(line: 0, scope: !1702, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !1691)
!1709 = !DILocalVariable(name: "__dest", arg: 1, scope: !1710, file: !1172, line: 57, type: !90)
!1710 = distinct !DISubprogram(name: "memset", scope: !1172, file: !1172, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1711)
!1711 = !{!1709, !1712, !1713}
!1712 = !DILocalVariable(name: "__ch", arg: 2, scope: !1710, file: !1172, line: 57, type: !68)
!1713 = !DILocalVariable(name: "__len", arg: 3, scope: !1710, file: !1172, line: 57, type: !91)
!1714 = !DILocation(line: 0, scope: !1710, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1708)
!1716 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1715)
!1717 = !DILocation(line: 231, column: 7, scope: !1718, inlinedAt: !1691)
!1718 = distinct !DILexicalBlock(scope: !548, file: !473, line: 231, column: 7)
!1719 = !DILocation(line: 231, column: 40, scope: !1718, inlinedAt: !1691)
!1720 = !DILocation(line: 231, column: 45, scope: !1718, inlinedAt: !1691)
!1721 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !1691)
!1722 = !DILocation(line: 0, scope: !548, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 358, column: 27, scope: !1692)
!1724 = !DILocation(line: 199, column: 29, scope: !548, inlinedAt: !1723)
!1725 = !DILocation(line: 201, column: 19, scope: !1696, inlinedAt: !1723)
!1726 = !DILocation(line: 201, column: 7, scope: !548, inlinedAt: !1723)
!1727 = !DILocation(line: 229, column: 3, scope: !548, inlinedAt: !1723)
!1728 = !DILocation(line: 230, column: 3, scope: !548, inlinedAt: !1723)
!1729 = !DILocation(line: 230, column: 13, scope: !548, inlinedAt: !1723)
!1730 = !DILocation(line: 0, scope: !1702, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 230, column: 18, scope: !548, inlinedAt: !1723)
!1732 = !DILocation(line: 0, scope: !1710, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1731)
!1734 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1733)
!1735 = !DILocation(line: 231, column: 7, scope: !1718, inlinedAt: !1723)
!1736 = !DILocation(line: 231, column: 40, scope: !1718, inlinedAt: !1723)
!1737 = !DILocation(line: 231, column: 45, scope: !1718, inlinedAt: !1723)
!1738 = !DILocation(line: 235, column: 1, scope: !548, inlinedAt: !1723)
!1739 = !DILocation(line: 360, column: 13, scope: !1635)
!1740 = !DILocation(line: 0, scope: !1633)
!1741 = !DILocation(line: 361, column: 45, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1633, file: !473, line: 361, column: 11)
!1743 = !DILocation(line: 361, column: 11, scope: !1633)
!1744 = !DILocation(line: 362, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !473, line: 362, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !473, line: 362, column: 13)
!1747 = !DILocation(line: 362, column: 13, scope: !1746)
!1748 = !DILocation(line: 361, column: 52, scope: !1742)
!1749 = distinct !{!1749, !1743, !1750, !898}
!1750 = !DILocation(line: 362, column: 13, scope: !1633)
!1751 = !DILocation(line: 260, column: 10, scope: !1607)
!1752 = !DILocation(line: 365, column: 28, scope: !1635)
!1753 = !DILocation(line: 367, column: 7, scope: !1636)
!1754 = !DILocation(line: 370, column: 7, scope: !1636)
!1755 = !DILocation(line: 376, column: 11, scope: !1636)
!1756 = !DILocation(line: 381, column: 11, scope: !1636)
!1757 = !DILocation(line: 382, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !473, line: 382, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !473, line: 382, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1636, file: !473, line: 381, column: 11)
!1761 = !DILocation(line: 382, column: 9, scope: !1759)
!1762 = !DILocation(line: 389, column: 7, scope: !1636)
!1763 = !DILocation(line: 392, column: 7, scope: !1636)
!1764 = !DILocation(line: 0, scope: !1638)
!1765 = !DILocation(line: 395, column: 8, scope: !1638)
!1766 = !DILocation(line: 395, scope: !1638)
!1767 = !DILocation(line: 395, column: 34, scope: !1641)
!1768 = !DILocation(line: 395, column: 26, scope: !1641)
!1769 = !DILocation(line: 395, column: 48, scope: !1641)
!1770 = !DILocation(line: 395, column: 55, scope: !1641)
!1771 = !DILocation(line: 395, column: 3, scope: !1638)
!1772 = !DILocation(line: 395, column: 67, scope: !1641)
!1773 = !DILocation(line: 0, scope: !1640)
!1774 = !DILocation(line: 402, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 401, column: 11)
!1776 = !DILocation(line: 404, column: 17, scope: !1775)
!1777 = !DILocation(line: 405, column: 39, scope: !1775)
!1778 = !DILocation(line: 409, column: 32, scope: !1775)
!1779 = !DILocation(line: 405, column: 19, scope: !1775)
!1780 = !DILocation(line: 405, column: 15, scope: !1775)
!1781 = !DILocation(line: 410, column: 11, scope: !1775)
!1782 = !DILocation(line: 410, column: 25, scope: !1775)
!1783 = !DILocalVariable(name: "__s1", arg: 1, scope: !1784, file: !864, line: 974, type: !996)
!1784 = distinct !DISubprogram(name: "memeq", scope: !864, file: !864, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1785)
!1785 = !{!1783, !1786, !1787}
!1786 = !DILocalVariable(name: "__s2", arg: 2, scope: !1784, file: !864, line: 974, type: !996)
!1787 = !DILocalVariable(name: "__n", arg: 3, scope: !1784, file: !864, line: 974, type: !91)
!1788 = !DILocation(line: 0, scope: !1784, inlinedAt: !1789)
!1789 = distinct !DILocation(line: 410, column: 14, scope: !1775)
!1790 = !DILocation(line: 976, column: 11, scope: !1784, inlinedAt: !1789)
!1791 = !DILocation(line: 976, column: 10, scope: !1784, inlinedAt: !1789)
!1792 = !DILocation(line: 401, column: 11, scope: !1640)
!1793 = !DILocation(line: 417, column: 25, scope: !1640)
!1794 = !DILocation(line: 418, column: 7, scope: !1640)
!1795 = !DILocation(line: 421, column: 15, scope: !1647)
!1796 = !DILocation(line: 423, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !473, line: 423, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !473, line: 422, column: 13)
!1799 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 421, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !473, line: 423, column: 15)
!1802 = !DILocation(line: 423, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !473, line: 423, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !473, line: 423, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !473, line: 423, column: 15)
!1806 = !DILocation(line: 423, column: 15, scope: !1804)
!1807 = !DILocation(line: 423, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !473, line: 423, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !473, line: 423, column: 15)
!1810 = !DILocation(line: 423, column: 15, scope: !1809)
!1811 = !DILocation(line: 423, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !473, line: 423, column: 15)
!1813 = distinct !DILexicalBlock(scope: !1805, file: !473, line: 423, column: 15)
!1814 = !DILocation(line: 423, column: 15, scope: !1813)
!1815 = !DILocation(line: 423, column: 15, scope: !1805)
!1816 = !DILocation(line: 423, column: 15, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !473, line: 423, column: 15)
!1818 = distinct !DILexicalBlock(scope: !1797, file: !473, line: 423, column: 15)
!1819 = !DILocation(line: 423, column: 15, scope: !1818)
!1820 = !DILocation(line: 431, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1798, file: !473, line: 430, column: 19)
!1822 = !DILocation(line: 431, column: 24, scope: !1821)
!1823 = !DILocation(line: 431, column: 28, scope: !1821)
!1824 = !DILocation(line: 431, column: 38, scope: !1821)
!1825 = !DILocation(line: 431, column: 48, scope: !1821)
!1826 = !DILocation(line: 431, column: 59, scope: !1821)
!1827 = !DILocation(line: 433, column: 19, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !473, line: 433, column: 19)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !473, line: 433, column: 19)
!1830 = distinct !DILexicalBlock(scope: !1821, file: !473, line: 432, column: 17)
!1831 = !DILocation(line: 433, column: 19, scope: !1829)
!1832 = !DILocation(line: 434, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !473, line: 434, column: 19)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !473, line: 434, column: 19)
!1835 = !DILocation(line: 434, column: 19, scope: !1834)
!1836 = !DILocation(line: 435, column: 17, scope: !1830)
!1837 = !DILocation(line: 442, column: 20, scope: !1799)
!1838 = !DILocation(line: 447, column: 11, scope: !1647)
!1839 = !DILocation(line: 450, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 448, column: 13)
!1841 = !DILocation(line: 456, column: 19, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1840, file: !473, line: 455, column: 19)
!1843 = !DILocation(line: 456, column: 24, scope: !1842)
!1844 = !DILocation(line: 456, column: 28, scope: !1842)
!1845 = !DILocation(line: 456, column: 38, scope: !1842)
!1846 = !DILocation(line: 456, column: 47, scope: !1842)
!1847 = !DILocation(line: 456, column: 41, scope: !1842)
!1848 = !DILocation(line: 456, column: 52, scope: !1842)
!1849 = !DILocation(line: 455, column: 19, scope: !1840)
!1850 = !DILocation(line: 457, column: 25, scope: !1842)
!1851 = !DILocation(line: 457, column: 17, scope: !1842)
!1852 = !DILocation(line: 464, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !473, line: 458, column: 19)
!1854 = !DILocation(line: 468, column: 21, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !473, line: 468, column: 21)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !473, line: 468, column: 21)
!1857 = !DILocation(line: 468, column: 21, scope: !1856)
!1858 = !DILocation(line: 469, column: 21, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !473, line: 469, column: 21)
!1860 = distinct !DILexicalBlock(scope: !1853, file: !473, line: 469, column: 21)
!1861 = !DILocation(line: 469, column: 21, scope: !1860)
!1862 = !DILocation(line: 470, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !473, line: 470, column: 21)
!1864 = distinct !DILexicalBlock(scope: !1853, file: !473, line: 470, column: 21)
!1865 = !DILocation(line: 470, column: 21, scope: !1864)
!1866 = !DILocation(line: 471, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !473, line: 471, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1853, file: !473, line: 471, column: 21)
!1869 = !DILocation(line: 471, column: 21, scope: !1868)
!1870 = !DILocation(line: 472, column: 21, scope: !1853)
!1871 = !DILocation(line: 482, column: 33, scope: !1670)
!1872 = !DILocation(line: 483, column: 33, scope: !1670)
!1873 = !DILocation(line: 485, column: 33, scope: !1670)
!1874 = !DILocation(line: 486, column: 33, scope: !1670)
!1875 = !DILocation(line: 487, column: 33, scope: !1670)
!1876 = !DILocation(line: 490, column: 17, scope: !1670)
!1877 = !DILocation(line: 492, column: 21, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !473, line: 491, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1670, file: !473, line: 490, column: 17)
!1880 = !DILocation(line: 499, column: 35, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1670, file: !473, line: 499, column: 17)
!1882 = !DILocation(line: 0, scope: !1670)
!1883 = !DILocation(line: 502, column: 11, scope: !1670)
!1884 = !DILocation(line: 504, column: 17, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1670, file: !473, line: 503, column: 17)
!1886 = !DILocation(line: 507, column: 11, scope: !1670)
!1887 = !DILocation(line: 508, column: 17, scope: !1670)
!1888 = !DILocation(line: 517, column: 15, scope: !1647)
!1889 = !DILocation(line: 517, column: 40, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 517, column: 15)
!1891 = !DILocation(line: 517, column: 47, scope: !1890)
!1892 = !DILocation(line: 517, column: 18, scope: !1890)
!1893 = !DILocation(line: 521, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 521, column: 15)
!1895 = !DILocation(line: 521, column: 15, scope: !1647)
!1896 = !DILocation(line: 525, column: 11, scope: !1647)
!1897 = !DILocation(line: 537, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 536, column: 15)
!1899 = !DILocation(line: 536, column: 15, scope: !1647)
!1900 = !DILocation(line: 544, column: 15, scope: !1647)
!1901 = !DILocation(line: 546, column: 19, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !473, line: 545, column: 13)
!1903 = distinct !DILexicalBlock(scope: !1647, file: !473, line: 544, column: 15)
!1904 = !DILocation(line: 549, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !473, line: 549, column: 19)
!1906 = !DILocation(line: 549, column: 30, scope: !1905)
!1907 = !DILocation(line: 558, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !473, line: 558, column: 15)
!1909 = distinct !DILexicalBlock(scope: !1902, file: !473, line: 558, column: 15)
!1910 = !DILocation(line: 558, column: 15, scope: !1909)
!1911 = !DILocation(line: 559, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !473, line: 559, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !473, line: 559, column: 15)
!1914 = !DILocation(line: 559, column: 15, scope: !1913)
!1915 = !DILocation(line: 560, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !473, line: 560, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1902, file: !473, line: 560, column: 15)
!1918 = !DILocation(line: 560, column: 15, scope: !1917)
!1919 = !DILocation(line: 562, column: 13, scope: !1902)
!1920 = !DILocation(line: 602, column: 17, scope: !1646)
!1921 = !DILocation(line: 0, scope: !1646)
!1922 = !DILocation(line: 605, column: 29, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1651, file: !473, line: 603, column: 15)
!1924 = !DILocation(line: 605, column: 41, scope: !1923)
!1925 = !DILocation(line: 606, column: 15, scope: !1923)
!1926 = !DILocation(line: 609, column: 17, scope: !1650)
!1927 = !DILocation(line: 609, column: 27, scope: !1650)
!1928 = !DILocation(line: 0, scope: !1702, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 609, column: 32, scope: !1650)
!1930 = !DILocation(line: 0, scope: !1710, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1929)
!1932 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1931)
!1933 = !DILocation(line: 613, column: 29, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1650, file: !473, line: 613, column: 21)
!1935 = !DILocation(line: 613, column: 21, scope: !1650)
!1936 = !DILocation(line: 614, column: 29, scope: !1934)
!1937 = !DILocation(line: 614, column: 19, scope: !1934)
!1938 = !DILocation(line: 618, column: 21, scope: !1653)
!1939 = !DILocation(line: 620, column: 54, scope: !1653)
!1940 = !DILocation(line: 0, scope: !1653)
!1941 = !DILocation(line: 619, column: 36, scope: !1653)
!1942 = !DILocation(line: 621, column: 25, scope: !1653)
!1943 = !DILocation(line: 631, column: 38, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1662, file: !473, line: 629, column: 23)
!1945 = !DILocation(line: 631, column: 48, scope: !1944)
!1946 = !DILocation(line: 626, column: 25, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1663, file: !473, line: 624, column: 23)
!1948 = !DILocation(line: 631, column: 51, scope: !1944)
!1949 = !DILocation(line: 631, column: 25, scope: !1944)
!1950 = !DILocation(line: 632, column: 28, scope: !1944)
!1951 = !DILocation(line: 631, column: 34, scope: !1944)
!1952 = distinct !{!1952, !1949, !1950, !898}
!1953 = !DILocation(line: 646, column: 29, scope: !1660)
!1954 = !DILocation(line: 0, scope: !1658)
!1955 = !DILocation(line: 649, column: 49, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1658, file: !473, line: 648, column: 29)
!1957 = !DILocation(line: 649, column: 39, scope: !1956)
!1958 = !DILocation(line: 649, column: 31, scope: !1956)
!1959 = !DILocation(line: 648, column: 60, scope: !1956)
!1960 = !DILocation(line: 648, column: 50, scope: !1956)
!1961 = !DILocation(line: 648, column: 29, scope: !1658)
!1962 = distinct !{!1962, !1961, !1963, !898}
!1963 = !DILocation(line: 654, column: 33, scope: !1658)
!1964 = !DILocation(line: 657, column: 43, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1661, file: !473, line: 657, column: 29)
!1966 = !DILocalVariable(name: "wc", arg: 1, scope: !1967, file: !1968, line: 865, type: !1971)
!1967 = distinct !DISubprogram(name: "c32isprint", scope: !1968, file: !1968, line: 865, type: !1969, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !1973)
!1968 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!68, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1972, line: 20, baseType: !74)
!1972 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1973 = !{!1966}
!1974 = !DILocation(line: 0, scope: !1967, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 657, column: 31, scope: !1965)
!1976 = !DILocation(line: 871, column: 10, scope: !1967, inlinedAt: !1975)
!1977 = !DILocation(line: 657, column: 31, scope: !1965)
!1978 = !DILocation(line: 664, column: 23, scope: !1653)
!1979 = !DILocation(line: 665, column: 19, scope: !1654)
!1980 = !DILocation(line: 666, column: 15, scope: !1651)
!1981 = !DILocation(line: 753, column: 2, scope: !1607)
!1982 = !DILocation(line: 756, column: 51, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 756, column: 7)
!1984 = !DILocation(line: 0, scope: !1651)
!1985 = !DILocation(line: 670, column: 19, scope: !1667)
!1986 = !DILocation(line: 670, column: 23, scope: !1667)
!1987 = !DILocation(line: 674, column: 33, scope: !1666)
!1988 = !DILocation(line: 0, scope: !1666)
!1989 = !DILocation(line: 676, column: 17, scope: !1666)
!1990 = !DILocation(line: 398, column: 12, scope: !1640)
!1991 = !DILocation(line: 678, column: 43, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !473, line: 678, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !473, line: 677, column: 19)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !473, line: 676, column: 17)
!1995 = distinct !DILexicalBlock(scope: !1666, file: !473, line: 676, column: 17)
!1996 = !DILocation(line: 680, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !473, line: 680, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !473, line: 679, column: 23)
!1999 = !DILocation(line: 680, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !473, line: 680, column: 25)
!2001 = !DILocation(line: 680, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !473, line: 680, column: 25)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !473, line: 680, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2000, file: !473, line: 680, column: 25)
!2005 = !DILocation(line: 680, column: 25, scope: !2003)
!2006 = !DILocation(line: 680, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !473, line: 680, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !473, line: 680, column: 25)
!2009 = !DILocation(line: 680, column: 25, scope: !2008)
!2010 = !DILocation(line: 680, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !473, line: 680, column: 25)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !473, line: 680, column: 25)
!2013 = !DILocation(line: 680, column: 25, scope: !2012)
!2014 = !DILocation(line: 680, column: 25, scope: !2004)
!2015 = !DILocation(line: 680, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !473, line: 680, column: 25)
!2017 = distinct !DILexicalBlock(scope: !1997, file: !473, line: 680, column: 25)
!2018 = !DILocation(line: 680, column: 25, scope: !2017)
!2019 = !DILocation(line: 681, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !473, line: 681, column: 25)
!2021 = distinct !DILexicalBlock(scope: !1998, file: !473, line: 681, column: 25)
!2022 = !DILocation(line: 681, column: 25, scope: !2021)
!2023 = !DILocation(line: 682, column: 25, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !473, line: 682, column: 25)
!2025 = distinct !DILexicalBlock(scope: !1998, file: !473, line: 682, column: 25)
!2026 = !DILocation(line: 682, column: 25, scope: !2025)
!2027 = !DILocation(line: 683, column: 38, scope: !1998)
!2028 = !DILocation(line: 683, column: 33, scope: !1998)
!2029 = !DILocation(line: 684, column: 23, scope: !1998)
!2030 = !DILocation(line: 685, column: 30, scope: !1992)
!2031 = !DILocation(line: 687, column: 25, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !473, line: 687, column: 25)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !473, line: 687, column: 25)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !473, line: 686, column: 23)
!2035 = distinct !DILexicalBlock(scope: !1992, file: !473, line: 685, column: 30)
!2036 = !DILocation(line: 687, column: 25, scope: !2033)
!2037 = !DILocation(line: 689, column: 23, scope: !2034)
!2038 = !DILocation(line: 690, column: 35, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1993, file: !473, line: 690, column: 25)
!2040 = !DILocation(line: 690, column: 30, scope: !2039)
!2041 = !DILocation(line: 690, column: 25, scope: !1993)
!2042 = !DILocation(line: 692, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !473, line: 692, column: 21)
!2044 = distinct !DILexicalBlock(scope: !1993, file: !473, line: 692, column: 21)
!2045 = !DILocation(line: 692, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !473, line: 692, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !473, line: 692, column: 21)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !473, line: 692, column: 21)
!2049 = !DILocation(line: 692, column: 21, scope: !2047)
!2050 = !DILocation(line: 692, column: 21, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !473, line: 692, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2048, file: !473, line: 692, column: 21)
!2053 = !DILocation(line: 692, column: 21, scope: !2052)
!2054 = !DILocation(line: 692, column: 21, scope: !2048)
!2055 = !DILocation(line: 0, scope: !1993)
!2056 = !DILocation(line: 693, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !473, line: 693, column: 21)
!2058 = distinct !DILexicalBlock(scope: !1993, file: !473, line: 693, column: 21)
!2059 = !DILocation(line: 693, column: 21, scope: !2058)
!2060 = !DILocation(line: 694, column: 25, scope: !1993)
!2061 = !DILocation(line: 676, column: 17, scope: !1994)
!2062 = distinct !{!2062, !2063, !2064}
!2063 = !DILocation(line: 676, column: 17, scope: !1995)
!2064 = !DILocation(line: 695, column: 19, scope: !1995)
!2065 = !DILocation(line: 409, column: 30, scope: !1775)
!2066 = !DILocation(line: 702, column: 34, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 702, column: 11)
!2068 = !DILocation(line: 704, column: 14, scope: !2067)
!2069 = !DILocation(line: 705, column: 14, scope: !2067)
!2070 = !DILocation(line: 705, column: 35, scope: !2067)
!2071 = !DILocation(line: 705, column: 17, scope: !2067)
!2072 = !DILocation(line: 705, column: 47, scope: !2067)
!2073 = !DILocation(line: 705, column: 65, scope: !2067)
!2074 = !DILocation(line: 706, column: 11, scope: !2067)
!2075 = !DILocation(line: 702, column: 11, scope: !1640)
!2076 = !DILocation(line: 395, column: 15, scope: !1638)
!2077 = !DILocation(line: 709, column: 5, scope: !1640)
!2078 = !DILocation(line: 710, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 710, column: 7)
!2080 = !DILocation(line: 710, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !473, line: 710, column: 7)
!2082 = !DILocation(line: 710, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !473, line: 710, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !473, line: 710, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !473, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2084)
!2087 = !DILocation(line: 710, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !473, line: 710, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !473, line: 710, column: 7)
!2090 = !DILocation(line: 710, column: 7, scope: !2089)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !473, line: 710, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2085, file: !473, line: 710, column: 7)
!2094 = !DILocation(line: 710, column: 7, scope: !2093)
!2095 = !DILocation(line: 710, column: 7, scope: !2085)
!2096 = !DILocation(line: 710, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !473, line: 710, column: 7)
!2098 = distinct !DILexicalBlock(scope: !2079, file: !473, line: 710, column: 7)
!2099 = !DILocation(line: 710, column: 7, scope: !2098)
!2100 = !DILocation(line: 712, column: 5, scope: !1640)
!2101 = !DILocation(line: 713, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !473, line: 713, column: 7)
!2103 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 713, column: 7)
!2104 = !DILocation(line: 417, column: 21, scope: !1640)
!2105 = !DILocation(line: 713, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !473, line: 713, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !473, line: 713, column: 7)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !473, line: 713, column: 7)
!2109 = !DILocation(line: 713, column: 7, scope: !2107)
!2110 = !DILocation(line: 713, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !473, line: 713, column: 7)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !473, line: 713, column: 7)
!2113 = !DILocation(line: 713, column: 7, scope: !2112)
!2114 = !DILocation(line: 713, column: 7, scope: !2108)
!2115 = !DILocation(line: 714, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !473, line: 714, column: 7)
!2117 = distinct !DILexicalBlock(scope: !1640, file: !473, line: 714, column: 7)
!2118 = !DILocation(line: 714, column: 7, scope: !2117)
!2119 = !DILocation(line: 716, column: 11, scope: !1640)
!2120 = !DILocation(line: 718, column: 5, scope: !1641)
!2121 = !DILocation(line: 395, column: 82, scope: !1641)
!2122 = !DILocation(line: 395, column: 3, scope: !1641)
!2123 = distinct !{!2123, !1771, !2124, !898}
!2124 = !DILocation(line: 718, column: 5, scope: !1638)
!2125 = !DILocation(line: 720, column: 11, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 720, column: 7)
!2127 = !DILocation(line: 720, column: 16, scope: !2126)
!2128 = !DILocation(line: 728, column: 51, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 728, column: 7)
!2130 = !DILocation(line: 731, column: 11, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2129, file: !473, line: 730, column: 5)
!2132 = !DILocation(line: 732, column: 16, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2131, file: !473, line: 731, column: 11)
!2134 = !DILocation(line: 732, column: 9, scope: !2133)
!2135 = !DILocation(line: 736, column: 18, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2133, file: !473, line: 736, column: 16)
!2137 = !DILocation(line: 736, column: 29, scope: !2136)
!2138 = !DILocation(line: 745, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 745, column: 7)
!2140 = !DILocation(line: 745, column: 20, scope: !2139)
!2141 = !DILocation(line: 746, column: 12, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !473, line: 746, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !473, line: 746, column: 5)
!2144 = !DILocation(line: 746, column: 5, scope: !2143)
!2145 = !DILocation(line: 747, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !473, line: 747, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !473, line: 747, column: 7)
!2148 = !DILocation(line: 747, column: 7, scope: !2147)
!2149 = !DILocation(line: 746, column: 39, scope: !2142)
!2150 = distinct !{!2150, !2144, !2151, !898}
!2151 = !DILocation(line: 747, column: 7, scope: !2143)
!2152 = !DILocation(line: 749, column: 11, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1607, file: !473, line: 749, column: 7)
!2154 = !DILocation(line: 749, column: 7, scope: !1607)
!2155 = !DILocation(line: 750, column: 5, scope: !2153)
!2156 = !DILocation(line: 750, column: 17, scope: !2153)
!2157 = !DILocation(line: 756, column: 21, scope: !1983)
!2158 = !DILocation(line: 760, column: 42, scope: !1607)
!2159 = !DILocation(line: 758, column: 10, scope: !1607)
!2160 = !DILocation(line: 758, column: 3, scope: !1607)
!2161 = !DILocation(line: 762, column: 1, scope: !1607)
!2162 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !972, file: !972, line: 98, type: !2163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!91}
!2165 = !DISubprogram(name: "strlen", scope: !968, file: !968, line: 407, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!93, !94}
!2168 = !DISubprogram(name: "iswprint", scope: !2169, file: !2169, line: 120, type: !1969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!2169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2170 = distinct !DISubprogram(name: "quotearg_alloc", scope: !473, file: !473, line: 788, type: !2171, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!89, !94, !91, !1500}
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "arg", arg: 1, scope: !2170, file: !473, line: 788, type: !94)
!2175 = !DILocalVariable(name: "argsize", arg: 2, scope: !2170, file: !473, line: 788, type: !91)
!2176 = !DILocalVariable(name: "o", arg: 3, scope: !2170, file: !473, line: 789, type: !1500)
!2177 = !DILocation(line: 0, scope: !2170)
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !473, line: 801, type: !94)
!2179 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !473, file: !473, line: 801, type: !2180, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!89, !94, !91, !725, !1500}
!2182 = !{!2178, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2183 = !DILocalVariable(name: "argsize", arg: 2, scope: !2179, file: !473, line: 801, type: !91)
!2184 = !DILocalVariable(name: "size", arg: 3, scope: !2179, file: !473, line: 801, type: !725)
!2185 = !DILocalVariable(name: "o", arg: 4, scope: !2179, file: !473, line: 802, type: !1500)
!2186 = !DILocalVariable(name: "p", scope: !2179, file: !473, line: 804, type: !1500)
!2187 = !DILocalVariable(name: "saved_errno", scope: !2179, file: !473, line: 805, type: !68)
!2188 = !DILocalVariable(name: "flags", scope: !2179, file: !473, line: 807, type: !68)
!2189 = !DILocalVariable(name: "bufsize", scope: !2179, file: !473, line: 808, type: !91)
!2190 = !DILocalVariable(name: "buf", scope: !2179, file: !473, line: 812, type: !89)
!2191 = !DILocation(line: 0, scope: !2179, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 791, column: 10, scope: !2170)
!2193 = !DILocation(line: 804, column: 37, scope: !2179, inlinedAt: !2192)
!2194 = !DILocation(line: 805, column: 21, scope: !2179, inlinedAt: !2192)
!2195 = !DILocation(line: 807, column: 18, scope: !2179, inlinedAt: !2192)
!2196 = !DILocation(line: 807, column: 24, scope: !2179, inlinedAt: !2192)
!2197 = !DILocation(line: 808, column: 72, scope: !2179, inlinedAt: !2192)
!2198 = !DILocation(line: 809, column: 56, scope: !2179, inlinedAt: !2192)
!2199 = !DILocation(line: 810, column: 49, scope: !2179, inlinedAt: !2192)
!2200 = !DILocation(line: 811, column: 49, scope: !2179, inlinedAt: !2192)
!2201 = !DILocation(line: 808, column: 20, scope: !2179, inlinedAt: !2192)
!2202 = !DILocation(line: 811, column: 62, scope: !2179, inlinedAt: !2192)
!2203 = !DILocation(line: 812, column: 15, scope: !2179, inlinedAt: !2192)
!2204 = !DILocation(line: 813, column: 60, scope: !2179, inlinedAt: !2192)
!2205 = !DILocation(line: 815, column: 32, scope: !2179, inlinedAt: !2192)
!2206 = !DILocation(line: 815, column: 47, scope: !2179, inlinedAt: !2192)
!2207 = !DILocation(line: 813, column: 3, scope: !2179, inlinedAt: !2192)
!2208 = !DILocation(line: 816, column: 9, scope: !2179, inlinedAt: !2192)
!2209 = !DILocation(line: 791, column: 3, scope: !2170)
!2210 = !DILocation(line: 0, scope: !2179)
!2211 = !DILocation(line: 804, column: 37, scope: !2179)
!2212 = !DILocation(line: 805, column: 21, scope: !2179)
!2213 = !DILocation(line: 807, column: 18, scope: !2179)
!2214 = !DILocation(line: 807, column: 27, scope: !2179)
!2215 = !DILocation(line: 807, column: 24, scope: !2179)
!2216 = !DILocation(line: 808, column: 72, scope: !2179)
!2217 = !DILocation(line: 809, column: 56, scope: !2179)
!2218 = !DILocation(line: 810, column: 49, scope: !2179)
!2219 = !DILocation(line: 811, column: 49, scope: !2179)
!2220 = !DILocation(line: 808, column: 20, scope: !2179)
!2221 = !DILocation(line: 811, column: 62, scope: !2179)
!2222 = !DILocation(line: 812, column: 15, scope: !2179)
!2223 = !DILocation(line: 813, column: 60, scope: !2179)
!2224 = !DILocation(line: 815, column: 32, scope: !2179)
!2225 = !DILocation(line: 815, column: 47, scope: !2179)
!2226 = !DILocation(line: 813, column: 3, scope: !2179)
!2227 = !DILocation(line: 816, column: 9, scope: !2179)
!2228 = !DILocation(line: 817, column: 7, scope: !2179)
!2229 = !DILocation(line: 818, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2179, file: !473, line: 817, column: 7)
!2231 = !{!1040, !1040, i64 0}
!2232 = !DILocation(line: 818, column: 5, scope: !2230)
!2233 = !DILocation(line: 819, column: 3, scope: !2179)
!2234 = distinct !DISubprogram(name: "quotearg_free", scope: !473, file: !473, line: 837, type: !428, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "sv", scope: !2234, file: !473, line: 839, type: !571)
!2237 = !DILocalVariable(name: "i", scope: !2238, file: !473, line: 840, type: !68)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !473, line: 840, column: 3)
!2239 = !DILocation(line: 839, column: 24, scope: !2234)
!2240 = !DILocation(line: 0, scope: !2234)
!2241 = !DILocation(line: 0, scope: !2238)
!2242 = !DILocation(line: 840, column: 21, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !473, line: 840, column: 3)
!2244 = !DILocation(line: 840, column: 3, scope: !2238)
!2245 = !DILocation(line: 842, column: 13, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2234, file: !473, line: 842, column: 7)
!2247 = !{!2248, !790, i64 8}
!2248 = !{!"slotvec", !1040, i64 0, !790, i64 8}
!2249 = !DILocation(line: 842, column: 17, scope: !2246)
!2250 = !DILocation(line: 842, column: 7, scope: !2234)
!2251 = !DILocation(line: 841, column: 17, scope: !2243)
!2252 = !DILocation(line: 841, column: 5, scope: !2243)
!2253 = !DILocation(line: 840, column: 32, scope: !2243)
!2254 = distinct !{!2254, !2244, !2255, !898}
!2255 = !DILocation(line: 841, column: 20, scope: !2238)
!2256 = !DILocation(line: 844, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2246, file: !473, line: 843, column: 5)
!2258 = !DILocation(line: 845, column: 21, scope: !2257)
!2259 = !{!2248, !1040, i64 0}
!2260 = !DILocation(line: 846, column: 20, scope: !2257)
!2261 = !DILocation(line: 847, column: 5, scope: !2257)
!2262 = !DILocation(line: 848, column: 10, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2234, file: !473, line: 848, column: 7)
!2264 = !DILocation(line: 848, column: 7, scope: !2234)
!2265 = !DILocation(line: 850, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2263, file: !473, line: 849, column: 5)
!2267 = !DILocation(line: 851, column: 15, scope: !2266)
!2268 = !DILocation(line: 852, column: 5, scope: !2266)
!2269 = !DILocation(line: 853, column: 10, scope: !2234)
!2270 = !DILocation(line: 854, column: 1, scope: !2234)
!2271 = !DISubprogram(name: "free", scope: !1455, file: !1455, line: 786, type: !2272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !90}
!2274 = distinct !DISubprogram(name: "quotearg_n", scope: !473, file: !473, line: 919, type: !965, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2275)
!2275 = !{!2276, !2277}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !473, line: 919, type: !68)
!2277 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !473, line: 919, type: !94)
!2278 = !DILocation(line: 0, scope: !2274)
!2279 = !DILocation(line: 921, column: 10, scope: !2274)
!2280 = !DILocation(line: 921, column: 3, scope: !2274)
!2281 = distinct !DISubprogram(name: "quotearg_n_options", scope: !473, file: !473, line: 866, type: !2282, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2284)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!89, !68, !94, !91, !1500}
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2295, !2296, !2298, !2299, !2300}
!2285 = !DILocalVariable(name: "n", arg: 1, scope: !2281, file: !473, line: 866, type: !68)
!2286 = !DILocalVariable(name: "arg", arg: 2, scope: !2281, file: !473, line: 866, type: !94)
!2287 = !DILocalVariable(name: "argsize", arg: 3, scope: !2281, file: !473, line: 866, type: !91)
!2288 = !DILocalVariable(name: "options", arg: 4, scope: !2281, file: !473, line: 867, type: !1500)
!2289 = !DILocalVariable(name: "saved_errno", scope: !2281, file: !473, line: 869, type: !68)
!2290 = !DILocalVariable(name: "sv", scope: !2281, file: !473, line: 871, type: !571)
!2291 = !DILocalVariable(name: "nslots_max", scope: !2281, file: !473, line: 873, type: !68)
!2292 = !DILocalVariable(name: "preallocated", scope: !2293, file: !473, line: 879, type: !126)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !473, line: 878, column: 5)
!2294 = distinct !DILexicalBlock(scope: !2281, file: !473, line: 877, column: 7)
!2295 = !DILocalVariable(name: "new_nslots", scope: !2293, file: !473, line: 880, type: !134)
!2296 = !DILocalVariable(name: "size", scope: !2297, file: !473, line: 891, type: !91)
!2297 = distinct !DILexicalBlock(scope: !2281, file: !473, line: 890, column: 3)
!2298 = !DILocalVariable(name: "val", scope: !2297, file: !473, line: 892, type: !89)
!2299 = !DILocalVariable(name: "flags", scope: !2297, file: !473, line: 894, type: !68)
!2300 = !DILocalVariable(name: "qsize", scope: !2297, file: !473, line: 895, type: !91)
!2301 = !DILocation(line: 0, scope: !2281)
!2302 = !DILocation(line: 869, column: 21, scope: !2281)
!2303 = !DILocation(line: 871, column: 24, scope: !2281)
!2304 = !DILocation(line: 874, column: 17, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2281, file: !473, line: 874, column: 7)
!2306 = !DILocation(line: 875, column: 5, scope: !2305)
!2307 = !DILocation(line: 877, column: 7, scope: !2294)
!2308 = !DILocation(line: 877, column: 14, scope: !2294)
!2309 = !DILocation(line: 877, column: 7, scope: !2281)
!2310 = !DILocation(line: 879, column: 31, scope: !2293)
!2311 = !DILocation(line: 0, scope: !2293)
!2312 = !DILocation(line: 880, column: 7, scope: !2293)
!2313 = !DILocation(line: 880, column: 26, scope: !2293)
!2314 = !DILocation(line: 880, column: 13, scope: !2293)
!2315 = !DILocation(line: 882, column: 31, scope: !2293)
!2316 = !DILocation(line: 883, column: 33, scope: !2293)
!2317 = !DILocation(line: 883, column: 42, scope: !2293)
!2318 = !DILocation(line: 883, column: 31, scope: !2293)
!2319 = !DILocation(line: 882, column: 22, scope: !2293)
!2320 = !DILocation(line: 882, column: 15, scope: !2293)
!2321 = !DILocation(line: 884, column: 11, scope: !2293)
!2322 = !DILocation(line: 885, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2293, file: !473, line: 884, column: 11)
!2324 = !{i64 0, i64 8, !2231, i64 8, i64 8, !789}
!2325 = !DILocation(line: 885, column: 9, scope: !2323)
!2326 = !DILocation(line: 886, column: 20, scope: !2293)
!2327 = !DILocation(line: 886, column: 18, scope: !2293)
!2328 = !DILocation(line: 886, column: 32, scope: !2293)
!2329 = !DILocation(line: 886, column: 43, scope: !2293)
!2330 = !DILocation(line: 886, column: 53, scope: !2293)
!2331 = !DILocation(line: 0, scope: !1710, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 886, column: 7, scope: !2293)
!2333 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !2332)
!2334 = !DILocation(line: 887, column: 16, scope: !2293)
!2335 = !DILocation(line: 887, column: 14, scope: !2293)
!2336 = !DILocation(line: 888, column: 5, scope: !2294)
!2337 = !DILocation(line: 888, column: 5, scope: !2293)
!2338 = !DILocation(line: 891, column: 19, scope: !2297)
!2339 = !DILocation(line: 891, column: 25, scope: !2297)
!2340 = !DILocation(line: 0, scope: !2297)
!2341 = !DILocation(line: 892, column: 23, scope: !2297)
!2342 = !DILocation(line: 894, column: 26, scope: !2297)
!2343 = !DILocation(line: 894, column: 32, scope: !2297)
!2344 = !DILocation(line: 896, column: 55, scope: !2297)
!2345 = !DILocation(line: 897, column: 55, scope: !2297)
!2346 = !DILocation(line: 898, column: 55, scope: !2297)
!2347 = !DILocation(line: 899, column: 55, scope: !2297)
!2348 = !DILocation(line: 895, column: 20, scope: !2297)
!2349 = !DILocation(line: 901, column: 14, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2297, file: !473, line: 901, column: 9)
!2351 = !DILocation(line: 901, column: 9, scope: !2297)
!2352 = !DILocation(line: 903, column: 35, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !473, line: 902, column: 7)
!2354 = !DILocation(line: 903, column: 20, scope: !2353)
!2355 = !DILocation(line: 904, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !473, line: 904, column: 13)
!2357 = !DILocation(line: 904, column: 13, scope: !2353)
!2358 = !DILocation(line: 905, column: 11, scope: !2356)
!2359 = !DILocation(line: 906, column: 27, scope: !2353)
!2360 = !DILocation(line: 906, column: 19, scope: !2353)
!2361 = !DILocation(line: 907, column: 69, scope: !2353)
!2362 = !DILocation(line: 909, column: 44, scope: !2353)
!2363 = !DILocation(line: 910, column: 44, scope: !2353)
!2364 = !DILocation(line: 907, column: 9, scope: !2353)
!2365 = !DILocation(line: 911, column: 7, scope: !2353)
!2366 = !DILocation(line: 913, column: 11, scope: !2297)
!2367 = !DILocation(line: 914, column: 5, scope: !2297)
!2368 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !473, file: !473, line: 925, type: !2369, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!89, !68, !94, !91}
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2368, file: !473, line: 925, type: !68)
!2373 = !DILocalVariable(name: "arg", arg: 2, scope: !2368, file: !473, line: 925, type: !94)
!2374 = !DILocalVariable(name: "argsize", arg: 3, scope: !2368, file: !473, line: 925, type: !91)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 927, column: 10, scope: !2368)
!2377 = !DILocation(line: 927, column: 3, scope: !2368)
!2378 = distinct !DISubprogram(name: "quotearg", scope: !473, file: !473, line: 931, type: !974, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2379)
!2379 = !{!2380}
!2380 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !473, line: 931, type: !94)
!2381 = !DILocation(line: 0, scope: !2378)
!2382 = !DILocation(line: 0, scope: !2274, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 933, column: 10, scope: !2378)
!2384 = !DILocation(line: 921, column: 10, scope: !2274, inlinedAt: !2383)
!2385 = !DILocation(line: 933, column: 3, scope: !2378)
!2386 = distinct !DISubprogram(name: "quotearg_mem", scope: !473, file: !473, line: 937, type: !2387, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!89, !94, !91}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "arg", arg: 1, scope: !2386, file: !473, line: 937, type: !94)
!2391 = !DILocalVariable(name: "argsize", arg: 2, scope: !2386, file: !473, line: 937, type: !91)
!2392 = !DILocation(line: 0, scope: !2386)
!2393 = !DILocation(line: 0, scope: !2368, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 939, column: 10, scope: !2386)
!2395 = !DILocation(line: 927, column: 10, scope: !2368, inlinedAt: !2394)
!2396 = !DILocation(line: 939, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "quotearg_n_style", scope: !473, file: !473, line: 943, type: !2398, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!89, !68, !496, !94}
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DILocalVariable(name: "n", arg: 1, scope: !2397, file: !473, line: 943, type: !68)
!2402 = !DILocalVariable(name: "s", arg: 2, scope: !2397, file: !473, line: 943, type: !496)
!2403 = !DILocalVariable(name: "arg", arg: 3, scope: !2397, file: !473, line: 943, type: !94)
!2404 = !DILocalVariable(name: "o", scope: !2397, file: !473, line: 945, type: !1501)
!2405 = !DILocation(line: 0, scope: !2397)
!2406 = !DILocation(line: 945, column: 3, scope: !2397)
!2407 = !DILocation(line: 945, column: 32, scope: !2397)
!2408 = !{!2409}
!2409 = distinct !{!2409, !2410, !"quoting_options_from_style: argument 0"}
!2410 = distinct !{!2410, !"quoting_options_from_style"}
!2411 = !DILocation(line: 945, column: 36, scope: !2397)
!2412 = !DILocalVariable(name: "style", arg: 1, scope: !2413, file: !473, line: 183, type: !496)
!2413 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !473, file: !473, line: 183, type: !2414, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!523, !496}
!2416 = !{!2412, !2417}
!2417 = !DILocalVariable(name: "o", scope: !2413, file: !473, line: 185, type: !523)
!2418 = !DILocation(line: 0, scope: !2413, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 945, column: 36, scope: !2397)
!2420 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2419)
!2421 = !DILocation(line: 186, column: 13, scope: !2422, inlinedAt: !2419)
!2422 = distinct !DILexicalBlock(scope: !2413, file: !473, line: 186, column: 7)
!2423 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2419)
!2424 = !DILocation(line: 187, column: 5, scope: !2422, inlinedAt: !2419)
!2425 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2419)
!2426 = !DILocation(line: 946, column: 10, scope: !2397)
!2427 = !DILocation(line: 947, column: 1, scope: !2397)
!2428 = !DILocation(line: 946, column: 3, scope: !2397)
!2429 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !473, file: !473, line: 950, type: !2430, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2432)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{!89, !68, !496, !94, !91}
!2432 = !{!2433, !2434, !2435, !2436, !2437}
!2433 = !DILocalVariable(name: "n", arg: 1, scope: !2429, file: !473, line: 950, type: !68)
!2434 = !DILocalVariable(name: "s", arg: 2, scope: !2429, file: !473, line: 950, type: !496)
!2435 = !DILocalVariable(name: "arg", arg: 3, scope: !2429, file: !473, line: 951, type: !94)
!2436 = !DILocalVariable(name: "argsize", arg: 4, scope: !2429, file: !473, line: 951, type: !91)
!2437 = !DILocalVariable(name: "o", scope: !2429, file: !473, line: 953, type: !1501)
!2438 = !DILocation(line: 0, scope: !2429)
!2439 = !DILocation(line: 953, column: 3, scope: !2429)
!2440 = !DILocation(line: 953, column: 32, scope: !2429)
!2441 = !{!2442}
!2442 = distinct !{!2442, !2443, !"quoting_options_from_style: argument 0"}
!2443 = distinct !{!2443, !"quoting_options_from_style"}
!2444 = !DILocation(line: 953, column: 36, scope: !2429)
!2445 = !DILocation(line: 0, scope: !2413, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 953, column: 36, scope: !2429)
!2447 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2446)
!2448 = !DILocation(line: 186, column: 13, scope: !2422, inlinedAt: !2446)
!2449 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2446)
!2450 = !DILocation(line: 187, column: 5, scope: !2422, inlinedAt: !2446)
!2451 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2446)
!2452 = !DILocation(line: 954, column: 10, scope: !2429)
!2453 = !DILocation(line: 955, column: 1, scope: !2429)
!2454 = !DILocation(line: 954, column: 3, scope: !2429)
!2455 = distinct !DISubprogram(name: "quotearg_style", scope: !473, file: !473, line: 958, type: !2456, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!89, !496, !94}
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "s", arg: 1, scope: !2455, file: !473, line: 958, type: !496)
!2460 = !DILocalVariable(name: "arg", arg: 2, scope: !2455, file: !473, line: 958, type: !94)
!2461 = !DILocation(line: 0, scope: !2455)
!2462 = !DILocation(line: 0, scope: !2397, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 960, column: 10, scope: !2455)
!2464 = !DILocation(line: 945, column: 3, scope: !2397, inlinedAt: !2463)
!2465 = !DILocation(line: 945, column: 32, scope: !2397, inlinedAt: !2463)
!2466 = !{!2467}
!2467 = distinct !{!2467, !2468, !"quoting_options_from_style: argument 0"}
!2468 = distinct !{!2468, !"quoting_options_from_style"}
!2469 = !DILocation(line: 945, column: 36, scope: !2397, inlinedAt: !2463)
!2470 = !DILocation(line: 0, scope: !2413, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 945, column: 36, scope: !2397, inlinedAt: !2463)
!2472 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2471)
!2473 = !DILocation(line: 186, column: 13, scope: !2422, inlinedAt: !2471)
!2474 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2471)
!2475 = !DILocation(line: 187, column: 5, scope: !2422, inlinedAt: !2471)
!2476 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2471)
!2477 = !DILocation(line: 946, column: 10, scope: !2397, inlinedAt: !2463)
!2478 = !DILocation(line: 947, column: 1, scope: !2397, inlinedAt: !2463)
!2479 = !DILocation(line: 960, column: 3, scope: !2455)
!2480 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !473, file: !473, line: 964, type: !2481, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!89, !496, !94, !91}
!2483 = !{!2484, !2485, !2486}
!2484 = !DILocalVariable(name: "s", arg: 1, scope: !2480, file: !473, line: 964, type: !496)
!2485 = !DILocalVariable(name: "arg", arg: 2, scope: !2480, file: !473, line: 964, type: !94)
!2486 = !DILocalVariable(name: "argsize", arg: 3, scope: !2480, file: !473, line: 964, type: !91)
!2487 = !DILocation(line: 0, scope: !2480)
!2488 = !DILocation(line: 0, scope: !2429, inlinedAt: !2489)
!2489 = distinct !DILocation(line: 966, column: 10, scope: !2480)
!2490 = !DILocation(line: 953, column: 3, scope: !2429, inlinedAt: !2489)
!2491 = !DILocation(line: 953, column: 32, scope: !2429, inlinedAt: !2489)
!2492 = !{!2493}
!2493 = distinct !{!2493, !2494, !"quoting_options_from_style: argument 0"}
!2494 = distinct !{!2494, !"quoting_options_from_style"}
!2495 = !DILocation(line: 953, column: 36, scope: !2429, inlinedAt: !2489)
!2496 = !DILocation(line: 0, scope: !2413, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 953, column: 36, scope: !2429, inlinedAt: !2489)
!2498 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2497)
!2499 = !DILocation(line: 186, column: 13, scope: !2422, inlinedAt: !2497)
!2500 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2497)
!2501 = !DILocation(line: 187, column: 5, scope: !2422, inlinedAt: !2497)
!2502 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2497)
!2503 = !DILocation(line: 954, column: 10, scope: !2429, inlinedAt: !2489)
!2504 = !DILocation(line: 955, column: 1, scope: !2429, inlinedAt: !2489)
!2505 = !DILocation(line: 966, column: 3, scope: !2480)
!2506 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !473, file: !473, line: 970, type: !2507, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!89, !94, !91, !4}
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DILocalVariable(name: "arg", arg: 1, scope: !2506, file: !473, line: 970, type: !94)
!2511 = !DILocalVariable(name: "argsize", arg: 2, scope: !2506, file: !473, line: 970, type: !91)
!2512 = !DILocalVariable(name: "ch", arg: 3, scope: !2506, file: !473, line: 970, type: !4)
!2513 = !DILocalVariable(name: "options", scope: !2506, file: !473, line: 972, type: !523)
!2514 = !DILocation(line: 0, scope: !2506)
!2515 = !DILocation(line: 972, column: 3, scope: !2506)
!2516 = !DILocation(line: 972, column: 26, scope: !2506)
!2517 = !DILocation(line: 973, column: 13, scope: !2506)
!2518 = !{i64 0, i64 4, !860, i64 4, i64 4, !851, i64 8, i64 32, !860, i64 40, i64 8, !789, i64 48, i64 8, !789}
!2519 = !DILocation(line: 0, scope: !1520, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 974, column: 3, scope: !2506)
!2521 = !DILocation(line: 147, column: 41, scope: !1520, inlinedAt: !2520)
!2522 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2520)
!2523 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2520)
!2524 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2520)
!2525 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2520)
!2526 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2520)
!2527 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2520)
!2528 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2520)
!2529 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2520)
!2530 = !DILocation(line: 975, column: 10, scope: !2506)
!2531 = !DILocation(line: 976, column: 1, scope: !2506)
!2532 = !DILocation(line: 975, column: 3, scope: !2506)
!2533 = distinct !DISubprogram(name: "quotearg_char", scope: !473, file: !473, line: 979, type: !2534, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!89, !94, !4}
!2536 = !{!2537, !2538}
!2537 = !DILocalVariable(name: "arg", arg: 1, scope: !2533, file: !473, line: 979, type: !94)
!2538 = !DILocalVariable(name: "ch", arg: 2, scope: !2533, file: !473, line: 979, type: !4)
!2539 = !DILocation(line: 0, scope: !2533)
!2540 = !DILocation(line: 0, scope: !2506, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 981, column: 10, scope: !2533)
!2542 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2541)
!2543 = !DILocation(line: 972, column: 26, scope: !2506, inlinedAt: !2541)
!2544 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2541)
!2545 = !DILocation(line: 0, scope: !1520, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2541)
!2547 = !DILocation(line: 147, column: 41, scope: !1520, inlinedAt: !2546)
!2548 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2546)
!2549 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2546)
!2550 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2546)
!2551 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2546)
!2552 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2546)
!2553 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2546)
!2554 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2546)
!2555 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2546)
!2556 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2541)
!2557 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2541)
!2558 = !DILocation(line: 981, column: 3, scope: !2533)
!2559 = distinct !DISubprogram(name: "quotearg_colon", scope: !473, file: !473, line: 985, type: !974, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2560)
!2560 = !{!2561}
!2561 = !DILocalVariable(name: "arg", arg: 1, scope: !2559, file: !473, line: 985, type: !94)
!2562 = !DILocation(line: 0, scope: !2559)
!2563 = !DILocation(line: 0, scope: !2533, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 987, column: 10, scope: !2559)
!2565 = !DILocation(line: 0, scope: !2506, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 981, column: 10, scope: !2533, inlinedAt: !2564)
!2567 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2566)
!2568 = !DILocation(line: 972, column: 26, scope: !2506, inlinedAt: !2566)
!2569 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2566)
!2570 = !DILocation(line: 0, scope: !1520, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2566)
!2572 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2571)
!2573 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2571)
!2574 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2571)
!2575 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2566)
!2576 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2566)
!2577 = !DILocation(line: 987, column: 3, scope: !2559)
!2578 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !473, file: !473, line: 991, type: !2387, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2579)
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !473, line: 991, type: !94)
!2581 = !DILocalVariable(name: "argsize", arg: 2, scope: !2578, file: !473, line: 991, type: !91)
!2582 = !DILocation(line: 0, scope: !2578)
!2583 = !DILocation(line: 0, scope: !2506, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 993, column: 10, scope: !2578)
!2585 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2584)
!2586 = !DILocation(line: 972, column: 26, scope: !2506, inlinedAt: !2584)
!2587 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2584)
!2588 = !DILocation(line: 0, scope: !1520, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2584)
!2590 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2589)
!2591 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2589)
!2592 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2589)
!2593 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2584)
!2594 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2584)
!2595 = !DILocation(line: 993, column: 3, scope: !2578)
!2596 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !473, file: !473, line: 997, type: !2398, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2597)
!2597 = !{!2598, !2599, !2600, !2601}
!2598 = !DILocalVariable(name: "n", arg: 1, scope: !2596, file: !473, line: 997, type: !68)
!2599 = !DILocalVariable(name: "s", arg: 2, scope: !2596, file: !473, line: 997, type: !496)
!2600 = !DILocalVariable(name: "arg", arg: 3, scope: !2596, file: !473, line: 997, type: !94)
!2601 = !DILocalVariable(name: "options", scope: !2596, file: !473, line: 999, type: !523)
!2602 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 1000, column: 13, scope: !2596)
!2604 = !DILocation(line: 0, scope: !2596)
!2605 = !DILocation(line: 999, column: 3, scope: !2596)
!2606 = !DILocation(line: 999, column: 26, scope: !2596)
!2607 = !DILocation(line: 0, scope: !2413, inlinedAt: !2603)
!2608 = !DILocation(line: 186, column: 13, scope: !2422, inlinedAt: !2603)
!2609 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2603)
!2610 = !DILocation(line: 187, column: 5, scope: !2422, inlinedAt: !2603)
!2611 = !{!2612}
!2612 = distinct !{!2612, !2613, !"quoting_options_from_style: argument 0"}
!2613 = distinct !{!2613, !"quoting_options_from_style"}
!2614 = !DILocation(line: 1000, column: 13, scope: !2596)
!2615 = !DILocation(line: 0, scope: !1520, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 1001, column: 3, scope: !2596)
!2617 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2616)
!2618 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2616)
!2619 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2616)
!2620 = !DILocation(line: 1002, column: 10, scope: !2596)
!2621 = !DILocation(line: 1003, column: 1, scope: !2596)
!2622 = !DILocation(line: 1002, column: 3, scope: !2596)
!2623 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !473, file: !473, line: 1006, type: !2624, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!89, !68, !94, !94, !94}
!2626 = !{!2627, !2628, !2629, !2630}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !473, line: 1006, type: !68)
!2628 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2623, file: !473, line: 1006, type: !94)
!2629 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2623, file: !473, line: 1007, type: !94)
!2630 = !DILocalVariable(name: "arg", arg: 4, scope: !2623, file: !473, line: 1007, type: !94)
!2631 = !DILocation(line: 0, scope: !2623)
!2632 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !473, line: 1014, type: !68)
!2633 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !473, file: !473, line: 1014, type: !2634, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!89, !68, !94, !94, !94, !91}
!2636 = !{!2632, !2637, !2638, !2639, !2640, !2641}
!2637 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2633, file: !473, line: 1014, type: !94)
!2638 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2633, file: !473, line: 1015, type: !94)
!2639 = !DILocalVariable(name: "arg", arg: 4, scope: !2633, file: !473, line: 1016, type: !94)
!2640 = !DILocalVariable(name: "argsize", arg: 5, scope: !2633, file: !473, line: 1016, type: !91)
!2641 = !DILocalVariable(name: "o", scope: !2633, file: !473, line: 1018, type: !523)
!2642 = !DILocation(line: 0, scope: !2633, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1009, column: 10, scope: !2623)
!2644 = !DILocation(line: 1018, column: 3, scope: !2633, inlinedAt: !2643)
!2645 = !DILocation(line: 1018, column: 26, scope: !2633, inlinedAt: !2643)
!2646 = !DILocation(line: 1018, column: 30, scope: !2633, inlinedAt: !2643)
!2647 = !DILocation(line: 0, scope: !1560, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1019, column: 3, scope: !2633, inlinedAt: !2643)
!2649 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2648)
!2650 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2648)
!2651 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2648)
!2652 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2648)
!2653 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2648)
!2654 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2648)
!2655 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2648)
!2656 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2648)
!2657 = !DILocation(line: 1020, column: 10, scope: !2633, inlinedAt: !2643)
!2658 = !DILocation(line: 1021, column: 1, scope: !2633, inlinedAt: !2643)
!2659 = !DILocation(line: 1009, column: 3, scope: !2623)
!2660 = !DILocation(line: 0, scope: !2633)
!2661 = !DILocation(line: 1018, column: 3, scope: !2633)
!2662 = !DILocation(line: 1018, column: 26, scope: !2633)
!2663 = !DILocation(line: 1018, column: 30, scope: !2633)
!2664 = !DILocation(line: 0, scope: !1560, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1019, column: 3, scope: !2633)
!2666 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2665)
!2667 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2665)
!2668 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2665)
!2669 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2665)
!2670 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2665)
!2671 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2665)
!2672 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2665)
!2673 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2665)
!2674 = !DILocation(line: 1020, column: 10, scope: !2633)
!2675 = !DILocation(line: 1021, column: 1, scope: !2633)
!2676 = !DILocation(line: 1020, column: 3, scope: !2633)
!2677 = distinct !DISubprogram(name: "quotearg_custom", scope: !473, file: !473, line: 1024, type: !2678, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!89, !94, !94, !94}
!2680 = !{!2681, !2682, !2683}
!2681 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2677, file: !473, line: 1024, type: !94)
!2682 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2677, file: !473, line: 1024, type: !94)
!2683 = !DILocalVariable(name: "arg", arg: 3, scope: !2677, file: !473, line: 1025, type: !94)
!2684 = !DILocation(line: 0, scope: !2677)
!2685 = !DILocation(line: 0, scope: !2623, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1027, column: 10, scope: !2677)
!2687 = !DILocation(line: 0, scope: !2633, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1009, column: 10, scope: !2623, inlinedAt: !2686)
!2689 = !DILocation(line: 1018, column: 3, scope: !2633, inlinedAt: !2688)
!2690 = !DILocation(line: 1018, column: 26, scope: !2633, inlinedAt: !2688)
!2691 = !DILocation(line: 1018, column: 30, scope: !2633, inlinedAt: !2688)
!2692 = !DILocation(line: 0, scope: !1560, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1019, column: 3, scope: !2633, inlinedAt: !2688)
!2694 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2693)
!2695 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2693)
!2696 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2693)
!2697 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2693)
!2698 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2693)
!2699 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2693)
!2700 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2693)
!2701 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2693)
!2702 = !DILocation(line: 1020, column: 10, scope: !2633, inlinedAt: !2688)
!2703 = !DILocation(line: 1021, column: 1, scope: !2633, inlinedAt: !2688)
!2704 = !DILocation(line: 1027, column: 3, scope: !2677)
!2705 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !473, file: !473, line: 1031, type: !2706, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2708)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!89, !94, !94, !94, !91}
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2705, file: !473, line: 1031, type: !94)
!2710 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2705, file: !473, line: 1031, type: !94)
!2711 = !DILocalVariable(name: "arg", arg: 3, scope: !2705, file: !473, line: 1032, type: !94)
!2712 = !DILocalVariable(name: "argsize", arg: 4, scope: !2705, file: !473, line: 1032, type: !91)
!2713 = !DILocation(line: 0, scope: !2705)
!2714 = !DILocation(line: 0, scope: !2633, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1034, column: 10, scope: !2705)
!2716 = !DILocation(line: 1018, column: 3, scope: !2633, inlinedAt: !2715)
!2717 = !DILocation(line: 1018, column: 26, scope: !2633, inlinedAt: !2715)
!2718 = !DILocation(line: 1018, column: 30, scope: !2633, inlinedAt: !2715)
!2719 = !DILocation(line: 0, scope: !1560, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1019, column: 3, scope: !2633, inlinedAt: !2715)
!2721 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2720)
!2722 = !DILocation(line: 175, column: 8, scope: !1573, inlinedAt: !2720)
!2723 = !DILocation(line: 175, column: 19, scope: !1573, inlinedAt: !2720)
!2724 = !DILocation(line: 176, column: 5, scope: !1573, inlinedAt: !2720)
!2725 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2720)
!2726 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2720)
!2727 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2720)
!2728 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2720)
!2729 = !DILocation(line: 1020, column: 10, scope: !2633, inlinedAt: !2715)
!2730 = !DILocation(line: 1021, column: 1, scope: !2633, inlinedAt: !2715)
!2731 = !DILocation(line: 1034, column: 3, scope: !2705)
!2732 = distinct !DISubprogram(name: "quote_n_mem", scope: !473, file: !473, line: 1049, type: !2733, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!94, !68, !94, !91}
!2735 = !{!2736, !2737, !2738}
!2736 = !DILocalVariable(name: "n", arg: 1, scope: !2732, file: !473, line: 1049, type: !68)
!2737 = !DILocalVariable(name: "arg", arg: 2, scope: !2732, file: !473, line: 1049, type: !94)
!2738 = !DILocalVariable(name: "argsize", arg: 3, scope: !2732, file: !473, line: 1049, type: !91)
!2739 = !DILocation(line: 0, scope: !2732)
!2740 = !DILocation(line: 1051, column: 10, scope: !2732)
!2741 = !DILocation(line: 1051, column: 3, scope: !2732)
!2742 = distinct !DISubprogram(name: "quote_mem", scope: !473, file: !473, line: 1055, type: !2743, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!94, !94, !91}
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "arg", arg: 1, scope: !2742, file: !473, line: 1055, type: !94)
!2747 = !DILocalVariable(name: "argsize", arg: 2, scope: !2742, file: !473, line: 1055, type: !91)
!2748 = !DILocation(line: 0, scope: !2742)
!2749 = !DILocation(line: 0, scope: !2732, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1057, column: 10, scope: !2742)
!2751 = !DILocation(line: 1051, column: 10, scope: !2732, inlinedAt: !2750)
!2752 = !DILocation(line: 1057, column: 3, scope: !2742)
!2753 = distinct !DISubprogram(name: "quote_n", scope: !473, file: !473, line: 1061, type: !2754, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!94, !68, !94}
!2756 = !{!2757, !2758}
!2757 = !DILocalVariable(name: "n", arg: 1, scope: !2753, file: !473, line: 1061, type: !68)
!2758 = !DILocalVariable(name: "arg", arg: 2, scope: !2753, file: !473, line: 1061, type: !94)
!2759 = !DILocation(line: 0, scope: !2753)
!2760 = !DILocation(line: 0, scope: !2732, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1063, column: 10, scope: !2753)
!2762 = !DILocation(line: 1051, column: 10, scope: !2732, inlinedAt: !2761)
!2763 = !DILocation(line: 1063, column: 3, scope: !2753)
!2764 = distinct !DISubprogram(name: "quote", scope: !473, file: !473, line: 1067, type: !2765, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !494, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!94, !94}
!2767 = !{!2768}
!2768 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !473, line: 1067, type: !94)
!2769 = !DILocation(line: 0, scope: !2764)
!2770 = !DILocation(line: 0, scope: !2753, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 1069, column: 10, scope: !2764)
!2772 = !DILocation(line: 0, scope: !2732, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 1063, column: 10, scope: !2753, inlinedAt: !2771)
!2774 = !DILocation(line: 1051, column: 10, scope: !2732, inlinedAt: !2773)
!2775 = !DILocation(line: 1069, column: 3, scope: !2764)
!2776 = distinct !DISubprogram(name: "version_etc_arn", scope: !586, file: !586, line: 61, type: !2777, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2814)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !2779, !94, !94, !94, !2813, !91}
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2781, file: !145, line: 51, baseType: !68, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2781, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2781, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2781, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2781, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2781, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2781, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2781, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2781, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2781, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2781, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2781, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2781, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2781, file: !145, line: 70, baseType: !2797, size: 64, offset: 832)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2781, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2781, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2781, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2781, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2781, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2781, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2781, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2781, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2781, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2781, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2781, file: !145, line: 93, baseType: !2797, size: 64, offset: 1344)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2781, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2781, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2781, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2781, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!2814 = !{!2815, !2816, !2817, !2818, !2819, !2820}
!2815 = !DILocalVariable(name: "stream", arg: 1, scope: !2776, file: !586, line: 61, type: !2779)
!2816 = !DILocalVariable(name: "command_name", arg: 2, scope: !2776, file: !586, line: 62, type: !94)
!2817 = !DILocalVariable(name: "package", arg: 3, scope: !2776, file: !586, line: 62, type: !94)
!2818 = !DILocalVariable(name: "version", arg: 4, scope: !2776, file: !586, line: 63, type: !94)
!2819 = !DILocalVariable(name: "authors", arg: 5, scope: !2776, file: !586, line: 64, type: !2813)
!2820 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2776, file: !586, line: 64, type: !91)
!2821 = !DILocation(line: 0, scope: !2776)
!2822 = !DILocation(line: 66, column: 7, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2776, file: !586, line: 66, column: 7)
!2824 = !DILocation(line: 66, column: 7, scope: !2776)
!2825 = !DILocation(line: 67, column: 5, scope: !2823)
!2826 = !DILocation(line: 69, column: 5, scope: !2823)
!2827 = !DILocation(line: 83, column: 3, scope: !2776)
!2828 = !DILocation(line: 85, column: 3, scope: !2776)
!2829 = !DILocation(line: 88, column: 3, scope: !2776)
!2830 = !DILocation(line: 95, column: 3, scope: !2776)
!2831 = !DILocation(line: 97, column: 3, scope: !2776)
!2832 = !DILocation(line: 105, column: 7, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2776, file: !586, line: 98, column: 5)
!2834 = !DILocation(line: 106, column: 7, scope: !2833)
!2835 = !DILocation(line: 109, column: 7, scope: !2833)
!2836 = !DILocation(line: 110, column: 7, scope: !2833)
!2837 = !DILocation(line: 113, column: 7, scope: !2833)
!2838 = !DILocation(line: 115, column: 7, scope: !2833)
!2839 = !DILocation(line: 120, column: 7, scope: !2833)
!2840 = !DILocation(line: 122, column: 7, scope: !2833)
!2841 = !DILocation(line: 127, column: 7, scope: !2833)
!2842 = !DILocation(line: 129, column: 7, scope: !2833)
!2843 = !DILocation(line: 134, column: 7, scope: !2833)
!2844 = !DILocation(line: 137, column: 7, scope: !2833)
!2845 = !DILocation(line: 142, column: 7, scope: !2833)
!2846 = !DILocation(line: 145, column: 7, scope: !2833)
!2847 = !DILocation(line: 150, column: 7, scope: !2833)
!2848 = !DILocation(line: 154, column: 7, scope: !2833)
!2849 = !DILocation(line: 159, column: 7, scope: !2833)
!2850 = !DILocation(line: 163, column: 7, scope: !2833)
!2851 = !DILocation(line: 170, column: 7, scope: !2833)
!2852 = !DILocation(line: 174, column: 7, scope: !2833)
!2853 = !DILocation(line: 176, column: 1, scope: !2776)
!2854 = distinct !DISubprogram(name: "version_etc_ar", scope: !586, file: !586, line: 183, type: !2855, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !2779, !94, !94, !94, !2813}
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863}
!2858 = !DILocalVariable(name: "stream", arg: 1, scope: !2854, file: !586, line: 183, type: !2779)
!2859 = !DILocalVariable(name: "command_name", arg: 2, scope: !2854, file: !586, line: 184, type: !94)
!2860 = !DILocalVariable(name: "package", arg: 3, scope: !2854, file: !586, line: 184, type: !94)
!2861 = !DILocalVariable(name: "version", arg: 4, scope: !2854, file: !586, line: 185, type: !94)
!2862 = !DILocalVariable(name: "authors", arg: 5, scope: !2854, file: !586, line: 185, type: !2813)
!2863 = !DILocalVariable(name: "n_authors", scope: !2854, file: !586, line: 187, type: !91)
!2864 = !DILocation(line: 0, scope: !2854)
!2865 = !DILocation(line: 189, column: 8, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2854, file: !586, line: 189, column: 3)
!2867 = !DILocation(line: 189, scope: !2866)
!2868 = !DILocation(line: 189, column: 23, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !586, line: 189, column: 3)
!2870 = !DILocation(line: 189, column: 3, scope: !2866)
!2871 = !DILocation(line: 189, column: 52, scope: !2869)
!2872 = distinct !{!2872, !2870, !2873, !898}
!2873 = !DILocation(line: 190, column: 5, scope: !2866)
!2874 = !DILocation(line: 191, column: 3, scope: !2854)
!2875 = !DILocation(line: 192, column: 1, scope: !2854)
!2876 = distinct !DISubprogram(name: "version_etc_va", scope: !586, file: !586, line: 199, type: !2877, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2890)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2779, !94, !94, !94, !2879}
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !387, line: 52, baseType: !2880)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !389, line: 14, baseType: !2881)
!2881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2882, baseType: !2883)
!2882 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888, !2889}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2883, file: !2882, line: 192, baseType: !90, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2883, file: !2882, line: 192, baseType: !90, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2883, file: !2882, line: 192, baseType: !90, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2883, file: !2882, line: 192, baseType: !68, size: 32, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2883, file: !2882, line: 192, baseType: !68, size: 32, offset: 224)
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896, !2897}
!2891 = !DILocalVariable(name: "stream", arg: 1, scope: !2876, file: !586, line: 199, type: !2779)
!2892 = !DILocalVariable(name: "command_name", arg: 2, scope: !2876, file: !586, line: 200, type: !94)
!2893 = !DILocalVariable(name: "package", arg: 3, scope: !2876, file: !586, line: 200, type: !94)
!2894 = !DILocalVariable(name: "version", arg: 4, scope: !2876, file: !586, line: 201, type: !94)
!2895 = !DILocalVariable(name: "authors", arg: 5, scope: !2876, file: !586, line: 201, type: !2879)
!2896 = !DILocalVariable(name: "n_authors", scope: !2876, file: !586, line: 203, type: !91)
!2897 = !DILocalVariable(name: "authtab", scope: !2876, file: !586, line: 204, type: !2898)
!2898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 640, elements: !50)
!2899 = !DILocation(line: 0, scope: !2876)
!2900 = !DILocation(line: 201, column: 46, scope: !2876)
!2901 = !DILocation(line: 204, column: 3, scope: !2876)
!2902 = !DILocation(line: 204, column: 15, scope: !2876)
!2903 = !DILocation(line: 208, column: 35, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !586, line: 206, column: 3)
!2905 = distinct !DILexicalBlock(scope: !2876, file: !586, line: 206, column: 3)
!2906 = !DILocation(line: 208, column: 33, scope: !2904)
!2907 = !DILocation(line: 208, column: 67, scope: !2904)
!2908 = !DILocation(line: 206, column: 3, scope: !2905)
!2909 = !DILocation(line: 208, column: 14, scope: !2904)
!2910 = !DILocation(line: 0, scope: !2905)
!2911 = !DILocation(line: 211, column: 3, scope: !2876)
!2912 = !DILocation(line: 213, column: 1, scope: !2876)
!2913 = distinct !DISubprogram(name: "version_etc", scope: !586, file: !586, line: 230, type: !2914, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !2779, !94, !94, !94, null}
!2916 = !{!2917, !2918, !2919, !2920, !2921}
!2917 = !DILocalVariable(name: "stream", arg: 1, scope: !2913, file: !586, line: 230, type: !2779)
!2918 = !DILocalVariable(name: "command_name", arg: 2, scope: !2913, file: !586, line: 231, type: !94)
!2919 = !DILocalVariable(name: "package", arg: 3, scope: !2913, file: !586, line: 231, type: !94)
!2920 = !DILocalVariable(name: "version", arg: 4, scope: !2913, file: !586, line: 232, type: !94)
!2921 = !DILocalVariable(name: "authors", scope: !2913, file: !586, line: 234, type: !2879)
!2922 = !DILocation(line: 0, scope: !2913)
!2923 = !DILocation(line: 234, column: 3, scope: !2913)
!2924 = !DILocation(line: 234, column: 11, scope: !2913)
!2925 = !DILocation(line: 235, column: 3, scope: !2913)
!2926 = !DILocation(line: 236, column: 3, scope: !2913)
!2927 = !DILocation(line: 237, column: 3, scope: !2913)
!2928 = !DILocation(line: 238, column: 1, scope: !2913)
!2929 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !586, file: !586, line: 241, type: !428, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !711, retainedNodes: !836)
!2930 = !DILocation(line: 243, column: 3, scope: !2929)
!2931 = !DILocation(line: 248, column: 3, scope: !2929)
!2932 = !DILocation(line: 254, column: 3, scope: !2929)
!2933 = !DILocation(line: 259, column: 3, scope: !2929)
!2934 = !DILocation(line: 261, column: 1, scope: !2929)
!2935 = distinct !DISubprogram(name: "xnrealloc", scope: !2936, file: !2936, line: 147, type: !2937, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2939)
!2936 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!90, !90, !91, !91}
!2939 = !{!2940, !2941, !2942}
!2940 = !DILocalVariable(name: "p", arg: 1, scope: !2935, file: !2936, line: 147, type: !90)
!2941 = !DILocalVariable(name: "n", arg: 2, scope: !2935, file: !2936, line: 147, type: !91)
!2942 = !DILocalVariable(name: "s", arg: 3, scope: !2935, file: !2936, line: 147, type: !91)
!2943 = !DILocation(line: 0, scope: !2935)
!2944 = !DILocalVariable(name: "p", arg: 1, scope: !2945, file: !719, line: 83, type: !90)
!2945 = distinct !DISubprogram(name: "xreallocarray", scope: !719, file: !719, line: 83, type: !2937, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2946)
!2946 = !{!2944, !2947, !2948}
!2947 = !DILocalVariable(name: "n", arg: 2, scope: !2945, file: !719, line: 83, type: !91)
!2948 = !DILocalVariable(name: "s", arg: 3, scope: !2945, file: !719, line: 83, type: !91)
!2949 = !DILocation(line: 0, scope: !2945, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 149, column: 10, scope: !2935)
!2951 = !DILocation(line: 85, column: 25, scope: !2945, inlinedAt: !2950)
!2952 = !DILocalVariable(name: "p", arg: 1, scope: !2953, file: !719, line: 37, type: !90)
!2953 = distinct !DISubprogram(name: "check_nonnull", scope: !719, file: !719, line: 37, type: !2954, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!90, !90}
!2956 = !{!2952}
!2957 = !DILocation(line: 0, scope: !2953, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 85, column: 10, scope: !2945, inlinedAt: !2950)
!2959 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !2958)
!2960 = distinct !DILexicalBlock(scope: !2953, file: !719, line: 39, column: 7)
!2961 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !2958)
!2962 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !2958)
!2963 = !DILocation(line: 149, column: 3, scope: !2935)
!2964 = !DILocation(line: 0, scope: !2945)
!2965 = !DILocation(line: 85, column: 25, scope: !2945)
!2966 = !DILocation(line: 0, scope: !2953, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 85, column: 10, scope: !2945)
!2968 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !2967)
!2969 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !2967)
!2970 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !2967)
!2971 = !DILocation(line: 85, column: 3, scope: !2945)
!2972 = distinct !DISubprogram(name: "xmalloc", scope: !719, file: !719, line: 47, type: !1191, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2973)
!2973 = !{!2974}
!2974 = !DILocalVariable(name: "s", arg: 1, scope: !2972, file: !719, line: 47, type: !91)
!2975 = !DILocation(line: 0, scope: !2972)
!2976 = !DILocation(line: 49, column: 25, scope: !2972)
!2977 = !DILocation(line: 0, scope: !2953, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 49, column: 10, scope: !2972)
!2979 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !2978)
!2980 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !2978)
!2981 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !2978)
!2982 = !DILocation(line: 49, column: 3, scope: !2972)
!2983 = distinct !DISubprogram(name: "ximalloc", scope: !719, file: !719, line: 53, type: !2984, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!90, !134}
!2986 = !{!2987}
!2987 = !DILocalVariable(name: "s", arg: 1, scope: !2983, file: !719, line: 53, type: !134)
!2988 = !DILocation(line: 0, scope: !2983)
!2989 = !DILocalVariable(name: "s", arg: 1, scope: !2990, file: !2991, line: 55, type: !134)
!2990 = distinct !DISubprogram(name: "imalloc", scope: !2991, file: !2991, line: 55, type: !2984, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !2992)
!2991 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2992 = !{!2989}
!2993 = !DILocation(line: 0, scope: !2990, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 55, column: 25, scope: !2983)
!2995 = !DILocation(line: 57, column: 26, scope: !2990, inlinedAt: !2994)
!2996 = !DILocation(line: 0, scope: !2953, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 55, column: 10, scope: !2983)
!2998 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !2997)
!2999 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !2997)
!3000 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !2997)
!3001 = !DILocation(line: 55, column: 3, scope: !2983)
!3002 = distinct !DISubprogram(name: "xcharalloc", scope: !719, file: !719, line: 59, type: !3003, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!89, !91}
!3005 = !{!3006}
!3006 = !DILocalVariable(name: "n", arg: 1, scope: !3002, file: !719, line: 59, type: !91)
!3007 = !DILocation(line: 0, scope: !3002)
!3008 = !DILocation(line: 0, scope: !2972, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 61, column: 10, scope: !3002)
!3010 = !DILocation(line: 49, column: 25, scope: !2972, inlinedAt: !3009)
!3011 = !DILocation(line: 0, scope: !2953, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 49, column: 10, scope: !2972, inlinedAt: !3009)
!3013 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3012)
!3014 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3012)
!3015 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3012)
!3016 = !DILocation(line: 61, column: 3, scope: !3002)
!3017 = distinct !DISubprogram(name: "xrealloc", scope: !719, file: !719, line: 68, type: !3018, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3020)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!90, !90, !91}
!3020 = !{!3021, !3022}
!3021 = !DILocalVariable(name: "p", arg: 1, scope: !3017, file: !719, line: 68, type: !90)
!3022 = !DILocalVariable(name: "s", arg: 2, scope: !3017, file: !719, line: 68, type: !91)
!3023 = !DILocation(line: 0, scope: !3017)
!3024 = !DILocalVariable(name: "ptr", arg: 1, scope: !3025, file: !3026, line: 2057, type: !90)
!3025 = distinct !DISubprogram(name: "rpl_realloc", scope: !3026, file: !3026, line: 2057, type: !3018, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3027)
!3026 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3027 = !{!3024, !3028}
!3028 = !DILocalVariable(name: "size", arg: 2, scope: !3025, file: !3026, line: 2057, type: !91)
!3029 = !DILocation(line: 0, scope: !3025, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 70, column: 25, scope: !3017)
!3031 = !DILocation(line: 2059, column: 24, scope: !3025, inlinedAt: !3030)
!3032 = !DILocation(line: 2059, column: 10, scope: !3025, inlinedAt: !3030)
!3033 = !DILocation(line: 0, scope: !2953, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 70, column: 10, scope: !3017)
!3035 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3034)
!3036 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3034)
!3037 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3034)
!3038 = !DILocation(line: 70, column: 3, scope: !3017)
!3039 = !DISubprogram(name: "realloc", scope: !972, file: !972, line: 551, type: !3018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3040 = distinct !DISubprogram(name: "xirealloc", scope: !719, file: !719, line: 74, type: !3041, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!90, !90, !134}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3040, file: !719, line: 74, type: !90)
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !719, line: 74, type: !134)
!3046 = !DILocation(line: 0, scope: !3040)
!3047 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !2991, line: 66, type: !90)
!3048 = distinct !DISubprogram(name: "irealloc", scope: !2991, file: !2991, line: 66, type: !3041, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3049)
!3049 = !{!3047, !3050}
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !2991, line: 66, type: !134)
!3051 = !DILocation(line: 0, scope: !3048, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 76, column: 25, scope: !3040)
!3053 = !DILocation(line: 0, scope: !3025, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 68, column: 26, scope: !3048, inlinedAt: !3052)
!3055 = !DILocation(line: 2059, column: 24, scope: !3025, inlinedAt: !3054)
!3056 = !DILocation(line: 2059, column: 10, scope: !3025, inlinedAt: !3054)
!3057 = !DILocation(line: 0, scope: !2953, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 76, column: 10, scope: !3040)
!3059 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3058)
!3060 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3058)
!3061 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3058)
!3062 = !DILocation(line: 76, column: 3, scope: !3040)
!3063 = distinct !DISubprogram(name: "xireallocarray", scope: !719, file: !719, line: 89, type: !3064, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!90, !90, !134, !134}
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !719, line: 89, type: !90)
!3068 = !DILocalVariable(name: "n", arg: 2, scope: !3063, file: !719, line: 89, type: !134)
!3069 = !DILocalVariable(name: "s", arg: 3, scope: !3063, file: !719, line: 89, type: !134)
!3070 = !DILocation(line: 0, scope: !3063)
!3071 = !DILocalVariable(name: "p", arg: 1, scope: !3072, file: !2991, line: 98, type: !90)
!3072 = distinct !DISubprogram(name: "ireallocarray", scope: !2991, file: !2991, line: 98, type: !3064, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3073)
!3073 = !{!3071, !3074, !3075}
!3074 = !DILocalVariable(name: "n", arg: 2, scope: !3072, file: !2991, line: 98, type: !134)
!3075 = !DILocalVariable(name: "s", arg: 3, scope: !3072, file: !2991, line: 98, type: !134)
!3076 = !DILocation(line: 0, scope: !3072, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 91, column: 25, scope: !3063)
!3078 = !DILocation(line: 101, column: 13, scope: !3072, inlinedAt: !3077)
!3079 = !DILocation(line: 0, scope: !2953, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 91, column: 10, scope: !3063)
!3081 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3080)
!3082 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3080)
!3083 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3080)
!3084 = !DILocation(line: 91, column: 3, scope: !3063)
!3085 = distinct !DISubprogram(name: "xnmalloc", scope: !719, file: !719, line: 98, type: !3086, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!90, !91, !91}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !719, line: 98, type: !91)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3085, file: !719, line: 98, type: !91)
!3091 = !DILocation(line: 0, scope: !3085)
!3092 = !DILocation(line: 0, scope: !2945, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 100, column: 10, scope: !3085)
!3094 = !DILocation(line: 85, column: 25, scope: !2945, inlinedAt: !3093)
!3095 = !DILocation(line: 0, scope: !2953, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 85, column: 10, scope: !2945, inlinedAt: !3093)
!3097 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3096)
!3098 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3096)
!3099 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3096)
!3100 = !DILocation(line: 100, column: 3, scope: !3085)
!3101 = distinct !DISubprogram(name: "xinmalloc", scope: !719, file: !719, line: 104, type: !3102, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!90, !134, !134}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !719, line: 104, type: !134)
!3106 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !719, line: 104, type: !134)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 0, scope: !3063, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 106, column: 10, scope: !3101)
!3110 = !DILocation(line: 0, scope: !3072, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 91, column: 25, scope: !3063, inlinedAt: !3109)
!3112 = !DILocation(line: 101, column: 13, scope: !3072, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !2953, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 91, column: 10, scope: !3063, inlinedAt: !3109)
!3115 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3114)
!3118 = !DILocation(line: 106, column: 3, scope: !3101)
!3119 = distinct !DISubprogram(name: "x2realloc", scope: !719, file: !719, line: 116, type: !3120, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!90, !90, !725}
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "p", arg: 1, scope: !3119, file: !719, line: 116, type: !90)
!3124 = !DILocalVariable(name: "ps", arg: 2, scope: !3119, file: !719, line: 116, type: !725)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 0, scope: !722, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 118, column: 10, scope: !3119)
!3128 = !DILocation(line: 178, column: 14, scope: !722, inlinedAt: !3127)
!3129 = !DILocation(line: 180, column: 9, scope: !3130, inlinedAt: !3127)
!3130 = distinct !DILexicalBlock(scope: !722, file: !719, line: 180, column: 7)
!3131 = !DILocation(line: 180, column: 7, scope: !722, inlinedAt: !3127)
!3132 = !DILocation(line: 182, column: 13, scope: !3133, inlinedAt: !3127)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !719, line: 182, column: 11)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !719, line: 181, column: 5)
!3135 = !DILocation(line: 182, column: 11, scope: !3134, inlinedAt: !3127)
!3136 = !DILocation(line: 197, column: 11, scope: !3137, inlinedAt: !3127)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !719, line: 197, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !719, line: 195, column: 5)
!3139 = !DILocation(line: 197, column: 11, scope: !3138, inlinedAt: !3127)
!3140 = !DILocation(line: 198, column: 9, scope: !3137, inlinedAt: !3127)
!3141 = !DILocation(line: 0, scope: !2945, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 201, column: 7, scope: !722, inlinedAt: !3127)
!3143 = !DILocation(line: 85, column: 25, scope: !2945, inlinedAt: !3142)
!3144 = !DILocation(line: 0, scope: !2953, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 85, column: 10, scope: !2945, inlinedAt: !3142)
!3146 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3145)
!3147 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3145)
!3148 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3145)
!3149 = !DILocation(line: 202, column: 7, scope: !722, inlinedAt: !3127)
!3150 = !DILocation(line: 118, column: 3, scope: !3119)
!3151 = !DILocation(line: 0, scope: !722)
!3152 = !DILocation(line: 178, column: 14, scope: !722)
!3153 = !DILocation(line: 180, column: 9, scope: !3130)
!3154 = !DILocation(line: 180, column: 7, scope: !722)
!3155 = !DILocation(line: 182, column: 13, scope: !3133)
!3156 = !DILocation(line: 182, column: 11, scope: !3134)
!3157 = !DILocation(line: 190, column: 30, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3133, file: !719, line: 183, column: 9)
!3159 = !DILocation(line: 191, column: 16, scope: !3158)
!3160 = !DILocation(line: 191, column: 13, scope: !3158)
!3161 = !DILocation(line: 192, column: 9, scope: !3158)
!3162 = !DILocation(line: 197, column: 11, scope: !3137)
!3163 = !DILocation(line: 197, column: 11, scope: !3138)
!3164 = !DILocation(line: 198, column: 9, scope: !3137)
!3165 = !DILocation(line: 0, scope: !2945, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 201, column: 7, scope: !722)
!3167 = !DILocation(line: 85, column: 25, scope: !2945, inlinedAt: !3166)
!3168 = !DILocation(line: 0, scope: !2953, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 85, column: 10, scope: !2945, inlinedAt: !3166)
!3170 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3169)
!3171 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3169)
!3172 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3169)
!3173 = !DILocation(line: 202, column: 7, scope: !722)
!3174 = !DILocation(line: 203, column: 3, scope: !722)
!3175 = !DILocation(line: 0, scope: !734)
!3176 = !DILocation(line: 230, column: 14, scope: !734)
!3177 = !DILocation(line: 238, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !734, file: !719, line: 238, column: 7)
!3179 = !DILocation(line: 238, column: 7, scope: !734)
!3180 = !DILocation(line: 240, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !734, file: !719, line: 240, column: 7)
!3182 = !DILocation(line: 240, column: 18, scope: !3181)
!3183 = !DILocation(line: 253, column: 8, scope: !734)
!3184 = !DILocation(line: 258, column: 27, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !719, line: 257, column: 5)
!3186 = distinct !DILexicalBlock(scope: !734, file: !719, line: 256, column: 7)
!3187 = !DILocation(line: 259, column: 32, scope: !3185)
!3188 = !DILocation(line: 260, column: 5, scope: !3185)
!3189 = !DILocation(line: 262, column: 9, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !734, file: !719, line: 262, column: 7)
!3191 = !DILocation(line: 262, column: 7, scope: !734)
!3192 = !DILocation(line: 263, column: 9, scope: !3190)
!3193 = !DILocation(line: 263, column: 5, scope: !3190)
!3194 = !DILocation(line: 264, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !734, file: !719, line: 264, column: 7)
!3196 = !DILocation(line: 264, column: 14, scope: !3195)
!3197 = !DILocation(line: 265, column: 7, scope: !3195)
!3198 = !DILocation(line: 265, column: 11, scope: !3195)
!3199 = !DILocation(line: 266, column: 11, scope: !3195)
!3200 = !DILocation(line: 267, column: 14, scope: !3195)
!3201 = !DILocation(line: 264, column: 7, scope: !734)
!3202 = !DILocation(line: 268, column: 5, scope: !3195)
!3203 = !DILocation(line: 0, scope: !3017, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 269, column: 8, scope: !734)
!3205 = !DILocation(line: 0, scope: !3025, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 70, column: 25, scope: !3017, inlinedAt: !3204)
!3207 = !DILocation(line: 2059, column: 24, scope: !3025, inlinedAt: !3206)
!3208 = !DILocation(line: 2059, column: 10, scope: !3025, inlinedAt: !3206)
!3209 = !DILocation(line: 0, scope: !2953, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 70, column: 10, scope: !3017, inlinedAt: !3204)
!3211 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3210)
!3214 = !DILocation(line: 270, column: 7, scope: !734)
!3215 = !DILocation(line: 271, column: 3, scope: !734)
!3216 = distinct !DISubprogram(name: "xzalloc", scope: !719, file: !719, line: 279, type: !1191, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3217)
!3217 = !{!3218}
!3218 = !DILocalVariable(name: "s", arg: 1, scope: !3216, file: !719, line: 279, type: !91)
!3219 = !DILocation(line: 0, scope: !3216)
!3220 = !DILocalVariable(name: "n", arg: 1, scope: !3221, file: !719, line: 294, type: !91)
!3221 = distinct !DISubprogram(name: "xcalloc", scope: !719, file: !719, line: 294, type: !3086, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3222)
!3222 = !{!3220, !3223}
!3223 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !719, line: 294, type: !91)
!3224 = !DILocation(line: 0, scope: !3221, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 281, column: 10, scope: !3216)
!3226 = !DILocation(line: 296, column: 25, scope: !3221, inlinedAt: !3225)
!3227 = !DILocation(line: 0, scope: !2953, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 296, column: 10, scope: !3221, inlinedAt: !3225)
!3229 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3228)
!3230 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3228)
!3231 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3228)
!3232 = !DILocation(line: 281, column: 3, scope: !3216)
!3233 = !DISubprogram(name: "calloc", scope: !972, file: !972, line: 543, type: !3086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3234 = !DILocation(line: 0, scope: !3221)
!3235 = !DILocation(line: 296, column: 25, scope: !3221)
!3236 = !DILocation(line: 0, scope: !2953, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 296, column: 10, scope: !3221)
!3238 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3237)
!3241 = !DILocation(line: 296, column: 3, scope: !3221)
!3242 = distinct !DISubprogram(name: "xizalloc", scope: !719, file: !719, line: 285, type: !2984, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3243)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "s", arg: 1, scope: !3242, file: !719, line: 285, type: !134)
!3245 = !DILocation(line: 0, scope: !3242)
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !719, line: 300, type: !134)
!3247 = distinct !DISubprogram(name: "xicalloc", scope: !719, file: !719, line: 300, type: !3102, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3248)
!3248 = !{!3246, !3249}
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !719, line: 300, type: !134)
!3250 = !DILocation(line: 0, scope: !3247, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 287, column: 10, scope: !3242)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !2991, line: 77, type: !134)
!3253 = distinct !DISubprogram(name: "icalloc", scope: !2991, file: !2991, line: 77, type: !3102, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3254)
!3254 = !{!3252, !3255}
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !2991, line: 77, type: !134)
!3256 = !DILocation(line: 0, scope: !3253, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 302, column: 25, scope: !3247, inlinedAt: !3251)
!3258 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3257)
!3259 = !DILocation(line: 0, scope: !2953, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 302, column: 10, scope: !3247, inlinedAt: !3251)
!3261 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3260)
!3264 = !DILocation(line: 287, column: 3, scope: !3242)
!3265 = !DILocation(line: 0, scope: !3247)
!3266 = !DILocation(line: 0, scope: !3253, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 302, column: 25, scope: !3247)
!3268 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2953, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 302, column: 10, scope: !3247)
!3271 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3270)
!3274 = !DILocation(line: 302, column: 3, scope: !3247)
!3275 = distinct !DISubprogram(name: "xmemdup", scope: !719, file: !719, line: 310, type: !3276, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!90, !996, !91}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !719, line: 310, type: !996)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !719, line: 310, type: !91)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 0, scope: !2972, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 312, column: 18, scope: !3275)
!3284 = !DILocation(line: 49, column: 25, scope: !2972, inlinedAt: !3283)
!3285 = !DILocation(line: 0, scope: !2953, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 49, column: 10, scope: !2972, inlinedAt: !3283)
!3287 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3286)
!3288 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3286)
!3289 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3286)
!3290 = !DILocalVariable(name: "__dest", arg: 1, scope: !3291, file: !1172, line: 26, type: !1175)
!3291 = distinct !DISubprogram(name: "memcpy", scope: !1172, file: !1172, line: 26, type: !1173, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3292)
!3292 = !{!3290, !3293, !3294}
!3293 = !DILocalVariable(name: "__src", arg: 2, scope: !3291, file: !1172, line: 26, type: !995)
!3294 = !DILocalVariable(name: "__len", arg: 3, scope: !3291, file: !1172, line: 26, type: !91)
!3295 = !DILocation(line: 0, scope: !3291, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 312, column: 10, scope: !3275)
!3297 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3296)
!3298 = !DILocation(line: 312, column: 3, scope: !3275)
!3299 = distinct !DISubprogram(name: "ximemdup", scope: !719, file: !719, line: 316, type: !3300, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3302)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!90, !996, !134}
!3302 = !{!3303, !3304}
!3303 = !DILocalVariable(name: "p", arg: 1, scope: !3299, file: !719, line: 316, type: !996)
!3304 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !719, line: 316, type: !134)
!3305 = !DILocation(line: 0, scope: !3299)
!3306 = !DILocation(line: 0, scope: !2983, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 318, column: 18, scope: !3299)
!3308 = !DILocation(line: 0, scope: !2990, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 55, column: 25, scope: !2983, inlinedAt: !3307)
!3310 = !DILocation(line: 57, column: 26, scope: !2990, inlinedAt: !3309)
!3311 = !DILocation(line: 0, scope: !2953, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 55, column: 10, scope: !2983, inlinedAt: !3307)
!3313 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3312)
!3314 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3312)
!3315 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3312)
!3316 = !DILocation(line: 0, scope: !3291, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 318, column: 10, scope: !3299)
!3318 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3317)
!3319 = !DILocation(line: 318, column: 3, scope: !3299)
!3320 = distinct !DISubprogram(name: "ximemdup0", scope: !719, file: !719, line: 325, type: !3321, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3323)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!89, !996, !134}
!3323 = !{!3324, !3325, !3326}
!3324 = !DILocalVariable(name: "p", arg: 1, scope: !3320, file: !719, line: 325, type: !996)
!3325 = !DILocalVariable(name: "s", arg: 2, scope: !3320, file: !719, line: 325, type: !134)
!3326 = !DILocalVariable(name: "result", scope: !3320, file: !719, line: 327, type: !89)
!3327 = !DILocation(line: 0, scope: !3320)
!3328 = !DILocation(line: 327, column: 30, scope: !3320)
!3329 = !DILocation(line: 0, scope: !2983, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 327, column: 18, scope: !3320)
!3331 = !DILocation(line: 0, scope: !2990, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 55, column: 25, scope: !2983, inlinedAt: !3330)
!3333 = !DILocation(line: 57, column: 26, scope: !2990, inlinedAt: !3332)
!3334 = !DILocation(line: 0, scope: !2953, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 55, column: 10, scope: !2983, inlinedAt: !3330)
!3336 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3335)
!3337 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3335)
!3338 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3335)
!3339 = !DILocation(line: 328, column: 3, scope: !3320)
!3340 = !DILocation(line: 328, column: 13, scope: !3320)
!3341 = !DILocation(line: 0, scope: !3291, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 329, column: 10, scope: !3320)
!3343 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3342)
!3344 = !DILocation(line: 329, column: 3, scope: !3320)
!3345 = distinct !DISubprogram(name: "xstrdup", scope: !719, file: !719, line: 335, type: !974, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3346)
!3346 = !{!3347}
!3347 = !DILocalVariable(name: "string", arg: 1, scope: !3345, file: !719, line: 335, type: !94)
!3348 = !DILocation(line: 0, scope: !3345)
!3349 = !DILocation(line: 337, column: 27, scope: !3345)
!3350 = !DILocation(line: 337, column: 43, scope: !3345)
!3351 = !DILocation(line: 0, scope: !3275, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 337, column: 10, scope: !3345)
!3353 = !DILocation(line: 0, scope: !2972, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 312, column: 18, scope: !3275, inlinedAt: !3352)
!3355 = !DILocation(line: 49, column: 25, scope: !2972, inlinedAt: !3354)
!3356 = !DILocation(line: 0, scope: !2953, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 49, column: 10, scope: !2972, inlinedAt: !3354)
!3358 = !DILocation(line: 39, column: 8, scope: !2960, inlinedAt: !3357)
!3359 = !DILocation(line: 39, column: 7, scope: !2953, inlinedAt: !3357)
!3360 = !DILocation(line: 40, column: 5, scope: !2960, inlinedAt: !3357)
!3361 = !DILocation(line: 0, scope: !3291, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 312, column: 10, scope: !3275, inlinedAt: !3352)
!3363 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3362)
!3364 = !DILocation(line: 337, column: 3, scope: !3345)
!3365 = distinct !DISubprogram(name: "xalloc_die", scope: !679, file: !679, line: 32, type: !428, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !3366)
!3366 = !{!3367}
!3367 = !DILocalVariable(name: "__errstatus", scope: !3368, file: !679, line: 34, type: !3369)
!3368 = distinct !DILexicalBlock(scope: !3365, file: !679, line: 34, column: 3)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!3370 = !DILocation(line: 34, column: 3, scope: !3368)
!3371 = !DILocation(line: 0, scope: !3368)
!3372 = !DILocation(line: 40, column: 3, scope: !3365)
!3373 = distinct !DISubprogram(name: "last_component", scope: !752, file: !752, line: 29, type: !974, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3374)
!3374 = !{!3375, !3376, !3377, !3378}
!3375 = !DILocalVariable(name: "name", arg: 1, scope: !3373, file: !752, line: 29, type: !94)
!3376 = !DILocalVariable(name: "base", scope: !3373, file: !752, line: 31, type: !94)
!3377 = !DILocalVariable(name: "last_was_slash", scope: !3373, file: !752, line: 35, type: !126)
!3378 = !DILocalVariable(name: "p", scope: !3379, file: !752, line: 36, type: !94)
!3379 = distinct !DILexicalBlock(scope: !3373, file: !752, line: 36, column: 3)
!3380 = !DILocation(line: 0, scope: !3373)
!3381 = !DILocation(line: 32, column: 3, scope: !3373)
!3382 = !DILocation(line: 32, column: 10, scope: !3373)
!3383 = !DILocation(line: 33, column: 9, scope: !3373)
!3384 = distinct !{!3384, !3381, !3383, !898}
!3385 = !DILocation(line: 36, column: 30, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3379, file: !752, line: 36, column: 3)
!3387 = !DILocation(line: 31, column: 15, scope: !3373)
!3388 = !DILocation(line: 36, scope: !3379)
!3389 = !DILocation(line: 0, scope: !3379)
!3390 = !DILocation(line: 36, column: 3, scope: !3379)
!3391 = !DILocation(line: 47, column: 3, scope: !3373)
!3392 = !DILocation(line: 40, column: 16, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !752, line: 38, column: 11)
!3394 = distinct !DILexicalBlock(scope: !3386, file: !752, line: 37, column: 5)
!3395 = !DILocation(line: 36, column: 35, scope: !3386)
!3396 = !DILocation(line: 36, column: 3, scope: !3386)
!3397 = distinct !{!3397, !3390, !3398, !898}
!3398 = !DILocation(line: 45, column: 5, scope: !3379)
!3399 = distinct !DISubprogram(name: "base_len", scope: !752, file: !752, line: 51, type: !1120, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !751, retainedNodes: !3400)
!3400 = !{!3401, !3402, !3403}
!3401 = !DILocalVariable(name: "name", arg: 1, scope: !3399, file: !752, line: 51, type: !94)
!3402 = !DILocalVariable(name: "len", scope: !3399, file: !752, line: 53, type: !91)
!3403 = !DILocalVariable(name: "prefix_len", scope: !3399, file: !752, line: 61, type: !91)
!3404 = !DILocation(line: 0, scope: !3399)
!3405 = !DILocation(line: 54, column: 14, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !752, line: 54, column: 3)
!3407 = !DILocation(line: 54, column: 8, scope: !3406)
!3408 = !DILocation(line: 54, scope: !3406)
!3409 = !DILocation(line: 54, column: 32, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !752, line: 54, column: 3)
!3411 = !DILocation(line: 54, column: 38, scope: !3410)
!3412 = !DILocation(line: 54, column: 41, scope: !3410)
!3413 = !DILocation(line: 54, column: 3, scope: !3406)
!3414 = distinct !{!3414, !3413, !3415, !898}
!3415 = !DILocation(line: 55, column: 5, scope: !3406)
!3416 = !DILocation(line: 66, column: 3, scope: !3399)
!3417 = distinct !DISubprogram(name: "close_stream", scope: !754, file: !754, line: 55, type: !3418, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3454)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!68, !3420}
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3422)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3422, file: !145, line: 51, baseType: !68, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3422, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3422, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3422, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3422, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3422, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3422, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3422, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3422, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3422, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3422, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3422, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3422, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3422, file: !145, line: 70, baseType: !3438, size: 64, offset: 832)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3422, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3422, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3422, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3422, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3422, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3422, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3422, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3422, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3422, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3422, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3422, file: !145, line: 93, baseType: !3438, size: 64, offset: 1344)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3422, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3422, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3422, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3422, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3454 = !{!3455, !3456, !3458, !3459}
!3455 = !DILocalVariable(name: "stream", arg: 1, scope: !3417, file: !754, line: 55, type: !3420)
!3456 = !DILocalVariable(name: "some_pending", scope: !3417, file: !754, line: 57, type: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!3458 = !DILocalVariable(name: "prev_fail", scope: !3417, file: !754, line: 58, type: !3457)
!3459 = !DILocalVariable(name: "fclose_fail", scope: !3417, file: !754, line: 59, type: !3457)
!3460 = !DILocation(line: 0, scope: !3417)
!3461 = !DILocation(line: 57, column: 30, scope: !3417)
!3462 = !DILocalVariable(name: "__stream", arg: 1, scope: !3463, file: !1031, line: 135, type: !3420)
!3463 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1031, file: !1031, line: 135, type: !3418, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !753, retainedNodes: !3464)
!3464 = !{!3462}
!3465 = !DILocation(line: 0, scope: !3463, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 58, column: 27, scope: !3417)
!3467 = !DILocation(line: 137, column: 10, scope: !3463, inlinedAt: !3466)
!3468 = !{!1039, !852, i64 0}
!3469 = !DILocation(line: 58, column: 43, scope: !3417)
!3470 = !DILocation(line: 59, column: 29, scope: !3417)
!3471 = !DILocation(line: 59, column: 45, scope: !3417)
!3472 = !DILocation(line: 69, column: 17, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3417, file: !754, line: 69, column: 7)
!3474 = !DILocation(line: 57, column: 50, scope: !3417)
!3475 = !DILocation(line: 69, column: 33, scope: !3473)
!3476 = !DILocation(line: 69, column: 53, scope: !3473)
!3477 = !DILocation(line: 69, column: 59, scope: !3473)
!3478 = !DILocation(line: 69, column: 7, scope: !3417)
!3479 = !DILocation(line: 71, column: 11, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3473, file: !754, line: 70, column: 5)
!3481 = !DILocation(line: 72, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3480, file: !754, line: 71, column: 11)
!3483 = !DILocation(line: 72, column: 15, scope: !3482)
!3484 = !DILocation(line: 77, column: 1, scope: !3417)
!3485 = !DISubprogram(name: "__fpending", scope: !3486, file: !3486, line: 75, type: !3487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3486 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!91, !3420}
!3489 = distinct !DISubprogram(name: "rpl_fclose", scope: !756, file: !756, line: 58, type: !3490, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !755, retainedNodes: !3526)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!68, !3492}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3494)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3494, file: !145, line: 51, baseType: !68, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3494, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3494, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3494, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3494, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3494, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3494, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3494, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3494, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3494, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3494, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3494, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3494, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3494, file: !145, line: 70, baseType: !3510, size: 64, offset: 832)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3494, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3494, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3494, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3494, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3494, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3494, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3494, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3494, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3494, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3494, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3494, file: !145, line: 93, baseType: !3510, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3494, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3494, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3494, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3494, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3526 = !{!3527, !3528, !3529, !3530}
!3527 = !DILocalVariable(name: "fp", arg: 1, scope: !3489, file: !756, line: 58, type: !3492)
!3528 = !DILocalVariable(name: "saved_errno", scope: !3489, file: !756, line: 60, type: !68)
!3529 = !DILocalVariable(name: "fd", scope: !3489, file: !756, line: 63, type: !68)
!3530 = !DILocalVariable(name: "result", scope: !3489, file: !756, line: 74, type: !68)
!3531 = !DILocation(line: 0, scope: !3489)
!3532 = !DILocation(line: 63, column: 12, scope: !3489)
!3533 = !DILocation(line: 64, column: 10, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3489, file: !756, line: 64, column: 7)
!3535 = !DILocation(line: 64, column: 7, scope: !3489)
!3536 = !DILocation(line: 65, column: 12, scope: !3534)
!3537 = !DILocation(line: 65, column: 5, scope: !3534)
!3538 = !DILocation(line: 70, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3489, file: !756, line: 70, column: 7)
!3540 = !DILocation(line: 70, column: 23, scope: !3539)
!3541 = !DILocation(line: 70, column: 33, scope: !3539)
!3542 = !DILocation(line: 70, column: 26, scope: !3539)
!3543 = !DILocation(line: 70, column: 59, scope: !3539)
!3544 = !DILocation(line: 71, column: 7, scope: !3539)
!3545 = !DILocation(line: 71, column: 10, scope: !3539)
!3546 = !DILocation(line: 70, column: 7, scope: !3489)
!3547 = !DILocation(line: 100, column: 12, scope: !3489)
!3548 = !DILocation(line: 105, column: 7, scope: !3489)
!3549 = !DILocation(line: 72, column: 19, scope: !3539)
!3550 = !DILocation(line: 105, column: 19, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3489, file: !756, line: 105, column: 7)
!3552 = !DILocation(line: 107, column: 13, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !756, line: 106, column: 5)
!3554 = !DILocation(line: 109, column: 5, scope: !3553)
!3555 = !DILocation(line: 112, column: 1, scope: !3489)
!3556 = !DISubprogram(name: "fileno", scope: !387, file: !387, line: 809, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3557 = !DISubprogram(name: "fclose", scope: !387, file: !387, line: 178, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3558 = !DISubprogram(name: "__freading", scope: !3486, file: !3486, line: 51, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3559 = !DISubprogram(name: "lseek", scope: !1118, file: !1118, line: 339, type: !3560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!167, !68, !167, !68}
!3562 = distinct !DISubprogram(name: "rpl_fflush", scope: !758, file: !758, line: 130, type: !3563, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3599)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!68, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3567)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3567, file: !145, line: 51, baseType: !68, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3567, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3567, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3567, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3567, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3567, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3567, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3567, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3567, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3567, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3567, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3567, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3567, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3567, file: !145, line: 70, baseType: !3583, size: 64, offset: 832)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3567, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3567, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3567, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3567, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3567, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3567, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3567, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3567, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3567, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3567, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3567, file: !145, line: 93, baseType: !3583, size: 64, offset: 1344)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3567, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3567, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3567, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3567, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3599 = !{!3600}
!3600 = !DILocalVariable(name: "stream", arg: 1, scope: !3562, file: !758, line: 130, type: !3565)
!3601 = !DILocation(line: 0, scope: !3562)
!3602 = !DILocation(line: 151, column: 14, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3562, file: !758, line: 151, column: 7)
!3604 = !DILocation(line: 151, column: 22, scope: !3603)
!3605 = !DILocation(line: 151, column: 27, scope: !3603)
!3606 = !DILocation(line: 151, column: 7, scope: !3562)
!3607 = !DILocation(line: 152, column: 12, scope: !3603)
!3608 = !DILocation(line: 152, column: 5, scope: !3603)
!3609 = !DILocalVariable(name: "fp", arg: 1, scope: !3610, file: !758, line: 42, type: !3565)
!3610 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !758, file: !758, line: 42, type: !3611, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !757, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !3565}
!3613 = !{!3609}
!3614 = !DILocation(line: 0, scope: !3610, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 157, column: 3, scope: !3562)
!3616 = !DILocation(line: 44, column: 12, scope: !3617, inlinedAt: !3615)
!3617 = distinct !DILexicalBlock(scope: !3610, file: !758, line: 44, column: 7)
!3618 = !DILocation(line: 44, column: 19, scope: !3617, inlinedAt: !3615)
!3619 = !DILocation(line: 44, column: 7, scope: !3610, inlinedAt: !3615)
!3620 = !DILocation(line: 46, column: 5, scope: !3617, inlinedAt: !3615)
!3621 = !DILocation(line: 159, column: 10, scope: !3562)
!3622 = !DILocation(line: 159, column: 3, scope: !3562)
!3623 = !DILocation(line: 236, column: 1, scope: !3562)
!3624 = !DISubprogram(name: "fflush", scope: !387, file: !387, line: 230, type: !3563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3625 = distinct !DISubprogram(name: "rpl_fseeko", scope: !760, file: !760, line: 28, type: !3626, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !759, retainedNodes: !3663)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!68, !3628, !3662, !68}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !143, line: 7, baseType: !3630)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !145, line: 49, size: 1728, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3630, file: !145, line: 51, baseType: !68, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3630, file: !145, line: 54, baseType: !89, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3630, file: !145, line: 55, baseType: !89, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3630, file: !145, line: 56, baseType: !89, size: 64, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3630, file: !145, line: 57, baseType: !89, size: 64, offset: 256)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3630, file: !145, line: 58, baseType: !89, size: 64, offset: 320)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3630, file: !145, line: 59, baseType: !89, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3630, file: !145, line: 60, baseType: !89, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3630, file: !145, line: 61, baseType: !89, size: 64, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3630, file: !145, line: 64, baseType: !89, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3630, file: !145, line: 65, baseType: !89, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3630, file: !145, line: 66, baseType: !89, size: 64, offset: 704)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3630, file: !145, line: 68, baseType: !160, size: 64, offset: 768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3630, file: !145, line: 70, baseType: !3646, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3630, file: !145, line: 72, baseType: !68, size: 32, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3630, file: !145, line: 73, baseType: !68, size: 32, offset: 928)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3630, file: !145, line: 74, baseType: !167, size: 64, offset: 960)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3630, file: !145, line: 77, baseType: !96, size: 16, offset: 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3630, file: !145, line: 78, baseType: !171, size: 8, offset: 1040)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3630, file: !145, line: 79, baseType: !44, size: 8, offset: 1048)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3630, file: !145, line: 81, baseType: !174, size: 64, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3630, file: !145, line: 89, baseType: !177, size: 64, offset: 1152)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3630, file: !145, line: 91, baseType: !179, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3630, file: !145, line: 92, baseType: !182, size: 64, offset: 1280)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3630, file: !145, line: 93, baseType: !3646, size: 64, offset: 1344)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3630, file: !145, line: 94, baseType: !90, size: 64, offset: 1408)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3630, file: !145, line: 95, baseType: !91, size: 64, offset: 1472)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3630, file: !145, line: 96, baseType: !68, size: 32, offset: 1536)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3630, file: !145, line: 98, baseType: !189, size: 160, offset: 1568)
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !387, line: 63, baseType: !167)
!3663 = !{!3664, !3665, !3666, !3667}
!3664 = !DILocalVariable(name: "fp", arg: 1, scope: !3625, file: !760, line: 28, type: !3628)
!3665 = !DILocalVariable(name: "offset", arg: 2, scope: !3625, file: !760, line: 28, type: !3662)
!3666 = !DILocalVariable(name: "whence", arg: 3, scope: !3625, file: !760, line: 28, type: !68)
!3667 = !DILocalVariable(name: "pos", scope: !3668, file: !760, line: 123, type: !3662)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !760, line: 119, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3625, file: !760, line: 55, column: 7)
!3670 = !DILocation(line: 0, scope: !3625)
!3671 = !DILocation(line: 55, column: 12, scope: !3669)
!3672 = !{!1039, !790, i64 16}
!3673 = !DILocation(line: 55, column: 33, scope: !3669)
!3674 = !{!1039, !790, i64 8}
!3675 = !DILocation(line: 55, column: 25, scope: !3669)
!3676 = !DILocation(line: 56, column: 7, scope: !3669)
!3677 = !DILocation(line: 56, column: 15, scope: !3669)
!3678 = !DILocation(line: 56, column: 37, scope: !3669)
!3679 = !{!1039, !790, i64 32}
!3680 = !DILocation(line: 56, column: 29, scope: !3669)
!3681 = !DILocation(line: 57, column: 7, scope: !3669)
!3682 = !DILocation(line: 57, column: 15, scope: !3669)
!3683 = !{!1039, !790, i64 72}
!3684 = !DILocation(line: 57, column: 29, scope: !3669)
!3685 = !DILocation(line: 55, column: 7, scope: !3625)
!3686 = !DILocation(line: 123, column: 26, scope: !3668)
!3687 = !DILocation(line: 123, column: 19, scope: !3668)
!3688 = !DILocation(line: 0, scope: !3668)
!3689 = !DILocation(line: 124, column: 15, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3668, file: !760, line: 124, column: 11)
!3691 = !DILocation(line: 124, column: 11, scope: !3668)
!3692 = !DILocation(line: 135, column: 19, scope: !3668)
!3693 = !DILocation(line: 136, column: 12, scope: !3668)
!3694 = !DILocation(line: 136, column: 20, scope: !3668)
!3695 = !{!1039, !1040, i64 144}
!3696 = !DILocation(line: 167, column: 7, scope: !3668)
!3697 = !DILocation(line: 169, column: 10, scope: !3625)
!3698 = !DILocation(line: 169, column: 3, scope: !3625)
!3699 = !DILocation(line: 170, column: 1, scope: !3625)
!3700 = !DISubprogram(name: "fseeko", scope: !387, file: !387, line: 736, type: !3701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!68, !3628, !167, !68}
!3703 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !686, file: !686, line: 100, type: !3704, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3707)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!91, !1481, !94, !91, !3706}
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3707 = !{!3708, !3709, !3710, !3711, !3712}
!3708 = !DILocalVariable(name: "pwc", arg: 1, scope: !3703, file: !686, line: 100, type: !1481)
!3709 = !DILocalVariable(name: "s", arg: 2, scope: !3703, file: !686, line: 100, type: !94)
!3710 = !DILocalVariable(name: "n", arg: 3, scope: !3703, file: !686, line: 100, type: !91)
!3711 = !DILocalVariable(name: "ps", arg: 4, scope: !3703, file: !686, line: 100, type: !3706)
!3712 = !DILocalVariable(name: "ret", scope: !3703, file: !686, line: 130, type: !91)
!3713 = !DILocation(line: 0, scope: !3703)
!3714 = !DILocation(line: 105, column: 9, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3703, file: !686, line: 105, column: 7)
!3716 = !DILocation(line: 105, column: 7, scope: !3703)
!3717 = !DILocation(line: 117, column: 10, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3703, file: !686, line: 117, column: 7)
!3719 = !DILocation(line: 117, column: 7, scope: !3703)
!3720 = !DILocation(line: 130, column: 16, scope: !3703)
!3721 = !DILocation(line: 135, column: 11, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3703, file: !686, line: 135, column: 7)
!3723 = !DILocation(line: 135, column: 25, scope: !3722)
!3724 = !DILocation(line: 135, column: 30, scope: !3722)
!3725 = !DILocation(line: 135, column: 7, scope: !3703)
!3726 = !DILocalVariable(name: "ps", arg: 1, scope: !3727, file: !1455, line: 1135, type: !3706)
!3727 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !3728, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3730)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{null, !3706}
!3730 = !{!3726}
!3731 = !DILocation(line: 0, scope: !3727, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 137, column: 5, scope: !3722)
!3733 = !DILocalVariable(name: "__dest", arg: 1, scope: !3734, file: !1172, line: 57, type: !90)
!3734 = distinct !DISubprogram(name: "memset", scope: !1172, file: !1172, line: 57, type: !1464, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3735)
!3735 = !{!3733, !3736, !3737}
!3736 = !DILocalVariable(name: "__ch", arg: 2, scope: !3734, file: !1172, line: 57, type: !68)
!3737 = !DILocalVariable(name: "__len", arg: 3, scope: !3734, file: !1172, line: 57, type: !91)
!3738 = !DILocation(line: 0, scope: !3734, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 1137, column: 3, scope: !3727, inlinedAt: !3732)
!3740 = !DILocation(line: 59, column: 10, scope: !3734, inlinedAt: !3739)
!3741 = !DILocation(line: 137, column: 5, scope: !3722)
!3742 = !DILocation(line: 138, column: 11, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3703, file: !686, line: 138, column: 7)
!3744 = !DILocation(line: 138, column: 7, scope: !3703)
!3745 = !DILocation(line: 139, column: 5, scope: !3743)
!3746 = !DILocation(line: 143, column: 26, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3703, file: !686, line: 143, column: 7)
!3748 = !DILocation(line: 143, column: 41, scope: !3747)
!3749 = !DILocation(line: 143, column: 7, scope: !3703)
!3750 = !DILocation(line: 145, column: 15, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !686, line: 145, column: 11)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !686, line: 144, column: 5)
!3753 = !DILocation(line: 145, column: 11, scope: !3752)
!3754 = !DILocation(line: 146, column: 32, scope: !3751)
!3755 = !DILocation(line: 146, column: 16, scope: !3751)
!3756 = !DILocation(line: 146, column: 14, scope: !3751)
!3757 = !DILocation(line: 146, column: 9, scope: !3751)
!3758 = !DILocation(line: 286, column: 1, scope: !3703)
!3759 = !DISubprogram(name: "mbsinit", scope: !3760, file: !3760, line: 293, type: !3761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !836)
!3760 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!68, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!3765 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !762, file: !762, line: 27, type: !2937, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3766)
!3766 = !{!3767, !3768, !3769, !3770}
!3767 = !DILocalVariable(name: "ptr", arg: 1, scope: !3765, file: !762, line: 27, type: !90)
!3768 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3765, file: !762, line: 27, type: !91)
!3769 = !DILocalVariable(name: "size", arg: 3, scope: !3765, file: !762, line: 27, type: !91)
!3770 = !DILocalVariable(name: "nbytes", scope: !3765, file: !762, line: 29, type: !91)
!3771 = !DILocation(line: 0, scope: !3765)
!3772 = !DILocation(line: 30, column: 7, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3765, file: !762, line: 30, column: 7)
!3774 = !DILocalVariable(name: "ptr", arg: 1, scope: !3775, file: !3026, line: 2057, type: !90)
!3775 = distinct !DISubprogram(name: "rpl_realloc", scope: !3026, file: !3026, line: 2057, type: !3018, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !761, retainedNodes: !3776)
!3776 = !{!3774, !3777}
!3777 = !DILocalVariable(name: "size", arg: 2, scope: !3775, file: !3026, line: 2057, type: !91)
!3778 = !DILocation(line: 0, scope: !3775, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 37, column: 10, scope: !3765)
!3780 = !DILocation(line: 2059, column: 24, scope: !3775, inlinedAt: !3779)
!3781 = !DILocation(line: 2059, column: 10, scope: !3775, inlinedAt: !3779)
!3782 = !DILocation(line: 37, column: 3, scope: !3765)
!3783 = !DILocation(line: 32, column: 7, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3773, file: !762, line: 31, column: 5)
!3785 = !DILocation(line: 32, column: 13, scope: !3784)
!3786 = !DILocation(line: 33, column: 7, scope: !3784)
!3787 = !DILocation(line: 38, column: 1, scope: !3765)
!3788 = distinct !DISubprogram(name: "hard_locale", scope: !704, file: !704, line: 28, type: !3789, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!126, !68}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !704, line: 28, type: !68)
!3793 = !DILocalVariable(name: "locale", scope: !3788, file: !704, line: 30, type: !3794)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3795)
!3795 = !{!3796}
!3796 = !DISubrange(count: 257)
!3797 = !DILocation(line: 0, scope: !3788)
!3798 = !DILocation(line: 30, column: 3, scope: !3788)
!3799 = !DILocation(line: 30, column: 8, scope: !3788)
!3800 = !DILocation(line: 32, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3788, file: !704, line: 32, column: 7)
!3802 = !DILocation(line: 32, column: 7, scope: !3788)
!3803 = !DILocalVariable(name: "__s1", arg: 1, scope: !3804, file: !864, line: 1359, type: !94)
!3804 = distinct !DISubprogram(name: "streq", scope: !864, file: !864, line: 1359, type: !865, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !764, retainedNodes: !3805)
!3805 = !{!3803, !3806}
!3806 = !DILocalVariable(name: "__s2", arg: 2, scope: !3804, file: !864, line: 1359, type: !94)
!3807 = !DILocation(line: 0, scope: !3804, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 35, column: 9, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3788, file: !704, line: 35, column: 7)
!3810 = !DILocation(line: 1361, column: 11, scope: !3804, inlinedAt: !3808)
!3811 = !DILocation(line: 1361, column: 10, scope: !3804, inlinedAt: !3808)
!3812 = !DILocation(line: 35, column: 29, scope: !3809)
!3813 = !DILocation(line: 0, scope: !3804, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 35, column: 32, scope: !3809)
!3815 = !DILocation(line: 1361, column: 11, scope: !3804, inlinedAt: !3814)
!3816 = !DILocation(line: 1361, column: 10, scope: !3804, inlinedAt: !3814)
!3817 = !DILocation(line: 35, column: 7, scope: !3788)
!3818 = !DILocation(line: 46, column: 3, scope: !3788)
!3819 = !DILocation(line: 47, column: 1, scope: !3788)
!3820 = distinct !DISubprogram(name: "setlocale_null_r", scope: !767, file: !767, line: 154, type: !3821, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!68, !68, !89, !91}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "category", arg: 1, scope: !3820, file: !767, line: 154, type: !68)
!3825 = !DILocalVariable(name: "buf", arg: 2, scope: !3820, file: !767, line: 154, type: !89)
!3826 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3820, file: !767, line: 154, type: !91)
!3827 = !DILocation(line: 0, scope: !3820)
!3828 = !DILocation(line: 159, column: 10, scope: !3820)
!3829 = !DILocation(line: 159, column: 3, scope: !3820)
!3830 = distinct !DISubprogram(name: "setlocale_null", scope: !767, file: !767, line: 186, type: !3831, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !766, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!94, !68}
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "category", arg: 1, scope: !3830, file: !767, line: 186, type: !68)
!3835 = !DILocation(line: 0, scope: !3830)
!3836 = !DILocation(line: 189, column: 10, scope: !3830)
!3837 = !DILocation(line: 189, column: 3, scope: !3830)
!3838 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !769, file: !769, line: 35, type: !3831, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3839)
!3839 = !{!3840, !3841}
!3840 = !DILocalVariable(name: "category", arg: 1, scope: !3838, file: !769, line: 35, type: !68)
!3841 = !DILocalVariable(name: "result", scope: !3838, file: !769, line: 37, type: !94)
!3842 = !DILocation(line: 0, scope: !3838)
!3843 = !DILocation(line: 37, column: 24, scope: !3838)
!3844 = !DILocation(line: 62, column: 3, scope: !3838)
!3845 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !769, file: !769, line: 66, type: !3821, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3846)
!3846 = !{!3847, !3848, !3849, !3850, !3851}
!3847 = !DILocalVariable(name: "category", arg: 1, scope: !3845, file: !769, line: 66, type: !68)
!3848 = !DILocalVariable(name: "buf", arg: 2, scope: !3845, file: !769, line: 66, type: !89)
!3849 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3845, file: !769, line: 66, type: !91)
!3850 = !DILocalVariable(name: "result", scope: !3845, file: !769, line: 111, type: !94)
!3851 = !DILocalVariable(name: "length", scope: !3852, file: !769, line: 125, type: !91)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !769, line: 124, column: 5)
!3853 = distinct !DILexicalBlock(scope: !3845, file: !769, line: 113, column: 7)
!3854 = !DILocation(line: 0, scope: !3845)
!3855 = !DILocation(line: 0, scope: !3838, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 111, column: 24, scope: !3845)
!3857 = !DILocation(line: 37, column: 24, scope: !3838, inlinedAt: !3856)
!3858 = !DILocation(line: 113, column: 14, scope: !3853)
!3859 = !DILocation(line: 113, column: 7, scope: !3845)
!3860 = !DILocation(line: 116, column: 19, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !769, line: 116, column: 11)
!3862 = distinct !DILexicalBlock(scope: !3853, file: !769, line: 114, column: 5)
!3863 = !DILocation(line: 116, column: 11, scope: !3862)
!3864 = !DILocation(line: 120, column: 16, scope: !3861)
!3865 = !DILocation(line: 120, column: 9, scope: !3861)
!3866 = !DILocation(line: 125, column: 23, scope: !3852)
!3867 = !DILocation(line: 0, scope: !3852)
!3868 = !DILocation(line: 126, column: 18, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3852, file: !769, line: 126, column: 11)
!3870 = !DILocation(line: 126, column: 11, scope: !3852)
!3871 = !DILocation(line: 128, column: 39, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !769, line: 127, column: 9)
!3873 = !DILocalVariable(name: "__dest", arg: 1, scope: !3874, file: !1172, line: 26, type: !1175)
!3874 = distinct !DISubprogram(name: "memcpy", scope: !1172, file: !1172, line: 26, type: !1173, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3875)
!3875 = !{!3873, !3876, !3877}
!3876 = !DILocalVariable(name: "__src", arg: 2, scope: !3874, file: !1172, line: 26, type: !995)
!3877 = !DILocalVariable(name: "__len", arg: 3, scope: !3874, file: !1172, line: 26, type: !91)
!3878 = !DILocation(line: 0, scope: !3874, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 128, column: 11, scope: !3872)
!3880 = !DILocation(line: 29, column: 10, scope: !3874, inlinedAt: !3879)
!3881 = !DILocation(line: 129, column: 11, scope: !3872)
!3882 = !DILocation(line: 133, column: 23, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !769, line: 133, column: 15)
!3884 = distinct !DILexicalBlock(scope: !3869, file: !769, line: 132, column: 9)
!3885 = !DILocation(line: 133, column: 15, scope: !3884)
!3886 = !DILocation(line: 138, column: 44, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3883, file: !769, line: 134, column: 13)
!3888 = !DILocation(line: 0, scope: !3874, inlinedAt: !3889)
!3889 = distinct !DILocation(line: 138, column: 15, scope: !3887)
!3890 = !DILocation(line: 29, column: 10, scope: !3874, inlinedAt: !3889)
!3891 = !DILocation(line: 139, column: 15, scope: !3887)
!3892 = !DILocation(line: 139, column: 32, scope: !3887)
!3893 = !DILocation(line: 140, column: 13, scope: !3887)
!3894 = !DILocation(line: 0, scope: !3853)
!3895 = !DILocation(line: 145, column: 1, scope: !3845)
