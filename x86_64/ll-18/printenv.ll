; ModuleID = 'src/printenv.bc'
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
@.str.1 = private unnamed_addr constant [164 x i8] c"Usage: %s [OPTION] [VARIABLE]...\0APrint the values of the specified environment VARIABLE(s).\0AIf no VARIABLE is specified, print name and value pairs for them all.\0A\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"printenv\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [66 x i8] c"  -0, --null\0A         end each output line with NUL, not newline\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !37
@.str.8 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [6 x i8] c"+iu:0\00", align 1, !dbg !52
@longopts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.50, i32 0, ptr null, i32 48 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !57
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !97
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !102
@.str.13 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1, !dbg !107
@optind = external local_unnamed_addr global i32, align 4
@environ = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1, !dbg !112
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !117
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !200
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !202
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !204
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !209
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !249
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !251
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !253
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !255
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !260
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !265
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !270
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !272
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !274
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !276
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !287
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !289
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !294
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !299
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !304
@.str.50 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !309
@.str.51 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !311
@.str.52 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !313
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !325
@Version = dso_local local_unnamed_addr global ptr @.str.19, align 8, !dbg !328
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !332
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !345
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !337
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !339
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !341
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !343
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !347
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !353
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !384
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !355
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !374
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !376
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !378
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !380
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !382
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !386
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !388
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !393
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !398
@.str.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !404
@.str.1.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !406
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !408
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !439
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !442
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !444
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !449
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !451
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !453
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !455
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !457
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !459
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !461
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 16, !dbg !463
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !488
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !502
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !540
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !547
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !504
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !549
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !492
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !509
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !511
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !513
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !515
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !517
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !555
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !558
@.str.2.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !560
@.str.3.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !562
@.str.4.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !564
@.str.5.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !566
@.str.6.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !571
@.str.7.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !576
@.str.8.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !578
@.str.9.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !583
@.str.10.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !588
@.str.11.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !593
@.str.12.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.13.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !600
@.str.14.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !605
@.str.15.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !610
@.str.16.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !615
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !620
@.str.18.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !622
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !624
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !626
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !628
@.str.22.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !630
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !632
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !637
@exit_failure = dso_local global i32 1, align 4, !dbg !645
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !651
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !654
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !656
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !658
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !661
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !676

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !751 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !755, metadata !DIExpression()), !dbg !756
  %2 = icmp eq i32 %0, 0, !dbg !757
  br i1 %2, label %8, label %3, !dbg !759

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !760, !tbaa !762
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !760
  %6 = load ptr, ptr @program_name, align 8, !dbg !760, !tbaa !762
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !760
  br label %31, !dbg !760

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !766
  %10 = load ptr, ptr @program_name, align 8, !dbg !766, !tbaa !762
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !766
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #37, !dbg !768
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !768
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !769
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !769
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !770
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !770
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !771
  %16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %15, ptr noundef nonnull @.str.2) #37, !dbg !771
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !772, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata !791, metadata !785, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr poison, metadata !784, metadata !DIExpression()), !dbg !789
  tail call void @emit_bug_reporting_address() #37, !dbg !792
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !793
  call void @llvm.dbg.value(metadata ptr %17, metadata !787, metadata !DIExpression()), !dbg !789
  %18 = icmp eq ptr %17, null, !dbg !794
  br i1 %18, label %26, label %19, !dbg !796

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !797
  %21 = icmp eq i32 %20, 0, !dbg !797
  br i1 %21, label %26, label %22, !dbg !798

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !799
  %24 = load ptr, ptr @stdout, align 8, !dbg !799, !tbaa !762
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !799
  br label %26, !dbg !801

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !788, metadata !DIExpression()), !dbg !789
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !802
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2) #37, !dbg !802
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !803
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49) #37, !dbg !803
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !804
  unreachable, !dbg !804
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !805 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !809 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !815 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !119 {
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !123, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !124, metadata !DIExpression()), !dbg !818
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !819, !tbaa !820
  %3 = icmp eq i32 %2, -1, !dbg !822
  br i1 %3, label %4, label %16, !dbg !823

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !824
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !125, metadata !DIExpression()), !dbg !825
  %6 = icmp eq ptr %5, null, !dbg !826
  br i1 %6, label %14, label %7, !dbg !827

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !828, !tbaa !829
  %9 = icmp eq i8 %8, 0, !dbg !828
  br i1 %9, label %14, label %10, !dbg !830

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !831, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !837, metadata !DIExpression()), !dbg !838
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !840
  %12 = icmp eq i32 %11, 0, !dbg !841
  %13 = zext i1 %12 to i32, !dbg !830
  br label %14, !dbg !830

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !842, !tbaa !820
  br label %16, !dbg !843

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !844
  %18 = icmp eq i32 %17, 0, !dbg !844
  br i1 %18, label %22, label %19, !dbg !846

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !847, !tbaa !762
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !847
  br label %124, !dbg !849

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !818
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !850
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !851
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !130, metadata !DIExpression()), !dbg !818
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !131, metadata !DIExpression()), !dbg !818
  %26 = icmp eq ptr %25, null, !dbg !853
  br i1 %26, label %54, label %27, !dbg !854

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !855
  br i1 %28, label %54, label %29, !dbg !856

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !132, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !857
  %30 = icmp ult ptr %24, %25, !dbg !858
  br i1 %30, label %31, label %54, !dbg !859

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !818
  %33 = load ptr, ptr %32, align 8, !tbaa !762
  br label %34, !dbg !859

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !132, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !136, metadata !DIExpression()), !dbg !857
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !860
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !132, metadata !DIExpression()), !dbg !857
  %38 = load i8, ptr %35, align 1, !dbg !860, !tbaa !829
  %39 = sext i8 %38 to i64, !dbg !860
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !860
  %41 = load i16, ptr %40, align 2, !dbg !860, !tbaa !861
  %42 = freeze i16 %41, !dbg !863
  %43 = lshr i16 %42, 13, !dbg !863
  %44 = and i16 %43, 1, !dbg !863
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !136, metadata !DIExpression()), !dbg !857
  %47 = icmp ult ptr %37, %25, !dbg !858
  %48 = icmp ult i64 %46, 2, !dbg !865
  %49 = select i1 %47, i1 %48, i1 false, !dbg !865
  br i1 %49, label %34, label %50, !dbg !859, !llvm.loop !866

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !868
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !870
  %53 = zext i1 %51 to i8, !dbg !870
  br label %54, !dbg !870

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !818
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !818
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !128, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !131, metadata !DIExpression()), !dbg !818
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #38, !dbg !871
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !137, metadata !DIExpression()), !dbg !818
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !138, metadata !DIExpression()), !dbg !818
  br label %59, !dbg !873

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !818
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !818
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !128, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !138, metadata !DIExpression()), !dbg !818
  %62 = load i8, ptr %60, align 1, !dbg !874, !tbaa !829
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !875

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !876
  %65 = load i8, ptr %64, align 1, !dbg !879, !tbaa !829
  %66 = icmp eq i8 %65, 45, !dbg !880
  %67 = select i1 %66, i8 0, i8 %61, !dbg !881
  br label %68, !dbg !881

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !818
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !128, metadata !DIExpression()), !dbg !818
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !882
  %71 = load ptr, ptr %70, align 8, !dbg !882, !tbaa !762
  %72 = sext i8 %62 to i64, !dbg !882
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !882
  %74 = load i16, ptr %73, align 2, !dbg !882, !tbaa !861
  %75 = and i16 %74, 8192, !dbg !882
  %76 = icmp eq i16 %75, 0, !dbg !882
  br i1 %76, label %92, label %77, !dbg !884

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !885
  br i1 %78, label %94, label %79, !dbg !888

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  %81 = load i8, ptr %80, align 1, !dbg !889, !tbaa !829
  %82 = sext i8 %81 to i64, !dbg !889
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !889
  %84 = load i16, ptr %83, align 2, !dbg !889, !tbaa !861
  %85 = and i16 %84, 8192, !dbg !889
  %86 = icmp eq i16 %85, 0, !dbg !889
  br i1 %86, label %87, label %94, !dbg !890

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !891
  %89 = icmp ne i8 %88, 0, !dbg !891
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !893
  br i1 %91, label %92, label %94, !dbg !893

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !138, metadata !DIExpression()), !dbg !818
  br label %59, !dbg !873, !llvm.loop !895

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !897
  %96 = load ptr, ptr @stdout, align 8, !dbg !897, !tbaa !762
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata !791, metadata !837, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata ptr @.str.2, metadata !195, metadata !DIExpression()), !dbg !818
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !918
  %99 = icmp eq i32 %98, 0, !dbg !918
  br i1 %99, label %103, label %100, !dbg !920

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !921
  %102 = icmp eq i32 %101, 0, !dbg !921
  br i1 %102, label %103, label %106, !dbg !922

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !923
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %104, ptr noundef %55) #37, !dbg !923
  br label %109, !dbg !925

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !926
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %107, ptr noundef %55) #37, !dbg !926
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !762
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !928
  %112 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !762
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %112), !dbg !929
  %114 = ptrtoint ptr %60 to i64, !dbg !930
  %115 = sub i64 %114, %95, !dbg !930
  %116 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !762
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !930
  %118 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !762
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !931
  %120 = load ptr, ptr @stdout, align 8, !dbg !932, !tbaa !762
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %120), !dbg !932
  %122 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !762
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !933
  br label %124, !dbg !934

124:                                              ; preds = %109, %19
  ret void, !dbg !934
}

; Function Attrs: nounwind
declare !dbg !935 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !939 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !943 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !947 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !949 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !952 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !955 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !958 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !961 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !967 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !968 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !974 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !979, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !980, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i8 0, metadata !981, metadata !DIExpression()), !dbg !1001
  %3 = load ptr, ptr %1, align 8, !dbg !1002, !tbaa !762
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !1003
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #37, !dbg !1004
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #37, !dbg !1005
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #37, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1007, metadata !DIExpression()), !dbg !1010
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1012, !tbaa !820
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1014
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !981, metadata !DIExpression()), !dbg !1001
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !982, metadata !DIExpression()), !dbg !1001
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1016

9:                                                ; preds = %2, %9
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !981, metadata !DIExpression()), !dbg !1001
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1015
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !982, metadata !DIExpression()), !dbg !1001
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1016, !llvm.loop !1017

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #41, !dbg !1020
  unreachable, !dbg !1020

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1023, !tbaa !762
  %14 = load ptr, ptr @Version, align 8, !dbg !1023, !tbaa !762
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #37, !dbg !1023
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #37, !dbg !1023
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #37, !dbg !1023
  tail call void @exit(i32 noundef 0) #39, !dbg !1023
  unreachable, !dbg !1023

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 2) #41, !dbg !1024
  unreachable, !dbg !1024

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ], !dbg !1001
  %20 = load i32, ptr @optind, align 4, !dbg !1025, !tbaa !820
  %21 = icmp slt i32 %20, %0, !dbg !1026
  br i1 %21, label %22, label %24, !dbg !1027

22:                                               ; preds = %18
  %23 = sext i32 %20 to i64, !dbg !1028
  br label %40, !dbg !1028

24:                                               ; preds = %18
  %25 = load ptr, ptr @environ, align 8, !dbg !1029, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !984, metadata !DIExpression()), !dbg !1030
  %26 = load ptr, ptr %25, align 8, !dbg !1031, !tbaa !762
  %27 = icmp eq ptr %26, null, !dbg !1033
  br i1 %27, label %97, label %28, !dbg !1034

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = phi ptr [ %32, %28 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !984, metadata !DIExpression()), !dbg !1030
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %29, i32 noundef %19) #37, !dbg !1035
  %32 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !984, metadata !DIExpression()), !dbg !1030
  %33 = load ptr, ptr %32, align 8, !dbg !1031, !tbaa !762
  %34 = icmp eq ptr %33, null, !dbg !1033
  br i1 %34, label %97, label %28, !dbg !1034, !llvm.loop !1037

35:                                               ; preds = %92
  %36 = load i32, ptr @optind, align 4, !dbg !1039, !tbaa !820
  %37 = sub nsw i32 %0, %36, !dbg !1040
  %38 = icmp ne i32 %93, %37, !dbg !1041
  tail call void @llvm.dbg.value(metadata i1 %38, metadata !983, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1001
  %39 = zext i1 %38 to i32, !dbg !1042
  br label %97

40:                                               ; preds = %22, %92
  %41 = phi i64 [ %23, %22 ], [ %94, %92 ]
  %42 = phi i32 [ 0, %22 ], [ %93, %92 ]
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !990, metadata !DIExpression()), !dbg !1043
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !988, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata i8 0, metadata !992, metadata !DIExpression()), !dbg !1045
  %43 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !1046
  %44 = load ptr, ptr %43, align 8, !dbg !1046, !tbaa !762
  %45 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 61) #38, !dbg !1048
  %46 = icmp eq ptr %45, null, !dbg !1048
  br i1 %46, label %47, label %92, !dbg !1049

47:                                               ; preds = %40
  %48 = load ptr, ptr @environ, align 8, !dbg !1050, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !995, metadata !DIExpression()), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8 0, metadata !992, metadata !DIExpression()), !dbg !1045
  %49 = load ptr, ptr %48, align 8, !dbg !1052, !tbaa !762
  %50 = icmp eq ptr %49, null, !dbg !1053
  br i1 %50, label %51, label %56, !dbg !1053

51:                                               ; preds = %87, %47
  %52 = phi i8 [ 0, %47 ], [ %88, %87 ], !dbg !1045
  %53 = and i8 %52, 1, !dbg !1054
  %54 = zext nneg i8 %53 to i32, !dbg !1054
  %55 = add nsw i32 %42, %54, !dbg !1055
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !988, metadata !DIExpression()), !dbg !1044
  br label %92, !dbg !1056

56:                                               ; preds = %47, %87
  %57 = phi ptr [ %90, %87 ], [ %49, %47 ]
  %58 = phi ptr [ %89, %87 ], [ %48, %47 ]
  %59 = phi i8 [ %88, %87 ], [ 0, %47 ]
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !995, metadata !DIExpression()), !dbg !1051
  tail call void @llvm.dbg.value(metadata i8 %59, metadata !992, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !1000, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !997, metadata !DIExpression()), !dbg !1057
  %60 = load i8, ptr %57, align 1, !dbg !1058, !tbaa !829
  %61 = icmp eq i8 %60, 0, !dbg !1059
  br i1 %61, label %87, label %62, !dbg !1060

62:                                               ; preds = %56
  %63 = load ptr, ptr %43, align 8, !dbg !1061, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %63, metadata !1000, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !997, metadata !DIExpression()), !dbg !1057
  %64 = load i8, ptr %63, align 1, !dbg !1062, !tbaa !829
  %65 = icmp eq i8 %64, 0, !dbg !1063
  br i1 %65, label %87, label %66, !dbg !1064

66:                                               ; preds = %62, %84
  %67 = phi i8 [ %85, %84 ], [ %64, %62 ]
  %68 = phi ptr [ %71, %84 ], [ %57, %62 ]
  %69 = phi ptr [ %72, %84 ], [ %63, %62 ]
  %70 = phi i8 [ %75, %84 ], [ %60, %62 ]
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !997, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !1000, metadata !DIExpression()), !dbg !1057
  %71 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !997, metadata !DIExpression()), !dbg !1057
  %72 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1000, metadata !DIExpression()), !dbg !1057
  %73 = icmp eq i8 %70, %67, !dbg !1067
  br i1 %73, label %74, label %87, !dbg !1068

74:                                               ; preds = %66
  %75 = load i8, ptr %71, align 1, !dbg !1069, !tbaa !829
  switch i8 %75, label %84 [
    i8 61, label %76
    i8 0, label %87
  ], !dbg !1072

76:                                               ; preds = %74
  %77 = load i8, ptr %72, align 1, !dbg !1073, !tbaa !829
  %78 = icmp eq i8 %77, 0, !dbg !1074
  br i1 %78, label %79, label %82, !dbg !1075

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %68, i64 2, !dbg !1076
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %80, i32 noundef %19) #37, !dbg !1076
  tail call void @llvm.dbg.value(metadata i8 1, metadata !992, metadata !DIExpression()), !dbg !1045
  br label %87, !dbg !1078

82:                                               ; preds = %76
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1000, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !997, metadata !DIExpression()), !dbg !1057
  %83 = icmp eq i8 %75, 0, !dbg !1059
  br i1 %83, label %87, label %84, !dbg !1060

84:                                               ; preds = %82, %74
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1000, metadata !DIExpression()), !dbg !1057
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !997, metadata !DIExpression()), !dbg !1057
  %85 = load i8, ptr %72, align 1, !dbg !1062, !tbaa !829
  %86 = icmp eq i8 %85, 0, !dbg !1063
  br i1 %86, label %87, label %66, !dbg !1064, !llvm.loop !1079

87:                                               ; preds = %74, %84, %82, %66, %62, %56, %79
  %88 = phi i8 [ 1, %79 ], [ %59, %56 ], [ %59, %62 ], [ %59, %66 ], [ %59, %82 ], [ %59, %84 ], [ %59, %74 ], !dbg !1045
  tail call void @llvm.dbg.value(metadata i8 %88, metadata !992, metadata !DIExpression()), !dbg !1045
  %89 = getelementptr inbounds ptr, ptr %58, i64 1, !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %89, metadata !995, metadata !DIExpression()), !dbg !1051
  %90 = load ptr, ptr %89, align 8, !dbg !1052, !tbaa !762
  %91 = icmp eq ptr %90, null, !dbg !1053
  br i1 %91, label %51, label %56, !dbg !1053, !llvm.loop !1082

92:                                               ; preds = %40, %51
  %93 = phi i32 [ %55, %51 ], [ %42, %40 ], !dbg !1044
  tail call void @llvm.dbg.value(metadata i32 %93, metadata !988, metadata !DIExpression()), !dbg !1044
  %94 = add nsw i64 %41, 1, !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !990, metadata !DIExpression()), !dbg !1043
  %95 = trunc i64 %94 to i32, !dbg !1085
  %96 = icmp eq i32 %95, %0, !dbg !1085
  br i1 %96, label %35, label %40, !dbg !1028, !llvm.loop !1086

97:                                               ; preds = %28, %24, %35
  %98 = phi i32 [ %39, %35 ], [ 0, %24 ], [ 0, %28 ], !dbg !1088
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !983, metadata !DIExpression()), !dbg !1001
  ret i32 %98, !dbg !1089
}

; Function Attrs: nounwind
declare !dbg !1090 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1093 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1094 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1097 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1103 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1105, metadata !DIExpression()), !dbg !1106
  store ptr %0, ptr @file_name, align 8, !dbg !1107, !tbaa !762
  ret void, !dbg !1108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1109 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1113, metadata !DIExpression()), !dbg !1114
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1115, !tbaa !1116
  ret void, !dbg !1118
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1119 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !762
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1125
  %3 = icmp eq i32 %2, 0, !dbg !1126
  br i1 %3, label %22, label %4, !dbg !1127

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1128, !tbaa !1116, !range !1129, !noundef !791
  %6 = icmp eq i8 %5, 0, !dbg !1128
  br i1 %6, label %11, label %7, !dbg !1130

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1131
  %9 = load i32, ptr %8, align 4, !dbg !1131, !tbaa !820
  %10 = icmp eq i32 %9, 32, !dbg !1132
  br i1 %10, label %22, label %11, !dbg !1133

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1134
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1121, metadata !DIExpression()), !dbg !1135
  %13 = load ptr, ptr @file_name, align 8, !dbg !1136, !tbaa !762
  %14 = icmp eq ptr %13, null, !dbg !1136
  %15 = tail call ptr @__errno_location() #40, !dbg !1138
  %16 = load i32, ptr %15, align 4, !dbg !1138, !tbaa !820
  br i1 %14, label %19, label %17, !dbg !1139

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1140
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #37, !dbg !1140
  br label %20, !dbg !1140

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #37, !dbg !1141
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1142, !tbaa !820
  tail call void @_exit(i32 noundef %21) #39, !dbg !1143
  unreachable, !dbg !1143

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1144, !tbaa !762
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1146
  %25 = icmp eq i32 %24, 0, !dbg !1147
  br i1 %25, label %28, label %26, !dbg !1148

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1149, !tbaa !820
  tail call void @_exit(i32 noundef %27) #39, !dbg !1150
  unreachable, !dbg !1150

28:                                               ; preds = %22
  ret void, !dbg !1151
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1152 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1156 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1158 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1162, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1163, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1164, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1165, metadata !DIExpression()), !dbg !1166
  tail call fastcc void @flush_stdout(), !dbg !1167
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1168, !tbaa !762
  %6 = icmp eq ptr %5, null, !dbg !1168
  br i1 %6, label %8, label %7, !dbg !1170

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1171
  br label %12, !dbg !1171

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1172, !tbaa !762
  %10 = tail call ptr @getprogname() #38, !dbg !1172
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #37, !dbg !1172
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1176 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()), !dbg !1185
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1188
  %2 = icmp slt i32 %1, 0, !dbg !1189
  br i1 %2, label %6, label %3, !dbg !1190

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !762
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1191
  br label %6, !dbg !1191

6:                                                ; preds = %3, %0
  ret void, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1193 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1199
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1195, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1196, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1197, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1198, metadata !DIExpression()), !dbg !1200
  %6 = load ptr, ptr @stderr, align 8, !dbg !1201, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %6, metadata !1202, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %2, metadata !1242, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %3, metadata !1243, metadata !DIExpression()), !dbg !1244
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1246
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1247, !tbaa !820
  %9 = add i32 %8, 1, !dbg !1247
  store i32 %9, ptr @error_message_count, align 4, !dbg !1247, !tbaa !820
  %10 = icmp eq i32 %1, 0, !dbg !1248
  br i1 %10, label %20, label %11, !dbg !1250

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1251, metadata !DIExpression(), metadata !1199, metadata ptr %5, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i32 %1, metadata !1254, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1261
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %12, metadata !1255, metadata !DIExpression()), !dbg !1259
  %13 = icmp eq ptr %12, null, !dbg !1263
  br i1 %13, label %14, label %16, !dbg !1265

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #37, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %15, metadata !1255, metadata !DIExpression()), !dbg !1259
  br label %16, !dbg !1267

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1259
  call void @llvm.dbg.value(metadata ptr %17, metadata !1255, metadata !DIExpression()), !dbg !1259
  %18 = load ptr, ptr @stderr, align 8, !dbg !1268, !tbaa !762
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #37, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1269
  br label %20, !dbg !1270

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1271, !tbaa !762
  call void @llvm.dbg.value(metadata i32 10, metadata !1272, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr %21, metadata !1278, metadata !DIExpression()), !dbg !1279
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1281
  %23 = load ptr, ptr %22, align 8, !dbg !1281, !tbaa !1282
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1281
  %25 = load ptr, ptr %24, align 8, !dbg !1281, !tbaa !1285
  %26 = icmp ult ptr %23, %25, !dbg !1281
  br i1 %26, label %29, label %27, !dbg !1281, !prof !1286

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1281
  br label %31, !dbg !1281

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1281
  store ptr %30, ptr %22, align 8, !dbg !1281, !tbaa !1282
  store i8 10, ptr %23, align 1, !dbg !1281, !tbaa !829
  br label %31, !dbg !1281

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1287, !tbaa !762
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1287
  %34 = icmp eq i32 %0, 0, !dbg !1288
  br i1 %34, label %36, label %35, !dbg !1290

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1291
  unreachable, !dbg !1291

36:                                               ; preds = %31
  ret void, !dbg !1292
}

declare !dbg !1293 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1296 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1299 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1302 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1305 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1309 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1322
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1316, metadata !DIExpression(), metadata !1322, metadata ptr %4, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1313, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1315, metadata !DIExpression()), !dbg !1323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1324
  call void @llvm.va_start(ptr nonnull %4), !dbg !1325
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1326
  call void @llvm.va_end(ptr nonnull %4), !dbg !1327
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1328
  ret void, !dbg !1328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !357 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !368, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !369, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !370, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !371, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !372, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !373, metadata !DIExpression()), !dbg !1329
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1330, !tbaa !820
  %8 = icmp eq i32 %7, 0, !dbg !1330
  br i1 %8, label %23, label %9, !dbg !1332

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1333, !tbaa !820
  %11 = icmp eq i32 %10, %3, !dbg !1336
  br i1 %11, label %12, label %22, !dbg !1337

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1338, !tbaa !762
  %14 = icmp eq ptr %13, %2, !dbg !1339
  br i1 %14, label %36, label %15, !dbg !1340

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1341
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1342
  br i1 %18, label %19, label %22, !dbg !1342

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1343
  %21 = icmp eq i32 %20, 0, !dbg !1344
  br i1 %21, label %36, label %22, !dbg !1345

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1346, !tbaa !762
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1347, !tbaa !820
  br label %23, !dbg !1348

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1349
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1350, !tbaa !762
  %25 = icmp eq ptr %24, null, !dbg !1350
  br i1 %25, label %27, label %26, !dbg !1352

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1353
  br label %31, !dbg !1353

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1354, !tbaa !762
  %29 = tail call ptr @getprogname() #38, !dbg !1354
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #37, !dbg !1354
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1356, !tbaa !762
  %33 = icmp eq ptr %2, null, !dbg !1356
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1356
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1356
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1357
  br label %36, !dbg !1358

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1358
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1359 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1368, metadata !DIExpression(), metadata !1369, metadata ptr %6, metadata !DIExpression()), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1363, metadata !DIExpression()), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1364, metadata !DIExpression()), !dbg !1370
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1365, metadata !DIExpression()), !dbg !1370
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1366, metadata !DIExpression()), !dbg !1370
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1367, metadata !DIExpression()), !dbg !1370
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1371
  call void @llvm.va_start(ptr nonnull %6), !dbg !1372
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1373
  call void @llvm.va_end(ptr nonnull %6), !dbg !1374
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1375
  ret void, !dbg !1375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1376 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1379, !tbaa !762
  ret ptr %1, !dbg !1380
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1381 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1383, metadata !DIExpression()), !dbg !1386
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1387
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1384, metadata !DIExpression()), !dbg !1386
  %3 = icmp eq ptr %2, null, !dbg !1388
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1388
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1388
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1385, metadata !DIExpression()), !dbg !1386
  %6 = ptrtoint ptr %5 to i64, !dbg !1389
  %7 = ptrtoint ptr %0 to i64, !dbg !1389
  %8 = sub i64 %6, %7, !dbg !1389
  %9 = icmp sgt i64 %8, 6, !dbg !1391
  br i1 %9, label %10, label %19, !dbg !1392

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %11, metadata !1394, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1399, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 7, metadata !1400, metadata !DIExpression()), !dbg !1401
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.43, i64 7), !dbg !1403
  %13 = icmp eq i32 %12, 0, !dbg !1404
  br i1 %13, label %14, label %19, !dbg !1405

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1383, metadata !DIExpression()), !dbg !1386
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.44, i64 noundef 3) #38, !dbg !1406
  %16 = icmp eq i32 %15, 0, !dbg !1409
  %17 = select i1 %16, i64 3, i64 0, !dbg !1410
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1410
  br label %19, !dbg !1410

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1385, metadata !DIExpression()), !dbg !1386
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1383, metadata !DIExpression()), !dbg !1386
  store ptr %20, ptr @program_name, align 8, !dbg !1411, !tbaa !762
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1412, !tbaa !762
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1413, !tbaa !762
  ret void, !dbg !1414
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1415 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !410 {
  %3 = alloca i32, align 4, !DIAssignID !1416
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1416, metadata ptr %3, metadata !DIExpression()), !dbg !1417
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1418
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !1418, metadata ptr %4, metadata !DIExpression()), !dbg !1417
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !417, metadata !DIExpression()), !dbg !1417
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !418, metadata !DIExpression()), !dbg !1417
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !419, metadata !DIExpression()), !dbg !1417
  %6 = icmp eq ptr %5, %0, !dbg !1420
  br i1 %6, label %7, label %14, !dbg !1422

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %4, metadata !1425, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %4, metadata !1434, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 8, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i64 0, ptr %4, align 8, !dbg !1444
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1445
  %9 = icmp eq i64 %8, 2, !dbg !1447
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1448
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1417
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1449
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1417
  ret ptr %15, !dbg !1449
}

; Function Attrs: nounwind
declare !dbg !1450 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1461, metadata !DIExpression()), !dbg !1464
  %2 = tail call ptr @__errno_location() #40, !dbg !1465
  %3 = load i32, ptr %2, align 4, !dbg !1465, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1462, metadata !DIExpression()), !dbg !1464
  %4 = icmp eq ptr %0, null, !dbg !1466
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1466
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1467
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32 %3, ptr %2, align 4, !dbg !1468, !tbaa !820
  ret ptr %6, !dbg !1469
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1470 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1476, metadata !DIExpression()), !dbg !1477
  %2 = icmp eq ptr %0, null, !dbg !1478
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1478
  %4 = load i32, ptr %3, align 8, !dbg !1479, !tbaa !1480
  ret i32 %4, !dbg !1482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1487, metadata !DIExpression()), !dbg !1489
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1488, metadata !DIExpression()), !dbg !1489
  %3 = icmp eq ptr %0, null, !dbg !1490
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1490
  store i32 %1, ptr %4, align 8, !dbg !1491, !tbaa !1480
  ret void, !dbg !1492
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1505
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1498, metadata !DIExpression()), !dbg !1505
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1499, metadata !DIExpression()), !dbg !1505
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !1505
  %4 = icmp eq ptr %0, null, !dbg !1506
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1506
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1507
  %7 = lshr i8 %1, 5, !dbg !1508
  %8 = zext nneg i8 %7 to i64, !dbg !1508
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1501, metadata !DIExpression()), !dbg !1505
  %10 = and i8 %1, 31, !dbg !1510
  %11 = zext nneg i8 %10 to i32, !dbg !1510
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1503, metadata !DIExpression()), !dbg !1505
  %12 = load i32, ptr %9, align 4, !dbg !1511, !tbaa !820
  %13 = lshr i32 %12, %11, !dbg !1512
  %14 = and i32 %13, 1, !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1504, metadata !DIExpression()), !dbg !1505
  %15 = xor i32 %13, %2, !dbg !1514
  %16 = and i32 %15, 1, !dbg !1514
  %17 = shl nuw i32 %16, %11, !dbg !1515
  %18 = xor i32 %17, %12, !dbg !1516
  store i32 %18, ptr %9, align 4, !dbg !1516, !tbaa !820
  ret i32 %14, !dbg !1517
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1518 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1522, metadata !DIExpression()), !dbg !1525
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1523, metadata !DIExpression()), !dbg !1525
  %3 = icmp eq ptr %0, null, !dbg !1526
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1528
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1522, metadata !DIExpression()), !dbg !1525
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1529
  %6 = load i32, ptr %5, align 4, !dbg !1529, !tbaa !1530
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1524, metadata !DIExpression()), !dbg !1525
  store i32 %1, ptr %5, align 4, !dbg !1531, !tbaa !1530
  ret i32 %6, !dbg !1532
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1533 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1537, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !1540
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  %4 = icmp eq ptr %0, null, !dbg !1541
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1543
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !1540
  store i32 10, ptr %5, align 8, !dbg !1544, !tbaa !1480
  %6 = icmp ne ptr %1, null, !dbg !1545
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1547
  br i1 %8, label %10, label %9, !dbg !1547

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1548
  unreachable, !dbg !1548

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1549
  store ptr %1, ptr %11, align 8, !dbg !1550, !tbaa !1551
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1552
  store ptr %2, ptr %12, align 8, !dbg !1553, !tbaa !1554
  ret void, !dbg !1555
}

; Function Attrs: noreturn nounwind
declare !dbg !1556 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1557 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1561, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1562, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1563, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1564, metadata !DIExpression()), !dbg !1569
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !1569
  %6 = icmp eq ptr %4, null, !dbg !1570
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1570
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1566, metadata !DIExpression()), !dbg !1569
  %8 = tail call ptr @__errno_location() #40, !dbg !1571
  %9 = load i32, ptr %8, align 4, !dbg !1571, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1567, metadata !DIExpression()), !dbg !1569
  %10 = load i32, ptr %7, align 8, !dbg !1572, !tbaa !1480
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1573
  %12 = load i32, ptr %11, align 4, !dbg !1573, !tbaa !1530
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1574
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1575
  %15 = load ptr, ptr %14, align 8, !dbg !1575, !tbaa !1551
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1576
  %17 = load ptr, ptr %16, align 8, !dbg !1576, !tbaa !1554
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i32 %9, ptr %8, align 4, !dbg !1578, !tbaa !820
  ret i64 %18, !dbg !1579
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1580 {
  %10 = alloca i32, align 4, !DIAssignID !1648
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1649
  %12 = alloca i32, align 4, !DIAssignID !1650
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1651
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1626, metadata !DIExpression(), metadata !1652, metadata ptr %14, metadata !DIExpression()), !dbg !1653
  %15 = alloca i32, align 4, !DIAssignID !1654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1629, metadata !DIExpression(), metadata !1654, metadata ptr %15, metadata !DIExpression()), !dbg !1655
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1588, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1589, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1590, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1591, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1592, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1593, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1594, metadata !DIExpression()), !dbg !1656
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1657
  %17 = icmp eq i64 %16, 1, !dbg !1658
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1598, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1656
  %18 = trunc i32 %5 to i8, !dbg !1659
  %19 = lshr i8 %18, 1, !dbg !1659
  %20 = and i8 %19, 1, !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1656
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1660

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1661
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1662
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1663
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1664
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1656
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1665
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1666
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1603, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1600, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1599, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1598, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1589, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1594, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1593, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1590, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.label(metadata !1604), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1656
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
  ], !dbg !1668

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1590, metadata !DIExpression()), !dbg !1656
  br label %114, !dbg !1669

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1590, metadata !DIExpression()), !dbg !1656
  %43 = and i8 %37, 1, !dbg !1670
  %44 = icmp eq i8 %43, 0, !dbg !1670
  br i1 %44, label %45, label %114, !dbg !1669

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1672
  br i1 %46, label %114, label %47, !dbg !1675

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1672, !tbaa !829
  br label %114, !dbg !1672

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !526, metadata !DIExpression(), metadata !1650, metadata ptr %12, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !1651, metadata ptr %13, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !523, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %29, metadata !524, metadata !DIExpression()), !dbg !1676
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #37, !dbg !1680
  call void @llvm.dbg.value(metadata ptr %49, metadata !525, metadata !DIExpression()), !dbg !1676
  %50 = icmp eq ptr %49, @.str.11.63, !dbg !1681
  br i1 %50, label %51, label %60, !dbg !1683

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1684
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %13, metadata !1686, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %13, metadata !1694, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1699
  store i64 0, ptr %13, align 8, !dbg !1701
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1702
  %53 = icmp eq i64 %52, 3, !dbg !1704
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1705
  %57 = icmp eq i32 %29, 9, !dbg !1705
  %58 = select i1 %57, ptr @.str.10.65, ptr @.str.12.66, !dbg !1705
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1706
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1676
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1593, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !526, metadata !DIExpression(), metadata !1648, metadata ptr %10, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !1649, metadata ptr %11, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !523, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %29, metadata !524, metadata !DIExpression()), !dbg !1707
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #37, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %62, metadata !525, metadata !DIExpression()), !dbg !1707
  %63 = icmp eq ptr %62, @.str.12.66, !dbg !1710
  br i1 %63, label %64, label %73, !dbg !1711

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1712
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %11, metadata !1686, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %11, metadata !1694, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1716
  store i64 0, ptr %11, align 8, !dbg !1718
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1719
  %66 = icmp eq i64 %65, 3, !dbg !1720
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1721
  %70 = icmp eq i32 %29, 9, !dbg !1721
  %71 = select i1 %70, ptr @.str.10.65, ptr @.str.12.66, !dbg !1721
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1722
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1594, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1593, metadata !DIExpression()), !dbg !1656
  %76 = and i8 %37, 1, !dbg !1723
  %77 = icmp eq i8 %76, 0, !dbg !1723
  br i1 %77, label %78, label %93, !dbg !1724

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1606, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1656
  %79 = load i8, ptr %74, align 1, !dbg !1726, !tbaa !829
  %80 = icmp eq i8 %79, 0, !dbg !1728
  br i1 %80, label %93, label %81, !dbg !1728

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1606, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1596, metadata !DIExpression()), !dbg !1656
  %85 = icmp ult i64 %84, %40, !dbg !1729
  br i1 %85, label %86, label %88, !dbg !1732

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1729
  store i8 %82, ptr %87, align 1, !dbg !1729, !tbaa !829
  br label %88, !dbg !1729

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1732
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1596, metadata !DIExpression()), !dbg !1656
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1606, metadata !DIExpression()), !dbg !1725
  %91 = load i8, ptr %90, align 1, !dbg !1726, !tbaa !829
  %92 = icmp eq i8 %91, 0, !dbg !1728
  br i1 %92, label %93, label %81, !dbg !1728, !llvm.loop !1734

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1598, metadata !DIExpression()), !dbg !1656
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1599, metadata !DIExpression()), !dbg !1656
  br label %114, !dbg !1738

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1656
  br label %98, !dbg !1739

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1600, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1656
  br label %98, !dbg !1740

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1664
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1600, metadata !DIExpression()), !dbg !1656
  %101 = and i8 %100, 1, !dbg !1741
  %102 = icmp eq i8 %101, 0, !dbg !1741
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1743
  br label %104, !dbg !1743

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1656
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1600, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1590, metadata !DIExpression()), !dbg !1656
  %107 = and i8 %106, 1, !dbg !1744
  %108 = icmp eq i8 %107, 0, !dbg !1744
  br i1 %108, label %109, label %114, !dbg !1746

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1747
  br i1 %110, label %114, label %111, !dbg !1750

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1747, !tbaa !829
  br label %114, !dbg !1747

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1656
  br label %114, !dbg !1751

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1752
  unreachable, !dbg !1752

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1736
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.65, %45 ], [ @.str.10.65, %47 ], [ @.str.10.65, %42 ], [ %34, %28 ], [ @.str.12.66, %109 ], [ @.str.12.66, %111 ], [ @.str.12.66, %104 ], [ @.str.10.65, %41 ], !dbg !1656
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1656
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1656
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1601, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1600, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1599, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1598, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1594, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1593, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1590, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1611, metadata !DIExpression()), !dbg !1753
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
  br label %138, !dbg !1754

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1736
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1661
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1665
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1666
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1755
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1756
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1603, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1589, metadata !DIExpression()), !dbg !1656
  %147 = icmp eq i64 %139, -1, !dbg !1757
  br i1 %147, label %148, label %152, !dbg !1758

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1759
  %150 = load i8, ptr %149, align 1, !dbg !1759, !tbaa !829
  %151 = icmp eq i8 %150, 0, !dbg !1760
  br i1 %151, label %612, label %154, !dbg !1761

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1762
  br i1 %153, label %612, label %154, !dbg !1761

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1763
  br i1 %128, label %155, label %170, !dbg !1764

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1766
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1767
  br i1 %157, label %158, label %160, !dbg !1767

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1589, metadata !DIExpression()), !dbg !1656
  br label %160, !dbg !1769

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1589, metadata !DIExpression()), !dbg !1656
  %162 = icmp ugt i64 %156, %161, !dbg !1770
  br i1 %162, label %170, label %163, !dbg !1771

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %164, metadata !1773, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %119, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %120, metadata !1777, metadata !DIExpression()), !dbg !1778
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1780
  %166 = icmp ne i32 %165, 0, !dbg !1781
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1782
  %168 = xor i1 %166, true, !dbg !1782
  %169 = zext i1 %168 to i8, !dbg !1782
  br i1 %167, label %170, label %666, !dbg !1782

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1763
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1589, metadata !DIExpression()), !dbg !1656
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1783
  %175 = load i8, ptr %174, align 1, !dbg !1783, !tbaa !829
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1618, metadata !DIExpression()), !dbg !1763
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
  ], !dbg !1784

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1785

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1786

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1763
  %179 = and i8 %144, 1, !dbg !1790
  %180 = icmp eq i8 %179, 0, !dbg !1790
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1790
  br i1 %181, label %182, label %198, !dbg !1790

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1792
  br i1 %183, label %184, label %186, !dbg !1796

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1792
  store i8 39, ptr %185, align 1, !dbg !1792, !tbaa !829
  br label %186, !dbg !1792

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1596, metadata !DIExpression()), !dbg !1656
  %188 = icmp ult i64 %187, %146, !dbg !1797
  br i1 %188, label %189, label %191, !dbg !1800

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1797
  store i8 36, ptr %190, align 1, !dbg !1797, !tbaa !829
  br label %191, !dbg !1797

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1596, metadata !DIExpression()), !dbg !1656
  %193 = icmp ult i64 %192, %146, !dbg !1801
  br i1 %193, label %194, label %196, !dbg !1804

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1801
  store i8 39, ptr %195, align 1, !dbg !1801, !tbaa !829
  br label %196, !dbg !1801

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %198, !dbg !1805

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1656
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1596, metadata !DIExpression()), !dbg !1656
  %201 = icmp ult i64 %199, %146, !dbg !1806
  br i1 %201, label %202, label %204, !dbg !1809

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1806
  store i8 92, ptr %203, align 1, !dbg !1806, !tbaa !829
  br label %204, !dbg !1806

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1596, metadata !DIExpression()), !dbg !1656
  br i1 %125, label %206, label %476, !dbg !1810

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1812
  %208 = icmp ult i64 %207, %171, !dbg !1813
  br i1 %208, label %209, label %465, !dbg !1814

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1815
  %211 = load i8, ptr %210, align 1, !dbg !1815, !tbaa !829
  %212 = add i8 %211, -48, !dbg !1816
  %213 = icmp ult i8 %212, 10, !dbg !1816
  br i1 %213, label %214, label %465, !dbg !1816

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1817
  br i1 %215, label %216, label %218, !dbg !1821

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1817
  store i8 48, ptr %217, align 1, !dbg !1817, !tbaa !829
  br label %218, !dbg !1817

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1596, metadata !DIExpression()), !dbg !1656
  %220 = icmp ult i64 %219, %146, !dbg !1822
  br i1 %220, label %221, label %223, !dbg !1825

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1822
  store i8 48, ptr %222, align 1, !dbg !1822, !tbaa !829
  br label %223, !dbg !1822

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1596, metadata !DIExpression()), !dbg !1656
  br label %465, !dbg !1826

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1827

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1828

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1829

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1831

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1833
  %231 = icmp ult i64 %230, %171, !dbg !1834
  br i1 %231, label %232, label %465, !dbg !1835

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1836
  %234 = load i8, ptr %233, align 1, !dbg !1836, !tbaa !829
  %235 = icmp eq i8 %234, 63, !dbg !1837
  br i1 %235, label %236, label %465, !dbg !1838

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1839
  %238 = load i8, ptr %237, align 1, !dbg !1839, !tbaa !829
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
  ], !dbg !1840

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1841

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1611, metadata !DIExpression()), !dbg !1753
  %241 = icmp ult i64 %140, %146, !dbg !1843
  br i1 %241, label %242, label %244, !dbg !1846

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1843
  store i8 63, ptr %243, align 1, !dbg !1843, !tbaa !829
  br label %244, !dbg !1843

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1596, metadata !DIExpression()), !dbg !1656
  %246 = icmp ult i64 %245, %146, !dbg !1847
  br i1 %246, label %247, label %249, !dbg !1850

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1847
  store i8 34, ptr %248, align 1, !dbg !1847, !tbaa !829
  br label %249, !dbg !1847

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1596, metadata !DIExpression()), !dbg !1656
  %251 = icmp ult i64 %250, %146, !dbg !1851
  br i1 %251, label %252, label %254, !dbg !1854

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1851
  store i8 34, ptr %253, align 1, !dbg !1851, !tbaa !829
  br label %254, !dbg !1851

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1596, metadata !DIExpression()), !dbg !1656
  %256 = icmp ult i64 %255, %146, !dbg !1855
  br i1 %256, label %257, label %259, !dbg !1858

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1855
  store i8 63, ptr %258, align 1, !dbg !1855, !tbaa !829
  br label %259, !dbg !1855

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1596, metadata !DIExpression()), !dbg !1656
  br label %465, !dbg !1859

261:                                              ; preds = %170
  br label %272, !dbg !1860

262:                                              ; preds = %170
  br label %272, !dbg !1861

263:                                              ; preds = %170
  br label %270, !dbg !1862

264:                                              ; preds = %170
  br label %270, !dbg !1863

265:                                              ; preds = %170
  br label %272, !dbg !1864

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1865

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1866

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1869

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1871

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1872
  call void @llvm.dbg.label(metadata !1619), !dbg !1873
  br i1 %133, label %272, label %655, !dbg !1874

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1872
  call void @llvm.dbg.label(metadata !1622), !dbg !1876
  br i1 %124, label %520, label %476, !dbg !1877

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1878

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1879, !tbaa !829
  %277 = icmp eq i8 %276, 0, !dbg !1881
  br i1 %277, label %278, label %465, !dbg !1882

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1883
  br i1 %279, label %280, label %465, !dbg !1885

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1617, metadata !DIExpression()), !dbg !1763
  br label %281, !dbg !1886

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1617, metadata !DIExpression()), !dbg !1763
  br i1 %133, label %465, label %655, !dbg !1887

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1617, metadata !DIExpression()), !dbg !1763
  br i1 %132, label %284, label %465, !dbg !1889

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1890

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1893
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1895
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1895
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1597, metadata !DIExpression()), !dbg !1656
  %291 = icmp ult i64 %140, %290, !dbg !1896
  br i1 %291, label %292, label %294, !dbg !1899

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1896
  store i8 39, ptr %293, align 1, !dbg !1896, !tbaa !829
  br label %294, !dbg !1896

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1596, metadata !DIExpression()), !dbg !1656
  %296 = icmp ult i64 %295, %290, !dbg !1900
  br i1 %296, label %297, label %299, !dbg !1903

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1900
  store i8 92, ptr %298, align 1, !dbg !1900, !tbaa !829
  br label %299, !dbg !1900

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1596, metadata !DIExpression()), !dbg !1656
  %301 = icmp ult i64 %300, %290, !dbg !1904
  br i1 %301, label %302, label %304, !dbg !1907

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1904
  store i8 39, ptr %303, align 1, !dbg !1904, !tbaa !829
  br label %304, !dbg !1904

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %465, !dbg !1908

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1909

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1623, metadata !DIExpression()), !dbg !1910
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1911
  %309 = load ptr, ptr %308, align 8, !dbg !1911, !tbaa !762
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1911
  %312 = load i16, ptr %311, align 2, !dbg !1911, !tbaa !861
  %313 = and i16 %312, 16384, !dbg !1913
  %314 = icmp ne i16 %313, 0, !dbg !1913
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1625, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1910
  br label %355, !dbg !1914

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %14, metadata !1686, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1918
  store i64 0, ptr %14, align 8, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1910
  %316 = icmp eq i64 %171, -1, !dbg !1921
  br i1 %316, label %317, label %319, !dbg !1923

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1589, metadata !DIExpression()), !dbg !1656
  br label %319, !dbg !1925

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1589, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1926
  %321 = sub i64 %320, %145, !dbg !1927
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1633, metadata !DIExpression()), !dbg !1655
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1929

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1910
  %324 = icmp ult i64 %145, %320, !dbg !1930
  br i1 %324, label %326, label %351, !dbg !1932

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1910
  br label %351, !dbg !1933

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1623, metadata !DIExpression()), !dbg !1910
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1935
  %330 = load i8, ptr %329, align 1, !dbg !1935, !tbaa !829
  %331 = icmp eq i8 %330, 0, !dbg !1932
  br i1 %331, label %351, label %332, !dbg !1936

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1623, metadata !DIExpression()), !dbg !1910
  %334 = add i64 %333, %145, !dbg !1938
  %335 = icmp eq i64 %333, %321, !dbg !1930
  br i1 %335, label %351, label %326, !dbg !1932, !llvm.loop !1939

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1634, metadata !DIExpression()), !dbg !1940
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1941
  %339 = and i1 %338, %132, !dbg !1941
  br i1 %339, label %340, label %347, !dbg !1941

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1634, metadata !DIExpression()), !dbg !1940
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1942
  %343 = load i8, ptr %342, align 1, !dbg !1942, !tbaa !829
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1944

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1634, metadata !DIExpression()), !dbg !1940
  %346 = icmp eq i64 %345, %322, !dbg !1946
  br i1 %346, label %347, label %340, !dbg !1947, !llvm.loop !1948

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1950, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %348, metadata !1952, metadata !DIExpression()), !dbg !1960
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1962
  %350 = icmp ne i32 %349, 0, !dbg !1963
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1625, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1623, metadata !DIExpression()), !dbg !1910
  br label %351, !dbg !1964

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1625, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1623, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1966
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1625, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1966
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1763
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1967
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1967
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1625, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1623, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1589, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1617, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  %359 = icmp ult i64 %357, 2, !dbg !1968
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1969
  br i1 %361, label %461, label %362, !dbg !1969

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1642, metadata !DIExpression()), !dbg !1971
  br label %364, !dbg !1972

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1656
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1755
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1753
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1763
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1973
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1596, metadata !DIExpression()), !dbg !1656
  br i1 %360, label %417, label %371, !dbg !1974

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1979

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1763
  %373 = and i8 %366, 1, !dbg !1982
  %374 = icmp eq i8 %373, 0, !dbg !1982
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1982
  br i1 %375, label %376, label %392, !dbg !1982

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1984
  br i1 %377, label %378, label %380, !dbg !1988

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1984
  store i8 39, ptr %379, align 1, !dbg !1984, !tbaa !829
  br label %380, !dbg !1984

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1596, metadata !DIExpression()), !dbg !1656
  %382 = icmp ult i64 %381, %146, !dbg !1989
  br i1 %382, label %383, label %385, !dbg !1992

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1989
  store i8 36, ptr %384, align 1, !dbg !1989, !tbaa !829
  br label %385, !dbg !1989

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1596, metadata !DIExpression()), !dbg !1656
  %387 = icmp ult i64 %386, %146, !dbg !1993
  br i1 %387, label %388, label %390, !dbg !1996

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1993
  store i8 39, ptr %389, align 1, !dbg !1993, !tbaa !829
  br label %390, !dbg !1993

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %392, !dbg !1997

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1656
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1596, metadata !DIExpression()), !dbg !1656
  %395 = icmp ult i64 %393, %146, !dbg !1998
  br i1 %395, label %396, label %398, !dbg !2001

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1998
  store i8 92, ptr %397, align 1, !dbg !1998, !tbaa !829
  br label %398, !dbg !1998

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2001
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1596, metadata !DIExpression()), !dbg !1656
  %400 = icmp ult i64 %399, %146, !dbg !2002
  br i1 %400, label %401, label %405, !dbg !2005

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2002
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2002
  store i8 %403, ptr %404, align 1, !dbg !2002, !tbaa !829
  br label %405, !dbg !2002

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2005
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1596, metadata !DIExpression()), !dbg !1656
  %407 = icmp ult i64 %406, %146, !dbg !2006
  br i1 %407, label %408, label %413, !dbg !2009

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2006
  %411 = or disjoint i8 %410, 48, !dbg !2006
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2006
  store i8 %411, ptr %412, align 1, !dbg !2006, !tbaa !829
  br label %413, !dbg !2006

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1596, metadata !DIExpression()), !dbg !1656
  %415 = and i8 %370, 7, !dbg !2010
  %416 = or disjoint i8 %415, 48, !dbg !2011
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1618, metadata !DIExpression()), !dbg !1763
  br label %426, !dbg !2012

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2013
  %419 = icmp eq i8 %418, 0, !dbg !2013
  br i1 %419, label %426, label %420, !dbg !2015

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2016
  br i1 %421, label %422, label %424, !dbg !2020

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2016
  store i8 92, ptr %423, align 1, !dbg !2016, !tbaa !829
  br label %424, !dbg !2016

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2020
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1763
  br label %426, !dbg !2021

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1656
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1755
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1763
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1763
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1596, metadata !DIExpression()), !dbg !1656
  %432 = add i64 %367, 1, !dbg !2022
  %433 = icmp ugt i64 %363, %432, !dbg !2024
  br i1 %433, label %434, label %463, !dbg !2025

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2026
  %436 = icmp ne i8 %435, 0, !dbg !2026
  %437 = and i8 %430, 1, !dbg !2026
  %438 = icmp eq i8 %437, 0, !dbg !2026
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2026
  br i1 %439, label %440, label %451, !dbg !2026

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2029
  br i1 %441, label %442, label %444, !dbg !2033

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2029
  store i8 39, ptr %443, align 1, !dbg !2029, !tbaa !829
  br label %444, !dbg !2029

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1596, metadata !DIExpression()), !dbg !1656
  %446 = icmp ult i64 %445, %146, !dbg !2034
  br i1 %446, label %447, label %449, !dbg !2037

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2034
  store i8 39, ptr %448, align 1, !dbg !2034, !tbaa !829
  br label %449, !dbg !2034

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %451, !dbg !2038

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2039
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1596, metadata !DIExpression()), !dbg !1656
  %454 = icmp ult i64 %452, %146, !dbg !2040
  br i1 %454, label %455, label %457, !dbg !2043

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2040
  store i8 %431, ptr %456, align 1, !dbg !2040, !tbaa !829
  br label %457, !dbg !2040

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2043
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1611, metadata !DIExpression()), !dbg !1753
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2044
  %460 = load i8, ptr %459, align 1, !dbg !2044, !tbaa !829
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1618, metadata !DIExpression()), !dbg !1763
  br label %364, !dbg !2045, !llvm.loop !2046

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1589, metadata !DIExpression()), !dbg !1656
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1589, metadata !DIExpression()), !dbg !1656
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2049
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1656
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1661
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1656
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1656
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1753
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1763
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1763
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1763
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1613, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1589, metadata !DIExpression()), !dbg !1656
  br i1 %126, label %487, label %476, !dbg !2050

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
  br i1 %137, label %488, label %509, !dbg !2052

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2053

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
  %499 = lshr i8 %490, 5, !dbg !2054
  %500 = zext nneg i8 %499 to i64, !dbg !2054
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2055
  %502 = load i32, ptr %501, align 4, !dbg !2055, !tbaa !820
  %503 = and i8 %490, 31, !dbg !2056
  %504 = zext nneg i8 %503 to i32, !dbg !2056
  %505 = shl nuw i32 1, %504, !dbg !2057
  %506 = and i32 %502, %505, !dbg !2057
  %507 = icmp eq i32 %506, 0, !dbg !2057
  %508 = and i1 %172, %507, !dbg !2058
  br i1 %508, label %558, label %520, !dbg !2058

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
  br i1 %172, label %558, label %520, !dbg !2059

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2049
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1656
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1661
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1665
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1755
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2060
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1763
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1763
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1589, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.label(metadata !1645), !dbg !2061
  br i1 %131, label %530, label %659, !dbg !2062

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1763
  %531 = and i8 %525, 1, !dbg !2064
  %532 = icmp eq i8 %531, 0, !dbg !2064
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2064
  br i1 %533, label %534, label %550, !dbg !2064

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2066
  br i1 %535, label %536, label %538, !dbg !2070

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2066
  store i8 39, ptr %537, align 1, !dbg !2066, !tbaa !829
  br label %538, !dbg !2066

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1596, metadata !DIExpression()), !dbg !1656
  %540 = icmp ult i64 %539, %529, !dbg !2071
  br i1 %540, label %541, label %543, !dbg !2074

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2071
  store i8 36, ptr %542, align 1, !dbg !2071, !tbaa !829
  br label %543, !dbg !2071

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1596, metadata !DIExpression()), !dbg !1656
  %545 = icmp ult i64 %544, %529, !dbg !2075
  br i1 %545, label %546, label %548, !dbg !2078

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2075
  store i8 39, ptr %547, align 1, !dbg !2075, !tbaa !829
  br label %548, !dbg !2075

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %550, !dbg !2079

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1763
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1596, metadata !DIExpression()), !dbg !1656
  %553 = icmp ult i64 %551, %529, !dbg !2080
  br i1 %553, label %554, label %556, !dbg !2083

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2080
  store i8 92, ptr %555, align 1, !dbg !2080, !tbaa !829
  br label %556, !dbg !2080

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1589, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.label(metadata !1646), !dbg !2084
  br label %585, !dbg !2085

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2049
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1656
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1661
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1665
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1755
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2060
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1763
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1763
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2088
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1618, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1617, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1616, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1589, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.label(metadata !1646), !dbg !2084
  %569 = and i8 %563, 1, !dbg !2085
  %570 = icmp ne i8 %569, 0, !dbg !2085
  %571 = and i8 %565, 1, !dbg !2085
  %572 = icmp eq i8 %571, 0, !dbg !2085
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2085
  br i1 %573, label %574, label %585, !dbg !2085

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2089
  br i1 %575, label %576, label %578, !dbg !2093

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2089
  store i8 39, ptr %577, align 1, !dbg !2089, !tbaa !829
  br label %578, !dbg !2089

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1596, metadata !DIExpression()), !dbg !1656
  %580 = icmp ult i64 %579, %568, !dbg !2094
  br i1 %580, label %581, label %583, !dbg !2097

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2094
  store i8 39, ptr %582, align 1, !dbg !2094, !tbaa !829
  br label %583, !dbg !2094

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2097
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1656
  br label %585, !dbg !2098

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1763
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1596, metadata !DIExpression()), !dbg !1656
  %595 = icmp ult i64 %593, %586, !dbg !2099
  br i1 %595, label %596, label %598, !dbg !2102

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2099
  store i8 %587, ptr %597, align 1, !dbg !2099, !tbaa !829
  br label %598, !dbg !2099

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1596, metadata !DIExpression()), !dbg !1656
  %600 = icmp eq i8 %588, 0, !dbg !2103
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2105
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1603, metadata !DIExpression()), !dbg !1656
  br label %602, !dbg !2106

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2049
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1656
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1661
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1665
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1666
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1755
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2060
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1611, metadata !DIExpression()), !dbg !1753
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1605, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1603, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1589, metadata !DIExpression()), !dbg !1656
  %611 = add i64 %609, 1, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1611, metadata !DIExpression()), !dbg !1753
  br label %138, !dbg !2108, !llvm.loop !2109

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1587, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1603, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1602, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1597, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1589, metadata !DIExpression()), !dbg !1656
  %613 = icmp eq i64 %140, 0, !dbg !2111
  %614 = and i1 %132, %613, !dbg !2113
  %615 = xor i1 %614, true, !dbg !2113
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2113
  br i1 %616, label %617, label %655, !dbg !2113

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2114
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2114
  br i1 %621, label %622, label %631, !dbg !2114

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2116
  %624 = icmp eq i8 %623, 0, !dbg !2116
  br i1 %624, label %627, label %625, !dbg !2119

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2120
  br label %672, !dbg !2121

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2122
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2124
  br i1 %630, label %28, label %631, !dbg !2124

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2125
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2127
  br i1 %634, label %635, label %650, !dbg !2127

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1598, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1656
  %636 = load i8, ptr %119, align 1, !dbg !2128, !tbaa !829
  %637 = icmp eq i8 %636, 0, !dbg !2131
  br i1 %637, label %650, label %638, !dbg !2131

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1598, metadata !DIExpression()), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1596, metadata !DIExpression()), !dbg !1656
  %642 = icmp ult i64 %641, %146, !dbg !2132
  br i1 %642, label %643, label %645, !dbg !2135

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2132
  store i8 %639, ptr %644, align 1, !dbg !2132, !tbaa !829
  br label %645, !dbg !2132

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2135
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1596, metadata !DIExpression()), !dbg !1656
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1598, metadata !DIExpression()), !dbg !1656
  %648 = load i8, ptr %647, align 1, !dbg !2128, !tbaa !829
  %649 = icmp eq i8 %648, 0, !dbg !2131
  br i1 %649, label %650, label %638, !dbg !2131, !llvm.loop !2137

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1596, metadata !DIExpression()), !dbg !1656
  %652 = icmp ult i64 %651, %146, !dbg !2139
  br i1 %652, label %653, label %672, !dbg !2141

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2142
  store i8 0, ptr %654, align 1, !dbg !2143, !tbaa !829
  br label %672, !dbg !2142

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1647), !dbg !2144
  %657 = icmp eq i8 %123, 0, !dbg !2145
  %658 = select i1 %657, i32 2, i32 4, !dbg !2145
  br label %666, !dbg !2145

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1647), !dbg !2144
  %662 = icmp eq i32 %115, 2, !dbg !2147
  %663 = icmp eq i8 %123, 0, !dbg !2145
  %664 = select i1 %663, i32 2, i32 4, !dbg !2145
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2145
  br label %666, !dbg !2145

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1590, metadata !DIExpression()), !dbg !1656
  %670 = and i32 %5, -3, !dbg !2148
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2149
  br label %672, !dbg !2150

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2151
}

; Function Attrs: nounwind
declare !dbg !2152 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2155 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2158 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2160 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2164, metadata !DIExpression()), !dbg !2167
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2165, metadata !DIExpression()), !dbg !2167
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2166, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata ptr %0, metadata !2168, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %1, metadata !2173, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr null, metadata !2174, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata ptr %2, metadata !2175, metadata !DIExpression()), !dbg !2181
  %4 = icmp eq ptr %2, null, !dbg !2183
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %5, metadata !2176, metadata !DIExpression()), !dbg !2181
  %6 = tail call ptr @__errno_location() #40, !dbg !2184
  %7 = load i32, ptr %6, align 4, !dbg !2184, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2177, metadata !DIExpression()), !dbg !2181
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2185
  %9 = load i32, ptr %8, align 4, !dbg !2185, !tbaa !1530
  %10 = or i32 %9, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %10, metadata !2178, metadata !DIExpression()), !dbg !2181
  %11 = load i32, ptr %5, align 8, !dbg !2187, !tbaa !1480
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2188
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2189
  %14 = load ptr, ptr %13, align 8, !dbg !2189, !tbaa !1551
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2190
  %16 = load ptr, ptr %15, align 8, !dbg !2190, !tbaa !1554
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2191
  %18 = add i64 %17, 1, !dbg !2192
  call void @llvm.dbg.value(metadata i64 %18, metadata !2179, metadata !DIExpression()), !dbg !2181
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %19, metadata !2180, metadata !DIExpression()), !dbg !2181
  %20 = load i32, ptr %5, align 8, !dbg !2194, !tbaa !1480
  %21 = load ptr, ptr %13, align 8, !dbg !2195, !tbaa !1551
  %22 = load ptr, ptr %15, align 8, !dbg !2196, !tbaa !1554
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2197
  store i32 %7, ptr %6, align 4, !dbg !2198, !tbaa !820
  ret ptr %19, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2169 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2168, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2173, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2174, metadata !DIExpression()), !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2175, metadata !DIExpression()), !dbg !2200
  %5 = icmp eq ptr %3, null, !dbg !2201
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2201
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2176, metadata !DIExpression()), !dbg !2200
  %7 = tail call ptr @__errno_location() #40, !dbg !2202
  %8 = load i32, ptr %7, align 4, !dbg !2202, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2177, metadata !DIExpression()), !dbg !2200
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2203
  %10 = load i32, ptr %9, align 4, !dbg !2203, !tbaa !1530
  %11 = icmp eq ptr %2, null, !dbg !2204
  %12 = zext i1 %11 to i32, !dbg !2204
  %13 = or i32 %10, %12, !dbg !2205
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2178, metadata !DIExpression()), !dbg !2200
  %14 = load i32, ptr %6, align 8, !dbg !2206, !tbaa !1480
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2207
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2208
  %17 = load ptr, ptr %16, align 8, !dbg !2208, !tbaa !1551
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2209
  %19 = load ptr, ptr %18, align 8, !dbg !2209, !tbaa !1554
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2210
  %21 = add i64 %20, 1, !dbg !2211
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2179, metadata !DIExpression()), !dbg !2200
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2212
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2180, metadata !DIExpression()), !dbg !2200
  %23 = load i32, ptr %6, align 8, !dbg !2213, !tbaa !1480
  %24 = load ptr, ptr %16, align 8, !dbg !2214, !tbaa !1551
  %25 = load ptr, ptr %18, align 8, !dbg !2215, !tbaa !1554
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2216
  store i32 %8, ptr %7, align 4, !dbg !2217, !tbaa !820
  br i1 %11, label %28, label %27, !dbg !2218

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2219, !tbaa !2221
  br label %28, !dbg !2222

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2223
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2224 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2229, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2226, metadata !DIExpression()), !dbg !2230
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !2231
  %2 = load i32, ptr @nslots, align 4, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2227, metadata !DIExpression()), !dbg !2231
  %3 = icmp sgt i32 %2, 1, !dbg !2232
  br i1 %3, label %4, label %6, !dbg !2234

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2232
  br label %10, !dbg !2234

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2235
  %8 = load ptr, ptr %7, align 8, !dbg !2235, !tbaa !2237
  %9 = icmp eq ptr %8, @slot0, !dbg !2239
  br i1 %9, label %17, label %16, !dbg !2240

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2227, metadata !DIExpression()), !dbg !2231
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2241
  %13 = load ptr, ptr %12, align 8, !dbg !2241, !tbaa !2237
  tail call void @free(ptr noundef %13) #37, !dbg !2242
  %14 = add nuw nsw i64 %11, 1, !dbg !2243
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2227, metadata !DIExpression()), !dbg !2231
  %15 = icmp eq i64 %14, %5, !dbg !2232
  br i1 %15, label %6, label %10, !dbg !2234, !llvm.loop !2244

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2246
  store i64 256, ptr @slotvec0, align 8, !dbg !2248, !tbaa !2249
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2250, !tbaa !2237
  br label %17, !dbg !2251

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2252
  br i1 %18, label %20, label %19, !dbg !2254

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2255
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2257, !tbaa !762
  br label %20, !dbg !2258

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2259, !tbaa !820
  ret void, !dbg !2260
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2261 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2264 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2266, metadata !DIExpression()), !dbg !2268
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2267, metadata !DIExpression()), !dbg !2268
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2269
  ret ptr %3, !dbg !2270
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2271 {
  %5 = alloca i64, align 8, !DIAssignID !2291
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2285, metadata !DIExpression(), metadata !2291, metadata ptr %5, metadata !DIExpression()), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2275, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2276, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2277, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2278, metadata !DIExpression()), !dbg !2293
  %6 = tail call ptr @__errno_location() #40, !dbg !2294
  %7 = load i32, ptr %6, align 4, !dbg !2294, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2279, metadata !DIExpression()), !dbg !2293
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2295, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2280, metadata !DIExpression()), !dbg !2293
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2281, metadata !DIExpression()), !dbg !2293
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2296
  br i1 %9, label %10, label %11, !dbg !2296

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2298
  unreachable, !dbg !2298

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2299, !tbaa !820
  %13 = icmp sgt i32 %12, %0, !dbg !2300
  br i1 %13, label %32, label %14, !dbg !2301

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2302
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2282, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2303
  %16 = sext i32 %12 to i64, !dbg !2304
  store i64 %16, ptr %5, align 8, !dbg !2305, !tbaa !2221, !DIAssignID !2306
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2285, metadata !DIExpression(), metadata !2306, metadata ptr %5, metadata !DIExpression()), !dbg !2292
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2307
  %18 = add nuw nsw i32 %0, 1, !dbg !2308
  %19 = sub i32 %18, %12, !dbg !2309
  %20 = sext i32 %19 to i64, !dbg !2310
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2311
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2280, metadata !DIExpression()), !dbg !2293
  store ptr %21, ptr @slotvec, align 8, !dbg !2312, !tbaa !762
  br i1 %15, label %22, label %23, !dbg !2313

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2314, !tbaa.struct !2316
  br label %23, !dbg !2317

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2318, !tbaa !820
  %25 = sext i32 %24 to i64, !dbg !2319
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2319
  %27 = load i64, ptr %5, align 8, !dbg !2320, !tbaa !2221
  %28 = sub nsw i64 %27, %25, !dbg !2321
  %29 = shl i64 %28, 4, !dbg !2322
  call void @llvm.dbg.value(metadata ptr %26, metadata !1694, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i64 %29, metadata !1698, metadata !DIExpression()), !dbg !2323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2325
  %30 = load i64, ptr %5, align 8, !dbg !2326, !tbaa !2221
  %31 = trunc i64 %30 to i32, !dbg !2326
  store i32 %31, ptr @nslots, align 4, !dbg !2327, !tbaa !820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2328
  br label %32, !dbg !2329

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2293
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2280, metadata !DIExpression()), !dbg !2293
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2330
  %36 = load i64, ptr %35, align 8, !dbg !2331, !tbaa !2249
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2286, metadata !DIExpression()), !dbg !2332
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2333
  %38 = load ptr, ptr %37, align 8, !dbg !2333, !tbaa !2237
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2288, metadata !DIExpression()), !dbg !2332
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2334
  %40 = load i32, ptr %39, align 4, !dbg !2334, !tbaa !1530
  %41 = or i32 %40, 1, !dbg !2335
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2289, metadata !DIExpression()), !dbg !2332
  %42 = load i32, ptr %3, align 8, !dbg !2336, !tbaa !1480
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2337
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2338
  %45 = load ptr, ptr %44, align 8, !dbg !2338, !tbaa !1551
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2339
  %47 = load ptr, ptr %46, align 8, !dbg !2339, !tbaa !1554
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2340
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2290, metadata !DIExpression()), !dbg !2332
  %49 = icmp ugt i64 %36, %48, !dbg !2341
  br i1 %49, label %60, label %50, !dbg !2343

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2286, metadata !DIExpression()), !dbg !2332
  store i64 %51, ptr %35, align 8, !dbg !2346, !tbaa !2249
  %52 = icmp eq ptr %38, @slot0, !dbg !2347
  br i1 %52, label %54, label %53, !dbg !2349

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2350
  br label %54, !dbg !2350

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2351
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2288, metadata !DIExpression()), !dbg !2332
  store ptr %55, ptr %37, align 8, !dbg !2352, !tbaa !2237
  %56 = load i32, ptr %3, align 8, !dbg !2353, !tbaa !1480
  %57 = load ptr, ptr %44, align 8, !dbg !2354, !tbaa !1551
  %58 = load ptr, ptr %46, align 8, !dbg !2355, !tbaa !1554
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2356
  br label %60, !dbg !2357

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2332
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2288, metadata !DIExpression()), !dbg !2332
  store i32 %7, ptr %6, align 4, !dbg !2358, !tbaa !820
  ret ptr %61, !dbg !2359
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2360 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()), !dbg !2367
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2365, metadata !DIExpression()), !dbg !2367
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2366, metadata !DIExpression()), !dbg !2367
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2368
  ret ptr %4, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2370 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 0, metadata !2266, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata ptr %0, metadata !2267, metadata !DIExpression()), !dbg !2374
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2376
  ret ptr %2, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2378 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2382, metadata !DIExpression()), !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i64 %1, metadata !2366, metadata !DIExpression()), !dbg !2385
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2387
  ret ptr %3, !dbg !2388
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2389 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2396, metadata !DIExpression(), metadata !2397, metadata ptr %4, metadata !DIExpression()), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2393, metadata !DIExpression()), !dbg !2398
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2395, metadata !DIExpression()), !dbg !2398
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2412, !alias.scope !2400, !DIAssignID !2413
  call void @llvm.dbg.assign(metadata i8 0, metadata !2396, metadata !DIExpression(), metadata !2413, metadata ptr %4, metadata !DIExpression()), !dbg !2398
  %5 = icmp eq i32 %1, 10, !dbg !2414
  br i1 %5, label %6, label %7, !dbg !2416

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2417, !noalias !2400
  unreachable, !dbg !2417

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2418, !tbaa !1480, !alias.scope !2400, !DIAssignID !2419
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2396, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2419, metadata ptr %4, metadata !DIExpression()), !dbg !2398
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2420
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2421
  ret ptr %8, !dbg !2422
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2423 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2432
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2431, metadata !DIExpression(), metadata !2432, metadata ptr %5, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2428, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2429, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2435), !dbg !2438
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2409, metadata !DIExpression()), !dbg !2441
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2441, !alias.scope !2435, !DIAssignID !2442
  call void @llvm.dbg.assign(metadata i8 0, metadata !2431, metadata !DIExpression(), metadata !2442, metadata ptr %5, metadata !DIExpression()), !dbg !2433
  %6 = icmp eq i32 %1, 10, !dbg !2443
  br i1 %6, label %7, label %8, !dbg !2444

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2445, !noalias !2435
  unreachable, !dbg !2445

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2446, !tbaa !1480, !alias.scope !2435, !DIAssignID !2447
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2447, metadata ptr %5, metadata !DIExpression()), !dbg !2433
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2448
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2449
  ret ptr %9, !dbg !2450
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2451 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2457
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2455, metadata !DIExpression()), !dbg !2458
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2456, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2396, metadata !DIExpression(), metadata !2457, metadata ptr %3, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 0, metadata !2393, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata ptr %1, metadata !2395, metadata !DIExpression()), !dbg !2459
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2409, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2468, !alias.scope !2462, !DIAssignID !2469
  call void @llvm.dbg.assign(metadata i8 0, metadata !2396, metadata !DIExpression(), metadata !2469, metadata ptr %3, metadata !DIExpression()), !dbg !2459
  %4 = icmp eq i32 %0, 10, !dbg !2470
  br i1 %4, label %5, label %6, !dbg !2471

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2472, !noalias !2462
  unreachable, !dbg !2472

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2473, !tbaa !1480, !alias.scope !2462, !DIAssignID !2474
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2396, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2474, metadata ptr %3, metadata !DIExpression()), !dbg !2459
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2475
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2476
  ret ptr %7, !dbg !2477
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2478 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2485
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2482, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2483, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2484, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2431, metadata !DIExpression(), metadata !2485, metadata ptr %4, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 0, metadata !2427, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr %1, metadata !2429, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %2, metadata !2430, metadata !DIExpression()), !dbg !2487
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2490), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2409, metadata !DIExpression()), !dbg !2496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2496, !alias.scope !2490, !DIAssignID !2497
  call void @llvm.dbg.assign(metadata i8 0, metadata !2431, metadata !DIExpression(), metadata !2497, metadata ptr %4, metadata !DIExpression()), !dbg !2487
  %5 = icmp eq i32 %0, 10, !dbg !2498
  br i1 %5, label %6, label %7, !dbg !2499

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2500, !noalias !2490
  unreachable, !dbg !2500

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2501, !tbaa !1480, !alias.scope !2490, !DIAssignID !2502
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2431, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2502, metadata ptr %4, metadata !DIExpression()), !dbg !2487
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2503
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2504
  ret ptr %8, !dbg !2505
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2506 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2514, metadata ptr %4, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2517, !tbaa.struct !2518, !DIAssignID !2519
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2519, metadata ptr %4, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1498, metadata !DIExpression()), !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2520
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1500, metadata !DIExpression()), !dbg !2520
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2522
  %6 = lshr i8 %2, 5, !dbg !2523
  %7 = zext nneg i8 %6 to i64, !dbg !2523
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2524
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1501, metadata !DIExpression()), !dbg !2520
  %9 = and i8 %2, 31, !dbg !2525
  %10 = zext nneg i8 %9 to i32, !dbg !2525
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1503, metadata !DIExpression()), !dbg !2520
  %11 = load i32, ptr %8, align 4, !dbg !2526, !tbaa !820
  %12 = lshr i32 %11, %10, !dbg !2527
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1504, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2520
  %13 = and i32 %12, 1, !dbg !2528
  %14 = xor i32 %13, 1, !dbg !2528
  %15 = shl nuw i32 %14, %10, !dbg !2529
  %16 = xor i32 %15, %11, !dbg !2530
  store i32 %16, ptr %8, align 4, !dbg !2530, !tbaa !820
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2531
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2532
  ret ptr %17, !dbg !2533
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2534 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2540
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2541
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2540, metadata ptr %3, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i64 -1, metadata !2511, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 %1, metadata !2512, metadata !DIExpression()), !dbg !2542
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2545, !tbaa.struct !2518, !DIAssignID !2546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2546, metadata ptr %3, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1498, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !2547
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2549
  %5 = lshr i8 %1, 5, !dbg !2550
  %6 = zext nneg i8 %5 to i64, !dbg !2550
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %7, metadata !1501, metadata !DIExpression()), !dbg !2547
  %8 = and i8 %1, 31, !dbg !2552
  %9 = zext nneg i8 %8 to i32, !dbg !2552
  call void @llvm.dbg.value(metadata i32 %9, metadata !1503, metadata !DIExpression()), !dbg !2547
  %10 = load i32, ptr %7, align 4, !dbg !2553, !tbaa !820
  %11 = lshr i32 %10, %9, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %11, metadata !1504, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2547
  %12 = and i32 %11, 1, !dbg !2555
  %13 = xor i32 %12, 1, !dbg !2555
  %14 = shl nuw i32 %13, %9, !dbg !2556
  %15 = xor i32 %14, %10, !dbg !2557
  store i32 %15, ptr %7, align 4, !dbg !2557, !tbaa !820
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2559
  ret ptr %16, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2561 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2564
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2563, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %0, metadata !2538, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !2539, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2564, metadata ptr %2, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 -1, metadata !2511, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !2512, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2571, !tbaa.struct !2518, !DIAssignID !2572
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2572, metadata ptr %2, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata ptr %2, metadata !1497, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2573
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %3, metadata !1501, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2573
  %4 = load i32, ptr %3, align 4, !dbg !2576, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2573
  %5 = or i32 %4, 67108864, !dbg !2577
  store i32 %5, ptr %3, align 4, !dbg !2577, !tbaa !820
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2578
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2579
  ret ptr %6, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2581 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2585
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2583, metadata !DIExpression()), !dbg !2586
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2585, metadata ptr %3, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %0, metadata !2510, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %1, metadata !2511, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !2512, metadata !DIExpression()), !dbg !2587
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2590, !tbaa.struct !2518, !DIAssignID !2591
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2513, metadata !DIExpression(), metadata !2591, metadata ptr %3, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2592
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2594
  call void @llvm.dbg.value(metadata ptr %4, metadata !1501, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2592
  %5 = load i32, ptr %4, align 4, !dbg !2595, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2592
  %6 = or i32 %5, 67108864, !dbg !2596
  store i32 %6, ptr %4, align 4, !dbg !2596, !tbaa !820
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2597
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2598
  ret ptr %7, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2600 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2606
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2605, metadata !DIExpression(), metadata !2606, metadata ptr %4, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2608
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2603, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2604, metadata !DIExpression()), !dbg !2607
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2611
  %5 = icmp eq i32 %1, 10, !dbg !2612
  br i1 %5, label %6, label %7, !dbg !2613

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2614, !noalias !2615
  unreachable, !dbg !2614

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2611
  store i32 %1, ptr %4, align 8, !dbg !2618, !tbaa.struct !2518, !DIAssignID !2619
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2618
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2618
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2605, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2619, metadata ptr %4, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2605, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2620, metadata ptr %8, metadata !DIExpression()), !dbg !2607
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2621
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2623
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1501, metadata !DIExpression()), !dbg !2621
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2621
  %10 = load i32, ptr %9, align 4, !dbg !2624, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2621
  %11 = or i32 %10, 67108864, !dbg !2625
  store i32 %11, ptr %9, align 4, !dbg !2625, !tbaa !820, !DIAssignID !2626
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2605, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2626, metadata ptr %9, metadata !DIExpression()), !dbg !2607
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2627
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2628
  ret ptr %12, !dbg !2629
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2630 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2638
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2639
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2635, metadata !DIExpression()), !dbg !2639
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2636, metadata !DIExpression()), !dbg !2639
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2638, metadata ptr %5, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %1, metadata !2646, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %2, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %3, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64 -1, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2653, !tbaa.struct !2518, !DIAssignID !2654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2654, metadata ptr %5, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2655, metadata ptr undef, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2656
  store i32 10, ptr %5, align 8, !dbg !2658, !tbaa !1480, !DIAssignID !2659
  call void @llvm.dbg.assign(metadata i32 10, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2659, metadata ptr %5, metadata !DIExpression()), !dbg !2650
  %6 = icmp ne ptr %1, null, !dbg !2660
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2661
  br i1 %8, label %10, label %9, !dbg !2661

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2662
  unreachable, !dbg !2662

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2663
  store ptr %1, ptr %11, align 8, !dbg !2664, !tbaa !1551, !DIAssignID !2665
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2665, metadata ptr %11, metadata !DIExpression()), !dbg !2650
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2666
  store ptr %2, ptr %12, align 8, !dbg !2667, !tbaa !1554, !DIAssignID !2668
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2668, metadata ptr %12, metadata !DIExpression()), !dbg !2650
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2669
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2670
  ret ptr %13, !dbg !2671
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2641 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2672
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2672, metadata ptr %6, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2646, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2647, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2648, metadata !DIExpression()), !dbg !2673
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2649, metadata !DIExpression()), !dbg !2673
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2675, !tbaa.struct !2518, !DIAssignID !2676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2676, metadata ptr %6, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2677, metadata ptr undef, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %6, metadata !1537, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata ptr %6, metadata !1537, metadata !DIExpression()), !dbg !2678
  store i32 10, ptr %6, align 8, !dbg !2680, !tbaa !1480, !DIAssignID !2681
  call void @llvm.dbg.assign(metadata i32 10, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2681, metadata ptr %6, metadata !DIExpression()), !dbg !2673
  %7 = icmp ne ptr %1, null, !dbg !2682
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2683
  br i1 %9, label %11, label %10, !dbg !2683

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2684
  unreachable, !dbg !2684

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2685
  store ptr %1, ptr %12, align 8, !dbg !2686, !tbaa !1551, !DIAssignID !2687
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2687, metadata ptr %12, metadata !DIExpression()), !dbg !2673
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2688
  store ptr %2, ptr %13, align 8, !dbg !2689, !tbaa !1554, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2690, metadata ptr %13, metadata !DIExpression()), !dbg !2673
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2691
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2692
  ret ptr %14, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2694 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2701
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2699, metadata !DIExpression()), !dbg !2702
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2634, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2635, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %2, metadata !2637, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2701, metadata ptr %4, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %2, metadata !2648, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 -1, metadata !2649, metadata !DIExpression()), !dbg !2705
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2708, !tbaa.struct !2518, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2709, metadata ptr %4, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2710, metadata ptr undef, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %0, metadata !1538, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %1, metadata !1539, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !2711
  store i32 10, ptr %4, align 8, !dbg !2713, !tbaa !1480, !DIAssignID !2714
  call void @llvm.dbg.assign(metadata i32 10, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2714, metadata ptr %4, metadata !DIExpression()), !dbg !2705
  %5 = icmp ne ptr %0, null, !dbg !2715
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2716
  br i1 %7, label %9, label %8, !dbg !2716

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2717
  unreachable, !dbg !2717

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2718
  store ptr %0, ptr %10, align 8, !dbg !2719, !tbaa !1551, !DIAssignID !2720
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2720, metadata ptr %10, metadata !DIExpression()), !dbg !2705
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2721
  store ptr %1, ptr %11, align 8, !dbg !2722, !tbaa !1554, !DIAssignID !2723
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2723, metadata ptr %11, metadata !DIExpression()), !dbg !2705
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2724
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2725
  ret ptr %12, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2727 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2731, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2732, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2733, metadata !DIExpression()), !dbg !2736
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2735, metadata ptr %5, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %1, metadata !2647, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %2, metadata !2648, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %3, metadata !2649, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2740, !tbaa.struct !2518, !DIAssignID !2741
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(), metadata !2741, metadata ptr %5, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2742, metadata ptr undef, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %0, metadata !1538, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %1, metadata !1539, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2743
  store i32 10, ptr %5, align 8, !dbg !2745, !tbaa !1480, !DIAssignID !2746
  call void @llvm.dbg.assign(metadata i32 10, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2746, metadata ptr %5, metadata !DIExpression()), !dbg !2737
  %6 = icmp ne ptr %0, null, !dbg !2747
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2748
  br i1 %8, label %10, label %9, !dbg !2748

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2749
  unreachable, !dbg !2749

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2750
  store ptr %0, ptr %11, align 8, !dbg !2751, !tbaa !1551, !DIAssignID !2752
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2752, metadata ptr %11, metadata !DIExpression()), !dbg !2737
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2753
  store ptr %1, ptr %12, align 8, !dbg !2754, !tbaa !1554, !DIAssignID !2755
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2640, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2755, metadata ptr %12, metadata !DIExpression()), !dbg !2737
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2756
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2757
  ret ptr %13, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2759 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2765, metadata !DIExpression()), !dbg !2766
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2767
  ret ptr %4, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2769 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2773, metadata !DIExpression()), !dbg !2775
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2765, metadata !DIExpression()), !dbg !2776
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2778
  ret ptr %3, !dbg !2779
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2780 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %0, metadata !2763, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %1, metadata !2764, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 -1, metadata !2765, metadata !DIExpression()), !dbg !2787
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2789
  ret ptr %3, !dbg !2790
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2791 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2795, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 0, metadata !2763, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata ptr %0, metadata !2764, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 -1, metadata !2765, metadata !DIExpression()), !dbg !2799
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2801
  ret ptr %2, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2803 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2842, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2843, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2844, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2845, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2846, metadata !DIExpression()), !dbg !2848
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2847, metadata !DIExpression()), !dbg !2848
  %7 = icmp eq ptr %1, null, !dbg !2849
  br i1 %7, label %10, label %8, !dbg !2851

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2852
  br label %12, !dbg !2852

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.70, ptr noundef %2, ptr noundef %3) #37, !dbg !2853
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.3.72, i32 noundef 5) #37, !dbg !2854
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2854
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2855
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.5.74, i32 noundef 5) #37, !dbg !2856
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.75) #37, !dbg !2856
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2857
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
  ], !dbg !2858

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.7.76, i32 noundef 5) #37, !dbg !2859
  %21 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !762
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2859
  br label %147, !dbg !2861

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.8.77, i32 noundef 5) #37, !dbg !2862
  %25 = load ptr, ptr %4, align 8, !dbg !2862, !tbaa !762
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2862
  %27 = load ptr, ptr %26, align 8, !dbg !2862, !tbaa !762
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2862
  br label %147, !dbg !2863

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.9.78, i32 noundef 5) #37, !dbg !2864
  %31 = load ptr, ptr %4, align 8, !dbg !2864, !tbaa !762
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2864
  %33 = load ptr, ptr %32, align 8, !dbg !2864, !tbaa !762
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2864
  %35 = load ptr, ptr %34, align 8, !dbg !2864, !tbaa !762
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2864
  br label %147, !dbg !2865

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.10.79, i32 noundef 5) #37, !dbg !2866
  %39 = load ptr, ptr %4, align 8, !dbg !2866, !tbaa !762
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2866
  %41 = load ptr, ptr %40, align 8, !dbg !2866, !tbaa !762
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2866
  %43 = load ptr, ptr %42, align 8, !dbg !2866, !tbaa !762
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2866
  %45 = load ptr, ptr %44, align 8, !dbg !2866, !tbaa !762
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2866
  br label %147, !dbg !2867

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.11.80, i32 noundef 5) #37, !dbg !2868
  %49 = load ptr, ptr %4, align 8, !dbg !2868, !tbaa !762
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2868
  %51 = load ptr, ptr %50, align 8, !dbg !2868, !tbaa !762
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2868
  %53 = load ptr, ptr %52, align 8, !dbg !2868, !tbaa !762
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2868
  %55 = load ptr, ptr %54, align 8, !dbg !2868, !tbaa !762
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2868
  %57 = load ptr, ptr %56, align 8, !dbg !2868, !tbaa !762
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2868
  br label %147, !dbg !2869

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.12.81, i32 noundef 5) #37, !dbg !2870
  %61 = load ptr, ptr %4, align 8, !dbg !2870, !tbaa !762
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2870
  %63 = load ptr, ptr %62, align 8, !dbg !2870, !tbaa !762
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2870
  %65 = load ptr, ptr %64, align 8, !dbg !2870, !tbaa !762
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2870
  %67 = load ptr, ptr %66, align 8, !dbg !2870, !tbaa !762
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2870
  %69 = load ptr, ptr %68, align 8, !dbg !2870, !tbaa !762
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2870
  %71 = load ptr, ptr %70, align 8, !dbg !2870, !tbaa !762
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2870
  br label %147, !dbg !2871

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.13.82, i32 noundef 5) #37, !dbg !2872
  %75 = load ptr, ptr %4, align 8, !dbg !2872, !tbaa !762
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2872
  %77 = load ptr, ptr %76, align 8, !dbg !2872, !tbaa !762
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2872
  %79 = load ptr, ptr %78, align 8, !dbg !2872, !tbaa !762
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2872
  %81 = load ptr, ptr %80, align 8, !dbg !2872, !tbaa !762
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2872
  %83 = load ptr, ptr %82, align 8, !dbg !2872, !tbaa !762
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2872
  %85 = load ptr, ptr %84, align 8, !dbg !2872, !tbaa !762
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2872
  %87 = load ptr, ptr %86, align 8, !dbg !2872, !tbaa !762
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2872
  br label %147, !dbg !2873

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.14.83, i32 noundef 5) #37, !dbg !2874
  %91 = load ptr, ptr %4, align 8, !dbg !2874, !tbaa !762
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2874
  %93 = load ptr, ptr %92, align 8, !dbg !2874, !tbaa !762
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2874
  %95 = load ptr, ptr %94, align 8, !dbg !2874, !tbaa !762
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2874
  %97 = load ptr, ptr %96, align 8, !dbg !2874, !tbaa !762
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2874
  %99 = load ptr, ptr %98, align 8, !dbg !2874, !tbaa !762
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2874
  %101 = load ptr, ptr %100, align 8, !dbg !2874, !tbaa !762
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2874
  %103 = load ptr, ptr %102, align 8, !dbg !2874, !tbaa !762
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2874
  %105 = load ptr, ptr %104, align 8, !dbg !2874, !tbaa !762
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2874
  br label %147, !dbg !2875

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.15.84, i32 noundef 5) #37, !dbg !2876
  %109 = load ptr, ptr %4, align 8, !dbg !2876, !tbaa !762
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2876
  %111 = load ptr, ptr %110, align 8, !dbg !2876, !tbaa !762
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2876
  %113 = load ptr, ptr %112, align 8, !dbg !2876, !tbaa !762
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2876
  %115 = load ptr, ptr %114, align 8, !dbg !2876, !tbaa !762
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2876
  %117 = load ptr, ptr %116, align 8, !dbg !2876, !tbaa !762
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2876
  %119 = load ptr, ptr %118, align 8, !dbg !2876, !tbaa !762
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2876
  %121 = load ptr, ptr %120, align 8, !dbg !2876, !tbaa !762
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2876
  %123 = load ptr, ptr %122, align 8, !dbg !2876, !tbaa !762
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2876
  %125 = load ptr, ptr %124, align 8, !dbg !2876, !tbaa !762
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2876
  br label %147, !dbg !2877

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.16.85, i32 noundef 5) #37, !dbg !2878
  %129 = load ptr, ptr %4, align 8, !dbg !2878, !tbaa !762
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2878
  %131 = load ptr, ptr %130, align 8, !dbg !2878, !tbaa !762
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2878
  %133 = load ptr, ptr %132, align 8, !dbg !2878, !tbaa !762
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2878
  %135 = load ptr, ptr %134, align 8, !dbg !2878, !tbaa !762
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2878
  %137 = load ptr, ptr %136, align 8, !dbg !2878, !tbaa !762
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2878
  %139 = load ptr, ptr %138, align 8, !dbg !2878, !tbaa !762
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2878
  %141 = load ptr, ptr %140, align 8, !dbg !2878, !tbaa !762
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2878
  %143 = load ptr, ptr %142, align 8, !dbg !2878, !tbaa !762
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2878
  %145 = load ptr, ptr %144, align 8, !dbg !2878, !tbaa !762
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2878
  br label %147, !dbg !2879

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2885, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2886, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2887, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2888, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2889, metadata !DIExpression()), !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2890, metadata !DIExpression()), !dbg !2891
  br label %6, !dbg !2892

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2890, metadata !DIExpression()), !dbg !2891
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2895
  %9 = load ptr, ptr %8, align 8, !dbg !2895, !tbaa !762
  %10 = icmp eq ptr %9, null, !dbg !2897
  %11 = add i64 %7, 1, !dbg !2898
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2890, metadata !DIExpression()), !dbg !2891
  br i1 %10, label %12, label %6, !dbg !2897, !llvm.loop !2899

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2901
  ret void, !dbg !2902
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2903 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2922
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2920, metadata !DIExpression(), metadata !2922, metadata ptr %6, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2915, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2916, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2917, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2924
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2919, metadata !DIExpression()), !dbg !2923
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2919, metadata !DIExpression()), !dbg !2923
  %10 = icmp ult i32 %9, 41, !dbg !2925
  br i1 %10, label %11, label %16, !dbg !2925

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2925
  %13 = zext nneg i32 %9 to i64, !dbg !2925
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2925
  %15 = add nuw nsw i32 %9, 8, !dbg !2925
  store i32 %15, ptr %4, align 8, !dbg !2925
  br label %19, !dbg !2925

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2925
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2925
  store ptr %18, ptr %7, align 8, !dbg !2925
  br label %19, !dbg !2925

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2925
  %22 = load ptr, ptr %21, align 8, !dbg !2925
  store ptr %22, ptr %6, align 16, !dbg !2928, !tbaa !762
  %23 = icmp eq ptr %22, null, !dbg !2929
  br i1 %23, label %128, label %24, !dbg !2930

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2919, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2919, metadata !DIExpression()), !dbg !2923
  %25 = icmp ult i32 %20, 41, !dbg !2925
  br i1 %25, label %29, label %26, !dbg !2925

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2925
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2925
  store ptr %28, ptr %7, align 8, !dbg !2925
  br label %34, !dbg !2925

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2925
  %31 = zext nneg i32 %20 to i64, !dbg !2925
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2925
  %33 = add nuw nsw i32 %20, 8, !dbg !2925
  store i32 %33, ptr %4, align 8, !dbg !2925
  br label %34, !dbg !2925

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2925
  %37 = load ptr, ptr %36, align 8, !dbg !2925
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2931
  store ptr %37, ptr %38, align 8, !dbg !2928, !tbaa !762
  %39 = icmp eq ptr %37, null, !dbg !2929
  br i1 %39, label %128, label %40, !dbg !2930

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2919, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2919, metadata !DIExpression()), !dbg !2923
  %41 = icmp ult i32 %35, 41, !dbg !2925
  br i1 %41, label %45, label %42, !dbg !2925

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2925
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2925
  store ptr %44, ptr %7, align 8, !dbg !2925
  br label %50, !dbg !2925

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2925
  %47 = zext nneg i32 %35 to i64, !dbg !2925
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2925
  %49 = add nuw nsw i32 %35, 8, !dbg !2925
  store i32 %49, ptr %4, align 8, !dbg !2925
  br label %50, !dbg !2925

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2925
  %53 = load ptr, ptr %52, align 8, !dbg !2925
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2931
  store ptr %53, ptr %54, align 16, !dbg !2928, !tbaa !762
  %55 = icmp eq ptr %53, null, !dbg !2929
  br i1 %55, label %128, label %56, !dbg !2930

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2919, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2919, metadata !DIExpression()), !dbg !2923
  %57 = icmp ult i32 %51, 41, !dbg !2925
  br i1 %57, label %61, label %58, !dbg !2925

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2925
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2925
  store ptr %60, ptr %7, align 8, !dbg !2925
  br label %66, !dbg !2925

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2925
  %63 = zext nneg i32 %51 to i64, !dbg !2925
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2925
  %65 = add nuw nsw i32 %51, 8, !dbg !2925
  store i32 %65, ptr %4, align 8, !dbg !2925
  br label %66, !dbg !2925

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2925
  %69 = load ptr, ptr %68, align 8, !dbg !2925
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2931
  store ptr %69, ptr %70, align 8, !dbg !2928, !tbaa !762
  %71 = icmp eq ptr %69, null, !dbg !2929
  br i1 %71, label %128, label %72, !dbg !2930

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2919, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2919, metadata !DIExpression()), !dbg !2923
  %73 = icmp ult i32 %67, 41, !dbg !2925
  br i1 %73, label %77, label %74, !dbg !2925

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2925
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2925
  store ptr %76, ptr %7, align 8, !dbg !2925
  br label %82, !dbg !2925

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2925
  %79 = zext nneg i32 %67 to i64, !dbg !2925
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2925
  %81 = add nuw nsw i32 %67, 8, !dbg !2925
  store i32 %81, ptr %4, align 8, !dbg !2925
  br label %82, !dbg !2925

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2925
  %85 = load ptr, ptr %84, align 8, !dbg !2925
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2931
  store ptr %85, ptr %86, align 16, !dbg !2928, !tbaa !762
  %87 = icmp eq ptr %85, null, !dbg !2929
  br i1 %87, label %128, label %88, !dbg !2930

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2919, metadata !DIExpression()), !dbg !2923
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2919, metadata !DIExpression()), !dbg !2923
  %89 = icmp ult i32 %83, 41, !dbg !2925
  br i1 %89, label %93, label %90, !dbg !2925

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2925
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2925
  store ptr %92, ptr %7, align 8, !dbg !2925
  br label %98, !dbg !2925

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2925
  %95 = zext nneg i32 %83 to i64, !dbg !2925
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2925
  %97 = add nuw nsw i32 %83, 8, !dbg !2925
  store i32 %97, ptr %4, align 8, !dbg !2925
  br label %98, !dbg !2925

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2925
  %100 = load ptr, ptr %99, align 8, !dbg !2925
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2931
  store ptr %100, ptr %101, align 8, !dbg !2928, !tbaa !762
  %102 = icmp eq ptr %100, null, !dbg !2929
  br i1 %102, label %128, label %103, !dbg !2930

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2919, metadata !DIExpression()), !dbg !2923
  %104 = load ptr, ptr %7, align 8, !dbg !2925
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2925
  store ptr %105, ptr %7, align 8, !dbg !2925
  %106 = load ptr, ptr %104, align 8, !dbg !2925
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2931
  store ptr %106, ptr %107, align 16, !dbg !2928, !tbaa !762
  %108 = icmp eq ptr %106, null, !dbg !2929
  br i1 %108, label %128, label %109, !dbg !2930

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2919, metadata !DIExpression()), !dbg !2923
  %110 = load ptr, ptr %7, align 8, !dbg !2925
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2925
  store ptr %111, ptr %7, align 8, !dbg !2925
  %112 = load ptr, ptr %110, align 8, !dbg !2925
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2931
  store ptr %112, ptr %113, align 8, !dbg !2928, !tbaa !762
  %114 = icmp eq ptr %112, null, !dbg !2929
  br i1 %114, label %128, label %115, !dbg !2930

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2919, metadata !DIExpression()), !dbg !2923
  %116 = load ptr, ptr %7, align 8, !dbg !2925
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2925
  store ptr %117, ptr %7, align 8, !dbg !2925
  %118 = load ptr, ptr %116, align 8, !dbg !2925
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2931
  store ptr %118, ptr %119, align 16, !dbg !2928, !tbaa !762
  %120 = icmp eq ptr %118, null, !dbg !2929
  br i1 %120, label %128, label %121, !dbg !2930

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2919, metadata !DIExpression()), !dbg !2923
  %122 = load ptr, ptr %7, align 8, !dbg !2925
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2925
  store ptr %123, ptr %7, align 8, !dbg !2925
  %124 = load ptr, ptr %122, align 8, !dbg !2925
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2931
  store ptr %124, ptr %125, align 8, !dbg !2928, !tbaa !762
  %126 = icmp eq ptr %124, null, !dbg !2929
  %127 = select i1 %126, i64 9, i64 10, !dbg !2930
  br label %128, !dbg !2930

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2932
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2933
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2934
  ret void, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2935 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2948
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2943, metadata !DIExpression(), metadata !2948, metadata ptr %5, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2940, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !2949
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2942, metadata !DIExpression()), !dbg !2949
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2950
  call void @llvm.va_start(ptr nonnull %5), !dbg !2951
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2952
  call void @llvm.va_end(ptr nonnull %5), !dbg !2953
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2954
  ret void, !dbg !2954
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2955 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2956, !tbaa !762
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %1), !dbg !2956
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.17.90, i32 noundef 5) #37, !dbg !2957
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.91) #37, !dbg !2957
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.19.92, i32 noundef 5) #37, !dbg !2958
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2958
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.22.93, i32 noundef 5) #37, !dbg !2959
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2959
  ret void, !dbg !2960
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2961 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2966, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i64 %2, metadata !2974, metadata !DIExpression()), !dbg !2975
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !2983
  %5 = icmp eq ptr %4, null, !dbg !2985
  br i1 %5, label %6, label %7, !dbg !2987

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2988
  unreachable, !dbg !2988

7:                                                ; preds = %3
  ret ptr %4, !dbg !2989
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2971 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2973, metadata !DIExpression()), !dbg !2990
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2974, metadata !DIExpression()), !dbg !2990
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2991
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !2992
  %5 = icmp eq ptr %4, null, !dbg !2994
  br i1 %5, label %6, label %7, !dbg !2995

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2996
  unreachable, !dbg !2996

7:                                                ; preds = %3
  ret ptr %4, !dbg !2997
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2998 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3002, metadata !DIExpression()), !dbg !3003
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !3005
  %3 = icmp eq ptr %2, null, !dbg !3007
  br i1 %3, label %4, label %5, !dbg !3008

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3009
  unreachable, !dbg !3009

5:                                                ; preds = %1
  ret ptr %2, !dbg !3010
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3011 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3012 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %0, metadata !3018, metadata !DIExpression()), !dbg !3022
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3024
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !3025
  %3 = icmp eq ptr %2, null, !dbg !3027
  br i1 %3, label %4, label %5, !dbg !3028

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3029
  unreachable, !dbg !3029

5:                                                ; preds = %1
  ret ptr %2, !dbg !3030
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3031 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3035, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %0, metadata !3002, metadata !DIExpression()), !dbg !3037
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !3040
  %3 = icmp eq ptr %2, null, !dbg !3042
  br i1 %3, label %4, label %5, !dbg !3043

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3044
  unreachable, !dbg !3044

5:                                                ; preds = %1
  ret ptr %2, !dbg !3045
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3046 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3052
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3058
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3060
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3062
  %5 = icmp eq ptr %4, null, !dbg !3064
  br i1 %5, label %6, label %7, !dbg !3065

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3066
  unreachable, !dbg !3066

7:                                                ; preds = %2
  ret ptr %4, !dbg !3067
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3068 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3069 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3073, metadata !DIExpression()), !dbg !3075
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3082
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3084
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3086
  %5 = icmp eq ptr %4, null, !dbg !3088
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3090
  unreachable, !dbg !3090

7:                                                ; preds = %2
  ret ptr %4, !dbg !3091
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3092 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %2, metadata !3104, metadata !DIExpression()), !dbg !3105
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3107
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3108
  %5 = icmp eq ptr %4, null, !dbg !3110
  br i1 %5, label %6, label %7, !dbg !3111

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3112
  unreachable, !dbg !3112

7:                                                ; preds = %3
  ret ptr %4, !dbg !3113
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3114 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr null, metadata !2970, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %0, metadata !2973, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()), !dbg !3121
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3124
  %4 = icmp eq ptr %3, null, !dbg !3126
  br i1 %4, label %5, label %6, !dbg !3127

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3128
  unreachable, !dbg !3128

6:                                                ; preds = %2
  ret ptr %3, !dbg !3129
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3130 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3134, metadata !DIExpression()), !dbg !3136
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr null, metadata !3096, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata ptr null, metadata !3100, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %0, metadata !3103, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3139
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3142
  %4 = icmp eq ptr %3, null, !dbg !3144
  br i1 %4, label %5, label %6, !dbg !3145

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3146
  unreachable, !dbg !3146

6:                                                ; preds = %2
  ret ptr %3, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3148 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %1, metadata !698, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 1, metadata !699, metadata !DIExpression()), !dbg !3155
  %3 = load i64, ptr %1, align 8, !dbg !3157, !tbaa !2221
  call void @llvm.dbg.value(metadata i64 %3, metadata !700, metadata !DIExpression()), !dbg !3155
  %4 = icmp eq ptr %0, null, !dbg !3158
  br i1 %4, label %5, label %8, !dbg !3160

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3161
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3164
  br label %15, !dbg !3164

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3165
  %10 = add nuw i64 %9, 1, !dbg !3165
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3165
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3165
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %13, metadata !700, metadata !DIExpression()), !dbg !3155
  br i1 %12, label %14, label %15, !dbg !3168

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3169
  unreachable, !dbg !3169

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3155
  call void @llvm.dbg.value(metadata i64 %16, metadata !700, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 %16, metadata !2973, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 1, metadata !2974, metadata !DIExpression()), !dbg !3170
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3172
  call void @llvm.dbg.value(metadata ptr %17, metadata !2978, metadata !DIExpression()), !dbg !3173
  %18 = icmp eq ptr %17, null, !dbg !3175
  br i1 %18, label %19, label %20, !dbg !3176

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3177
  unreachable, !dbg !3177

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !697, metadata !DIExpression()), !dbg !3155
  store i64 %16, ptr %1, align 8, !dbg !3178, !tbaa !2221
  ret ptr %17, !dbg !3179
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !692 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !698, metadata !DIExpression()), !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !699, metadata !DIExpression()), !dbg !3180
  %4 = load i64, ptr %1, align 8, !dbg !3181, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !700, metadata !DIExpression()), !dbg !3180
  %5 = icmp eq ptr %0, null, !dbg !3182
  br i1 %5, label %6, label %13, !dbg !3183

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3184
  br i1 %7, label %8, label %20, !dbg !3185

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3186
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !700, metadata !DIExpression()), !dbg !3180
  %10 = icmp ugt i64 %2, 128, !dbg !3188
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !700, metadata !DIExpression()), !dbg !3180
  br label %20, !dbg !3190

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3191
  %15 = add nuw i64 %14, 1, !dbg !3191
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3191
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3191
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !700, metadata !DIExpression()), !dbg !3180
  br i1 %17, label %19, label %20, !dbg !3192

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3193
  unreachable, !dbg !3193

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !700, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr %0, metadata !2970, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %21, metadata !2973, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i64 %2, metadata !2974, metadata !DIExpression()), !dbg !3194
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3196
  call void @llvm.dbg.value(metadata ptr %22, metadata !2978, metadata !DIExpression()), !dbg !3197
  %23 = icmp eq ptr %22, null, !dbg !3199
  br i1 %23, label %24, label %25, !dbg !3200

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3201
  unreachable, !dbg !3201

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !697, metadata !DIExpression()), !dbg !3180
  store i64 %21, ptr %1, align 8, !dbg !3202, !tbaa !2221
  ret ptr %22, !dbg !3203
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !704 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !713, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !714, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !715, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !716, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !717, metadata !DIExpression()), !dbg !3204
  %6 = load i64, ptr %1, align 8, !dbg !3205, !tbaa !2221
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !718, metadata !DIExpression()), !dbg !3204
  %7 = ashr i64 %6, 1, !dbg !3206
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3206
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3206
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !719, metadata !DIExpression()), !dbg !3204
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !719, metadata !DIExpression()), !dbg !3204
  %12 = icmp sgt i64 %3, -1, !dbg !3209
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3211
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !719, metadata !DIExpression()), !dbg !3204
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3212
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3212
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !720, metadata !DIExpression()), !dbg !3204
  %18 = icmp slt i64 %17, 128, !dbg !3212
  %19 = select i1 %18, i64 128, i64 0, !dbg !3212
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !721, metadata !DIExpression()), !dbg !3204
  %21 = icmp eq i64 %20, 0, !dbg !3213
  br i1 %21, label %26, label %22, !dbg !3215

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !719, metadata !DIExpression()), !dbg !3204
  %24 = srem i64 %20, %4, !dbg !3218
  %25 = sub nsw i64 %20, %24, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !720, metadata !DIExpression()), !dbg !3204
  br label %26, !dbg !3220

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3204
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !720, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !719, metadata !DIExpression()), !dbg !3204
  %29 = icmp eq ptr %0, null, !dbg !3221
  br i1 %29, label %30, label %31, !dbg !3223

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3224, !tbaa !2221
  br label %31, !dbg !3225

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3226
  %33 = icmp slt i64 %32, %2, !dbg !3228
  br i1 %33, label %34, label %46, !dbg !3229

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3230
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3230
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3230
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !719, metadata !DIExpression()), !dbg !3204
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3231
  br i1 %40, label %45, label %41, !dbg !3231

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3232
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3232
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3232
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !720, metadata !DIExpression()), !dbg !3204
  br i1 %43, label %45, label %46, !dbg !3233

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3234
  unreachable, !dbg !3234

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3204
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !720, metadata !DIExpression()), !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !719, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i64 %48, metadata !3051, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %48, metadata !3057, metadata !DIExpression()), !dbg !3237
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3239
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %50, metadata !2978, metadata !DIExpression()), !dbg !3241
  %51 = icmp eq ptr %50, null, !dbg !3243
  br i1 %51, label %52, label %53, !dbg !3244

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3245
  unreachable, !dbg !3245

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !713, metadata !DIExpression()), !dbg !3204
  store i64 %47, ptr %1, align 8, !dbg !3246, !tbaa !2221
  ret ptr %50, !dbg !3247
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3248 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3250, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()), !dbg !3256
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3258
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !3259
  %3 = icmp eq ptr %2, null, !dbg !3261
  br i1 %3, label %4, label %5, !dbg !3262

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3263
  unreachable, !dbg !3263

5:                                                ; preds = %1
  ret ptr %2, !dbg !3264
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3265 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3253 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()), !dbg !3266
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()), !dbg !3266
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3268
  %4 = icmp eq ptr %3, null, !dbg !3270
  br i1 %4, label %5, label %6, !dbg !3271

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3272
  unreachable, !dbg !3272

6:                                                ; preds = %2
  ret ptr %3, !dbg !3273
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3274 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %0, metadata !3278, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 1, metadata !3281, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 1, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 1, metadata !3287, metadata !DIExpression()), !dbg !3288
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3290
  call void @llvm.dbg.value(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !3291
  %3 = icmp eq ptr %2, null, !dbg !3293
  br i1 %3, label %4, label %5, !dbg !3294

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3295
  unreachable, !dbg !3295

5:                                                ; preds = %1
  ret ptr %2, !dbg !3296
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3279 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3278, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3281, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3298
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3300
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3301
  %4 = icmp eq ptr %3, null, !dbg !3303
  br i1 %4, label %5, label %6, !dbg !3304

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3305
  unreachable, !dbg !3305

6:                                                ; preds = %2
  ret ptr %3, !dbg !3306
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3307 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3313
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3312, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3002, metadata !DIExpression()), !dbg !3314
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3316
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3317
  %4 = icmp eq ptr %3, null, !dbg !3319
  br i1 %4, label %5, label %6, !dbg !3320

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3321
  unreachable, !dbg !3321

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3322, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3332
  ret ptr %3, !dbg !3333
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3334 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3338, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3343
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3345
  call void @llvm.dbg.value(metadata ptr %3, metadata !2978, metadata !DIExpression()), !dbg !3346
  %4 = icmp eq ptr %3, null, !dbg !3348
  br i1 %4, label %5, label %6, !dbg !3349

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3350
  unreachable, !dbg !3350

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3322, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3351
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3353
  ret ptr %3, !dbg !3354
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3355 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3359, metadata !DIExpression()), !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3360, metadata !DIExpression()), !dbg !3362
  %3 = add nsw i64 %1, 1, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %3, metadata !3016, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3018, metadata !DIExpression()), !dbg !3366
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3369
  %5 = icmp eq ptr %4, null, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3372

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3373
  unreachable, !dbg !3373

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3361, metadata !DIExpression()), !dbg !3362
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3374
  store i8 0, ptr %8, align 1, !dbg !3375, !tbaa !829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3322, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i64 %1, metadata !3329, metadata !DIExpression()), !dbg !3376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3378
  ret ptr %4, !dbg !3379
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3380 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3382, metadata !DIExpression()), !dbg !3383
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3384
  %3 = add i64 %2, 1, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %0, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %3, metadata !3312, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 %3, metadata !3002, metadata !DIExpression()), !dbg !3388
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3390
  call void @llvm.dbg.value(metadata ptr %4, metadata !2978, metadata !DIExpression()), !dbg !3391
  %5 = icmp eq ptr %4, null, !dbg !3393
  br i1 %5, label %6, label %7, !dbg !3394

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3395
  unreachable, !dbg !3395

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3322, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %0, metadata !3328, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %3, metadata !3329, metadata !DIExpression()), !dbg !3396
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3398
  ret ptr %4, !dbg !3399
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3400 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3405, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3402, metadata !DIExpression()), !dbg !3406
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #37, !dbg !3405
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #37, !dbg !3405
  %3 = icmp eq i32 %1, 0, !dbg !3405
  tail call void @llvm.assume(i1 %3), !dbg !3405
  tail call void @abort() #39, !dbg !3407
  unreachable, !dbg !3407
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3408 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3451
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3447, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3451
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3453, metadata !DIExpression()), !dbg !3456
  %3 = load i32, ptr %0, align 8, !dbg !3458, !tbaa !3459
  %4 = and i32 %3, 32, !dbg !3460
  %5 = icmp eq i32 %4, 0, !dbg !3460
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3449, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3451
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3461
  %7 = icmp eq i32 %6, 0, !dbg !3462
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3450, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3451
  br i1 %5, label %8, label %18, !dbg !3463

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3465
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3447, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3451
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3466
  %11 = xor i1 %7, true, !dbg !3466
  %12 = sext i1 %11 to i32, !dbg !3466
  br i1 %10, label %21, label %13, !dbg !3466

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3467
  %15 = load i32, ptr %14, align 4, !dbg !3467, !tbaa !820
  %16 = icmp ne i32 %15, 9, !dbg !3468
  %17 = sext i1 %16 to i32, !dbg !3469
  br label %21, !dbg !3469

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3470

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3472
  store i32 0, ptr %20, align 4, !dbg !3474, !tbaa !820
  br label %21, !dbg !3472

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3451
  ret i32 %22, !dbg !3475
}

; Function Attrs: nounwind
declare !dbg !3476 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3480 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()), !dbg !3522
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3523
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3520, metadata !DIExpression()), !dbg !3522
  %3 = icmp slt i32 %2, 0, !dbg !3524
  br i1 %3, label %4, label %6, !dbg !3526

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3527
  br label %24, !dbg !3528

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3529
  %8 = icmp eq i32 %7, 0, !dbg !3529
  br i1 %8, label %13, label %9, !dbg !3531

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3532
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3533
  %12 = icmp eq i64 %11, -1, !dbg !3534
  br i1 %12, label %16, label %13, !dbg !3535

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3536
  %15 = icmp eq i32 %14, 0, !dbg !3536
  br i1 %15, label %16, label %18, !dbg !3537

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3519, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3521, metadata !DIExpression()), !dbg !3522
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3521, metadata !DIExpression()), !dbg !3522
  br label %24, !dbg !3539

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3540
  %20 = load i32, ptr %19, align 4, !dbg !3540, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3519, metadata !DIExpression()), !dbg !3522
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3521, metadata !DIExpression()), !dbg !3522
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3538
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3521, metadata !DIExpression()), !dbg !3522
  %22 = icmp eq i32 %20, 0, !dbg !3541
  br i1 %22, label %24, label %23, !dbg !3539

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3543, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3521, metadata !DIExpression()), !dbg !3522
  br label %24, !dbg !3545

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3522
  ret i32 %25, !dbg !3546
}

; Function Attrs: nofree nounwind
declare !dbg !3547 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3548 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3549 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3550 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3553 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3591, metadata !DIExpression()), !dbg !3592
  %2 = icmp eq ptr %0, null, !dbg !3593
  br i1 %2, label %6, label %3, !dbg !3595

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3596
  %5 = icmp eq i32 %4, 0, !dbg !3596
  br i1 %5, label %6, label %8, !dbg !3597

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3598
  br label %16, !dbg !3599

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3600, metadata !DIExpression()), !dbg !3605
  %9 = load i32, ptr %0, align 8, !dbg !3607, !tbaa !3459
  %10 = and i32 %9, 256, !dbg !3609
  %11 = icmp eq i32 %10, 0, !dbg !3609
  br i1 %11, label %14, label %12, !dbg !3610

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3611
  br label %14, !dbg !3611

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3612
  br label %16, !dbg !3613

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3592
  ret i32 %17, !dbg !3614
}

; Function Attrs: nofree nounwind
declare !dbg !3615 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3656, metadata !DIExpression()), !dbg !3661
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3657, metadata !DIExpression()), !dbg !3661
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3662
  %5 = load ptr, ptr %4, align 8, !dbg !3662, !tbaa !3663
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3664
  %7 = load ptr, ptr %6, align 8, !dbg !3664, !tbaa !3665
  %8 = icmp eq ptr %5, %7, !dbg !3666
  br i1 %8, label %9, label %27, !dbg !3667

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3668
  %11 = load ptr, ptr %10, align 8, !dbg !3668, !tbaa !1282
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3669
  %13 = load ptr, ptr %12, align 8, !dbg !3669, !tbaa !3670
  %14 = icmp eq ptr %11, %13, !dbg !3671
  br i1 %14, label %15, label %27, !dbg !3672

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3673
  %17 = load ptr, ptr %16, align 8, !dbg !3673, !tbaa !3674
  %18 = icmp eq ptr %17, null, !dbg !3675
  br i1 %18, label %19, label %27, !dbg !3676

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3677
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3678
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3658, metadata !DIExpression()), !dbg !3679
  %22 = icmp eq i64 %21, -1, !dbg !3680
  br i1 %22, label %29, label %23, !dbg !3682

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3683, !tbaa !3459
  %25 = and i32 %24, -17, !dbg !3683
  store i32 %25, ptr %0, align 8, !dbg !3683, !tbaa !3459
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3684
  store i64 %21, ptr %26, align 8, !dbg !3685, !tbaa !3686
  br label %29, !dbg !3687

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3688
  br label %29, !dbg !3689

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3661
  ret i32 %30, !dbg !3690
}

; Function Attrs: nofree nounwind
declare !dbg !3691 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3694 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3700, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3701, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3702, metadata !DIExpression()), !dbg !3704
  %5 = icmp eq ptr %1, null, !dbg !3705
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3707
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3707
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3701, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3700, metadata !DIExpression()), !dbg !3704
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3699, metadata !DIExpression()), !dbg !3704
  %9 = icmp eq ptr %3, null, !dbg !3708
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3710
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3702, metadata !DIExpression()), !dbg !3704
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3711
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3703, metadata !DIExpression()), !dbg !3704
  %12 = icmp ult i64 %11, -3, !dbg !3712
  br i1 %12, label %13, label %17, !dbg !3714

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3715
  %15 = icmp eq i32 %14, 0, !dbg !3715
  br i1 %15, label %16, label %29, !dbg !3716

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3717, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %10, metadata !3724, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3727, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 8, metadata !3728, metadata !DIExpression()), !dbg !3729
  store i64 0, ptr %10, align 1, !dbg !3731
  br label %29, !dbg !3732

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3733
  br i1 %18, label %19, label %20, !dbg !3735

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3736
  unreachable, !dbg !3736

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3737

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3739
  br i1 %23, label %29, label %24, !dbg !3740

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3741
  br i1 %25, label %29, label %26, !dbg !3744

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3745, !tbaa !829
  %28 = zext i8 %27 to i32, !dbg !3746
  store i32 %28, ptr %6, align 4, !dbg !3747, !tbaa !820
  br label %29, !dbg !3748

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3704
  ret i64 %30, !dbg !3749
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3750 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3756 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3759, metadata !DIExpression()), !dbg !3762
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3760, metadata !DIExpression()), !dbg !3762
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3763
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3761, metadata !DIExpression()), !dbg !3762
  br i1 %5, label %6, label %8, !dbg !3765

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3766
  store i32 12, ptr %7, align 4, !dbg !3768, !tbaa !820
  br label %12, !dbg !3769

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3763
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata ptr %0, metadata !3770, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %9, metadata !3773, metadata !DIExpression()), !dbg !3774
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3776
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3777
  br label %12, !dbg !3778

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3762
  ret ptr %13, !dbg !3779
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3780 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3789
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3785, metadata !DIExpression(), metadata !3789, metadata ptr %2, metadata !DIExpression()), !dbg !3790
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3790
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3791
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3792
  %4 = icmp eq i32 %3, 0, !dbg !3792
  br i1 %4, label %5, label %12, !dbg !3794

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3795, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata !791, metadata !3798, metadata !DIExpression()), !dbg !3799
  %6 = load i16, ptr %2, align 16, !dbg !3802
  %7 = icmp eq i16 %6, 67, !dbg !3802
  br i1 %7, label %11, label %8, !dbg !3803

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3795, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr @.str.1.122, metadata !3798, metadata !DIExpression()), !dbg !3804
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.122, i64 6), !dbg !3806
  %10 = icmp eq i32 %9, 0, !dbg !3807
  br i1 %10, label %11, label %12, !dbg !3808

11:                                               ; preds = %8, %5
  br label %12, !dbg !3809

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3790
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3810
  ret i1 %13, !dbg !3810
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3811 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3815, metadata !DIExpression()), !dbg !3818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3816, metadata !DIExpression()), !dbg !3818
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3817, metadata !DIExpression()), !dbg !3818
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3819
  ret i32 %4, !dbg !3820
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3821 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3826
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3827
  ret ptr %2, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3833
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3834
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3832, metadata !DIExpression()), !dbg !3833
  ret ptr %2, !dbg !3835
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3838, metadata !DIExpression()), !dbg !3845
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3839, metadata !DIExpression()), !dbg !3845
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3840, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3846
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3848
  call void @llvm.dbg.value(metadata ptr %4, metadata !3832, metadata !DIExpression()), !dbg !3846
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3841, metadata !DIExpression()), !dbg !3845
  %5 = icmp eq ptr %4, null, !dbg !3849
  br i1 %5, label %6, label %9, !dbg !3850

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3851
  br i1 %7, label %19, label %8, !dbg !3854

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3855, !tbaa !829
  br label %19, !dbg !3856

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3857
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3842, metadata !DIExpression()), !dbg !3858
  %11 = icmp ult i64 %10, %2, !dbg !3859
  br i1 %11, label %12, label %14, !dbg !3861

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3862
  call void @llvm.dbg.value(metadata ptr %1, metadata !3864, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata ptr %4, metadata !3867, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %13, metadata !3868, metadata !DIExpression()), !dbg !3869
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3871
  br label %19, !dbg !3872

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3873
  br i1 %15, label %19, label %16, !dbg !3876

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3877
  call void @llvm.dbg.value(metadata ptr %1, metadata !3864, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata ptr %4, metadata !3867, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %17, metadata !3868, metadata !DIExpression()), !dbg !3879
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3881
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3882
  store i8 0, ptr %18, align 1, !dbg !3883, !tbaa !829
  br label %19, !dbg !3884

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3885
  ret i32 %20, !dbg !3886
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !330, !334, !349, !647, !679, !400, !414, !465, !681, !639, !688, !723, !725, !727, !729, !731, !663, !733, !735, !739, !741}
!llvm.ident = !{!743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743, !743}
!llvm.module.flags = !{!744, !745, !746, !747, !748, !749, !750}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/printenv.c", directory: "/src", checksumkind: CSK_MD5, checksum: "639748d46de6a4e4b99d61a9973b15a5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1312, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 164)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 66)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1480, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 185)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 1)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 24)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 6)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 47, type: !315, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/printenv.o -MD -MP -MF src/.deps/printenv.Tpo -c src/printenv.c -o src/.printenv.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !86, globals: !96, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !65, !71}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 38, baseType: !62, size: 32, elements: !63)
!62 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!63 = !{!64}
!64 = !DIEnumerator(name: "PRINTENV_FAILURE", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 337, baseType: !67, size: 32, elements: !68)
!66 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !{!69, !70}
!69 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!70 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 46, baseType: !62, size: 32, elements: !73)
!72 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!73 = !{!74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!74 = !DIEnumerator(name: "_ISupper", value: 256)
!75 = !DIEnumerator(name: "_ISlower", value: 512)
!76 = !DIEnumerator(name: "_ISalpha", value: 1024)
!77 = !DIEnumerator(name: "_ISdigit", value: 2048)
!78 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!79 = !DIEnumerator(name: "_ISspace", value: 8192)
!80 = !DIEnumerator(name: "_ISprint", value: 16384)
!81 = !DIEnumerator(name: "_ISgraph", value: 32768)
!82 = !DIEnumerator(name: "_ISblank", value: 1)
!83 = !DIEnumerator(name: "_IScntrl", value: 2)
!84 = !DIEnumerator(name: "_ISpunct", value: 4)
!85 = !DIEnumerator(name: "_ISalnum", value: 8)
!86 = !{!87, !88, !67, !89, !90, !93, !95}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 18, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!92 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !97, !102, !107, !112, !117, !200, !202, !204, !209, !211, !216, !218, !220, !225, !227, !229, !231, !236, !241, !243, !245, !247, !249, !251, !253, !255, !260, !265, !270, !272, !274, !276, !278, !280, !285, !287, !289, !294, !299, !304, !309, !311, !313, !57}
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 14)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 17)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 5)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !119, file: !66, line: 575, type: !67, isLocal: true, isDefinition: true)
!119 = distinct !DISubprogram(name: "oputs_", scope: !66, file: !66, line: 573, type: !120, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !122)
!120 = !DISubroutineType(cc: DW_CC_nocall, types: !121)
!121 = !{null, !93, !93}
!122 = !{!123, !124, !125, !128, !130, !131, !132, !136, !137, !138, !139, !141, !194, !195, !196, !198, !199}
!123 = !DILocalVariable(name: "program", arg: 1, scope: !119, file: !66, line: 573, type: !93)
!124 = !DILocalVariable(name: "option", arg: 2, scope: !119, file: !66, line: 573, type: !93)
!125 = !DILocalVariable(name: "term", scope: !126, file: !66, line: 585, type: !93)
!126 = distinct !DILexicalBlock(scope: !127, file: !66, line: 582, column: 5)
!127 = distinct !DILexicalBlock(scope: !119, file: !66, line: 581, column: 7)
!128 = !DILocalVariable(name: "double_space", scope: !119, file: !66, line: 594, type: !129)
!129 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DILocalVariable(name: "first_word", scope: !119, file: !66, line: 595, type: !93)
!131 = !DILocalVariable(name: "option_text", scope: !119, file: !66, line: 596, type: !93)
!132 = !DILocalVariable(name: "s", scope: !133, file: !66, line: 608, type: !93)
!133 = distinct !DILexicalBlock(scope: !134, file: !66, line: 605, column: 5)
!134 = distinct !DILexicalBlock(scope: !135, file: !66, line: 604, column: 12)
!135 = distinct !DILexicalBlock(scope: !119, file: !66, line: 597, column: 7)
!136 = !DILocalVariable(name: "spaces", scope: !133, file: !66, line: 609, type: !90)
!137 = !DILocalVariable(name: "anchor_len", scope: !119, file: !66, line: 620, type: !90)
!138 = !DILocalVariable(name: "desc_text", scope: !119, file: !66, line: 625, type: !93)
!139 = !DILocalVariable(name: "__ptr", scope: !140, file: !66, line: 644, type: !93)
!140 = distinct !DILexicalBlock(scope: !119, file: !66, line: 644, column: 3)
!141 = !DILocalVariable(name: "__stream", scope: !140, file: !66, line: 644, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !145)
!144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !163, !165, !166, !167, !171, !172, !174, !175, !178, !180, !183, !186, !187, !188, !189, !190}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !145, file: !146, line: 51, baseType: !67, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !145, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !145, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !145, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !145, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !145, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !145, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !145, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !145, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !145, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !145, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !145, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !145, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !146, line: 36, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !145, file: !146, line: 70, baseType: !164, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !145, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !145, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !145, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !169, line: 152, baseType: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!170 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !145, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !145, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!173 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !145, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !145, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !146, line: 43, baseType: null)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !145, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !169, line: 153, baseType: !170)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !145, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !146, line: 37, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !145, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !146, line: 38, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !145, file: !146, line: 93, baseType: !164, size: 64, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !145, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !145, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !145, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !145, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 20)
!194 = !DILocalVariable(name: "__cnt", scope: !140, file: !66, line: 644, type: !90)
!195 = !DILocalVariable(name: "url_program", scope: !119, file: !66, line: 648, type: !93)
!196 = !DILocalVariable(name: "__ptr", scope: !197, file: !66, line: 686, type: !93)
!197 = distinct !DILexicalBlock(scope: !119, file: !66, line: 686, column: 3)
!198 = !DILocalVariable(name: "__stream", scope: !197, file: !66, line: 686, type: !142)
!199 = !DILocalVariable(name: "__cnt", scope: !197, file: !66, line: 686, type: !90)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !66, line: 585, type: !114, isLocal: true, isDefinition: true)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !66, line: 586, type: !114, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !66, line: 595, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 4)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !66, line: 620, type: !54, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !66, line: 648, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 2)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !66, line: 648, type: !114, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !66, line: 649, type: !206, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !66, line: 649, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 3)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !66, line: 650, type: !114, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !66, line: 651, type: !54, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !66, line: 651, type: !54, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !66, line: 652, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 7)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !66, line: 653, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 8)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !66, line: 654, type: !44, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !66, line: 655, type: !44, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !66, line: 656, type: !44, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !66, line: 657, type: !44, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !66, line: 663, type: !233, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !66, line: 664, type: !44, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !66, line: 669, type: !109, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !66, line: 669, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 40)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !66, line: 676, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 15)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !66, line: 676, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 61)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !66, line: 679, type: !222, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !66, line: 683, type: !114, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !66, line: 688, type: !114, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !66, line: 691, type: !238, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !66, line: 839, type: !104, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !66, line: 840, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 22)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !66, line: 841, type: !262, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !66, line: 862, type: !206, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !66, line: 868, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 71)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !66, line: 875, type: !296, isLocal: true, isDefinition: true)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 27)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !66, line: 877, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 51)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !66, line: 877, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 12)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !114, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !114, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !238, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 1024, elements: !207)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !318, line: 50, size: 256, elements: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!319 = !{!320, !321, !322, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 52, baseType: !93, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !317, file: !318, line: 55, baseType: !67, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !317, file: !318, line: 56, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !318, line: 57, baseType: !67, size: 32, offset: 192)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !327, line: 3, type: !262, isLocal: true, isDefinition: true)
!327 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "Version", scope: !330, file: !327, line: 3, type: !93, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !327, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !331, splitDebugInlining: false, nameTableKind: None)
!331 = !{!325, !328}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "file_name", scope: !334, file: !335, line: 45, type: !93, isLocal: true, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C11, file: !335, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !336, splitDebugInlining: false, nameTableKind: None)
!335 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!336 = !{!337, !339, !341, !343, !332, !345}
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(scope: null, file: !335, line: 121, type: !233, isLocal: true, isDefinition: true)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !335, line: 121, type: !306, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(scope: null, file: !335, line: 123, type: !233, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !335, line: 126, type: !222, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !334, file: !335, line: 55, type: !129, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !349, file: !350, line: 66, type: !395, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C11, file: !350, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !351, globals: !352, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!351 = !{!88, !95}
!352 = !{!353, !355, !374, !376, !378, !380, !347, !382, !384, !386, !388, !393}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !350, line: 272, type: !114, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "old_file_name", scope: !357, file: !350, line: 304, type: !93, isLocal: true, isDefinition: true)
!357 = distinct !DISubprogram(name: "verror_at_line", scope: !350, file: !350, line: 298, type: !358, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !367)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !67, !67, !93, !62, !93, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !362)
!362 = !{!363, !364, !365, !366}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !361, file: !350, baseType: !62, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !361, file: !350, baseType: !62, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !361, file: !350, baseType: !88, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !361, file: !350, baseType: !88, size: 64, offset: 128)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DILocalVariable(name: "status", arg: 1, scope: !357, file: !350, line: 298, type: !67)
!369 = !DILocalVariable(name: "errnum", arg: 2, scope: !357, file: !350, line: 298, type: !67)
!370 = !DILocalVariable(name: "file_name", arg: 3, scope: !357, file: !350, line: 298, type: !93)
!371 = !DILocalVariable(name: "line_number", arg: 4, scope: !357, file: !350, line: 298, type: !62)
!372 = !DILocalVariable(name: "message", arg: 5, scope: !357, file: !350, line: 298, type: !93)
!373 = !DILocalVariable(name: "args", arg: 6, scope: !357, file: !350, line: 298, type: !360)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "old_line_number", scope: !357, file: !350, line: 305, type: !62, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !350, line: 338, type: !206, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !238, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !213, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "error_message_count", scope: !349, file: !350, line: 69, type: !62, isLocal: false, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !349, file: !350, line: 295, type: !67, isLocal: false, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !233, isLocal: true, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 21)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !350, line: 214, type: !114, isLocal: true, isDefinition: true)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null}
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "program_name", scope: !400, file: !401, line: 31, type: !93, isLocal: false, isDefinition: true)
!400 = distinct !DICompileUnit(language: DW_LANG_C11, file: !401, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, globals: !403, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!402 = !{!88, !87}
!403 = !{!398, !404, !406}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !401, line: 46, type: !238, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !401, line: 49, type: !206, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "utf07FF", scope: !410, file: !411, line: 46, type: !438, isLocal: true, isDefinition: true)
!410 = distinct !DISubprogram(name: "proper_name_lite", scope: !411, file: !411, line: 38, type: !412, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !416)
!411 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!412 = !DISubroutineType(types: !413)
!413 = !{!93, !93, !93}
!414 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !415, splitDebugInlining: false, nameTableKind: None)
!415 = !{!408}
!416 = !{!417, !418, !419, !420, !425}
!417 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !410, file: !411, line: 38, type: !93)
!418 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !410, file: !411, line: 38, type: !93)
!419 = !DILocalVariable(name: "translation", scope: !410, file: !411, line: 40, type: !93)
!420 = !DILocalVariable(name: "w", scope: !410, file: !411, line: 47, type: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !422, line: 37, baseType: !423)
!422 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !62)
!425 = !DILocalVariable(name: "mbs", scope: !410, file: !411, line: 48, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !428)
!427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !430)
!429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !430, file: !429, line: 15, baseType: !67, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !430, file: !429, line: 20, baseType: !434, size: 32, offset: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 16, size: 32, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !434, file: !429, line: 18, baseType: !62, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !434, file: !429, line: 19, baseType: !206, size: 32)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16, elements: !214)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !441, line: 78, type: !238, isLocal: true, isDefinition: true)
!441 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !441, line: 79, type: !54, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !441, line: 80, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 13)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !441, line: 81, type: !446, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !441, line: 82, type: !191, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !441, line: 83, type: !213, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !441, line: 84, type: !238, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !441, line: 85, type: !233, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !441, line: 86, type: !233, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !441, line: 87, type: !238, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !465, file: !441, line: 76, type: !551, isLocal: false, isDefinition: true)
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !441, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !466, retainedTypes: !486, globals: !487, splitDebugInlining: false, nameTableKind: None)
!466 = !{!467, !481, !71}
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !468, line: 42, baseType: !62, size: 32, elements: !469)
!468 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!470 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!471 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!472 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!473 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!474 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!475 = !DIEnumerator(name: "c_quoting_style", value: 5)
!476 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!477 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!478 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!479 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!480 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !468, line: 254, baseType: !62, size: 32, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!484 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!485 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!486 = !{!88, !67, !89, !90}
!487 = !{!439, !442, !444, !449, !451, !453, !455, !457, !459, !461, !463, !488, !492, !502, !504, !509, !511, !513, !515, !517, !540, !547, !549}
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !465, file: !441, line: 92, type: !490, isLocal: false, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 320, elements: !45)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !465, file: !441, line: 1040, type: !494, isLocal: false, isDefinition: true)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !441, line: 56, size: 448, elements: !495)
!495 = !{!496, !497, !498, !500, !501}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !494, file: !441, line: 59, baseType: !467, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !441, line: 62, baseType: !67, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !494, file: !441, line: 66, baseType: !499, size: 256, offset: 64)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !239)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !494, file: !441, line: 69, baseType: !93, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !494, file: !441, line: 72, baseType: !93, size: 64, offset: 384)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !465, file: !441, line: 107, type: !494, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "slot0", scope: !465, file: !441, line: 831, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 256)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !441, line: 321, type: !213, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !441, line: 357, type: !213, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !441, line: 358, type: !213, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !441, line: 199, type: !233, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "quote", scope: !519, file: !441, line: 228, type: !538, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "gettext_quote", scope: !441, file: !441, line: 197, type: !520, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!93, !93, !467}
!522 = !{!523, !524, !525, !526, !527}
!523 = !DILocalVariable(name: "msgid", arg: 1, scope: !519, file: !441, line: 197, type: !93)
!524 = !DILocalVariable(name: "s", arg: 2, scope: !519, file: !441, line: 197, type: !467)
!525 = !DILocalVariable(name: "translation", scope: !519, file: !441, line: 199, type: !93)
!526 = !DILocalVariable(name: "w", scope: !519, file: !441, line: 229, type: !421)
!527 = !DILocalVariable(name: "mbs", scope: !519, file: !441, line: 230, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !530, file: !429, line: 15, baseType: !67, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !530, file: !429, line: 20, baseType: !534, size: 32, offset: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !429, line: 16, size: 32, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !534, file: !429, line: 18, baseType: !62, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !534, file: !429, line: 19, baseType: !206, size: 32)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !539)
!539 = !{!215, !208}
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slotvec", scope: !465, file: !441, line: 834, type: !542, isLocal: true, isDefinition: true)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !441, line: 823, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !543, file: !441, line: 825, baseType: !90, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !543, file: !441, line: 826, baseType: !87, size: 64, offset: 64)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "nslots", scope: !465, file: !441, line: 832, type: !67, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "slotvec0", scope: !465, file: !441, line: 833, type: !543, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 704, elements: !553)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!553 = !{!554}
!554 = !DISubrange(count: 11)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !557, line: 67, type: !306, isLocal: true, isDefinition: true)
!557 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !557, line: 69, type: !233, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !557, line: 83, type: !233, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !557, line: 83, type: !206, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !557, line: 85, type: !213, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !557, line: 88, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 171)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !557, line: 88, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 34)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !557, line: 105, type: !104, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !557, line: 109, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 23)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !557, line: 113, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 28)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !557, line: 120, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 32)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !557, line: 127, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 36)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !557, line: 134, type: !257, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !557, line: 142, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 44)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !557, line: 150, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 48)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !557, line: 159, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 52)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !557, line: 170, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 60)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !557, line: 248, type: !191, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !557, line: 248, type: !282, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !191, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !99, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !257, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !557, line: 259, type: !3, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !557, line: 259, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 29)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !639, file: !640, line: 26, type: !642, isLocal: false, isDefinition: true)
!639 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !641, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!641 = !{!637}
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 47)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "exit_failure", scope: !647, file: !648, line: 24, type: !650, isLocal: false, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !649, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!649 = !{!645}
!650 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !222, isLocal: true, isDefinition: true)
!653 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !233, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !109, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !660, line: 108, type: !39, isLocal: true, isDefinition: true)
!660 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "internal_state", scope: !663, file: !660, line: 97, type: !666, isLocal: true, isDefinition: true)
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !664, globals: !665, splitDebugInlining: false, nameTableKind: None)
!664 = !{!88, !90, !95}
!665 = !{!658, !661}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !429, line: 15, baseType: !67, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !429, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !429, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !429, line: 18, baseType: !62, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !429, line: 19, baseType: !206, size: 32)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 35, type: !54, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !557, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !686, globals: !687, splitDebugInlining: false, nameTableKind: None)
!682 = !{!683}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 40, baseType: !62, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!686 = !{!88}
!687 = !{!555, !558, !560, !562, !564, !566, !571, !576, !578, !583, !588, !593, !598, !600, !605, !610, !615, !620, !622, !624, !626, !628, !630, !632}
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !690, retainedTypes: !722, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!690 = !{!691, !703}
!691 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !692, file: !689, line: 188, baseType: !62, size: 32, elements: !701)
!692 = distinct !DISubprogram(name: "x2nrealloc", scope: !689, file: !689, line: 176, type: !693, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{!88, !88, !695, !90}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!696 = !{!697, !698, !699, !700}
!697 = !DILocalVariable(name: "p", arg: 1, scope: !692, file: !689, line: 176, type: !88)
!698 = !DILocalVariable(name: "pn", arg: 2, scope: !692, file: !689, line: 176, type: !695)
!699 = !DILocalVariable(name: "s", arg: 3, scope: !692, file: !689, line: 176, type: !90)
!700 = !DILocalVariable(name: "n", scope: !692, file: !689, line: 178, type: !90)
!701 = !{!702}
!702 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !704, file: !689, line: 228, baseType: !62, size: 32, elements: !701)
!704 = distinct !DISubprogram(name: "xpalloc", scope: !689, file: !689, line: 223, type: !705, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !712)
!705 = !DISubroutineType(types: !706)
!706 = !{!88, !88, !707, !708, !710, !708}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !709, line: 130, baseType: !710)
!709 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !711, line: 18, baseType: !170)
!711 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721}
!713 = !DILocalVariable(name: "pa", arg: 1, scope: !704, file: !689, line: 223, type: !88)
!714 = !DILocalVariable(name: "pn", arg: 2, scope: !704, file: !689, line: 223, type: !707)
!715 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !704, file: !689, line: 223, type: !708)
!716 = !DILocalVariable(name: "n_max", arg: 4, scope: !704, file: !689, line: 223, type: !710)
!717 = !DILocalVariable(name: "s", arg: 5, scope: !704, file: !689, line: 223, type: !708)
!718 = !DILocalVariable(name: "n0", scope: !704, file: !689, line: 230, type: !708)
!719 = !DILocalVariable(name: "n", scope: !704, file: !689, line: 237, type: !708)
!720 = !DILocalVariable(name: "nbytes", scope: !704, file: !689, line: 248, type: !708)
!721 = !DILocalVariable(name: "adjusted_nbytes", scope: !704, file: !689, line: 252, type: !708)
!722 = !{!87, !88}
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!724 = !{!651, !654, !656}
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !736, splitDebugInlining: false, nameTableKind: None)
!736 = !{!737, !676}
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !678, line: 35, type: !213, isLocal: true, isDefinition: true)
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!740 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !742, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!742 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!743 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!744 = !{i32 7, !"Dwarf Version", i32 5}
!745 = !{i32 2, !"Debug Info Version", i32 3}
!746 = !{i32 1, !"wchar_size", i32 4}
!747 = !{i32 8, !"PIC Level", i32 2}
!748 = !{i32 7, !"PIE Level", i32 2}
!749 = !{i32 7, !"uwtable", i32 2}
!750 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!751 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 56, type: !752, scopeLine: 57, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !67}
!754 = !{!755}
!755 = !DILocalVariable(name: "status", arg: 1, scope: !751, file: !2, line: 56, type: !67)
!756 = !DILocation(line: 0, scope: !751)
!757 = !DILocation(line: 58, column: 14, scope: !758)
!758 = distinct !DILexicalBlock(scope: !751, file: !2, line: 58, column: 7)
!759 = !DILocation(line: 58, column: 7, scope: !751)
!760 = !DILocation(line: 59, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !2, line: 59, column: 5)
!762 = !{!763, !763, i64 0}
!763 = !{!"any pointer", !764, i64 0}
!764 = !{!"omnipotent char", !765, i64 0}
!765 = !{!"Simple C/C++ TBAA"}
!766 = !DILocation(line: 62, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !2, line: 61, column: 5)
!768 = !DILocation(line: 69, column: 7, scope: !767)
!769 = !DILocation(line: 73, column: 7, scope: !767)
!770 = !DILocation(line: 74, column: 7, scope: !767)
!771 = !DILocation(line: 75, column: 7, scope: !767)
!772 = !DILocalVariable(name: "program", arg: 1, scope: !773, file: !66, line: 836, type: !93)
!773 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !66, file: !66, line: 836, type: !774, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !93}
!776 = !{!772, !777, !784, !785, !787, !788}
!777 = !DILocalVariable(name: "infomap", scope: !773, file: !66, line: 838, type: !778)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 896, elements: !234)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !773, file: !66, line: 838, size: 128, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !780, file: !66, line: 838, baseType: !93, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !780, file: !66, line: 838, baseType: !93, size: 64, offset: 64)
!784 = !DILocalVariable(name: "node", scope: !773, file: !66, line: 848, type: !93)
!785 = !DILocalVariable(name: "map_prog", scope: !773, file: !66, line: 849, type: !786)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!787 = !DILocalVariable(name: "lc_messages", scope: !773, file: !66, line: 861, type: !93)
!788 = !DILocalVariable(name: "url_program", scope: !773, file: !66, line: 874, type: !93)
!789 = !DILocation(line: 0, scope: !773, inlinedAt: !790)
!790 = distinct !DILocation(line: 76, column: 7, scope: !767)
!791 = !{}
!792 = !DILocation(line: 857, column: 3, scope: !773, inlinedAt: !790)
!793 = !DILocation(line: 861, column: 29, scope: !773, inlinedAt: !790)
!794 = !DILocation(line: 862, column: 7, scope: !795, inlinedAt: !790)
!795 = distinct !DILexicalBlock(scope: !773, file: !66, line: 862, column: 7)
!796 = !DILocation(line: 862, column: 19, scope: !795, inlinedAt: !790)
!797 = !DILocation(line: 862, column: 22, scope: !795, inlinedAt: !790)
!798 = !DILocation(line: 862, column: 7, scope: !773, inlinedAt: !790)
!799 = !DILocation(line: 868, column: 7, scope: !800, inlinedAt: !790)
!800 = distinct !DILexicalBlock(scope: !795, file: !66, line: 863, column: 5)
!801 = !DILocation(line: 870, column: 5, scope: !800, inlinedAt: !790)
!802 = !DILocation(line: 875, column: 3, scope: !773, inlinedAt: !790)
!803 = !DILocation(line: 877, column: 3, scope: !773, inlinedAt: !790)
!804 = !DILocation(line: 78, column: 3, scope: !751)
!805 = !DISubprogram(name: "dcgettext", scope: !806, file: !806, line: 51, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!807 = !DISubroutineType(types: !808)
!808 = !{!87, !93, !93, !67}
!809 = !DISubprogram(name: "__fprintf_chk", scope: !810, file: !810, line: 93, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!811 = !DISubroutineType(types: !812)
!812 = !{!67, !813, !67, !814, null}
!813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!814 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!815 = !DISubprogram(name: "__printf_chk", scope: !810, file: !810, line: 95, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubroutineType(types: !817)
!817 = !{!67, !67, !814, null}
!818 = !DILocation(line: 0, scope: !119)
!819 = !DILocation(line: 581, column: 7, scope: !127)
!820 = !{!821, !821, i64 0}
!821 = !{!"int", !764, i64 0}
!822 = !DILocation(line: 581, column: 19, scope: !127)
!823 = !DILocation(line: 581, column: 7, scope: !119)
!824 = !DILocation(line: 585, column: 26, scope: !126)
!825 = !DILocation(line: 0, scope: !126)
!826 = !DILocation(line: 586, column: 23, scope: !126)
!827 = !DILocation(line: 586, column: 28, scope: !126)
!828 = !DILocation(line: 586, column: 32, scope: !126)
!829 = !{!764, !764, i64 0}
!830 = !DILocation(line: 586, column: 38, scope: !126)
!831 = !DILocalVariable(name: "__s1", arg: 1, scope: !832, file: !833, line: 1359, type: !93)
!832 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !836)
!833 = !DIFile(filename: "./lib/string.h", directory: "/src")
!834 = !DISubroutineType(types: !835)
!835 = !{!129, !93, !93}
!836 = !{!831, !837}
!837 = !DILocalVariable(name: "__s2", arg: 2, scope: !832, file: !833, line: 1359, type: !93)
!838 = !DILocation(line: 0, scope: !832, inlinedAt: !839)
!839 = distinct !DILocation(line: 586, column: 41, scope: !126)
!840 = !DILocation(line: 1361, column: 11, scope: !832, inlinedAt: !839)
!841 = !DILocation(line: 1361, column: 10, scope: !832, inlinedAt: !839)
!842 = !DILocation(line: 586, column: 19, scope: !126)
!843 = !DILocation(line: 587, column: 5, scope: !126)
!844 = !DILocation(line: 588, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !119, file: !66, line: 588, column: 7)
!846 = !DILocation(line: 588, column: 7, scope: !119)
!847 = !DILocation(line: 590, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !66, line: 589, column: 5)
!849 = !DILocation(line: 591, column: 7, scope: !848)
!850 = !DILocation(line: 595, column: 37, scope: !119)
!851 = !DILocation(line: 595, column: 35, scope: !119)
!852 = !DILocation(line: 596, column: 29, scope: !119)
!853 = !DILocation(line: 597, column: 8, scope: !135)
!854 = !DILocation(line: 597, column: 7, scope: !119)
!855 = !DILocation(line: 604, column: 24, scope: !134)
!856 = !DILocation(line: 604, column: 12, scope: !135)
!857 = !DILocation(line: 0, scope: !133)
!858 = !DILocation(line: 610, column: 16, scope: !133)
!859 = !DILocation(line: 610, column: 7, scope: !133)
!860 = !DILocation(line: 611, column: 21, scope: !133)
!861 = !{!862, !862, i64 0}
!862 = !{!"short", !764, i64 0}
!863 = !DILocation(line: 611, column: 19, scope: !133)
!864 = !DILocation(line: 611, column: 16, scope: !133)
!865 = !DILocation(line: 610, column: 30, scope: !133)
!866 = distinct !{!866, !859, !860, !867}
!867 = !{!"llvm.loop.mustprogress"}
!868 = !DILocation(line: 612, column: 18, scope: !869)
!869 = distinct !DILexicalBlock(scope: !133, file: !66, line: 612, column: 11)
!870 = !DILocation(line: 612, column: 11, scope: !133)
!871 = !DILocation(line: 620, column: 23, scope: !119)
!872 = !DILocation(line: 625, column: 39, scope: !119)
!873 = !DILocation(line: 626, column: 3, scope: !119)
!874 = !DILocation(line: 626, column: 10, scope: !119)
!875 = !DILocation(line: 626, column: 21, scope: !119)
!876 = !DILocation(line: 628, column: 44, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !66, line: 628, column: 11)
!878 = distinct !DILexicalBlock(scope: !119, file: !66, line: 627, column: 5)
!879 = !DILocation(line: 628, column: 32, scope: !877)
!880 = !DILocation(line: 628, column: 49, scope: !877)
!881 = !DILocation(line: 628, column: 11, scope: !878)
!882 = !DILocation(line: 630, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !66, line: 630, column: 11)
!884 = !DILocation(line: 630, column: 11, scope: !878)
!885 = !DILocation(line: 632, column: 26, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !66, line: 632, column: 15)
!887 = distinct !DILexicalBlock(scope: !883, file: !66, line: 631, column: 9)
!888 = !DILocation(line: 632, column: 34, scope: !886)
!889 = !DILocation(line: 632, column: 37, scope: !886)
!890 = !DILocation(line: 632, column: 15, scope: !887)
!891 = !DILocation(line: 636, column: 16, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !66, line: 636, column: 15)
!893 = !DILocation(line: 636, column: 29, scope: !892)
!894 = !DILocation(line: 640, column: 16, scope: !878)
!895 = distinct !{!895, !873, !896, !867}
!896 = !DILocation(line: 641, column: 5, scope: !119)
!897 = !DILocation(line: 644, column: 3, scope: !119)
!898 = !DILocation(line: 0, scope: !832, inlinedAt: !899)
!899 = distinct !DILocation(line: 648, column: 31, scope: !119)
!900 = !DILocation(line: 0, scope: !832, inlinedAt: !901)
!901 = distinct !DILocation(line: 649, column: 31, scope: !119)
!902 = !DILocation(line: 0, scope: !832, inlinedAt: !903)
!903 = distinct !DILocation(line: 650, column: 31, scope: !119)
!904 = !DILocation(line: 0, scope: !832, inlinedAt: !905)
!905 = distinct !DILocation(line: 651, column: 31, scope: !119)
!906 = !DILocation(line: 0, scope: !832, inlinedAt: !907)
!907 = distinct !DILocation(line: 652, column: 31, scope: !119)
!908 = !DILocation(line: 0, scope: !832, inlinedAt: !909)
!909 = distinct !DILocation(line: 653, column: 31, scope: !119)
!910 = !DILocation(line: 0, scope: !832, inlinedAt: !911)
!911 = distinct !DILocation(line: 654, column: 31, scope: !119)
!912 = !DILocation(line: 0, scope: !832, inlinedAt: !913)
!913 = distinct !DILocation(line: 655, column: 31, scope: !119)
!914 = !DILocation(line: 0, scope: !832, inlinedAt: !915)
!915 = distinct !DILocation(line: 656, column: 31, scope: !119)
!916 = !DILocation(line: 0, scope: !832, inlinedAt: !917)
!917 = distinct !DILocation(line: 657, column: 31, scope: !119)
!918 = !DILocation(line: 663, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !119, file: !66, line: 663, column: 7)
!920 = !DILocation(line: 664, column: 7, scope: !919)
!921 = !DILocation(line: 664, column: 10, scope: !919)
!922 = !DILocation(line: 663, column: 7, scope: !119)
!923 = !DILocation(line: 669, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !66, line: 665, column: 5)
!925 = !DILocation(line: 671, column: 5, scope: !924)
!926 = !DILocation(line: 676, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !919, file: !66, line: 673, column: 5)
!928 = !DILocation(line: 679, column: 3, scope: !119)
!929 = !DILocation(line: 683, column: 3, scope: !119)
!930 = !DILocation(line: 686, column: 3, scope: !119)
!931 = !DILocation(line: 688, column: 3, scope: !119)
!932 = !DILocation(line: 691, column: 3, scope: !119)
!933 = !DILocation(line: 695, column: 3, scope: !119)
!934 = !DILocation(line: 696, column: 1, scope: !119)
!935 = !DISubprogram(name: "setlocale", scope: !936, file: !936, line: 122, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!937 = !DISubroutineType(types: !938)
!938 = !{!87, !67, !93}
!939 = !DISubprogram(name: "strncmp", scope: !940, file: !940, line: 159, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!941 = !DISubroutineType(types: !942)
!942 = !{!67, !93, !93, !90}
!943 = !DISubprogram(name: "fputs_unlocked", scope: !944, file: !944, line: 691, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!945 = !DISubroutineType(types: !946)
!946 = !{!67, !814, !813}
!947 = !DISubprogram(name: "exit", scope: !948, file: !948, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!948 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!949 = !DISubprogram(name: "getenv", scope: !948, file: !948, line: 641, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DISubroutineType(types: !951)
!951 = !{!87, !93}
!952 = !DISubprogram(name: "strcmp", scope: !940, file: !940, line: 156, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!67, !93, !93}
!955 = !DISubprogram(name: "strspn", scope: !940, file: !940, line: 297, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!956 = !DISubroutineType(types: !957)
!957 = !{!92, !93, !93}
!958 = !DISubprogram(name: "strchr", scope: !940, file: !940, line: 246, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubroutineType(types: !960)
!960 = !{!87, !93, !67}
!961 = !DISubprogram(name: "__ctype_b_loc", scope: !72, file: !72, line: 79, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!967 = !DISubprogram(name: "strcspn", scope: !940, file: !940, line: 293, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!968 = !DISubprogram(name: "fwrite_unlocked", scope: !944, file: !944, line: 704, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{!90, !971, !90, !90, !813}
!971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!974 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !975, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !978)
!975 = !DISubroutineType(types: !976)
!976 = !{!67, !67, !977}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!978 = !{!979, !980, !981, !982, !983, !984, !988, !990, !992, !995, !997, !1000}
!979 = !DILocalVariable(name: "argc", arg: 1, scope: !974, file: !2, line: 82, type: !67)
!980 = !DILocalVariable(name: "argv", arg: 2, scope: !974, file: !2, line: 82, type: !977)
!981 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !974, file: !2, line: 84, type: !129)
!982 = !DILocalVariable(name: "optc", scope: !974, file: !2, line: 95, type: !67)
!983 = !DILocalVariable(name: "ok", scope: !974, file: !2, line: 110, type: !129)
!984 = !DILocalVariable(name: "env", scope: !985, file: !2, line: 113, type: !977)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 113, column: 7)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 112, column: 5)
!987 = distinct !DILexicalBlock(scope: !974, file: !2, line: 111, column: 7)
!988 = !DILocalVariable(name: "matches", scope: !989, file: !2, line: 119, type: !67)
!989 = distinct !DILexicalBlock(scope: !987, file: !2, line: 118, column: 5)
!990 = !DILocalVariable(name: "i", scope: !991, file: !2, line: 121, type: !67)
!991 = distinct !DILexicalBlock(scope: !989, file: !2, line: 121, column: 7)
!992 = !DILocalVariable(name: "matched", scope: !993, file: !2, line: 123, type: !129)
!993 = distinct !DILexicalBlock(scope: !994, file: !2, line: 122, column: 9)
!994 = distinct !DILexicalBlock(scope: !991, file: !2, line: 121, column: 7)
!995 = !DILocalVariable(name: "env", scope: !996, file: !2, line: 129, type: !977)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 129, column: 11)
!997 = !DILocalVariable(name: "ep", scope: !998, file: !2, line: 131, type: !93)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 130, column: 13)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 129, column: 11)
!1000 = !DILocalVariable(name: "ap", scope: !998, file: !2, line: 132, type: !93)
!1001 = !DILocation(line: 0, scope: !974)
!1002 = !DILocation(line: 87, column: 21, scope: !974)
!1003 = !DILocation(line: 87, column: 3, scope: !974)
!1004 = !DILocation(line: 88, column: 3, scope: !974)
!1005 = !DILocation(line: 89, column: 3, scope: !974)
!1006 = !DILocation(line: 90, column: 3, scope: !974)
!1007 = !DILocalVariable(name: "status", arg: 1, scope: !1008, file: !66, line: 102, type: !67)
!1008 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !66, file: !66, line: 102, type: !752, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1009)
!1009 = !{!1007}
!1010 = !DILocation(line: 0, scope: !1008, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 92, column: 3, scope: !974)
!1012 = !DILocation(line: 105, column: 18, scope: !1013, inlinedAt: !1011)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !66, line: 104, column: 7)
!1014 = !DILocation(line: 93, column: 3, scope: !974)
!1015 = !DILocation(line: 96, column: 18, scope: !974)
!1016 = !DILocation(line: 96, column: 3, scope: !974)
!1017 = distinct !{!1017, !1016, !1018, !867, !1019}
!1018 = !DILocation(line: 108, column: 5, scope: !974)
!1019 = !{!"llvm.loop.peeled.count", i32 1}
!1020 = !DILocation(line: 103, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 99, column: 9)
!1022 = distinct !DILexicalBlock(scope: !974, file: !2, line: 97, column: 5)
!1023 = !DILocation(line: 104, column: 9, scope: !1021)
!1024 = !DILocation(line: 106, column: 11, scope: !1021)
!1025 = !DILocation(line: 111, column: 7, scope: !987)
!1026 = !DILocation(line: 111, column: 14, scope: !987)
!1027 = !DILocation(line: 111, column: 7, scope: !974)
!1028 = !DILocation(line: 121, column: 7, scope: !991)
!1029 = !DILocation(line: 113, column: 25, scope: !985)
!1030 = !DILocation(line: 0, scope: !985)
!1031 = !DILocation(line: 113, column: 34, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !985, file: !2, line: 113, column: 7)
!1033 = !DILocation(line: 113, column: 39, scope: !1032)
!1034 = !DILocation(line: 113, column: 7, scope: !985)
!1035 = !DILocation(line: 114, column: 9, scope: !1032)
!1036 = !DILocation(line: 113, column: 48, scope: !1032)
!1037 = distinct !{!1037, !1034, !1038, !867}
!1038 = !DILocation(line: 114, column: 9, scope: !985)
!1039 = !DILocation(line: 148, column: 31, scope: !989)
!1040 = !DILocation(line: 148, column: 29, scope: !989)
!1041 = !DILocation(line: 148, column: 21, scope: !989)
!1042 = !DILocation(line: 151, column: 10, scope: !974)
!1043 = !DILocation(line: 0, scope: !991)
!1044 = !DILocation(line: 0, scope: !989)
!1045 = !DILocation(line: 0, scope: !993)
!1046 = !DILocation(line: 126, column: 23, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !993, file: !2, line: 126, column: 15)
!1048 = !DILocation(line: 126, column: 15, scope: !1047)
!1049 = !DILocation(line: 126, column: 15, scope: !993)
!1050 = !DILocation(line: 129, column: 29, scope: !996)
!1051 = !DILocation(line: 0, scope: !996)
!1052 = !DILocation(line: 129, column: 38, scope: !999)
!1053 = !DILocation(line: 129, column: 11, scope: !996)
!1054 = !DILocation(line: 145, column: 22, scope: !993)
!1055 = !DILocation(line: 145, column: 19, scope: !993)
!1056 = !DILocation(line: 146, column: 9, scope: !994)
!1057 = !DILocation(line: 0, scope: !998)
!1058 = !DILocation(line: 133, column: 22, scope: !998)
!1059 = !DILocation(line: 133, column: 26, scope: !998)
!1060 = !DILocation(line: 133, column: 34, scope: !998)
!1061 = !DILocation(line: 132, column: 32, scope: !998)
!1062 = !DILocation(line: 133, column: 37, scope: !998)
!1063 = !DILocation(line: 133, column: 41, scope: !998)
!1064 = !DILocation(line: 133, column: 49, scope: !998)
!1065 = !DILocation(line: 133, column: 55, scope: !998)
!1066 = !DILocation(line: 133, column: 64, scope: !998)
!1067 = !DILocation(line: 133, column: 58, scope: !998)
!1068 = !DILocation(line: 133, column: 15, scope: !998)
!1069 = !DILocation(line: 135, column: 23, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 135, column: 23)
!1071 = distinct !DILexicalBlock(scope: !998, file: !2, line: 134, column: 17)
!1072 = !DILocation(line: 135, column: 34, scope: !1070)
!1073 = !DILocation(line: 135, column: 37, scope: !1070)
!1074 = !DILocation(line: 135, column: 41, scope: !1070)
!1075 = !DILocation(line: 135, column: 23, scope: !1071)
!1076 = !DILocation(line: 137, column: 23, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 136, column: 21)
!1078 = !DILocation(line: 140, column: 23, scope: !1077)
!1079 = distinct !{!1079, !1068, !1080, !867}
!1080 = !DILocation(line: 142, column: 17, scope: !998)
!1081 = !DILocation(line: 129, column: 44, scope: !999)
!1082 = distinct !{!1082, !1053, !1083, !867}
!1083 = !DILocation(line: 143, column: 13, scope: !996)
!1084 = !DILocation(line: 121, column: 38, scope: !994)
!1085 = !DILocation(line: 121, column: 30, scope: !994)
!1086 = distinct !{!1086, !1028, !1087, !867}
!1087 = !DILocation(line: 146, column: 9, scope: !991)
!1088 = !DILocation(line: 0, scope: !987)
!1089 = !DILocation(line: 152, column: 1, scope: !974)
!1090 = !DISubprogram(name: "bindtextdomain", scope: !806, file: !806, line: 86, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!87, !93, !93}
!1093 = !DISubprogram(name: "textdomain", scope: !806, file: !806, line: 82, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1094 = !DISubprogram(name: "atexit", scope: !948, file: !948, line: 602, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!67, !395}
!1097 = !DISubprogram(name: "getopt_long", scope: !318, file: !318, line: 66, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!67, !67, !1100, !93, !1102, !323}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!1103 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !335, file: !335, line: 50, type: !774, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1104)
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "file", arg: 1, scope: !1103, file: !335, line: 50, type: !93)
!1106 = !DILocation(line: 0, scope: !1103)
!1107 = !DILocation(line: 52, column: 13, scope: !1103)
!1108 = !DILocation(line: 53, column: 1, scope: !1103)
!1109 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !335, file: !335, line: 87, type: !1110, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1112)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !129}
!1112 = !{!1113}
!1113 = !DILocalVariable(name: "ignore", arg: 1, scope: !1109, file: !335, line: 87, type: !129)
!1114 = !DILocation(line: 0, scope: !1109)
!1115 = !DILocation(line: 89, column: 16, scope: !1109)
!1116 = !{!1117, !1117, i64 0}
!1117 = !{!"_Bool", !764, i64 0}
!1118 = !DILocation(line: 90, column: 1, scope: !1109)
!1119 = distinct !DISubprogram(name: "close_stdout", scope: !335, file: !335, line: 116, type: !396, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1120)
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "write_error", scope: !1122, file: !335, line: 121, type: !93)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !335, line: 120, column: 5)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !335, line: 118, column: 7)
!1124 = !DILocation(line: 118, column: 21, scope: !1123)
!1125 = !DILocation(line: 118, column: 7, scope: !1123)
!1126 = !DILocation(line: 118, column: 29, scope: !1123)
!1127 = !DILocation(line: 119, column: 7, scope: !1123)
!1128 = !DILocation(line: 119, column: 12, scope: !1123)
!1129 = !{i8 0, i8 2}
!1130 = !DILocation(line: 119, column: 25, scope: !1123)
!1131 = !DILocation(line: 119, column: 28, scope: !1123)
!1132 = !DILocation(line: 119, column: 34, scope: !1123)
!1133 = !DILocation(line: 118, column: 7, scope: !1119)
!1134 = !DILocation(line: 121, column: 33, scope: !1122)
!1135 = !DILocation(line: 0, scope: !1122)
!1136 = !DILocation(line: 122, column: 11, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1122, file: !335, line: 122, column: 11)
!1138 = !DILocation(line: 0, scope: !1137)
!1139 = !DILocation(line: 122, column: 11, scope: !1122)
!1140 = !DILocation(line: 123, column: 9, scope: !1137)
!1141 = !DILocation(line: 126, column: 9, scope: !1137)
!1142 = !DILocation(line: 128, column: 14, scope: !1122)
!1143 = !DILocation(line: 128, column: 7, scope: !1122)
!1144 = !DILocation(line: 133, column: 42, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1119, file: !335, line: 133, column: 7)
!1146 = !DILocation(line: 133, column: 28, scope: !1145)
!1147 = !DILocation(line: 133, column: 50, scope: !1145)
!1148 = !DILocation(line: 133, column: 7, scope: !1119)
!1149 = !DILocation(line: 134, column: 12, scope: !1145)
!1150 = !DILocation(line: 134, column: 5, scope: !1145)
!1151 = !DILocation(line: 135, column: 1, scope: !1119)
!1152 = !DISubprogram(name: "__errno_location", scope: !1153, file: !1153, line: 37, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!323}
!1156 = !DISubprogram(name: "_exit", scope: !1157, file: !1157, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1157 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1158 = distinct !DISubprogram(name: "verror", scope: !350, file: !350, line: 251, type: !1159, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1161)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !67, !67, !93, !360}
!1161 = !{!1162, !1163, !1164, !1165}
!1162 = !DILocalVariable(name: "status", arg: 1, scope: !1158, file: !350, line: 251, type: !67)
!1163 = !DILocalVariable(name: "errnum", arg: 2, scope: !1158, file: !350, line: 251, type: !67)
!1164 = !DILocalVariable(name: "message", arg: 3, scope: !1158, file: !350, line: 251, type: !93)
!1165 = !DILocalVariable(name: "args", arg: 4, scope: !1158, file: !350, line: 251, type: !360)
!1166 = !DILocation(line: 0, scope: !1158)
!1167 = !DILocation(line: 261, column: 3, scope: !1158)
!1168 = !DILocation(line: 265, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1158, file: !350, line: 265, column: 7)
!1170 = !DILocation(line: 265, column: 7, scope: !1158)
!1171 = !DILocation(line: 266, column: 5, scope: !1169)
!1172 = !DILocation(line: 272, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !350, line: 268, column: 5)
!1174 = !DILocation(line: 276, column: 3, scope: !1158)
!1175 = !DILocation(line: 282, column: 1, scope: !1158)
!1176 = distinct !DISubprogram(name: "flush_stdout", scope: !350, file: !350, line: 163, type: !396, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1177)
!1177 = !{!1178}
!1178 = !DILocalVariable(name: "stdout_fd", scope: !1176, file: !350, line: 166, type: !67)
!1179 = !DILocation(line: 0, scope: !1176)
!1180 = !DILocalVariable(name: "fd", arg: 1, scope: !1181, file: !350, line: 145, type: !67)
!1181 = distinct !DISubprogram(name: "is_open", scope: !350, file: !350, line: 145, type: !1182, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1184)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!67, !67}
!1184 = !{!1180}
!1185 = !DILocation(line: 0, scope: !1181, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 182, column: 25, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1176, file: !350, line: 182, column: 7)
!1188 = !DILocation(line: 157, column: 15, scope: !1181, inlinedAt: !1186)
!1189 = !DILocation(line: 157, column: 12, scope: !1181, inlinedAt: !1186)
!1190 = !DILocation(line: 182, column: 7, scope: !1176)
!1191 = !DILocation(line: 184, column: 5, scope: !1187)
!1192 = !DILocation(line: 185, column: 1, scope: !1176)
!1193 = distinct !DISubprogram(name: "error_tail", scope: !350, file: !350, line: 219, type: !1159, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1194)
!1194 = !{!1195, !1196, !1197, !1198}
!1195 = !DILocalVariable(name: "status", arg: 1, scope: !1193, file: !350, line: 219, type: !67)
!1196 = !DILocalVariable(name: "errnum", arg: 2, scope: !1193, file: !350, line: 219, type: !67)
!1197 = !DILocalVariable(name: "message", arg: 3, scope: !1193, file: !350, line: 219, type: !93)
!1198 = !DILocalVariable(name: "args", arg: 4, scope: !1193, file: !350, line: 219, type: !360)
!1199 = distinct !DIAssignID()
!1200 = !DILocation(line: 0, scope: !1193)
!1201 = !DILocation(line: 229, column: 13, scope: !1193)
!1202 = !DILocalVariable(name: "__stream", arg: 1, scope: !1203, file: !810, line: 132, type: !1206)
!1203 = distinct !DISubprogram(name: "vfprintf", scope: !810, file: !810, line: 132, type: !1204, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1241)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!67, !1206, !814, !360}
!1206 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1209)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1209, file: !146, line: 51, baseType: !67, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1209, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1209, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1209, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1209, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1209, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1209, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1209, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1209, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1209, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1209, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1209, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1209, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1209, file: !146, line: 70, baseType: !1225, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1209, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1209, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1209, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1209, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1209, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1209, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1209, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1209, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1209, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1209, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1209, file: !146, line: 93, baseType: !1225, size: 64, offset: 1344)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1209, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1209, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1209, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1209, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!1241 = !{!1202, !1242, !1243}
!1242 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1203, file: !810, line: 133, type: !814)
!1243 = !DILocalVariable(name: "__ap", arg: 3, scope: !1203, file: !810, line: 133, type: !360)
!1244 = !DILocation(line: 0, scope: !1203, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 229, column: 3, scope: !1193)
!1246 = !DILocation(line: 135, column: 10, scope: !1203, inlinedAt: !1245)
!1247 = !DILocation(line: 232, column: 3, scope: !1193)
!1248 = !DILocation(line: 233, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1193, file: !350, line: 233, column: 7)
!1250 = !DILocation(line: 233, column: 7, scope: !1193)
!1251 = !DILocalVariable(name: "errbuf", scope: !1252, file: !350, line: 193, type: !1256)
!1252 = distinct !DISubprogram(name: "print_errno_message", scope: !350, file: !350, line: 188, type: !752, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1253)
!1253 = !{!1254, !1255, !1251}
!1254 = !DILocalVariable(name: "errnum", arg: 1, scope: !1252, file: !350, line: 188, type: !67)
!1255 = !DILocalVariable(name: "s", scope: !1252, file: !350, line: 190, type: !93)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1257)
!1257 = !{!1258}
!1258 = !DISubrange(count: 1024)
!1259 = !DILocation(line: 0, scope: !1252, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 234, column: 5, scope: !1249)
!1261 = !DILocation(line: 193, column: 3, scope: !1252, inlinedAt: !1260)
!1262 = !DILocation(line: 195, column: 7, scope: !1252, inlinedAt: !1260)
!1263 = !DILocation(line: 207, column: 9, scope: !1264, inlinedAt: !1260)
!1264 = distinct !DILexicalBlock(scope: !1252, file: !350, line: 207, column: 7)
!1265 = !DILocation(line: 207, column: 7, scope: !1252, inlinedAt: !1260)
!1266 = !DILocation(line: 208, column: 9, scope: !1264, inlinedAt: !1260)
!1267 = !DILocation(line: 208, column: 5, scope: !1264, inlinedAt: !1260)
!1268 = !DILocation(line: 214, column: 3, scope: !1252, inlinedAt: !1260)
!1269 = !DILocation(line: 216, column: 1, scope: !1252, inlinedAt: !1260)
!1270 = !DILocation(line: 234, column: 5, scope: !1249)
!1271 = !DILocation(line: 238, column: 3, scope: !1193)
!1272 = !DILocalVariable(name: "__c", arg: 1, scope: !1273, file: !1274, line: 101, type: !67)
!1273 = distinct !DISubprogram(name: "putc_unlocked", scope: !1274, file: !1274, line: 101, type: !1275, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1277)
!1274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!67, !67, !1207}
!1277 = !{!1272, !1278}
!1278 = !DILocalVariable(name: "__stream", arg: 2, scope: !1273, file: !1274, line: 101, type: !1207)
!1279 = !DILocation(line: 0, scope: !1273, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 238, column: 3, scope: !1193)
!1281 = !DILocation(line: 103, column: 10, scope: !1273, inlinedAt: !1280)
!1282 = !{!1283, !763, i64 40}
!1283 = !{!"_IO_FILE", !821, i64 0, !763, i64 8, !763, i64 16, !763, i64 24, !763, i64 32, !763, i64 40, !763, i64 48, !763, i64 56, !763, i64 64, !763, i64 72, !763, i64 80, !763, i64 88, !763, i64 96, !763, i64 104, !821, i64 112, !821, i64 116, !1284, i64 120, !862, i64 128, !764, i64 130, !764, i64 131, !763, i64 136, !1284, i64 144, !763, i64 152, !763, i64 160, !763, i64 168, !763, i64 176, !1284, i64 184, !821, i64 192, !764, i64 196}
!1284 = !{!"long", !764, i64 0}
!1285 = !{!1283, !763, i64 48}
!1286 = !{!"branch_weights", i32 2000, i32 1}
!1287 = !DILocation(line: 240, column: 3, scope: !1193)
!1288 = !DILocation(line: 241, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1193, file: !350, line: 241, column: 7)
!1290 = !DILocation(line: 241, column: 7, scope: !1193)
!1291 = !DILocation(line: 242, column: 5, scope: !1289)
!1292 = !DILocation(line: 243, column: 1, scope: !1193)
!1293 = !DISubprogram(name: "__vfprintf_chk", scope: !810, file: !810, line: 96, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!67, !1206, !67, !814, !360}
!1296 = !DISubprogram(name: "strerror_r", scope: !940, file: !940, line: 444, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!87, !67, !87, !90}
!1299 = !DISubprogram(name: "__overflow", scope: !944, file: !944, line: 886, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!67, !1207, !67}
!1302 = !DISubprogram(name: "fflush_unlocked", scope: !944, file: !944, line: 239, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!67, !1207}
!1305 = !DISubprogram(name: "fcntl", scope: !1306, file: !1306, line: 149, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1306 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!67, !67, !67, null}
!1309 = distinct !DISubprogram(name: "error", scope: !350, file: !350, line: 285, type: !1310, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !67, !67, !93, null}
!1312 = !{!1313, !1314, !1315, !1316}
!1313 = !DILocalVariable(name: "status", arg: 1, scope: !1309, file: !350, line: 285, type: !67)
!1314 = !DILocalVariable(name: "errnum", arg: 2, scope: !1309, file: !350, line: 285, type: !67)
!1315 = !DILocalVariable(name: "message", arg: 3, scope: !1309, file: !350, line: 285, type: !93)
!1316 = !DILocalVariable(name: "ap", scope: !1309, file: !350, line: 287, type: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !944, line: 52, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1319, line: 12, baseType: !1320)
!1319 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !350, baseType: !1321)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !40)
!1322 = distinct !DIAssignID()
!1323 = !DILocation(line: 0, scope: !1309)
!1324 = !DILocation(line: 287, column: 3, scope: !1309)
!1325 = !DILocation(line: 288, column: 3, scope: !1309)
!1326 = !DILocation(line: 289, column: 3, scope: !1309)
!1327 = !DILocation(line: 290, column: 3, scope: !1309)
!1328 = !DILocation(line: 291, column: 1, scope: !1309)
!1329 = !DILocation(line: 0, scope: !357)
!1330 = !DILocation(line: 302, column: 7, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !357, file: !350, line: 302, column: 7)
!1332 = !DILocation(line: 302, column: 7, scope: !357)
!1333 = !DILocation(line: 307, column: 11, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !350, line: 307, column: 11)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !350, line: 303, column: 5)
!1336 = !DILocation(line: 307, column: 27, scope: !1334)
!1337 = !DILocation(line: 308, column: 11, scope: !1334)
!1338 = !DILocation(line: 308, column: 28, scope: !1334)
!1339 = !DILocation(line: 308, column: 25, scope: !1334)
!1340 = !DILocation(line: 309, column: 15, scope: !1334)
!1341 = !DILocation(line: 309, column: 33, scope: !1334)
!1342 = !DILocation(line: 310, column: 19, scope: !1334)
!1343 = !DILocation(line: 311, column: 22, scope: !1334)
!1344 = !DILocation(line: 311, column: 56, scope: !1334)
!1345 = !DILocation(line: 307, column: 11, scope: !1335)
!1346 = !DILocation(line: 316, column: 21, scope: !1335)
!1347 = !DILocation(line: 317, column: 23, scope: !1335)
!1348 = !DILocation(line: 318, column: 5, scope: !1335)
!1349 = !DILocation(line: 327, column: 3, scope: !357)
!1350 = !DILocation(line: 331, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !357, file: !350, line: 331, column: 7)
!1352 = !DILocation(line: 331, column: 7, scope: !357)
!1353 = !DILocation(line: 332, column: 5, scope: !1351)
!1354 = !DILocation(line: 338, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1351, file: !350, line: 334, column: 5)
!1356 = !DILocation(line: 346, column: 3, scope: !357)
!1357 = !DILocation(line: 350, column: 3, scope: !357)
!1358 = !DILocation(line: 356, column: 1, scope: !357)
!1359 = distinct !DISubprogram(name: "error_at_line", scope: !350, file: !350, line: 359, type: !1360, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !67, !67, !93, !62, !93, null}
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368}
!1363 = !DILocalVariable(name: "status", arg: 1, scope: !1359, file: !350, line: 359, type: !67)
!1364 = !DILocalVariable(name: "errnum", arg: 2, scope: !1359, file: !350, line: 359, type: !67)
!1365 = !DILocalVariable(name: "file_name", arg: 3, scope: !1359, file: !350, line: 359, type: !93)
!1366 = !DILocalVariable(name: "line_number", arg: 4, scope: !1359, file: !350, line: 360, type: !62)
!1367 = !DILocalVariable(name: "message", arg: 5, scope: !1359, file: !350, line: 360, type: !93)
!1368 = !DILocalVariable(name: "ap", scope: !1359, file: !350, line: 362, type: !1317)
!1369 = distinct !DIAssignID()
!1370 = !DILocation(line: 0, scope: !1359)
!1371 = !DILocation(line: 362, column: 3, scope: !1359)
!1372 = !DILocation(line: 363, column: 3, scope: !1359)
!1373 = !DILocation(line: 364, column: 3, scope: !1359)
!1374 = !DILocation(line: 366, column: 3, scope: !1359)
!1375 = !DILocation(line: 367, column: 1, scope: !1359)
!1376 = distinct !DISubprogram(name: "getprogname", scope: !680, file: !680, line: 54, type: !1377, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!93}
!1379 = !DILocation(line: 58, column: 10, scope: !1376)
!1380 = !DILocation(line: 58, column: 3, scope: !1376)
!1381 = distinct !DISubprogram(name: "set_program_name", scope: !401, file: !401, line: 37, type: !774, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "argv0", arg: 1, scope: !1381, file: !401, line: 37, type: !93)
!1384 = !DILocalVariable(name: "slash", scope: !1381, file: !401, line: 44, type: !93)
!1385 = !DILocalVariable(name: "base", scope: !1381, file: !401, line: 45, type: !93)
!1386 = !DILocation(line: 0, scope: !1381)
!1387 = !DILocation(line: 44, column: 23, scope: !1381)
!1388 = !DILocation(line: 45, column: 22, scope: !1381)
!1389 = !DILocation(line: 46, column: 17, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !401, line: 46, column: 7)
!1391 = !DILocation(line: 46, column: 9, scope: !1390)
!1392 = !DILocation(line: 46, column: 25, scope: !1390)
!1393 = !DILocation(line: 46, column: 40, scope: !1390)
!1394 = !DILocalVariable(name: "__s1", arg: 1, scope: !1395, file: !833, line: 974, type: !972)
!1395 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1396, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!129, !972, !972, !90}
!1398 = !{!1394, !1399, !1400}
!1399 = !DILocalVariable(name: "__s2", arg: 2, scope: !1395, file: !833, line: 974, type: !972)
!1400 = !DILocalVariable(name: "__n", arg: 3, scope: !1395, file: !833, line: 974, type: !90)
!1401 = !DILocation(line: 0, scope: !1395, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 46, column: 28, scope: !1390)
!1403 = !DILocation(line: 976, column: 11, scope: !1395, inlinedAt: !1402)
!1404 = !DILocation(line: 976, column: 10, scope: !1395, inlinedAt: !1402)
!1405 = !DILocation(line: 46, column: 7, scope: !1381)
!1406 = !DILocation(line: 49, column: 11, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !401, line: 49, column: 11)
!1408 = distinct !DILexicalBlock(scope: !1390, file: !401, line: 47, column: 5)
!1409 = !DILocation(line: 49, column: 36, scope: !1407)
!1410 = !DILocation(line: 49, column: 11, scope: !1408)
!1411 = !DILocation(line: 65, column: 16, scope: !1381)
!1412 = !DILocation(line: 71, column: 27, scope: !1381)
!1413 = !DILocation(line: 74, column: 33, scope: !1381)
!1414 = !DILocation(line: 76, column: 1, scope: !1381)
!1415 = !DISubprogram(name: "strrchr", scope: !940, file: !940, line: 273, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1416 = distinct !DIAssignID()
!1417 = !DILocation(line: 0, scope: !410)
!1418 = distinct !DIAssignID()
!1419 = !DILocation(line: 40, column: 29, scope: !410)
!1420 = !DILocation(line: 41, column: 19, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !410, file: !411, line: 41, column: 7)
!1422 = !DILocation(line: 41, column: 7, scope: !410)
!1423 = !DILocation(line: 47, column: 3, scope: !410)
!1424 = !DILocation(line: 48, column: 3, scope: !410)
!1425 = !DILocalVariable(name: "ps", arg: 1, scope: !1426, file: !1427, line: 1135, type: !1430)
!1426 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !1428, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1431)
!1427 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1431 = !{!1425}
!1432 = !DILocation(line: 0, scope: !1426, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 48, column: 18, scope: !410)
!1434 = !DILocalVariable(name: "__dest", arg: 1, scope: !1435, file: !1436, line: 57, type: !88)
!1435 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1439)
!1436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!88, !88, !67, !90}
!1439 = !{!1434, !1440, !1441}
!1440 = !DILocalVariable(name: "__ch", arg: 2, scope: !1435, file: !1436, line: 57, type: !67)
!1441 = !DILocalVariable(name: "__len", arg: 3, scope: !1435, file: !1436, line: 57, type: !90)
!1442 = !DILocation(line: 0, scope: !1435, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1137, column: 3, scope: !1426, inlinedAt: !1433)
!1444 = !DILocation(line: 59, column: 10, scope: !1435, inlinedAt: !1443)
!1445 = !DILocation(line: 49, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !410, file: !411, line: 49, column: 7)
!1447 = !DILocation(line: 49, column: 39, scope: !1446)
!1448 = !DILocation(line: 49, column: 44, scope: !1446)
!1449 = !DILocation(line: 54, column: 1, scope: !410)
!1450 = !DISubprogram(name: "mbrtoc32", scope: !422, file: !422, line: 57, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!90, !1453, !814, !90, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1430)
!1456 = distinct !DISubprogram(name: "clone_quoting_options", scope: !441, file: !441, line: 113, type: !1457, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1460)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1459, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "o", arg: 1, scope: !1456, file: !441, line: 113, type: !1459)
!1462 = !DILocalVariable(name: "saved_errno", scope: !1456, file: !441, line: 115, type: !67)
!1463 = !DILocalVariable(name: "p", scope: !1456, file: !441, line: 116, type: !1459)
!1464 = !DILocation(line: 0, scope: !1456)
!1465 = !DILocation(line: 115, column: 21, scope: !1456)
!1466 = !DILocation(line: 116, column: 40, scope: !1456)
!1467 = !DILocation(line: 116, column: 31, scope: !1456)
!1468 = !DILocation(line: 118, column: 9, scope: !1456)
!1469 = !DILocation(line: 119, column: 3, scope: !1456)
!1470 = distinct !DISubprogram(name: "get_quoting_style", scope: !441, file: !441, line: 124, type: !1471, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1475)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!467, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1470, file: !441, line: 124, type: !1473)
!1477 = !DILocation(line: 0, scope: !1470)
!1478 = !DILocation(line: 126, column: 11, scope: !1470)
!1479 = !DILocation(line: 126, column: 46, scope: !1470)
!1480 = !{!1481, !821, i64 0}
!1481 = !{!"quoting_options", !821, i64 0, !821, i64 4, !764, i64 8, !763, i64 40, !763, i64 48}
!1482 = !DILocation(line: 126, column: 3, scope: !1470)
!1483 = distinct !DISubprogram(name: "set_quoting_style", scope: !441, file: !441, line: 132, type: !1484, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1459, !467}
!1486 = !{!1487, !1488}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1483, file: !441, line: 132, type: !1459)
!1488 = !DILocalVariable(name: "s", arg: 2, scope: !1483, file: !441, line: 132, type: !467)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 134, column: 4, scope: !1483)
!1491 = !DILocation(line: 134, column: 45, scope: !1483)
!1492 = !DILocation(line: 135, column: 1, scope: !1483)
!1493 = distinct !DISubprogram(name: "set_char_quoting", scope: !441, file: !441, line: 143, type: !1494, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!67, !1459, !4, !67}
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1503, !1504}
!1497 = !DILocalVariable(name: "o", arg: 1, scope: !1493, file: !441, line: 143, type: !1459)
!1498 = !DILocalVariable(name: "c", arg: 2, scope: !1493, file: !441, line: 143, type: !4)
!1499 = !DILocalVariable(name: "i", arg: 3, scope: !1493, file: !441, line: 143, type: !67)
!1500 = !DILocalVariable(name: "uc", scope: !1493, file: !441, line: 145, type: !95)
!1501 = !DILocalVariable(name: "p", scope: !1493, file: !441, line: 146, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1503 = !DILocalVariable(name: "shift", scope: !1493, file: !441, line: 148, type: !67)
!1504 = !DILocalVariable(name: "r", scope: !1493, file: !441, line: 149, type: !62)
!1505 = !DILocation(line: 0, scope: !1493)
!1506 = !DILocation(line: 147, column: 6, scope: !1493)
!1507 = !DILocation(line: 147, column: 41, scope: !1493)
!1508 = !DILocation(line: 147, column: 62, scope: !1493)
!1509 = !DILocation(line: 147, column: 57, scope: !1493)
!1510 = !DILocation(line: 148, column: 15, scope: !1493)
!1511 = !DILocation(line: 149, column: 21, scope: !1493)
!1512 = !DILocation(line: 149, column: 24, scope: !1493)
!1513 = !DILocation(line: 149, column: 34, scope: !1493)
!1514 = !DILocation(line: 150, column: 19, scope: !1493)
!1515 = !DILocation(line: 150, column: 24, scope: !1493)
!1516 = !DILocation(line: 150, column: 6, scope: !1493)
!1517 = !DILocation(line: 151, column: 3, scope: !1493)
!1518 = distinct !DISubprogram(name: "set_quoting_flags", scope: !441, file: !441, line: 159, type: !1519, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!67, !1459, !67}
!1521 = !{!1522, !1523, !1524}
!1522 = !DILocalVariable(name: "o", arg: 1, scope: !1518, file: !441, line: 159, type: !1459)
!1523 = !DILocalVariable(name: "i", arg: 2, scope: !1518, file: !441, line: 159, type: !67)
!1524 = !DILocalVariable(name: "r", scope: !1518, file: !441, line: 163, type: !67)
!1525 = !DILocation(line: 0, scope: !1518)
!1526 = !DILocation(line: 161, column: 8, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !441, line: 161, column: 7)
!1528 = !DILocation(line: 161, column: 7, scope: !1518)
!1529 = !DILocation(line: 163, column: 14, scope: !1518)
!1530 = !{!1481, !821, i64 4}
!1531 = !DILocation(line: 164, column: 12, scope: !1518)
!1532 = !DILocation(line: 165, column: 3, scope: !1518)
!1533 = distinct !DISubprogram(name: "set_custom_quoting", scope: !441, file: !441, line: 169, type: !1534, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1459, !93, !93}
!1536 = !{!1537, !1538, !1539}
!1537 = !DILocalVariable(name: "o", arg: 1, scope: !1533, file: !441, line: 169, type: !1459)
!1538 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1533, file: !441, line: 170, type: !93)
!1539 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1533, file: !441, line: 170, type: !93)
!1540 = !DILocation(line: 0, scope: !1533)
!1541 = !DILocation(line: 172, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1533, file: !441, line: 172, column: 7)
!1543 = !DILocation(line: 172, column: 7, scope: !1533)
!1544 = !DILocation(line: 174, column: 12, scope: !1533)
!1545 = !DILocation(line: 175, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1533, file: !441, line: 175, column: 7)
!1547 = !DILocation(line: 175, column: 19, scope: !1546)
!1548 = !DILocation(line: 176, column: 5, scope: !1546)
!1549 = !DILocation(line: 177, column: 6, scope: !1533)
!1550 = !DILocation(line: 177, column: 17, scope: !1533)
!1551 = !{!1481, !763, i64 40}
!1552 = !DILocation(line: 178, column: 6, scope: !1533)
!1553 = !DILocation(line: 178, column: 18, scope: !1533)
!1554 = !{!1481, !763, i64 48}
!1555 = !DILocation(line: 179, column: 1, scope: !1533)
!1556 = !DISubprogram(name: "abort", scope: !948, file: !948, line: 598, type: !396, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1557 = distinct !DISubprogram(name: "quotearg_buffer", scope: !441, file: !441, line: 774, type: !1558, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!90, !87, !90, !93, !90, !1473}
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1561 = !DILocalVariable(name: "buffer", arg: 1, scope: !1557, file: !441, line: 774, type: !87)
!1562 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1557, file: !441, line: 774, type: !90)
!1563 = !DILocalVariable(name: "arg", arg: 3, scope: !1557, file: !441, line: 775, type: !93)
!1564 = !DILocalVariable(name: "argsize", arg: 4, scope: !1557, file: !441, line: 775, type: !90)
!1565 = !DILocalVariable(name: "o", arg: 5, scope: !1557, file: !441, line: 776, type: !1473)
!1566 = !DILocalVariable(name: "p", scope: !1557, file: !441, line: 778, type: !1473)
!1567 = !DILocalVariable(name: "saved_errno", scope: !1557, file: !441, line: 779, type: !67)
!1568 = !DILocalVariable(name: "r", scope: !1557, file: !441, line: 780, type: !90)
!1569 = !DILocation(line: 0, scope: !1557)
!1570 = !DILocation(line: 778, column: 37, scope: !1557)
!1571 = !DILocation(line: 779, column: 21, scope: !1557)
!1572 = !DILocation(line: 781, column: 43, scope: !1557)
!1573 = !DILocation(line: 781, column: 53, scope: !1557)
!1574 = !DILocation(line: 781, column: 63, scope: !1557)
!1575 = !DILocation(line: 782, column: 43, scope: !1557)
!1576 = !DILocation(line: 782, column: 58, scope: !1557)
!1577 = !DILocation(line: 780, column: 14, scope: !1557)
!1578 = !DILocation(line: 783, column: 9, scope: !1557)
!1579 = !DILocation(line: 784, column: 3, scope: !1557)
!1580 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !441, file: !441, line: 251, type: !1581, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1585)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!90, !87, !90, !93, !90, !467, !67, !1583, !93, !93}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1611, !1613, !1616, !1617, !1618, !1619, !1622, !1623, !1625, !1626, !1629, !1633, !1634, !1642, !1645, !1646, !1647}
!1586 = !DILocalVariable(name: "buffer", arg: 1, scope: !1580, file: !441, line: 251, type: !87)
!1587 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1580, file: !441, line: 251, type: !90)
!1588 = !DILocalVariable(name: "arg", arg: 3, scope: !1580, file: !441, line: 252, type: !93)
!1589 = !DILocalVariable(name: "argsize", arg: 4, scope: !1580, file: !441, line: 252, type: !90)
!1590 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1580, file: !441, line: 253, type: !467)
!1591 = !DILocalVariable(name: "flags", arg: 6, scope: !1580, file: !441, line: 253, type: !67)
!1592 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1580, file: !441, line: 254, type: !1583)
!1593 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1580, file: !441, line: 255, type: !93)
!1594 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1580, file: !441, line: 256, type: !93)
!1595 = !DILocalVariable(name: "unibyte_locale", scope: !1580, file: !441, line: 258, type: !129)
!1596 = !DILocalVariable(name: "len", scope: !1580, file: !441, line: 260, type: !90)
!1597 = !DILocalVariable(name: "orig_buffersize", scope: !1580, file: !441, line: 261, type: !90)
!1598 = !DILocalVariable(name: "quote_string", scope: !1580, file: !441, line: 262, type: !93)
!1599 = !DILocalVariable(name: "quote_string_len", scope: !1580, file: !441, line: 263, type: !90)
!1600 = !DILocalVariable(name: "backslash_escapes", scope: !1580, file: !441, line: 264, type: !129)
!1601 = !DILocalVariable(name: "elide_outer_quotes", scope: !1580, file: !441, line: 265, type: !129)
!1602 = !DILocalVariable(name: "encountered_single_quote", scope: !1580, file: !441, line: 266, type: !129)
!1603 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1580, file: !441, line: 267, type: !129)
!1604 = !DILabel(scope: !1580, name: "process_input", file: !441, line: 308)
!1605 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1580, file: !441, line: 309, type: !129)
!1606 = !DILocalVariable(name: "lq", scope: !1607, file: !441, line: 361, type: !93)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !441, line: 361, column: 11)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !441, line: 360, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !441, line: 333, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 312, column: 5)
!1611 = !DILocalVariable(name: "i", scope: !1612, file: !441, line: 395, type: !90)
!1612 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 395, column: 3)
!1613 = !DILocalVariable(name: "is_right_quote", scope: !1614, file: !441, line: 397, type: !129)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !441, line: 396, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 395, column: 3)
!1616 = !DILocalVariable(name: "escaping", scope: !1614, file: !441, line: 398, type: !129)
!1617 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1614, file: !441, line: 399, type: !129)
!1618 = !DILocalVariable(name: "c", scope: !1614, file: !441, line: 417, type: !95)
!1619 = !DILabel(scope: !1620, name: "c_and_shell_escape", file: !441, line: 502)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 478, column: 9)
!1621 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 419, column: 9)
!1622 = !DILabel(scope: !1620, name: "c_escape", file: !441, line: 507)
!1623 = !DILocalVariable(name: "m", scope: !1624, file: !441, line: 598, type: !90)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 596, column: 11)
!1625 = !DILocalVariable(name: "printable", scope: !1624, file: !441, line: 600, type: !129)
!1626 = !DILocalVariable(name: "mbs", scope: !1627, file: !441, line: 609, type: !528)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !441, line: 608, column: 15)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !441, line: 602, column: 17)
!1629 = !DILocalVariable(name: "w", scope: !1630, file: !441, line: 618, type: !421)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !441, line: 617, column: 19)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !441, line: 616, column: 17)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !441, line: 616, column: 17)
!1633 = !DILocalVariable(name: "bytes", scope: !1630, file: !441, line: 619, type: !90)
!1634 = !DILocalVariable(name: "j", scope: !1635, file: !441, line: 648, type: !90)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !441, line: 648, column: 29)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !441, line: 647, column: 27)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !441, line: 645, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !441, line: 636, column: 23)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !441, line: 628, column: 30)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !441, line: 623, column: 30)
!1641 = distinct !DILexicalBlock(scope: !1630, file: !441, line: 621, column: 25)
!1642 = !DILocalVariable(name: "ilim", scope: !1643, file: !441, line: 674, type: !90)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !441, line: 671, column: 15)
!1644 = distinct !DILexicalBlock(scope: !1624, file: !441, line: 670, column: 17)
!1645 = !DILabel(scope: !1614, name: "store_escape", file: !441, line: 709)
!1646 = !DILabel(scope: !1614, name: "store_c", file: !441, line: 712)
!1647 = !DILabel(scope: !1580, name: "force_outer_quoting_style", file: !441, line: 753)
!1648 = distinct !DIAssignID()
!1649 = distinct !DIAssignID()
!1650 = distinct !DIAssignID()
!1651 = distinct !DIAssignID()
!1652 = distinct !DIAssignID()
!1653 = !DILocation(line: 0, scope: !1627)
!1654 = distinct !DIAssignID()
!1655 = !DILocation(line: 0, scope: !1630)
!1656 = !DILocation(line: 0, scope: !1580)
!1657 = !DILocation(line: 258, column: 25, scope: !1580)
!1658 = !DILocation(line: 258, column: 36, scope: !1580)
!1659 = !DILocation(line: 265, column: 8, scope: !1580)
!1660 = !DILocation(line: 267, column: 3, scope: !1580)
!1661 = !DILocation(line: 261, column: 10, scope: !1580)
!1662 = !DILocation(line: 262, column: 15, scope: !1580)
!1663 = !DILocation(line: 263, column: 10, scope: !1580)
!1664 = !DILocation(line: 264, column: 8, scope: !1580)
!1665 = !DILocation(line: 266, column: 8, scope: !1580)
!1666 = !DILocation(line: 267, column: 8, scope: !1580)
!1667 = !DILocation(line: 308, column: 2, scope: !1580)
!1668 = !DILocation(line: 311, column: 3, scope: !1580)
!1669 = !DILocation(line: 318, column: 11, scope: !1610)
!1670 = !DILocation(line: 318, column: 12, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1610, file: !441, line: 318, column: 11)
!1672 = !DILocation(line: 319, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !441, line: 319, column: 9)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !441, line: 319, column: 9)
!1675 = !DILocation(line: 319, column: 9, scope: !1674)
!1676 = !DILocation(line: 0, scope: !519, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 357, column: 26, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !441, line: 335, column: 11)
!1679 = distinct !DILexicalBlock(scope: !1609, file: !441, line: 334, column: 13)
!1680 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1677)
!1681 = !DILocation(line: 201, column: 19, scope: !1682, inlinedAt: !1677)
!1682 = distinct !DILexicalBlock(scope: !519, file: !441, line: 201, column: 7)
!1683 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1677)
!1684 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1677)
!1685 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1677)
!1686 = !DILocalVariable(name: "ps", arg: 1, scope: !1687, file: !1427, line: 1135, type: !1690)
!1687 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !1688, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1691)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1691 = !{!1686}
!1692 = !DILocation(line: 0, scope: !1687, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1677)
!1694 = !DILocalVariable(name: "__dest", arg: 1, scope: !1695, file: !1436, line: 57, type: !88)
!1695 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1696)
!1696 = !{!1694, !1697, !1698}
!1697 = !DILocalVariable(name: "__ch", arg: 2, scope: !1695, file: !1436, line: 57, type: !67)
!1698 = !DILocalVariable(name: "__len", arg: 3, scope: !1695, file: !1436, line: 57, type: !90)
!1699 = !DILocation(line: 0, scope: !1695, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1693)
!1701 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1700)
!1702 = !DILocation(line: 231, column: 7, scope: !1703, inlinedAt: !1677)
!1703 = distinct !DILexicalBlock(scope: !519, file: !441, line: 231, column: 7)
!1704 = !DILocation(line: 231, column: 40, scope: !1703, inlinedAt: !1677)
!1705 = !DILocation(line: 231, column: 45, scope: !1703, inlinedAt: !1677)
!1706 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1677)
!1707 = !DILocation(line: 0, scope: !519, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 358, column: 27, scope: !1678)
!1709 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1708)
!1710 = !DILocation(line: 201, column: 19, scope: !1682, inlinedAt: !1708)
!1711 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1708)
!1712 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1708)
!1713 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1708)
!1714 = !DILocation(line: 0, scope: !1687, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1708)
!1716 = !DILocation(line: 0, scope: !1695, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1715)
!1718 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1717)
!1719 = !DILocation(line: 231, column: 7, scope: !1703, inlinedAt: !1708)
!1720 = !DILocation(line: 231, column: 40, scope: !1703, inlinedAt: !1708)
!1721 = !DILocation(line: 231, column: 45, scope: !1703, inlinedAt: !1708)
!1722 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1708)
!1723 = !DILocation(line: 360, column: 14, scope: !1608)
!1724 = !DILocation(line: 360, column: 13, scope: !1609)
!1725 = !DILocation(line: 0, scope: !1607)
!1726 = !DILocation(line: 361, column: 45, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1607, file: !441, line: 361, column: 11)
!1728 = !DILocation(line: 361, column: 11, scope: !1607)
!1729 = !DILocation(line: 362, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !441, line: 362, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !441, line: 362, column: 13)
!1732 = !DILocation(line: 362, column: 13, scope: !1731)
!1733 = !DILocation(line: 361, column: 52, scope: !1727)
!1734 = distinct !{!1734, !1728, !1735, !867}
!1735 = !DILocation(line: 362, column: 13, scope: !1607)
!1736 = !DILocation(line: 260, column: 10, scope: !1580)
!1737 = !DILocation(line: 365, column: 28, scope: !1609)
!1738 = !DILocation(line: 367, column: 7, scope: !1610)
!1739 = !DILocation(line: 370, column: 7, scope: !1610)
!1740 = !DILocation(line: 373, column: 7, scope: !1610)
!1741 = !DILocation(line: 376, column: 12, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1610, file: !441, line: 376, column: 11)
!1743 = !DILocation(line: 376, column: 11, scope: !1610)
!1744 = !DILocation(line: 381, column: 12, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1610, file: !441, line: 381, column: 11)
!1746 = !DILocation(line: 381, column: 11, scope: !1610)
!1747 = !DILocation(line: 382, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !441, line: 382, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !441, line: 382, column: 9)
!1750 = !DILocation(line: 382, column: 9, scope: !1749)
!1751 = !DILocation(line: 389, column: 7, scope: !1610)
!1752 = !DILocation(line: 392, column: 7, scope: !1610)
!1753 = !DILocation(line: 0, scope: !1612)
!1754 = !DILocation(line: 395, column: 8, scope: !1612)
!1755 = !DILocation(line: 309, column: 8, scope: !1580)
!1756 = !DILocation(line: 395, scope: !1612)
!1757 = !DILocation(line: 395, column: 34, scope: !1615)
!1758 = !DILocation(line: 395, column: 26, scope: !1615)
!1759 = !DILocation(line: 395, column: 48, scope: !1615)
!1760 = !DILocation(line: 395, column: 55, scope: !1615)
!1761 = !DILocation(line: 395, column: 3, scope: !1612)
!1762 = !DILocation(line: 395, column: 67, scope: !1615)
!1763 = !DILocation(line: 0, scope: !1614)
!1764 = !DILocation(line: 402, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 401, column: 11)
!1766 = !DILocation(line: 404, column: 17, scope: !1765)
!1767 = !DILocation(line: 405, column: 39, scope: !1765)
!1768 = !DILocation(line: 409, column: 32, scope: !1765)
!1769 = !DILocation(line: 405, column: 19, scope: !1765)
!1770 = !DILocation(line: 405, column: 15, scope: !1765)
!1771 = !DILocation(line: 410, column: 11, scope: !1765)
!1772 = !DILocation(line: 410, column: 25, scope: !1765)
!1773 = !DILocalVariable(name: "__s1", arg: 1, scope: !1774, file: !833, line: 974, type: !972)
!1774 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1396, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1775)
!1775 = !{!1773, !1776, !1777}
!1776 = !DILocalVariable(name: "__s2", arg: 2, scope: !1774, file: !833, line: 974, type: !972)
!1777 = !DILocalVariable(name: "__n", arg: 3, scope: !1774, file: !833, line: 974, type: !90)
!1778 = !DILocation(line: 0, scope: !1774, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 410, column: 14, scope: !1765)
!1780 = !DILocation(line: 976, column: 11, scope: !1774, inlinedAt: !1779)
!1781 = !DILocation(line: 976, column: 10, scope: !1774, inlinedAt: !1779)
!1782 = !DILocation(line: 401, column: 11, scope: !1614)
!1783 = !DILocation(line: 417, column: 25, scope: !1614)
!1784 = !DILocation(line: 418, column: 7, scope: !1614)
!1785 = !DILocation(line: 421, column: 15, scope: !1621)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !441, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !441, line: 422, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 421, column: 15)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !441, line: 423, column: 15)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !441, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !441, line: 423, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !441, line: 423, column: 15)
!1796 = !DILocation(line: 423, column: 15, scope: !1794)
!1797 = !DILocation(line: 423, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !441, line: 423, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !441, line: 423, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1799)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !441, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !441, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1803)
!1805 = !DILocation(line: 423, column: 15, scope: !1795)
!1806 = !DILocation(line: 423, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !441, line: 423, column: 15)
!1808 = distinct !DILexicalBlock(scope: !1787, file: !441, line: 423, column: 15)
!1809 = !DILocation(line: 423, column: 15, scope: !1808)
!1810 = !DILocation(line: 431, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1788, file: !441, line: 430, column: 19)
!1812 = !DILocation(line: 431, column: 24, scope: !1811)
!1813 = !DILocation(line: 431, column: 28, scope: !1811)
!1814 = !DILocation(line: 431, column: 38, scope: !1811)
!1815 = !DILocation(line: 431, column: 48, scope: !1811)
!1816 = !DILocation(line: 431, column: 59, scope: !1811)
!1817 = !DILocation(line: 433, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !441, line: 433, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !441, line: 433, column: 19)
!1820 = distinct !DILexicalBlock(scope: !1811, file: !441, line: 432, column: 17)
!1821 = !DILocation(line: 433, column: 19, scope: !1819)
!1822 = !DILocation(line: 434, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !441, line: 434, column: 19)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !441, line: 434, column: 19)
!1825 = !DILocation(line: 434, column: 19, scope: !1824)
!1826 = !DILocation(line: 435, column: 17, scope: !1820)
!1827 = !DILocation(line: 442, column: 20, scope: !1789)
!1828 = !DILocation(line: 447, column: 11, scope: !1621)
!1829 = !DILocation(line: 450, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 448, column: 13)
!1831 = !DILocation(line: 456, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1830, file: !441, line: 455, column: 19)
!1833 = !DILocation(line: 456, column: 24, scope: !1832)
!1834 = !DILocation(line: 456, column: 28, scope: !1832)
!1835 = !DILocation(line: 456, column: 38, scope: !1832)
!1836 = !DILocation(line: 456, column: 41, scope: !1832)
!1837 = !DILocation(line: 456, column: 52, scope: !1832)
!1838 = !DILocation(line: 455, column: 19, scope: !1830)
!1839 = !DILocation(line: 457, column: 25, scope: !1832)
!1840 = !DILocation(line: 457, column: 17, scope: !1832)
!1841 = !DILocation(line: 464, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1832, file: !441, line: 458, column: 19)
!1843 = !DILocation(line: 468, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !441, line: 468, column: 21)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !441, line: 468, column: 21)
!1846 = !DILocation(line: 468, column: 21, scope: !1845)
!1847 = !DILocation(line: 469, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !441, line: 469, column: 21)
!1849 = distinct !DILexicalBlock(scope: !1842, file: !441, line: 469, column: 21)
!1850 = !DILocation(line: 469, column: 21, scope: !1849)
!1851 = !DILocation(line: 470, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !441, line: 470, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !441, line: 470, column: 21)
!1854 = !DILocation(line: 470, column: 21, scope: !1853)
!1855 = !DILocation(line: 471, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !441, line: 471, column: 21)
!1857 = distinct !DILexicalBlock(scope: !1842, file: !441, line: 471, column: 21)
!1858 = !DILocation(line: 471, column: 21, scope: !1857)
!1859 = !DILocation(line: 472, column: 21, scope: !1842)
!1860 = !DILocation(line: 482, column: 33, scope: !1620)
!1861 = !DILocation(line: 483, column: 33, scope: !1620)
!1862 = !DILocation(line: 485, column: 33, scope: !1620)
!1863 = !DILocation(line: 486, column: 33, scope: !1620)
!1864 = !DILocation(line: 487, column: 33, scope: !1620)
!1865 = !DILocation(line: 490, column: 17, scope: !1620)
!1866 = !DILocation(line: 492, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !441, line: 491, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1620, file: !441, line: 490, column: 17)
!1869 = !DILocation(line: 499, column: 35, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1620, file: !441, line: 499, column: 17)
!1871 = !DILocation(line: 499, column: 57, scope: !1870)
!1872 = !DILocation(line: 0, scope: !1620)
!1873 = !DILocation(line: 502, column: 11, scope: !1620)
!1874 = !DILocation(line: 504, column: 17, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1620, file: !441, line: 503, column: 17)
!1876 = !DILocation(line: 507, column: 11, scope: !1620)
!1877 = !DILocation(line: 508, column: 17, scope: !1620)
!1878 = !DILocation(line: 517, column: 15, scope: !1621)
!1879 = !DILocation(line: 517, column: 40, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 517, column: 15)
!1881 = !DILocation(line: 517, column: 47, scope: !1880)
!1882 = !DILocation(line: 517, column: 18, scope: !1880)
!1883 = !DILocation(line: 521, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 521, column: 15)
!1885 = !DILocation(line: 521, column: 15, scope: !1621)
!1886 = !DILocation(line: 525, column: 11, scope: !1621)
!1887 = !DILocation(line: 537, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 536, column: 15)
!1889 = !DILocation(line: 544, column: 15, scope: !1621)
!1890 = !DILocation(line: 546, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !441, line: 545, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1621, file: !441, line: 544, column: 15)
!1893 = !DILocation(line: 549, column: 19, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !441, line: 549, column: 19)
!1895 = !DILocation(line: 549, column: 30, scope: !1894)
!1896 = !DILocation(line: 558, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !441, line: 558, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1891, file: !441, line: 558, column: 15)
!1899 = !DILocation(line: 558, column: 15, scope: !1898)
!1900 = !DILocation(line: 559, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !441, line: 559, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1891, file: !441, line: 559, column: 15)
!1903 = !DILocation(line: 559, column: 15, scope: !1902)
!1904 = !DILocation(line: 560, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !441, line: 560, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1891, file: !441, line: 560, column: 15)
!1907 = !DILocation(line: 560, column: 15, scope: !1906)
!1908 = !DILocation(line: 562, column: 13, scope: !1891)
!1909 = !DILocation(line: 602, column: 17, scope: !1624)
!1910 = !DILocation(line: 0, scope: !1624)
!1911 = !DILocation(line: 605, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1628, file: !441, line: 603, column: 15)
!1913 = !DILocation(line: 605, column: 27, scope: !1912)
!1914 = !DILocation(line: 606, column: 15, scope: !1912)
!1915 = !DILocation(line: 609, column: 17, scope: !1627)
!1916 = !DILocation(line: 0, scope: !1687, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 609, column: 32, scope: !1627)
!1918 = !DILocation(line: 0, scope: !1695, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1917)
!1920 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1919)
!1921 = !DILocation(line: 613, column: 29, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1627, file: !441, line: 613, column: 21)
!1923 = !DILocation(line: 613, column: 21, scope: !1627)
!1924 = !DILocation(line: 614, column: 29, scope: !1922)
!1925 = !DILocation(line: 614, column: 19, scope: !1922)
!1926 = !DILocation(line: 618, column: 21, scope: !1630)
!1927 = !DILocation(line: 620, column: 54, scope: !1630)
!1928 = !DILocation(line: 619, column: 36, scope: !1630)
!1929 = !DILocation(line: 621, column: 25, scope: !1630)
!1930 = !DILocation(line: 631, column: 38, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1639, file: !441, line: 629, column: 23)
!1932 = !DILocation(line: 631, column: 48, scope: !1931)
!1933 = !DILocation(line: 626, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1640, file: !441, line: 624, column: 23)
!1935 = !DILocation(line: 631, column: 51, scope: !1931)
!1936 = !DILocation(line: 631, column: 25, scope: !1931)
!1937 = !DILocation(line: 632, column: 28, scope: !1931)
!1938 = !DILocation(line: 631, column: 34, scope: !1931)
!1939 = distinct !{!1939, !1936, !1937, !867}
!1940 = !DILocation(line: 0, scope: !1635)
!1941 = !DILocation(line: 646, column: 29, scope: !1637)
!1942 = !DILocation(line: 649, column: 39, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1635, file: !441, line: 648, column: 29)
!1944 = !DILocation(line: 649, column: 31, scope: !1943)
!1945 = !DILocation(line: 648, column: 60, scope: !1943)
!1946 = !DILocation(line: 648, column: 50, scope: !1943)
!1947 = !DILocation(line: 648, column: 29, scope: !1635)
!1948 = distinct !{!1948, !1947, !1949, !867}
!1949 = !DILocation(line: 654, column: 33, scope: !1635)
!1950 = !DILocation(line: 657, column: 43, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1638, file: !441, line: 657, column: 29)
!1952 = !DILocalVariable(name: "wc", arg: 1, scope: !1953, file: !1954, line: 865, type: !1957)
!1953 = distinct !DISubprogram(name: "c32isprint", scope: !1954, file: !1954, line: 865, type: !1955, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1959)
!1954 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!67, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1958, line: 20, baseType: !62)
!1958 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1959 = !{!1952}
!1960 = !DILocation(line: 0, scope: !1953, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 657, column: 31, scope: !1951)
!1962 = !DILocation(line: 871, column: 10, scope: !1953, inlinedAt: !1961)
!1963 = !DILocation(line: 657, column: 31, scope: !1951)
!1964 = !DILocation(line: 664, column: 23, scope: !1630)
!1965 = !DILocation(line: 665, column: 19, scope: !1631)
!1966 = !DILocation(line: 666, column: 15, scope: !1628)
!1967 = !DILocation(line: 0, scope: !1628)
!1968 = !DILocation(line: 670, column: 19, scope: !1644)
!1969 = !DILocation(line: 670, column: 23, scope: !1644)
!1970 = !DILocation(line: 674, column: 33, scope: !1643)
!1971 = !DILocation(line: 0, scope: !1643)
!1972 = !DILocation(line: 676, column: 17, scope: !1643)
!1973 = !DILocation(line: 398, column: 12, scope: !1614)
!1974 = !DILocation(line: 678, column: 43, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !441, line: 678, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !441, line: 677, column: 19)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !441, line: 676, column: 17)
!1978 = distinct !DILexicalBlock(scope: !1643, file: !441, line: 676, column: 17)
!1979 = !DILocation(line: 680, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !441, line: 680, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !441, line: 679, column: 23)
!1982 = !DILocation(line: 680, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !441, line: 680, column: 25)
!1984 = !DILocation(line: 680, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !441, line: 680, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !441, line: 680, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !441, line: 680, column: 25)
!1988 = !DILocation(line: 680, column: 25, scope: !1986)
!1989 = !DILocation(line: 680, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !441, line: 680, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1987, file: !441, line: 680, column: 25)
!1992 = !DILocation(line: 680, column: 25, scope: !1991)
!1993 = !DILocation(line: 680, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !441, line: 680, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1987, file: !441, line: 680, column: 25)
!1996 = !DILocation(line: 680, column: 25, scope: !1995)
!1997 = !DILocation(line: 680, column: 25, scope: !1987)
!1998 = !DILocation(line: 680, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 680, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1980, file: !441, line: 680, column: 25)
!2001 = !DILocation(line: 680, column: 25, scope: !2000)
!2002 = !DILocation(line: 681, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 681, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1981, file: !441, line: 681, column: 25)
!2005 = !DILocation(line: 681, column: 25, scope: !2004)
!2006 = !DILocation(line: 682, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !441, line: 682, column: 25)
!2008 = distinct !DILexicalBlock(scope: !1981, file: !441, line: 682, column: 25)
!2009 = !DILocation(line: 682, column: 25, scope: !2008)
!2010 = !DILocation(line: 683, column: 38, scope: !1981)
!2011 = !DILocation(line: 683, column: 33, scope: !1981)
!2012 = !DILocation(line: 684, column: 23, scope: !1981)
!2013 = !DILocation(line: 685, column: 30, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1975, file: !441, line: 685, column: 30)
!2015 = !DILocation(line: 685, column: 30, scope: !1975)
!2016 = !DILocation(line: 687, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !441, line: 687, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !441, line: 687, column: 25)
!2019 = distinct !DILexicalBlock(scope: !2014, file: !441, line: 686, column: 23)
!2020 = !DILocation(line: 687, column: 25, scope: !2018)
!2021 = !DILocation(line: 689, column: 23, scope: !2019)
!2022 = !DILocation(line: 690, column: 35, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1976, file: !441, line: 690, column: 25)
!2024 = !DILocation(line: 690, column: 30, scope: !2023)
!2025 = !DILocation(line: 690, column: 25, scope: !1976)
!2026 = !DILocation(line: 692, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !441, line: 692, column: 21)
!2028 = distinct !DILexicalBlock(scope: !1976, file: !441, line: 692, column: 21)
!2029 = !DILocation(line: 692, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !441, line: 692, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !441, line: 692, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !441, line: 692, column: 21)
!2033 = !DILocation(line: 692, column: 21, scope: !2031)
!2034 = !DILocation(line: 692, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !441, line: 692, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2032, file: !441, line: 692, column: 21)
!2037 = !DILocation(line: 692, column: 21, scope: !2036)
!2038 = !DILocation(line: 692, column: 21, scope: !2032)
!2039 = !DILocation(line: 0, scope: !1976)
!2040 = !DILocation(line: 693, column: 21, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !441, line: 693, column: 21)
!2042 = distinct !DILexicalBlock(scope: !1976, file: !441, line: 693, column: 21)
!2043 = !DILocation(line: 693, column: 21, scope: !2042)
!2044 = !DILocation(line: 694, column: 25, scope: !1976)
!2045 = !DILocation(line: 676, column: 17, scope: !1977)
!2046 = distinct !{!2046, !2047, !2048}
!2047 = !DILocation(line: 676, column: 17, scope: !1978)
!2048 = !DILocation(line: 695, column: 19, scope: !1978)
!2049 = !DILocation(line: 409, column: 30, scope: !1765)
!2050 = !DILocation(line: 702, column: 34, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 702, column: 11)
!2052 = !DILocation(line: 704, column: 14, scope: !2051)
!2053 = !DILocation(line: 705, column: 14, scope: !2051)
!2054 = !DILocation(line: 705, column: 35, scope: !2051)
!2055 = !DILocation(line: 705, column: 17, scope: !2051)
!2056 = !DILocation(line: 705, column: 47, scope: !2051)
!2057 = !DILocation(line: 705, column: 65, scope: !2051)
!2058 = !DILocation(line: 706, column: 11, scope: !2051)
!2059 = !DILocation(line: 702, column: 11, scope: !1614)
!2060 = !DILocation(line: 395, column: 15, scope: !1612)
!2061 = !DILocation(line: 709, column: 5, scope: !1614)
!2062 = !DILocation(line: 710, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !441, line: 710, column: 7)
!2066 = !DILocation(line: 710, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !441, line: 710, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !441, line: 710, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !441, line: 710, column: 7)
!2070 = !DILocation(line: 710, column: 7, scope: !2068)
!2071 = !DILocation(line: 710, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !441, line: 710, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2069, file: !441, line: 710, column: 7)
!2074 = !DILocation(line: 710, column: 7, scope: !2073)
!2075 = !DILocation(line: 710, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !441, line: 710, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2069, file: !441, line: 710, column: 7)
!2078 = !DILocation(line: 710, column: 7, scope: !2077)
!2079 = !DILocation(line: 710, column: 7, scope: !2069)
!2080 = !DILocation(line: 710, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !441, line: 710, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2063, file: !441, line: 710, column: 7)
!2083 = !DILocation(line: 710, column: 7, scope: !2082)
!2084 = !DILocation(line: 712, column: 5, scope: !1614)
!2085 = !DILocation(line: 713, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !441, line: 713, column: 7)
!2087 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 713, column: 7)
!2088 = !DILocation(line: 417, column: 21, scope: !1614)
!2089 = !DILocation(line: 713, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !441, line: 713, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !441, line: 713, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2086, file: !441, line: 713, column: 7)
!2093 = !DILocation(line: 713, column: 7, scope: !2091)
!2094 = !DILocation(line: 713, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !441, line: 713, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !441, line: 713, column: 7)
!2097 = !DILocation(line: 713, column: 7, scope: !2096)
!2098 = !DILocation(line: 713, column: 7, scope: !2092)
!2099 = !DILocation(line: 714, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !441, line: 714, column: 7)
!2101 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 714, column: 7)
!2102 = !DILocation(line: 714, column: 7, scope: !2101)
!2103 = !DILocation(line: 716, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 716, column: 11)
!2105 = !DILocation(line: 716, column: 11, scope: !1614)
!2106 = !DILocation(line: 718, column: 5, scope: !1615)
!2107 = !DILocation(line: 395, column: 82, scope: !1615)
!2108 = !DILocation(line: 395, column: 3, scope: !1615)
!2109 = distinct !{!2109, !1761, !2110, !867}
!2110 = !DILocation(line: 718, column: 5, scope: !1612)
!2111 = !DILocation(line: 720, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 720, column: 7)
!2113 = !DILocation(line: 720, column: 16, scope: !2112)
!2114 = !DILocation(line: 728, column: 51, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 728, column: 7)
!2116 = !DILocation(line: 731, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !441, line: 731, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !441, line: 730, column: 5)
!2119 = !DILocation(line: 731, column: 11, scope: !2118)
!2120 = !DILocation(line: 732, column: 16, scope: !2117)
!2121 = !DILocation(line: 732, column: 9, scope: !2117)
!2122 = !DILocation(line: 736, column: 18, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2117, file: !441, line: 736, column: 16)
!2124 = !DILocation(line: 736, column: 29, scope: !2123)
!2125 = !DILocation(line: 745, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 745, column: 7)
!2127 = !DILocation(line: 745, column: 20, scope: !2126)
!2128 = !DILocation(line: 746, column: 12, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !441, line: 746, column: 5)
!2130 = distinct !DILexicalBlock(scope: !2126, file: !441, line: 746, column: 5)
!2131 = !DILocation(line: 746, column: 5, scope: !2130)
!2132 = !DILocation(line: 747, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !441, line: 747, column: 7)
!2134 = distinct !DILexicalBlock(scope: !2129, file: !441, line: 747, column: 7)
!2135 = !DILocation(line: 747, column: 7, scope: !2134)
!2136 = !DILocation(line: 746, column: 39, scope: !2129)
!2137 = distinct !{!2137, !2131, !2138, !867}
!2138 = !DILocation(line: 747, column: 7, scope: !2130)
!2139 = !DILocation(line: 749, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 749, column: 7)
!2141 = !DILocation(line: 749, column: 7, scope: !1580)
!2142 = !DILocation(line: 750, column: 5, scope: !2140)
!2143 = !DILocation(line: 750, column: 17, scope: !2140)
!2144 = !DILocation(line: 753, column: 2, scope: !1580)
!2145 = !DILocation(line: 756, column: 51, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1580, file: !441, line: 756, column: 7)
!2147 = !DILocation(line: 756, column: 21, scope: !2146)
!2148 = !DILocation(line: 760, column: 42, scope: !1580)
!2149 = !DILocation(line: 758, column: 10, scope: !1580)
!2150 = !DILocation(line: 758, column: 3, scope: !1580)
!2151 = !DILocation(line: 762, column: 1, scope: !1580)
!2152 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !948, file: !948, line: 98, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!90}
!2155 = !DISubprogram(name: "strlen", scope: !940, file: !940, line: 407, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!92, !93}
!2158 = !DISubprogram(name: "iswprint", scope: !2159, file: !2159, line: 120, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2160 = distinct !DISubprogram(name: "quotearg_alloc", scope: !441, file: !441, line: 788, type: !2161, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!87, !93, !90, !1473}
!2163 = !{!2164, !2165, !2166}
!2164 = !DILocalVariable(name: "arg", arg: 1, scope: !2160, file: !441, line: 788, type: !93)
!2165 = !DILocalVariable(name: "argsize", arg: 2, scope: !2160, file: !441, line: 788, type: !90)
!2166 = !DILocalVariable(name: "o", arg: 3, scope: !2160, file: !441, line: 789, type: !1473)
!2167 = !DILocation(line: 0, scope: !2160)
!2168 = !DILocalVariable(name: "arg", arg: 1, scope: !2169, file: !441, line: 801, type: !93)
!2169 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !441, file: !441, line: 801, type: !2170, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!87, !93, !90, !695, !1473}
!2172 = !{!2168, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2173 = !DILocalVariable(name: "argsize", arg: 2, scope: !2169, file: !441, line: 801, type: !90)
!2174 = !DILocalVariable(name: "size", arg: 3, scope: !2169, file: !441, line: 801, type: !695)
!2175 = !DILocalVariable(name: "o", arg: 4, scope: !2169, file: !441, line: 802, type: !1473)
!2176 = !DILocalVariable(name: "p", scope: !2169, file: !441, line: 804, type: !1473)
!2177 = !DILocalVariable(name: "saved_errno", scope: !2169, file: !441, line: 805, type: !67)
!2178 = !DILocalVariable(name: "flags", scope: !2169, file: !441, line: 807, type: !67)
!2179 = !DILocalVariable(name: "bufsize", scope: !2169, file: !441, line: 808, type: !90)
!2180 = !DILocalVariable(name: "buf", scope: !2169, file: !441, line: 812, type: !87)
!2181 = !DILocation(line: 0, scope: !2169, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 791, column: 10, scope: !2160)
!2183 = !DILocation(line: 804, column: 37, scope: !2169, inlinedAt: !2182)
!2184 = !DILocation(line: 805, column: 21, scope: !2169, inlinedAt: !2182)
!2185 = !DILocation(line: 807, column: 18, scope: !2169, inlinedAt: !2182)
!2186 = !DILocation(line: 807, column: 24, scope: !2169, inlinedAt: !2182)
!2187 = !DILocation(line: 808, column: 72, scope: !2169, inlinedAt: !2182)
!2188 = !DILocation(line: 809, column: 56, scope: !2169, inlinedAt: !2182)
!2189 = !DILocation(line: 810, column: 49, scope: !2169, inlinedAt: !2182)
!2190 = !DILocation(line: 811, column: 49, scope: !2169, inlinedAt: !2182)
!2191 = !DILocation(line: 808, column: 20, scope: !2169, inlinedAt: !2182)
!2192 = !DILocation(line: 811, column: 62, scope: !2169, inlinedAt: !2182)
!2193 = !DILocation(line: 812, column: 15, scope: !2169, inlinedAt: !2182)
!2194 = !DILocation(line: 813, column: 60, scope: !2169, inlinedAt: !2182)
!2195 = !DILocation(line: 815, column: 32, scope: !2169, inlinedAt: !2182)
!2196 = !DILocation(line: 815, column: 47, scope: !2169, inlinedAt: !2182)
!2197 = !DILocation(line: 813, column: 3, scope: !2169, inlinedAt: !2182)
!2198 = !DILocation(line: 816, column: 9, scope: !2169, inlinedAt: !2182)
!2199 = !DILocation(line: 791, column: 3, scope: !2160)
!2200 = !DILocation(line: 0, scope: !2169)
!2201 = !DILocation(line: 804, column: 37, scope: !2169)
!2202 = !DILocation(line: 805, column: 21, scope: !2169)
!2203 = !DILocation(line: 807, column: 18, scope: !2169)
!2204 = !DILocation(line: 807, column: 27, scope: !2169)
!2205 = !DILocation(line: 807, column: 24, scope: !2169)
!2206 = !DILocation(line: 808, column: 72, scope: !2169)
!2207 = !DILocation(line: 809, column: 56, scope: !2169)
!2208 = !DILocation(line: 810, column: 49, scope: !2169)
!2209 = !DILocation(line: 811, column: 49, scope: !2169)
!2210 = !DILocation(line: 808, column: 20, scope: !2169)
!2211 = !DILocation(line: 811, column: 62, scope: !2169)
!2212 = !DILocation(line: 812, column: 15, scope: !2169)
!2213 = !DILocation(line: 813, column: 60, scope: !2169)
!2214 = !DILocation(line: 815, column: 32, scope: !2169)
!2215 = !DILocation(line: 815, column: 47, scope: !2169)
!2216 = !DILocation(line: 813, column: 3, scope: !2169)
!2217 = !DILocation(line: 816, column: 9, scope: !2169)
!2218 = !DILocation(line: 817, column: 7, scope: !2169)
!2219 = !DILocation(line: 818, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2169, file: !441, line: 817, column: 7)
!2221 = !{!1284, !1284, i64 0}
!2222 = !DILocation(line: 818, column: 5, scope: !2220)
!2223 = !DILocation(line: 819, column: 3, scope: !2169)
!2224 = distinct !DISubprogram(name: "quotearg_free", scope: !441, file: !441, line: 837, type: !396, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2225)
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "sv", scope: !2224, file: !441, line: 839, type: !542)
!2227 = !DILocalVariable(name: "i", scope: !2228, file: !441, line: 840, type: !67)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !441, line: 840, column: 3)
!2229 = !DILocation(line: 839, column: 24, scope: !2224)
!2230 = !DILocation(line: 0, scope: !2224)
!2231 = !DILocation(line: 0, scope: !2228)
!2232 = !DILocation(line: 840, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2228, file: !441, line: 840, column: 3)
!2234 = !DILocation(line: 840, column: 3, scope: !2228)
!2235 = !DILocation(line: 842, column: 13, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2224, file: !441, line: 842, column: 7)
!2237 = !{!2238, !763, i64 8}
!2238 = !{!"slotvec", !1284, i64 0, !763, i64 8}
!2239 = !DILocation(line: 842, column: 17, scope: !2236)
!2240 = !DILocation(line: 842, column: 7, scope: !2224)
!2241 = !DILocation(line: 841, column: 17, scope: !2233)
!2242 = !DILocation(line: 841, column: 5, scope: !2233)
!2243 = !DILocation(line: 840, column: 32, scope: !2233)
!2244 = distinct !{!2244, !2234, !2245, !867}
!2245 = !DILocation(line: 841, column: 20, scope: !2228)
!2246 = !DILocation(line: 844, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2236, file: !441, line: 843, column: 5)
!2248 = !DILocation(line: 845, column: 21, scope: !2247)
!2249 = !{!2238, !1284, i64 0}
!2250 = !DILocation(line: 846, column: 20, scope: !2247)
!2251 = !DILocation(line: 847, column: 5, scope: !2247)
!2252 = !DILocation(line: 848, column: 10, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2224, file: !441, line: 848, column: 7)
!2254 = !DILocation(line: 848, column: 7, scope: !2224)
!2255 = !DILocation(line: 850, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !441, line: 849, column: 5)
!2257 = !DILocation(line: 851, column: 15, scope: !2256)
!2258 = !DILocation(line: 852, column: 5, scope: !2256)
!2259 = !DILocation(line: 853, column: 10, scope: !2224)
!2260 = !DILocation(line: 854, column: 1, scope: !2224)
!2261 = !DISubprogram(name: "free", scope: !1427, file: !1427, line: 786, type: !2262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{null, !88}
!2264 = distinct !DISubprogram(name: "quotearg_n", scope: !441, file: !441, line: 919, type: !937, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2265)
!2265 = !{!2266, !2267}
!2266 = !DILocalVariable(name: "n", arg: 1, scope: !2264, file: !441, line: 919, type: !67)
!2267 = !DILocalVariable(name: "arg", arg: 2, scope: !2264, file: !441, line: 919, type: !93)
!2268 = !DILocation(line: 0, scope: !2264)
!2269 = !DILocation(line: 921, column: 10, scope: !2264)
!2270 = !DILocation(line: 921, column: 3, scope: !2264)
!2271 = distinct !DISubprogram(name: "quotearg_n_options", scope: !441, file: !441, line: 866, type: !2272, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!87, !67, !93, !90, !1473}
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2285, !2286, !2288, !2289, !2290}
!2275 = !DILocalVariable(name: "n", arg: 1, scope: !2271, file: !441, line: 866, type: !67)
!2276 = !DILocalVariable(name: "arg", arg: 2, scope: !2271, file: !441, line: 866, type: !93)
!2277 = !DILocalVariable(name: "argsize", arg: 3, scope: !2271, file: !441, line: 866, type: !90)
!2278 = !DILocalVariable(name: "options", arg: 4, scope: !2271, file: !441, line: 867, type: !1473)
!2279 = !DILocalVariable(name: "saved_errno", scope: !2271, file: !441, line: 869, type: !67)
!2280 = !DILocalVariable(name: "sv", scope: !2271, file: !441, line: 871, type: !542)
!2281 = !DILocalVariable(name: "nslots_max", scope: !2271, file: !441, line: 873, type: !67)
!2282 = !DILocalVariable(name: "preallocated", scope: !2283, file: !441, line: 879, type: !129)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !441, line: 878, column: 5)
!2284 = distinct !DILexicalBlock(scope: !2271, file: !441, line: 877, column: 7)
!2285 = !DILocalVariable(name: "new_nslots", scope: !2283, file: !441, line: 880, type: !708)
!2286 = !DILocalVariable(name: "size", scope: !2287, file: !441, line: 891, type: !90)
!2287 = distinct !DILexicalBlock(scope: !2271, file: !441, line: 890, column: 3)
!2288 = !DILocalVariable(name: "val", scope: !2287, file: !441, line: 892, type: !87)
!2289 = !DILocalVariable(name: "flags", scope: !2287, file: !441, line: 894, type: !67)
!2290 = !DILocalVariable(name: "qsize", scope: !2287, file: !441, line: 895, type: !90)
!2291 = distinct !DIAssignID()
!2292 = !DILocation(line: 0, scope: !2283)
!2293 = !DILocation(line: 0, scope: !2271)
!2294 = !DILocation(line: 869, column: 21, scope: !2271)
!2295 = !DILocation(line: 871, column: 24, scope: !2271)
!2296 = !DILocation(line: 874, column: 17, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2271, file: !441, line: 874, column: 7)
!2298 = !DILocation(line: 875, column: 5, scope: !2297)
!2299 = !DILocation(line: 877, column: 7, scope: !2284)
!2300 = !DILocation(line: 877, column: 14, scope: !2284)
!2301 = !DILocation(line: 877, column: 7, scope: !2271)
!2302 = !DILocation(line: 879, column: 31, scope: !2283)
!2303 = !DILocation(line: 880, column: 7, scope: !2283)
!2304 = !DILocation(line: 880, column: 26, scope: !2283)
!2305 = !DILocation(line: 880, column: 13, scope: !2283)
!2306 = distinct !DIAssignID()
!2307 = !DILocation(line: 882, column: 31, scope: !2283)
!2308 = !DILocation(line: 883, column: 33, scope: !2283)
!2309 = !DILocation(line: 883, column: 42, scope: !2283)
!2310 = !DILocation(line: 883, column: 31, scope: !2283)
!2311 = !DILocation(line: 882, column: 22, scope: !2283)
!2312 = !DILocation(line: 882, column: 15, scope: !2283)
!2313 = !DILocation(line: 884, column: 11, scope: !2283)
!2314 = !DILocation(line: 885, column: 15, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2283, file: !441, line: 884, column: 11)
!2316 = !{i64 0, i64 8, !2221, i64 8, i64 8, !762}
!2317 = !DILocation(line: 885, column: 9, scope: !2315)
!2318 = !DILocation(line: 886, column: 20, scope: !2283)
!2319 = !DILocation(line: 886, column: 18, scope: !2283)
!2320 = !DILocation(line: 886, column: 32, scope: !2283)
!2321 = !DILocation(line: 886, column: 43, scope: !2283)
!2322 = !DILocation(line: 886, column: 53, scope: !2283)
!2323 = !DILocation(line: 0, scope: !1695, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 886, column: 7, scope: !2283)
!2325 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !2324)
!2326 = !DILocation(line: 887, column: 16, scope: !2283)
!2327 = !DILocation(line: 887, column: 14, scope: !2283)
!2328 = !DILocation(line: 888, column: 5, scope: !2284)
!2329 = !DILocation(line: 888, column: 5, scope: !2283)
!2330 = !DILocation(line: 891, column: 19, scope: !2287)
!2331 = !DILocation(line: 891, column: 25, scope: !2287)
!2332 = !DILocation(line: 0, scope: !2287)
!2333 = !DILocation(line: 892, column: 23, scope: !2287)
!2334 = !DILocation(line: 894, column: 26, scope: !2287)
!2335 = !DILocation(line: 894, column: 32, scope: !2287)
!2336 = !DILocation(line: 896, column: 55, scope: !2287)
!2337 = !DILocation(line: 897, column: 55, scope: !2287)
!2338 = !DILocation(line: 898, column: 55, scope: !2287)
!2339 = !DILocation(line: 899, column: 55, scope: !2287)
!2340 = !DILocation(line: 895, column: 20, scope: !2287)
!2341 = !DILocation(line: 901, column: 14, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2287, file: !441, line: 901, column: 9)
!2343 = !DILocation(line: 901, column: 9, scope: !2287)
!2344 = !DILocation(line: 903, column: 35, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !441, line: 902, column: 7)
!2346 = !DILocation(line: 903, column: 20, scope: !2345)
!2347 = !DILocation(line: 904, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !441, line: 904, column: 13)
!2349 = !DILocation(line: 904, column: 13, scope: !2345)
!2350 = !DILocation(line: 905, column: 11, scope: !2348)
!2351 = !DILocation(line: 906, column: 27, scope: !2345)
!2352 = !DILocation(line: 906, column: 19, scope: !2345)
!2353 = !DILocation(line: 907, column: 69, scope: !2345)
!2354 = !DILocation(line: 909, column: 44, scope: !2345)
!2355 = !DILocation(line: 910, column: 44, scope: !2345)
!2356 = !DILocation(line: 907, column: 9, scope: !2345)
!2357 = !DILocation(line: 911, column: 7, scope: !2345)
!2358 = !DILocation(line: 913, column: 11, scope: !2287)
!2359 = !DILocation(line: 914, column: 5, scope: !2287)
!2360 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !441, file: !441, line: 925, type: !2361, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!87, !67, !93, !90}
!2363 = !{!2364, !2365, !2366}
!2364 = !DILocalVariable(name: "n", arg: 1, scope: !2360, file: !441, line: 925, type: !67)
!2365 = !DILocalVariable(name: "arg", arg: 2, scope: !2360, file: !441, line: 925, type: !93)
!2366 = !DILocalVariable(name: "argsize", arg: 3, scope: !2360, file: !441, line: 925, type: !90)
!2367 = !DILocation(line: 0, scope: !2360)
!2368 = !DILocation(line: 927, column: 10, scope: !2360)
!2369 = !DILocation(line: 927, column: 3, scope: !2360)
!2370 = distinct !DISubprogram(name: "quotearg", scope: !441, file: !441, line: 931, type: !950, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2371)
!2371 = !{!2372}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !441, line: 931, type: !93)
!2373 = !DILocation(line: 0, scope: !2370)
!2374 = !DILocation(line: 0, scope: !2264, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 933, column: 10, scope: !2370)
!2376 = !DILocation(line: 921, column: 10, scope: !2264, inlinedAt: !2375)
!2377 = !DILocation(line: 933, column: 3, scope: !2370)
!2378 = distinct !DISubprogram(name: "quotearg_mem", scope: !441, file: !441, line: 937, type: !2379, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!87, !93, !90}
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !441, line: 937, type: !93)
!2383 = !DILocalVariable(name: "argsize", arg: 2, scope: !2378, file: !441, line: 937, type: !90)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 0, scope: !2360, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 939, column: 10, scope: !2378)
!2387 = !DILocation(line: 927, column: 10, scope: !2360, inlinedAt: !2386)
!2388 = !DILocation(line: 939, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "quotearg_n_style", scope: !441, file: !441, line: 943, type: !2390, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!87, !67, !467, !93}
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "n", arg: 1, scope: !2389, file: !441, line: 943, type: !67)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2389, file: !441, line: 943, type: !467)
!2395 = !DILocalVariable(name: "arg", arg: 3, scope: !2389, file: !441, line: 943, type: !93)
!2396 = !DILocalVariable(name: "o", scope: !2389, file: !441, line: 945, type: !1474)
!2397 = distinct !DIAssignID()
!2398 = !DILocation(line: 0, scope: !2389)
!2399 = !DILocation(line: 945, column: 3, scope: !2389)
!2400 = !{!2401}
!2401 = distinct !{!2401, !2402, !"quoting_options_from_style: argument 0"}
!2402 = distinct !{!2402, !"quoting_options_from_style"}
!2403 = !DILocation(line: 945, column: 36, scope: !2389)
!2404 = !DILocalVariable(name: "style", arg: 1, scope: !2405, file: !441, line: 183, type: !467)
!2405 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !441, file: !441, line: 183, type: !2406, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!494, !467}
!2408 = !{!2404, !2409}
!2409 = !DILocalVariable(name: "o", scope: !2405, file: !441, line: 185, type: !494)
!2410 = !DILocation(line: 0, scope: !2405, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 945, column: 36, scope: !2389)
!2412 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2411)
!2413 = distinct !DIAssignID()
!2414 = !DILocation(line: 186, column: 13, scope: !2415, inlinedAt: !2411)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !441, line: 186, column: 7)
!2416 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2411)
!2417 = !DILocation(line: 187, column: 5, scope: !2415, inlinedAt: !2411)
!2418 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2411)
!2419 = distinct !DIAssignID()
!2420 = !DILocation(line: 946, column: 10, scope: !2389)
!2421 = !DILocation(line: 947, column: 1, scope: !2389)
!2422 = !DILocation(line: 946, column: 3, scope: !2389)
!2423 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !441, file: !441, line: 950, type: !2424, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!87, !67, !467, !93, !90}
!2426 = !{!2427, !2428, !2429, !2430, !2431}
!2427 = !DILocalVariable(name: "n", arg: 1, scope: !2423, file: !441, line: 950, type: !67)
!2428 = !DILocalVariable(name: "s", arg: 2, scope: !2423, file: !441, line: 950, type: !467)
!2429 = !DILocalVariable(name: "arg", arg: 3, scope: !2423, file: !441, line: 951, type: !93)
!2430 = !DILocalVariable(name: "argsize", arg: 4, scope: !2423, file: !441, line: 951, type: !90)
!2431 = !DILocalVariable(name: "o", scope: !2423, file: !441, line: 953, type: !1474)
!2432 = distinct !DIAssignID()
!2433 = !DILocation(line: 0, scope: !2423)
!2434 = !DILocation(line: 953, column: 3, scope: !2423)
!2435 = !{!2436}
!2436 = distinct !{!2436, !2437, !"quoting_options_from_style: argument 0"}
!2437 = distinct !{!2437, !"quoting_options_from_style"}
!2438 = !DILocation(line: 953, column: 36, scope: !2423)
!2439 = !DILocation(line: 0, scope: !2405, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 953, column: 36, scope: !2423)
!2441 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2440)
!2442 = distinct !DIAssignID()
!2443 = !DILocation(line: 186, column: 13, scope: !2415, inlinedAt: !2440)
!2444 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2440)
!2445 = !DILocation(line: 187, column: 5, scope: !2415, inlinedAt: !2440)
!2446 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2440)
!2447 = distinct !DIAssignID()
!2448 = !DILocation(line: 954, column: 10, scope: !2423)
!2449 = !DILocation(line: 955, column: 1, scope: !2423)
!2450 = !DILocation(line: 954, column: 3, scope: !2423)
!2451 = distinct !DISubprogram(name: "quotearg_style", scope: !441, file: !441, line: 958, type: !2452, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!87, !467, !93}
!2454 = !{!2455, !2456}
!2455 = !DILocalVariable(name: "s", arg: 1, scope: !2451, file: !441, line: 958, type: !467)
!2456 = !DILocalVariable(name: "arg", arg: 2, scope: !2451, file: !441, line: 958, type: !93)
!2457 = distinct !DIAssignID()
!2458 = !DILocation(line: 0, scope: !2451)
!2459 = !DILocation(line: 0, scope: !2389, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 960, column: 10, scope: !2451)
!2461 = !DILocation(line: 945, column: 3, scope: !2389, inlinedAt: !2460)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 945, column: 36, scope: !2389, inlinedAt: !2460)
!2466 = !DILocation(line: 0, scope: !2405, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 945, column: 36, scope: !2389, inlinedAt: !2460)
!2468 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2467)
!2469 = distinct !DIAssignID()
!2470 = !DILocation(line: 186, column: 13, scope: !2415, inlinedAt: !2467)
!2471 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2467)
!2472 = !DILocation(line: 187, column: 5, scope: !2415, inlinedAt: !2467)
!2473 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2467)
!2474 = distinct !DIAssignID()
!2475 = !DILocation(line: 946, column: 10, scope: !2389, inlinedAt: !2460)
!2476 = !DILocation(line: 947, column: 1, scope: !2389, inlinedAt: !2460)
!2477 = !DILocation(line: 960, column: 3, scope: !2451)
!2478 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !441, file: !441, line: 964, type: !2479, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2481)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!87, !467, !93, !90}
!2481 = !{!2482, !2483, !2484}
!2482 = !DILocalVariable(name: "s", arg: 1, scope: !2478, file: !441, line: 964, type: !467)
!2483 = !DILocalVariable(name: "arg", arg: 2, scope: !2478, file: !441, line: 964, type: !93)
!2484 = !DILocalVariable(name: "argsize", arg: 3, scope: !2478, file: !441, line: 964, type: !90)
!2485 = distinct !DIAssignID()
!2486 = !DILocation(line: 0, scope: !2478)
!2487 = !DILocation(line: 0, scope: !2423, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 966, column: 10, scope: !2478)
!2489 = !DILocation(line: 953, column: 3, scope: !2423, inlinedAt: !2488)
!2490 = !{!2491}
!2491 = distinct !{!2491, !2492, !"quoting_options_from_style: argument 0"}
!2492 = distinct !{!2492, !"quoting_options_from_style"}
!2493 = !DILocation(line: 953, column: 36, scope: !2423, inlinedAt: !2488)
!2494 = !DILocation(line: 0, scope: !2405, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 953, column: 36, scope: !2423, inlinedAt: !2488)
!2496 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2495)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 186, column: 13, scope: !2415, inlinedAt: !2495)
!2499 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2495)
!2500 = !DILocation(line: 187, column: 5, scope: !2415, inlinedAt: !2495)
!2501 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2495)
!2502 = distinct !DIAssignID()
!2503 = !DILocation(line: 954, column: 10, scope: !2423, inlinedAt: !2488)
!2504 = !DILocation(line: 955, column: 1, scope: !2423, inlinedAt: !2488)
!2505 = !DILocation(line: 966, column: 3, scope: !2478)
!2506 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !441, file: !441, line: 970, type: !2507, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!87, !93, !90, !4}
!2509 = !{!2510, !2511, !2512, !2513}
!2510 = !DILocalVariable(name: "arg", arg: 1, scope: !2506, file: !441, line: 970, type: !93)
!2511 = !DILocalVariable(name: "argsize", arg: 2, scope: !2506, file: !441, line: 970, type: !90)
!2512 = !DILocalVariable(name: "ch", arg: 3, scope: !2506, file: !441, line: 970, type: !4)
!2513 = !DILocalVariable(name: "options", scope: !2506, file: !441, line: 972, type: !494)
!2514 = distinct !DIAssignID()
!2515 = !DILocation(line: 0, scope: !2506)
!2516 = !DILocation(line: 972, column: 3, scope: !2506)
!2517 = !DILocation(line: 973, column: 13, scope: !2506)
!2518 = !{i64 0, i64 4, !820, i64 4, i64 4, !820, i64 8, i64 32, !829, i64 40, i64 8, !762, i64 48, i64 8, !762}
!2519 = distinct !DIAssignID()
!2520 = !DILocation(line: 0, scope: !1493, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 974, column: 3, scope: !2506)
!2522 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !2521)
!2523 = !DILocation(line: 147, column: 62, scope: !1493, inlinedAt: !2521)
!2524 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2521)
!2525 = !DILocation(line: 148, column: 15, scope: !1493, inlinedAt: !2521)
!2526 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2521)
!2527 = !DILocation(line: 149, column: 24, scope: !1493, inlinedAt: !2521)
!2528 = !DILocation(line: 150, column: 19, scope: !1493, inlinedAt: !2521)
!2529 = !DILocation(line: 150, column: 24, scope: !1493, inlinedAt: !2521)
!2530 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2521)
!2531 = !DILocation(line: 975, column: 10, scope: !2506)
!2532 = !DILocation(line: 976, column: 1, scope: !2506)
!2533 = !DILocation(line: 975, column: 3, scope: !2506)
!2534 = distinct !DISubprogram(name: "quotearg_char", scope: !441, file: !441, line: 979, type: !2535, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!87, !93, !4}
!2537 = !{!2538, !2539}
!2538 = !DILocalVariable(name: "arg", arg: 1, scope: !2534, file: !441, line: 979, type: !93)
!2539 = !DILocalVariable(name: "ch", arg: 2, scope: !2534, file: !441, line: 979, type: !4)
!2540 = distinct !DIAssignID()
!2541 = !DILocation(line: 0, scope: !2534)
!2542 = !DILocation(line: 0, scope: !2506, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 981, column: 10, scope: !2534)
!2544 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2543)
!2545 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2543)
!2546 = distinct !DIAssignID()
!2547 = !DILocation(line: 0, scope: !1493, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2543)
!2549 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !2548)
!2550 = !DILocation(line: 147, column: 62, scope: !1493, inlinedAt: !2548)
!2551 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2548)
!2552 = !DILocation(line: 148, column: 15, scope: !1493, inlinedAt: !2548)
!2553 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2548)
!2554 = !DILocation(line: 149, column: 24, scope: !1493, inlinedAt: !2548)
!2555 = !DILocation(line: 150, column: 19, scope: !1493, inlinedAt: !2548)
!2556 = !DILocation(line: 150, column: 24, scope: !1493, inlinedAt: !2548)
!2557 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2548)
!2558 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2543)
!2559 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2543)
!2560 = !DILocation(line: 981, column: 3, scope: !2534)
!2561 = distinct !DISubprogram(name: "quotearg_colon", scope: !441, file: !441, line: 985, type: !950, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2562)
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !441, line: 985, type: !93)
!2564 = distinct !DIAssignID()
!2565 = !DILocation(line: 0, scope: !2561)
!2566 = !DILocation(line: 0, scope: !2534, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 987, column: 10, scope: !2561)
!2568 = !DILocation(line: 0, scope: !2506, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 981, column: 10, scope: !2534, inlinedAt: !2567)
!2570 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2569)
!2571 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2569)
!2572 = distinct !DIAssignID()
!2573 = !DILocation(line: 0, scope: !1493, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2569)
!2575 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2574)
!2576 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2574)
!2577 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2574)
!2578 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2569)
!2579 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2569)
!2580 = !DILocation(line: 987, column: 3, scope: !2561)
!2581 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !441, file: !441, line: 991, type: !2379, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2582)
!2582 = !{!2583, !2584}
!2583 = !DILocalVariable(name: "arg", arg: 1, scope: !2581, file: !441, line: 991, type: !93)
!2584 = !DILocalVariable(name: "argsize", arg: 2, scope: !2581, file: !441, line: 991, type: !90)
!2585 = distinct !DIAssignID()
!2586 = !DILocation(line: 0, scope: !2581)
!2587 = !DILocation(line: 0, scope: !2506, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 993, column: 10, scope: !2581)
!2589 = !DILocation(line: 972, column: 3, scope: !2506, inlinedAt: !2588)
!2590 = !DILocation(line: 973, column: 13, scope: !2506, inlinedAt: !2588)
!2591 = distinct !DIAssignID()
!2592 = !DILocation(line: 0, scope: !1493, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 974, column: 3, scope: !2506, inlinedAt: !2588)
!2594 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2593)
!2595 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2593)
!2596 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2593)
!2597 = !DILocation(line: 975, column: 10, scope: !2506, inlinedAt: !2588)
!2598 = !DILocation(line: 976, column: 1, scope: !2506, inlinedAt: !2588)
!2599 = !DILocation(line: 993, column: 3, scope: !2581)
!2600 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !441, file: !441, line: 997, type: !2390, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !441, line: 997, type: !67)
!2603 = !DILocalVariable(name: "s", arg: 2, scope: !2600, file: !441, line: 997, type: !467)
!2604 = !DILocalVariable(name: "arg", arg: 3, scope: !2600, file: !441, line: 997, type: !93)
!2605 = !DILocalVariable(name: "options", scope: !2600, file: !441, line: 999, type: !494)
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 0, scope: !2600)
!2608 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1000, column: 13, scope: !2600)
!2610 = !DILocation(line: 999, column: 3, scope: !2600)
!2611 = !DILocation(line: 0, scope: !2405, inlinedAt: !2609)
!2612 = !DILocation(line: 186, column: 13, scope: !2415, inlinedAt: !2609)
!2613 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2609)
!2614 = !DILocation(line: 187, column: 5, scope: !2415, inlinedAt: !2609)
!2615 = !{!2616}
!2616 = distinct !{!2616, !2617, !"quoting_options_from_style: argument 0"}
!2617 = distinct !{!2617, !"quoting_options_from_style"}
!2618 = !DILocation(line: 1000, column: 13, scope: !2600)
!2619 = distinct !DIAssignID()
!2620 = distinct !DIAssignID()
!2621 = !DILocation(line: 0, scope: !1493, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1001, column: 3, scope: !2600)
!2623 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2622)
!2624 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2622)
!2625 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2622)
!2626 = distinct !DIAssignID()
!2627 = !DILocation(line: 1002, column: 10, scope: !2600)
!2628 = !DILocation(line: 1003, column: 1, scope: !2600)
!2629 = !DILocation(line: 1002, column: 3, scope: !2600)
!2630 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !441, file: !441, line: 1006, type: !2631, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!87, !67, !93, !93, !93}
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !441, line: 1006, type: !67)
!2635 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2630, file: !441, line: 1006, type: !93)
!2636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2630, file: !441, line: 1007, type: !93)
!2637 = !DILocalVariable(name: "arg", arg: 4, scope: !2630, file: !441, line: 1007, type: !93)
!2638 = distinct !DIAssignID()
!2639 = !DILocation(line: 0, scope: !2630)
!2640 = !DILocalVariable(name: "o", scope: !2641, file: !441, line: 1018, type: !494)
!2641 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !441, file: !441, line: 1014, type: !2642, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!87, !67, !93, !93, !93, !90}
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2640}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !441, line: 1014, type: !67)
!2646 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2641, file: !441, line: 1014, type: !93)
!2647 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2641, file: !441, line: 1015, type: !93)
!2648 = !DILocalVariable(name: "arg", arg: 4, scope: !2641, file: !441, line: 1016, type: !93)
!2649 = !DILocalVariable(name: "argsize", arg: 5, scope: !2641, file: !441, line: 1016, type: !90)
!2650 = !DILocation(line: 0, scope: !2641, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1009, column: 10, scope: !2630)
!2652 = !DILocation(line: 1018, column: 3, scope: !2641, inlinedAt: !2651)
!2653 = !DILocation(line: 1018, column: 30, scope: !2641, inlinedAt: !2651)
!2654 = distinct !DIAssignID()
!2655 = distinct !DIAssignID()
!2656 = !DILocation(line: 0, scope: !1533, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1019, column: 3, scope: !2641, inlinedAt: !2651)
!2658 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2657)
!2659 = distinct !DIAssignID()
!2660 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2657)
!2661 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2657)
!2662 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2657)
!2663 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2657)
!2664 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2657)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2657)
!2667 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2657)
!2668 = distinct !DIAssignID()
!2669 = !DILocation(line: 1020, column: 10, scope: !2641, inlinedAt: !2651)
!2670 = !DILocation(line: 1021, column: 1, scope: !2641, inlinedAt: !2651)
!2671 = !DILocation(line: 1009, column: 3, scope: !2630)
!2672 = distinct !DIAssignID()
!2673 = !DILocation(line: 0, scope: !2641)
!2674 = !DILocation(line: 1018, column: 3, scope: !2641)
!2675 = !DILocation(line: 1018, column: 30, scope: !2641)
!2676 = distinct !DIAssignID()
!2677 = distinct !DIAssignID()
!2678 = !DILocation(line: 0, scope: !1533, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1019, column: 3, scope: !2641)
!2680 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2679)
!2681 = distinct !DIAssignID()
!2682 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2679)
!2683 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2679)
!2684 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2679)
!2685 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2679)
!2686 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2679)
!2687 = distinct !DIAssignID()
!2688 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2679)
!2689 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2679)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 1020, column: 10, scope: !2641)
!2692 = !DILocation(line: 1021, column: 1, scope: !2641)
!2693 = !DILocation(line: 1020, column: 3, scope: !2641)
!2694 = distinct !DISubprogram(name: "quotearg_custom", scope: !441, file: !441, line: 1024, type: !2695, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!87, !93, !93, !93}
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2694, file: !441, line: 1024, type: !93)
!2699 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2694, file: !441, line: 1024, type: !93)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !441, line: 1025, type: !93)
!2701 = distinct !DIAssignID()
!2702 = !DILocation(line: 0, scope: !2694)
!2703 = !DILocation(line: 0, scope: !2630, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1027, column: 10, scope: !2694)
!2705 = !DILocation(line: 0, scope: !2641, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 1009, column: 10, scope: !2630, inlinedAt: !2704)
!2707 = !DILocation(line: 1018, column: 3, scope: !2641, inlinedAt: !2706)
!2708 = !DILocation(line: 1018, column: 30, scope: !2641, inlinedAt: !2706)
!2709 = distinct !DIAssignID()
!2710 = distinct !DIAssignID()
!2711 = !DILocation(line: 0, scope: !1533, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1019, column: 3, scope: !2641, inlinedAt: !2706)
!2713 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2712)
!2714 = distinct !DIAssignID()
!2715 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2712)
!2716 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2712)
!2717 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2712)
!2718 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2712)
!2719 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2712)
!2720 = distinct !DIAssignID()
!2721 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2712)
!2722 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2712)
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 1020, column: 10, scope: !2641, inlinedAt: !2706)
!2725 = !DILocation(line: 1021, column: 1, scope: !2641, inlinedAt: !2706)
!2726 = !DILocation(line: 1027, column: 3, scope: !2694)
!2727 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !441, file: !441, line: 1031, type: !2728, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!87, !93, !93, !93, !90}
!2730 = !{!2731, !2732, !2733, !2734}
!2731 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2727, file: !441, line: 1031, type: !93)
!2732 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2727, file: !441, line: 1031, type: !93)
!2733 = !DILocalVariable(name: "arg", arg: 3, scope: !2727, file: !441, line: 1032, type: !93)
!2734 = !DILocalVariable(name: "argsize", arg: 4, scope: !2727, file: !441, line: 1032, type: !90)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 0, scope: !2727)
!2737 = !DILocation(line: 0, scope: !2641, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1034, column: 10, scope: !2727)
!2739 = !DILocation(line: 1018, column: 3, scope: !2641, inlinedAt: !2738)
!2740 = !DILocation(line: 1018, column: 30, scope: !2641, inlinedAt: !2738)
!2741 = distinct !DIAssignID()
!2742 = distinct !DIAssignID()
!2743 = !DILocation(line: 0, scope: !1533, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1019, column: 3, scope: !2641, inlinedAt: !2738)
!2745 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2744)
!2746 = distinct !DIAssignID()
!2747 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2744)
!2748 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2744)
!2749 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2744)
!2750 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2744)
!2751 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2744)
!2752 = distinct !DIAssignID()
!2753 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2744)
!2754 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2744)
!2755 = distinct !DIAssignID()
!2756 = !DILocation(line: 1020, column: 10, scope: !2641, inlinedAt: !2738)
!2757 = !DILocation(line: 1021, column: 1, scope: !2641, inlinedAt: !2738)
!2758 = !DILocation(line: 1034, column: 3, scope: !2727)
!2759 = distinct !DISubprogram(name: "quote_n_mem", scope: !441, file: !441, line: 1049, type: !2760, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!93, !67, !93, !90}
!2762 = !{!2763, !2764, !2765}
!2763 = !DILocalVariable(name: "n", arg: 1, scope: !2759, file: !441, line: 1049, type: !67)
!2764 = !DILocalVariable(name: "arg", arg: 2, scope: !2759, file: !441, line: 1049, type: !93)
!2765 = !DILocalVariable(name: "argsize", arg: 3, scope: !2759, file: !441, line: 1049, type: !90)
!2766 = !DILocation(line: 0, scope: !2759)
!2767 = !DILocation(line: 1051, column: 10, scope: !2759)
!2768 = !DILocation(line: 1051, column: 3, scope: !2759)
!2769 = distinct !DISubprogram(name: "quote_mem", scope: !441, file: !441, line: 1055, type: !2770, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!93, !93, !90}
!2772 = !{!2773, !2774}
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !441, line: 1055, type: !93)
!2774 = !DILocalVariable(name: "argsize", arg: 2, scope: !2769, file: !441, line: 1055, type: !90)
!2775 = !DILocation(line: 0, scope: !2769)
!2776 = !DILocation(line: 0, scope: !2759, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 1057, column: 10, scope: !2769)
!2778 = !DILocation(line: 1051, column: 10, scope: !2759, inlinedAt: !2777)
!2779 = !DILocation(line: 1057, column: 3, scope: !2769)
!2780 = distinct !DISubprogram(name: "quote_n", scope: !441, file: !441, line: 1061, type: !2781, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2783)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!93, !67, !93}
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2780, file: !441, line: 1061, type: !67)
!2785 = !DILocalVariable(name: "arg", arg: 2, scope: !2780, file: !441, line: 1061, type: !93)
!2786 = !DILocation(line: 0, scope: !2780)
!2787 = !DILocation(line: 0, scope: !2759, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1063, column: 10, scope: !2780)
!2789 = !DILocation(line: 1051, column: 10, scope: !2759, inlinedAt: !2788)
!2790 = !DILocation(line: 1063, column: 3, scope: !2780)
!2791 = distinct !DISubprogram(name: "quote", scope: !441, file: !441, line: 1067, type: !2792, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!93, !93}
!2794 = !{!2795}
!2795 = !DILocalVariable(name: "arg", arg: 1, scope: !2791, file: !441, line: 1067, type: !93)
!2796 = !DILocation(line: 0, scope: !2791)
!2797 = !DILocation(line: 0, scope: !2780, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 1069, column: 10, scope: !2791)
!2799 = !DILocation(line: 0, scope: !2759, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 1063, column: 10, scope: !2780, inlinedAt: !2798)
!2801 = !DILocation(line: 1051, column: 10, scope: !2759, inlinedAt: !2800)
!2802 = !DILocation(line: 1069, column: 3, scope: !2791)
!2803 = distinct !DISubprogram(name: "version_etc_arn", scope: !557, file: !557, line: 61, type: !2804, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2841)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2806, !93, !93, !93, !2840, !90}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2808, file: !146, line: 51, baseType: !67, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2808, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2808, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2808, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2808, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2808, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2808, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2808, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2808, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2808, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2808, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2808, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2808, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2808, file: !146, line: 70, baseType: !2824, size: 64, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2808, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2808, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2808, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2808, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2808, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2808, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2808, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2808, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2808, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2808, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2808, file: !146, line: 93, baseType: !2824, size: 64, offset: 1344)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2808, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2808, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2808, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2808, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2841 = !{!2842, !2843, !2844, !2845, !2846, !2847}
!2842 = !DILocalVariable(name: "stream", arg: 1, scope: !2803, file: !557, line: 61, type: !2806)
!2843 = !DILocalVariable(name: "command_name", arg: 2, scope: !2803, file: !557, line: 62, type: !93)
!2844 = !DILocalVariable(name: "package", arg: 3, scope: !2803, file: !557, line: 62, type: !93)
!2845 = !DILocalVariable(name: "version", arg: 4, scope: !2803, file: !557, line: 63, type: !93)
!2846 = !DILocalVariable(name: "authors", arg: 5, scope: !2803, file: !557, line: 64, type: !2840)
!2847 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2803, file: !557, line: 64, type: !90)
!2848 = !DILocation(line: 0, scope: !2803)
!2849 = !DILocation(line: 66, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2803, file: !557, line: 66, column: 7)
!2851 = !DILocation(line: 66, column: 7, scope: !2803)
!2852 = !DILocation(line: 67, column: 5, scope: !2850)
!2853 = !DILocation(line: 69, column: 5, scope: !2850)
!2854 = !DILocation(line: 83, column: 3, scope: !2803)
!2855 = !DILocation(line: 85, column: 3, scope: !2803)
!2856 = !DILocation(line: 88, column: 3, scope: !2803)
!2857 = !DILocation(line: 95, column: 3, scope: !2803)
!2858 = !DILocation(line: 97, column: 3, scope: !2803)
!2859 = !DILocation(line: 105, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2803, file: !557, line: 98, column: 5)
!2861 = !DILocation(line: 106, column: 7, scope: !2860)
!2862 = !DILocation(line: 109, column: 7, scope: !2860)
!2863 = !DILocation(line: 110, column: 7, scope: !2860)
!2864 = !DILocation(line: 113, column: 7, scope: !2860)
!2865 = !DILocation(line: 115, column: 7, scope: !2860)
!2866 = !DILocation(line: 120, column: 7, scope: !2860)
!2867 = !DILocation(line: 122, column: 7, scope: !2860)
!2868 = !DILocation(line: 127, column: 7, scope: !2860)
!2869 = !DILocation(line: 129, column: 7, scope: !2860)
!2870 = !DILocation(line: 134, column: 7, scope: !2860)
!2871 = !DILocation(line: 137, column: 7, scope: !2860)
!2872 = !DILocation(line: 142, column: 7, scope: !2860)
!2873 = !DILocation(line: 145, column: 7, scope: !2860)
!2874 = !DILocation(line: 150, column: 7, scope: !2860)
!2875 = !DILocation(line: 154, column: 7, scope: !2860)
!2876 = !DILocation(line: 159, column: 7, scope: !2860)
!2877 = !DILocation(line: 163, column: 7, scope: !2860)
!2878 = !DILocation(line: 170, column: 7, scope: !2860)
!2879 = !DILocation(line: 174, column: 7, scope: !2860)
!2880 = !DILocation(line: 176, column: 1, scope: !2803)
!2881 = distinct !DISubprogram(name: "version_etc_ar", scope: !557, file: !557, line: 183, type: !2882, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2806, !93, !93, !93, !2840}
!2884 = !{!2885, !2886, !2887, !2888, !2889, !2890}
!2885 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !557, line: 183, type: !2806)
!2886 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !557, line: 184, type: !93)
!2887 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !557, line: 184, type: !93)
!2888 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !557, line: 185, type: !93)
!2889 = !DILocalVariable(name: "authors", arg: 5, scope: !2881, file: !557, line: 185, type: !2840)
!2890 = !DILocalVariable(name: "n_authors", scope: !2881, file: !557, line: 187, type: !90)
!2891 = !DILocation(line: 0, scope: !2881)
!2892 = !DILocation(line: 189, column: 8, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2881, file: !557, line: 189, column: 3)
!2894 = !DILocation(line: 189, scope: !2893)
!2895 = !DILocation(line: 189, column: 23, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !557, line: 189, column: 3)
!2897 = !DILocation(line: 189, column: 3, scope: !2893)
!2898 = !DILocation(line: 189, column: 52, scope: !2896)
!2899 = distinct !{!2899, !2897, !2900, !867}
!2900 = !DILocation(line: 190, column: 5, scope: !2893)
!2901 = !DILocation(line: 191, column: 3, scope: !2881)
!2902 = !DILocation(line: 192, column: 1, scope: !2881)
!2903 = distinct !DISubprogram(name: "version_etc_va", scope: !557, file: !557, line: 199, type: !2904, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2913)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2806, !93, !93, !93, !2906}
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2907, file: !557, line: 192, baseType: !62, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2907, file: !557, line: 192, baseType: !62, size: 32, offset: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2907, file: !557, line: 192, baseType: !88, size: 64, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2907, file: !557, line: 192, baseType: !88, size: 64, offset: 128)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2914 = !DILocalVariable(name: "stream", arg: 1, scope: !2903, file: !557, line: 199, type: !2806)
!2915 = !DILocalVariable(name: "command_name", arg: 2, scope: !2903, file: !557, line: 200, type: !93)
!2916 = !DILocalVariable(name: "package", arg: 3, scope: !2903, file: !557, line: 200, type: !93)
!2917 = !DILocalVariable(name: "version", arg: 4, scope: !2903, file: !557, line: 201, type: !93)
!2918 = !DILocalVariable(name: "authors", arg: 5, scope: !2903, file: !557, line: 201, type: !2906)
!2919 = !DILocalVariable(name: "n_authors", scope: !2903, file: !557, line: 203, type: !90)
!2920 = !DILocalVariable(name: "authtab", scope: !2903, file: !557, line: 204, type: !2921)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !45)
!2922 = distinct !DIAssignID()
!2923 = !DILocation(line: 0, scope: !2903)
!2924 = !DILocation(line: 204, column: 3, scope: !2903)
!2925 = !DILocation(line: 208, column: 35, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !557, line: 206, column: 3)
!2927 = distinct !DILexicalBlock(scope: !2903, file: !557, line: 206, column: 3)
!2928 = !DILocation(line: 208, column: 33, scope: !2926)
!2929 = !DILocation(line: 208, column: 67, scope: !2926)
!2930 = !DILocation(line: 206, column: 3, scope: !2927)
!2931 = !DILocation(line: 208, column: 14, scope: !2926)
!2932 = !DILocation(line: 0, scope: !2927)
!2933 = !DILocation(line: 211, column: 3, scope: !2903)
!2934 = !DILocation(line: 213, column: 1, scope: !2903)
!2935 = distinct !DISubprogram(name: "version_etc", scope: !557, file: !557, line: 230, type: !2936, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2806, !93, !93, !93, null}
!2938 = !{!2939, !2940, !2941, !2942, !2943}
!2939 = !DILocalVariable(name: "stream", arg: 1, scope: !2935, file: !557, line: 230, type: !2806)
!2940 = !DILocalVariable(name: "command_name", arg: 2, scope: !2935, file: !557, line: 231, type: !93)
!2941 = !DILocalVariable(name: "package", arg: 3, scope: !2935, file: !557, line: 231, type: !93)
!2942 = !DILocalVariable(name: "version", arg: 4, scope: !2935, file: !557, line: 232, type: !93)
!2943 = !DILocalVariable(name: "authors", scope: !2935, file: !557, line: 234, type: !2944)
!2944 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !944, line: 52, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1319, line: 12, baseType: !2946)
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !557, baseType: !2947)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2907, size: 192, elements: !40)
!2948 = distinct !DIAssignID()
!2949 = !DILocation(line: 0, scope: !2935)
!2950 = !DILocation(line: 234, column: 3, scope: !2935)
!2951 = !DILocation(line: 235, column: 3, scope: !2935)
!2952 = !DILocation(line: 236, column: 3, scope: !2935)
!2953 = !DILocation(line: 237, column: 3, scope: !2935)
!2954 = !DILocation(line: 238, column: 1, scope: !2935)
!2955 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !557, file: !557, line: 241, type: !396, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681)
!2956 = !DILocation(line: 243, column: 3, scope: !2955)
!2957 = !DILocation(line: 248, column: 3, scope: !2955)
!2958 = !DILocation(line: 254, column: 3, scope: !2955)
!2959 = !DILocation(line: 259, column: 3, scope: !2955)
!2960 = !DILocation(line: 261, column: 1, scope: !2955)
!2961 = distinct !DISubprogram(name: "xnrealloc", scope: !2962, file: !2962, line: 147, type: !2963, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2965)
!2962 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!88, !88, !90, !90}
!2965 = !{!2966, !2967, !2968}
!2966 = !DILocalVariable(name: "p", arg: 1, scope: !2961, file: !2962, line: 147, type: !88)
!2967 = !DILocalVariable(name: "n", arg: 2, scope: !2961, file: !2962, line: 147, type: !90)
!2968 = !DILocalVariable(name: "s", arg: 3, scope: !2961, file: !2962, line: 147, type: !90)
!2969 = !DILocation(line: 0, scope: !2961)
!2970 = !DILocalVariable(name: "p", arg: 1, scope: !2971, file: !689, line: 83, type: !88)
!2971 = distinct !DISubprogram(name: "xreallocarray", scope: !689, file: !689, line: 83, type: !2963, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2972)
!2972 = !{!2970, !2973, !2974}
!2973 = !DILocalVariable(name: "n", arg: 2, scope: !2971, file: !689, line: 83, type: !90)
!2974 = !DILocalVariable(name: "s", arg: 3, scope: !2971, file: !689, line: 83, type: !90)
!2975 = !DILocation(line: 0, scope: !2971, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 149, column: 10, scope: !2961)
!2977 = !DILocation(line: 85, column: 25, scope: !2971, inlinedAt: !2976)
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2979, file: !689, line: 37, type: !88)
!2979 = distinct !DISubprogram(name: "check_nonnull", scope: !689, file: !689, line: 37, type: !2980, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!88, !88}
!2982 = !{!2978}
!2983 = !DILocation(line: 0, scope: !2979, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 85, column: 10, scope: !2971, inlinedAt: !2976)
!2985 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !2984)
!2986 = distinct !DILexicalBlock(scope: !2979, file: !689, line: 39, column: 7)
!2987 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !2984)
!2988 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !2984)
!2989 = !DILocation(line: 149, column: 3, scope: !2961)
!2990 = !DILocation(line: 0, scope: !2971)
!2991 = !DILocation(line: 85, column: 25, scope: !2971)
!2992 = !DILocation(line: 0, scope: !2979, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 85, column: 10, scope: !2971)
!2994 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !2993)
!2995 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !2993)
!2996 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !2993)
!2997 = !DILocation(line: 85, column: 3, scope: !2971)
!2998 = distinct !DISubprogram(name: "xmalloc", scope: !689, file: !689, line: 47, type: !2999, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3001)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!88, !90}
!3001 = !{!3002}
!3002 = !DILocalVariable(name: "s", arg: 1, scope: !2998, file: !689, line: 47, type: !90)
!3003 = !DILocation(line: 0, scope: !2998)
!3004 = !DILocation(line: 49, column: 25, scope: !2998)
!3005 = !DILocation(line: 0, scope: !2979, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 49, column: 10, scope: !2998)
!3007 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3006)
!3008 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3006)
!3009 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3006)
!3010 = !DILocation(line: 49, column: 3, scope: !2998)
!3011 = !DISubprogram(name: "malloc", scope: !948, file: !948, line: 540, type: !2999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3012 = distinct !DISubprogram(name: "ximalloc", scope: !689, file: !689, line: 53, type: !3013, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!88, !708}
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "s", arg: 1, scope: !3012, file: !689, line: 53, type: !708)
!3017 = !DILocation(line: 0, scope: !3012)
!3018 = !DILocalVariable(name: "s", arg: 1, scope: !3019, file: !3020, line: 55, type: !708)
!3019 = distinct !DISubprogram(name: "imalloc", scope: !3020, file: !3020, line: 55, type: !3013, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3021)
!3020 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3021 = !{!3018}
!3022 = !DILocation(line: 0, scope: !3019, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 55, column: 25, scope: !3012)
!3024 = !DILocation(line: 57, column: 26, scope: !3019, inlinedAt: !3023)
!3025 = !DILocation(line: 0, scope: !2979, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 55, column: 10, scope: !3012)
!3027 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3026)
!3028 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3026)
!3029 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3026)
!3030 = !DILocation(line: 55, column: 3, scope: !3012)
!3031 = distinct !DISubprogram(name: "xcharalloc", scope: !689, file: !689, line: 59, type: !3032, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!87, !90}
!3034 = !{!3035}
!3035 = !DILocalVariable(name: "n", arg: 1, scope: !3031, file: !689, line: 59, type: !90)
!3036 = !DILocation(line: 0, scope: !3031)
!3037 = !DILocation(line: 0, scope: !2998, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 61, column: 10, scope: !3031)
!3039 = !DILocation(line: 49, column: 25, scope: !2998, inlinedAt: !3038)
!3040 = !DILocation(line: 0, scope: !2979, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 49, column: 10, scope: !2998, inlinedAt: !3038)
!3042 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3041)
!3044 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3041)
!3045 = !DILocation(line: 61, column: 3, scope: !3031)
!3046 = distinct !DISubprogram(name: "xrealloc", scope: !689, file: !689, line: 68, type: !3047, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!88, !88, !90}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !689, line: 68, type: !88)
!3051 = !DILocalVariable(name: "s", arg: 2, scope: !3046, file: !689, line: 68, type: !90)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocalVariable(name: "ptr", arg: 1, scope: !3054, file: !3055, line: 2057, type: !88)
!3054 = distinct !DISubprogram(name: "rpl_realloc", scope: !3055, file: !3055, line: 2057, type: !3047, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3056)
!3055 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3056 = !{!3053, !3057}
!3057 = !DILocalVariable(name: "size", arg: 2, scope: !3054, file: !3055, line: 2057, type: !90)
!3058 = !DILocation(line: 0, scope: !3054, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 70, column: 25, scope: !3046)
!3060 = !DILocation(line: 2059, column: 24, scope: !3054, inlinedAt: !3059)
!3061 = !DILocation(line: 2059, column: 10, scope: !3054, inlinedAt: !3059)
!3062 = !DILocation(line: 0, scope: !2979, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 70, column: 10, scope: !3046)
!3064 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3063)
!3065 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3063)
!3066 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3063)
!3067 = !DILocation(line: 70, column: 3, scope: !3046)
!3068 = !DISubprogram(name: "realloc", scope: !948, file: !948, line: 551, type: !3047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3069 = distinct !DISubprogram(name: "xirealloc", scope: !689, file: !689, line: 74, type: !3070, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3072)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!88, !88, !708}
!3072 = !{!3073, !3074}
!3073 = !DILocalVariable(name: "p", arg: 1, scope: !3069, file: !689, line: 74, type: !88)
!3074 = !DILocalVariable(name: "s", arg: 2, scope: !3069, file: !689, line: 74, type: !708)
!3075 = !DILocation(line: 0, scope: !3069)
!3076 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !3020, line: 66, type: !88)
!3077 = distinct !DISubprogram(name: "irealloc", scope: !3020, file: !3020, line: 66, type: !3070, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3078)
!3078 = !{!3076, !3079}
!3079 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !3020, line: 66, type: !708)
!3080 = !DILocation(line: 0, scope: !3077, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 76, column: 25, scope: !3069)
!3082 = !DILocation(line: 0, scope: !3054, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 68, column: 26, scope: !3077, inlinedAt: !3081)
!3084 = !DILocation(line: 2059, column: 24, scope: !3054, inlinedAt: !3083)
!3085 = !DILocation(line: 2059, column: 10, scope: !3054, inlinedAt: !3083)
!3086 = !DILocation(line: 0, scope: !2979, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 76, column: 10, scope: !3069)
!3088 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3087)
!3089 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3087)
!3090 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3087)
!3091 = !DILocation(line: 76, column: 3, scope: !3069)
!3092 = distinct !DISubprogram(name: "xireallocarray", scope: !689, file: !689, line: 89, type: !3093, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!88, !88, !708, !708}
!3095 = !{!3096, !3097, !3098}
!3096 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !689, line: 89, type: !88)
!3097 = !DILocalVariable(name: "n", arg: 2, scope: !3092, file: !689, line: 89, type: !708)
!3098 = !DILocalVariable(name: "s", arg: 3, scope: !3092, file: !689, line: 89, type: !708)
!3099 = !DILocation(line: 0, scope: !3092)
!3100 = !DILocalVariable(name: "p", arg: 1, scope: !3101, file: !3020, line: 98, type: !88)
!3101 = distinct !DISubprogram(name: "ireallocarray", scope: !3020, file: !3020, line: 98, type: !3093, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3102)
!3102 = !{!3100, !3103, !3104}
!3103 = !DILocalVariable(name: "n", arg: 2, scope: !3101, file: !3020, line: 98, type: !708)
!3104 = !DILocalVariable(name: "s", arg: 3, scope: !3101, file: !3020, line: 98, type: !708)
!3105 = !DILocation(line: 0, scope: !3101, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 91, column: 25, scope: !3092)
!3107 = !DILocation(line: 101, column: 13, scope: !3101, inlinedAt: !3106)
!3108 = !DILocation(line: 0, scope: !2979, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 91, column: 10, scope: !3092)
!3110 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3109)
!3111 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3109)
!3112 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3109)
!3113 = !DILocation(line: 91, column: 3, scope: !3092)
!3114 = distinct !DISubprogram(name: "xnmalloc", scope: !689, file: !689, line: 98, type: !3115, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3117)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!88, !90, !90}
!3117 = !{!3118, !3119}
!3118 = !DILocalVariable(name: "n", arg: 1, scope: !3114, file: !689, line: 98, type: !90)
!3119 = !DILocalVariable(name: "s", arg: 2, scope: !3114, file: !689, line: 98, type: !90)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 0, scope: !2971, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 100, column: 10, scope: !3114)
!3123 = !DILocation(line: 85, column: 25, scope: !2971, inlinedAt: !3122)
!3124 = !DILocation(line: 0, scope: !2979, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 85, column: 10, scope: !2971, inlinedAt: !3122)
!3126 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3125)
!3127 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3125)
!3128 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3125)
!3129 = !DILocation(line: 100, column: 3, scope: !3114)
!3130 = distinct !DISubprogram(name: "xinmalloc", scope: !689, file: !689, line: 104, type: !3131, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3133)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!88, !708, !708}
!3133 = !{!3134, !3135}
!3134 = !DILocalVariable(name: "n", arg: 1, scope: !3130, file: !689, line: 104, type: !708)
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3130, file: !689, line: 104, type: !708)
!3136 = !DILocation(line: 0, scope: !3130)
!3137 = !DILocation(line: 0, scope: !3092, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 106, column: 10, scope: !3130)
!3139 = !DILocation(line: 0, scope: !3101, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 91, column: 25, scope: !3092, inlinedAt: !3138)
!3141 = !DILocation(line: 101, column: 13, scope: !3101, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !2979, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 91, column: 10, scope: !3092, inlinedAt: !3138)
!3144 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3143)
!3147 = !DILocation(line: 106, column: 3, scope: !3130)
!3148 = distinct !DISubprogram(name: "x2realloc", scope: !689, file: !689, line: 116, type: !3149, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!88, !88, !695}
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !689, line: 116, type: !88)
!3153 = !DILocalVariable(name: "ps", arg: 2, scope: !3148, file: !689, line: 116, type: !695)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 0, scope: !692, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 118, column: 10, scope: !3148)
!3157 = !DILocation(line: 178, column: 14, scope: !692, inlinedAt: !3156)
!3158 = !DILocation(line: 180, column: 9, scope: !3159, inlinedAt: !3156)
!3159 = distinct !DILexicalBlock(scope: !692, file: !689, line: 180, column: 7)
!3160 = !DILocation(line: 180, column: 7, scope: !692, inlinedAt: !3156)
!3161 = !DILocation(line: 182, column: 13, scope: !3162, inlinedAt: !3156)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !689, line: 182, column: 11)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !689, line: 181, column: 5)
!3164 = !DILocation(line: 182, column: 11, scope: !3163, inlinedAt: !3156)
!3165 = !DILocation(line: 197, column: 11, scope: !3166, inlinedAt: !3156)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !689, line: 197, column: 11)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !689, line: 195, column: 5)
!3168 = !DILocation(line: 197, column: 11, scope: !3167, inlinedAt: !3156)
!3169 = !DILocation(line: 198, column: 9, scope: !3166, inlinedAt: !3156)
!3170 = !DILocation(line: 0, scope: !2971, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 201, column: 7, scope: !692, inlinedAt: !3156)
!3172 = !DILocation(line: 85, column: 25, scope: !2971, inlinedAt: !3171)
!3173 = !DILocation(line: 0, scope: !2979, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 85, column: 10, scope: !2971, inlinedAt: !3171)
!3175 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3174)
!3176 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3174)
!3177 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3174)
!3178 = !DILocation(line: 202, column: 7, scope: !692, inlinedAt: !3156)
!3179 = !DILocation(line: 118, column: 3, scope: !3148)
!3180 = !DILocation(line: 0, scope: !692)
!3181 = !DILocation(line: 178, column: 14, scope: !692)
!3182 = !DILocation(line: 180, column: 9, scope: !3159)
!3183 = !DILocation(line: 180, column: 7, scope: !692)
!3184 = !DILocation(line: 182, column: 13, scope: !3162)
!3185 = !DILocation(line: 182, column: 11, scope: !3163)
!3186 = !DILocation(line: 190, column: 30, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3162, file: !689, line: 183, column: 9)
!3188 = !DILocation(line: 191, column: 16, scope: !3187)
!3189 = !DILocation(line: 191, column: 13, scope: !3187)
!3190 = !DILocation(line: 192, column: 9, scope: !3187)
!3191 = !DILocation(line: 197, column: 11, scope: !3166)
!3192 = !DILocation(line: 197, column: 11, scope: !3167)
!3193 = !DILocation(line: 198, column: 9, scope: !3166)
!3194 = !DILocation(line: 0, scope: !2971, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 201, column: 7, scope: !692)
!3196 = !DILocation(line: 85, column: 25, scope: !2971, inlinedAt: !3195)
!3197 = !DILocation(line: 0, scope: !2979, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 85, column: 10, scope: !2971, inlinedAt: !3195)
!3199 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3198)
!3202 = !DILocation(line: 202, column: 7, scope: !692)
!3203 = !DILocation(line: 203, column: 3, scope: !692)
!3204 = !DILocation(line: 0, scope: !704)
!3205 = !DILocation(line: 230, column: 14, scope: !704)
!3206 = !DILocation(line: 238, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !704, file: !689, line: 238, column: 7)
!3208 = !DILocation(line: 238, column: 7, scope: !704)
!3209 = !DILocation(line: 240, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !704, file: !689, line: 240, column: 7)
!3211 = !DILocation(line: 240, column: 18, scope: !3210)
!3212 = !DILocation(line: 253, column: 8, scope: !704)
!3213 = !DILocation(line: 256, column: 7, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !704, file: !689, line: 256, column: 7)
!3215 = !DILocation(line: 256, column: 7, scope: !704)
!3216 = !DILocation(line: 258, column: 27, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3214, file: !689, line: 257, column: 5)
!3218 = !DILocation(line: 259, column: 50, scope: !3217)
!3219 = !DILocation(line: 259, column: 32, scope: !3217)
!3220 = !DILocation(line: 260, column: 5, scope: !3217)
!3221 = !DILocation(line: 262, column: 9, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !704, file: !689, line: 262, column: 7)
!3223 = !DILocation(line: 262, column: 7, scope: !704)
!3224 = !DILocation(line: 263, column: 9, scope: !3222)
!3225 = !DILocation(line: 263, column: 5, scope: !3222)
!3226 = !DILocation(line: 264, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !704, file: !689, line: 264, column: 7)
!3228 = !DILocation(line: 264, column: 14, scope: !3227)
!3229 = !DILocation(line: 265, column: 7, scope: !3227)
!3230 = !DILocation(line: 265, column: 11, scope: !3227)
!3231 = !DILocation(line: 266, column: 11, scope: !3227)
!3232 = !DILocation(line: 267, column: 14, scope: !3227)
!3233 = !DILocation(line: 264, column: 7, scope: !704)
!3234 = !DILocation(line: 268, column: 5, scope: !3227)
!3235 = !DILocation(line: 0, scope: !3046, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 269, column: 8, scope: !704)
!3237 = !DILocation(line: 0, scope: !3054, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 70, column: 25, scope: !3046, inlinedAt: !3236)
!3239 = !DILocation(line: 2059, column: 24, scope: !3054, inlinedAt: !3238)
!3240 = !DILocation(line: 2059, column: 10, scope: !3054, inlinedAt: !3238)
!3241 = !DILocation(line: 0, scope: !2979, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 70, column: 10, scope: !3046, inlinedAt: !3236)
!3243 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3242)
!3244 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3242)
!3245 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3242)
!3246 = !DILocation(line: 270, column: 7, scope: !704)
!3247 = !DILocation(line: 271, column: 3, scope: !704)
!3248 = distinct !DISubprogram(name: "xzalloc", scope: !689, file: !689, line: 279, type: !2999, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3249)
!3249 = !{!3250}
!3250 = !DILocalVariable(name: "s", arg: 1, scope: !3248, file: !689, line: 279, type: !90)
!3251 = !DILocation(line: 0, scope: !3248)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !689, line: 294, type: !90)
!3253 = distinct !DISubprogram(name: "xcalloc", scope: !689, file: !689, line: 294, type: !3115, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3254)
!3254 = !{!3252, !3255}
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !689, line: 294, type: !90)
!3256 = !DILocation(line: 0, scope: !3253, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 281, column: 10, scope: !3248)
!3258 = !DILocation(line: 296, column: 25, scope: !3253, inlinedAt: !3257)
!3259 = !DILocation(line: 0, scope: !2979, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 296, column: 10, scope: !3253, inlinedAt: !3257)
!3261 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3260)
!3264 = !DILocation(line: 281, column: 3, scope: !3248)
!3265 = !DISubprogram(name: "calloc", scope: !948, file: !948, line: 543, type: !3115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3266 = !DILocation(line: 0, scope: !3253)
!3267 = !DILocation(line: 296, column: 25, scope: !3253)
!3268 = !DILocation(line: 0, scope: !2979, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 296, column: 10, scope: !3253)
!3270 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3269)
!3271 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3269)
!3272 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3269)
!3273 = !DILocation(line: 296, column: 3, scope: !3253)
!3274 = distinct !DISubprogram(name: "xizalloc", scope: !689, file: !689, line: 285, type: !3013, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3275)
!3275 = !{!3276}
!3276 = !DILocalVariable(name: "s", arg: 1, scope: !3274, file: !689, line: 285, type: !708)
!3277 = !DILocation(line: 0, scope: !3274)
!3278 = !DILocalVariable(name: "n", arg: 1, scope: !3279, file: !689, line: 300, type: !708)
!3279 = distinct !DISubprogram(name: "xicalloc", scope: !689, file: !689, line: 300, type: !3131, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3280)
!3280 = !{!3278, !3281}
!3281 = !DILocalVariable(name: "s", arg: 2, scope: !3279, file: !689, line: 300, type: !708)
!3282 = !DILocation(line: 0, scope: !3279, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 287, column: 10, scope: !3274)
!3284 = !DILocalVariable(name: "n", arg: 1, scope: !3285, file: !3020, line: 77, type: !708)
!3285 = distinct !DISubprogram(name: "icalloc", scope: !3020, file: !3020, line: 77, type: !3131, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3286)
!3286 = !{!3284, !3287}
!3287 = !DILocalVariable(name: "s", arg: 2, scope: !3285, file: !3020, line: 77, type: !708)
!3288 = !DILocation(line: 0, scope: !3285, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 302, column: 25, scope: !3279, inlinedAt: !3283)
!3290 = !DILocation(line: 91, column: 10, scope: !3285, inlinedAt: !3289)
!3291 = !DILocation(line: 0, scope: !2979, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 302, column: 10, scope: !3279, inlinedAt: !3283)
!3293 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3292)
!3294 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3292)
!3295 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3292)
!3296 = !DILocation(line: 287, column: 3, scope: !3274)
!3297 = !DILocation(line: 0, scope: !3279)
!3298 = !DILocation(line: 0, scope: !3285, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 302, column: 25, scope: !3279)
!3300 = !DILocation(line: 91, column: 10, scope: !3285, inlinedAt: !3299)
!3301 = !DILocation(line: 0, scope: !2979, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 302, column: 10, scope: !3279)
!3303 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3302)
!3304 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3302)
!3305 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3302)
!3306 = !DILocation(line: 302, column: 3, scope: !3279)
!3307 = distinct !DISubprogram(name: "xmemdup", scope: !689, file: !689, line: 310, type: !3308, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3310)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!88, !972, !90}
!3310 = !{!3311, !3312}
!3311 = !DILocalVariable(name: "p", arg: 1, scope: !3307, file: !689, line: 310, type: !972)
!3312 = !DILocalVariable(name: "s", arg: 2, scope: !3307, file: !689, line: 310, type: !90)
!3313 = !DILocation(line: 0, scope: !3307)
!3314 = !DILocation(line: 0, scope: !2998, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 312, column: 18, scope: !3307)
!3316 = !DILocation(line: 49, column: 25, scope: !2998, inlinedAt: !3315)
!3317 = !DILocation(line: 0, scope: !2979, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 49, column: 10, scope: !2998, inlinedAt: !3315)
!3319 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3318)
!3320 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3318)
!3321 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3318)
!3322 = !DILocalVariable(name: "__dest", arg: 1, scope: !3323, file: !1436, line: 26, type: !3326)
!3323 = distinct !DISubprogram(name: "memcpy", scope: !1436, file: !1436, line: 26, type: !3324, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3327)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!88, !3326, !971, !90}
!3326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3327 = !{!3322, !3328, !3329}
!3328 = !DILocalVariable(name: "__src", arg: 2, scope: !3323, file: !1436, line: 26, type: !971)
!3329 = !DILocalVariable(name: "__len", arg: 3, scope: !3323, file: !1436, line: 26, type: !90)
!3330 = !DILocation(line: 0, scope: !3323, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 312, column: 10, scope: !3307)
!3332 = !DILocation(line: 29, column: 10, scope: !3323, inlinedAt: !3331)
!3333 = !DILocation(line: 312, column: 3, scope: !3307)
!3334 = distinct !DISubprogram(name: "ximemdup", scope: !689, file: !689, line: 316, type: !3335, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!88, !972, !708}
!3337 = !{!3338, !3339}
!3338 = !DILocalVariable(name: "p", arg: 1, scope: !3334, file: !689, line: 316, type: !972)
!3339 = !DILocalVariable(name: "s", arg: 2, scope: !3334, file: !689, line: 316, type: !708)
!3340 = !DILocation(line: 0, scope: !3334)
!3341 = !DILocation(line: 0, scope: !3012, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 318, column: 18, scope: !3334)
!3343 = !DILocation(line: 0, scope: !3019, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 55, column: 25, scope: !3012, inlinedAt: !3342)
!3345 = !DILocation(line: 57, column: 26, scope: !3019, inlinedAt: !3344)
!3346 = !DILocation(line: 0, scope: !2979, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 55, column: 10, scope: !3012, inlinedAt: !3342)
!3348 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3347)
!3349 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3347)
!3350 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3347)
!3351 = !DILocation(line: 0, scope: !3323, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 318, column: 10, scope: !3334)
!3353 = !DILocation(line: 29, column: 10, scope: !3323, inlinedAt: !3352)
!3354 = !DILocation(line: 318, column: 3, scope: !3334)
!3355 = distinct !DISubprogram(name: "ximemdup0", scope: !689, file: !689, line: 325, type: !3356, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!87, !972, !708}
!3358 = !{!3359, !3360, !3361}
!3359 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !689, line: 325, type: !972)
!3360 = !DILocalVariable(name: "s", arg: 2, scope: !3355, file: !689, line: 325, type: !708)
!3361 = !DILocalVariable(name: "result", scope: !3355, file: !689, line: 327, type: !87)
!3362 = !DILocation(line: 0, scope: !3355)
!3363 = !DILocation(line: 327, column: 30, scope: !3355)
!3364 = !DILocation(line: 0, scope: !3012, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 327, column: 18, scope: !3355)
!3366 = !DILocation(line: 0, scope: !3019, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 55, column: 25, scope: !3012, inlinedAt: !3365)
!3368 = !DILocation(line: 57, column: 26, scope: !3019, inlinedAt: !3367)
!3369 = !DILocation(line: 0, scope: !2979, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 55, column: 10, scope: !3012, inlinedAt: !3365)
!3371 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3370)
!3372 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3370)
!3373 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3370)
!3374 = !DILocation(line: 328, column: 3, scope: !3355)
!3375 = !DILocation(line: 328, column: 13, scope: !3355)
!3376 = !DILocation(line: 0, scope: !3323, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 329, column: 10, scope: !3355)
!3378 = !DILocation(line: 29, column: 10, scope: !3323, inlinedAt: !3377)
!3379 = !DILocation(line: 329, column: 3, scope: !3355)
!3380 = distinct !DISubprogram(name: "xstrdup", scope: !689, file: !689, line: 335, type: !950, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3381)
!3381 = !{!3382}
!3382 = !DILocalVariable(name: "string", arg: 1, scope: !3380, file: !689, line: 335, type: !93)
!3383 = !DILocation(line: 0, scope: !3380)
!3384 = !DILocation(line: 337, column: 27, scope: !3380)
!3385 = !DILocation(line: 337, column: 43, scope: !3380)
!3386 = !DILocation(line: 0, scope: !3307, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 337, column: 10, scope: !3380)
!3388 = !DILocation(line: 0, scope: !2998, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 312, column: 18, scope: !3307, inlinedAt: !3387)
!3390 = !DILocation(line: 49, column: 25, scope: !2998, inlinedAt: !3389)
!3391 = !DILocation(line: 0, scope: !2979, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 49, column: 10, scope: !2998, inlinedAt: !3389)
!3393 = !DILocation(line: 39, column: 8, scope: !2986, inlinedAt: !3392)
!3394 = !DILocation(line: 39, column: 7, scope: !2979, inlinedAt: !3392)
!3395 = !DILocation(line: 40, column: 5, scope: !2986, inlinedAt: !3392)
!3396 = !DILocation(line: 0, scope: !3323, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 312, column: 10, scope: !3307, inlinedAt: !3387)
!3398 = !DILocation(line: 29, column: 10, scope: !3323, inlinedAt: !3397)
!3399 = !DILocation(line: 337, column: 3, scope: !3380)
!3400 = distinct !DISubprogram(name: "xalloc_die", scope: !653, file: !653, line: 32, type: !396, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3401)
!3401 = !{!3402}
!3402 = !DILocalVariable(name: "__errstatus", scope: !3403, file: !653, line: 34, type: !3404)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !653, line: 34, column: 3)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3405 = !DILocation(line: 34, column: 3, scope: !3403)
!3406 = !DILocation(line: 0, scope: !3403)
!3407 = !DILocation(line: 40, column: 3, scope: !3400)
!3408 = distinct !DISubprogram(name: "close_stream", scope: !726, file: !726, line: 55, type: !3409, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3445)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!67, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3413)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3413, file: !146, line: 51, baseType: !67, size: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3413, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3413, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3413, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3413, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3413, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3413, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3413, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3413, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3413, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3413, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3413, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3413, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3413, file: !146, line: 70, baseType: !3429, size: 64, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3413, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3413, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3413, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3413, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3413, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3413, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3413, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3413, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3413, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3413, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3413, file: !146, line: 93, baseType: !3429, size: 64, offset: 1344)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3413, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3413, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3413, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3413, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3445 = !{!3446, !3447, !3449, !3450}
!3446 = !DILocalVariable(name: "stream", arg: 1, scope: !3408, file: !726, line: 55, type: !3411)
!3447 = !DILocalVariable(name: "some_pending", scope: !3408, file: !726, line: 57, type: !3448)
!3448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3449 = !DILocalVariable(name: "prev_fail", scope: !3408, file: !726, line: 58, type: !3448)
!3450 = !DILocalVariable(name: "fclose_fail", scope: !3408, file: !726, line: 59, type: !3448)
!3451 = !DILocation(line: 0, scope: !3408)
!3452 = !DILocation(line: 57, column: 30, scope: !3408)
!3453 = !DILocalVariable(name: "__stream", arg: 1, scope: !3454, file: !1274, line: 135, type: !3411)
!3454 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1274, file: !1274, line: 135, type: !3409, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3455)
!3455 = !{!3453}
!3456 = !DILocation(line: 0, scope: !3454, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 58, column: 27, scope: !3408)
!3458 = !DILocation(line: 137, column: 10, scope: !3454, inlinedAt: !3457)
!3459 = !{!1283, !821, i64 0}
!3460 = !DILocation(line: 58, column: 43, scope: !3408)
!3461 = !DILocation(line: 59, column: 29, scope: !3408)
!3462 = !DILocation(line: 59, column: 45, scope: !3408)
!3463 = !DILocation(line: 69, column: 17, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3408, file: !726, line: 69, column: 7)
!3465 = !DILocation(line: 57, column: 50, scope: !3408)
!3466 = !DILocation(line: 69, column: 33, scope: !3464)
!3467 = !DILocation(line: 69, column: 53, scope: !3464)
!3468 = !DILocation(line: 69, column: 59, scope: !3464)
!3469 = !DILocation(line: 69, column: 7, scope: !3408)
!3470 = !DILocation(line: 71, column: 11, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3464, file: !726, line: 70, column: 5)
!3472 = !DILocation(line: 72, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3471, file: !726, line: 71, column: 11)
!3474 = !DILocation(line: 72, column: 15, scope: !3473)
!3475 = !DILocation(line: 77, column: 1, scope: !3408)
!3476 = !DISubprogram(name: "__fpending", scope: !3477, file: !3477, line: 75, type: !3478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3477 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!90, !3411}
!3480 = distinct !DISubprogram(name: "rpl_fclose", scope: !728, file: !728, line: 58, type: !3481, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3517)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!67, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3485, file: !146, line: 51, baseType: !67, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3485, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3485, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3485, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3485, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3485, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3485, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3485, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3485, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3485, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3485, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3485, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3485, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3485, file: !146, line: 70, baseType: !3501, size: 64, offset: 832)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3485, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3485, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3485, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3485, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3485, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3485, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3485, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3485, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3485, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3485, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3485, file: !146, line: 93, baseType: !3501, size: 64, offset: 1344)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3485, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3485, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3485, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3485, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3517 = !{!3518, !3519, !3520, !3521}
!3518 = !DILocalVariable(name: "fp", arg: 1, scope: !3480, file: !728, line: 58, type: !3483)
!3519 = !DILocalVariable(name: "saved_errno", scope: !3480, file: !728, line: 60, type: !67)
!3520 = !DILocalVariable(name: "fd", scope: !3480, file: !728, line: 63, type: !67)
!3521 = !DILocalVariable(name: "result", scope: !3480, file: !728, line: 74, type: !67)
!3522 = !DILocation(line: 0, scope: !3480)
!3523 = !DILocation(line: 63, column: 12, scope: !3480)
!3524 = !DILocation(line: 64, column: 10, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3480, file: !728, line: 64, column: 7)
!3526 = !DILocation(line: 64, column: 7, scope: !3480)
!3527 = !DILocation(line: 65, column: 12, scope: !3525)
!3528 = !DILocation(line: 65, column: 5, scope: !3525)
!3529 = !DILocation(line: 70, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3480, file: !728, line: 70, column: 7)
!3531 = !DILocation(line: 70, column: 23, scope: !3530)
!3532 = !DILocation(line: 70, column: 33, scope: !3530)
!3533 = !DILocation(line: 70, column: 26, scope: !3530)
!3534 = !DILocation(line: 70, column: 59, scope: !3530)
!3535 = !DILocation(line: 71, column: 7, scope: !3530)
!3536 = !DILocation(line: 71, column: 10, scope: !3530)
!3537 = !DILocation(line: 70, column: 7, scope: !3480)
!3538 = !DILocation(line: 100, column: 12, scope: !3480)
!3539 = !DILocation(line: 105, column: 7, scope: !3480)
!3540 = !DILocation(line: 72, column: 19, scope: !3530)
!3541 = !DILocation(line: 105, column: 19, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3480, file: !728, line: 105, column: 7)
!3543 = !DILocation(line: 107, column: 13, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3542, file: !728, line: 106, column: 5)
!3545 = !DILocation(line: 109, column: 5, scope: !3544)
!3546 = !DILocation(line: 112, column: 1, scope: !3480)
!3547 = !DISubprogram(name: "fileno", scope: !944, file: !944, line: 809, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3548 = !DISubprogram(name: "fclose", scope: !944, file: !944, line: 178, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3549 = !DISubprogram(name: "__freading", scope: !3477, file: !3477, line: 51, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3550 = !DISubprogram(name: "lseek", scope: !1157, file: !1157, line: 339, type: !3551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!168, !67, !168, !67}
!3553 = distinct !DISubprogram(name: "rpl_fflush", scope: !730, file: !730, line: 130, type: !3554, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3590)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!67, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3558, file: !146, line: 51, baseType: !67, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3558, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3558, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3558, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3558, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3558, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3558, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3558, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3558, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3558, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3558, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3558, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3558, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3558, file: !146, line: 70, baseType: !3574, size: 64, offset: 832)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3558, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3558, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3558, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3558, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3558, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3558, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3558, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3558, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3558, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3558, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3558, file: !146, line: 93, baseType: !3574, size: 64, offset: 1344)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3558, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3558, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3558, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3558, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3590 = !{!3591}
!3591 = !DILocalVariable(name: "stream", arg: 1, scope: !3553, file: !730, line: 130, type: !3556)
!3592 = !DILocation(line: 0, scope: !3553)
!3593 = !DILocation(line: 151, column: 14, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3553, file: !730, line: 151, column: 7)
!3595 = !DILocation(line: 151, column: 22, scope: !3594)
!3596 = !DILocation(line: 151, column: 27, scope: !3594)
!3597 = !DILocation(line: 151, column: 7, scope: !3553)
!3598 = !DILocation(line: 152, column: 12, scope: !3594)
!3599 = !DILocation(line: 152, column: 5, scope: !3594)
!3600 = !DILocalVariable(name: "fp", arg: 1, scope: !3601, file: !730, line: 42, type: !3556)
!3601 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !730, file: !730, line: 42, type: !3602, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3604)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !3556}
!3604 = !{!3600}
!3605 = !DILocation(line: 0, scope: !3601, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 157, column: 3, scope: !3553)
!3607 = !DILocation(line: 44, column: 12, scope: !3608, inlinedAt: !3606)
!3608 = distinct !DILexicalBlock(scope: !3601, file: !730, line: 44, column: 7)
!3609 = !DILocation(line: 44, column: 19, scope: !3608, inlinedAt: !3606)
!3610 = !DILocation(line: 44, column: 7, scope: !3601, inlinedAt: !3606)
!3611 = !DILocation(line: 46, column: 5, scope: !3608, inlinedAt: !3606)
!3612 = !DILocation(line: 159, column: 10, scope: !3553)
!3613 = !DILocation(line: 159, column: 3, scope: !3553)
!3614 = !DILocation(line: 236, column: 1, scope: !3553)
!3615 = !DISubprogram(name: "fflush", scope: !944, file: !944, line: 230, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3616 = distinct !DISubprogram(name: "rpl_fseeko", scope: !732, file: !732, line: 28, type: !3617, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3654)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!67, !3619, !3653, !67}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3621)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3621, file: !146, line: 51, baseType: !67, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3621, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3621, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3621, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3621, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3621, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3621, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3621, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3621, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3621, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3621, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3621, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3621, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3621, file: !146, line: 70, baseType: !3637, size: 64, offset: 832)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3621, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3621, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3621, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3621, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3621, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3621, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3621, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3621, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3621, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3621, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3621, file: !146, line: 93, baseType: !3637, size: 64, offset: 1344)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3621, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3621, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3621, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3621, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3653 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !944, line: 63, baseType: !168)
!3654 = !{!3655, !3656, !3657, !3658}
!3655 = !DILocalVariable(name: "fp", arg: 1, scope: !3616, file: !732, line: 28, type: !3619)
!3656 = !DILocalVariable(name: "offset", arg: 2, scope: !3616, file: !732, line: 28, type: !3653)
!3657 = !DILocalVariable(name: "whence", arg: 3, scope: !3616, file: !732, line: 28, type: !67)
!3658 = !DILocalVariable(name: "pos", scope: !3659, file: !732, line: 123, type: !3653)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !732, line: 119, column: 5)
!3660 = distinct !DILexicalBlock(scope: !3616, file: !732, line: 55, column: 7)
!3661 = !DILocation(line: 0, scope: !3616)
!3662 = !DILocation(line: 55, column: 12, scope: !3660)
!3663 = !{!1283, !763, i64 16}
!3664 = !DILocation(line: 55, column: 33, scope: !3660)
!3665 = !{!1283, !763, i64 8}
!3666 = !DILocation(line: 55, column: 25, scope: !3660)
!3667 = !DILocation(line: 56, column: 7, scope: !3660)
!3668 = !DILocation(line: 56, column: 15, scope: !3660)
!3669 = !DILocation(line: 56, column: 37, scope: !3660)
!3670 = !{!1283, !763, i64 32}
!3671 = !DILocation(line: 56, column: 29, scope: !3660)
!3672 = !DILocation(line: 57, column: 7, scope: !3660)
!3673 = !DILocation(line: 57, column: 15, scope: !3660)
!3674 = !{!1283, !763, i64 72}
!3675 = !DILocation(line: 57, column: 29, scope: !3660)
!3676 = !DILocation(line: 55, column: 7, scope: !3616)
!3677 = !DILocation(line: 123, column: 26, scope: !3659)
!3678 = !DILocation(line: 123, column: 19, scope: !3659)
!3679 = !DILocation(line: 0, scope: !3659)
!3680 = !DILocation(line: 124, column: 15, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3659, file: !732, line: 124, column: 11)
!3682 = !DILocation(line: 124, column: 11, scope: !3659)
!3683 = !DILocation(line: 135, column: 19, scope: !3659)
!3684 = !DILocation(line: 136, column: 12, scope: !3659)
!3685 = !DILocation(line: 136, column: 20, scope: !3659)
!3686 = !{!1283, !1284, i64 144}
!3687 = !DILocation(line: 167, column: 7, scope: !3659)
!3688 = !DILocation(line: 169, column: 10, scope: !3616)
!3689 = !DILocation(line: 169, column: 3, scope: !3616)
!3690 = !DILocation(line: 170, column: 1, scope: !3616)
!3691 = !DISubprogram(name: "fseeko", scope: !944, file: !944, line: 736, type: !3692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!67, !3619, !168, !67}
!3694 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !660, file: !660, line: 100, type: !3695, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3698)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!90, !1454, !93, !90, !3697}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!3698 = !{!3699, !3700, !3701, !3702, !3703}
!3699 = !DILocalVariable(name: "pwc", arg: 1, scope: !3694, file: !660, line: 100, type: !1454)
!3700 = !DILocalVariable(name: "s", arg: 2, scope: !3694, file: !660, line: 100, type: !93)
!3701 = !DILocalVariable(name: "n", arg: 3, scope: !3694, file: !660, line: 100, type: !90)
!3702 = !DILocalVariable(name: "ps", arg: 4, scope: !3694, file: !660, line: 100, type: !3697)
!3703 = !DILocalVariable(name: "ret", scope: !3694, file: !660, line: 130, type: !90)
!3704 = !DILocation(line: 0, scope: !3694)
!3705 = !DILocation(line: 105, column: 9, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3694, file: !660, line: 105, column: 7)
!3707 = !DILocation(line: 105, column: 7, scope: !3694)
!3708 = !DILocation(line: 117, column: 10, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3694, file: !660, line: 117, column: 7)
!3710 = !DILocation(line: 117, column: 7, scope: !3694)
!3711 = !DILocation(line: 130, column: 16, scope: !3694)
!3712 = !DILocation(line: 135, column: 11, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3694, file: !660, line: 135, column: 7)
!3714 = !DILocation(line: 135, column: 25, scope: !3713)
!3715 = !DILocation(line: 135, column: 30, scope: !3713)
!3716 = !DILocation(line: 135, column: 7, scope: !3694)
!3717 = !DILocalVariable(name: "ps", arg: 1, scope: !3718, file: !1427, line: 1135, type: !3697)
!3718 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !3719, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3721)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3697}
!3721 = !{!3717}
!3722 = !DILocation(line: 0, scope: !3718, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 137, column: 5, scope: !3713)
!3724 = !DILocalVariable(name: "__dest", arg: 1, scope: !3725, file: !1436, line: 57, type: !88)
!3725 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3726)
!3726 = !{!3724, !3727, !3728}
!3727 = !DILocalVariable(name: "__ch", arg: 2, scope: !3725, file: !1436, line: 57, type: !67)
!3728 = !DILocalVariable(name: "__len", arg: 3, scope: !3725, file: !1436, line: 57, type: !90)
!3729 = !DILocation(line: 0, scope: !3725, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 1137, column: 3, scope: !3718, inlinedAt: !3723)
!3731 = !DILocation(line: 59, column: 10, scope: !3725, inlinedAt: !3730)
!3732 = !DILocation(line: 137, column: 5, scope: !3713)
!3733 = !DILocation(line: 138, column: 11, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3694, file: !660, line: 138, column: 7)
!3735 = !DILocation(line: 138, column: 7, scope: !3694)
!3736 = !DILocation(line: 139, column: 5, scope: !3734)
!3737 = !DILocation(line: 143, column: 26, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3694, file: !660, line: 143, column: 7)
!3739 = !DILocation(line: 143, column: 41, scope: !3738)
!3740 = !DILocation(line: 143, column: 7, scope: !3694)
!3741 = !DILocation(line: 145, column: 15, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !660, line: 145, column: 11)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !660, line: 144, column: 5)
!3744 = !DILocation(line: 145, column: 11, scope: !3743)
!3745 = !DILocation(line: 146, column: 32, scope: !3742)
!3746 = !DILocation(line: 146, column: 16, scope: !3742)
!3747 = !DILocation(line: 146, column: 14, scope: !3742)
!3748 = !DILocation(line: 146, column: 9, scope: !3742)
!3749 = !DILocation(line: 286, column: 1, scope: !3694)
!3750 = !DISubprogram(name: "mbsinit", scope: !3751, file: !3751, line: 293, type: !3752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3751 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!67, !3754}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!3756 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !734, file: !734, line: 27, type: !2963, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3757)
!3757 = !{!3758, !3759, !3760, !3761}
!3758 = !DILocalVariable(name: "ptr", arg: 1, scope: !3756, file: !734, line: 27, type: !88)
!3759 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3756, file: !734, line: 27, type: !90)
!3760 = !DILocalVariable(name: "size", arg: 3, scope: !3756, file: !734, line: 27, type: !90)
!3761 = !DILocalVariable(name: "nbytes", scope: !3756, file: !734, line: 29, type: !90)
!3762 = !DILocation(line: 0, scope: !3756)
!3763 = !DILocation(line: 30, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3756, file: !734, line: 30, column: 7)
!3765 = !DILocation(line: 30, column: 7, scope: !3756)
!3766 = !DILocation(line: 32, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3764, file: !734, line: 31, column: 5)
!3768 = !DILocation(line: 32, column: 13, scope: !3767)
!3769 = !DILocation(line: 33, column: 7, scope: !3767)
!3770 = !DILocalVariable(name: "ptr", arg: 1, scope: !3771, file: !3055, line: 2057, type: !88)
!3771 = distinct !DISubprogram(name: "rpl_realloc", scope: !3055, file: !3055, line: 2057, type: !3047, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3772)
!3772 = !{!3770, !3773}
!3773 = !DILocalVariable(name: "size", arg: 2, scope: !3771, file: !3055, line: 2057, type: !90)
!3774 = !DILocation(line: 0, scope: !3771, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 37, column: 10, scope: !3756)
!3776 = !DILocation(line: 2059, column: 24, scope: !3771, inlinedAt: !3775)
!3777 = !DILocation(line: 2059, column: 10, scope: !3771, inlinedAt: !3775)
!3778 = !DILocation(line: 37, column: 3, scope: !3756)
!3779 = !DILocation(line: 38, column: 1, scope: !3756)
!3780 = distinct !DISubprogram(name: "hard_locale", scope: !678, file: !678, line: 28, type: !3781, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!129, !67}
!3783 = !{!3784, !3785}
!3784 = !DILocalVariable(name: "category", arg: 1, scope: !3780, file: !678, line: 28, type: !67)
!3785 = !DILocalVariable(name: "locale", scope: !3780, file: !678, line: 30, type: !3786)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3787)
!3787 = !{!3788}
!3788 = !DISubrange(count: 257)
!3789 = distinct !DIAssignID()
!3790 = !DILocation(line: 0, scope: !3780)
!3791 = !DILocation(line: 30, column: 3, scope: !3780)
!3792 = !DILocation(line: 32, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3780, file: !678, line: 32, column: 7)
!3794 = !DILocation(line: 32, column: 7, scope: !3780)
!3795 = !DILocalVariable(name: "__s1", arg: 1, scope: !3796, file: !833, line: 1359, type: !93)
!3796 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3797)
!3797 = !{!3795, !3798}
!3798 = !DILocalVariable(name: "__s2", arg: 2, scope: !3796, file: !833, line: 1359, type: !93)
!3799 = !DILocation(line: 0, scope: !3796, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 35, column: 9, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3780, file: !678, line: 35, column: 7)
!3802 = !DILocation(line: 1361, column: 11, scope: !3796, inlinedAt: !3800)
!3803 = !DILocation(line: 35, column: 29, scope: !3801)
!3804 = !DILocation(line: 0, scope: !3796, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 35, column: 32, scope: !3801)
!3806 = !DILocation(line: 1361, column: 11, scope: !3796, inlinedAt: !3805)
!3807 = !DILocation(line: 1361, column: 10, scope: !3796, inlinedAt: !3805)
!3808 = !DILocation(line: 35, column: 7, scope: !3780)
!3809 = !DILocation(line: 46, column: 3, scope: !3780)
!3810 = !DILocation(line: 47, column: 1, scope: !3780)
!3811 = distinct !DISubprogram(name: "setlocale_null_r", scope: !740, file: !740, line: 154, type: !3812, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!67, !67, !87, !90}
!3814 = !{!3815, !3816, !3817}
!3815 = !DILocalVariable(name: "category", arg: 1, scope: !3811, file: !740, line: 154, type: !67)
!3816 = !DILocalVariable(name: "buf", arg: 2, scope: !3811, file: !740, line: 154, type: !87)
!3817 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3811, file: !740, line: 154, type: !90)
!3818 = !DILocation(line: 0, scope: !3811)
!3819 = !DILocation(line: 159, column: 10, scope: !3811)
!3820 = !DILocation(line: 159, column: 3, scope: !3811)
!3821 = distinct !DISubprogram(name: "setlocale_null", scope: !740, file: !740, line: 186, type: !3822, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3824)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!93, !67}
!3824 = !{!3825}
!3825 = !DILocalVariable(name: "category", arg: 1, scope: !3821, file: !740, line: 186, type: !67)
!3826 = !DILocation(line: 0, scope: !3821)
!3827 = !DILocation(line: 189, column: 10, scope: !3821)
!3828 = !DILocation(line: 189, column: 3, scope: !3821)
!3829 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !742, file: !742, line: 35, type: !3822, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3830)
!3830 = !{!3831, !3832}
!3831 = !DILocalVariable(name: "category", arg: 1, scope: !3829, file: !742, line: 35, type: !67)
!3832 = !DILocalVariable(name: "result", scope: !3829, file: !742, line: 37, type: !93)
!3833 = !DILocation(line: 0, scope: !3829)
!3834 = !DILocation(line: 37, column: 24, scope: !3829)
!3835 = !DILocation(line: 62, column: 3, scope: !3829)
!3836 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !742, file: !742, line: 66, type: !3812, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842}
!3838 = !DILocalVariable(name: "category", arg: 1, scope: !3836, file: !742, line: 66, type: !67)
!3839 = !DILocalVariable(name: "buf", arg: 2, scope: !3836, file: !742, line: 66, type: !87)
!3840 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3836, file: !742, line: 66, type: !90)
!3841 = !DILocalVariable(name: "result", scope: !3836, file: !742, line: 111, type: !93)
!3842 = !DILocalVariable(name: "length", scope: !3843, file: !742, line: 125, type: !90)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !742, line: 124, column: 5)
!3844 = distinct !DILexicalBlock(scope: !3836, file: !742, line: 113, column: 7)
!3845 = !DILocation(line: 0, scope: !3836)
!3846 = !DILocation(line: 0, scope: !3829, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 111, column: 24, scope: !3836)
!3848 = !DILocation(line: 37, column: 24, scope: !3829, inlinedAt: !3847)
!3849 = !DILocation(line: 113, column: 14, scope: !3844)
!3850 = !DILocation(line: 113, column: 7, scope: !3836)
!3851 = !DILocation(line: 116, column: 19, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !742, line: 116, column: 11)
!3853 = distinct !DILexicalBlock(scope: !3844, file: !742, line: 114, column: 5)
!3854 = !DILocation(line: 116, column: 11, scope: !3853)
!3855 = !DILocation(line: 120, column: 16, scope: !3852)
!3856 = !DILocation(line: 120, column: 9, scope: !3852)
!3857 = !DILocation(line: 125, column: 23, scope: !3843)
!3858 = !DILocation(line: 0, scope: !3843)
!3859 = !DILocation(line: 126, column: 18, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3843, file: !742, line: 126, column: 11)
!3861 = !DILocation(line: 126, column: 11, scope: !3843)
!3862 = !DILocation(line: 128, column: 39, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !742, line: 127, column: 9)
!3864 = !DILocalVariable(name: "__dest", arg: 1, scope: !3865, file: !1436, line: 26, type: !3326)
!3865 = distinct !DISubprogram(name: "memcpy", scope: !1436, file: !1436, line: 26, type: !3324, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !3866)
!3866 = !{!3864, !3867, !3868}
!3867 = !DILocalVariable(name: "__src", arg: 2, scope: !3865, file: !1436, line: 26, type: !971)
!3868 = !DILocalVariable(name: "__len", arg: 3, scope: !3865, file: !1436, line: 26, type: !90)
!3869 = !DILocation(line: 0, scope: !3865, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 128, column: 11, scope: !3863)
!3871 = !DILocation(line: 29, column: 10, scope: !3865, inlinedAt: !3870)
!3872 = !DILocation(line: 129, column: 11, scope: !3863)
!3873 = !DILocation(line: 133, column: 23, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !742, line: 133, column: 15)
!3875 = distinct !DILexicalBlock(scope: !3860, file: !742, line: 132, column: 9)
!3876 = !DILocation(line: 133, column: 15, scope: !3875)
!3877 = !DILocation(line: 138, column: 44, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3874, file: !742, line: 134, column: 13)
!3879 = !DILocation(line: 0, scope: !3865, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 138, column: 15, scope: !3878)
!3881 = !DILocation(line: 29, column: 10, scope: !3865, inlinedAt: !3880)
!3882 = !DILocation(line: 139, column: 15, scope: !3878)
!3883 = !DILocation(line: 139, column: 32, scope: !3878)
!3884 = !DILocation(line: 140, column: 13, scope: !3878)
!3885 = !DILocation(line: 0, scope: !3844)
!3886 = !DILocation(line: 145, column: 1, scope: !3836)
