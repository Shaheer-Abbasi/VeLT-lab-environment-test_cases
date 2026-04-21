; ModuleID = 'src/printenv.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !385
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !355
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !375
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !377
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !379
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !381
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !383
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !387
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !389
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !394
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !399
@.str.43 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !405
@.str.1.44 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !407
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !409
@.str.53 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !440
@.str.1.54 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !443
@.str.2.55 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !445
@.str.3.56 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !450
@.str.4.57 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !452
@.str.5.58 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !454
@.str.6.59 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !456
@.str.7.60 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !458
@.str.8.61 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !460
@.str.9.62 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !462
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.53, ptr @.str.1.54, ptr @.str.2.55, ptr @.str.3.56, ptr @.str.4.57, ptr @.str.5.58, ptr @.str.6.59, ptr @.str.7.60, ptr @.str.8.61, ptr @.str.9.62, ptr null], align 16, !dbg !464
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !489
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !503
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !541
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !548
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !505
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !550
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !493
@.str.10.65 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !510
@.str.11.63 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !512
@.str.12.66 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !514
@.str.13.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !516
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !518
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !556
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !559
@.str.2.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !561
@.str.3.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !563
@.str.4.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !565
@.str.5.74 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !567
@.str.6.75 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !572
@.str.7.76 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !577
@.str.8.77 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !579
@.str.9.78 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !584
@.str.10.79 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !589
@.str.11.80 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !594
@.str.12.81 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !599
@.str.13.82 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !601
@.str.14.83 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !606
@.str.15.84 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !611
@.str.16.85 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !616
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.90 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !621
@.str.18.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !623
@.str.19.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !625
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !627
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !629
@.str.22.93 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !631
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !633
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !638
@exit_failure = dso_local global i32 1, align 4, !dbg !646
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !652
@.str.1.104 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !655
@.str.2.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !657
@.str.117 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !659
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !662
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !677

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !755, metadata !DIExpression()), !dbg !756
  %2 = icmp eq i32 %0, 0, !dbg !757
  br i1 %2, label %8, label %3, !dbg !759

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !760, !tbaa !762
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !760
  %6 = load ptr, ptr @program_name, align 8, !dbg !760, !tbaa !762
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !760
  br label %31, !dbg !760

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !766
  %10 = load ptr, ptr @program_name, align 8, !dbg !766, !tbaa !762
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !766
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #36, !dbg !768
  tail call fastcc void @oputs_(ptr noundef %12), !dbg !768
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !769
  tail call fastcc void @oputs_(ptr noundef %13), !dbg !769
  %14 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !770
  tail call fastcc void @oputs_(ptr noundef %14), !dbg !770
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #36, !dbg !771
  %16 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %15, ptr noundef nonnull @.str.2) #36, !dbg !771
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !772, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr poison, metadata !784, metadata !DIExpression()), !dbg !789
  tail call void @emit_bug_reporting_address() #36, !dbg !791
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !792
  call void @llvm.dbg.value(metadata ptr %17, metadata !787, metadata !DIExpression()), !dbg !789
  %18 = icmp eq ptr %17, null, !dbg !793
  br i1 %18, label %26, label %19, !dbg !795

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #37, !dbg !796
  %21 = icmp eq i32 %20, 0, !dbg !796
  br i1 %21, label %26, label %22, !dbg !797

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !798
  %24 = load ptr, ptr @stdout, align 8, !dbg !798, !tbaa !762
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !798
  br label %26, !dbg !800

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !784, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !788, metadata !DIExpression()), !dbg !789
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !801
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2) #36, !dbg !801
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !802
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.49) #36, !dbg !802
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !803
  unreachable, !dbg !803
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !804 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !809 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !815 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #4 !dbg !119 {
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !123, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %0, metadata !124, metadata !DIExpression()), !dbg !818
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !819, !tbaa !820
  %3 = icmp eq i32 %2, -1, !dbg !822
  br i1 %3, label %4, label %16, !dbg !823

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #36, !dbg !824
  call void @llvm.dbg.value(metadata ptr %5, metadata !125, metadata !DIExpression()), !dbg !825
  %6 = icmp eq ptr %5, null, !dbg !826
  br i1 %6, label %14, label %7, !dbg !827

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !828, !tbaa !829
  %9 = icmp eq i8 %8, 0, !dbg !828
  br i1 %9, label %14, label %10, !dbg !830

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !831, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !837, metadata !DIExpression()), !dbg !838
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #37, !dbg !840
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
  br label %128, !dbg !849

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !128, metadata !DIExpression()), !dbg !818
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #37, !dbg !850
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !851
  call void @llvm.dbg.value(metadata ptr %24, metadata !130, metadata !DIExpression()), !dbg !818
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !852
  call void @llvm.dbg.value(metadata ptr %25, metadata !131, metadata !DIExpression()), !dbg !818
  %26 = icmp eq ptr %25, null, !dbg !853
  br i1 %26, label %58, label %27, !dbg !854

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !855
  br i1 %28, label %58, label %29, !dbg !856

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !132, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64 0, metadata !136, metadata !DIExpression()), !dbg !857
  %30 = icmp ult ptr %24, %25, !dbg !858
  br i1 %30, label %31, label %52, !dbg !859

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !818
  %33 = load ptr, ptr %32, align 8, !tbaa !762
  br label %34, !dbg !859

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !132, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64 %36, metadata !136, metadata !DIExpression()), !dbg !857
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !860
  call void @llvm.dbg.value(metadata ptr %37, metadata !132, metadata !DIExpression()), !dbg !857
  %38 = load i8, ptr %35, align 1, !dbg !860, !tbaa !829
  %39 = sext i8 %38 to i64, !dbg !860
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !860
  %41 = load i16, ptr %40, align 2, !dbg !860, !tbaa !861
  %42 = freeze i16 %41, !dbg !863
  %43 = lshr i16 %42, 13, !dbg !863
  %44 = and i16 %43, 1, !dbg !863
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !864
  call void @llvm.dbg.value(metadata i64 %46, metadata !136, metadata !DIExpression()), !dbg !857
  %47 = icmp ult ptr %37, %25, !dbg !858
  %48 = icmp ult i64 %46, 2, !dbg !865
  %49 = select i1 %47, i1 %48, i1 false, !dbg !865
  br i1 %49, label %34, label %50, !dbg !859, !llvm.loop !866

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !868
  br i1 %51, label %52, label %54, !dbg !870

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !870

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !870
  call void @llvm.dbg.value(metadata i8 %57, metadata !128, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %56, metadata !131, metadata !DIExpression()), !dbg !818
  br label %58, !dbg !871

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !818
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %60, metadata !128, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %59, metadata !131, metadata !DIExpression()), !dbg !818
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.18) #37, !dbg !872
  call void @llvm.dbg.value(metadata i64 %61, metadata !137, metadata !DIExpression()), !dbg !818
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !873
  call void @llvm.dbg.value(metadata ptr %62, metadata !138, metadata !DIExpression()), !dbg !818
  br label %63, !dbg !874

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !818
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %65, metadata !128, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %64, metadata !138, metadata !DIExpression()), !dbg !818
  %66 = load i8, ptr %64, align 1, !dbg !875, !tbaa !829
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !876

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !877
  %69 = load i8, ptr %68, align 1, !dbg !880, !tbaa !829
  %70 = icmp eq i8 %69, 45, !dbg !881
  %71 = select i1 %70, i8 0, i8 %65, !dbg !882
  br label %72, !dbg !882

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !818
  call void @llvm.dbg.value(metadata i8 %73, metadata !128, metadata !DIExpression()), !dbg !818
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !883
  %75 = load ptr, ptr %74, align 8, !dbg !883, !tbaa !762
  %76 = sext i8 %66 to i64, !dbg !883
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !883
  %78 = load i16, ptr %77, align 2, !dbg !883, !tbaa !861
  %79 = and i16 %78, 8192, !dbg !883
  %80 = icmp eq i16 %79, 0, !dbg !883
  br i1 %80, label %96, label %81, !dbg !885

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !886
  br i1 %82, label %98, label %83, !dbg !889

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !890
  %85 = load i8, ptr %84, align 1, !dbg !890, !tbaa !829
  %86 = sext i8 %85 to i64, !dbg !890
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !890
  %88 = load i16, ptr %87, align 2, !dbg !890, !tbaa !861
  %89 = and i16 %88, 8192, !dbg !890
  %90 = icmp eq i16 %89, 0, !dbg !890
  br i1 %90, label %91, label %98, !dbg !891

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !892
  %93 = icmp ne i8 %92, 0, !dbg !892
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !894
  br i1 %95, label %96, label %98, !dbg !894

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !895
  call void @llvm.dbg.value(metadata ptr %97, metadata !138, metadata !DIExpression()), !dbg !818
  br label %63, !dbg !874, !llvm.loop !896

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !898
  %100 = load ptr, ptr @stdout, align 8, !dbg !898, !tbaa !762
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !831, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !195, metadata !DIExpression()), !dbg !818
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #37, !dbg !919
  %103 = icmp eq i32 %102, 0, !dbg !919
  br i1 %103, label %107, label %104, !dbg !921

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #37, !dbg !922
  %106 = icmp eq i32 %105, 0, !dbg !922
  br i1 %106, label %107, label %110, !dbg !923

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !924
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.2, i32 noundef %108, ptr noundef %59) #36, !dbg !924
  br label %113, !dbg !926

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !927
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.2, i32 noundef %111, ptr noundef %59) #36, !dbg !927
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !762
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %114), !dbg !929
  %116 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !762
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !930
  %118 = ptrtoint ptr %64 to i64, !dbg !931
  %119 = sub i64 %118, %99, !dbg !931
  %120 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !762
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !931
  %122 = load ptr, ptr @stdout, align 8, !dbg !932, !tbaa !762
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %122), !dbg !932
  %124 = load ptr, ptr @stdout, align 8, !dbg !933, !tbaa !762
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %124), !dbg !933
  %126 = load ptr, ptr @stdout, align 8, !dbg !934, !tbaa !762
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !934
  br label %128, !dbg !935

128:                                              ; preds = %113, %19
  ret void, !dbg !935
}

; Function Attrs: nounwind
declare !dbg !936 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !940 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !944 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !948 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !950 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !953 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !956 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !959 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !962 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !968 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !969 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !975 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !980, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata ptr %1, metadata !981, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata i8 0, metadata !982, metadata !DIExpression()), !dbg !1002
  %3 = load ptr, ptr %1, align 8, !dbg !1003, !tbaa !762
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !1004
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.7) #36, !dbg !1005
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #36, !dbg !1006
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.8) #36, !dbg !1007
  call void @llvm.dbg.value(metadata i32 2, metadata !1008, metadata !DIExpression()), !dbg !1011
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1013, !tbaa !820
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !1015
  call void @llvm.dbg.value(metadata i8 poison, metadata !982, metadata !DIExpression()), !dbg !1002
  %8 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %8, metadata !983, metadata !DIExpression()), !dbg !1002
  switch i32 %8, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1017

9:                                                ; preds = %2, %9
  call void @llvm.dbg.value(metadata i8 poison, metadata !982, metadata !DIExpression()), !dbg !1002
  %10 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @longopts, ptr noundef null) #36, !dbg !1016
  call void @llvm.dbg.value(metadata i32 %10, metadata !983, metadata !DIExpression()), !dbg !1002
  switch i32 %10, label %17 [
    i32 -1, label %18
    i32 48, label %9
    i32 -130, label %11
    i32 -131, label %12
  ], !dbg !1017, !llvm.loop !1018

11:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 0) #40, !dbg !1021
  unreachable, !dbg !1021

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr @stdout, align 8, !dbg !1024, !tbaa !762
  %14 = load ptr, ptr @Version, align 8, !dbg !1024, !tbaa !762
  %15 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #36, !dbg !1024
  %16 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.13) #36, !dbg !1024
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef null) #36, !dbg !1024
  tail call void @exit(i32 noundef 0) #38, !dbg !1024
  unreachable, !dbg !1024

17:                                               ; preds = %9, %2
  tail call void @usage(i32 noundef 2) #40, !dbg !1025
  unreachable, !dbg !1025

18:                                               ; preds = %9, %2
  %19 = phi i32 [ 10, %2 ], [ 0, %9 ]
  %20 = load i32, ptr @optind, align 4, !dbg !1026, !tbaa !820
  %21 = icmp slt i32 %20, %0, !dbg !1027
  br i1 %21, label %22, label %24, !dbg !1028

22:                                               ; preds = %18
  %23 = sext i32 %20 to i64, !dbg !1029
  br label %40, !dbg !1029

24:                                               ; preds = %18
  %25 = load ptr, ptr @environ, align 8, !dbg !1030, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %25, metadata !985, metadata !DIExpression()), !dbg !1031
  %26 = load ptr, ptr %25, align 8, !dbg !1032, !tbaa !762
  %27 = icmp eq ptr %26, null, !dbg !1034
  br i1 %27, label %97, label %28, !dbg !1035

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %33, %28 ], [ %26, %24 ]
  %30 = phi ptr [ %32, %28 ], [ %25, %24 ]
  call void @llvm.dbg.value(metadata ptr %30, metadata !985, metadata !DIExpression()), !dbg !1031
  %31 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %29, i32 noundef %19) #36, !dbg !1036
  %32 = getelementptr inbounds ptr, ptr %30, i64 1, !dbg !1037
  call void @llvm.dbg.value(metadata ptr %32, metadata !985, metadata !DIExpression()), !dbg !1031
  %33 = load ptr, ptr %32, align 8, !dbg !1032, !tbaa !762
  %34 = icmp eq ptr %33, null, !dbg !1034
  br i1 %34, label %97, label %28, !dbg !1035, !llvm.loop !1038

35:                                               ; preds = %92
  %36 = load i32, ptr @optind, align 4, !dbg !1040, !tbaa !820
  %37 = sub nsw i32 %0, %36, !dbg !1041
  %38 = icmp ne i32 %93, %37, !dbg !1042
  call void @llvm.dbg.value(metadata i1 %38, metadata !984, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1002
  %39 = zext i1 %38 to i32, !dbg !1043
  br label %97

40:                                               ; preds = %22, %92
  %41 = phi i64 [ %23, %22 ], [ %94, %92 ]
  %42 = phi i32 [ 0, %22 ], [ %93, %92 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !991, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %42, metadata !989, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 0, metadata !993, metadata !DIExpression()), !dbg !1046
  %43 = getelementptr inbounds ptr, ptr %1, i64 %41, !dbg !1047
  %44 = load ptr, ptr %43, align 8, !dbg !1047, !tbaa !762
  %45 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %44, i32 noundef 61) #37, !dbg !1049
  %46 = icmp eq ptr %45, null, !dbg !1049
  br i1 %46, label %47, label %92, !dbg !1050

47:                                               ; preds = %40
  %48 = load ptr, ptr @environ, align 8, !dbg !1051, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %48, metadata !996, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8 0, metadata !993, metadata !DIExpression()), !dbg !1046
  %49 = load ptr, ptr %48, align 8, !dbg !1053, !tbaa !762
  %50 = icmp eq ptr %49, null, !dbg !1054
  br i1 %50, label %51, label %56, !dbg !1054

51:                                               ; preds = %87, %47
  %52 = phi i8 [ 0, %47 ], [ %88, %87 ], !dbg !1046
  %53 = and i8 %52, 1, !dbg !1055
  %54 = zext i8 %53 to i32, !dbg !1055
  %55 = add nsw i32 %42, %54, !dbg !1056
  call void @llvm.dbg.value(metadata i32 %55, metadata !989, metadata !DIExpression()), !dbg !1045
  br label %92, !dbg !1057

56:                                               ; preds = %47, %87
  %57 = phi ptr [ %90, %87 ], [ %49, %47 ]
  %58 = phi ptr [ %89, %87 ], [ %48, %47 ]
  %59 = phi i8 [ %88, %87 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata ptr %58, metadata !996, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.value(metadata i8 %59, metadata !993, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr poison, metadata !1001, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %57, metadata !998, metadata !DIExpression()), !dbg !1058
  %60 = load i8, ptr %57, align 1, !dbg !1059, !tbaa !829
  %61 = icmp eq i8 %60, 0, !dbg !1060
  br i1 %61, label %87, label %62, !dbg !1061

62:                                               ; preds = %56
  %63 = load ptr, ptr %43, align 8, !dbg !1062, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %63, metadata !1001, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %57, metadata !998, metadata !DIExpression()), !dbg !1058
  %64 = load i8, ptr %63, align 1, !dbg !1063, !tbaa !829
  %65 = icmp eq i8 %64, 0, !dbg !1064
  br i1 %65, label %87, label %66, !dbg !1065

66:                                               ; preds = %62, %84
  %67 = phi i8 [ %85, %84 ], [ %64, %62 ]
  %68 = phi ptr [ %71, %84 ], [ %57, %62 ]
  %69 = phi ptr [ %72, %84 ], [ %63, %62 ]
  %70 = phi i8 [ %75, %84 ], [ %60, %62 ]
  call void @llvm.dbg.value(metadata ptr %68, metadata !998, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %69, metadata !1001, metadata !DIExpression()), !dbg !1058
  %71 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %71, metadata !998, metadata !DIExpression()), !dbg !1058
  %72 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1067
  call void @llvm.dbg.value(metadata ptr %72, metadata !1001, metadata !DIExpression()), !dbg !1058
  %73 = icmp eq i8 %70, %67, !dbg !1068
  br i1 %73, label %74, label %87, !dbg !1069

74:                                               ; preds = %66
  %75 = load i8, ptr %71, align 1, !dbg !1070, !tbaa !829
  switch i8 %75, label %84 [
    i8 61, label %76
    i8 0, label %87
  ], !dbg !1073

76:                                               ; preds = %74
  %77 = load i8, ptr %72, align 1, !dbg !1074, !tbaa !829
  %78 = icmp eq i8 %77, 0, !dbg !1075
  br i1 %78, label %79, label %82, !dbg !1076

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %68, i64 2, !dbg !1077
  %81 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull %80, i32 noundef %19) #36, !dbg !1077
  call void @llvm.dbg.value(metadata i8 1, metadata !993, metadata !DIExpression()), !dbg !1046
  br label %87, !dbg !1079

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata ptr %72, metadata !1001, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %71, metadata !998, metadata !DIExpression()), !dbg !1058
  %83 = icmp eq i8 %75, 0, !dbg !1060
  br i1 %83, label %87, label %84, !dbg !1061

84:                                               ; preds = %82, %74
  call void @llvm.dbg.value(metadata ptr %72, metadata !1001, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata ptr %71, metadata !998, metadata !DIExpression()), !dbg !1058
  %85 = load i8, ptr %72, align 1, !dbg !1063, !tbaa !829
  %86 = icmp eq i8 %85, 0, !dbg !1064
  br i1 %86, label %87, label %66, !dbg !1065, !llvm.loop !1080

87:                                               ; preds = %74, %84, %82, %66, %62, %56, %79
  %88 = phi i8 [ 1, %79 ], [ %59, %56 ], [ %59, %62 ], [ %59, %66 ], [ %59, %82 ], [ %59, %84 ], [ %59, %74 ], !dbg !1046
  call void @llvm.dbg.value(metadata i8 %88, metadata !993, metadata !DIExpression()), !dbg !1046
  %89 = getelementptr inbounds ptr, ptr %58, i64 1, !dbg !1082
  call void @llvm.dbg.value(metadata ptr %89, metadata !996, metadata !DIExpression()), !dbg !1052
  %90 = load ptr, ptr %89, align 8, !dbg !1053, !tbaa !762
  %91 = icmp eq ptr %90, null, !dbg !1054
  br i1 %91, label %51, label %56, !dbg !1054, !llvm.loop !1083

92:                                               ; preds = %40, %51
  %93 = phi i32 [ %55, %51 ], [ %42, %40 ], !dbg !1045
  call void @llvm.dbg.value(metadata i32 %93, metadata !989, metadata !DIExpression()), !dbg !1045
  %94 = add nsw i64 %41, 1, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %94, metadata !991, metadata !DIExpression()), !dbg !1044
  %95 = trunc i64 %94 to i32, !dbg !1086
  %96 = icmp eq i32 %95, %0, !dbg !1086
  br i1 %96, label %35, label %40, !dbg !1029, !llvm.loop !1087

97:                                               ; preds = %28, %24, %35
  %98 = phi i32 [ %39, %35 ], [ 0, %24 ], [ 0, %28 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !984, metadata !DIExpression()), !dbg !1002
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1105, metadata !DIExpression()), !dbg !1106
  store ptr %0, ptr @file_name, align 8, !dbg !1107, !tbaa !762
  ret void, !dbg !1108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1109 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1113, metadata !DIExpression()), !dbg !1114
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1115, !tbaa !1116
  ret void, !dbg !1118
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1119 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1124, !tbaa !762
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1125
  %3 = icmp eq i32 %2, 0, !dbg !1126
  br i1 %3, label %22, label %4, !dbg !1127

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1128, !tbaa !1116, !range !1129, !noundef !808
  %6 = icmp eq i8 %5, 0, !dbg !1128
  br i1 %6, label %11, label %7, !dbg !1130

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1131
  %9 = load i32, ptr %8, align 4, !dbg !1131, !tbaa !820
  %10 = icmp eq i32 %9, 32, !dbg !1132
  br i1 %10, label %22, label %11, !dbg !1133

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #36, !dbg !1134
  call void @llvm.dbg.value(metadata ptr %12, metadata !1121, metadata !DIExpression()), !dbg !1135
  %13 = load ptr, ptr @file_name, align 8, !dbg !1136, !tbaa !762
  %14 = icmp eq ptr %13, null, !dbg !1136
  %15 = tail call ptr @__errno_location() #39, !dbg !1138
  %16 = load i32, ptr %15, align 4, !dbg !1138, !tbaa !820
  br i1 %14, label %19, label %17, !dbg !1139

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1140
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #36, !dbg !1140
  br label %20, !dbg !1140

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #36, !dbg !1141
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1142, !tbaa !820
  tail call void @_exit(i32 noundef %21) #38, !dbg !1143
  unreachable, !dbg !1143

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1144, !tbaa !762
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1146
  %25 = icmp eq i32 %24, 0, !dbg !1147
  br i1 %25, label %28, label %26, !dbg !1148

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1149, !tbaa !820
  tail call void @_exit(i32 noundef %27) #38, !dbg !1150
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1162, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i32 %1, metadata !1163, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %2, metadata !1164, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata ptr %3, metadata !1165, metadata !DIExpression()), !dbg !1166
  tail call fastcc void @flush_stdout(), !dbg !1167
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1168, !tbaa !762
  %6 = icmp eq ptr %5, null, !dbg !1168
  br i1 %6, label %8, label %7, !dbg !1170

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1171
  br label %12, !dbg !1171

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1172, !tbaa !762
  %10 = tail call ptr @getprogname() #37, !dbg !1172
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #36, !dbg !1172
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1176 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()), !dbg !1185
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1188
  %2 = icmp slt i32 %1, 0, !dbg !1189
  br i1 %2, label %6, label %3, !dbg !1190

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1191, !tbaa !762
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1191
  br label %6, !dbg !1191

6:                                                ; preds = %3, %0
  ret void, !dbg !1192
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1193 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1195, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i32 %1, metadata !1196, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %2, metadata !1197, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata ptr %3, metadata !1198, metadata !DIExpression()), !dbg !1199
  %6 = load ptr, ptr @stderr, align 8, !dbg !1200, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %6, metadata !1201, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %2, metadata !1241, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %3, metadata !1242, metadata !DIExpression()), !dbg !1243
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1245
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1246, !tbaa !820
  %9 = add i32 %8, 1, !dbg !1246
  store i32 %9, ptr @error_message_count, align 4, !dbg !1246, !tbaa !820
  %10 = icmp eq i32 %1, 0, !dbg !1247
  br i1 %10, label %20, label %11, !dbg !1249

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1250, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1254, metadata !DIExpression()), !dbg !1261
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %12, metadata !1253, metadata !DIExpression()), !dbg !1258
  %13 = icmp eq ptr %12, null, !dbg !1263
  br i1 %13, label %14, label %16, !dbg !1265

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #36, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %15, metadata !1253, metadata !DIExpression()), !dbg !1258
  br label %16, !dbg !1267

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1258
  call void @llvm.dbg.value(metadata ptr %17, metadata !1253, metadata !DIExpression()), !dbg !1258
  %18 = load ptr, ptr @stderr, align 8, !dbg !1268, !tbaa !762
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #36, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1269
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
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1281
  br label %31, !dbg !1281

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1281
  store ptr %30, ptr %22, align 8, !dbg !1281, !tbaa !1282
  store i8 10, ptr %23, align 1, !dbg !1281, !tbaa !829
  br label %31, !dbg !1281

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1287, !tbaa !762
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1287
  %34 = icmp eq i32 %0, 0, !dbg !1288
  br i1 %34, label %36, label %35, !dbg !1290

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1291
  unreachable, !dbg !1291

36:                                               ; preds = %31
  ret void, !dbg !1292
}

declare !dbg !1293 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1296 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1299 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1302 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1305 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1309 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1313, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i32 %1, metadata !1314, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata ptr %2, metadata !1315, metadata !DIExpression()), !dbg !1322
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1316, metadata !DIExpression()), !dbg !1324
  call void @llvm.va_start(ptr nonnull %4), !dbg !1325
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1326
  call void @llvm.va_end(ptr nonnull %4), !dbg !1327
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1328
  ret void, !dbg !1328
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !369, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %1, metadata !370, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %2, metadata !371, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i32 %3, metadata !372, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %4, metadata !373, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %5, metadata !374, metadata !DIExpression()), !dbg !1329
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
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1343
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
  tail call void %24() #36, !dbg !1353
  br label %31, !dbg !1353

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1354, !tbaa !762
  %29 = tail call ptr @getprogname() #37, !dbg !1354
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #36, !dbg !1354
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1356, !tbaa !762
  %33 = icmp eq ptr %2, null, !dbg !1356
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1356
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1356
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1357
  br label %36, !dbg !1358

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1358
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1359 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1363, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %1, metadata !1364, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %2, metadata !1365, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i32 %3, metadata !1366, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %4, metadata !1367, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.va_start(ptr nonnull %6), !dbg !1372
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1373
  call void @llvm.va_end(ptr nonnull %6), !dbg !1374
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1375
  ret void, !dbg !1375
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1376 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1379, !tbaa !762
  ret ptr %1, !dbg !1380
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1381 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1383, metadata !DIExpression()), !dbg !1386
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %2, metadata !1384, metadata !DIExpression()), !dbg !1386
  %3 = icmp eq ptr %2, null, !dbg !1388
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1388
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %5, metadata !1385, metadata !DIExpression()), !dbg !1386
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
  call void @llvm.dbg.value(metadata ptr %5, metadata !1383, metadata !DIExpression()), !dbg !1386
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.44, i64 noundef 3) #37, !dbg !1406
  %16 = icmp eq i32 %15, 0, !dbg !1409
  %17 = select i1 %16, i64 3, i64 0, !dbg !1410
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1410
  br label %19, !dbg !1410

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1386
  call void @llvm.dbg.value(metadata ptr %21, metadata !1385, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %20, metadata !1383, metadata !DIExpression()), !dbg !1386
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
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !411 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !418, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata ptr %1, metadata !419, metadata !DIExpression()), !dbg !1416
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %5, metadata !420, metadata !DIExpression()), !dbg !1416
  %6 = icmp eq ptr %5, %0, !dbg !1418
  br i1 %6, label %7, label %14, !dbg !1420

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1421
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1422
  call void @llvm.dbg.declare(metadata ptr %4, metadata !426, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %4, metadata !1424, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata ptr %4, metadata !1433, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i32 0, metadata !1439, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i64 8, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i64 0, ptr %4, align 8, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %3, metadata !421, metadata !DIExpression(DW_OP_deref)), !dbg !1416
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1444
  %9 = icmp eq i64 %8, 2, !dbg !1446
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !421, metadata !DIExpression()), !dbg !1416
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1447
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1416
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1448
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1448
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1416
  ret ptr %15, !dbg !1448
}

; Function Attrs: nounwind
declare !dbg !1449 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1455 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1460, metadata !DIExpression()), !dbg !1463
  %2 = tail call ptr @__errno_location() #39, !dbg !1464
  %3 = load i32, ptr %2, align 4, !dbg !1464, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %3, metadata !1461, metadata !DIExpression()), !dbg !1463
  %4 = icmp eq ptr %0, null, !dbg !1465
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1465
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1466
  call void @llvm.dbg.value(metadata ptr %6, metadata !1462, metadata !DIExpression()), !dbg !1463
  store i32 %3, ptr %2, align 4, !dbg !1467, !tbaa !820
  ret ptr %6, !dbg !1468
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1469 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1475, metadata !DIExpression()), !dbg !1476
  %2 = icmp eq ptr %0, null, !dbg !1477
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1477
  %4 = load i32, ptr %3, align 8, !dbg !1478, !tbaa !1479
  ret i32 %4, !dbg !1481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1482 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1486, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i32 %1, metadata !1487, metadata !DIExpression()), !dbg !1488
  %3 = icmp eq ptr %0, null, !dbg !1489
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1489
  store i32 %1, ptr %4, align 8, !dbg !1490, !tbaa !1479
  ret void, !dbg !1491
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1492 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1496, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %2, metadata !1498, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %1, metadata !1499, metadata !DIExpression()), !dbg !1504
  %4 = icmp eq ptr %0, null, !dbg !1505
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1505
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1506
  %7 = lshr i8 %1, 5, !dbg !1507
  %8 = zext i8 %7 to i64, !dbg !1507
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %9, metadata !1500, metadata !DIExpression()), !dbg !1504
  %10 = and i8 %1, 31, !dbg !1509
  %11 = zext i8 %10 to i32, !dbg !1509
  call void @llvm.dbg.value(metadata i32 %11, metadata !1502, metadata !DIExpression()), !dbg !1504
  %12 = load i32, ptr %9, align 4, !dbg !1510, !tbaa !820
  %13 = lshr i32 %12, %11, !dbg !1511
  %14 = and i32 %13, 1, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %14, metadata !1503, metadata !DIExpression()), !dbg !1504
  %15 = xor i32 %13, %2, !dbg !1513
  %16 = and i32 %15, 1, !dbg !1513
  %17 = shl nuw i32 %16, %11, !dbg !1514
  %18 = xor i32 %17, %12, !dbg !1515
  store i32 %18, ptr %9, align 4, !dbg !1515, !tbaa !820
  ret i32 %14, !dbg !1516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1517 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1524
  call void @llvm.dbg.value(metadata i32 %1, metadata !1522, metadata !DIExpression()), !dbg !1524
  %3 = icmp eq ptr %0, null, !dbg !1525
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %4, metadata !1521, metadata !DIExpression()), !dbg !1524
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1528
  %6 = load i32, ptr %5, align 4, !dbg !1528, !tbaa !1529
  call void @llvm.dbg.value(metadata i32 %6, metadata !1523, metadata !DIExpression()), !dbg !1524
  store i32 %1, ptr %5, align 4, !dbg !1530, !tbaa !1529
  ret i32 %6, !dbg !1531
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1532 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1536, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata ptr %1, metadata !1537, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata ptr %2, metadata !1538, metadata !DIExpression()), !dbg !1539
  %4 = icmp eq ptr %0, null, !dbg !1540
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1542
  call void @llvm.dbg.value(metadata ptr %5, metadata !1536, metadata !DIExpression()), !dbg !1539
  store i32 10, ptr %5, align 8, !dbg !1543, !tbaa !1479
  %6 = icmp ne ptr %1, null, !dbg !1544
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1546
  br i1 %8, label %10, label %9, !dbg !1546

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1547
  unreachable, !dbg !1547

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1548
  store ptr %1, ptr %11, align 8, !dbg !1549, !tbaa !1550
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1551
  store ptr %2, ptr %12, align 8, !dbg !1552, !tbaa !1553
  ret void, !dbg !1554
}

; Function Attrs: noreturn nounwind
declare !dbg !1555 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1556 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1560, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %1, metadata !1561, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %2, metadata !1562, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata i64 %3, metadata !1563, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %4, metadata !1564, metadata !DIExpression()), !dbg !1568
  %6 = icmp eq ptr %4, null, !dbg !1569
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1569
  call void @llvm.dbg.value(metadata ptr %7, metadata !1565, metadata !DIExpression()), !dbg !1568
  %8 = tail call ptr @__errno_location() #39, !dbg !1570
  %9 = load i32, ptr %8, align 4, !dbg !1570, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %9, metadata !1566, metadata !DIExpression()), !dbg !1568
  %10 = load i32, ptr %7, align 8, !dbg !1571, !tbaa !1479
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1572
  %12 = load i32, ptr %11, align 4, !dbg !1572, !tbaa !1529
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1573
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1574
  %15 = load ptr, ptr %14, align 8, !dbg !1574, !tbaa !1550
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1575
  %17 = load ptr, ptr %16, align 8, !dbg !1575, !tbaa !1553
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1576
  call void @llvm.dbg.value(metadata i64 %18, metadata !1567, metadata !DIExpression()), !dbg !1568
  store i32 %9, ptr %8, align 4, !dbg !1577, !tbaa !820
  ret i64 %18, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1579 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1585, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %1, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %2, metadata !1587, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %3, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %4, metadata !1589, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %5, metadata !1590, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %6, metadata !1591, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %7, metadata !1592, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %8, metadata !1593, metadata !DIExpression()), !dbg !1647
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1648
  %17 = icmp eq i64 %16, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i1 %17, metadata !1594, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr null, metadata !1597, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1598, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1647
  %18 = trunc i32 %5 to i8, !dbg !1650
  %19 = lshr i8 %18, 1, !dbg !1650
  %20 = and i8 %19, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i8 %20, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1647
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1651

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1652
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1653
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1654
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1655
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1647
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1656
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1657
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %39, metadata !1602, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %38, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %37, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %36, metadata !1599, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %35, metadata !1598, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %34, metadata !1597, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %33, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %32, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %31, metadata !1593, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %30, metadata !1592, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %29, metadata !1589, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.label(metadata !1640), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1647
  switch i32 %29, label %114 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %115
    i32 0, label %113
    i32 2, label %105
    i32 4, label %99
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1659

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 5, metadata !1589, metadata !DIExpression()), !dbg !1647
  br label %115, !dbg !1660

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 5, metadata !1589, metadata !DIExpression()), !dbg !1647
  %43 = and i8 %37, 1, !dbg !1661
  %44 = icmp eq i8 %43, 0, !dbg !1661
  br i1 %44, label %45, label %115, !dbg !1660

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1663
  br i1 %46, label %115, label %47, !dbg !1666

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1663, !tbaa !829
  br label %115, !dbg !1663

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.63, metadata !524, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 %29, metadata !525, metadata !DIExpression()), !dbg !1667
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.11.63, i32 noundef 5) #36, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %49, metadata !526, metadata !DIExpression()), !dbg !1667
  %50 = icmp eq ptr %49, @.str.11.63, !dbg !1672
  br i1 %50, label %51, label %60, !dbg !1674

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %13, metadata !528, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr %13, metadata !1678, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %13, metadata !1686, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i64 8, metadata !1690, metadata !DIExpression()), !dbg !1691
  store i64 0, ptr %13, align 8, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %12, metadata !527, metadata !DIExpression(DW_OP_deref)), !dbg !1667
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1694
  %53 = icmp eq i64 %52, 3, !dbg !1696
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !527, metadata !DIExpression()), !dbg !1667
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1697
  %57 = icmp eq i32 %29, 9, !dbg !1697
  %58 = select i1 %57, ptr @.str.10.65, ptr @.str.12.66, !dbg !1697
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1698
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1667
  call void @llvm.dbg.value(metadata ptr %61, metadata !1592, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr @.str.12.66, metadata !524, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 %29, metadata !525, metadata !DIExpression()), !dbg !1699
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.64, ptr noundef nonnull @.str.12.66, i32 noundef 5) #36, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %62, metadata !526, metadata !DIExpression()), !dbg !1699
  %63 = icmp eq ptr %62, @.str.12.66, !dbg !1702
  br i1 %63, label %64, label %73, !dbg !1703

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1704
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %11, metadata !528, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %11, metadata !1678, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %11, metadata !1686, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 8, metadata !1690, metadata !DIExpression()), !dbg !1709
  store i64 0, ptr %11, align 8, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %10, metadata !527, metadata !DIExpression(DW_OP_deref)), !dbg !1699
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1712
  %66 = icmp eq i64 %65, 3, !dbg !1713
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !527, metadata !DIExpression()), !dbg !1699
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1714
  %70 = icmp eq i32 %29, 9, !dbg !1714
  %71 = select i1 %70, ptr @.str.10.65, ptr @.str.12.66, !dbg !1714
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1715
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1593, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %74, metadata !1592, metadata !DIExpression()), !dbg !1647
  %76 = and i8 %37, 1, !dbg !1716
  %77 = icmp eq i8 %76, 0, !dbg !1716
  br i1 %77, label %78, label %93, !dbg !1717

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1604, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1647
  %79 = load i8, ptr %74, align 1, !dbg !1719, !tbaa !829
  %80 = icmp eq i8 %79, 0, !dbg !1721
  br i1 %80, label %93, label %81, !dbg !1721

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1604, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i64 %84, metadata !1595, metadata !DIExpression()), !dbg !1647
  %85 = icmp ult i64 %84, %40, !dbg !1722
  br i1 %85, label %86, label %88, !dbg !1725

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1722
  store i8 %82, ptr %87, align 1, !dbg !1722, !tbaa !829
  br label %88, !dbg !1722

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %89, metadata !1595, metadata !DIExpression()), !dbg !1647
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1726
  call void @llvm.dbg.value(metadata ptr %90, metadata !1604, metadata !DIExpression()), !dbg !1718
  %91 = load i8, ptr %90, align 1, !dbg !1719, !tbaa !829
  %92 = icmp eq i8 %91, 0, !dbg !1721
  br i1 %92, label %93, label %81, !dbg !1721, !llvm.loop !1727

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %94, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %75, metadata !1597, metadata !DIExpression()), !dbg !1647
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %95, metadata !1598, metadata !DIExpression()), !dbg !1647
  br label %115, !dbg !1731

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1647
  br label %97, !dbg !1732

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %98, metadata !1599, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1647
  br label %99, !dbg !1733

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1655
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %101, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %100, metadata !1599, metadata !DIExpression()), !dbg !1647
  %102 = and i8 %101, 1, !dbg !1734
  %103 = icmp eq i8 %102, 0, !dbg !1734
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1736
  br label %105, !dbg !1736

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1647
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1650
  call void @llvm.dbg.value(metadata i8 %107, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %106, metadata !1599, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 2, metadata !1589, metadata !DIExpression()), !dbg !1647
  %108 = and i8 %107, 1, !dbg !1737
  %109 = icmp eq i8 %108, 0, !dbg !1737
  br i1 %109, label %110, label %115, !dbg !1739

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1740
  br i1 %111, label %115, label %112, !dbg !1743

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1740, !tbaa !829
  br label %115, !dbg !1740

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1647
  br label %115, !dbg !1744

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1745
  unreachable, !dbg !1745

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1729
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.65, %45 ], [ @.str.10.65, %47 ], [ @.str.10.65, %42 ], [ %34, %28 ], [ @.str.12.66, %110 ], [ @.str.12.66, %112 ], [ @.str.12.66, %105 ], [ @.str.10.65, %41 ], !dbg !1647
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1647
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1647
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %123, metadata !1600, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %122, metadata !1599, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %121, metadata !1598, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %120, metadata !1597, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %119, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %118, metadata !1593, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata ptr %117, metadata !1592, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i32 %116, metadata !1589, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1746
  %124 = and i8 %122, 1
  %125 = icmp ne i8 %124, 0
  %126 = icmp ne i32 %116, 2
  %127 = and i1 %126, %125
  %128 = icmp ne i64 %121, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = icmp ugt i64 %121, 1
  %131 = and i8 %123, 1
  %132 = icmp eq i8 %131, 0
  %133 = icmp eq i32 %116, 2
  %134 = select i1 %126, i1 true, i1 %132
  %135 = icmp ne i8 %131, 0
  %136 = select i1 %135, i1 %128, i1 false
  %137 = and i1 %26, %135
  br label %138, !dbg !1747

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1729
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1652
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1656
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1657
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1748
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1749
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %145, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %144, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %143, metadata !1602, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %142, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %141, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %140, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %139, metadata !1588, metadata !DIExpression()), !dbg !1647
  %147 = icmp eq i64 %139, -1, !dbg !1750
  br i1 %147, label %148, label %152, !dbg !1751

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1752
  %150 = load i8, ptr %149, align 1, !dbg !1752, !tbaa !829
  %151 = icmp eq i8 %150, 0, !dbg !1753
  br i1 %151, label %627, label %154, !dbg !1754

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1755
  br i1 %153, label %627, label %154, !dbg !1754

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 0, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 0, metadata !1615, metadata !DIExpression()), !dbg !1756
  br i1 %129, label %155, label %170, !dbg !1757

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1759
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1760
  br i1 %157, label %158, label %160, !dbg !1760

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %159, metadata !1588, metadata !DIExpression()), !dbg !1647
  br label %160, !dbg !1762

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1762
  call void @llvm.dbg.value(metadata i64 %161, metadata !1588, metadata !DIExpression()), !dbg !1647
  %162 = icmp ugt i64 %156, %161, !dbg !1763
  br i1 %162, label %170, label %163, !dbg !1764

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %164, metadata !1766, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata ptr %120, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %121, metadata !1770, metadata !DIExpression()), !dbg !1771
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1773
  %166 = icmp ne i32 %165, 0, !dbg !1774
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1775
  %168 = xor i1 %166, true, !dbg !1775
  %169 = zext i1 %168 to i8, !dbg !1775
  br i1 %167, label %170, label %688, !dbg !1775

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1756
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1756
  call void @llvm.dbg.value(metadata i8 %173, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %171, metadata !1588, metadata !DIExpression()), !dbg !1647
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1776
  %175 = load i8, ptr %174, align 1, !dbg !1776, !tbaa !829
  call void @llvm.dbg.value(metadata i8 %175, metadata !1616, metadata !DIExpression()), !dbg !1756
  switch i8 %175, label %308 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %274
    i8 8, label %263
    i8 12, label %264
    i8 10, label %272
    i8 13, label %265
    i8 9, label %266
    i8 11, label %267
    i8 92, label %268
    i8 123, label %276
    i8 125, label %276
    i8 35, label %280
    i8 126, label %280
    i8 32, label %282
    i8 33, label %283
    i8 34, label %283
    i8 36, label %283
    i8 38, label %283
    i8 40, label %283
    i8 41, label %283
    i8 42, label %283
    i8 59, label %283
    i8 60, label %283
    i8 61, label %283
    i8 62, label %283
    i8 91, label %283
    i8 94, label %283
    i8 96, label %283
    i8 124, label %283
    i8 39, label %285
    i8 37, label %480
    i8 43, label %480
    i8 44, label %480
    i8 45, label %480
    i8 46, label %480
    i8 47, label %480
    i8 48, label %480
    i8 49, label %480
    i8 50, label %480
    i8 51, label %480
    i8 52, label %480
    i8 53, label %480
    i8 54, label %480
    i8 55, label %480
    i8 56, label %480
    i8 57, label %480
    i8 58, label %480
    i8 65, label %480
    i8 66, label %480
    i8 67, label %480
    i8 68, label %480
    i8 69, label %480
    i8 70, label %480
    i8 71, label %480
    i8 72, label %480
    i8 73, label %480
    i8 74, label %480
    i8 75, label %480
    i8 76, label %480
    i8 77, label %480
    i8 78, label %480
    i8 79, label %480
    i8 80, label %480
    i8 81, label %480
    i8 82, label %480
    i8 83, label %480
    i8 84, label %480
    i8 85, label %480
    i8 86, label %480
    i8 87, label %480
    i8 88, label %480
    i8 89, label %480
    i8 90, label %480
    i8 93, label %480
    i8 95, label %480
    i8 97, label %480
    i8 98, label %480
    i8 99, label %480
    i8 100, label %480
    i8 101, label %480
    i8 102, label %480
    i8 103, label %480
    i8 104, label %480
    i8 105, label %480
    i8 106, label %480
    i8 107, label %480
    i8 108, label %480
    i8 109, label %480
    i8 110, label %480
    i8 111, label %480
    i8 112, label %480
    i8 113, label %480
    i8 114, label %480
    i8 115, label %480
    i8 116, label %480
    i8 117, label %480
    i8 118, label %480
    i8 119, label %480
    i8 120, label %480
    i8 121, label %480
    i8 122, label %480
  ], !dbg !1777

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1778

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1779

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1756
  %179 = and i8 %144, 1, !dbg !1783
  %180 = icmp eq i8 %179, 0, !dbg !1783
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1783
  br i1 %181, label %182, label %198, !dbg !1783

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1785
  br i1 %183, label %184, label %186, !dbg !1789

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1785
  store i8 39, ptr %185, align 1, !dbg !1785, !tbaa !829
  br label %186, !dbg !1785

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %187, metadata !1595, metadata !DIExpression()), !dbg !1647
  %188 = icmp ult i64 %187, %146, !dbg !1790
  br i1 %188, label %189, label %191, !dbg !1793

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1790
  store i8 36, ptr %190, align 1, !dbg !1790, !tbaa !829
  br label %191, !dbg !1790

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %192, metadata !1595, metadata !DIExpression()), !dbg !1647
  %193 = icmp ult i64 %192, %146, !dbg !1794
  br i1 %193, label %194, label %196, !dbg !1797

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1794
  store i8 39, ptr %195, align 1, !dbg !1794, !tbaa !829
  br label %196, !dbg !1794

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %197, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %198, !dbg !1798

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1647
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %200, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %199, metadata !1595, metadata !DIExpression()), !dbg !1647
  %201 = icmp ult i64 %199, %146, !dbg !1799
  br i1 %201, label %202, label %204, !dbg !1802

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1799
  store i8 92, ptr %203, align 1, !dbg !1799, !tbaa !829
  br label %204, !dbg !1799

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %205, metadata !1595, metadata !DIExpression()), !dbg !1647
  br i1 %126, label %206, label %491, !dbg !1803

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1805
  %208 = icmp ult i64 %207, %171, !dbg !1806
  br i1 %208, label %209, label %480, !dbg !1807

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1808
  %211 = load i8, ptr %210, align 1, !dbg !1808, !tbaa !829
  %212 = add i8 %211, -48, !dbg !1809
  %213 = icmp ult i8 %212, 10, !dbg !1809
  br i1 %213, label %214, label %480, !dbg !1809

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1810
  br i1 %215, label %216, label %218, !dbg !1814

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1810
  store i8 48, ptr %217, align 1, !dbg !1810, !tbaa !829
  br label %218, !dbg !1810

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %219, metadata !1595, metadata !DIExpression()), !dbg !1647
  %220 = icmp ult i64 %219, %146, !dbg !1815
  br i1 %220, label %221, label %223, !dbg !1818

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1815
  store i8 48, ptr %222, align 1, !dbg !1815, !tbaa !829
  br label %223, !dbg !1815

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %224, metadata !1595, metadata !DIExpression()), !dbg !1647
  br label %480, !dbg !1819

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1820

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1821

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1822

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1824

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1826
  %231 = icmp ult i64 %230, %171, !dbg !1827
  br i1 %231, label %232, label %480, !dbg !1828

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1829
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1830
  %235 = load i8, ptr %234, align 1, !dbg !1830, !tbaa !829
  %236 = icmp eq i8 %235, 63, !dbg !1831
  br i1 %236, label %237, label %480, !dbg !1832

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1833
  %239 = load i8, ptr %238, align 1, !dbg !1833, !tbaa !829
  %240 = sext i8 %239 to i32, !dbg !1833
  switch i32 %240, label %480 [
    i32 33, label %241
    i32 39, label %241
    i32 40, label %241
    i32 41, label %241
    i32 45, label %241
    i32 47, label %241
    i32 60, label %241
    i32 61, label %241
    i32 62, label %241
  ], !dbg !1834

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1835

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %230, metadata !1609, metadata !DIExpression()), !dbg !1746
  %243 = icmp ult i64 %140, %146, !dbg !1837
  br i1 %243, label %244, label %246, !dbg !1840

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1837
  store i8 63, ptr %245, align 1, !dbg !1837, !tbaa !829
  br label %246, !dbg !1837

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %247, metadata !1595, metadata !DIExpression()), !dbg !1647
  %248 = icmp ult i64 %247, %146, !dbg !1841
  br i1 %248, label %249, label %251, !dbg !1844

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1841
  store i8 34, ptr %250, align 1, !dbg !1841, !tbaa !829
  br label %251, !dbg !1841

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %252, metadata !1595, metadata !DIExpression()), !dbg !1647
  %253 = icmp ult i64 %252, %146, !dbg !1845
  br i1 %253, label %254, label %256, !dbg !1848

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1845
  store i8 34, ptr %255, align 1, !dbg !1845, !tbaa !829
  br label %256, !dbg !1845

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %257, metadata !1595, metadata !DIExpression()), !dbg !1647
  %258 = icmp ult i64 %257, %146, !dbg !1849
  br i1 %258, label %259, label %261, !dbg !1852

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1849
  store i8 63, ptr %260, align 1, !dbg !1849, !tbaa !829
  br label %261, !dbg !1849

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %262, metadata !1595, metadata !DIExpression()), !dbg !1647
  br label %480, !dbg !1853

263:                                              ; preds = %170
  br label %274, !dbg !1854

264:                                              ; preds = %170
  br label %274, !dbg !1855

265:                                              ; preds = %170
  br label %272, !dbg !1856

266:                                              ; preds = %170
  br label %272, !dbg !1857

267:                                              ; preds = %170
  br label %274, !dbg !1858

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1859

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1860

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1863

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1865

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1866
  call void @llvm.dbg.label(metadata !1641), !dbg !1867
  br i1 %134, label %274, label %670, !dbg !1868

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1866
  call void @llvm.dbg.label(metadata !1643), !dbg !1870
  br i1 %125, label %535, label %491, !dbg !1871

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1872

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1873, !tbaa !829
  %279 = icmp eq i8 %278, 0, !dbg !1875
  br i1 %279, label %280, label %480, !dbg !1876

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1877
  br i1 %281, label %282, label %480, !dbg !1879

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1756
  br label %283, !dbg !1880

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1756
  call void @llvm.dbg.value(metadata i8 %284, metadata !1615, metadata !DIExpression()), !dbg !1756
  br i1 %134, label %480, label %670, !dbg !1881

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1756
  br i1 %133, label %286, label %480, !dbg !1883

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1884

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1887
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1889
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1889
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %292, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %291, metadata !1596, metadata !DIExpression()), !dbg !1647
  %293 = icmp ult i64 %140, %292, !dbg !1890
  br i1 %293, label %294, label %296, !dbg !1893

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1890
  store i8 39, ptr %295, align 1, !dbg !1890, !tbaa !829
  br label %296, !dbg !1890

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %297, metadata !1595, metadata !DIExpression()), !dbg !1647
  %298 = icmp ult i64 %297, %292, !dbg !1894
  br i1 %298, label %299, label %301, !dbg !1897

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1894
  store i8 92, ptr %300, align 1, !dbg !1894, !tbaa !829
  br label %301, !dbg !1894

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %302, metadata !1595, metadata !DIExpression()), !dbg !1647
  %303 = icmp ult i64 %302, %292, !dbg !1898
  br i1 %303, label %304, label %306, !dbg !1901

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1898
  store i8 39, ptr %305, align 1, !dbg !1898, !tbaa !829
  br label %306, !dbg !1898

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1901
  call void @llvm.dbg.value(metadata i64 %307, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %480, !dbg !1902

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1903

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1617, metadata !DIExpression()), !dbg !1904
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1905
  %311 = load ptr, ptr %310, align 8, !dbg !1905, !tbaa !762
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1905
  %314 = load i16, ptr %313, align 2, !dbg !1905, !tbaa !861
  %315 = lshr i16 %314, 14, !dbg !1907
  %316 = trunc i16 %315 to i8, !dbg !1907
  %317 = and i8 %316, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i8 %317, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %171, metadata !1588, metadata !DIExpression()), !dbg !1647
  %318 = icmp eq i8 %317, 0, !dbg !1908
  call void @llvm.dbg.value(metadata i1 %318, metadata !1615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  br label %368, !dbg !1909

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1621, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %14, metadata !1678, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %14, metadata !1686, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 8, metadata !1690, metadata !DIExpression()), !dbg !1914
  store i64 0, ptr %14, align 8, !dbg !1916
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1904
  %320 = icmp eq i64 %171, -1, !dbg !1917
  br i1 %320, label %321, label %323, !dbg !1919

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %322, metadata !1588, metadata !DIExpression()), !dbg !1647
  br label %323, !dbg !1921

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1756
  call void @llvm.dbg.value(metadata i64 %324, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1922
  %325 = sub i64 %324, %145, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %15, metadata !1624, metadata !DIExpression(DW_OP_deref)), !dbg !1924
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %326, metadata !1628, metadata !DIExpression()), !dbg !1924
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1926

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1904
  %328 = icmp ugt i64 %324, %145, !dbg !1927
  br i1 %328, label %331, label %329, !dbg !1929

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %324, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i1 true, metadata !1615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  br label %368, !dbg !1909

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1904
  br label %360, !dbg !1932

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1617, metadata !DIExpression()), !dbg !1904
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1934
  %335 = load i8, ptr %334, align 1, !dbg !1934, !tbaa !829
  %336 = icmp eq i8 %335, 0, !dbg !1929
  br i1 %336, label %363, label %337, !dbg !1935

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %338, metadata !1617, metadata !DIExpression()), !dbg !1904
  %339 = add i64 %338, %145, !dbg !1937
  %340 = icmp eq i64 %338, %325, !dbg !1927
  br i1 %340, label %363, label %331, !dbg !1929, !llvm.loop !1938

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1939
  %344 = and i1 %343, %133, !dbg !1939
  call void @llvm.dbg.value(metadata i64 1, metadata !1629, metadata !DIExpression()), !dbg !1940
  br i1 %344, label %345, label %354, !dbg !1939

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1629, metadata !DIExpression()), !dbg !1940
  %347 = add i64 %346, %145, !dbg !1941
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1943
  %349 = load i8, ptr %348, align 1, !dbg !1943, !tbaa !829
  %350 = sext i8 %349 to i32, !dbg !1943
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1944

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1945
  call void @llvm.dbg.value(metadata i64 %352, metadata !1629, metadata !DIExpression()), !dbg !1940
  %353 = icmp eq i64 %352, %326, !dbg !1946
  br i1 %353, label %354, label %345, !dbg !1947, !llvm.loop !1948

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1950, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %355, metadata !1624, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i32 %355, metadata !1952, metadata !DIExpression()), !dbg !1960
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1962
  %357 = icmp ne i32 %356, 0, !dbg !1963
  %358 = zext i1 %357 to i8, !dbg !1964
  call void @llvm.dbg.value(metadata i8 %358, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %326, metadata !1617, metadata !DIExpression()), !dbg !1904
  br label %363, !dbg !1965

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1931
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %324, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i1 %361, metadata !1615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  br label %368, !dbg !1909

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1620, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64 %364, metadata !1617, metadata !DIExpression()), !dbg !1904
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1930
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1931
  call void @llvm.dbg.value(metadata i64 %324, metadata !1588, metadata !DIExpression()), !dbg !1647
  %366 = icmp eq i8 %365, 0, !dbg !1908
  call void @llvm.dbg.value(metadata i1 %366, metadata !1615, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  %367 = icmp ugt i64 %364, 1, !dbg !1966
  br i1 %367, label %374, label %368, !dbg !1909

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1967
  br i1 %373, label %374, label %480, !dbg !1967

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %379, metadata !1637, metadata !DIExpression()), !dbg !1969
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1970

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1647
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1748
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1746
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1756
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1971
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1756
  call void @llvm.dbg.value(metadata i8 %387, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %386, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %385, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %384, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %383, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %382, metadata !1595, metadata !DIExpression()), !dbg !1647
  br i1 %380, label %388, label %434, !dbg !1972

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1977

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1756
  %390 = and i8 %383, 1, !dbg !1980
  %391 = icmp eq i8 %390, 0, !dbg !1980
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1980
  br i1 %392, label %393, label %409, !dbg !1980

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1982
  br i1 %394, label %395, label %397, !dbg !1986

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1982
  store i8 39, ptr %396, align 1, !dbg !1982, !tbaa !829
  br label %397, !dbg !1982

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %398, metadata !1595, metadata !DIExpression()), !dbg !1647
  %399 = icmp ult i64 %398, %146, !dbg !1987
  br i1 %399, label %400, label %402, !dbg !1990

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1987
  store i8 36, ptr %401, align 1, !dbg !1987, !tbaa !829
  br label %402, !dbg !1987

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %403, metadata !1595, metadata !DIExpression()), !dbg !1647
  %404 = icmp ult i64 %403, %146, !dbg !1991
  br i1 %404, label %405, label %407, !dbg !1994

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1991
  store i8 39, ptr %406, align 1, !dbg !1991, !tbaa !829
  br label %407, !dbg !1991

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %408, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %409, !dbg !1995

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1647
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %411, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %410, metadata !1595, metadata !DIExpression()), !dbg !1647
  %412 = icmp ult i64 %410, %146, !dbg !1996
  br i1 %412, label %413, label %415, !dbg !1999

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1996
  store i8 92, ptr %414, align 1, !dbg !1996, !tbaa !829
  br label %415, !dbg !1996

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %416, metadata !1595, metadata !DIExpression()), !dbg !1647
  %417 = icmp ult i64 %416, %146, !dbg !2000
  br i1 %417, label %418, label %422, !dbg !2003

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2000
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2000
  store i8 %420, ptr %421, align 1, !dbg !2000, !tbaa !829
  br label %422, !dbg !2000

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %423, metadata !1595, metadata !DIExpression()), !dbg !1647
  %424 = icmp ult i64 %423, %146, !dbg !2004
  br i1 %424, label %425, label %430, !dbg !2007

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2004
  %428 = or i8 %427, 48, !dbg !2004
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2004
  store i8 %428, ptr %429, align 1, !dbg !2004, !tbaa !829
  br label %430, !dbg !2004

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %431, metadata !1595, metadata !DIExpression()), !dbg !1647
  %432 = and i8 %387, 7, !dbg !2008
  %433 = or i8 %432, 48, !dbg !2009
  call void @llvm.dbg.value(metadata i8 %433, metadata !1616, metadata !DIExpression()), !dbg !1756
  br label %443, !dbg !2010

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2011
  %436 = icmp eq i8 %435, 0, !dbg !2011
  br i1 %436, label %443, label %437, !dbg !2013

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2014
  br i1 %438, label %439, label %441, !dbg !2018

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2014
  store i8 92, ptr %440, align 1, !dbg !2014, !tbaa !829
  br label %441, !dbg !2014

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %442, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1756
  br label %443, !dbg !2019

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1647
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1748
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1756
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1756
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1756
  call void @llvm.dbg.value(metadata i8 %448, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %447, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %446, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %445, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %444, metadata !1595, metadata !DIExpression()), !dbg !1647
  %449 = add i64 %384, 1, !dbg !2020
  %450 = icmp ugt i64 %379, %449, !dbg !2022
  br i1 %450, label %451, label %478, !dbg !2023

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2024
  %453 = icmp ne i8 %452, 0, !dbg !2024
  %454 = and i8 %447, 1, !dbg !2024
  %455 = icmp eq i8 %454, 0, !dbg !2024
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2024
  br i1 %456, label %457, label %468, !dbg !2024

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2027
  br i1 %458, label %459, label %461, !dbg !2031

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2027
  store i8 39, ptr %460, align 1, !dbg !2027, !tbaa !829
  br label %461, !dbg !2027

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %462, metadata !1595, metadata !DIExpression()), !dbg !1647
  %463 = icmp ult i64 %462, %146, !dbg !2032
  br i1 %463, label %464, label %466, !dbg !2035

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2032
  store i8 39, ptr %465, align 1, !dbg !2032, !tbaa !829
  br label %466, !dbg !2032

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %467, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %468, !dbg !2036

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2037
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %470, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %469, metadata !1595, metadata !DIExpression()), !dbg !1647
  %471 = icmp ult i64 %469, %146, !dbg !2038
  br i1 %471, label %472, label %474, !dbg !2041

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2038
  store i8 %448, ptr %473, align 1, !dbg !2038, !tbaa !829
  br label %474, !dbg !2038

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %475, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %449, metadata !1609, metadata !DIExpression()), !dbg !1746
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2042
  %477 = load i8, ptr %476, align 1, !dbg !2042, !tbaa !829
  call void @llvm.dbg.value(metadata i8 %477, metadata !1616, metadata !DIExpression()), !dbg !1756
  br label %381, !dbg !2043, !llvm.loop !2044

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i8 %448, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %479, metadata !1615, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %447, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %446, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %384, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %445, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %444, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %378, metadata !1588, metadata !DIExpression()), !dbg !1647
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2047
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1647
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1652
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1647
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1647
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1746
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1756
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1756
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1756
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %489, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %488, metadata !1615, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %487, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %173, metadata !1611, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %486, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %485, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %484, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %483, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %482, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %481, metadata !1588, metadata !DIExpression()), !dbg !1647
  br i1 %127, label %502, label %491, !dbg !2048

491:                                              ; preds = %270, %225, %274, %204, %480
  %492 = phi i64 [ %490, %480 ], [ %146, %204 ], [ %146, %274 ], [ %146, %225 ], [ %146, %270 ]
  %493 = phi i8 [ %489, %480 ], [ 48, %204 ], [ %175, %274 ], [ 0, %225 ], [ 92, %270 ]
  %494 = phi i8 [ %488, %480 ], [ 0, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %495 = phi i8 [ %487, %480 ], [ 1, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %496 = phi i64 [ %486, %480 ], [ %145, %204 ], [ %145, %274 ], [ %145, %225 ], [ %145, %270 ]
  %497 = phi i8 [ %485, %480 ], [ %200, %204 ], [ %144, %274 ], [ %144, %225 ], [ %144, %270 ]
  %498 = phi i8 [ %484, %480 ], [ %142, %204 ], [ %142, %274 ], [ %142, %225 ], [ %142, %270 ]
  %499 = phi i64 [ %483, %480 ], [ %141, %204 ], [ %141, %274 ], [ %141, %225 ], [ %141, %270 ]
  %500 = phi i64 [ %482, %480 ], [ %205, %204 ], [ %140, %274 ], [ %140, %225 ], [ %140, %270 ]
  %501 = phi i64 [ %481, %480 ], [ %171, %204 ], [ %171, %274 ], [ %171, %225 ], [ %171, %270 ]
  br i1 %137, label %503, label %524, !dbg !2050

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2051

503:                                              ; preds = %491, %502
  %504 = phi i64 [ %492, %491 ], [ %490, %502 ]
  %505 = phi i8 [ %493, %491 ], [ %489, %502 ]
  %506 = phi i8 [ %494, %491 ], [ %488, %502 ]
  %507 = phi i8 [ %495, %491 ], [ %487, %502 ]
  %508 = phi i64 [ %496, %491 ], [ %486, %502 ]
  %509 = phi i8 [ %497, %491 ], [ %485, %502 ]
  %510 = phi i8 [ %498, %491 ], [ %484, %502 ]
  %511 = phi i64 [ %499, %491 ], [ %483, %502 ]
  %512 = phi i64 [ %500, %491 ], [ %482, %502 ]
  %513 = phi i64 [ %501, %491 ], [ %481, %502 ]
  %514 = lshr i8 %505, 5, !dbg !2052
  %515 = zext i8 %514 to i64, !dbg !2052
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2053
  %517 = load i32, ptr %516, align 4, !dbg !2053, !tbaa !820
  %518 = and i8 %505, 31, !dbg !2054
  %519 = zext i8 %518 to i32, !dbg !2054
  %520 = shl nuw i32 1, %519, !dbg !2055
  %521 = and i32 %517, %520, !dbg !2055
  %522 = icmp eq i32 %521, 0, !dbg !2055
  %523 = and i1 %172, %522, !dbg !2056
  br i1 %523, label %573, label %535, !dbg !2056

524:                                              ; preds = %502, %491
  %525 = phi i64 [ %490, %502 ], [ %492, %491 ]
  %526 = phi i8 [ %489, %502 ], [ %493, %491 ]
  %527 = phi i8 [ %488, %502 ], [ %494, %491 ]
  %528 = phi i8 [ %487, %502 ], [ %495, %491 ]
  %529 = phi i64 [ %486, %502 ], [ %496, %491 ]
  %530 = phi i8 [ %485, %502 ], [ %497, %491 ]
  %531 = phi i8 [ %484, %502 ], [ %498, %491 ]
  %532 = phi i64 [ %483, %502 ], [ %499, %491 ]
  %533 = phi i64 [ %482, %502 ], [ %500, %491 ]
  %534 = phi i64 [ %481, %502 ], [ %501, %491 ]
  br i1 %172, label %573, label %535, !dbg !2057

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2047
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1647
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1652
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1656
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1748
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2058
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1756
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1756
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %543, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %542, metadata !1615, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %541, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %540, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %539, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %538, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %537, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %536, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.label(metadata !1644), !dbg !2059
  br i1 %132, label %545, label %674, !dbg !2060

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1756
  %546 = and i8 %540, 1, !dbg !2062
  %547 = icmp eq i8 %546, 0, !dbg !2062
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2062
  br i1 %548, label %549, label %565, !dbg !2062

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2064
  br i1 %550, label %551, label %553, !dbg !2068

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2064
  store i8 39, ptr %552, align 1, !dbg !2064, !tbaa !829
  br label %553, !dbg !2064

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %554, metadata !1595, metadata !DIExpression()), !dbg !1647
  %555 = icmp ult i64 %554, %544, !dbg !2069
  br i1 %555, label %556, label %558, !dbg !2072

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2069
  store i8 36, ptr %557, align 1, !dbg !2069, !tbaa !829
  br label %558, !dbg !2069

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %559, metadata !1595, metadata !DIExpression()), !dbg !1647
  %560 = icmp ult i64 %559, %544, !dbg !2073
  br i1 %560, label %561, label %563, !dbg !2076

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2073
  store i8 39, ptr %562, align 1, !dbg !2073, !tbaa !829
  br label %563, !dbg !2073

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %564, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %565, !dbg !2077

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1756
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %567, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %566, metadata !1595, metadata !DIExpression()), !dbg !1647
  %568 = icmp ult i64 %566, %544, !dbg !2078
  br i1 %568, label %569, label %571, !dbg !2081

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2078
  store i8 92, ptr %570, align 1, !dbg !2078, !tbaa !829
  br label %571, !dbg !2078

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %544, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %543, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %542, metadata !1615, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %541, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %567, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %539, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %538, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %572, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %536, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.label(metadata !1645), !dbg !2082
  br label %600, !dbg !2083

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2047
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1647
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1652
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1656
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1748
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2058
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1756
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1756
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2086
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %582, metadata !1616, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %581, metadata !1615, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 %580, metadata !1614, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i64 %579, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %578, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %577, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %576, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %575, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %574, metadata !1588, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.label(metadata !1645), !dbg !2082
  %584 = and i8 %578, 1, !dbg !2083
  %585 = icmp ne i8 %584, 0, !dbg !2083
  %586 = and i8 %580, 1, !dbg !2083
  %587 = icmp eq i8 %586, 0, !dbg !2083
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2083
  br i1 %588, label %589, label %600, !dbg !2083

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2087
  br i1 %590, label %591, label %593, !dbg !2091

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2087
  store i8 39, ptr %592, align 1, !dbg !2087, !tbaa !829
  br label %593, !dbg !2087

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %594, metadata !1595, metadata !DIExpression()), !dbg !1647
  %595 = icmp ult i64 %594, %583, !dbg !2092
  br i1 %595, label %596, label %598, !dbg !2095

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2092
  store i8 39, ptr %597, align 1, !dbg !2092, !tbaa !829
  br label %598, !dbg !2092

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2095
  call void @llvm.dbg.value(metadata i64 %599, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1647
  br label %600, !dbg !2096

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1756
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1647
  call void @llvm.dbg.value(metadata i8 %609, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %608, metadata !1595, metadata !DIExpression()), !dbg !1647
  %610 = icmp ult i64 %608, %601, !dbg !2097
  br i1 %610, label %611, label %613, !dbg !2100

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2097
  store i8 %602, ptr %612, align 1, !dbg !2097, !tbaa !829
  br label %613, !dbg !2097

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %614, metadata !1595, metadata !DIExpression()), !dbg !1647
  %615 = icmp eq i8 %603, 0, !dbg !2101
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2103
  call void @llvm.dbg.value(metadata i8 %616, metadata !1602, metadata !DIExpression()), !dbg !1647
  br label %617, !dbg !2104

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2047
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1647
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1652
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1656
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1657
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1748
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2058
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %624, metadata !1609, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 %623, metadata !1603, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %622, metadata !1602, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %621, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %620, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %619, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %618, metadata !1588, metadata !DIExpression()), !dbg !1647
  %626 = add i64 %624, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %626, metadata !1609, metadata !DIExpression()), !dbg !1746
  br label %138, !dbg !2106, !llvm.loop !2107

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1586, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %143, metadata !1602, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 %142, metadata !1601, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %141, metadata !1596, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %140, metadata !1595, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %139, metadata !1588, metadata !DIExpression()), !dbg !1647
  %628 = icmp eq i64 %140, 0, !dbg !2109
  %629 = and i1 %133, %628, !dbg !2111
  %630 = xor i1 %629, true, !dbg !2111
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2111
  br i1 %631, label %632, label %670, !dbg !2111

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2112
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2112
  br i1 %636, label %637, label %646, !dbg !2112

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2114
  %639 = icmp eq i8 %638, 0, !dbg !2114
  br i1 %639, label %642, label %640, !dbg !2117

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2118
  br label %694, !dbg !2119

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2120
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2122
  br i1 %645, label %28, label %646, !dbg !2122

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2123
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2125
  br i1 %649, label %650, label %665, !dbg !2125

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1597, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %140, metadata !1595, metadata !DIExpression()), !dbg !1647
  %651 = load i8, ptr %120, align 1, !dbg !2126, !tbaa !829
  %652 = icmp eq i8 %651, 0, !dbg !2129
  br i1 %652, label %665, label %653, !dbg !2129

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1597, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %656, metadata !1595, metadata !DIExpression()), !dbg !1647
  %657 = icmp ult i64 %656, %146, !dbg !2130
  br i1 %657, label %658, label %660, !dbg !2133

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2130
  store i8 %654, ptr %659, align 1, !dbg !2130, !tbaa !829
  br label %660, !dbg !2130

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %661, metadata !1595, metadata !DIExpression()), !dbg !1647
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2134
  call void @llvm.dbg.value(metadata ptr %662, metadata !1597, metadata !DIExpression()), !dbg !1647
  %663 = load i8, ptr %662, align 1, !dbg !2126, !tbaa !829
  %664 = icmp eq i8 %663, 0, !dbg !2129
  br i1 %664, label %665, label %653, !dbg !2129, !llvm.loop !2135

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1729
  call void @llvm.dbg.value(metadata i64 %666, metadata !1595, metadata !DIExpression()), !dbg !1647
  %667 = icmp ult i64 %666, %146, !dbg !2137
  br i1 %667, label %668, label %694, !dbg !2139

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2140
  store i8 0, ptr %669, align 1, !dbg !2141, !tbaa !829
  br label %694, !dbg !2140

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1646), !dbg !2142
  %672 = icmp eq i8 %124, 0, !dbg !2143
  %673 = select i1 %672, i32 2, i32 4, !dbg !2143
  br label %684, !dbg !2143

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2143
  %678 = select i1 %677, i32 2, i32 4, !dbg !2143
  br label %679, !dbg !2145

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1646), !dbg !2142
  %683 = icmp eq i32 %116, 2, !dbg !2145
  br i1 %683, label %684, label %688, !dbg !2143

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2143

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1589, metadata !DIExpression()), !dbg !1647
  %692 = and i32 %5, -3, !dbg !2146
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2147
  br label %694, !dbg !2148

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2149
}

; Function Attrs: nounwind
declare !dbg !2150 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2153 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !2156 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2158 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %1, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata ptr %2, metadata !2164, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata ptr %0, metadata !2166, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata ptr null, metadata !2172, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata ptr %2, metadata !2173, metadata !DIExpression()), !dbg !2179
  %4 = icmp eq ptr %2, null, !dbg !2181
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %5, metadata !2174, metadata !DIExpression()), !dbg !2179
  %6 = tail call ptr @__errno_location() #39, !dbg !2182
  %7 = load i32, ptr %6, align 4, !dbg !2182, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2175, metadata !DIExpression()), !dbg !2179
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2183
  %9 = load i32, ptr %8, align 4, !dbg !2183, !tbaa !1529
  %10 = or i32 %9, 1, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %10, metadata !2176, metadata !DIExpression()), !dbg !2179
  %11 = load i32, ptr %5, align 8, !dbg !2185, !tbaa !1479
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2186
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2187
  %14 = load ptr, ptr %13, align 8, !dbg !2187, !tbaa !1550
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2188
  %16 = load ptr, ptr %15, align 8, !dbg !2188, !tbaa !1553
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2189
  %18 = add i64 %17, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %18, metadata !2177, metadata !DIExpression()), !dbg !2179
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %19, metadata !2178, metadata !DIExpression()), !dbg !2179
  %20 = load i32, ptr %5, align 8, !dbg !2192, !tbaa !1479
  %21 = load ptr, ptr %13, align 8, !dbg !2193, !tbaa !1550
  %22 = load ptr, ptr %15, align 8, !dbg !2194, !tbaa !1553
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2195
  store i32 %7, ptr %6, align 4, !dbg !2196, !tbaa !820
  ret ptr %19, !dbg !2197
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2167 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2166, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2171, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr %2, metadata !2172, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr %3, metadata !2173, metadata !DIExpression()), !dbg !2198
  %5 = icmp eq ptr %3, null, !dbg !2199
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2199
  call void @llvm.dbg.value(metadata ptr %6, metadata !2174, metadata !DIExpression()), !dbg !2198
  %7 = tail call ptr @__errno_location() #39, !dbg !2200
  %8 = load i32, ptr %7, align 4, !dbg !2200, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %8, metadata !2175, metadata !DIExpression()), !dbg !2198
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2201
  %10 = load i32, ptr %9, align 4, !dbg !2201, !tbaa !1529
  %11 = icmp eq ptr %2, null, !dbg !2202
  %12 = zext i1 %11 to i32, !dbg !2202
  %13 = or i32 %10, %12, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %13, metadata !2176, metadata !DIExpression()), !dbg !2198
  %14 = load i32, ptr %6, align 8, !dbg !2204, !tbaa !1479
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2205
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2206
  %17 = load ptr, ptr %16, align 8, !dbg !2206, !tbaa !1550
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2207
  %19 = load ptr, ptr %18, align 8, !dbg !2207, !tbaa !1553
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2208
  %21 = add i64 %20, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %21, metadata !2177, metadata !DIExpression()), !dbg !2198
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %22, metadata !2178, metadata !DIExpression()), !dbg !2198
  %23 = load i32, ptr %6, align 8, !dbg !2211, !tbaa !1479
  %24 = load ptr, ptr %16, align 8, !dbg !2212, !tbaa !1550
  %25 = load ptr, ptr %18, align 8, !dbg !2213, !tbaa !1553
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2214
  store i32 %8, ptr %7, align 4, !dbg !2215, !tbaa !820
  br i1 %11, label %28, label %27, !dbg !2216

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2217, !tbaa !2219
  br label %28, !dbg !2220

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2221
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2222 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2227, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %1, metadata !2224, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()), !dbg !2229
  %2 = load i32, ptr @nslots, align 4, !tbaa !820
  call void @llvm.dbg.value(metadata i32 1, metadata !2225, metadata !DIExpression()), !dbg !2229
  %3 = icmp sgt i32 %2, 1, !dbg !2230
  br i1 %3, label %4, label %6, !dbg !2232

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2230
  br label %10, !dbg !2232

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2233
  %8 = load ptr, ptr %7, align 8, !dbg !2233, !tbaa !2235
  %9 = icmp eq ptr %8, @slot0, !dbg !2237
  br i1 %9, label %17, label %16, !dbg !2238

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2225, metadata !DIExpression()), !dbg !2229
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2239
  %13 = load ptr, ptr %12, align 8, !dbg !2239, !tbaa !2235
  tail call void @free(ptr noundef %13) #36, !dbg !2240
  %14 = add nuw nsw i64 %11, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i64 %14, metadata !2225, metadata !DIExpression()), !dbg !2229
  %15 = icmp eq i64 %14, %5, !dbg !2230
  br i1 %15, label %6, label %10, !dbg !2232, !llvm.loop !2242

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2244
  store i64 256, ptr @slotvec0, align 8, !dbg !2246, !tbaa !2247
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2248, !tbaa !2235
  br label %17, !dbg !2249

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2250
  br i1 %18, label %20, label %19, !dbg !2252

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2253
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2255, !tbaa !762
  br label %20, !dbg !2256

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2257, !tbaa !820
  ret void, !dbg !2258
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2259 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata ptr %1, metadata !2265, metadata !DIExpression()), !dbg !2266
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2267
  ret ptr %3, !dbg !2268
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2269 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata ptr %1, metadata !2274, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %2, metadata !2275, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata ptr %3, metadata !2276, metadata !DIExpression()), !dbg !2289
  %6 = tail call ptr @__errno_location() #39, !dbg !2290
  %7 = load i32, ptr %6, align 4, !dbg !2290, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2277, metadata !DIExpression()), !dbg !2289
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2291, !tbaa !762
  call void @llvm.dbg.value(metadata ptr %8, metadata !2278, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2279, metadata !DIExpression()), !dbg !2289
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2292
  br i1 %9, label %10, label %11, !dbg !2292

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2294
  unreachable, !dbg !2294

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2295, !tbaa !820
  %13 = icmp sgt i32 %12, %0, !dbg !2296
  br i1 %13, label %32, label %14, !dbg !2297

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2298
  call void @llvm.dbg.value(metadata i1 %15, metadata !2280, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2299
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2300
  %16 = sext i32 %12 to i64, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %16, metadata !2283, metadata !DIExpression()), !dbg !2299
  store i64 %16, ptr %5, align 8, !dbg !2302, !tbaa !2219
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2303
  %18 = add nuw nsw i32 %0, 1, !dbg !2304
  %19 = sub i32 %18, %12, !dbg !2305
  %20 = sext i32 %19 to i64, !dbg !2306
  call void @llvm.dbg.value(metadata ptr %5, metadata !2283, metadata !DIExpression(DW_OP_deref)), !dbg !2299
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %21, metadata !2278, metadata !DIExpression()), !dbg !2289
  store ptr %21, ptr @slotvec, align 8, !dbg !2308, !tbaa !762
  br i1 %15, label %22, label %23, !dbg !2309

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2310, !tbaa.struct !2312
  br label %23, !dbg !2313

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2314, !tbaa !820
  %25 = sext i32 %24 to i64, !dbg !2315
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2315
  %27 = load i64, ptr %5, align 8, !dbg !2316, !tbaa !2219
  call void @llvm.dbg.value(metadata i64 %27, metadata !2283, metadata !DIExpression()), !dbg !2299
  %28 = sub nsw i64 %27, %25, !dbg !2317
  %29 = shl i64 %28, 4, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %26, metadata !1686, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !1689, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i64 %29, metadata !1690, metadata !DIExpression()), !dbg !2319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2321
  %30 = load i64, ptr %5, align 8, !dbg !2322, !tbaa !2219
  call void @llvm.dbg.value(metadata i64 %30, metadata !2283, metadata !DIExpression()), !dbg !2299
  %31 = trunc i64 %30 to i32, !dbg !2322
  store i32 %31, ptr @nslots, align 4, !dbg !2323, !tbaa !820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2324
  br label %32, !dbg !2325

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2289
  call void @llvm.dbg.value(metadata ptr %33, metadata !2278, metadata !DIExpression()), !dbg !2289
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2326
  %36 = load i64, ptr %35, align 8, !dbg !2327, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %36, metadata !2284, metadata !DIExpression()), !dbg !2328
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2329
  %38 = load ptr, ptr %37, align 8, !dbg !2329, !tbaa !2235
  call void @llvm.dbg.value(metadata ptr %38, metadata !2286, metadata !DIExpression()), !dbg !2328
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2330
  %40 = load i32, ptr %39, align 4, !dbg !2330, !tbaa !1529
  %41 = or i32 %40, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32 %41, metadata !2287, metadata !DIExpression()), !dbg !2328
  %42 = load i32, ptr %3, align 8, !dbg !2332, !tbaa !1479
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2333
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2334
  %45 = load ptr, ptr %44, align 8, !dbg !2334, !tbaa !1550
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2335
  %47 = load ptr, ptr %46, align 8, !dbg !2335, !tbaa !1553
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %48, metadata !2288, metadata !DIExpression()), !dbg !2328
  %49 = icmp ugt i64 %36, %48, !dbg !2337
  br i1 %49, label %60, label %50, !dbg !2339

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %51, metadata !2284, metadata !DIExpression()), !dbg !2328
  store i64 %51, ptr %35, align 8, !dbg !2342, !tbaa !2247
  %52 = icmp eq ptr %38, @slot0, !dbg !2343
  br i1 %52, label %54, label %53, !dbg !2345

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2346
  br label %54, !dbg !2346

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %55, metadata !2286, metadata !DIExpression()), !dbg !2328
  store ptr %55, ptr %37, align 8, !dbg !2348, !tbaa !2235
  %56 = load i32, ptr %3, align 8, !dbg !2349, !tbaa !1479
  %57 = load ptr, ptr %44, align 8, !dbg !2350, !tbaa !1550
  %58 = load ptr, ptr %46, align 8, !dbg !2351, !tbaa !1553
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2352
  br label %60, !dbg !2353

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2328
  call void @llvm.dbg.value(metadata ptr %61, metadata !2286, metadata !DIExpression()), !dbg !2328
  store i32 %7, ptr %6, align 4, !dbg !2354, !tbaa !820
  ret ptr %61, !dbg !2355
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr %1, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %2, metadata !2362, metadata !DIExpression()), !dbg !2363
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2364
  ret ptr %4, !dbg !2365
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2366 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 0, metadata !2264, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %0, metadata !2265, metadata !DIExpression()), !dbg !2370
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2372
  ret ptr %2, !dbg !2373
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2374 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %1, metadata !2379, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 0, metadata !2360, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata ptr %0, metadata !2361, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %1, metadata !2362, metadata !DIExpression()), !dbg !2381
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2383
  ret ptr %3, !dbg !2384
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2385 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2390, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %2, metadata !2391, metadata !DIExpression()), !dbg !2393
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2394
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2395
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396), !dbg !2399
  call void @llvm.dbg.value(metadata i32 %1, metadata !2400, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2408, !alias.scope !2396
  %5 = icmp eq i32 %1, 10, !dbg !2409
  br i1 %5, label %6, label %7, !dbg !2411

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2412, !noalias !2396
  unreachable, !dbg !2412

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2413, !tbaa !1479, !alias.scope !2396
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2414
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2415
  ret ptr %8, !dbg !2416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2417 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2421, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata ptr %2, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata i64 %3, metadata !2424, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2425, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %1, metadata !2400, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2405, metadata !DIExpression()), !dbg !2435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2435, !alias.scope !2429
  %6 = icmp eq i32 %1, 10, !dbg !2436
  br i1 %6, label %7, label %8, !dbg !2437

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2438, !noalias !2429
  unreachable, !dbg !2438

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2439, !tbaa !1479, !alias.scope !2429
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2440
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2441
  ret ptr %9, !dbg !2442
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2443 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2447, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata ptr %1, metadata !2448, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata ptr %1, metadata !2391, metadata !DIExpression()), !dbg !2450
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2392, metadata !DIExpression()), !dbg !2453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2405, metadata !DIExpression()), !dbg !2460
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2460, !alias.scope !2454
  %4 = icmp eq i32 %0, 10, !dbg !2461
  br i1 %4, label %5, label %6, !dbg !2462

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2463, !noalias !2454
  unreachable, !dbg !2463

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2464, !tbaa !1479, !alias.scope !2454
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2465
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2466
  ret ptr %7, !dbg !2467
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2468 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %1, metadata !2473, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i64 %2, metadata !2474, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2421, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %1, metadata !2423, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %2, metadata !2424, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2478
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2425, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2405, metadata !DIExpression()), !dbg !2486
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2486, !alias.scope !2480
  %5 = icmp eq i32 %0, 10, !dbg !2487
  br i1 %5, label %6, label %7, !dbg !2488

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2489, !noalias !2480
  unreachable, !dbg !2489

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2490, !tbaa !1479, !alias.scope !2480
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2491
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2492
  ret ptr %8, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2494 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8 %2, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2505, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %4, metadata !1496, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %2, metadata !1497, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8 %2, metadata !1499, metadata !DIExpression()), !dbg !2507
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2509
  %6 = lshr i8 %2, 5, !dbg !2510
  %7 = zext i8 %6 to i64, !dbg !2510
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %8, metadata !1500, metadata !DIExpression()), !dbg !2507
  %9 = and i8 %2, 31, !dbg !2512
  %10 = zext i8 %9 to i32, !dbg !2512
  call void @llvm.dbg.value(metadata i32 %10, metadata !1502, metadata !DIExpression()), !dbg !2507
  %11 = load i32, ptr %8, align 4, !dbg !2513, !tbaa !820
  %12 = lshr i32 %11, %10, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %12, metadata !1503, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2507
  %13 = and i32 %12, 1, !dbg !2515
  %14 = xor i32 %13, 1, !dbg !2515
  %15 = shl nuw i32 %14, %10, !dbg !2516
  %16 = xor i32 %15, %11, !dbg !2517
  store i32 %16, ptr %8, align 4, !dbg !2517, !tbaa !820
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2518
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2519
  ret ptr %17, !dbg !2520
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2521 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8 %1, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 -1, metadata !2499, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %1, metadata !2500, metadata !DIExpression()), !dbg !2528
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2530
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2501, metadata !DIExpression()), !dbg !2531
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2532, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %3, metadata !1496, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1499, metadata !DIExpression()), !dbg !2533
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2535
  %5 = lshr i8 %1, 5, !dbg !2536
  %6 = zext i8 %5 to i64, !dbg !2536
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %7, metadata !1500, metadata !DIExpression()), !dbg !2533
  %8 = and i8 %1, 31, !dbg !2538
  %9 = zext i8 %8 to i32, !dbg !2538
  call void @llvm.dbg.value(metadata i32 %9, metadata !1502, metadata !DIExpression()), !dbg !2533
  %10 = load i32, ptr %7, align 4, !dbg !2539, !tbaa !820
  %11 = lshr i32 %10, %9, !dbg !2540
  call void @llvm.dbg.value(metadata i32 %11, metadata !1503, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2533
  %12 = and i32 %11, 1, !dbg !2541
  %13 = xor i32 %12, 1, !dbg !2541
  %14 = shl nuw i32 %13, %9, !dbg !2542
  %15 = xor i32 %14, %10, !dbg !2543
  store i32 %15, ptr %7, align 4, !dbg !2543, !tbaa !820
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2544
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2545
  ret ptr %16, !dbg !2546
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2547 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2549, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %0, metadata !2525, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8 58, metadata !2526, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 -1, metadata !2499, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !2500, metadata !DIExpression()), !dbg !2553
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2501, metadata !DIExpression()), !dbg !2556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2557, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %2, metadata !1496, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1499, metadata !DIExpression()), !dbg !2558
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %3, metadata !1500, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 26, metadata !1502, metadata !DIExpression()), !dbg !2558
  %4 = load i32, ptr %3, align 4, !dbg !2561, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1503, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2558
  %5 = or i32 %4, 67108864, !dbg !2562
  store i32 %5, ptr %3, align 4, !dbg !2562, !tbaa !820
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2564
  ret ptr %6, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2566 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %0, metadata !2498, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2499, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 58, metadata !2500, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2501, metadata !DIExpression()), !dbg !2574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2575, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %3, metadata !1496, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1499, metadata !DIExpression()), !dbg !2576
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 26, metadata !1502, metadata !DIExpression()), !dbg !2576
  %5 = load i32, ptr %4, align 4, !dbg !2579, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1503, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2576
  %6 = or i32 %5, 67108864, !dbg !2580
  store i32 %6, ptr %4, align 4, !dbg !2580, !tbaa !820
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2582
  ret ptr %7, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2584 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2405, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2590
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %2, metadata !2588, metadata !DIExpression()), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2589, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 %1, metadata !2400, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2595
  %5 = icmp eq i32 %1, 10, !dbg !2596
  br i1 %5, label %6, label %7, !dbg !2597

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2598, !noalias !2599
  unreachable, !dbg !2598

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2405, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2595
  store i32 %1, ptr %4, align 8, !dbg !2602, !tbaa.struct !2506
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2602
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %4, metadata !1496, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 1, metadata !1498, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 58, metadata !1499, metadata !DIExpression()), !dbg !2603
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2605
  call void @llvm.dbg.value(metadata ptr %9, metadata !1500, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 26, metadata !1502, metadata !DIExpression()), !dbg !2603
  %10 = load i32, ptr %9, align 4, !dbg !2606, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %10, metadata !1503, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2603
  %11 = or i32 %10, 67108864, !dbg !2607
  store i32 %11, ptr %9, align 4, !dbg !2607, !tbaa !820
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2608
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2609
  ret ptr %12, !dbg !2610
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2611 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata ptr %3, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %3, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 -1, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2629, metadata !DIExpression()), !dbg !2633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2634, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %5, metadata !1536, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %1, metadata !1537, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %2, metadata !1538, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata ptr %5, metadata !1536, metadata !DIExpression()), !dbg !2635
  store i32 10, ptr %5, align 8, !dbg !2637, !tbaa !1479
  %6 = icmp ne ptr %1, null, !dbg !2638
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2639
  br i1 %8, label %10, label %9, !dbg !2639

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2640
  unreachable, !dbg !2640

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2641
  store ptr %1, ptr %11, align 8, !dbg !2642, !tbaa !1550
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2643
  store ptr %2, ptr %12, align 8, !dbg !2644, !tbaa !1553
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2645
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2646
  ret ptr %13, !dbg !2647
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2621 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2620, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %2, metadata !2626, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %3, metadata !2627, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i64 %4, metadata !2628, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2649
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2629, metadata !DIExpression()), !dbg !2650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2651, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %6, metadata !1536, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %1, metadata !1537, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %2, metadata !1538, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata ptr %6, metadata !1536, metadata !DIExpression()), !dbg !2652
  store i32 10, ptr %6, align 8, !dbg !2654, !tbaa !1479
  %7 = icmp ne ptr %1, null, !dbg !2655
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2656
  br i1 %9, label %11, label %10, !dbg !2656

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2657
  unreachable, !dbg !2657

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2658
  store ptr %1, ptr %12, align 8, !dbg !2659, !tbaa !1550
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2660
  store ptr %2, ptr %13, align 8, !dbg !2661, !tbaa !1553
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2663
  ret ptr %14, !dbg !2664
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2665 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2669, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !2670, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %2, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 0, metadata !2615, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %0, metadata !2625, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i64 -1, metadata !2628, metadata !DIExpression()), !dbg !2675
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2677
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2629, metadata !DIExpression()), !dbg !2678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2679, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %4, metadata !1536, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %0, metadata !1537, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %4, metadata !1536, metadata !DIExpression()), !dbg !2680
  store i32 10, ptr %4, align 8, !dbg !2682, !tbaa !1479
  %5 = icmp ne ptr %0, null, !dbg !2683
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2684
  br i1 %7, label %9, label %8, !dbg !2684

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2685
  unreachable, !dbg !2685

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2686
  store ptr %0, ptr %10, align 8, !dbg !2687, !tbaa !1550
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2688
  store ptr %1, ptr %11, align 8, !dbg !2689, !tbaa !1553
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2690
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2691
  ret ptr %12, !dbg !2692
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2693 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2697, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %2, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %3, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 0, metadata !2620, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %0, metadata !2625, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %3, metadata !2628, metadata !DIExpression()), !dbg !2702
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2704
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2629, metadata !DIExpression()), !dbg !2705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2706, !tbaa.struct !2506
  call void @llvm.dbg.value(metadata ptr %5, metadata !1536, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %0, metadata !1537, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata ptr %5, metadata !1536, metadata !DIExpression()), !dbg !2707
  store i32 10, ptr %5, align 8, !dbg !2709, !tbaa !1479
  %6 = icmp ne ptr %0, null, !dbg !2710
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2711
  br i1 %8, label %10, label %9, !dbg !2711

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2712
  unreachable, !dbg !2712

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2713
  store ptr %0, ptr %11, align 8, !dbg !2714, !tbaa !1550
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2715
  store ptr %1, ptr %12, align 8, !dbg !2716, !tbaa !1553
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2717
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2718
  ret ptr %13, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2720 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %2, metadata !2726, metadata !DIExpression()), !dbg !2727
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2728
  ret ptr %4, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2730 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %1, metadata !2735, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()), !dbg !2737
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2739
  ret ptr %3, !dbg !2740
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata ptr %1, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i64 -1, metadata !2726, metadata !DIExpression()), !dbg !2748
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2750
  ret ptr %3, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i32 0, metadata !2745, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 -1, metadata !2726, metadata !DIExpression()), !dbg !2760
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2762
  ret ptr %2, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2764 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2803, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %1, metadata !2804, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %2, metadata !2805, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %3, metadata !2806, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata ptr %4, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %5, metadata !2808, metadata !DIExpression()), !dbg !2809
  %7 = icmp eq ptr %1, null, !dbg !2810
  br i1 %7, label %10, label %8, !dbg !2812

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2813
  br label %12, !dbg !2813

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.70, ptr noundef %2, ptr noundef %3) #36, !dbg !2814
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.3.72, i32 noundef 5) #36, !dbg !2815
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2815
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2816
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.5.74, i32 noundef 5) #36, !dbg !2817
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.75) #36, !dbg !2817
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %0), !dbg !2818
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
  ], !dbg !2819

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.7.76, i32 noundef 5) #36, !dbg !2820
  %21 = load ptr, ptr %4, align 8, !dbg !2820, !tbaa !762
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2820
  br label %147, !dbg !2822

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.8.77, i32 noundef 5) #36, !dbg !2823
  %25 = load ptr, ptr %4, align 8, !dbg !2823, !tbaa !762
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2823
  %27 = load ptr, ptr %26, align 8, !dbg !2823, !tbaa !762
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2823
  br label %147, !dbg !2824

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.9.78, i32 noundef 5) #36, !dbg !2825
  %31 = load ptr, ptr %4, align 8, !dbg !2825, !tbaa !762
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2825
  %33 = load ptr, ptr %32, align 8, !dbg !2825, !tbaa !762
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2825
  %35 = load ptr, ptr %34, align 8, !dbg !2825, !tbaa !762
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2825
  br label %147, !dbg !2826

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.10.79, i32 noundef 5) #36, !dbg !2827
  %39 = load ptr, ptr %4, align 8, !dbg !2827, !tbaa !762
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2827
  %41 = load ptr, ptr %40, align 8, !dbg !2827, !tbaa !762
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2827
  %43 = load ptr, ptr %42, align 8, !dbg !2827, !tbaa !762
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2827
  %45 = load ptr, ptr %44, align 8, !dbg !2827, !tbaa !762
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2827
  br label %147, !dbg !2828

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.11.80, i32 noundef 5) #36, !dbg !2829
  %49 = load ptr, ptr %4, align 8, !dbg !2829, !tbaa !762
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2829
  %51 = load ptr, ptr %50, align 8, !dbg !2829, !tbaa !762
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2829
  %53 = load ptr, ptr %52, align 8, !dbg !2829, !tbaa !762
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2829
  %55 = load ptr, ptr %54, align 8, !dbg !2829, !tbaa !762
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2829
  %57 = load ptr, ptr %56, align 8, !dbg !2829, !tbaa !762
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2829
  br label %147, !dbg !2830

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.12.81, i32 noundef 5) #36, !dbg !2831
  %61 = load ptr, ptr %4, align 8, !dbg !2831, !tbaa !762
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2831
  %63 = load ptr, ptr %62, align 8, !dbg !2831, !tbaa !762
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2831
  %65 = load ptr, ptr %64, align 8, !dbg !2831, !tbaa !762
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2831
  %67 = load ptr, ptr %66, align 8, !dbg !2831, !tbaa !762
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2831
  %69 = load ptr, ptr %68, align 8, !dbg !2831, !tbaa !762
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2831
  %71 = load ptr, ptr %70, align 8, !dbg !2831, !tbaa !762
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2831
  br label %147, !dbg !2832

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.13.82, i32 noundef 5) #36, !dbg !2833
  %75 = load ptr, ptr %4, align 8, !dbg !2833, !tbaa !762
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2833
  %77 = load ptr, ptr %76, align 8, !dbg !2833, !tbaa !762
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2833
  %79 = load ptr, ptr %78, align 8, !dbg !2833, !tbaa !762
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2833
  %81 = load ptr, ptr %80, align 8, !dbg !2833, !tbaa !762
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2833
  %83 = load ptr, ptr %82, align 8, !dbg !2833, !tbaa !762
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2833
  %85 = load ptr, ptr %84, align 8, !dbg !2833, !tbaa !762
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2833
  %87 = load ptr, ptr %86, align 8, !dbg !2833, !tbaa !762
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2833
  br label %147, !dbg !2834

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.14.83, i32 noundef 5) #36, !dbg !2835
  %91 = load ptr, ptr %4, align 8, !dbg !2835, !tbaa !762
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2835
  %93 = load ptr, ptr %92, align 8, !dbg !2835, !tbaa !762
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2835
  %95 = load ptr, ptr %94, align 8, !dbg !2835, !tbaa !762
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2835
  %97 = load ptr, ptr %96, align 8, !dbg !2835, !tbaa !762
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2835
  %99 = load ptr, ptr %98, align 8, !dbg !2835, !tbaa !762
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2835
  %101 = load ptr, ptr %100, align 8, !dbg !2835, !tbaa !762
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2835
  %103 = load ptr, ptr %102, align 8, !dbg !2835, !tbaa !762
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2835
  %105 = load ptr, ptr %104, align 8, !dbg !2835, !tbaa !762
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2835
  br label %147, !dbg !2836

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.15.84, i32 noundef 5) #36, !dbg !2837
  %109 = load ptr, ptr %4, align 8, !dbg !2837, !tbaa !762
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2837
  %111 = load ptr, ptr %110, align 8, !dbg !2837, !tbaa !762
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2837
  %113 = load ptr, ptr %112, align 8, !dbg !2837, !tbaa !762
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2837
  %115 = load ptr, ptr %114, align 8, !dbg !2837, !tbaa !762
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2837
  %117 = load ptr, ptr %116, align 8, !dbg !2837, !tbaa !762
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2837
  %119 = load ptr, ptr %118, align 8, !dbg !2837, !tbaa !762
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2837
  %121 = load ptr, ptr %120, align 8, !dbg !2837, !tbaa !762
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2837
  %123 = load ptr, ptr %122, align 8, !dbg !2837, !tbaa !762
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2837
  %125 = load ptr, ptr %124, align 8, !dbg !2837, !tbaa !762
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2837
  br label %147, !dbg !2838

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.16.85, i32 noundef 5) #36, !dbg !2839
  %129 = load ptr, ptr %4, align 8, !dbg !2839, !tbaa !762
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2839
  %131 = load ptr, ptr %130, align 8, !dbg !2839, !tbaa !762
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2839
  %133 = load ptr, ptr %132, align 8, !dbg !2839, !tbaa !762
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2839
  %135 = load ptr, ptr %134, align 8, !dbg !2839, !tbaa !762
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2839
  %137 = load ptr, ptr %136, align 8, !dbg !2839, !tbaa !762
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2839
  %139 = load ptr, ptr %138, align 8, !dbg !2839, !tbaa !762
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2839
  %141 = load ptr, ptr %140, align 8, !dbg !2839, !tbaa !762
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2839
  %143 = load ptr, ptr %142, align 8, !dbg !2839, !tbaa !762
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2839
  %145 = load ptr, ptr %144, align 8, !dbg !2839, !tbaa !762
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2839
  br label %147, !dbg !2840

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2841
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2842 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2846, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %1, metadata !2847, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %2, metadata !2848, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %3, metadata !2849, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata ptr %4, metadata !2850, metadata !DIExpression()), !dbg !2852
  call void @llvm.dbg.value(metadata i64 0, metadata !2851, metadata !DIExpression()), !dbg !2852
  br label %6, !dbg !2853

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2855
  call void @llvm.dbg.value(metadata i64 %7, metadata !2851, metadata !DIExpression()), !dbg !2852
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2856
  %9 = load ptr, ptr %8, align 8, !dbg !2856, !tbaa !762
  %10 = icmp eq ptr %9, null, !dbg !2858
  %11 = add i64 %7, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %11, metadata !2851, metadata !DIExpression()), !dbg !2852
  br i1 %10, label %12, label %6, !dbg !2858, !llvm.loop !2860

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2862
  ret void, !dbg !2863
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2864 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %2, metadata !2878, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %3, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %4, metadata !2880, metadata !DIExpression()), !dbg !2884
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2885
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2882, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2884
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2884
  %10 = icmp ult i32 %9, 41, !dbg !2887
  br i1 %10, label %11, label %16, !dbg !2887

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2887
  %13 = zext i32 %9 to i64, !dbg !2887
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2887
  %15 = add nuw nsw i32 %9, 8, !dbg !2887
  store i32 %15, ptr %4, align 8, !dbg !2887
  br label %19, !dbg !2887

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2887
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2887
  store ptr %18, ptr %7, align 8, !dbg !2887
  br label %19, !dbg !2887

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2887
  %22 = load ptr, ptr %21, align 8, !dbg !2887
  store ptr %22, ptr %6, align 16, !dbg !2890, !tbaa !762
  %23 = icmp eq ptr %22, null, !dbg !2891
  br i1 %23, label %128, label %24, !dbg !2892

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 1, metadata !2881, metadata !DIExpression()), !dbg !2884
  %25 = icmp ult i32 %20, 41, !dbg !2887
  br i1 %25, label %29, label %26, !dbg !2887

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2887
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2887
  store ptr %28, ptr %7, align 8, !dbg !2887
  br label %34, !dbg !2887

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2887
  %31 = zext i32 %20 to i64, !dbg !2887
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2887
  %33 = add nuw nsw i32 %20, 8, !dbg !2887
  store i32 %33, ptr %4, align 8, !dbg !2887
  br label %34, !dbg !2887

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2887
  %37 = load ptr, ptr %36, align 8, !dbg !2887
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2893
  store ptr %37, ptr %38, align 8, !dbg !2890, !tbaa !762
  %39 = icmp eq ptr %37, null, !dbg !2891
  br i1 %39, label %128, label %40, !dbg !2892

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 2, metadata !2881, metadata !DIExpression()), !dbg !2884
  %41 = icmp ult i32 %35, 41, !dbg !2887
  br i1 %41, label %45, label %42, !dbg !2887

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2887
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2887
  store ptr %44, ptr %7, align 8, !dbg !2887
  br label %50, !dbg !2887

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2887
  %47 = zext i32 %35 to i64, !dbg !2887
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2887
  %49 = add nuw nsw i32 %35, 8, !dbg !2887
  store i32 %49, ptr %4, align 8, !dbg !2887
  br label %50, !dbg !2887

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2887
  %53 = load ptr, ptr %52, align 8, !dbg !2887
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2893
  store ptr %53, ptr %54, align 16, !dbg !2890, !tbaa !762
  %55 = icmp eq ptr %53, null, !dbg !2891
  br i1 %55, label %128, label %56, !dbg !2892

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 3, metadata !2881, metadata !DIExpression()), !dbg !2884
  %57 = icmp ult i32 %51, 41, !dbg !2887
  br i1 %57, label %61, label %58, !dbg !2887

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2887
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2887
  store ptr %60, ptr %7, align 8, !dbg !2887
  br label %66, !dbg !2887

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2887
  %63 = zext i32 %51 to i64, !dbg !2887
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2887
  %65 = add nuw nsw i32 %51, 8, !dbg !2887
  store i32 %65, ptr %4, align 8, !dbg !2887
  br label %66, !dbg !2887

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2887
  %69 = load ptr, ptr %68, align 8, !dbg !2887
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2893
  store ptr %69, ptr %70, align 8, !dbg !2890, !tbaa !762
  %71 = icmp eq ptr %69, null, !dbg !2891
  br i1 %71, label %128, label %72, !dbg !2892

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 4, metadata !2881, metadata !DIExpression()), !dbg !2884
  %73 = icmp ult i32 %67, 41, !dbg !2887
  br i1 %73, label %77, label %74, !dbg !2887

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2887
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2887
  store ptr %76, ptr %7, align 8, !dbg !2887
  br label %82, !dbg !2887

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2887
  %79 = zext i32 %67 to i64, !dbg !2887
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2887
  %81 = add nuw nsw i32 %67, 8, !dbg !2887
  store i32 %81, ptr %4, align 8, !dbg !2887
  br label %82, !dbg !2887

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2887
  %85 = load ptr, ptr %84, align 8, !dbg !2887
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2893
  store ptr %85, ptr %86, align 16, !dbg !2890, !tbaa !762
  %87 = icmp eq ptr %85, null, !dbg !2891
  br i1 %87, label %128, label %88, !dbg !2892

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 5, metadata !2881, metadata !DIExpression()), !dbg !2884
  %89 = icmp ult i32 %83, 41, !dbg !2887
  br i1 %89, label %93, label %90, !dbg !2887

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2887
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2887
  store ptr %92, ptr %7, align 8, !dbg !2887
  br label %98, !dbg !2887

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2887
  %95 = zext i32 %83 to i64, !dbg !2887
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2887
  %97 = add nuw nsw i32 %83, 8, !dbg !2887
  store i32 %97, ptr %4, align 8, !dbg !2887
  br label %98, !dbg !2887

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2887
  %100 = load ptr, ptr %99, align 8, !dbg !2887
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2893
  store ptr %100, ptr %101, align 8, !dbg !2890, !tbaa !762
  %102 = icmp eq ptr %100, null, !dbg !2891
  br i1 %102, label %128, label %103, !dbg !2892

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2881, metadata !DIExpression()), !dbg !2884
  %104 = load ptr, ptr %7, align 8, !dbg !2887
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2887
  store ptr %105, ptr %7, align 8, !dbg !2887
  %106 = load ptr, ptr %104, align 8, !dbg !2887
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2893
  store ptr %106, ptr %107, align 16, !dbg !2890, !tbaa !762
  %108 = icmp eq ptr %106, null, !dbg !2891
  br i1 %108, label %128, label %109, !dbg !2892

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2881, metadata !DIExpression()), !dbg !2884
  %110 = load ptr, ptr %7, align 8, !dbg !2887
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2887
  store ptr %111, ptr %7, align 8, !dbg !2887
  %112 = load ptr, ptr %110, align 8, !dbg !2887
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2893
  store ptr %112, ptr %113, align 8, !dbg !2890, !tbaa !762
  %114 = icmp eq ptr %112, null, !dbg !2891
  br i1 %114, label %128, label %115, !dbg !2892

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2881, metadata !DIExpression()), !dbg !2884
  %116 = load ptr, ptr %7, align 8, !dbg !2887
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2887
  store ptr %117, ptr %7, align 8, !dbg !2887
  %118 = load ptr, ptr %116, align 8, !dbg !2887
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2893
  store ptr %118, ptr %119, align 16, !dbg !2890, !tbaa !762
  %120 = icmp eq ptr %118, null, !dbg !2891
  br i1 %120, label %128, label %121, !dbg !2892

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2881, metadata !DIExpression()), !dbg !2884
  %122 = load ptr, ptr %7, align 8, !dbg !2887
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2887
  store ptr %123, ptr %7, align 8, !dbg !2887
  %124 = load ptr, ptr %122, align 8, !dbg !2887
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2893
  store ptr %124, ptr %125, align 8, !dbg !2890, !tbaa !762
  %126 = icmp eq ptr %124, null, !dbg !2891
  %127 = select i1 %126, i64 9, i64 10, !dbg !2892
  br label %128, !dbg !2892

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2894
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2895
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2896
  ret void, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2897 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %2, metadata !2903, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %3, metadata !2904, metadata !DIExpression()), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2911
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2905, metadata !DIExpression()), !dbg !2912
  call void @llvm.va_start(ptr nonnull %5), !dbg !2913
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2914
  call void @llvm.va_end(ptr nonnull %5), !dbg !2915
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2916
  ret void, !dbg !2916
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2917 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2918, !tbaa !762
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.73, ptr noundef %1), !dbg !2918
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.17.90, i32 noundef 5) #36, !dbg !2919
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.91) #36, !dbg !2919
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.19.92, i32 noundef 5) #36, !dbg !2920
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2920
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.71, ptr noundef nonnull @.str.22.93, i32 noundef 5) #36, !dbg !2921
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2921
  ret void, !dbg !2922
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2923 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2928, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %2, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i64 %2, metadata !2936, metadata !DIExpression()), !dbg !2937
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2939
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2945
  %5 = icmp eq ptr %4, null, !dbg !2947
  br i1 %5, label %6, label %7, !dbg !2949

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2950
  unreachable, !dbg !2950

7:                                                ; preds = %3
  ret ptr %4, !dbg !2951
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2933 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %1, metadata !2935, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i64 %2, metadata !2936, metadata !DIExpression()), !dbg !2952
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2953
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2954
  %5 = icmp eq ptr %4, null, !dbg !2956
  br i1 %5, label %6, label %7, !dbg !2957

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2958
  unreachable, !dbg !2958

7:                                                ; preds = %3
  ret ptr %4, !dbg !2959
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2960 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2964, metadata !DIExpression()), !dbg !2965
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !2967
  %3 = icmp eq ptr %2, null, !dbg !2969
  br i1 %3, label %4, label %5, !dbg !2970

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2971
  unreachable, !dbg !2971

5:                                                ; preds = %1
  ret ptr %2, !dbg !2972
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2973 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2974 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2978, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64 %0, metadata !2980, metadata !DIExpression()), !dbg !2984
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2986
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !2987
  %3 = icmp eq ptr %2, null, !dbg !2989
  br i1 %3, label %4, label %5, !dbg !2990

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2991
  unreachable, !dbg !2991

5:                                                ; preds = %1
  ret ptr %2, !dbg !2992
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2993 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %0, metadata !2964, metadata !DIExpression()), !dbg !2999
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3001
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !3002
  %3 = icmp eq ptr %2, null, !dbg !3004
  br i1 %3, label %4, label %5, !dbg !3005

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3006
  unreachable, !dbg !3006

5:                                                ; preds = %1
  ret ptr %2, !dbg !3007
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3008 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()), !dbg !3020
  %3 = icmp eq i64 %1, 0, !dbg !3022
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3022
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3023
  call void @llvm.dbg.value(metadata ptr %5, metadata !2940, metadata !DIExpression()), !dbg !3024
  %6 = icmp eq ptr %5, null, !dbg !3026
  br i1 %6, label %7, label %8, !dbg !3027

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3028
  unreachable, !dbg !3028

8:                                                ; preds = %2
  ret ptr %5, !dbg !3029
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3030 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 %1, metadata !3041, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()), !dbg !3044
  %3 = icmp eq i64 %1, 0, !dbg !3046
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3046
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %5, metadata !2940, metadata !DIExpression()), !dbg !3048
  %6 = icmp eq ptr %5, null, !dbg !3050
  br i1 %6, label %7, label %8, !dbg !3051

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3052
  unreachable, !dbg !3052

8:                                                ; preds = %2
  ret ptr %5, !dbg !3053
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3054 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %2, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %1, metadata !3065, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %2, metadata !3066, metadata !DIExpression()), !dbg !3067
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !3070
  %5 = icmp eq ptr %4, null, !dbg !3072
  br i1 %5, label %6, label %7, !dbg !3073

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3074
  unreachable, !dbg !3074

7:                                                ; preds = %3
  ret ptr %4, !dbg !3075
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3076 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3081, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata ptr null, metadata !2932, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %0, metadata !2935, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !3083
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3086
  %4 = icmp eq ptr %3, null, !dbg !3088
  br i1 %4, label %5, label %6, !dbg !3089

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3090
  unreachable, !dbg !3090

6:                                                ; preds = %2
  ret ptr %3, !dbg !3091
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3092 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr null, metadata !3058, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %0, metadata !3059, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr null, metadata !3062, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %0, metadata !3065, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3101
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3103
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3104
  %4 = icmp eq ptr %3, null, !dbg !3106
  br i1 %4, label %5, label %6, !dbg !3107

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3108
  unreachable, !dbg !3108

6:                                                ; preds = %2
  ret ptr %3, !dbg !3109
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3110 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %1, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 1, metadata !700, metadata !DIExpression()), !dbg !3117
  %3 = load i64, ptr %1, align 8, !dbg !3119, !tbaa !2219
  call void @llvm.dbg.value(metadata i64 %3, metadata !701, metadata !DIExpression()), !dbg !3117
  %4 = icmp eq ptr %0, null, !dbg !3120
  br i1 %4, label %5, label %8, !dbg !3122

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3123
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3126
  br label %15, !dbg !3126

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3127
  %10 = add nuw i64 %9, 1, !dbg !3127
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3127
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3127
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %13, metadata !701, metadata !DIExpression()), !dbg !3117
  br i1 %12, label %14, label %15, !dbg !3130

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3131
  unreachable, !dbg !3131

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3117
  call void @llvm.dbg.value(metadata i64 %16, metadata !701, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %16, metadata !2935, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 1, metadata !2936, metadata !DIExpression()), !dbg !3132
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %17, metadata !2940, metadata !DIExpression()), !dbg !3135
  %18 = icmp eq ptr %17, null, !dbg !3137
  br i1 %18, label %19, label %20, !dbg !3138

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3139
  unreachable, !dbg !3139

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !698, metadata !DIExpression()), !dbg !3117
  store i64 %16, ptr %1, align 8, !dbg !3140, !tbaa !2219
  ret ptr %17, !dbg !3141
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !693 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %2, metadata !700, metadata !DIExpression()), !dbg !3142
  %4 = load i64, ptr %1, align 8, !dbg !3143, !tbaa !2219
  call void @llvm.dbg.value(metadata i64 %4, metadata !701, metadata !DIExpression()), !dbg !3142
  %5 = icmp eq ptr %0, null, !dbg !3144
  br i1 %5, label %6, label %13, !dbg !3145

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3146
  br i1 %7, label %8, label %20, !dbg !3147

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %9, metadata !701, metadata !DIExpression()), !dbg !3142
  %10 = icmp ugt i64 %2, 128, !dbg !3150
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %12, metadata !701, metadata !DIExpression()), !dbg !3142
  br label %20, !dbg !3152

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3153
  %15 = add nuw i64 %14, 1, !dbg !3153
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3153
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3153
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %18, metadata !701, metadata !DIExpression()), !dbg !3142
  br i1 %17, label %19, label %20, !dbg !3154

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3155
  unreachable, !dbg !3155

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3142
  call void @llvm.dbg.value(metadata i64 %21, metadata !701, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %21, metadata !2935, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %2, metadata !2936, metadata !DIExpression()), !dbg !3156
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %22, metadata !2940, metadata !DIExpression()), !dbg !3159
  %23 = icmp eq ptr %22, null, !dbg !3161
  br i1 %23, label %24, label %25, !dbg !3162

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3163
  unreachable, !dbg !3163

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !698, metadata !DIExpression()), !dbg !3142
  store i64 %21, ptr %1, align 8, !dbg !3164, !tbaa !2219
  ret ptr %22, !dbg !3165
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !705 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !713, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata ptr %1, metadata !714, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %2, metadata !715, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %3, metadata !716, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %4, metadata !717, metadata !DIExpression()), !dbg !3166
  %6 = load i64, ptr %1, align 8, !dbg !3167, !tbaa !2219
  call void @llvm.dbg.value(metadata i64 %6, metadata !718, metadata !DIExpression()), !dbg !3166
  %7 = ashr i64 %6, 1, !dbg !3168
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3168
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3168
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %10, metadata !719, metadata !DIExpression()), !dbg !3166
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %11, metadata !719, metadata !DIExpression()), !dbg !3166
  %12 = icmp sgt i64 %3, -1, !dbg !3171
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3173
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %15, metadata !719, metadata !DIExpression()), !dbg !3166
  %16 = icmp slt i64 %4, 0, !dbg !3174
  br i1 %16, label %17, label %30, !dbg !3174

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3174
  br i1 %18, label %19, label %24, !dbg !3174

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3174
  %21 = udiv i64 9223372036854775807, %20, !dbg !3174
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3174
  br i1 %23, label %46, label %43, !dbg !3174

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3174
  br i1 %25, label %43, label %26, !dbg !3174

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3174
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3174
  %29 = icmp ult i64 %28, %15, !dbg !3174
  br i1 %29, label %46, label %43, !dbg !3174

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3174
  br i1 %31, label %43, label %32, !dbg !3174

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3174
  br i1 %33, label %34, label %40, !dbg !3174

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3174
  br i1 %35, label %43, label %36, !dbg !3174

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3174
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3174
  %39 = icmp ult i64 %38, %4, !dbg !3174
  br i1 %39, label %46, label %43, !dbg !3174

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3174
  br i1 %42, label %46, label %43, !dbg !3174

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !720, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3166
  %44 = mul i64 %15, %4, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %44, metadata !720, metadata !DIExpression()), !dbg !3166
  %45 = icmp slt i64 %44, 128, !dbg !3174
  br i1 %45, label %46, label %51, !dbg !3174

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !721, metadata !DIExpression()), !dbg !3166
  %48 = sdiv i64 %47, %4, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %48, metadata !719, metadata !DIExpression()), !dbg !3166
  %49 = srem i64 %47, %4, !dbg !3178
  %50 = sub nsw i64 %47, %49, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %50, metadata !720, metadata !DIExpression()), !dbg !3166
  br label %51, !dbg !3180

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3166
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3166
  call void @llvm.dbg.value(metadata i64 %53, metadata !720, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %52, metadata !719, metadata !DIExpression()), !dbg !3166
  %54 = icmp eq ptr %0, null, !dbg !3181
  br i1 %54, label %55, label %56, !dbg !3183

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3184, !tbaa !2219
  br label %56, !dbg !3185

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3186
  %58 = icmp slt i64 %57, %2, !dbg !3188
  br i1 %58, label %59, label %96, !dbg !3189

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3190
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3190
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3190
  call void @llvm.dbg.value(metadata i64 %62, metadata !719, metadata !DIExpression()), !dbg !3166
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3191
  br i1 %65, label %95, label %66, !dbg !3191

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3192

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3192
  br i1 %68, label %69, label %74, !dbg !3192

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3192
  %71 = udiv i64 9223372036854775807, %70, !dbg !3192
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3192
  br i1 %73, label %95, label %93, !dbg !3192

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3192
  br i1 %75, label %93, label %76, !dbg !3192

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3192
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3192
  %79 = icmp ult i64 %78, %62, !dbg !3192
  br i1 %79, label %95, label %93, !dbg !3192

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3192
  br i1 %81, label %93, label %82, !dbg !3192

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3192
  br i1 %83, label %84, label %90, !dbg !3192

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3192
  br i1 %85, label %93, label %86, !dbg !3192

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3192
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3192
  %89 = icmp ult i64 %88, %4, !dbg !3192
  br i1 %89, label %95, label %93, !dbg !3192

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3192
  br i1 %92, label %95, label %93, !dbg !3192

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !720, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3166
  %94 = mul i64 %62, %4, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %94, metadata !720, metadata !DIExpression()), !dbg !3166
  br label %96, !dbg !3193

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3194
  unreachable, !dbg !3194

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3166
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3166
  call void @llvm.dbg.value(metadata i64 %98, metadata !720, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i64 %97, metadata !719, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %98, metadata !3013, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %0, metadata !3015, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %98, metadata !3019, metadata !DIExpression()), !dbg !3197
  %99 = icmp eq i64 %98, 0, !dbg !3199
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3199
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3200
  call void @llvm.dbg.value(metadata ptr %101, metadata !2940, metadata !DIExpression()), !dbg !3201
  %102 = icmp eq ptr %101, null, !dbg !3203
  br i1 %102, label %103, label %104, !dbg !3204

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3205
  unreachable, !dbg !3205

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !713, metadata !DIExpression()), !dbg !3166
  store i64 %97, ptr %1, align 8, !dbg !3206, !tbaa !2219
  ret ptr %101, !dbg !3207
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3208 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3210, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64 %0, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 1, metadata !3215, metadata !DIExpression()), !dbg !3216
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !3219
  %3 = icmp eq ptr %2, null, !dbg !3221
  br i1 %3, label %4, label %5, !dbg !3222

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3223
  unreachable, !dbg !3223

5:                                                ; preds = %1
  ret ptr %2, !dbg !3224
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3225 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3213 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3212, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %1, metadata !3215, metadata !DIExpression()), !dbg !3226
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3227
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3228
  %4 = icmp eq ptr %3, null, !dbg !3230
  br i1 %4, label %5, label %6, !dbg !3231

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3232
  unreachable, !dbg !3232

6:                                                ; preds = %2
  ret ptr %3, !dbg !3233
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i64 %0, metadata !3238, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 1, metadata !3241, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()), !dbg !3248
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %2, metadata !2940, metadata !DIExpression()), !dbg !3251
  %3 = icmp eq ptr %2, null, !dbg !3253
  br i1 %3, label %4, label %5, !dbg !3254

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3255
  unreachable, !dbg !3255

5:                                                ; preds = %1
  ret ptr %2, !dbg !3256
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3239 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3238, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3241, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3258
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3261
  %4 = icmp eq ptr %3, null, !dbg !3263
  br i1 %4, label %5, label %6, !dbg !3264

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3265
  unreachable, !dbg !3265

6:                                                ; preds = %2
  ret ptr %3, !dbg !3266
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3267 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !3274
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3277
  %4 = icmp eq ptr %3, null, !dbg !3279
  br i1 %4, label %5, label %6, !dbg !3280

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3281
  unreachable, !dbg !3281

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3290
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3292
  ret ptr %3, !dbg !3293
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3294 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %1, metadata !2978, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !2980, metadata !DIExpression()), !dbg !3303
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3305
  call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !3306
  %4 = icmp eq ptr %3, null, !dbg !3308
  br i1 %4, label %5, label %6, !dbg !3309

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3310
  unreachable, !dbg !3310

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3282, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3313
  ret ptr %3, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3315 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3322
  %3 = add nsw i64 %1, 1, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !2978, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i64 %3, metadata !2980, metadata !DIExpression()), !dbg !3326
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3328
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !3329
  %5 = icmp eq ptr %4, null, !dbg !3331
  br i1 %5, label %6, label %7, !dbg !3332

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3333
  unreachable, !dbg !3333

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3321, metadata !DIExpression()), !dbg !3322
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3334
  store i8 0, ptr %8, align 1, !dbg !3335, !tbaa !829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3336
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3338
  ret ptr %4, !dbg !3339
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3340 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3343
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3344
  %3 = add i64 %2, 1, !dbg !3345
  call void @llvm.dbg.value(metadata ptr %0, metadata !3271, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %3, metadata !3272, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %3, metadata !2964, metadata !DIExpression()), !dbg !3348
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3350
  call void @llvm.dbg.value(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !3351
  %5 = icmp eq ptr %4, null, !dbg !3353
  br i1 %5, label %6, label %7, !dbg !3354

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3355
  unreachable, !dbg !3355

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3282, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3289, metadata !DIExpression()), !dbg !3356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3358
  ret ptr %4, !dbg !3359
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3360 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3365, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %1, metadata !3362, metadata !DIExpression()), !dbg !3366
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.104, ptr noundef nonnull @.str.2.105, i32 noundef 5) #36, !dbg !3365
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.106, ptr noundef %2) #36, !dbg !3365
  %3 = icmp eq i32 %1, 0, !dbg !3365
  tail call void @llvm.assume(i1 %3), !dbg !3365
  tail call void @abort() #38, !dbg !3367
  unreachable, !dbg !3367
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3368 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3406, metadata !DIExpression()), !dbg !3411
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3412
  call void @llvm.dbg.value(metadata i1 poison, metadata !3407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3411
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3416
  %3 = load i32, ptr %0, align 8, !dbg !3418, !tbaa !3419
  %4 = and i32 %3, 32, !dbg !3420
  %5 = icmp eq i32 %4, 0, !dbg !3420
  call void @llvm.dbg.value(metadata i1 %5, metadata !3409, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3411
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3421
  %7 = icmp eq i32 %6, 0, !dbg !3422
  call void @llvm.dbg.value(metadata i1 %7, metadata !3410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3411
  br i1 %5, label %8, label %18, !dbg !3423

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3425
  call void @llvm.dbg.value(metadata i1 %9, metadata !3407, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3411
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3426
  %11 = xor i1 %7, true, !dbg !3426
  %12 = sext i1 %11 to i32, !dbg !3426
  br i1 %10, label %21, label %13, !dbg !3426

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3427
  %15 = load i32, ptr %14, align 4, !dbg !3427, !tbaa !820
  %16 = icmp ne i32 %15, 9, !dbg !3428
  %17 = sext i1 %16 to i32, !dbg !3429
  br label %21, !dbg !3429

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3430

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3432
  store i32 0, ptr %20, align 4, !dbg !3434, !tbaa !820
  br label %21, !dbg !3432

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3411
  ret i32 %22, !dbg !3435
}

; Function Attrs: nounwind
declare !dbg !3436 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3440 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3478, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()), !dbg !3482
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3483
  call void @llvm.dbg.value(metadata i32 %2, metadata !3480, metadata !DIExpression()), !dbg !3482
  %3 = icmp slt i32 %2, 0, !dbg !3484
  br i1 %3, label %4, label %6, !dbg !3486

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3487
  br label %24, !dbg !3488

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3489
  %8 = icmp eq i32 %7, 0, !dbg !3489
  br i1 %8, label %13, label %9, !dbg !3491

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3492
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3493
  %12 = icmp eq i64 %11, -1, !dbg !3494
  br i1 %12, label %16, label %13, !dbg !3495

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3496
  %15 = icmp eq i32 %14, 0, !dbg !3496
  br i1 %15, label %16, label %18, !dbg !3497

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3479, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()), !dbg !3482
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3498
  call void @llvm.dbg.value(metadata i32 %17, metadata !3481, metadata !DIExpression()), !dbg !3482
  br label %24, !dbg !3499

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3500
  %20 = load i32, ptr %19, align 4, !dbg !3500, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %20, metadata !3479, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()), !dbg !3482
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3498
  call void @llvm.dbg.value(metadata i32 %21, metadata !3481, metadata !DIExpression()), !dbg !3482
  %22 = icmp eq i32 %20, 0, !dbg !3501
  br i1 %22, label %24, label %23, !dbg !3499

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3503, !tbaa !820
  call void @llvm.dbg.value(metadata i32 -1, metadata !3481, metadata !DIExpression()), !dbg !3482
  br label %24, !dbg !3505

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3482
  ret i32 %25, !dbg !3506
}

; Function Attrs: nofree nounwind
declare !dbg !3507 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3508 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3509 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3510 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3513 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3551, metadata !DIExpression()), !dbg !3552
  %2 = icmp eq ptr %0, null, !dbg !3553
  br i1 %2, label %6, label %3, !dbg !3555

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3556
  %5 = icmp eq i32 %4, 0, !dbg !3556
  br i1 %5, label %6, label %8, !dbg !3557

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3558
  br label %16, !dbg !3559

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3560, metadata !DIExpression()), !dbg !3565
  %9 = load i32, ptr %0, align 8, !dbg !3567, !tbaa !3419
  %10 = and i32 %9, 256, !dbg !3569
  %11 = icmp eq i32 %10, 0, !dbg !3569
  br i1 %11, label %14, label %12, !dbg !3570

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3571
  br label %14, !dbg !3571

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3572
  br label %16, !dbg !3573

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3552
  ret i32 %17, !dbg !3574
}

; Function Attrs: nofree nounwind
declare !dbg !3575 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3576 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3615, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i64 %1, metadata !3616, metadata !DIExpression()), !dbg !3621
  call void @llvm.dbg.value(metadata i32 %2, metadata !3617, metadata !DIExpression()), !dbg !3621
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3622
  %5 = load ptr, ptr %4, align 8, !dbg !3622, !tbaa !3623
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3624
  %7 = load ptr, ptr %6, align 8, !dbg !3624, !tbaa !3625
  %8 = icmp eq ptr %5, %7, !dbg !3626
  br i1 %8, label %9, label %27, !dbg !3627

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3628
  %11 = load ptr, ptr %10, align 8, !dbg !3628, !tbaa !1282
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3629
  %13 = load ptr, ptr %12, align 8, !dbg !3629, !tbaa !3630
  %14 = icmp eq ptr %11, %13, !dbg !3631
  br i1 %14, label %15, label %27, !dbg !3632

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3633
  %17 = load ptr, ptr %16, align 8, !dbg !3633, !tbaa !3634
  %18 = icmp eq ptr %17, null, !dbg !3635
  br i1 %18, label %19, label %27, !dbg !3636

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3637
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %21, metadata !3618, metadata !DIExpression()), !dbg !3639
  %22 = icmp eq i64 %21, -1, !dbg !3640
  br i1 %22, label %29, label %23, !dbg !3642

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3643, !tbaa !3419
  %25 = and i32 %24, -17, !dbg !3643
  store i32 %25, ptr %0, align 8, !dbg !3643, !tbaa !3419
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3644
  store i64 %21, ptr %26, align 8, !dbg !3645, !tbaa !3646
  br label %29, !dbg !3647

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3648
  br label %29, !dbg !3649

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3621
  ret i32 %30, !dbg !3650
}

; Function Attrs: nofree nounwind
declare !dbg !3651 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3654 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3659, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %1, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata i64 %2, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %3, metadata !3662, metadata !DIExpression()), !dbg !3664
  %5 = icmp eq ptr %1, null, !dbg !3665
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3667
  %7 = select i1 %5, ptr @.str.117, ptr %1, !dbg !3667
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %8, metadata !3661, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %7, metadata !3660, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.value(metadata ptr %6, metadata !3659, metadata !DIExpression()), !dbg !3664
  %9 = icmp eq ptr %3, null, !dbg !3668
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %10, metadata !3662, metadata !DIExpression()), !dbg !3664
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3671
  call void @llvm.dbg.value(metadata i64 %11, metadata !3663, metadata !DIExpression()), !dbg !3664
  %12 = icmp ult i64 %11, -3, !dbg !3672
  br i1 %12, label %13, label %17, !dbg !3674

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3675
  %15 = icmp eq i32 %14, 0, !dbg !3675
  br i1 %15, label %16, label %29, !dbg !3676

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3677, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %10, metadata !3684, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i32 0, metadata !3687, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata i64 8, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i64 0, ptr %10, align 1, !dbg !3691
  br label %29, !dbg !3692

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3693
  br i1 %18, label %19, label %20, !dbg !3695

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3696
  unreachable, !dbg !3696

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3697

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3699
  br i1 %23, label %29, label %24, !dbg !3700

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3701
  br i1 %25, label %29, label %26, !dbg !3704

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3705, !tbaa !829
  %28 = zext i8 %27 to i32, !dbg !3706
  store i32 %28, ptr %6, align 4, !dbg !3707, !tbaa !820
  br label %29, !dbg !3708

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3664
  ret i64 %30, !dbg !3709
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3710 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3716 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3718, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %1, metadata !3719, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %2, metadata !3720, metadata !DIExpression()), !dbg !3722
  %4 = icmp eq i64 %2, 0, !dbg !3723
  br i1 %4, label %8, label %5, !dbg !3723

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3723
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3723
  br i1 %7, label %13, label %8, !dbg !3723

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3721, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3722
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3721, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3722
  %9 = mul i64 %2, %1, !dbg !3723
  call void @llvm.dbg.value(metadata i64 %9, metadata !3721, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %9, metadata !3728, metadata !DIExpression()), !dbg !3729
  %10 = icmp eq i64 %9, 0, !dbg !3731
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3731
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3732
  br label %15, !dbg !3733

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3721, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3722
  %14 = tail call ptr @__errno_location() #39, !dbg !3734
  store i32 12, ptr %14, align 4, !dbg !3736, !tbaa !820
  br label %15, !dbg !3737

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3722
  ret ptr %16, !dbg !3738
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3739 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3743, metadata !DIExpression()), !dbg !3748
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3749
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3744, metadata !DIExpression()), !dbg !3750
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3751
  %4 = icmp eq i32 %3, 0, !dbg !3751
  br i1 %4, label %5, label %12, !dbg !3753

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3754, metadata !DIExpression()), !dbg !3758
  %6 = load i16, ptr %2, align 16, !dbg !3761
  %7 = icmp eq i16 %6, 67, !dbg !3761
  br i1 %7, label %11, label %8, !dbg !3762

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3754, metadata !DIExpression()), !dbg !3763
  call void @llvm.dbg.value(metadata ptr @.str.1.122, metadata !3757, metadata !DIExpression()), !dbg !3763
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.122, i64 6), !dbg !3765
  %10 = icmp eq i32 %9, 0, !dbg !3766
  br i1 %10, label %11, label %12, !dbg !3767

11:                                               ; preds = %8, %5
  br label %12, !dbg !3768

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3748
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3769
  ret i1 %13, !dbg !3769
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3774, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr %1, metadata !3775, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %2, metadata !3776, metadata !DIExpression()), !dbg !3777
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3778
  ret i32 %4, !dbg !3779
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3780 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3784, metadata !DIExpression()), !dbg !3785
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3786
  ret ptr %2, !dbg !3787
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3792
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3793
  call void @llvm.dbg.value(metadata ptr %2, metadata !3791, metadata !DIExpression()), !dbg !3792
  ret ptr %2, !dbg !3794
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata ptr %1, metadata !3798, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i64 %2, metadata !3799, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3805
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %4, metadata !3791, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr %4, metadata !3800, metadata !DIExpression()), !dbg !3804
  %5 = icmp eq ptr %4, null, !dbg !3808
  br i1 %5, label %6, label %9, !dbg !3809

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3810
  br i1 %7, label %19, label %8, !dbg !3813

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3814, !tbaa !829
  br label %19, !dbg !3815

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3816
  call void @llvm.dbg.value(metadata i64 %10, metadata !3801, metadata !DIExpression()), !dbg !3817
  %11 = icmp ult i64 %10, %2, !dbg !3818
  br i1 %11, label %12, label %14, !dbg !3820

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3821
  call void @llvm.dbg.value(metadata ptr %1, metadata !3823, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %13, metadata !3827, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3830
  br label %19, !dbg !3831

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3832
  br i1 %15, label %19, label %16, !dbg !3835

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %1, metadata !3823, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %17, metadata !3827, metadata !DIExpression()), !dbg !3838
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3840
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3841
  store i8 0, ptr %18, align 1, !dbg !3842, !tbaa !829
  br label %19, !dbg !3843

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3844
  ret i32 %20, !dbg !3845
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !330, !334, !349, !648, !680, !401, !415, !466, !682, !640, !689, !723, !725, !727, !729, !731, !664, !733, !736, !740, !742}
!llvm.ident = !{!744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744, !744}
!llvm.module.flags = !{!745, !746, !747, !748, !749, !750}

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
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !86, globals: !96, splitDebugInlining: false, nameTableKind: None)
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
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !91, line: 46, baseType: !92)
!91 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !327, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !331, splitDebugInlining: false, nameTableKind: None)
!331 = !{!325, !328}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "file_name", scope: !334, file: !335, line: 45, type: !93, isLocal: true, isDefinition: true)
!334 = distinct !DICompileUnit(language: DW_LANG_C11, file: !335, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !336, splitDebugInlining: false, nameTableKind: None)
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
!348 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !349, file: !350, line: 66, type: !396, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C11, file: !350, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !351, globals: !352, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!351 = !{!88, !95}
!352 = !{!353, !355, !375, !377, !379, !381, !347, !383, !385, !387, !389, !394}
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !350, line: 272, type: !114, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "old_file_name", scope: !357, file: !350, line: 304, type: !93, isLocal: true, isDefinition: true)
!357 = distinct !DISubprogram(name: "verror_at_line", scope: !350, file: !350, line: 298, type: !358, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !368)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !67, !67, !93, !62, !93, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !362)
!362 = !{!363, !365, !366, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !361, file: !364, baseType: !62, size: 32)
!364 = !DIFile(filename: "lib/error.c", directory: "/src")
!365 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !361, file: !364, baseType: !62, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !361, file: !364, baseType: !88, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !361, file: !364, baseType: !88, size: 64, offset: 128)
!368 = !{!369, !370, !371, !372, !373, !374}
!369 = !DILocalVariable(name: "status", arg: 1, scope: !357, file: !350, line: 298, type: !67)
!370 = !DILocalVariable(name: "errnum", arg: 2, scope: !357, file: !350, line: 298, type: !67)
!371 = !DILocalVariable(name: "file_name", arg: 3, scope: !357, file: !350, line: 298, type: !93)
!372 = !DILocalVariable(name: "line_number", arg: 4, scope: !357, file: !350, line: 298, type: !62)
!373 = !DILocalVariable(name: "message", arg: 5, scope: !357, file: !350, line: 298, type: !93)
!374 = !DILocalVariable(name: "args", arg: 6, scope: !357, file: !350, line: 298, type: !360)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "old_line_number", scope: !357, file: !350, line: 305, type: !62, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !350, line: 338, type: !206, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !238, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !350, line: 346, type: !213, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "error_message_count", scope: !349, file: !350, line: 69, type: !62, isLocal: false, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !349, file: !350, line: 295, type: !67, isLocal: false, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !233, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !350, line: 208, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 21)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !350, line: 214, type: !114, isLocal: true, isDefinition: true)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null}
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "program_name", scope: !401, file: !402, line: 31, type: !93, isLocal: false, isDefinition: true)
!401 = distinct !DICompileUnit(language: DW_LANG_C11, file: !402, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !403, globals: !404, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!403 = !{!87}
!404 = !{!399, !405, !407}
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !402, line: 46, type: !238, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !402, line: 49, type: !206, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(name: "utf07FF", scope: !411, file: !412, line: 46, type: !439, isLocal: true, isDefinition: true)
!411 = distinct !DISubprogram(name: "proper_name_lite", scope: !412, file: !412, line: 38, type: !413, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !417)
!412 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!413 = !DISubroutineType(types: !414)
!414 = !{!93, !93, !93}
!415 = distinct !DICompileUnit(language: DW_LANG_C11, file: !412, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !416, splitDebugInlining: false, nameTableKind: None)
!416 = !{!409}
!417 = !{!418, !419, !420, !421, !426}
!418 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !411, file: !412, line: 38, type: !93)
!419 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !411, file: !412, line: 38, type: !93)
!420 = !DILocalVariable(name: "translation", scope: !411, file: !412, line: 40, type: !93)
!421 = !DILocalVariable(name: "w", scope: !411, file: !412, line: 47, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !423, line: 37, baseType: !424)
!423 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !169, line: 57, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !169, line: 42, baseType: !62)
!426 = !DILocalVariable(name: "mbs", scope: !411, file: !412, line: 48, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !428, line: 6, baseType: !429)
!428 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !430, line: 21, baseType: !431)
!430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 13, size: 64, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !431, file: !430, line: 15, baseType: !67, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !431, file: !430, line: 20, baseType: !435, size: 32, offset: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !430, line: 16, size: 32, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !435, file: !430, line: 18, baseType: !62, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !435, file: !430, line: 19, baseType: !206, size: 32)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 16, elements: !214)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !442, line: 78, type: !238, isLocal: true, isDefinition: true)
!442 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !442, line: 79, type: !54, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !442, line: 80, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 13)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !442, line: 81, type: !447, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !442, line: 82, type: !191, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !442, line: 83, type: !213, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !442, line: 84, type: !238, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !442, line: 85, type: !233, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !442, line: 86, type: !233, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !442, line: 87, type: !238, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !466, file: !442, line: 76, type: !552, isLocal: false, isDefinition: true)
!466 = distinct !DICompileUnit(language: DW_LANG_C11, file: !442, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !467, retainedTypes: !487, globals: !488, splitDebugInlining: false, nameTableKind: None)
!467 = !{!468, !482, !71}
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !469, line: 42, baseType: !62, size: 32, elements: !470)
!469 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481}
!471 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!472 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!473 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!474 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!475 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!476 = !DIEnumerator(name: "c_quoting_style", value: 5)
!477 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!478 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!479 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!480 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!481 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !469, line: 254, baseType: !62, size: 32, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!485 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!486 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!487 = !{!67, !89, !90}
!488 = !{!440, !443, !445, !450, !452, !454, !456, !458, !460, !462, !464, !489, !493, !503, !505, !510, !512, !514, !516, !518, !541, !548, !550}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !466, file: !442, line: 92, type: !491, isLocal: false, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 320, elements: !45)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !466, file: !442, line: 1040, type: !495, isLocal: false, isDefinition: true)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !442, line: 56, size: 448, elements: !496)
!496 = !{!497, !498, !499, !501, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !495, file: !442, line: 59, baseType: !468, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !442, line: 62, baseType: !67, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !495, file: !442, line: 66, baseType: !500, size: 256, offset: 64)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !239)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !495, file: !442, line: 69, baseType: !93, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !495, file: !442, line: 72, baseType: !93, size: 64, offset: 384)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !466, file: !442, line: 107, type: !495, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "slot0", scope: !466, file: !442, line: 831, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 256)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !442, line: 321, type: !213, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !442, line: 357, type: !213, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !442, line: 358, type: !213, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !442, line: 199, type: !233, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "quote", scope: !520, file: !442, line: 228, type: !539, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "gettext_quote", scope: !442, file: !442, line: 197, type: !521, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!93, !93, !468}
!523 = !{!524, !525, !526, !527, !528}
!524 = !DILocalVariable(name: "msgid", arg: 1, scope: !520, file: !442, line: 197, type: !93)
!525 = !DILocalVariable(name: "s", arg: 2, scope: !520, file: !442, line: 197, type: !468)
!526 = !DILocalVariable(name: "translation", scope: !520, file: !442, line: 199, type: !93)
!527 = !DILocalVariable(name: "w", scope: !520, file: !442, line: 229, type: !422)
!528 = !DILocalVariable(name: "mbs", scope: !520, file: !442, line: 230, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !428, line: 6, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !430, line: 21, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 13, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !531, file: !430, line: 15, baseType: !67, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !531, file: !430, line: 20, baseType: !535, size: 32, offset: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !430, line: 16, size: 32, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !535, file: !430, line: 18, baseType: !62, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !535, file: !430, line: 19, baseType: !206, size: 32)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !540)
!540 = !{!215, !208}
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "slotvec", scope: !466, file: !442, line: 834, type: !543, isLocal: true, isDefinition: true)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !442, line: 823, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !442, line: 825, baseType: !90, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !544, file: !442, line: 826, baseType: !87, size: 64, offset: 64)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "nslots", scope: !466, file: !442, line: 832, type: !67, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "slotvec0", scope: !466, file: !442, line: 833, type: !544, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 704, elements: !554)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!554 = !{!555}
!555 = !DISubrange(count: 11)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !558, line: 67, type: !306, isLocal: true, isDefinition: true)
!558 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !558, line: 69, type: !233, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !558, line: 83, type: !233, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !558, line: 83, type: !206, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !558, line: 85, type: !213, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !558, line: 88, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 171)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !558, line: 88, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 34)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !558, line: 105, type: !104, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !558, line: 109, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 23)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !558, line: 113, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 28)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !558, line: 120, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 32)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !558, line: 127, type: !596, isLocal: true, isDefinition: true)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 36)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !558, line: 134, type: !257, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !558, line: 142, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 44)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !558, line: 150, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 48)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !558, line: 159, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 52)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !558, line: 170, type: !618, isLocal: true, isDefinition: true)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 60)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !558, line: 248, type: !191, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !558, line: 248, type: !282, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !191, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !99, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !257, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !558, line: 259, type: !3, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !558, line: 259, type: !635, isLocal: true, isDefinition: true)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 29)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !640, file: !641, line: 26, type: !643, isLocal: false, isDefinition: true)
!640 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !642, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!642 = !{!638}
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 376, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 47)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(name: "exit_failure", scope: !648, file: !649, line: 24, type: !651, isLocal: false, isDefinition: true)
!648 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !650, splitDebugInlining: false, nameTableKind: None)
!649 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!650 = !{!646}
!651 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !654, line: 34, type: !222, isLocal: true, isDefinition: true)
!654 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !654, line: 34, type: !233, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !654, line: 34, type: !109, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !661, line: 108, type: !39, isLocal: true, isDefinition: true)
!661 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "internal_state", scope: !664, file: !661, line: 97, type: !667, isLocal: true, isDefinition: true)
!664 = distinct !DICompileUnit(language: DW_LANG_C11, file: !661, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !665, globals: !666, splitDebugInlining: false, nameTableKind: None)
!665 = !{!88, !90, !95}
!666 = !{!659, !662}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !428, line: 6, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !430, line: 21, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 13, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !669, file: !430, line: 15, baseType: !67, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !669, file: !430, line: 20, baseType: !673, size: 32, offset: 32)
!673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !430, line: 16, size: 32, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !673, file: !430, line: 18, baseType: !62, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !673, file: !430, line: 19, baseType: !206, size: 32)
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !679, line: 35, type: !54, isLocal: true, isDefinition: true)
!679 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !558, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !683, retainedTypes: !687, globals: !688, splitDebugInlining: false, nameTableKind: None)
!683 = !{!684}
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !558, line: 40, baseType: !62, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!687 = !{!88}
!688 = !{!556, !559, !561, !563, !565, !567, !572, !577, !579, !584, !589, !594, !599, !601, !606, !611, !616, !621, !623, !625, !627, !629, !631, !633}
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !691, retainedTypes: !722, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!691 = !{!692, !704}
!692 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !693, file: !690, line: 188, baseType: !62, size: 32, elements: !702)
!693 = distinct !DISubprogram(name: "x2nrealloc", scope: !690, file: !690, line: 176, type: !694, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!88, !88, !696, !90}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "p", arg: 1, scope: !693, file: !690, line: 176, type: !88)
!699 = !DILocalVariable(name: "pn", arg: 2, scope: !693, file: !690, line: 176, type: !696)
!700 = !DILocalVariable(name: "s", arg: 3, scope: !693, file: !690, line: 176, type: !90)
!701 = !DILocalVariable(name: "n", scope: !693, file: !690, line: 178, type: !90)
!702 = !{!703}
!703 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !705, file: !690, line: 228, baseType: !62, size: 32, elements: !702)
!705 = distinct !DISubprogram(name: "xpalloc", scope: !690, file: !690, line: 223, type: !706, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !712)
!706 = !DISubroutineType(types: !707)
!707 = !{!88, !88, !708, !709, !711, !709}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !710, line: 130, baseType: !711)
!710 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !91, line: 35, baseType: !170)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721}
!713 = !DILocalVariable(name: "pa", arg: 1, scope: !705, file: !690, line: 223, type: !88)
!714 = !DILocalVariable(name: "pn", arg: 2, scope: !705, file: !690, line: 223, type: !708)
!715 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !705, file: !690, line: 223, type: !709)
!716 = !DILocalVariable(name: "n_max", arg: 4, scope: !705, file: !690, line: 223, type: !711)
!717 = !DILocalVariable(name: "s", arg: 5, scope: !705, file: !690, line: 223, type: !709)
!718 = !DILocalVariable(name: "n0", scope: !705, file: !690, line: 230, type: !709)
!719 = !DILocalVariable(name: "n", scope: !705, file: !690, line: 237, type: !709)
!720 = !DILocalVariable(name: "nbytes", scope: !705, file: !690, line: 248, type: !709)
!721 = !DILocalVariable(name: "adjusted_nbytes", scope: !705, file: !690, line: 252, type: !709)
!722 = !{!87, !88, !129, !170, !92}
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !654, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !724, splitDebugInlining: false, nameTableKind: None)
!724 = !{!652, !655, !657}
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !687, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !687, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!735 = !{!129, !92, !88}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!738, !677}
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !679, line: 35, type: !213, isLocal: true, isDefinition: true)
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !687, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!744 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!745 = !{i32 7, !"Dwarf Version", i32 5}
!746 = !{i32 2, !"Debug Info Version", i32 3}
!747 = !{i32 1, !"wchar_size", i32 4}
!748 = !{i32 8, !"PIC Level", i32 2}
!749 = !{i32 7, !"PIE Level", i32 2}
!750 = !{i32 7, !"uwtable", i32 2}
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
!791 = !DILocation(line: 857, column: 3, scope: !773, inlinedAt: !790)
!792 = !DILocation(line: 861, column: 29, scope: !773, inlinedAt: !790)
!793 = !DILocation(line: 862, column: 7, scope: !794, inlinedAt: !790)
!794 = distinct !DILexicalBlock(scope: !773, file: !66, line: 862, column: 7)
!795 = !DILocation(line: 862, column: 19, scope: !794, inlinedAt: !790)
!796 = !DILocation(line: 862, column: 22, scope: !794, inlinedAt: !790)
!797 = !DILocation(line: 862, column: 7, scope: !773, inlinedAt: !790)
!798 = !DILocation(line: 868, column: 7, scope: !799, inlinedAt: !790)
!799 = distinct !DILexicalBlock(scope: !794, file: !66, line: 863, column: 5)
!800 = !DILocation(line: 870, column: 5, scope: !799, inlinedAt: !790)
!801 = !DILocation(line: 875, column: 3, scope: !773, inlinedAt: !790)
!802 = !DILocation(line: 877, column: 3, scope: !773, inlinedAt: !790)
!803 = !DILocation(line: 78, column: 3, scope: !751)
!804 = !DISubprogram(name: "dcgettext", scope: !805, file: !805, line: 51, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!805 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!806 = !DISubroutineType(types: !807)
!807 = !{!87, !93, !93, !67}
!808 = !{}
!809 = !DISubprogram(name: "__fprintf_chk", scope: !810, file: !810, line: 93, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!810 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!811 = !DISubroutineType(types: !812)
!812 = !{!67, !813, !67, !814, null}
!813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!814 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!815 = !DISubprogram(name: "__printf_chk", scope: !810, file: !810, line: 95, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
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
!871 = !DILocation(line: 618, column: 5, scope: !133)
!872 = !DILocation(line: 620, column: 23, scope: !119)
!873 = !DILocation(line: 625, column: 39, scope: !119)
!874 = !DILocation(line: 626, column: 3, scope: !119)
!875 = !DILocation(line: 626, column: 10, scope: !119)
!876 = !DILocation(line: 626, column: 21, scope: !119)
!877 = !DILocation(line: 628, column: 44, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !66, line: 628, column: 11)
!879 = distinct !DILexicalBlock(scope: !119, file: !66, line: 627, column: 5)
!880 = !DILocation(line: 628, column: 32, scope: !878)
!881 = !DILocation(line: 628, column: 49, scope: !878)
!882 = !DILocation(line: 628, column: 11, scope: !879)
!883 = !DILocation(line: 630, column: 11, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !66, line: 630, column: 11)
!885 = !DILocation(line: 630, column: 11, scope: !879)
!886 = !DILocation(line: 632, column: 26, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !66, line: 632, column: 15)
!888 = distinct !DILexicalBlock(scope: !884, file: !66, line: 631, column: 9)
!889 = !DILocation(line: 632, column: 34, scope: !887)
!890 = !DILocation(line: 632, column: 37, scope: !887)
!891 = !DILocation(line: 632, column: 15, scope: !888)
!892 = !DILocation(line: 636, column: 16, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !66, line: 636, column: 15)
!894 = !DILocation(line: 636, column: 29, scope: !893)
!895 = !DILocation(line: 640, column: 16, scope: !879)
!896 = distinct !{!896, !874, !897, !867}
!897 = !DILocation(line: 641, column: 5, scope: !119)
!898 = !DILocation(line: 644, column: 3, scope: !119)
!899 = !DILocation(line: 0, scope: !832, inlinedAt: !900)
!900 = distinct !DILocation(line: 648, column: 31, scope: !119)
!901 = !DILocation(line: 0, scope: !832, inlinedAt: !902)
!902 = distinct !DILocation(line: 649, column: 31, scope: !119)
!903 = !DILocation(line: 0, scope: !832, inlinedAt: !904)
!904 = distinct !DILocation(line: 650, column: 31, scope: !119)
!905 = !DILocation(line: 0, scope: !832, inlinedAt: !906)
!906 = distinct !DILocation(line: 651, column: 31, scope: !119)
!907 = !DILocation(line: 0, scope: !832, inlinedAt: !908)
!908 = distinct !DILocation(line: 652, column: 31, scope: !119)
!909 = !DILocation(line: 0, scope: !832, inlinedAt: !910)
!910 = distinct !DILocation(line: 653, column: 31, scope: !119)
!911 = !DILocation(line: 0, scope: !832, inlinedAt: !912)
!912 = distinct !DILocation(line: 654, column: 31, scope: !119)
!913 = !DILocation(line: 0, scope: !832, inlinedAt: !914)
!914 = distinct !DILocation(line: 655, column: 31, scope: !119)
!915 = !DILocation(line: 0, scope: !832, inlinedAt: !916)
!916 = distinct !DILocation(line: 656, column: 31, scope: !119)
!917 = !DILocation(line: 0, scope: !832, inlinedAt: !918)
!918 = distinct !DILocation(line: 657, column: 31, scope: !119)
!919 = !DILocation(line: 663, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !119, file: !66, line: 663, column: 7)
!921 = !DILocation(line: 664, column: 7, scope: !920)
!922 = !DILocation(line: 664, column: 10, scope: !920)
!923 = !DILocation(line: 663, column: 7, scope: !119)
!924 = !DILocation(line: 669, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !920, file: !66, line: 665, column: 5)
!926 = !DILocation(line: 671, column: 5, scope: !925)
!927 = !DILocation(line: 676, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !920, file: !66, line: 673, column: 5)
!929 = !DILocation(line: 679, column: 3, scope: !119)
!930 = !DILocation(line: 683, column: 3, scope: !119)
!931 = !DILocation(line: 686, column: 3, scope: !119)
!932 = !DILocation(line: 688, column: 3, scope: !119)
!933 = !DILocation(line: 691, column: 3, scope: !119)
!934 = !DILocation(line: 695, column: 3, scope: !119)
!935 = !DILocation(line: 696, column: 1, scope: !119)
!936 = !DISubprogram(name: "setlocale", scope: !937, file: !937, line: 122, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!937 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!938 = !DISubroutineType(types: !939)
!939 = !{!87, !67, !93}
!940 = !DISubprogram(name: "strncmp", scope: !941, file: !941, line: 159, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!941 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!942 = !DISubroutineType(types: !943)
!943 = !{!67, !93, !93, !90}
!944 = !DISubprogram(name: "fputs_unlocked", scope: !945, file: !945, line: 691, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!945 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!946 = !DISubroutineType(types: !947)
!947 = !{!67, !814, !813}
!948 = !DISubprogram(name: "exit", scope: !949, file: !949, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !808)
!949 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!950 = !DISubprogram(name: "getenv", scope: !949, file: !949, line: 641, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!951 = !DISubroutineType(types: !952)
!952 = !{!87, !93}
!953 = !DISubprogram(name: "strcmp", scope: !941, file: !941, line: 156, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!954 = !DISubroutineType(types: !955)
!955 = !{!67, !93, !93}
!956 = !DISubprogram(name: "strspn", scope: !941, file: !941, line: 297, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!957 = !DISubroutineType(types: !958)
!958 = !{!92, !93, !93}
!959 = !DISubprogram(name: "strchr", scope: !941, file: !941, line: 246, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!960 = !DISubroutineType(types: !961)
!961 = !{!87, !93, !67}
!962 = !DISubprogram(name: "__ctype_b_loc", scope: !72, file: !72, line: 79, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!963 = !DISubroutineType(types: !964)
!964 = !{!965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!968 = !DISubprogram(name: "strcspn", scope: !941, file: !941, line: 293, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!969 = !DISubprogram(name: "fwrite_unlocked", scope: !945, file: !945, line: 704, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!970 = !DISubroutineType(types: !971)
!971 = !{!90, !972, !90, !90, !813}
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!975 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 82, type: !976, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !979)
!976 = !DISubroutineType(types: !977)
!977 = !{!67, !67, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!979 = !{!980, !981, !982, !983, !984, !985, !989, !991, !993, !996, !998, !1001}
!980 = !DILocalVariable(name: "argc", arg: 1, scope: !975, file: !2, line: 82, type: !67)
!981 = !DILocalVariable(name: "argv", arg: 2, scope: !975, file: !2, line: 82, type: !978)
!982 = !DILocalVariable(name: "opt_nul_terminate_output", scope: !975, file: !2, line: 84, type: !129)
!983 = !DILocalVariable(name: "optc", scope: !975, file: !2, line: 95, type: !67)
!984 = !DILocalVariable(name: "ok", scope: !975, file: !2, line: 110, type: !129)
!985 = !DILocalVariable(name: "env", scope: !986, file: !2, line: 113, type: !978)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 113, column: 7)
!987 = distinct !DILexicalBlock(scope: !988, file: !2, line: 112, column: 5)
!988 = distinct !DILexicalBlock(scope: !975, file: !2, line: 111, column: 7)
!989 = !DILocalVariable(name: "matches", scope: !990, file: !2, line: 119, type: !67)
!990 = distinct !DILexicalBlock(scope: !988, file: !2, line: 118, column: 5)
!991 = !DILocalVariable(name: "i", scope: !992, file: !2, line: 121, type: !67)
!992 = distinct !DILexicalBlock(scope: !990, file: !2, line: 121, column: 7)
!993 = !DILocalVariable(name: "matched", scope: !994, file: !2, line: 123, type: !129)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 122, column: 9)
!995 = distinct !DILexicalBlock(scope: !992, file: !2, line: 121, column: 7)
!996 = !DILocalVariable(name: "env", scope: !997, file: !2, line: 129, type: !978)
!997 = distinct !DILexicalBlock(scope: !994, file: !2, line: 129, column: 11)
!998 = !DILocalVariable(name: "ep", scope: !999, file: !2, line: 131, type: !93)
!999 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 130, column: 13)
!1000 = distinct !DILexicalBlock(scope: !997, file: !2, line: 129, column: 11)
!1001 = !DILocalVariable(name: "ap", scope: !999, file: !2, line: 132, type: !93)
!1002 = !DILocation(line: 0, scope: !975)
!1003 = !DILocation(line: 87, column: 21, scope: !975)
!1004 = !DILocation(line: 87, column: 3, scope: !975)
!1005 = !DILocation(line: 88, column: 3, scope: !975)
!1006 = !DILocation(line: 89, column: 3, scope: !975)
!1007 = !DILocation(line: 90, column: 3, scope: !975)
!1008 = !DILocalVariable(name: "status", arg: 1, scope: !1009, file: !66, line: 102, type: !67)
!1009 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !66, file: !66, line: 102, type: !752, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1010)
!1010 = !{!1008}
!1011 = !DILocation(line: 0, scope: !1009, inlinedAt: !1012)
!1012 = distinct !DILocation(line: 92, column: 3, scope: !975)
!1013 = !DILocation(line: 105, column: 18, scope: !1014, inlinedAt: !1012)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !66, line: 104, column: 7)
!1015 = !DILocation(line: 93, column: 3, scope: !975)
!1016 = !DILocation(line: 96, column: 18, scope: !975)
!1017 = !DILocation(line: 96, column: 3, scope: !975)
!1018 = distinct !{!1018, !1017, !1019, !867, !1020}
!1019 = !DILocation(line: 108, column: 5, scope: !975)
!1020 = !{!"llvm.loop.peeled.count", i32 1}
!1021 = !DILocation(line: 103, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 99, column: 9)
!1023 = distinct !DILexicalBlock(scope: !975, file: !2, line: 97, column: 5)
!1024 = !DILocation(line: 104, column: 9, scope: !1022)
!1025 = !DILocation(line: 106, column: 11, scope: !1022)
!1026 = !DILocation(line: 111, column: 7, scope: !988)
!1027 = !DILocation(line: 111, column: 14, scope: !988)
!1028 = !DILocation(line: 111, column: 7, scope: !975)
!1029 = !DILocation(line: 121, column: 7, scope: !992)
!1030 = !DILocation(line: 113, column: 25, scope: !986)
!1031 = !DILocation(line: 0, scope: !986)
!1032 = !DILocation(line: 113, column: 34, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !986, file: !2, line: 113, column: 7)
!1034 = !DILocation(line: 113, column: 39, scope: !1033)
!1035 = !DILocation(line: 113, column: 7, scope: !986)
!1036 = !DILocation(line: 114, column: 9, scope: !1033)
!1037 = !DILocation(line: 113, column: 48, scope: !1033)
!1038 = distinct !{!1038, !1035, !1039, !867}
!1039 = !DILocation(line: 114, column: 9, scope: !986)
!1040 = !DILocation(line: 148, column: 31, scope: !990)
!1041 = !DILocation(line: 148, column: 29, scope: !990)
!1042 = !DILocation(line: 148, column: 21, scope: !990)
!1043 = !DILocation(line: 151, column: 10, scope: !975)
!1044 = !DILocation(line: 0, scope: !992)
!1045 = !DILocation(line: 0, scope: !990)
!1046 = !DILocation(line: 0, scope: !994)
!1047 = !DILocation(line: 126, column: 23, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !994, file: !2, line: 126, column: 15)
!1049 = !DILocation(line: 126, column: 15, scope: !1048)
!1050 = !DILocation(line: 126, column: 15, scope: !994)
!1051 = !DILocation(line: 129, column: 29, scope: !997)
!1052 = !DILocation(line: 0, scope: !997)
!1053 = !DILocation(line: 129, column: 38, scope: !1000)
!1054 = !DILocation(line: 129, column: 11, scope: !997)
!1055 = !DILocation(line: 145, column: 22, scope: !994)
!1056 = !DILocation(line: 145, column: 19, scope: !994)
!1057 = !DILocation(line: 146, column: 9, scope: !995)
!1058 = !DILocation(line: 0, scope: !999)
!1059 = !DILocation(line: 133, column: 22, scope: !999)
!1060 = !DILocation(line: 133, column: 26, scope: !999)
!1061 = !DILocation(line: 133, column: 34, scope: !999)
!1062 = !DILocation(line: 132, column: 32, scope: !999)
!1063 = !DILocation(line: 133, column: 37, scope: !999)
!1064 = !DILocation(line: 133, column: 41, scope: !999)
!1065 = !DILocation(line: 133, column: 49, scope: !999)
!1066 = !DILocation(line: 133, column: 55, scope: !999)
!1067 = !DILocation(line: 133, column: 64, scope: !999)
!1068 = !DILocation(line: 133, column: 58, scope: !999)
!1069 = !DILocation(line: 133, column: 15, scope: !999)
!1070 = !DILocation(line: 135, column: 23, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !2, line: 135, column: 23)
!1072 = distinct !DILexicalBlock(scope: !999, file: !2, line: 134, column: 17)
!1073 = !DILocation(line: 135, column: 34, scope: !1071)
!1074 = !DILocation(line: 135, column: 37, scope: !1071)
!1075 = !DILocation(line: 135, column: 41, scope: !1071)
!1076 = !DILocation(line: 135, column: 23, scope: !1072)
!1077 = !DILocation(line: 137, column: 23, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 136, column: 21)
!1079 = !DILocation(line: 140, column: 23, scope: !1078)
!1080 = distinct !{!1080, !1069, !1081, !867}
!1081 = !DILocation(line: 142, column: 17, scope: !999)
!1082 = !DILocation(line: 129, column: 44, scope: !1000)
!1083 = distinct !{!1083, !1054, !1084, !867}
!1084 = !DILocation(line: 143, column: 13, scope: !997)
!1085 = !DILocation(line: 121, column: 38, scope: !995)
!1086 = !DILocation(line: 121, column: 30, scope: !995)
!1087 = distinct !{!1087, !1029, !1088, !867}
!1088 = !DILocation(line: 146, column: 9, scope: !992)
!1089 = !DILocation(line: 152, column: 1, scope: !975)
!1090 = !DISubprogram(name: "bindtextdomain", scope: !805, file: !805, line: 86, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!87, !93, !93}
!1093 = !DISubprogram(name: "textdomain", scope: !805, file: !805, line: 82, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1094 = !DISubprogram(name: "atexit", scope: !949, file: !949, line: 602, type: !1095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!67, !396}
!1097 = !DISubprogram(name: "getopt_long", scope: !318, file: !318, line: 66, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
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
!1119 = distinct !DISubprogram(name: "close_stdout", scope: !335, file: !335, line: 116, type: !397, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !334, retainedNodes: !1120)
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
!1152 = !DISubprogram(name: "__errno_location", scope: !1153, file: !1153, line: 37, type: !1154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1153 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!323}
!1156 = !DISubprogram(name: "_exit", scope: !1157, file: !1157, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !808)
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
!1176 = distinct !DISubprogram(name: "flush_stdout", scope: !350, file: !350, line: 163, type: !397, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1177)
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
!1199 = !DILocation(line: 0, scope: !1193)
!1200 = !DILocation(line: 229, column: 13, scope: !1193)
!1201 = !DILocalVariable(name: "__stream", arg: 1, scope: !1202, file: !810, line: 132, type: !1205)
!1202 = distinct !DISubprogram(name: "vfprintf", scope: !810, file: !810, line: 132, type: !1203, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1240)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!67, !1205, !814, !360}
!1205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1208, file: !146, line: 51, baseType: !67, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1208, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1208, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1208, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1208, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1208, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1208, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1208, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1208, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1208, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1208, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1208, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1208, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1208, file: !146, line: 70, baseType: !1224, size: 64, offset: 832)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1208, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1208, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1208, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1208, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1208, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1208, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1208, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1208, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1208, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1208, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1208, file: !146, line: 93, baseType: !1224, size: 64, offset: 1344)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1208, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1208, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1208, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1208, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!1240 = !{!1201, !1241, !1242}
!1241 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1202, file: !810, line: 133, type: !814)
!1242 = !DILocalVariable(name: "__ap", arg: 3, scope: !1202, file: !810, line: 133, type: !360)
!1243 = !DILocation(line: 0, scope: !1202, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 229, column: 3, scope: !1193)
!1245 = !DILocation(line: 135, column: 10, scope: !1202, inlinedAt: !1244)
!1246 = !DILocation(line: 232, column: 3, scope: !1193)
!1247 = !DILocation(line: 233, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1193, file: !350, line: 233, column: 7)
!1249 = !DILocation(line: 233, column: 7, scope: !1193)
!1250 = !DILocalVariable(name: "errnum", arg: 1, scope: !1251, file: !350, line: 188, type: !67)
!1251 = distinct !DISubprogram(name: "print_errno_message", scope: !350, file: !350, line: 188, type: !752, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1252)
!1252 = !{!1250, !1253, !1254}
!1253 = !DILocalVariable(name: "s", scope: !1251, file: !350, line: 190, type: !93)
!1254 = !DILocalVariable(name: "errbuf", scope: !1251, file: !350, line: 193, type: !1255)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 1024)
!1258 = !DILocation(line: 0, scope: !1251, inlinedAt: !1259)
!1259 = distinct !DILocation(line: 234, column: 5, scope: !1248)
!1260 = !DILocation(line: 193, column: 3, scope: !1251, inlinedAt: !1259)
!1261 = !DILocation(line: 193, column: 8, scope: !1251, inlinedAt: !1259)
!1262 = !DILocation(line: 195, column: 7, scope: !1251, inlinedAt: !1259)
!1263 = !DILocation(line: 207, column: 9, scope: !1264, inlinedAt: !1259)
!1264 = distinct !DILexicalBlock(scope: !1251, file: !350, line: 207, column: 7)
!1265 = !DILocation(line: 207, column: 7, scope: !1251, inlinedAt: !1259)
!1266 = !DILocation(line: 208, column: 9, scope: !1264, inlinedAt: !1259)
!1267 = !DILocation(line: 208, column: 5, scope: !1264, inlinedAt: !1259)
!1268 = !DILocation(line: 214, column: 3, scope: !1251, inlinedAt: !1259)
!1269 = !DILocation(line: 216, column: 1, scope: !1251, inlinedAt: !1259)
!1270 = !DILocation(line: 234, column: 5, scope: !1248)
!1271 = !DILocation(line: 238, column: 3, scope: !1193)
!1272 = !DILocalVariable(name: "__c", arg: 1, scope: !1273, file: !1274, line: 101, type: !67)
!1273 = distinct !DISubprogram(name: "putc_unlocked", scope: !1274, file: !1274, line: 101, type: !1275, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !1277)
!1274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!67, !67, !1206}
!1277 = !{!1272, !1278}
!1278 = !DILocalVariable(name: "__stream", arg: 2, scope: !1273, file: !1274, line: 101, type: !1206)
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
!1293 = !DISubprogram(name: "__vfprintf_chk", scope: !810, file: !810, line: 96, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!67, !1205, !67, !814, !360}
!1296 = !DISubprogram(name: "strerror_r", scope: !941, file: !941, line: 444, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!87, !67, !87, !90}
!1299 = !DISubprogram(name: "__overflow", scope: !945, file: !945, line: 886, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!67, !1206, !67}
!1302 = !DISubprogram(name: "fflush_unlocked", scope: !945, file: !945, line: 239, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!67, !1206}
!1305 = !DISubprogram(name: "fcntl", scope: !1306, file: !1306, line: 149, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
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
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !945, line: 52, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1319, line: 14, baseType: !1320)
!1319 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !364, baseType: !1321)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !40)
!1322 = !DILocation(line: 0, scope: !1309)
!1323 = !DILocation(line: 287, column: 3, scope: !1309)
!1324 = !DILocation(line: 287, column: 11, scope: !1309)
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
!1369 = !DILocation(line: 0, scope: !1359)
!1370 = !DILocation(line: 362, column: 3, scope: !1359)
!1371 = !DILocation(line: 362, column: 11, scope: !1359)
!1372 = !DILocation(line: 363, column: 3, scope: !1359)
!1373 = !DILocation(line: 364, column: 3, scope: !1359)
!1374 = !DILocation(line: 366, column: 3, scope: !1359)
!1375 = !DILocation(line: 367, column: 1, scope: !1359)
!1376 = distinct !DISubprogram(name: "getprogname", scope: !681, file: !681, line: 54, type: !1377, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !808)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!93}
!1379 = !DILocation(line: 58, column: 10, scope: !1376)
!1380 = !DILocation(line: 58, column: 3, scope: !1376)
!1381 = distinct !DISubprogram(name: "set_program_name", scope: !402, file: !402, line: 37, type: !774, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DILocalVariable(name: "argv0", arg: 1, scope: !1381, file: !402, line: 37, type: !93)
!1384 = !DILocalVariable(name: "slash", scope: !1381, file: !402, line: 44, type: !93)
!1385 = !DILocalVariable(name: "base", scope: !1381, file: !402, line: 45, type: !93)
!1386 = !DILocation(line: 0, scope: !1381)
!1387 = !DILocation(line: 44, column: 23, scope: !1381)
!1388 = !DILocation(line: 45, column: 22, scope: !1381)
!1389 = !DILocation(line: 46, column: 17, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1381, file: !402, line: 46, column: 7)
!1391 = !DILocation(line: 46, column: 9, scope: !1390)
!1392 = !DILocation(line: 46, column: 25, scope: !1390)
!1393 = !DILocation(line: 46, column: 40, scope: !1390)
!1394 = !DILocalVariable(name: "__s1", arg: 1, scope: !1395, file: !833, line: 974, type: !973)
!1395 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1396, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!129, !973, !973, !90}
!1398 = !{!1394, !1399, !1400}
!1399 = !DILocalVariable(name: "__s2", arg: 2, scope: !1395, file: !833, line: 974, type: !973)
!1400 = !DILocalVariable(name: "__n", arg: 3, scope: !1395, file: !833, line: 974, type: !90)
!1401 = !DILocation(line: 0, scope: !1395, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 46, column: 28, scope: !1390)
!1403 = !DILocation(line: 976, column: 11, scope: !1395, inlinedAt: !1402)
!1404 = !DILocation(line: 976, column: 10, scope: !1395, inlinedAt: !1402)
!1405 = !DILocation(line: 46, column: 7, scope: !1381)
!1406 = !DILocation(line: 49, column: 11, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !402, line: 49, column: 11)
!1408 = distinct !DILexicalBlock(scope: !1390, file: !402, line: 47, column: 5)
!1409 = !DILocation(line: 49, column: 36, scope: !1407)
!1410 = !DILocation(line: 49, column: 11, scope: !1408)
!1411 = !DILocation(line: 65, column: 16, scope: !1381)
!1412 = !DILocation(line: 71, column: 27, scope: !1381)
!1413 = !DILocation(line: 74, column: 33, scope: !1381)
!1414 = !DILocation(line: 76, column: 1, scope: !1381)
!1415 = !DISubprogram(name: "strrchr", scope: !941, file: !941, line: 273, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1416 = !DILocation(line: 0, scope: !411)
!1417 = !DILocation(line: 40, column: 29, scope: !411)
!1418 = !DILocation(line: 41, column: 19, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !411, file: !412, line: 41, column: 7)
!1420 = !DILocation(line: 41, column: 7, scope: !411)
!1421 = !DILocation(line: 47, column: 3, scope: !411)
!1422 = !DILocation(line: 48, column: 3, scope: !411)
!1423 = !DILocation(line: 48, column: 13, scope: !411)
!1424 = !DILocalVariable(name: "ps", arg: 1, scope: !1425, file: !1426, line: 1135, type: !1429)
!1425 = distinct !DISubprogram(name: "mbszero", scope: !1426, file: !1426, line: 1135, type: !1427, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1430)
!1426 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1427 = !DISubroutineType(types: !1428)
!1428 = !{null, !1429}
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!1430 = !{!1424}
!1431 = !DILocation(line: 0, scope: !1425, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 48, column: 18, scope: !411)
!1433 = !DILocalVariable(name: "__dest", arg: 1, scope: !1434, file: !1435, line: 57, type: !88)
!1434 = distinct !DISubprogram(name: "memset", scope: !1435, file: !1435, line: 57, type: !1436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1438)
!1435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!88, !88, !67, !90}
!1438 = !{!1433, !1439, !1440}
!1439 = !DILocalVariable(name: "__ch", arg: 2, scope: !1434, file: !1435, line: 57, type: !67)
!1440 = !DILocalVariable(name: "__len", arg: 3, scope: !1434, file: !1435, line: 57, type: !90)
!1441 = !DILocation(line: 0, scope: !1434, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 1137, column: 3, scope: !1425, inlinedAt: !1432)
!1443 = !DILocation(line: 59, column: 10, scope: !1434, inlinedAt: !1442)
!1444 = !DILocation(line: 49, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !411, file: !412, line: 49, column: 7)
!1446 = !DILocation(line: 49, column: 39, scope: !1445)
!1447 = !DILocation(line: 49, column: 44, scope: !1445)
!1448 = !DILocation(line: 54, column: 1, scope: !411)
!1449 = !DISubprogram(name: "mbrtoc32", scope: !423, file: !423, line: 57, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!90, !1452, !814, !90, !1454}
!1452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1429)
!1455 = distinct !DISubprogram(name: "clone_quoting_options", scope: !442, file: !442, line: 113, type: !1456, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1459)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1458, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1459 = !{!1460, !1461, !1462}
!1460 = !DILocalVariable(name: "o", arg: 1, scope: !1455, file: !442, line: 113, type: !1458)
!1461 = !DILocalVariable(name: "saved_errno", scope: !1455, file: !442, line: 115, type: !67)
!1462 = !DILocalVariable(name: "p", scope: !1455, file: !442, line: 116, type: !1458)
!1463 = !DILocation(line: 0, scope: !1455)
!1464 = !DILocation(line: 115, column: 21, scope: !1455)
!1465 = !DILocation(line: 116, column: 40, scope: !1455)
!1466 = !DILocation(line: 116, column: 31, scope: !1455)
!1467 = !DILocation(line: 118, column: 9, scope: !1455)
!1468 = !DILocation(line: 119, column: 3, scope: !1455)
!1469 = distinct !DISubprogram(name: "get_quoting_style", scope: !442, file: !442, line: 124, type: !1470, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1474)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!468, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "o", arg: 1, scope: !1469, file: !442, line: 124, type: !1472)
!1476 = !DILocation(line: 0, scope: !1469)
!1477 = !DILocation(line: 126, column: 11, scope: !1469)
!1478 = !DILocation(line: 126, column: 46, scope: !1469)
!1479 = !{!1480, !764, i64 0}
!1480 = !{!"quoting_options", !764, i64 0, !821, i64 4, !764, i64 8, !763, i64 40, !763, i64 48}
!1481 = !DILocation(line: 126, column: 3, scope: !1469)
!1482 = distinct !DISubprogram(name: "set_quoting_style", scope: !442, file: !442, line: 132, type: !1483, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1485)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1458, !468}
!1485 = !{!1486, !1487}
!1486 = !DILocalVariable(name: "o", arg: 1, scope: !1482, file: !442, line: 132, type: !1458)
!1487 = !DILocalVariable(name: "s", arg: 2, scope: !1482, file: !442, line: 132, type: !468)
!1488 = !DILocation(line: 0, scope: !1482)
!1489 = !DILocation(line: 134, column: 4, scope: !1482)
!1490 = !DILocation(line: 134, column: 45, scope: !1482)
!1491 = !DILocation(line: 135, column: 1, scope: !1482)
!1492 = distinct !DISubprogram(name: "set_char_quoting", scope: !442, file: !442, line: 143, type: !1493, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!67, !1458, !4, !67}
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1502, !1503}
!1496 = !DILocalVariable(name: "o", arg: 1, scope: !1492, file: !442, line: 143, type: !1458)
!1497 = !DILocalVariable(name: "c", arg: 2, scope: !1492, file: !442, line: 143, type: !4)
!1498 = !DILocalVariable(name: "i", arg: 3, scope: !1492, file: !442, line: 143, type: !67)
!1499 = !DILocalVariable(name: "uc", scope: !1492, file: !442, line: 145, type: !95)
!1500 = !DILocalVariable(name: "p", scope: !1492, file: !442, line: 146, type: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!1502 = !DILocalVariable(name: "shift", scope: !1492, file: !442, line: 148, type: !67)
!1503 = !DILocalVariable(name: "r", scope: !1492, file: !442, line: 149, type: !62)
!1504 = !DILocation(line: 0, scope: !1492)
!1505 = !DILocation(line: 147, column: 6, scope: !1492)
!1506 = !DILocation(line: 147, column: 41, scope: !1492)
!1507 = !DILocation(line: 147, column: 62, scope: !1492)
!1508 = !DILocation(line: 147, column: 57, scope: !1492)
!1509 = !DILocation(line: 148, column: 15, scope: !1492)
!1510 = !DILocation(line: 149, column: 21, scope: !1492)
!1511 = !DILocation(line: 149, column: 24, scope: !1492)
!1512 = !DILocation(line: 149, column: 34, scope: !1492)
!1513 = !DILocation(line: 150, column: 19, scope: !1492)
!1514 = !DILocation(line: 150, column: 24, scope: !1492)
!1515 = !DILocation(line: 150, column: 6, scope: !1492)
!1516 = !DILocation(line: 151, column: 3, scope: !1492)
!1517 = distinct !DISubprogram(name: "set_quoting_flags", scope: !442, file: !442, line: 159, type: !1518, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!67, !1458, !67}
!1520 = !{!1521, !1522, !1523}
!1521 = !DILocalVariable(name: "o", arg: 1, scope: !1517, file: !442, line: 159, type: !1458)
!1522 = !DILocalVariable(name: "i", arg: 2, scope: !1517, file: !442, line: 159, type: !67)
!1523 = !DILocalVariable(name: "r", scope: !1517, file: !442, line: 163, type: !67)
!1524 = !DILocation(line: 0, scope: !1517)
!1525 = !DILocation(line: 161, column: 8, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1517, file: !442, line: 161, column: 7)
!1527 = !DILocation(line: 161, column: 7, scope: !1517)
!1528 = !DILocation(line: 163, column: 14, scope: !1517)
!1529 = !{!1480, !821, i64 4}
!1530 = !DILocation(line: 164, column: 12, scope: !1517)
!1531 = !DILocation(line: 165, column: 3, scope: !1517)
!1532 = distinct !DISubprogram(name: "set_custom_quoting", scope: !442, file: !442, line: 169, type: !1533, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1458, !93, !93}
!1535 = !{!1536, !1537, !1538}
!1536 = !DILocalVariable(name: "o", arg: 1, scope: !1532, file: !442, line: 169, type: !1458)
!1537 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1532, file: !442, line: 170, type: !93)
!1538 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1532, file: !442, line: 170, type: !93)
!1539 = !DILocation(line: 0, scope: !1532)
!1540 = !DILocation(line: 172, column: 8, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1532, file: !442, line: 172, column: 7)
!1542 = !DILocation(line: 172, column: 7, scope: !1532)
!1543 = !DILocation(line: 174, column: 12, scope: !1532)
!1544 = !DILocation(line: 175, column: 8, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1532, file: !442, line: 175, column: 7)
!1546 = !DILocation(line: 175, column: 19, scope: !1545)
!1547 = !DILocation(line: 176, column: 5, scope: !1545)
!1548 = !DILocation(line: 177, column: 6, scope: !1532)
!1549 = !DILocation(line: 177, column: 17, scope: !1532)
!1550 = !{!1480, !763, i64 40}
!1551 = !DILocation(line: 178, column: 6, scope: !1532)
!1552 = !DILocation(line: 178, column: 18, scope: !1532)
!1553 = !{!1480, !763, i64 48}
!1554 = !DILocation(line: 179, column: 1, scope: !1532)
!1555 = !DISubprogram(name: "abort", scope: !949, file: !949, line: 598, type: !397, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !808)
!1556 = distinct !DISubprogram(name: "quotearg_buffer", scope: !442, file: !442, line: 774, type: !1557, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1559)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!90, !87, !90, !93, !90, !1472}
!1559 = !{!1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1560 = !DILocalVariable(name: "buffer", arg: 1, scope: !1556, file: !442, line: 774, type: !87)
!1561 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1556, file: !442, line: 774, type: !90)
!1562 = !DILocalVariable(name: "arg", arg: 3, scope: !1556, file: !442, line: 775, type: !93)
!1563 = !DILocalVariable(name: "argsize", arg: 4, scope: !1556, file: !442, line: 775, type: !90)
!1564 = !DILocalVariable(name: "o", arg: 5, scope: !1556, file: !442, line: 776, type: !1472)
!1565 = !DILocalVariable(name: "p", scope: !1556, file: !442, line: 778, type: !1472)
!1566 = !DILocalVariable(name: "saved_errno", scope: !1556, file: !442, line: 779, type: !67)
!1567 = !DILocalVariable(name: "r", scope: !1556, file: !442, line: 780, type: !90)
!1568 = !DILocation(line: 0, scope: !1556)
!1569 = !DILocation(line: 778, column: 37, scope: !1556)
!1570 = !DILocation(line: 779, column: 21, scope: !1556)
!1571 = !DILocation(line: 781, column: 43, scope: !1556)
!1572 = !DILocation(line: 781, column: 53, scope: !1556)
!1573 = !DILocation(line: 781, column: 63, scope: !1556)
!1574 = !DILocation(line: 782, column: 43, scope: !1556)
!1575 = !DILocation(line: 782, column: 58, scope: !1556)
!1576 = !DILocation(line: 780, column: 14, scope: !1556)
!1577 = !DILocation(line: 783, column: 9, scope: !1556)
!1578 = !DILocation(line: 784, column: 3, scope: !1556)
!1579 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !442, file: !442, line: 251, type: !1580, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1584)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!90, !87, !90, !93, !90, !468, !67, !1582, !93, !93}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1609, !1611, !1614, !1615, !1616, !1617, !1620, !1621, !1624, !1628, !1629, !1637, !1640, !1641, !1643, !1644, !1645, !1646}
!1585 = !DILocalVariable(name: "buffer", arg: 1, scope: !1579, file: !442, line: 251, type: !87)
!1586 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1579, file: !442, line: 251, type: !90)
!1587 = !DILocalVariable(name: "arg", arg: 3, scope: !1579, file: !442, line: 252, type: !93)
!1588 = !DILocalVariable(name: "argsize", arg: 4, scope: !1579, file: !442, line: 252, type: !90)
!1589 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1579, file: !442, line: 253, type: !468)
!1590 = !DILocalVariable(name: "flags", arg: 6, scope: !1579, file: !442, line: 253, type: !67)
!1591 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1579, file: !442, line: 254, type: !1582)
!1592 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1579, file: !442, line: 255, type: !93)
!1593 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1579, file: !442, line: 256, type: !93)
!1594 = !DILocalVariable(name: "unibyte_locale", scope: !1579, file: !442, line: 258, type: !129)
!1595 = !DILocalVariable(name: "len", scope: !1579, file: !442, line: 260, type: !90)
!1596 = !DILocalVariable(name: "orig_buffersize", scope: !1579, file: !442, line: 261, type: !90)
!1597 = !DILocalVariable(name: "quote_string", scope: !1579, file: !442, line: 262, type: !93)
!1598 = !DILocalVariable(name: "quote_string_len", scope: !1579, file: !442, line: 263, type: !90)
!1599 = !DILocalVariable(name: "backslash_escapes", scope: !1579, file: !442, line: 264, type: !129)
!1600 = !DILocalVariable(name: "elide_outer_quotes", scope: !1579, file: !442, line: 265, type: !129)
!1601 = !DILocalVariable(name: "encountered_single_quote", scope: !1579, file: !442, line: 266, type: !129)
!1602 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1579, file: !442, line: 267, type: !129)
!1603 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1579, file: !442, line: 309, type: !129)
!1604 = !DILocalVariable(name: "lq", scope: !1605, file: !442, line: 361, type: !93)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !442, line: 361, column: 11)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !442, line: 360, column: 13)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !442, line: 333, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 312, column: 5)
!1609 = !DILocalVariable(name: "i", scope: !1610, file: !442, line: 395, type: !90)
!1610 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 395, column: 3)
!1611 = !DILocalVariable(name: "is_right_quote", scope: !1612, file: !442, line: 397, type: !129)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !442, line: 396, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !442, line: 395, column: 3)
!1614 = !DILocalVariable(name: "escaping", scope: !1612, file: !442, line: 398, type: !129)
!1615 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1612, file: !442, line: 399, type: !129)
!1616 = !DILocalVariable(name: "c", scope: !1612, file: !442, line: 417, type: !95)
!1617 = !DILocalVariable(name: "m", scope: !1618, file: !442, line: 598, type: !90)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 596, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 419, column: 9)
!1620 = !DILocalVariable(name: "printable", scope: !1618, file: !442, line: 600, type: !129)
!1621 = !DILocalVariable(name: "mbs", scope: !1622, file: !442, line: 609, type: !529)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !442, line: 608, column: 15)
!1623 = distinct !DILexicalBlock(scope: !1618, file: !442, line: 602, column: 17)
!1624 = !DILocalVariable(name: "w", scope: !1625, file: !442, line: 618, type: !422)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !442, line: 617, column: 19)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !442, line: 616, column: 17)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !442, line: 616, column: 17)
!1628 = !DILocalVariable(name: "bytes", scope: !1625, file: !442, line: 619, type: !90)
!1629 = !DILocalVariable(name: "j", scope: !1630, file: !442, line: 648, type: !90)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !442, line: 648, column: 29)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !442, line: 647, column: 27)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !442, line: 645, column: 29)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !442, line: 636, column: 23)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !442, line: 628, column: 30)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !442, line: 623, column: 30)
!1636 = distinct !DILexicalBlock(scope: !1625, file: !442, line: 621, column: 25)
!1637 = !DILocalVariable(name: "ilim", scope: !1638, file: !442, line: 674, type: !90)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !442, line: 671, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1618, file: !442, line: 670, column: 17)
!1640 = !DILabel(scope: !1579, name: "process_input", file: !442, line: 308)
!1641 = !DILabel(scope: !1642, name: "c_and_shell_escape", file: !442, line: 502)
!1642 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 478, column: 9)
!1643 = !DILabel(scope: !1642, name: "c_escape", file: !442, line: 507)
!1644 = !DILabel(scope: !1612, name: "store_escape", file: !442, line: 709)
!1645 = !DILabel(scope: !1612, name: "store_c", file: !442, line: 712)
!1646 = !DILabel(scope: !1579, name: "force_outer_quoting_style", file: !442, line: 753)
!1647 = !DILocation(line: 0, scope: !1579)
!1648 = !DILocation(line: 258, column: 25, scope: !1579)
!1649 = !DILocation(line: 258, column: 36, scope: !1579)
!1650 = !DILocation(line: 265, column: 8, scope: !1579)
!1651 = !DILocation(line: 267, column: 3, scope: !1579)
!1652 = !DILocation(line: 261, column: 10, scope: !1579)
!1653 = !DILocation(line: 262, column: 15, scope: !1579)
!1654 = !DILocation(line: 263, column: 10, scope: !1579)
!1655 = !DILocation(line: 264, column: 8, scope: !1579)
!1656 = !DILocation(line: 266, column: 8, scope: !1579)
!1657 = !DILocation(line: 267, column: 8, scope: !1579)
!1658 = !DILocation(line: 308, column: 2, scope: !1579)
!1659 = !DILocation(line: 311, column: 3, scope: !1579)
!1660 = !DILocation(line: 318, column: 11, scope: !1608)
!1661 = !DILocation(line: 318, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1608, file: !442, line: 318, column: 11)
!1663 = !DILocation(line: 319, column: 9, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !442, line: 319, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !442, line: 319, column: 9)
!1666 = !DILocation(line: 319, column: 9, scope: !1665)
!1667 = !DILocation(line: 0, scope: !520, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 357, column: 26, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !442, line: 335, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1607, file: !442, line: 334, column: 13)
!1671 = !DILocation(line: 199, column: 29, scope: !520, inlinedAt: !1668)
!1672 = !DILocation(line: 201, column: 19, scope: !1673, inlinedAt: !1668)
!1673 = distinct !DILexicalBlock(scope: !520, file: !442, line: 201, column: 7)
!1674 = !DILocation(line: 201, column: 7, scope: !520, inlinedAt: !1668)
!1675 = !DILocation(line: 229, column: 3, scope: !520, inlinedAt: !1668)
!1676 = !DILocation(line: 230, column: 3, scope: !520, inlinedAt: !1668)
!1677 = !DILocation(line: 230, column: 13, scope: !520, inlinedAt: !1668)
!1678 = !DILocalVariable(name: "ps", arg: 1, scope: !1679, file: !1426, line: 1135, type: !1682)
!1679 = distinct !DISubprogram(name: "mbszero", scope: !1426, file: !1426, line: 1135, type: !1680, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1683)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !1682}
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1683 = !{!1678}
!1684 = !DILocation(line: 0, scope: !1679, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 230, column: 18, scope: !520, inlinedAt: !1668)
!1686 = !DILocalVariable(name: "__dest", arg: 1, scope: !1687, file: !1435, line: 57, type: !88)
!1687 = distinct !DISubprogram(name: "memset", scope: !1435, file: !1435, line: 57, type: !1436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1688)
!1688 = !{!1686, !1689, !1690}
!1689 = !DILocalVariable(name: "__ch", arg: 2, scope: !1687, file: !1435, line: 57, type: !67)
!1690 = !DILocalVariable(name: "__len", arg: 3, scope: !1687, file: !1435, line: 57, type: !90)
!1691 = !DILocation(line: 0, scope: !1687, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 1137, column: 3, scope: !1679, inlinedAt: !1685)
!1693 = !DILocation(line: 59, column: 10, scope: !1687, inlinedAt: !1692)
!1694 = !DILocation(line: 231, column: 7, scope: !1695, inlinedAt: !1668)
!1695 = distinct !DILexicalBlock(scope: !520, file: !442, line: 231, column: 7)
!1696 = !DILocation(line: 231, column: 40, scope: !1695, inlinedAt: !1668)
!1697 = !DILocation(line: 231, column: 45, scope: !1695, inlinedAt: !1668)
!1698 = !DILocation(line: 235, column: 1, scope: !520, inlinedAt: !1668)
!1699 = !DILocation(line: 0, scope: !520, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 358, column: 27, scope: !1669)
!1701 = !DILocation(line: 199, column: 29, scope: !520, inlinedAt: !1700)
!1702 = !DILocation(line: 201, column: 19, scope: !1673, inlinedAt: !1700)
!1703 = !DILocation(line: 201, column: 7, scope: !520, inlinedAt: !1700)
!1704 = !DILocation(line: 229, column: 3, scope: !520, inlinedAt: !1700)
!1705 = !DILocation(line: 230, column: 3, scope: !520, inlinedAt: !1700)
!1706 = !DILocation(line: 230, column: 13, scope: !520, inlinedAt: !1700)
!1707 = !DILocation(line: 0, scope: !1679, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 230, column: 18, scope: !520, inlinedAt: !1700)
!1709 = !DILocation(line: 0, scope: !1687, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 1137, column: 3, scope: !1679, inlinedAt: !1708)
!1711 = !DILocation(line: 59, column: 10, scope: !1687, inlinedAt: !1710)
!1712 = !DILocation(line: 231, column: 7, scope: !1695, inlinedAt: !1700)
!1713 = !DILocation(line: 231, column: 40, scope: !1695, inlinedAt: !1700)
!1714 = !DILocation(line: 231, column: 45, scope: !1695, inlinedAt: !1700)
!1715 = !DILocation(line: 235, column: 1, scope: !520, inlinedAt: !1700)
!1716 = !DILocation(line: 360, column: 14, scope: !1606)
!1717 = !DILocation(line: 360, column: 13, scope: !1607)
!1718 = !DILocation(line: 0, scope: !1605)
!1719 = !DILocation(line: 361, column: 45, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1605, file: !442, line: 361, column: 11)
!1721 = !DILocation(line: 361, column: 11, scope: !1605)
!1722 = !DILocation(line: 362, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !442, line: 362, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !442, line: 362, column: 13)
!1725 = !DILocation(line: 362, column: 13, scope: !1724)
!1726 = !DILocation(line: 361, column: 52, scope: !1720)
!1727 = distinct !{!1727, !1721, !1728, !867}
!1728 = !DILocation(line: 362, column: 13, scope: !1605)
!1729 = !DILocation(line: 260, column: 10, scope: !1579)
!1730 = !DILocation(line: 365, column: 28, scope: !1607)
!1731 = !DILocation(line: 367, column: 7, scope: !1608)
!1732 = !DILocation(line: 370, column: 7, scope: !1608)
!1733 = !DILocation(line: 373, column: 7, scope: !1608)
!1734 = !DILocation(line: 376, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1608, file: !442, line: 376, column: 11)
!1736 = !DILocation(line: 376, column: 11, scope: !1608)
!1737 = !DILocation(line: 381, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1608, file: !442, line: 381, column: 11)
!1739 = !DILocation(line: 381, column: 11, scope: !1608)
!1740 = !DILocation(line: 382, column: 9, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !442, line: 382, column: 9)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !442, line: 382, column: 9)
!1743 = !DILocation(line: 382, column: 9, scope: !1742)
!1744 = !DILocation(line: 389, column: 7, scope: !1608)
!1745 = !DILocation(line: 392, column: 7, scope: !1608)
!1746 = !DILocation(line: 0, scope: !1610)
!1747 = !DILocation(line: 395, column: 8, scope: !1610)
!1748 = !DILocation(line: 309, column: 8, scope: !1579)
!1749 = !DILocation(line: 395, scope: !1610)
!1750 = !DILocation(line: 395, column: 34, scope: !1613)
!1751 = !DILocation(line: 395, column: 26, scope: !1613)
!1752 = !DILocation(line: 395, column: 48, scope: !1613)
!1753 = !DILocation(line: 395, column: 55, scope: !1613)
!1754 = !DILocation(line: 395, column: 3, scope: !1610)
!1755 = !DILocation(line: 395, column: 67, scope: !1613)
!1756 = !DILocation(line: 0, scope: !1612)
!1757 = !DILocation(line: 402, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 401, column: 11)
!1759 = !DILocation(line: 404, column: 17, scope: !1758)
!1760 = !DILocation(line: 405, column: 39, scope: !1758)
!1761 = !DILocation(line: 409, column: 32, scope: !1758)
!1762 = !DILocation(line: 405, column: 19, scope: !1758)
!1763 = !DILocation(line: 405, column: 15, scope: !1758)
!1764 = !DILocation(line: 410, column: 11, scope: !1758)
!1765 = !DILocation(line: 410, column: 25, scope: !1758)
!1766 = !DILocalVariable(name: "__s1", arg: 1, scope: !1767, file: !833, line: 974, type: !973)
!1767 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1396, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1768)
!1768 = !{!1766, !1769, !1770}
!1769 = !DILocalVariable(name: "__s2", arg: 2, scope: !1767, file: !833, line: 974, type: !973)
!1770 = !DILocalVariable(name: "__n", arg: 3, scope: !1767, file: !833, line: 974, type: !90)
!1771 = !DILocation(line: 0, scope: !1767, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 410, column: 14, scope: !1758)
!1773 = !DILocation(line: 976, column: 11, scope: !1767, inlinedAt: !1772)
!1774 = !DILocation(line: 976, column: 10, scope: !1767, inlinedAt: !1772)
!1775 = !DILocation(line: 401, column: 11, scope: !1612)
!1776 = !DILocation(line: 417, column: 25, scope: !1612)
!1777 = !DILocation(line: 418, column: 7, scope: !1612)
!1778 = !DILocation(line: 421, column: 15, scope: !1619)
!1779 = !DILocation(line: 423, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !442, line: 423, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !442, line: 422, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 421, column: 15)
!1783 = !DILocation(line: 423, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !442, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !442, line: 423, column: 15)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !442, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !442, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1787)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !442, line: 423, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !442, line: 423, column: 15)
!1793 = !DILocation(line: 423, column: 15, scope: !1792)
!1794 = !DILocation(line: 423, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !442, line: 423, column: 15)
!1796 = distinct !DILexicalBlock(scope: !1788, file: !442, line: 423, column: 15)
!1797 = !DILocation(line: 423, column: 15, scope: !1796)
!1798 = !DILocation(line: 423, column: 15, scope: !1788)
!1799 = !DILocation(line: 423, column: 15, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !442, line: 423, column: 15)
!1801 = distinct !DILexicalBlock(scope: !1780, file: !442, line: 423, column: 15)
!1802 = !DILocation(line: 423, column: 15, scope: !1801)
!1803 = !DILocation(line: 431, column: 19, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1781, file: !442, line: 430, column: 19)
!1805 = !DILocation(line: 431, column: 24, scope: !1804)
!1806 = !DILocation(line: 431, column: 28, scope: !1804)
!1807 = !DILocation(line: 431, column: 38, scope: !1804)
!1808 = !DILocation(line: 431, column: 48, scope: !1804)
!1809 = !DILocation(line: 431, column: 59, scope: !1804)
!1810 = !DILocation(line: 433, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !442, line: 433, column: 19)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !442, line: 433, column: 19)
!1813 = distinct !DILexicalBlock(scope: !1804, file: !442, line: 432, column: 17)
!1814 = !DILocation(line: 433, column: 19, scope: !1812)
!1815 = !DILocation(line: 434, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !442, line: 434, column: 19)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !442, line: 434, column: 19)
!1818 = !DILocation(line: 434, column: 19, scope: !1817)
!1819 = !DILocation(line: 435, column: 17, scope: !1813)
!1820 = !DILocation(line: 442, column: 20, scope: !1782)
!1821 = !DILocation(line: 447, column: 11, scope: !1619)
!1822 = !DILocation(line: 450, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 448, column: 13)
!1824 = !DILocation(line: 456, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !442, line: 455, column: 19)
!1826 = !DILocation(line: 456, column: 24, scope: !1825)
!1827 = !DILocation(line: 456, column: 28, scope: !1825)
!1828 = !DILocation(line: 456, column: 38, scope: !1825)
!1829 = !DILocation(line: 456, column: 47, scope: !1825)
!1830 = !DILocation(line: 456, column: 41, scope: !1825)
!1831 = !DILocation(line: 456, column: 52, scope: !1825)
!1832 = !DILocation(line: 455, column: 19, scope: !1823)
!1833 = !DILocation(line: 457, column: 25, scope: !1825)
!1834 = !DILocation(line: 457, column: 17, scope: !1825)
!1835 = !DILocation(line: 464, column: 25, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1825, file: !442, line: 458, column: 19)
!1837 = !DILocation(line: 468, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !442, line: 468, column: 21)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !442, line: 468, column: 21)
!1840 = !DILocation(line: 468, column: 21, scope: !1839)
!1841 = !DILocation(line: 469, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !442, line: 469, column: 21)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !442, line: 469, column: 21)
!1844 = !DILocation(line: 469, column: 21, scope: !1843)
!1845 = !DILocation(line: 470, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !442, line: 470, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1836, file: !442, line: 470, column: 21)
!1848 = !DILocation(line: 470, column: 21, scope: !1847)
!1849 = !DILocation(line: 471, column: 21, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !442, line: 471, column: 21)
!1851 = distinct !DILexicalBlock(scope: !1836, file: !442, line: 471, column: 21)
!1852 = !DILocation(line: 471, column: 21, scope: !1851)
!1853 = !DILocation(line: 472, column: 21, scope: !1836)
!1854 = !DILocation(line: 482, column: 33, scope: !1642)
!1855 = !DILocation(line: 483, column: 33, scope: !1642)
!1856 = !DILocation(line: 485, column: 33, scope: !1642)
!1857 = !DILocation(line: 486, column: 33, scope: !1642)
!1858 = !DILocation(line: 487, column: 33, scope: !1642)
!1859 = !DILocation(line: 490, column: 17, scope: !1642)
!1860 = !DILocation(line: 492, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !442, line: 491, column: 15)
!1862 = distinct !DILexicalBlock(scope: !1642, file: !442, line: 490, column: 17)
!1863 = !DILocation(line: 499, column: 35, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1642, file: !442, line: 499, column: 17)
!1865 = !DILocation(line: 499, column: 57, scope: !1864)
!1866 = !DILocation(line: 0, scope: !1642)
!1867 = !DILocation(line: 502, column: 11, scope: !1642)
!1868 = !DILocation(line: 504, column: 17, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1642, file: !442, line: 503, column: 17)
!1870 = !DILocation(line: 507, column: 11, scope: !1642)
!1871 = !DILocation(line: 508, column: 17, scope: !1642)
!1872 = !DILocation(line: 517, column: 15, scope: !1619)
!1873 = !DILocation(line: 517, column: 40, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 517, column: 15)
!1875 = !DILocation(line: 517, column: 47, scope: !1874)
!1876 = !DILocation(line: 517, column: 18, scope: !1874)
!1877 = !DILocation(line: 521, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 521, column: 15)
!1879 = !DILocation(line: 521, column: 15, scope: !1619)
!1880 = !DILocation(line: 525, column: 11, scope: !1619)
!1881 = !DILocation(line: 537, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 536, column: 15)
!1883 = !DILocation(line: 544, column: 15, scope: !1619)
!1884 = !DILocation(line: 546, column: 19, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !442, line: 545, column: 13)
!1886 = distinct !DILexicalBlock(scope: !1619, file: !442, line: 544, column: 15)
!1887 = !DILocation(line: 549, column: 19, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !442, line: 549, column: 19)
!1889 = !DILocation(line: 549, column: 30, scope: !1888)
!1890 = !DILocation(line: 558, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !442, line: 558, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1885, file: !442, line: 558, column: 15)
!1893 = !DILocation(line: 558, column: 15, scope: !1892)
!1894 = !DILocation(line: 559, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !442, line: 559, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1885, file: !442, line: 559, column: 15)
!1897 = !DILocation(line: 559, column: 15, scope: !1896)
!1898 = !DILocation(line: 560, column: 15, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !442, line: 560, column: 15)
!1900 = distinct !DILexicalBlock(scope: !1885, file: !442, line: 560, column: 15)
!1901 = !DILocation(line: 560, column: 15, scope: !1900)
!1902 = !DILocation(line: 562, column: 13, scope: !1885)
!1903 = !DILocation(line: 602, column: 17, scope: !1618)
!1904 = !DILocation(line: 0, scope: !1618)
!1905 = !DILocation(line: 605, column: 29, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1623, file: !442, line: 603, column: 15)
!1907 = !DILocation(line: 605, column: 27, scope: !1906)
!1908 = !DILocation(line: 668, column: 40, scope: !1618)
!1909 = !DILocation(line: 670, column: 23, scope: !1639)
!1910 = !DILocation(line: 609, column: 17, scope: !1622)
!1911 = !DILocation(line: 609, column: 27, scope: !1622)
!1912 = !DILocation(line: 0, scope: !1679, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 609, column: 32, scope: !1622)
!1914 = !DILocation(line: 0, scope: !1687, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 1137, column: 3, scope: !1679, inlinedAt: !1913)
!1916 = !DILocation(line: 59, column: 10, scope: !1687, inlinedAt: !1915)
!1917 = !DILocation(line: 613, column: 29, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1622, file: !442, line: 613, column: 21)
!1919 = !DILocation(line: 613, column: 21, scope: !1622)
!1920 = !DILocation(line: 614, column: 29, scope: !1918)
!1921 = !DILocation(line: 614, column: 19, scope: !1918)
!1922 = !DILocation(line: 618, column: 21, scope: !1625)
!1923 = !DILocation(line: 620, column: 54, scope: !1625)
!1924 = !DILocation(line: 0, scope: !1625)
!1925 = !DILocation(line: 619, column: 36, scope: !1625)
!1926 = !DILocation(line: 621, column: 25, scope: !1625)
!1927 = !DILocation(line: 631, column: 38, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1634, file: !442, line: 629, column: 23)
!1929 = !DILocation(line: 631, column: 48, scope: !1928)
!1930 = !DILocation(line: 665, column: 19, scope: !1626)
!1931 = !DILocation(line: 666, column: 15, scope: !1623)
!1932 = !DILocation(line: 626, column: 25, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1635, file: !442, line: 624, column: 23)
!1934 = !DILocation(line: 631, column: 51, scope: !1928)
!1935 = !DILocation(line: 631, column: 25, scope: !1928)
!1936 = !DILocation(line: 632, column: 28, scope: !1928)
!1937 = !DILocation(line: 631, column: 34, scope: !1928)
!1938 = distinct !{!1938, !1935, !1936, !867}
!1939 = !DILocation(line: 646, column: 29, scope: !1632)
!1940 = !DILocation(line: 0, scope: !1630)
!1941 = !DILocation(line: 649, column: 49, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1630, file: !442, line: 648, column: 29)
!1943 = !DILocation(line: 649, column: 39, scope: !1942)
!1944 = !DILocation(line: 649, column: 31, scope: !1942)
!1945 = !DILocation(line: 648, column: 60, scope: !1942)
!1946 = !DILocation(line: 648, column: 50, scope: !1942)
!1947 = !DILocation(line: 648, column: 29, scope: !1630)
!1948 = distinct !{!1948, !1947, !1949, !867}
!1949 = !DILocation(line: 654, column: 33, scope: !1630)
!1950 = !DILocation(line: 657, column: 43, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1633, file: !442, line: 657, column: 29)
!1952 = !DILocalVariable(name: "wc", arg: 1, scope: !1953, file: !1954, line: 865, type: !1957)
!1953 = distinct !DISubprogram(name: "c32isprint", scope: !1954, file: !1954, line: 865, type: !1955, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !1959)
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
!1964 = !DILocation(line: 657, column: 29, scope: !1633)
!1965 = !DILocation(line: 664, column: 23, scope: !1625)
!1966 = !DILocation(line: 670, column: 19, scope: !1639)
!1967 = !DILocation(line: 670, column: 45, scope: !1639)
!1968 = !DILocation(line: 674, column: 33, scope: !1638)
!1969 = !DILocation(line: 0, scope: !1638)
!1970 = !DILocation(line: 676, column: 17, scope: !1638)
!1971 = !DILocation(line: 398, column: 12, scope: !1612)
!1972 = !DILocation(line: 678, column: 43, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !442, line: 678, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !442, line: 677, column: 19)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !442, line: 676, column: 17)
!1976 = distinct !DILexicalBlock(scope: !1638, file: !442, line: 676, column: 17)
!1977 = !DILocation(line: 680, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !442, line: 680, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !442, line: 679, column: 23)
!1980 = !DILocation(line: 680, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !442, line: 680, column: 25)
!1982 = !DILocation(line: 680, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !442, line: 680, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !442, line: 680, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !442, line: 680, column: 25)
!1986 = !DILocation(line: 680, column: 25, scope: !1984)
!1987 = !DILocation(line: 680, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !442, line: 680, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !442, line: 680, column: 25)
!1990 = !DILocation(line: 680, column: 25, scope: !1989)
!1991 = !DILocation(line: 680, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !442, line: 680, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !442, line: 680, column: 25)
!1994 = !DILocation(line: 680, column: 25, scope: !1993)
!1995 = !DILocation(line: 680, column: 25, scope: !1985)
!1996 = !DILocation(line: 680, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !442, line: 680, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1978, file: !442, line: 680, column: 25)
!1999 = !DILocation(line: 680, column: 25, scope: !1998)
!2000 = !DILocation(line: 681, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !442, line: 681, column: 25)
!2002 = distinct !DILexicalBlock(scope: !1979, file: !442, line: 681, column: 25)
!2003 = !DILocation(line: 681, column: 25, scope: !2002)
!2004 = !DILocation(line: 682, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !442, line: 682, column: 25)
!2006 = distinct !DILexicalBlock(scope: !1979, file: !442, line: 682, column: 25)
!2007 = !DILocation(line: 682, column: 25, scope: !2006)
!2008 = !DILocation(line: 683, column: 38, scope: !1979)
!2009 = !DILocation(line: 683, column: 33, scope: !1979)
!2010 = !DILocation(line: 684, column: 23, scope: !1979)
!2011 = !DILocation(line: 685, column: 30, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1973, file: !442, line: 685, column: 30)
!2013 = !DILocation(line: 685, column: 30, scope: !1973)
!2014 = !DILocation(line: 687, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !442, line: 687, column: 25)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !442, line: 687, column: 25)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !442, line: 686, column: 23)
!2018 = !DILocation(line: 687, column: 25, scope: !2016)
!2019 = !DILocation(line: 689, column: 23, scope: !2017)
!2020 = !DILocation(line: 690, column: 35, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1974, file: !442, line: 690, column: 25)
!2022 = !DILocation(line: 690, column: 30, scope: !2021)
!2023 = !DILocation(line: 690, column: 25, scope: !1974)
!2024 = !DILocation(line: 692, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !442, line: 692, column: 21)
!2026 = distinct !DILexicalBlock(scope: !1974, file: !442, line: 692, column: 21)
!2027 = !DILocation(line: 692, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !442, line: 692, column: 21)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !442, line: 692, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !442, line: 692, column: 21)
!2031 = !DILocation(line: 692, column: 21, scope: !2029)
!2032 = !DILocation(line: 692, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !442, line: 692, column: 21)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !442, line: 692, column: 21)
!2035 = !DILocation(line: 692, column: 21, scope: !2034)
!2036 = !DILocation(line: 692, column: 21, scope: !2030)
!2037 = !DILocation(line: 0, scope: !1974)
!2038 = !DILocation(line: 693, column: 21, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !442, line: 693, column: 21)
!2040 = distinct !DILexicalBlock(scope: !1974, file: !442, line: 693, column: 21)
!2041 = !DILocation(line: 693, column: 21, scope: !2040)
!2042 = !DILocation(line: 694, column: 25, scope: !1974)
!2043 = !DILocation(line: 676, column: 17, scope: !1975)
!2044 = distinct !{!2044, !2045, !2046}
!2045 = !DILocation(line: 676, column: 17, scope: !1976)
!2046 = !DILocation(line: 695, column: 19, scope: !1976)
!2047 = !DILocation(line: 409, column: 30, scope: !1758)
!2048 = !DILocation(line: 702, column: 34, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 702, column: 11)
!2050 = !DILocation(line: 704, column: 14, scope: !2049)
!2051 = !DILocation(line: 705, column: 14, scope: !2049)
!2052 = !DILocation(line: 705, column: 35, scope: !2049)
!2053 = !DILocation(line: 705, column: 17, scope: !2049)
!2054 = !DILocation(line: 705, column: 47, scope: !2049)
!2055 = !DILocation(line: 705, column: 65, scope: !2049)
!2056 = !DILocation(line: 706, column: 11, scope: !2049)
!2057 = !DILocation(line: 702, column: 11, scope: !1612)
!2058 = !DILocation(line: 395, column: 15, scope: !1610)
!2059 = !DILocation(line: 709, column: 5, scope: !1612)
!2060 = !DILocation(line: 710, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 710, column: 7)
!2062 = !DILocation(line: 710, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2061, file: !442, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !442, line: 710, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !442, line: 710, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !442, line: 710, column: 7)
!2068 = !DILocation(line: 710, column: 7, scope: !2066)
!2069 = !DILocation(line: 710, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !442, line: 710, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !442, line: 710, column: 7)
!2072 = !DILocation(line: 710, column: 7, scope: !2071)
!2073 = !DILocation(line: 710, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !442, line: 710, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !442, line: 710, column: 7)
!2076 = !DILocation(line: 710, column: 7, scope: !2075)
!2077 = !DILocation(line: 710, column: 7, scope: !2067)
!2078 = !DILocation(line: 710, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !442, line: 710, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2061, file: !442, line: 710, column: 7)
!2081 = !DILocation(line: 710, column: 7, scope: !2080)
!2082 = !DILocation(line: 712, column: 5, scope: !1612)
!2083 = !DILocation(line: 713, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !442, line: 713, column: 7)
!2085 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 713, column: 7)
!2086 = !DILocation(line: 417, column: 21, scope: !1612)
!2087 = !DILocation(line: 713, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !442, line: 713, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !442, line: 713, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2084, file: !442, line: 713, column: 7)
!2091 = !DILocation(line: 713, column: 7, scope: !2089)
!2092 = !DILocation(line: 713, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !442, line: 713, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !442, line: 713, column: 7)
!2095 = !DILocation(line: 713, column: 7, scope: !2094)
!2096 = !DILocation(line: 713, column: 7, scope: !2090)
!2097 = !DILocation(line: 714, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !442, line: 714, column: 7)
!2099 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 714, column: 7)
!2100 = !DILocation(line: 714, column: 7, scope: !2099)
!2101 = !DILocation(line: 716, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1612, file: !442, line: 716, column: 11)
!2103 = !DILocation(line: 716, column: 11, scope: !1612)
!2104 = !DILocation(line: 718, column: 5, scope: !1613)
!2105 = !DILocation(line: 395, column: 82, scope: !1613)
!2106 = !DILocation(line: 395, column: 3, scope: !1613)
!2107 = distinct !{!2107, !1754, !2108, !867}
!2108 = !DILocation(line: 718, column: 5, scope: !1610)
!2109 = !DILocation(line: 720, column: 11, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 720, column: 7)
!2111 = !DILocation(line: 720, column: 16, scope: !2110)
!2112 = !DILocation(line: 728, column: 51, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 728, column: 7)
!2114 = !DILocation(line: 731, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !442, line: 731, column: 11)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !442, line: 730, column: 5)
!2117 = !DILocation(line: 731, column: 11, scope: !2116)
!2118 = !DILocation(line: 732, column: 16, scope: !2115)
!2119 = !DILocation(line: 732, column: 9, scope: !2115)
!2120 = !DILocation(line: 736, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2115, file: !442, line: 736, column: 16)
!2122 = !DILocation(line: 736, column: 29, scope: !2121)
!2123 = !DILocation(line: 745, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 745, column: 7)
!2125 = !DILocation(line: 745, column: 20, scope: !2124)
!2126 = !DILocation(line: 746, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !442, line: 746, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !442, line: 746, column: 5)
!2129 = !DILocation(line: 746, column: 5, scope: !2128)
!2130 = !DILocation(line: 747, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !442, line: 747, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !442, line: 747, column: 7)
!2133 = !DILocation(line: 747, column: 7, scope: !2132)
!2134 = !DILocation(line: 746, column: 39, scope: !2127)
!2135 = distinct !{!2135, !2129, !2136, !867}
!2136 = !DILocation(line: 747, column: 7, scope: !2128)
!2137 = !DILocation(line: 749, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 749, column: 7)
!2139 = !DILocation(line: 749, column: 7, scope: !1579)
!2140 = !DILocation(line: 750, column: 5, scope: !2138)
!2141 = !DILocation(line: 750, column: 17, scope: !2138)
!2142 = !DILocation(line: 753, column: 2, scope: !1579)
!2143 = !DILocation(line: 756, column: 51, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1579, file: !442, line: 756, column: 7)
!2145 = !DILocation(line: 756, column: 21, scope: !2144)
!2146 = !DILocation(line: 760, column: 42, scope: !1579)
!2147 = !DILocation(line: 758, column: 10, scope: !1579)
!2148 = !DILocation(line: 758, column: 3, scope: !1579)
!2149 = !DILocation(line: 762, column: 1, scope: !1579)
!2150 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !949, file: !949, line: 98, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!90}
!2153 = !DISubprogram(name: "strlen", scope: !941, file: !941, line: 407, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!92, !93}
!2156 = !DISubprogram(name: "iswprint", scope: !2157, file: !2157, line: 120, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!2157 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2158 = distinct !DISubprogram(name: "quotearg_alloc", scope: !442, file: !442, line: 788, type: !2159, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!87, !93, !90, !1472}
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "arg", arg: 1, scope: !2158, file: !442, line: 788, type: !93)
!2163 = !DILocalVariable(name: "argsize", arg: 2, scope: !2158, file: !442, line: 788, type: !90)
!2164 = !DILocalVariable(name: "o", arg: 3, scope: !2158, file: !442, line: 789, type: !1472)
!2165 = !DILocation(line: 0, scope: !2158)
!2166 = !DILocalVariable(name: "arg", arg: 1, scope: !2167, file: !442, line: 801, type: !93)
!2167 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !442, file: !442, line: 801, type: !2168, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!87, !93, !90, !696, !1472}
!2170 = !{!2166, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178}
!2171 = !DILocalVariable(name: "argsize", arg: 2, scope: !2167, file: !442, line: 801, type: !90)
!2172 = !DILocalVariable(name: "size", arg: 3, scope: !2167, file: !442, line: 801, type: !696)
!2173 = !DILocalVariable(name: "o", arg: 4, scope: !2167, file: !442, line: 802, type: !1472)
!2174 = !DILocalVariable(name: "p", scope: !2167, file: !442, line: 804, type: !1472)
!2175 = !DILocalVariable(name: "saved_errno", scope: !2167, file: !442, line: 805, type: !67)
!2176 = !DILocalVariable(name: "flags", scope: !2167, file: !442, line: 807, type: !67)
!2177 = !DILocalVariable(name: "bufsize", scope: !2167, file: !442, line: 808, type: !90)
!2178 = !DILocalVariable(name: "buf", scope: !2167, file: !442, line: 812, type: !87)
!2179 = !DILocation(line: 0, scope: !2167, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 791, column: 10, scope: !2158)
!2181 = !DILocation(line: 804, column: 37, scope: !2167, inlinedAt: !2180)
!2182 = !DILocation(line: 805, column: 21, scope: !2167, inlinedAt: !2180)
!2183 = !DILocation(line: 807, column: 18, scope: !2167, inlinedAt: !2180)
!2184 = !DILocation(line: 807, column: 24, scope: !2167, inlinedAt: !2180)
!2185 = !DILocation(line: 808, column: 72, scope: !2167, inlinedAt: !2180)
!2186 = !DILocation(line: 809, column: 56, scope: !2167, inlinedAt: !2180)
!2187 = !DILocation(line: 810, column: 49, scope: !2167, inlinedAt: !2180)
!2188 = !DILocation(line: 811, column: 49, scope: !2167, inlinedAt: !2180)
!2189 = !DILocation(line: 808, column: 20, scope: !2167, inlinedAt: !2180)
!2190 = !DILocation(line: 811, column: 62, scope: !2167, inlinedAt: !2180)
!2191 = !DILocation(line: 812, column: 15, scope: !2167, inlinedAt: !2180)
!2192 = !DILocation(line: 813, column: 60, scope: !2167, inlinedAt: !2180)
!2193 = !DILocation(line: 815, column: 32, scope: !2167, inlinedAt: !2180)
!2194 = !DILocation(line: 815, column: 47, scope: !2167, inlinedAt: !2180)
!2195 = !DILocation(line: 813, column: 3, scope: !2167, inlinedAt: !2180)
!2196 = !DILocation(line: 816, column: 9, scope: !2167, inlinedAt: !2180)
!2197 = !DILocation(line: 791, column: 3, scope: !2158)
!2198 = !DILocation(line: 0, scope: !2167)
!2199 = !DILocation(line: 804, column: 37, scope: !2167)
!2200 = !DILocation(line: 805, column: 21, scope: !2167)
!2201 = !DILocation(line: 807, column: 18, scope: !2167)
!2202 = !DILocation(line: 807, column: 27, scope: !2167)
!2203 = !DILocation(line: 807, column: 24, scope: !2167)
!2204 = !DILocation(line: 808, column: 72, scope: !2167)
!2205 = !DILocation(line: 809, column: 56, scope: !2167)
!2206 = !DILocation(line: 810, column: 49, scope: !2167)
!2207 = !DILocation(line: 811, column: 49, scope: !2167)
!2208 = !DILocation(line: 808, column: 20, scope: !2167)
!2209 = !DILocation(line: 811, column: 62, scope: !2167)
!2210 = !DILocation(line: 812, column: 15, scope: !2167)
!2211 = !DILocation(line: 813, column: 60, scope: !2167)
!2212 = !DILocation(line: 815, column: 32, scope: !2167)
!2213 = !DILocation(line: 815, column: 47, scope: !2167)
!2214 = !DILocation(line: 813, column: 3, scope: !2167)
!2215 = !DILocation(line: 816, column: 9, scope: !2167)
!2216 = !DILocation(line: 817, column: 7, scope: !2167)
!2217 = !DILocation(line: 818, column: 11, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2167, file: !442, line: 817, column: 7)
!2219 = !{!1284, !1284, i64 0}
!2220 = !DILocation(line: 818, column: 5, scope: !2218)
!2221 = !DILocation(line: 819, column: 3, scope: !2167)
!2222 = distinct !DISubprogram(name: "quotearg_free", scope: !442, file: !442, line: 837, type: !397, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2223)
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "sv", scope: !2222, file: !442, line: 839, type: !543)
!2225 = !DILocalVariable(name: "i", scope: !2226, file: !442, line: 840, type: !67)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !442, line: 840, column: 3)
!2227 = !DILocation(line: 839, column: 24, scope: !2222)
!2228 = !DILocation(line: 0, scope: !2222)
!2229 = !DILocation(line: 0, scope: !2226)
!2230 = !DILocation(line: 840, column: 21, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !442, line: 840, column: 3)
!2232 = !DILocation(line: 840, column: 3, scope: !2226)
!2233 = !DILocation(line: 842, column: 13, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !442, line: 842, column: 7)
!2235 = !{!2236, !763, i64 8}
!2236 = !{!"slotvec", !1284, i64 0, !763, i64 8}
!2237 = !DILocation(line: 842, column: 17, scope: !2234)
!2238 = !DILocation(line: 842, column: 7, scope: !2222)
!2239 = !DILocation(line: 841, column: 17, scope: !2231)
!2240 = !DILocation(line: 841, column: 5, scope: !2231)
!2241 = !DILocation(line: 840, column: 32, scope: !2231)
!2242 = distinct !{!2242, !2232, !2243, !867}
!2243 = !DILocation(line: 841, column: 20, scope: !2226)
!2244 = !DILocation(line: 844, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2234, file: !442, line: 843, column: 5)
!2246 = !DILocation(line: 845, column: 21, scope: !2245)
!2247 = !{!2236, !1284, i64 0}
!2248 = !DILocation(line: 846, column: 20, scope: !2245)
!2249 = !DILocation(line: 847, column: 5, scope: !2245)
!2250 = !DILocation(line: 848, column: 10, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2222, file: !442, line: 848, column: 7)
!2252 = !DILocation(line: 848, column: 7, scope: !2222)
!2253 = !DILocation(line: 850, column: 7, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2251, file: !442, line: 849, column: 5)
!2255 = !DILocation(line: 851, column: 15, scope: !2254)
!2256 = !DILocation(line: 852, column: 5, scope: !2254)
!2257 = !DILocation(line: 853, column: 10, scope: !2222)
!2258 = !DILocation(line: 854, column: 1, scope: !2222)
!2259 = !DISubprogram(name: "free", scope: !1426, file: !1426, line: 786, type: !2260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !88}
!2262 = distinct !DISubprogram(name: "quotearg_n", scope: !442, file: !442, line: 919, type: !938, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2263)
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "n", arg: 1, scope: !2262, file: !442, line: 919, type: !67)
!2265 = !DILocalVariable(name: "arg", arg: 2, scope: !2262, file: !442, line: 919, type: !93)
!2266 = !DILocation(line: 0, scope: !2262)
!2267 = !DILocation(line: 921, column: 10, scope: !2262)
!2268 = !DILocation(line: 921, column: 3, scope: !2262)
!2269 = distinct !DISubprogram(name: "quotearg_n_options", scope: !442, file: !442, line: 866, type: !2270, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!87, !67, !93, !90, !1472}
!2272 = !{!2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2283, !2284, !2286, !2287, !2288}
!2273 = !DILocalVariable(name: "n", arg: 1, scope: !2269, file: !442, line: 866, type: !67)
!2274 = !DILocalVariable(name: "arg", arg: 2, scope: !2269, file: !442, line: 866, type: !93)
!2275 = !DILocalVariable(name: "argsize", arg: 3, scope: !2269, file: !442, line: 866, type: !90)
!2276 = !DILocalVariable(name: "options", arg: 4, scope: !2269, file: !442, line: 867, type: !1472)
!2277 = !DILocalVariable(name: "saved_errno", scope: !2269, file: !442, line: 869, type: !67)
!2278 = !DILocalVariable(name: "sv", scope: !2269, file: !442, line: 871, type: !543)
!2279 = !DILocalVariable(name: "nslots_max", scope: !2269, file: !442, line: 873, type: !67)
!2280 = !DILocalVariable(name: "preallocated", scope: !2281, file: !442, line: 879, type: !129)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !442, line: 878, column: 5)
!2282 = distinct !DILexicalBlock(scope: !2269, file: !442, line: 877, column: 7)
!2283 = !DILocalVariable(name: "new_nslots", scope: !2281, file: !442, line: 880, type: !709)
!2284 = !DILocalVariable(name: "size", scope: !2285, file: !442, line: 891, type: !90)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !442, line: 890, column: 3)
!2286 = !DILocalVariable(name: "val", scope: !2285, file: !442, line: 892, type: !87)
!2287 = !DILocalVariable(name: "flags", scope: !2285, file: !442, line: 894, type: !67)
!2288 = !DILocalVariable(name: "qsize", scope: !2285, file: !442, line: 895, type: !90)
!2289 = !DILocation(line: 0, scope: !2269)
!2290 = !DILocation(line: 869, column: 21, scope: !2269)
!2291 = !DILocation(line: 871, column: 24, scope: !2269)
!2292 = !DILocation(line: 874, column: 17, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2269, file: !442, line: 874, column: 7)
!2294 = !DILocation(line: 875, column: 5, scope: !2293)
!2295 = !DILocation(line: 877, column: 7, scope: !2282)
!2296 = !DILocation(line: 877, column: 14, scope: !2282)
!2297 = !DILocation(line: 877, column: 7, scope: !2269)
!2298 = !DILocation(line: 879, column: 31, scope: !2281)
!2299 = !DILocation(line: 0, scope: !2281)
!2300 = !DILocation(line: 880, column: 7, scope: !2281)
!2301 = !DILocation(line: 880, column: 26, scope: !2281)
!2302 = !DILocation(line: 880, column: 13, scope: !2281)
!2303 = !DILocation(line: 882, column: 31, scope: !2281)
!2304 = !DILocation(line: 883, column: 33, scope: !2281)
!2305 = !DILocation(line: 883, column: 42, scope: !2281)
!2306 = !DILocation(line: 883, column: 31, scope: !2281)
!2307 = !DILocation(line: 882, column: 22, scope: !2281)
!2308 = !DILocation(line: 882, column: 15, scope: !2281)
!2309 = !DILocation(line: 884, column: 11, scope: !2281)
!2310 = !DILocation(line: 885, column: 15, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2281, file: !442, line: 884, column: 11)
!2312 = !{i64 0, i64 8, !2219, i64 8, i64 8, !762}
!2313 = !DILocation(line: 885, column: 9, scope: !2311)
!2314 = !DILocation(line: 886, column: 20, scope: !2281)
!2315 = !DILocation(line: 886, column: 18, scope: !2281)
!2316 = !DILocation(line: 886, column: 32, scope: !2281)
!2317 = !DILocation(line: 886, column: 43, scope: !2281)
!2318 = !DILocation(line: 886, column: 53, scope: !2281)
!2319 = !DILocation(line: 0, scope: !1687, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 886, column: 7, scope: !2281)
!2321 = !DILocation(line: 59, column: 10, scope: !1687, inlinedAt: !2320)
!2322 = !DILocation(line: 887, column: 16, scope: !2281)
!2323 = !DILocation(line: 887, column: 14, scope: !2281)
!2324 = !DILocation(line: 888, column: 5, scope: !2282)
!2325 = !DILocation(line: 888, column: 5, scope: !2281)
!2326 = !DILocation(line: 891, column: 19, scope: !2285)
!2327 = !DILocation(line: 891, column: 25, scope: !2285)
!2328 = !DILocation(line: 0, scope: !2285)
!2329 = !DILocation(line: 892, column: 23, scope: !2285)
!2330 = !DILocation(line: 894, column: 26, scope: !2285)
!2331 = !DILocation(line: 894, column: 32, scope: !2285)
!2332 = !DILocation(line: 896, column: 55, scope: !2285)
!2333 = !DILocation(line: 897, column: 55, scope: !2285)
!2334 = !DILocation(line: 898, column: 55, scope: !2285)
!2335 = !DILocation(line: 899, column: 55, scope: !2285)
!2336 = !DILocation(line: 895, column: 20, scope: !2285)
!2337 = !DILocation(line: 901, column: 14, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2285, file: !442, line: 901, column: 9)
!2339 = !DILocation(line: 901, column: 9, scope: !2285)
!2340 = !DILocation(line: 903, column: 35, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !442, line: 902, column: 7)
!2342 = !DILocation(line: 903, column: 20, scope: !2341)
!2343 = !DILocation(line: 904, column: 17, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2341, file: !442, line: 904, column: 13)
!2345 = !DILocation(line: 904, column: 13, scope: !2341)
!2346 = !DILocation(line: 905, column: 11, scope: !2344)
!2347 = !DILocation(line: 906, column: 27, scope: !2341)
!2348 = !DILocation(line: 906, column: 19, scope: !2341)
!2349 = !DILocation(line: 907, column: 69, scope: !2341)
!2350 = !DILocation(line: 909, column: 44, scope: !2341)
!2351 = !DILocation(line: 910, column: 44, scope: !2341)
!2352 = !DILocation(line: 907, column: 9, scope: !2341)
!2353 = !DILocation(line: 911, column: 7, scope: !2341)
!2354 = !DILocation(line: 913, column: 11, scope: !2285)
!2355 = !DILocation(line: 914, column: 5, scope: !2285)
!2356 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !442, file: !442, line: 925, type: !2357, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!87, !67, !93, !90}
!2359 = !{!2360, !2361, !2362}
!2360 = !DILocalVariable(name: "n", arg: 1, scope: !2356, file: !442, line: 925, type: !67)
!2361 = !DILocalVariable(name: "arg", arg: 2, scope: !2356, file: !442, line: 925, type: !93)
!2362 = !DILocalVariable(name: "argsize", arg: 3, scope: !2356, file: !442, line: 925, type: !90)
!2363 = !DILocation(line: 0, scope: !2356)
!2364 = !DILocation(line: 927, column: 10, scope: !2356)
!2365 = !DILocation(line: 927, column: 3, scope: !2356)
!2366 = distinct !DISubprogram(name: "quotearg", scope: !442, file: !442, line: 931, type: !951, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2367)
!2367 = !{!2368}
!2368 = !DILocalVariable(name: "arg", arg: 1, scope: !2366, file: !442, line: 931, type: !93)
!2369 = !DILocation(line: 0, scope: !2366)
!2370 = !DILocation(line: 0, scope: !2262, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 933, column: 10, scope: !2366)
!2372 = !DILocation(line: 921, column: 10, scope: !2262, inlinedAt: !2371)
!2373 = !DILocation(line: 933, column: 3, scope: !2366)
!2374 = distinct !DISubprogram(name: "quotearg_mem", scope: !442, file: !442, line: 937, type: !2375, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!87, !93, !90}
!2377 = !{!2378, !2379}
!2378 = !DILocalVariable(name: "arg", arg: 1, scope: !2374, file: !442, line: 937, type: !93)
!2379 = !DILocalVariable(name: "argsize", arg: 2, scope: !2374, file: !442, line: 937, type: !90)
!2380 = !DILocation(line: 0, scope: !2374)
!2381 = !DILocation(line: 0, scope: !2356, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 939, column: 10, scope: !2374)
!2383 = !DILocation(line: 927, column: 10, scope: !2356, inlinedAt: !2382)
!2384 = !DILocation(line: 939, column: 3, scope: !2374)
!2385 = distinct !DISubprogram(name: "quotearg_n_style", scope: !442, file: !442, line: 943, type: !2386, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!87, !67, !468, !93}
!2388 = !{!2389, !2390, !2391, !2392}
!2389 = !DILocalVariable(name: "n", arg: 1, scope: !2385, file: !442, line: 943, type: !67)
!2390 = !DILocalVariable(name: "s", arg: 2, scope: !2385, file: !442, line: 943, type: !468)
!2391 = !DILocalVariable(name: "arg", arg: 3, scope: !2385, file: !442, line: 943, type: !93)
!2392 = !DILocalVariable(name: "o", scope: !2385, file: !442, line: 945, type: !1473)
!2393 = !DILocation(line: 0, scope: !2385)
!2394 = !DILocation(line: 945, column: 3, scope: !2385)
!2395 = !DILocation(line: 945, column: 32, scope: !2385)
!2396 = !{!2397}
!2397 = distinct !{!2397, !2398, !"quoting_options_from_style: argument 0"}
!2398 = distinct !{!2398, !"quoting_options_from_style"}
!2399 = !DILocation(line: 945, column: 36, scope: !2385)
!2400 = !DILocalVariable(name: "style", arg: 1, scope: !2401, file: !442, line: 183, type: !468)
!2401 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !442, file: !442, line: 183, type: !2402, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!495, !468}
!2404 = !{!2400, !2405}
!2405 = !DILocalVariable(name: "o", scope: !2401, file: !442, line: 185, type: !495)
!2406 = !DILocation(line: 0, scope: !2401, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 945, column: 36, scope: !2385)
!2408 = !DILocation(line: 185, column: 26, scope: !2401, inlinedAt: !2407)
!2409 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2407)
!2410 = distinct !DILexicalBlock(scope: !2401, file: !442, line: 186, column: 7)
!2411 = !DILocation(line: 186, column: 7, scope: !2401, inlinedAt: !2407)
!2412 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2407)
!2413 = !DILocation(line: 188, column: 11, scope: !2401, inlinedAt: !2407)
!2414 = !DILocation(line: 946, column: 10, scope: !2385)
!2415 = !DILocation(line: 947, column: 1, scope: !2385)
!2416 = !DILocation(line: 946, column: 3, scope: !2385)
!2417 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !442, file: !442, line: 950, type: !2418, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!87, !67, !468, !93, !90}
!2420 = !{!2421, !2422, !2423, !2424, !2425}
!2421 = !DILocalVariable(name: "n", arg: 1, scope: !2417, file: !442, line: 950, type: !67)
!2422 = !DILocalVariable(name: "s", arg: 2, scope: !2417, file: !442, line: 950, type: !468)
!2423 = !DILocalVariable(name: "arg", arg: 3, scope: !2417, file: !442, line: 951, type: !93)
!2424 = !DILocalVariable(name: "argsize", arg: 4, scope: !2417, file: !442, line: 951, type: !90)
!2425 = !DILocalVariable(name: "o", scope: !2417, file: !442, line: 953, type: !1473)
!2426 = !DILocation(line: 0, scope: !2417)
!2427 = !DILocation(line: 953, column: 3, scope: !2417)
!2428 = !DILocation(line: 953, column: 32, scope: !2417)
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"quoting_options_from_style: argument 0"}
!2431 = distinct !{!2431, !"quoting_options_from_style"}
!2432 = !DILocation(line: 953, column: 36, scope: !2417)
!2433 = !DILocation(line: 0, scope: !2401, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 953, column: 36, scope: !2417)
!2435 = !DILocation(line: 185, column: 26, scope: !2401, inlinedAt: !2434)
!2436 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2434)
!2437 = !DILocation(line: 186, column: 7, scope: !2401, inlinedAt: !2434)
!2438 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2434)
!2439 = !DILocation(line: 188, column: 11, scope: !2401, inlinedAt: !2434)
!2440 = !DILocation(line: 954, column: 10, scope: !2417)
!2441 = !DILocation(line: 955, column: 1, scope: !2417)
!2442 = !DILocation(line: 954, column: 3, scope: !2417)
!2443 = distinct !DISubprogram(name: "quotearg_style", scope: !442, file: !442, line: 958, type: !2444, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!87, !468, !93}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "s", arg: 1, scope: !2443, file: !442, line: 958, type: !468)
!2448 = !DILocalVariable(name: "arg", arg: 2, scope: !2443, file: !442, line: 958, type: !93)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 0, scope: !2385, inlinedAt: !2451)
!2451 = distinct !DILocation(line: 960, column: 10, scope: !2443)
!2452 = !DILocation(line: 945, column: 3, scope: !2385, inlinedAt: !2451)
!2453 = !DILocation(line: 945, column: 32, scope: !2385, inlinedAt: !2451)
!2454 = !{!2455}
!2455 = distinct !{!2455, !2456, !"quoting_options_from_style: argument 0"}
!2456 = distinct !{!2456, !"quoting_options_from_style"}
!2457 = !DILocation(line: 945, column: 36, scope: !2385, inlinedAt: !2451)
!2458 = !DILocation(line: 0, scope: !2401, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 945, column: 36, scope: !2385, inlinedAt: !2451)
!2460 = !DILocation(line: 185, column: 26, scope: !2401, inlinedAt: !2459)
!2461 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2459)
!2462 = !DILocation(line: 186, column: 7, scope: !2401, inlinedAt: !2459)
!2463 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2459)
!2464 = !DILocation(line: 188, column: 11, scope: !2401, inlinedAt: !2459)
!2465 = !DILocation(line: 946, column: 10, scope: !2385, inlinedAt: !2451)
!2466 = !DILocation(line: 947, column: 1, scope: !2385, inlinedAt: !2451)
!2467 = !DILocation(line: 960, column: 3, scope: !2443)
!2468 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !442, file: !442, line: 964, type: !2469, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!87, !468, !93, !90}
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "s", arg: 1, scope: !2468, file: !442, line: 964, type: !468)
!2473 = !DILocalVariable(name: "arg", arg: 2, scope: !2468, file: !442, line: 964, type: !93)
!2474 = !DILocalVariable(name: "argsize", arg: 3, scope: !2468, file: !442, line: 964, type: !90)
!2475 = !DILocation(line: 0, scope: !2468)
!2476 = !DILocation(line: 0, scope: !2417, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 966, column: 10, scope: !2468)
!2478 = !DILocation(line: 953, column: 3, scope: !2417, inlinedAt: !2477)
!2479 = !DILocation(line: 953, column: 32, scope: !2417, inlinedAt: !2477)
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"quoting_options_from_style: argument 0"}
!2482 = distinct !{!2482, !"quoting_options_from_style"}
!2483 = !DILocation(line: 953, column: 36, scope: !2417, inlinedAt: !2477)
!2484 = !DILocation(line: 0, scope: !2401, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 953, column: 36, scope: !2417, inlinedAt: !2477)
!2486 = !DILocation(line: 185, column: 26, scope: !2401, inlinedAt: !2485)
!2487 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2485)
!2488 = !DILocation(line: 186, column: 7, scope: !2401, inlinedAt: !2485)
!2489 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2485)
!2490 = !DILocation(line: 188, column: 11, scope: !2401, inlinedAt: !2485)
!2491 = !DILocation(line: 954, column: 10, scope: !2417, inlinedAt: !2477)
!2492 = !DILocation(line: 955, column: 1, scope: !2417, inlinedAt: !2477)
!2493 = !DILocation(line: 966, column: 3, scope: !2468)
!2494 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !442, file: !442, line: 970, type: !2495, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!87, !93, !90, !4}
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DILocalVariable(name: "arg", arg: 1, scope: !2494, file: !442, line: 970, type: !93)
!2499 = !DILocalVariable(name: "argsize", arg: 2, scope: !2494, file: !442, line: 970, type: !90)
!2500 = !DILocalVariable(name: "ch", arg: 3, scope: !2494, file: !442, line: 970, type: !4)
!2501 = !DILocalVariable(name: "options", scope: !2494, file: !442, line: 972, type: !495)
!2502 = !DILocation(line: 0, scope: !2494)
!2503 = !DILocation(line: 972, column: 3, scope: !2494)
!2504 = !DILocation(line: 972, column: 26, scope: !2494)
!2505 = !DILocation(line: 973, column: 13, scope: !2494)
!2506 = !{i64 0, i64 4, !829, i64 4, i64 4, !820, i64 8, i64 32, !829, i64 40, i64 8, !762, i64 48, i64 8, !762}
!2507 = !DILocation(line: 0, scope: !1492, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 974, column: 3, scope: !2494)
!2509 = !DILocation(line: 147, column: 41, scope: !1492, inlinedAt: !2508)
!2510 = !DILocation(line: 147, column: 62, scope: !1492, inlinedAt: !2508)
!2511 = !DILocation(line: 147, column: 57, scope: !1492, inlinedAt: !2508)
!2512 = !DILocation(line: 148, column: 15, scope: !1492, inlinedAt: !2508)
!2513 = !DILocation(line: 149, column: 21, scope: !1492, inlinedAt: !2508)
!2514 = !DILocation(line: 149, column: 24, scope: !1492, inlinedAt: !2508)
!2515 = !DILocation(line: 150, column: 19, scope: !1492, inlinedAt: !2508)
!2516 = !DILocation(line: 150, column: 24, scope: !1492, inlinedAt: !2508)
!2517 = !DILocation(line: 150, column: 6, scope: !1492, inlinedAt: !2508)
!2518 = !DILocation(line: 975, column: 10, scope: !2494)
!2519 = !DILocation(line: 976, column: 1, scope: !2494)
!2520 = !DILocation(line: 975, column: 3, scope: !2494)
!2521 = distinct !DISubprogram(name: "quotearg_char", scope: !442, file: !442, line: 979, type: !2522, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!87, !93, !4}
!2524 = !{!2525, !2526}
!2525 = !DILocalVariable(name: "arg", arg: 1, scope: !2521, file: !442, line: 979, type: !93)
!2526 = !DILocalVariable(name: "ch", arg: 2, scope: !2521, file: !442, line: 979, type: !4)
!2527 = !DILocation(line: 0, scope: !2521)
!2528 = !DILocation(line: 0, scope: !2494, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 981, column: 10, scope: !2521)
!2530 = !DILocation(line: 972, column: 3, scope: !2494, inlinedAt: !2529)
!2531 = !DILocation(line: 972, column: 26, scope: !2494, inlinedAt: !2529)
!2532 = !DILocation(line: 973, column: 13, scope: !2494, inlinedAt: !2529)
!2533 = !DILocation(line: 0, scope: !1492, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 974, column: 3, scope: !2494, inlinedAt: !2529)
!2535 = !DILocation(line: 147, column: 41, scope: !1492, inlinedAt: !2534)
!2536 = !DILocation(line: 147, column: 62, scope: !1492, inlinedAt: !2534)
!2537 = !DILocation(line: 147, column: 57, scope: !1492, inlinedAt: !2534)
!2538 = !DILocation(line: 148, column: 15, scope: !1492, inlinedAt: !2534)
!2539 = !DILocation(line: 149, column: 21, scope: !1492, inlinedAt: !2534)
!2540 = !DILocation(line: 149, column: 24, scope: !1492, inlinedAt: !2534)
!2541 = !DILocation(line: 150, column: 19, scope: !1492, inlinedAt: !2534)
!2542 = !DILocation(line: 150, column: 24, scope: !1492, inlinedAt: !2534)
!2543 = !DILocation(line: 150, column: 6, scope: !1492, inlinedAt: !2534)
!2544 = !DILocation(line: 975, column: 10, scope: !2494, inlinedAt: !2529)
!2545 = !DILocation(line: 976, column: 1, scope: !2494, inlinedAt: !2529)
!2546 = !DILocation(line: 981, column: 3, scope: !2521)
!2547 = distinct !DISubprogram(name: "quotearg_colon", scope: !442, file: !442, line: 985, type: !951, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2548)
!2548 = !{!2549}
!2549 = !DILocalVariable(name: "arg", arg: 1, scope: !2547, file: !442, line: 985, type: !93)
!2550 = !DILocation(line: 0, scope: !2547)
!2551 = !DILocation(line: 0, scope: !2521, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 987, column: 10, scope: !2547)
!2553 = !DILocation(line: 0, scope: !2494, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 981, column: 10, scope: !2521, inlinedAt: !2552)
!2555 = !DILocation(line: 972, column: 3, scope: !2494, inlinedAt: !2554)
!2556 = !DILocation(line: 972, column: 26, scope: !2494, inlinedAt: !2554)
!2557 = !DILocation(line: 973, column: 13, scope: !2494, inlinedAt: !2554)
!2558 = !DILocation(line: 0, scope: !1492, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 974, column: 3, scope: !2494, inlinedAt: !2554)
!2560 = !DILocation(line: 147, column: 57, scope: !1492, inlinedAt: !2559)
!2561 = !DILocation(line: 149, column: 21, scope: !1492, inlinedAt: !2559)
!2562 = !DILocation(line: 150, column: 6, scope: !1492, inlinedAt: !2559)
!2563 = !DILocation(line: 975, column: 10, scope: !2494, inlinedAt: !2554)
!2564 = !DILocation(line: 976, column: 1, scope: !2494, inlinedAt: !2554)
!2565 = !DILocation(line: 987, column: 3, scope: !2547)
!2566 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !442, file: !442, line: 991, type: !2375, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2567)
!2567 = !{!2568, !2569}
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2566, file: !442, line: 991, type: !93)
!2569 = !DILocalVariable(name: "argsize", arg: 2, scope: !2566, file: !442, line: 991, type: !90)
!2570 = !DILocation(line: 0, scope: !2566)
!2571 = !DILocation(line: 0, scope: !2494, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 993, column: 10, scope: !2566)
!2573 = !DILocation(line: 972, column: 3, scope: !2494, inlinedAt: !2572)
!2574 = !DILocation(line: 972, column: 26, scope: !2494, inlinedAt: !2572)
!2575 = !DILocation(line: 973, column: 13, scope: !2494, inlinedAt: !2572)
!2576 = !DILocation(line: 0, scope: !1492, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 974, column: 3, scope: !2494, inlinedAt: !2572)
!2578 = !DILocation(line: 147, column: 57, scope: !1492, inlinedAt: !2577)
!2579 = !DILocation(line: 149, column: 21, scope: !1492, inlinedAt: !2577)
!2580 = !DILocation(line: 150, column: 6, scope: !1492, inlinedAt: !2577)
!2581 = !DILocation(line: 975, column: 10, scope: !2494, inlinedAt: !2572)
!2582 = !DILocation(line: 976, column: 1, scope: !2494, inlinedAt: !2572)
!2583 = !DILocation(line: 993, column: 3, scope: !2566)
!2584 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !442, file: !442, line: 997, type: !2386, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2584, file: !442, line: 997, type: !67)
!2587 = !DILocalVariable(name: "s", arg: 2, scope: !2584, file: !442, line: 997, type: !468)
!2588 = !DILocalVariable(name: "arg", arg: 3, scope: !2584, file: !442, line: 997, type: !93)
!2589 = !DILocalVariable(name: "options", scope: !2584, file: !442, line: 999, type: !495)
!2590 = !DILocation(line: 185, column: 26, scope: !2401, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1000, column: 13, scope: !2584)
!2592 = !DILocation(line: 0, scope: !2584)
!2593 = !DILocation(line: 999, column: 3, scope: !2584)
!2594 = !DILocation(line: 999, column: 26, scope: !2584)
!2595 = !DILocation(line: 0, scope: !2401, inlinedAt: !2591)
!2596 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2591)
!2597 = !DILocation(line: 186, column: 7, scope: !2401, inlinedAt: !2591)
!2598 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2591)
!2599 = !{!2600}
!2600 = distinct !{!2600, !2601, !"quoting_options_from_style: argument 0"}
!2601 = distinct !{!2601, !"quoting_options_from_style"}
!2602 = !DILocation(line: 1000, column: 13, scope: !2584)
!2603 = !DILocation(line: 0, scope: !1492, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1001, column: 3, scope: !2584)
!2605 = !DILocation(line: 147, column: 57, scope: !1492, inlinedAt: !2604)
!2606 = !DILocation(line: 149, column: 21, scope: !1492, inlinedAt: !2604)
!2607 = !DILocation(line: 150, column: 6, scope: !1492, inlinedAt: !2604)
!2608 = !DILocation(line: 1002, column: 10, scope: !2584)
!2609 = !DILocation(line: 1003, column: 1, scope: !2584)
!2610 = !DILocation(line: 1002, column: 3, scope: !2584)
!2611 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !442, file: !442, line: 1006, type: !2612, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!87, !67, !93, !93, !93}
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2611, file: !442, line: 1006, type: !67)
!2616 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2611, file: !442, line: 1006, type: !93)
!2617 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2611, file: !442, line: 1007, type: !93)
!2618 = !DILocalVariable(name: "arg", arg: 4, scope: !2611, file: !442, line: 1007, type: !93)
!2619 = !DILocation(line: 0, scope: !2611)
!2620 = !DILocalVariable(name: "n", arg: 1, scope: !2621, file: !442, line: 1014, type: !67)
!2621 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !442, file: !442, line: 1014, type: !2622, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!87, !67, !93, !93, !93, !90}
!2624 = !{!2620, !2625, !2626, !2627, !2628, !2629}
!2625 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2621, file: !442, line: 1014, type: !93)
!2626 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2621, file: !442, line: 1015, type: !93)
!2627 = !DILocalVariable(name: "arg", arg: 4, scope: !2621, file: !442, line: 1016, type: !93)
!2628 = !DILocalVariable(name: "argsize", arg: 5, scope: !2621, file: !442, line: 1016, type: !90)
!2629 = !DILocalVariable(name: "o", scope: !2621, file: !442, line: 1018, type: !495)
!2630 = !DILocation(line: 0, scope: !2621, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 1009, column: 10, scope: !2611)
!2632 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2631)
!2633 = !DILocation(line: 1018, column: 26, scope: !2621, inlinedAt: !2631)
!2634 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2631)
!2635 = !DILocation(line: 0, scope: !1532, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2631)
!2637 = !DILocation(line: 174, column: 12, scope: !1532, inlinedAt: !2636)
!2638 = !DILocation(line: 175, column: 8, scope: !1545, inlinedAt: !2636)
!2639 = !DILocation(line: 175, column: 19, scope: !1545, inlinedAt: !2636)
!2640 = !DILocation(line: 176, column: 5, scope: !1545, inlinedAt: !2636)
!2641 = !DILocation(line: 177, column: 6, scope: !1532, inlinedAt: !2636)
!2642 = !DILocation(line: 177, column: 17, scope: !1532, inlinedAt: !2636)
!2643 = !DILocation(line: 178, column: 6, scope: !1532, inlinedAt: !2636)
!2644 = !DILocation(line: 178, column: 18, scope: !1532, inlinedAt: !2636)
!2645 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2631)
!2646 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2631)
!2647 = !DILocation(line: 1009, column: 3, scope: !2611)
!2648 = !DILocation(line: 0, scope: !2621)
!2649 = !DILocation(line: 1018, column: 3, scope: !2621)
!2650 = !DILocation(line: 1018, column: 26, scope: !2621)
!2651 = !DILocation(line: 1018, column: 30, scope: !2621)
!2652 = !DILocation(line: 0, scope: !1532, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 1019, column: 3, scope: !2621)
!2654 = !DILocation(line: 174, column: 12, scope: !1532, inlinedAt: !2653)
!2655 = !DILocation(line: 175, column: 8, scope: !1545, inlinedAt: !2653)
!2656 = !DILocation(line: 175, column: 19, scope: !1545, inlinedAt: !2653)
!2657 = !DILocation(line: 176, column: 5, scope: !1545, inlinedAt: !2653)
!2658 = !DILocation(line: 177, column: 6, scope: !1532, inlinedAt: !2653)
!2659 = !DILocation(line: 177, column: 17, scope: !1532, inlinedAt: !2653)
!2660 = !DILocation(line: 178, column: 6, scope: !1532, inlinedAt: !2653)
!2661 = !DILocation(line: 178, column: 18, scope: !1532, inlinedAt: !2653)
!2662 = !DILocation(line: 1020, column: 10, scope: !2621)
!2663 = !DILocation(line: 1021, column: 1, scope: !2621)
!2664 = !DILocation(line: 1020, column: 3, scope: !2621)
!2665 = distinct !DISubprogram(name: "quotearg_custom", scope: !442, file: !442, line: 1024, type: !2666, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2668)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!87, !93, !93, !93}
!2668 = !{!2669, !2670, !2671}
!2669 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2665, file: !442, line: 1024, type: !93)
!2670 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2665, file: !442, line: 1024, type: !93)
!2671 = !DILocalVariable(name: "arg", arg: 3, scope: !2665, file: !442, line: 1025, type: !93)
!2672 = !DILocation(line: 0, scope: !2665)
!2673 = !DILocation(line: 0, scope: !2611, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1027, column: 10, scope: !2665)
!2675 = !DILocation(line: 0, scope: !2621, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 1009, column: 10, scope: !2611, inlinedAt: !2674)
!2677 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2676)
!2678 = !DILocation(line: 1018, column: 26, scope: !2621, inlinedAt: !2676)
!2679 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2676)
!2680 = !DILocation(line: 0, scope: !1532, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2676)
!2682 = !DILocation(line: 174, column: 12, scope: !1532, inlinedAt: !2681)
!2683 = !DILocation(line: 175, column: 8, scope: !1545, inlinedAt: !2681)
!2684 = !DILocation(line: 175, column: 19, scope: !1545, inlinedAt: !2681)
!2685 = !DILocation(line: 176, column: 5, scope: !1545, inlinedAt: !2681)
!2686 = !DILocation(line: 177, column: 6, scope: !1532, inlinedAt: !2681)
!2687 = !DILocation(line: 177, column: 17, scope: !1532, inlinedAt: !2681)
!2688 = !DILocation(line: 178, column: 6, scope: !1532, inlinedAt: !2681)
!2689 = !DILocation(line: 178, column: 18, scope: !1532, inlinedAt: !2681)
!2690 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2676)
!2691 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2676)
!2692 = !DILocation(line: 1027, column: 3, scope: !2665)
!2693 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !442, file: !442, line: 1031, type: !2694, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!87, !93, !93, !93, !90}
!2696 = !{!2697, !2698, !2699, !2700}
!2697 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2693, file: !442, line: 1031, type: !93)
!2698 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2693, file: !442, line: 1031, type: !93)
!2699 = !DILocalVariable(name: "arg", arg: 3, scope: !2693, file: !442, line: 1032, type: !93)
!2700 = !DILocalVariable(name: "argsize", arg: 4, scope: !2693, file: !442, line: 1032, type: !90)
!2701 = !DILocation(line: 0, scope: !2693)
!2702 = !DILocation(line: 0, scope: !2621, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 1034, column: 10, scope: !2693)
!2704 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2703)
!2705 = !DILocation(line: 1018, column: 26, scope: !2621, inlinedAt: !2703)
!2706 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2703)
!2707 = !DILocation(line: 0, scope: !1532, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2703)
!2709 = !DILocation(line: 174, column: 12, scope: !1532, inlinedAt: !2708)
!2710 = !DILocation(line: 175, column: 8, scope: !1545, inlinedAt: !2708)
!2711 = !DILocation(line: 175, column: 19, scope: !1545, inlinedAt: !2708)
!2712 = !DILocation(line: 176, column: 5, scope: !1545, inlinedAt: !2708)
!2713 = !DILocation(line: 177, column: 6, scope: !1532, inlinedAt: !2708)
!2714 = !DILocation(line: 177, column: 17, scope: !1532, inlinedAt: !2708)
!2715 = !DILocation(line: 178, column: 6, scope: !1532, inlinedAt: !2708)
!2716 = !DILocation(line: 178, column: 18, scope: !1532, inlinedAt: !2708)
!2717 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2703)
!2718 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2703)
!2719 = !DILocation(line: 1034, column: 3, scope: !2693)
!2720 = distinct !DISubprogram(name: "quote_n_mem", scope: !442, file: !442, line: 1049, type: !2721, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!93, !67, !93, !90}
!2723 = !{!2724, !2725, !2726}
!2724 = !DILocalVariable(name: "n", arg: 1, scope: !2720, file: !442, line: 1049, type: !67)
!2725 = !DILocalVariable(name: "arg", arg: 2, scope: !2720, file: !442, line: 1049, type: !93)
!2726 = !DILocalVariable(name: "argsize", arg: 3, scope: !2720, file: !442, line: 1049, type: !90)
!2727 = !DILocation(line: 0, scope: !2720)
!2728 = !DILocation(line: 1051, column: 10, scope: !2720)
!2729 = !DILocation(line: 1051, column: 3, scope: !2720)
!2730 = distinct !DISubprogram(name: "quote_mem", scope: !442, file: !442, line: 1055, type: !2731, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!93, !93, !90}
!2733 = !{!2734, !2735}
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2730, file: !442, line: 1055, type: !93)
!2735 = !DILocalVariable(name: "argsize", arg: 2, scope: !2730, file: !442, line: 1055, type: !90)
!2736 = !DILocation(line: 0, scope: !2730)
!2737 = !DILocation(line: 0, scope: !2720, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 1057, column: 10, scope: !2730)
!2739 = !DILocation(line: 1051, column: 10, scope: !2720, inlinedAt: !2738)
!2740 = !DILocation(line: 1057, column: 3, scope: !2730)
!2741 = distinct !DISubprogram(name: "quote_n", scope: !442, file: !442, line: 1061, type: !2742, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!93, !67, !93}
!2744 = !{!2745, !2746}
!2745 = !DILocalVariable(name: "n", arg: 1, scope: !2741, file: !442, line: 1061, type: !67)
!2746 = !DILocalVariable(name: "arg", arg: 2, scope: !2741, file: !442, line: 1061, type: !93)
!2747 = !DILocation(line: 0, scope: !2741)
!2748 = !DILocation(line: 0, scope: !2720, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1063, column: 10, scope: !2741)
!2750 = !DILocation(line: 1051, column: 10, scope: !2720, inlinedAt: !2749)
!2751 = !DILocation(line: 1063, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "quote", scope: !442, file: !442, line: 1067, type: !2753, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !466, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!93, !93}
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "arg", arg: 1, scope: !2752, file: !442, line: 1067, type: !93)
!2757 = !DILocation(line: 0, scope: !2752)
!2758 = !DILocation(line: 0, scope: !2741, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1069, column: 10, scope: !2752)
!2760 = !DILocation(line: 0, scope: !2720, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 1063, column: 10, scope: !2741, inlinedAt: !2759)
!2762 = !DILocation(line: 1051, column: 10, scope: !2720, inlinedAt: !2761)
!2763 = !DILocation(line: 1069, column: 3, scope: !2752)
!2764 = distinct !DISubprogram(name: "version_etc_arn", scope: !558, file: !558, line: 61, type: !2765, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2802)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !2767, !93, !93, !93, !2801, !90}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2769, file: !146, line: 51, baseType: !67, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2769, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2769, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2769, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2769, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2769, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2769, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2769, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2769, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2769, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2769, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2769, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2769, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2769, file: !146, line: 70, baseType: !2785, size: 64, offset: 832)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2769, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2769, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2769, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2769, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2769, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2769, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2769, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2769, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2769, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2769, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2769, file: !146, line: 93, baseType: !2785, size: 64, offset: 1344)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2769, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2769, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2769, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2769, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808}
!2803 = !DILocalVariable(name: "stream", arg: 1, scope: !2764, file: !558, line: 61, type: !2767)
!2804 = !DILocalVariable(name: "command_name", arg: 2, scope: !2764, file: !558, line: 62, type: !93)
!2805 = !DILocalVariable(name: "package", arg: 3, scope: !2764, file: !558, line: 62, type: !93)
!2806 = !DILocalVariable(name: "version", arg: 4, scope: !2764, file: !558, line: 63, type: !93)
!2807 = !DILocalVariable(name: "authors", arg: 5, scope: !2764, file: !558, line: 64, type: !2801)
!2808 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2764, file: !558, line: 64, type: !90)
!2809 = !DILocation(line: 0, scope: !2764)
!2810 = !DILocation(line: 66, column: 7, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2764, file: !558, line: 66, column: 7)
!2812 = !DILocation(line: 66, column: 7, scope: !2764)
!2813 = !DILocation(line: 67, column: 5, scope: !2811)
!2814 = !DILocation(line: 69, column: 5, scope: !2811)
!2815 = !DILocation(line: 83, column: 3, scope: !2764)
!2816 = !DILocation(line: 85, column: 3, scope: !2764)
!2817 = !DILocation(line: 88, column: 3, scope: !2764)
!2818 = !DILocation(line: 95, column: 3, scope: !2764)
!2819 = !DILocation(line: 97, column: 3, scope: !2764)
!2820 = !DILocation(line: 105, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2764, file: !558, line: 98, column: 5)
!2822 = !DILocation(line: 106, column: 7, scope: !2821)
!2823 = !DILocation(line: 109, column: 7, scope: !2821)
!2824 = !DILocation(line: 110, column: 7, scope: !2821)
!2825 = !DILocation(line: 113, column: 7, scope: !2821)
!2826 = !DILocation(line: 115, column: 7, scope: !2821)
!2827 = !DILocation(line: 120, column: 7, scope: !2821)
!2828 = !DILocation(line: 122, column: 7, scope: !2821)
!2829 = !DILocation(line: 127, column: 7, scope: !2821)
!2830 = !DILocation(line: 129, column: 7, scope: !2821)
!2831 = !DILocation(line: 134, column: 7, scope: !2821)
!2832 = !DILocation(line: 137, column: 7, scope: !2821)
!2833 = !DILocation(line: 142, column: 7, scope: !2821)
!2834 = !DILocation(line: 145, column: 7, scope: !2821)
!2835 = !DILocation(line: 150, column: 7, scope: !2821)
!2836 = !DILocation(line: 154, column: 7, scope: !2821)
!2837 = !DILocation(line: 159, column: 7, scope: !2821)
!2838 = !DILocation(line: 163, column: 7, scope: !2821)
!2839 = !DILocation(line: 170, column: 7, scope: !2821)
!2840 = !DILocation(line: 174, column: 7, scope: !2821)
!2841 = !DILocation(line: 176, column: 1, scope: !2764)
!2842 = distinct !DISubprogram(name: "version_etc_ar", scope: !558, file: !558, line: 183, type: !2843, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !2767, !93, !93, !93, !2801}
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851}
!2846 = !DILocalVariable(name: "stream", arg: 1, scope: !2842, file: !558, line: 183, type: !2767)
!2847 = !DILocalVariable(name: "command_name", arg: 2, scope: !2842, file: !558, line: 184, type: !93)
!2848 = !DILocalVariable(name: "package", arg: 3, scope: !2842, file: !558, line: 184, type: !93)
!2849 = !DILocalVariable(name: "version", arg: 4, scope: !2842, file: !558, line: 185, type: !93)
!2850 = !DILocalVariable(name: "authors", arg: 5, scope: !2842, file: !558, line: 185, type: !2801)
!2851 = !DILocalVariable(name: "n_authors", scope: !2842, file: !558, line: 187, type: !90)
!2852 = !DILocation(line: 0, scope: !2842)
!2853 = !DILocation(line: 189, column: 8, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2842, file: !558, line: 189, column: 3)
!2855 = !DILocation(line: 189, scope: !2854)
!2856 = !DILocation(line: 189, column: 23, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !558, line: 189, column: 3)
!2858 = !DILocation(line: 189, column: 3, scope: !2854)
!2859 = !DILocation(line: 189, column: 52, scope: !2857)
!2860 = distinct !{!2860, !2858, !2861, !867}
!2861 = !DILocation(line: 190, column: 5, scope: !2854)
!2862 = !DILocation(line: 191, column: 3, scope: !2842)
!2863 = !DILocation(line: 192, column: 1, scope: !2842)
!2864 = distinct !DISubprogram(name: "version_etc_va", scope: !558, file: !558, line: 199, type: !2865, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2875)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2767, !93, !93, !93, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2869)
!2869 = !{!2870, !2872, !2873, !2874}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2868, file: !2871, line: 192, baseType: !62, size: 32)
!2871 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2868, file: !2871, line: 192, baseType: !62, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2868, file: !2871, line: 192, baseType: !88, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2868, file: !2871, line: 192, baseType: !88, size: 64, offset: 128)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2876 = !DILocalVariable(name: "stream", arg: 1, scope: !2864, file: !558, line: 199, type: !2767)
!2877 = !DILocalVariable(name: "command_name", arg: 2, scope: !2864, file: !558, line: 200, type: !93)
!2878 = !DILocalVariable(name: "package", arg: 3, scope: !2864, file: !558, line: 200, type: !93)
!2879 = !DILocalVariable(name: "version", arg: 4, scope: !2864, file: !558, line: 201, type: !93)
!2880 = !DILocalVariable(name: "authors", arg: 5, scope: !2864, file: !558, line: 201, type: !2867)
!2881 = !DILocalVariable(name: "n_authors", scope: !2864, file: !558, line: 203, type: !90)
!2882 = !DILocalVariable(name: "authtab", scope: !2864, file: !558, line: 204, type: !2883)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 640, elements: !45)
!2884 = !DILocation(line: 0, scope: !2864)
!2885 = !DILocation(line: 204, column: 3, scope: !2864)
!2886 = !DILocation(line: 204, column: 15, scope: !2864)
!2887 = !DILocation(line: 208, column: 35, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !558, line: 206, column: 3)
!2889 = distinct !DILexicalBlock(scope: !2864, file: !558, line: 206, column: 3)
!2890 = !DILocation(line: 208, column: 33, scope: !2888)
!2891 = !DILocation(line: 208, column: 67, scope: !2888)
!2892 = !DILocation(line: 206, column: 3, scope: !2889)
!2893 = !DILocation(line: 208, column: 14, scope: !2888)
!2894 = !DILocation(line: 0, scope: !2889)
!2895 = !DILocation(line: 211, column: 3, scope: !2864)
!2896 = !DILocation(line: 213, column: 1, scope: !2864)
!2897 = distinct !DISubprogram(name: "version_etc", scope: !558, file: !558, line: 230, type: !2898, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2767, !93, !93, !93, null}
!2900 = !{!2901, !2902, !2903, !2904, !2905}
!2901 = !DILocalVariable(name: "stream", arg: 1, scope: !2897, file: !558, line: 230, type: !2767)
!2902 = !DILocalVariable(name: "command_name", arg: 2, scope: !2897, file: !558, line: 231, type: !93)
!2903 = !DILocalVariable(name: "package", arg: 3, scope: !2897, file: !558, line: 231, type: !93)
!2904 = !DILocalVariable(name: "version", arg: 4, scope: !2897, file: !558, line: 232, type: !93)
!2905 = !DILocalVariable(name: "authors", scope: !2897, file: !558, line: 234, type: !2906)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !945, line: 52, baseType: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1319, line: 14, baseType: !2908)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2871, baseType: !2909)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2868, size: 192, elements: !40)
!2910 = !DILocation(line: 0, scope: !2897)
!2911 = !DILocation(line: 234, column: 3, scope: !2897)
!2912 = !DILocation(line: 234, column: 11, scope: !2897)
!2913 = !DILocation(line: 235, column: 3, scope: !2897)
!2914 = !DILocation(line: 236, column: 3, scope: !2897)
!2915 = !DILocation(line: 237, column: 3, scope: !2897)
!2916 = !DILocation(line: 238, column: 1, scope: !2897)
!2917 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !558, file: !558, line: 241, type: !397, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !808)
!2918 = !DILocation(line: 243, column: 3, scope: !2917)
!2919 = !DILocation(line: 248, column: 3, scope: !2917)
!2920 = !DILocation(line: 254, column: 3, scope: !2917)
!2921 = !DILocation(line: 259, column: 3, scope: !2917)
!2922 = !DILocation(line: 261, column: 1, scope: !2917)
!2923 = distinct !DISubprogram(name: "xnrealloc", scope: !2924, file: !2924, line: 147, type: !2925, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2927)
!2924 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!88, !88, !90, !90}
!2927 = !{!2928, !2929, !2930}
!2928 = !DILocalVariable(name: "p", arg: 1, scope: !2923, file: !2924, line: 147, type: !88)
!2929 = !DILocalVariable(name: "n", arg: 2, scope: !2923, file: !2924, line: 147, type: !90)
!2930 = !DILocalVariable(name: "s", arg: 3, scope: !2923, file: !2924, line: 147, type: !90)
!2931 = !DILocation(line: 0, scope: !2923)
!2932 = !DILocalVariable(name: "p", arg: 1, scope: !2933, file: !690, line: 83, type: !88)
!2933 = distinct !DISubprogram(name: "xreallocarray", scope: !690, file: !690, line: 83, type: !2925, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2934)
!2934 = !{!2932, !2935, !2936}
!2935 = !DILocalVariable(name: "n", arg: 2, scope: !2933, file: !690, line: 83, type: !90)
!2936 = !DILocalVariable(name: "s", arg: 3, scope: !2933, file: !690, line: 83, type: !90)
!2937 = !DILocation(line: 0, scope: !2933, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 149, column: 10, scope: !2923)
!2939 = !DILocation(line: 85, column: 25, scope: !2933, inlinedAt: !2938)
!2940 = !DILocalVariable(name: "p", arg: 1, scope: !2941, file: !690, line: 37, type: !88)
!2941 = distinct !DISubprogram(name: "check_nonnull", scope: !690, file: !690, line: 37, type: !2942, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!88, !88}
!2944 = !{!2940}
!2945 = !DILocation(line: 0, scope: !2941, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 85, column: 10, scope: !2933, inlinedAt: !2938)
!2947 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !2946)
!2948 = distinct !DILexicalBlock(scope: !2941, file: !690, line: 39, column: 7)
!2949 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !2946)
!2950 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !2946)
!2951 = !DILocation(line: 149, column: 3, scope: !2923)
!2952 = !DILocation(line: 0, scope: !2933)
!2953 = !DILocation(line: 85, column: 25, scope: !2933)
!2954 = !DILocation(line: 0, scope: !2941, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 85, column: 10, scope: !2933)
!2956 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !2955)
!2957 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !2955)
!2958 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !2955)
!2959 = !DILocation(line: 85, column: 3, scope: !2933)
!2960 = distinct !DISubprogram(name: "xmalloc", scope: !690, file: !690, line: 47, type: !2961, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!88, !90}
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "s", arg: 1, scope: !2960, file: !690, line: 47, type: !90)
!2965 = !DILocation(line: 0, scope: !2960)
!2966 = !DILocation(line: 49, column: 25, scope: !2960)
!2967 = !DILocation(line: 0, scope: !2941, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 49, column: 10, scope: !2960)
!2969 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !2968)
!2970 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !2968)
!2971 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !2968)
!2972 = !DILocation(line: 49, column: 3, scope: !2960)
!2973 = !DISubprogram(name: "malloc", scope: !949, file: !949, line: 540, type: !2961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!2974 = distinct !DISubprogram(name: "ximalloc", scope: !690, file: !690, line: 53, type: !2975, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2977)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!88, !709}
!2977 = !{!2978}
!2978 = !DILocalVariable(name: "s", arg: 1, scope: !2974, file: !690, line: 53, type: !709)
!2979 = !DILocation(line: 0, scope: !2974)
!2980 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !2982, line: 55, type: !709)
!2981 = distinct !DISubprogram(name: "imalloc", scope: !2982, file: !2982, line: 55, type: !2975, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2983)
!2982 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2983 = !{!2980}
!2984 = !DILocation(line: 0, scope: !2981, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 55, column: 25, scope: !2974)
!2986 = !DILocation(line: 57, column: 26, scope: !2981, inlinedAt: !2985)
!2987 = !DILocation(line: 0, scope: !2941, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 55, column: 10, scope: !2974)
!2989 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !2988)
!2990 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !2988)
!2991 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !2988)
!2992 = !DILocation(line: 55, column: 3, scope: !2974)
!2993 = distinct !DISubprogram(name: "xcharalloc", scope: !690, file: !690, line: 59, type: !2994, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!87, !90}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "n", arg: 1, scope: !2993, file: !690, line: 59, type: !90)
!2998 = !DILocation(line: 0, scope: !2993)
!2999 = !DILocation(line: 0, scope: !2960, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 61, column: 10, scope: !2993)
!3001 = !DILocation(line: 49, column: 25, scope: !2960, inlinedAt: !3000)
!3002 = !DILocation(line: 0, scope: !2941, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 49, column: 10, scope: !2960, inlinedAt: !3000)
!3004 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3003)
!3005 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3003)
!3006 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3003)
!3007 = !DILocation(line: 61, column: 3, scope: !2993)
!3008 = distinct !DISubprogram(name: "xrealloc", scope: !690, file: !690, line: 68, type: !3009, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3011)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!88, !88, !90}
!3011 = !{!3012, !3013}
!3012 = !DILocalVariable(name: "p", arg: 1, scope: !3008, file: !690, line: 68, type: !88)
!3013 = !DILocalVariable(name: "s", arg: 2, scope: !3008, file: !690, line: 68, type: !90)
!3014 = !DILocation(line: 0, scope: !3008)
!3015 = !DILocalVariable(name: "ptr", arg: 1, scope: !3016, file: !3017, line: 2057, type: !88)
!3016 = distinct !DISubprogram(name: "rpl_realloc", scope: !3017, file: !3017, line: 2057, type: !3009, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3018)
!3017 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3018 = !{!3015, !3019}
!3019 = !DILocalVariable(name: "size", arg: 2, scope: !3016, file: !3017, line: 2057, type: !90)
!3020 = !DILocation(line: 0, scope: !3016, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 70, column: 25, scope: !3008)
!3022 = !DILocation(line: 2059, column: 24, scope: !3016, inlinedAt: !3021)
!3023 = !DILocation(line: 2059, column: 10, scope: !3016, inlinedAt: !3021)
!3024 = !DILocation(line: 0, scope: !2941, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 70, column: 10, scope: !3008)
!3026 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3025)
!3027 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3025)
!3028 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3025)
!3029 = !DILocation(line: 70, column: 3, scope: !3008)
!3030 = !DISubprogram(name: "realloc", scope: !949, file: !949, line: 551, type: !3009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3031 = distinct !DISubprogram(name: "xirealloc", scope: !690, file: !690, line: 74, type: !3032, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!88, !88, !709}
!3034 = !{!3035, !3036}
!3035 = !DILocalVariable(name: "p", arg: 1, scope: !3031, file: !690, line: 74, type: !88)
!3036 = !DILocalVariable(name: "s", arg: 2, scope: !3031, file: !690, line: 74, type: !709)
!3037 = !DILocation(line: 0, scope: !3031)
!3038 = !DILocalVariable(name: "p", arg: 1, scope: !3039, file: !2982, line: 66, type: !88)
!3039 = distinct !DISubprogram(name: "irealloc", scope: !2982, file: !2982, line: 66, type: !3032, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3040)
!3040 = !{!3038, !3041}
!3041 = !DILocalVariable(name: "s", arg: 2, scope: !3039, file: !2982, line: 66, type: !709)
!3042 = !DILocation(line: 0, scope: !3039, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 76, column: 25, scope: !3031)
!3044 = !DILocation(line: 0, scope: !3016, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 68, column: 26, scope: !3039, inlinedAt: !3043)
!3046 = !DILocation(line: 2059, column: 24, scope: !3016, inlinedAt: !3045)
!3047 = !DILocation(line: 2059, column: 10, scope: !3016, inlinedAt: !3045)
!3048 = !DILocation(line: 0, scope: !2941, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 76, column: 10, scope: !3031)
!3050 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3049)
!3053 = !DILocation(line: 76, column: 3, scope: !3031)
!3054 = distinct !DISubprogram(name: "xireallocarray", scope: !690, file: !690, line: 89, type: !3055, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!88, !88, !709, !709}
!3057 = !{!3058, !3059, !3060}
!3058 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !690, line: 89, type: !88)
!3059 = !DILocalVariable(name: "n", arg: 2, scope: !3054, file: !690, line: 89, type: !709)
!3060 = !DILocalVariable(name: "s", arg: 3, scope: !3054, file: !690, line: 89, type: !709)
!3061 = !DILocation(line: 0, scope: !3054)
!3062 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !2982, line: 98, type: !88)
!3063 = distinct !DISubprogram(name: "ireallocarray", scope: !2982, file: !2982, line: 98, type: !3055, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3064)
!3064 = !{!3062, !3065, !3066}
!3065 = !DILocalVariable(name: "n", arg: 2, scope: !3063, file: !2982, line: 98, type: !709)
!3066 = !DILocalVariable(name: "s", arg: 3, scope: !3063, file: !2982, line: 98, type: !709)
!3067 = !DILocation(line: 0, scope: !3063, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 91, column: 25, scope: !3054)
!3069 = !DILocation(line: 101, column: 13, scope: !3063, inlinedAt: !3068)
!3070 = !DILocation(line: 0, scope: !2941, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 91, column: 10, scope: !3054)
!3072 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3071)
!3073 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3071)
!3074 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3071)
!3075 = !DILocation(line: 91, column: 3, scope: !3054)
!3076 = distinct !DISubprogram(name: "xnmalloc", scope: !690, file: !690, line: 98, type: !3077, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!88, !90, !90}
!3079 = !{!3080, !3081}
!3080 = !DILocalVariable(name: "n", arg: 1, scope: !3076, file: !690, line: 98, type: !90)
!3081 = !DILocalVariable(name: "s", arg: 2, scope: !3076, file: !690, line: 98, type: !90)
!3082 = !DILocation(line: 0, scope: !3076)
!3083 = !DILocation(line: 0, scope: !2933, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 100, column: 10, scope: !3076)
!3085 = !DILocation(line: 85, column: 25, scope: !2933, inlinedAt: !3084)
!3086 = !DILocation(line: 0, scope: !2941, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 85, column: 10, scope: !2933, inlinedAt: !3084)
!3088 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3087)
!3089 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3087)
!3090 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3087)
!3091 = !DILocation(line: 100, column: 3, scope: !3076)
!3092 = distinct !DISubprogram(name: "xinmalloc", scope: !690, file: !690, line: 104, type: !3093, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!88, !709, !709}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "n", arg: 1, scope: !3092, file: !690, line: 104, type: !709)
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3092, file: !690, line: 104, type: !709)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 0, scope: !3054, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 106, column: 10, scope: !3092)
!3101 = !DILocation(line: 0, scope: !3063, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 91, column: 25, scope: !3054, inlinedAt: !3100)
!3103 = !DILocation(line: 101, column: 13, scope: !3063, inlinedAt: !3102)
!3104 = !DILocation(line: 0, scope: !2941, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 91, column: 10, scope: !3054, inlinedAt: !3100)
!3106 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3105)
!3107 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3105)
!3108 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3105)
!3109 = !DILocation(line: 106, column: 3, scope: !3092)
!3110 = distinct !DISubprogram(name: "x2realloc", scope: !690, file: !690, line: 116, type: !3111, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!88, !88, !696}
!3113 = !{!3114, !3115}
!3114 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !690, line: 116, type: !88)
!3115 = !DILocalVariable(name: "ps", arg: 2, scope: !3110, file: !690, line: 116, type: !696)
!3116 = !DILocation(line: 0, scope: !3110)
!3117 = !DILocation(line: 0, scope: !693, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 118, column: 10, scope: !3110)
!3119 = !DILocation(line: 178, column: 14, scope: !693, inlinedAt: !3118)
!3120 = !DILocation(line: 180, column: 9, scope: !3121, inlinedAt: !3118)
!3121 = distinct !DILexicalBlock(scope: !693, file: !690, line: 180, column: 7)
!3122 = !DILocation(line: 180, column: 7, scope: !693, inlinedAt: !3118)
!3123 = !DILocation(line: 182, column: 13, scope: !3124, inlinedAt: !3118)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !690, line: 182, column: 11)
!3125 = distinct !DILexicalBlock(scope: !3121, file: !690, line: 181, column: 5)
!3126 = !DILocation(line: 182, column: 11, scope: !3125, inlinedAt: !3118)
!3127 = !DILocation(line: 197, column: 11, scope: !3128, inlinedAt: !3118)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !690, line: 197, column: 11)
!3129 = distinct !DILexicalBlock(scope: !3121, file: !690, line: 195, column: 5)
!3130 = !DILocation(line: 197, column: 11, scope: !3129, inlinedAt: !3118)
!3131 = !DILocation(line: 198, column: 9, scope: !3128, inlinedAt: !3118)
!3132 = !DILocation(line: 0, scope: !2933, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 201, column: 7, scope: !693, inlinedAt: !3118)
!3134 = !DILocation(line: 85, column: 25, scope: !2933, inlinedAt: !3133)
!3135 = !DILocation(line: 0, scope: !2941, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 85, column: 10, scope: !2933, inlinedAt: !3133)
!3137 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3136)
!3138 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3136)
!3139 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3136)
!3140 = !DILocation(line: 202, column: 7, scope: !693, inlinedAt: !3118)
!3141 = !DILocation(line: 118, column: 3, scope: !3110)
!3142 = !DILocation(line: 0, scope: !693)
!3143 = !DILocation(line: 178, column: 14, scope: !693)
!3144 = !DILocation(line: 180, column: 9, scope: !3121)
!3145 = !DILocation(line: 180, column: 7, scope: !693)
!3146 = !DILocation(line: 182, column: 13, scope: !3124)
!3147 = !DILocation(line: 182, column: 11, scope: !3125)
!3148 = !DILocation(line: 190, column: 30, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3124, file: !690, line: 183, column: 9)
!3150 = !DILocation(line: 191, column: 16, scope: !3149)
!3151 = !DILocation(line: 191, column: 13, scope: !3149)
!3152 = !DILocation(line: 192, column: 9, scope: !3149)
!3153 = !DILocation(line: 197, column: 11, scope: !3128)
!3154 = !DILocation(line: 197, column: 11, scope: !3129)
!3155 = !DILocation(line: 198, column: 9, scope: !3128)
!3156 = !DILocation(line: 0, scope: !2933, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 201, column: 7, scope: !693)
!3158 = !DILocation(line: 85, column: 25, scope: !2933, inlinedAt: !3157)
!3159 = !DILocation(line: 0, scope: !2941, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 85, column: 10, scope: !2933, inlinedAt: !3157)
!3161 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3160)
!3162 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3160)
!3163 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3160)
!3164 = !DILocation(line: 202, column: 7, scope: !693)
!3165 = !DILocation(line: 203, column: 3, scope: !693)
!3166 = !DILocation(line: 0, scope: !705)
!3167 = !DILocation(line: 230, column: 14, scope: !705)
!3168 = !DILocation(line: 238, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !705, file: !690, line: 238, column: 7)
!3170 = !DILocation(line: 238, column: 7, scope: !705)
!3171 = !DILocation(line: 240, column: 9, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !705, file: !690, line: 240, column: 7)
!3173 = !DILocation(line: 240, column: 18, scope: !3172)
!3174 = !DILocation(line: 253, column: 8, scope: !705)
!3175 = !DILocation(line: 258, column: 27, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !690, line: 257, column: 5)
!3177 = distinct !DILexicalBlock(scope: !705, file: !690, line: 256, column: 7)
!3178 = !DILocation(line: 259, column: 50, scope: !3176)
!3179 = !DILocation(line: 259, column: 32, scope: !3176)
!3180 = !DILocation(line: 260, column: 5, scope: !3176)
!3181 = !DILocation(line: 262, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !705, file: !690, line: 262, column: 7)
!3183 = !DILocation(line: 262, column: 7, scope: !705)
!3184 = !DILocation(line: 263, column: 9, scope: !3182)
!3185 = !DILocation(line: 263, column: 5, scope: !3182)
!3186 = !DILocation(line: 264, column: 9, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !705, file: !690, line: 264, column: 7)
!3188 = !DILocation(line: 264, column: 14, scope: !3187)
!3189 = !DILocation(line: 265, column: 7, scope: !3187)
!3190 = !DILocation(line: 265, column: 11, scope: !3187)
!3191 = !DILocation(line: 266, column: 11, scope: !3187)
!3192 = !DILocation(line: 267, column: 14, scope: !3187)
!3193 = !DILocation(line: 264, column: 7, scope: !705)
!3194 = !DILocation(line: 268, column: 5, scope: !3187)
!3195 = !DILocation(line: 0, scope: !3008, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 269, column: 8, scope: !705)
!3197 = !DILocation(line: 0, scope: !3016, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 70, column: 25, scope: !3008, inlinedAt: !3196)
!3199 = !DILocation(line: 2059, column: 24, scope: !3016, inlinedAt: !3198)
!3200 = !DILocation(line: 2059, column: 10, scope: !3016, inlinedAt: !3198)
!3201 = !DILocation(line: 0, scope: !2941, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 70, column: 10, scope: !3008, inlinedAt: !3196)
!3203 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3202)
!3204 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3202)
!3205 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3202)
!3206 = !DILocation(line: 270, column: 7, scope: !705)
!3207 = !DILocation(line: 271, column: 3, scope: !705)
!3208 = distinct !DISubprogram(name: "xzalloc", scope: !690, file: !690, line: 279, type: !2961, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3209)
!3209 = !{!3210}
!3210 = !DILocalVariable(name: "s", arg: 1, scope: !3208, file: !690, line: 279, type: !90)
!3211 = !DILocation(line: 0, scope: !3208)
!3212 = !DILocalVariable(name: "n", arg: 1, scope: !3213, file: !690, line: 294, type: !90)
!3213 = distinct !DISubprogram(name: "xcalloc", scope: !690, file: !690, line: 294, type: !3077, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3214)
!3214 = !{!3212, !3215}
!3215 = !DILocalVariable(name: "s", arg: 2, scope: !3213, file: !690, line: 294, type: !90)
!3216 = !DILocation(line: 0, scope: !3213, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 281, column: 10, scope: !3208)
!3218 = !DILocation(line: 296, column: 25, scope: !3213, inlinedAt: !3217)
!3219 = !DILocation(line: 0, scope: !2941, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 296, column: 10, scope: !3213, inlinedAt: !3217)
!3221 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3220)
!3224 = !DILocation(line: 281, column: 3, scope: !3208)
!3225 = !DISubprogram(name: "calloc", scope: !949, file: !949, line: 543, type: !3077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3226 = !DILocation(line: 0, scope: !3213)
!3227 = !DILocation(line: 296, column: 25, scope: !3213)
!3228 = !DILocation(line: 0, scope: !2941, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 296, column: 10, scope: !3213)
!3230 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3229)
!3231 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3229)
!3232 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3229)
!3233 = !DILocation(line: 296, column: 3, scope: !3213)
!3234 = distinct !DISubprogram(name: "xizalloc", scope: !690, file: !690, line: 285, type: !2975, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3235)
!3235 = !{!3236}
!3236 = !DILocalVariable(name: "s", arg: 1, scope: !3234, file: !690, line: 285, type: !709)
!3237 = !DILocation(line: 0, scope: !3234)
!3238 = !DILocalVariable(name: "n", arg: 1, scope: !3239, file: !690, line: 300, type: !709)
!3239 = distinct !DISubprogram(name: "xicalloc", scope: !690, file: !690, line: 300, type: !3093, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3240)
!3240 = !{!3238, !3241}
!3241 = !DILocalVariable(name: "s", arg: 2, scope: !3239, file: !690, line: 300, type: !709)
!3242 = !DILocation(line: 0, scope: !3239, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 287, column: 10, scope: !3234)
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !2982, line: 77, type: !709)
!3245 = distinct !DISubprogram(name: "icalloc", scope: !2982, file: !2982, line: 77, type: !3093, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3246)
!3246 = !{!3244, !3247}
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !2982, line: 77, type: !709)
!3248 = !DILocation(line: 0, scope: !3245, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 302, column: 25, scope: !3239, inlinedAt: !3243)
!3250 = !DILocation(line: 91, column: 10, scope: !3245, inlinedAt: !3249)
!3251 = !DILocation(line: 0, scope: !2941, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 302, column: 10, scope: !3239, inlinedAt: !3243)
!3253 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3252)
!3254 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3252)
!3255 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3252)
!3256 = !DILocation(line: 287, column: 3, scope: !3234)
!3257 = !DILocation(line: 0, scope: !3239)
!3258 = !DILocation(line: 0, scope: !3245, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 302, column: 25, scope: !3239)
!3260 = !DILocation(line: 91, column: 10, scope: !3245, inlinedAt: !3259)
!3261 = !DILocation(line: 0, scope: !2941, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 302, column: 10, scope: !3239)
!3263 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3262)
!3264 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3262)
!3265 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3262)
!3266 = !DILocation(line: 302, column: 3, scope: !3239)
!3267 = distinct !DISubprogram(name: "xmemdup", scope: !690, file: !690, line: 310, type: !3268, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3270)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!88, !973, !90}
!3270 = !{!3271, !3272}
!3271 = !DILocalVariable(name: "p", arg: 1, scope: !3267, file: !690, line: 310, type: !973)
!3272 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !690, line: 310, type: !90)
!3273 = !DILocation(line: 0, scope: !3267)
!3274 = !DILocation(line: 0, scope: !2960, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 312, column: 18, scope: !3267)
!3276 = !DILocation(line: 49, column: 25, scope: !2960, inlinedAt: !3275)
!3277 = !DILocation(line: 0, scope: !2941, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 49, column: 10, scope: !2960, inlinedAt: !3275)
!3279 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3278)
!3280 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3278)
!3281 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3278)
!3282 = !DILocalVariable(name: "__dest", arg: 1, scope: !3283, file: !1435, line: 26, type: !3286)
!3283 = distinct !DISubprogram(name: "memcpy", scope: !1435, file: !1435, line: 26, type: !3284, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3287)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!88, !3286, !972, !90}
!3286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!3287 = !{!3282, !3288, !3289}
!3288 = !DILocalVariable(name: "__src", arg: 2, scope: !3283, file: !1435, line: 26, type: !972)
!3289 = !DILocalVariable(name: "__len", arg: 3, scope: !3283, file: !1435, line: 26, type: !90)
!3290 = !DILocation(line: 0, scope: !3283, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 312, column: 10, scope: !3267)
!3292 = !DILocation(line: 29, column: 10, scope: !3283, inlinedAt: !3291)
!3293 = !DILocation(line: 312, column: 3, scope: !3267)
!3294 = distinct !DISubprogram(name: "ximemdup", scope: !690, file: !690, line: 316, type: !3295, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!88, !973, !709}
!3297 = !{!3298, !3299}
!3298 = !DILocalVariable(name: "p", arg: 1, scope: !3294, file: !690, line: 316, type: !973)
!3299 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !690, line: 316, type: !709)
!3300 = !DILocation(line: 0, scope: !3294)
!3301 = !DILocation(line: 0, scope: !2974, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 318, column: 18, scope: !3294)
!3303 = !DILocation(line: 0, scope: !2981, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 55, column: 25, scope: !2974, inlinedAt: !3302)
!3305 = !DILocation(line: 57, column: 26, scope: !2981, inlinedAt: !3304)
!3306 = !DILocation(line: 0, scope: !2941, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 55, column: 10, scope: !2974, inlinedAt: !3302)
!3308 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3307)
!3309 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3307)
!3310 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3307)
!3311 = !DILocation(line: 0, scope: !3283, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 318, column: 10, scope: !3294)
!3313 = !DILocation(line: 29, column: 10, scope: !3283, inlinedAt: !3312)
!3314 = !DILocation(line: 318, column: 3, scope: !3294)
!3315 = distinct !DISubprogram(name: "ximemdup0", scope: !690, file: !690, line: 325, type: !3316, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!87, !973, !709}
!3318 = !{!3319, !3320, !3321}
!3319 = !DILocalVariable(name: "p", arg: 1, scope: !3315, file: !690, line: 325, type: !973)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !690, line: 325, type: !709)
!3321 = !DILocalVariable(name: "result", scope: !3315, file: !690, line: 327, type: !87)
!3322 = !DILocation(line: 0, scope: !3315)
!3323 = !DILocation(line: 327, column: 30, scope: !3315)
!3324 = !DILocation(line: 0, scope: !2974, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 327, column: 18, scope: !3315)
!3326 = !DILocation(line: 0, scope: !2981, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 55, column: 25, scope: !2974, inlinedAt: !3325)
!3328 = !DILocation(line: 57, column: 26, scope: !2981, inlinedAt: !3327)
!3329 = !DILocation(line: 0, scope: !2941, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 55, column: 10, scope: !2974, inlinedAt: !3325)
!3331 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3330)
!3332 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3330)
!3333 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3330)
!3334 = !DILocation(line: 328, column: 3, scope: !3315)
!3335 = !DILocation(line: 328, column: 13, scope: !3315)
!3336 = !DILocation(line: 0, scope: !3283, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 329, column: 10, scope: !3315)
!3338 = !DILocation(line: 29, column: 10, scope: !3283, inlinedAt: !3337)
!3339 = !DILocation(line: 329, column: 3, scope: !3315)
!3340 = distinct !DISubprogram(name: "xstrdup", scope: !690, file: !690, line: 335, type: !951, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3341)
!3341 = !{!3342}
!3342 = !DILocalVariable(name: "string", arg: 1, scope: !3340, file: !690, line: 335, type: !93)
!3343 = !DILocation(line: 0, scope: !3340)
!3344 = !DILocation(line: 337, column: 27, scope: !3340)
!3345 = !DILocation(line: 337, column: 43, scope: !3340)
!3346 = !DILocation(line: 0, scope: !3267, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 337, column: 10, scope: !3340)
!3348 = !DILocation(line: 0, scope: !2960, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 312, column: 18, scope: !3267, inlinedAt: !3347)
!3350 = !DILocation(line: 49, column: 25, scope: !2960, inlinedAt: !3349)
!3351 = !DILocation(line: 0, scope: !2941, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 49, column: 10, scope: !2960, inlinedAt: !3349)
!3353 = !DILocation(line: 39, column: 8, scope: !2948, inlinedAt: !3352)
!3354 = !DILocation(line: 39, column: 7, scope: !2941, inlinedAt: !3352)
!3355 = !DILocation(line: 40, column: 5, scope: !2948, inlinedAt: !3352)
!3356 = !DILocation(line: 0, scope: !3283, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 312, column: 10, scope: !3267, inlinedAt: !3347)
!3358 = !DILocation(line: 29, column: 10, scope: !3283, inlinedAt: !3357)
!3359 = !DILocation(line: 337, column: 3, scope: !3340)
!3360 = distinct !DISubprogram(name: "xalloc_die", scope: !654, file: !654, line: 32, type: !397, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3361)
!3361 = !{!3362}
!3362 = !DILocalVariable(name: "__errstatus", scope: !3363, file: !654, line: 34, type: !3364)
!3363 = distinct !DILexicalBlock(scope: !3360, file: !654, line: 34, column: 3)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3365 = !DILocation(line: 34, column: 3, scope: !3363)
!3366 = !DILocation(line: 0, scope: !3363)
!3367 = !DILocation(line: 40, column: 3, scope: !3360)
!3368 = distinct !DISubprogram(name: "close_stream", scope: !726, file: !726, line: 55, type: !3369, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3405)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!67, !3371}
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3373)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3373, file: !146, line: 51, baseType: !67, size: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3373, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3373, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3373, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3373, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3373, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3373, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3373, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3373, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3373, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3373, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3373, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3373, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3373, file: !146, line: 70, baseType: !3389, size: 64, offset: 832)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3373, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3373, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3373, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3373, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3373, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3373, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3373, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3373, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3373, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3373, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3373, file: !146, line: 93, baseType: !3389, size: 64, offset: 1344)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3373, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3373, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3373, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3373, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3405 = !{!3406, !3407, !3409, !3410}
!3406 = !DILocalVariable(name: "stream", arg: 1, scope: !3368, file: !726, line: 55, type: !3371)
!3407 = !DILocalVariable(name: "some_pending", scope: !3368, file: !726, line: 57, type: !3408)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!3409 = !DILocalVariable(name: "prev_fail", scope: !3368, file: !726, line: 58, type: !3408)
!3410 = !DILocalVariable(name: "fclose_fail", scope: !3368, file: !726, line: 59, type: !3408)
!3411 = !DILocation(line: 0, scope: !3368)
!3412 = !DILocation(line: 57, column: 30, scope: !3368)
!3413 = !DILocalVariable(name: "__stream", arg: 1, scope: !3414, file: !1274, line: 135, type: !3371)
!3414 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1274, file: !1274, line: 135, type: !3369, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3415)
!3415 = !{!3413}
!3416 = !DILocation(line: 0, scope: !3414, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 58, column: 27, scope: !3368)
!3418 = !DILocation(line: 137, column: 10, scope: !3414, inlinedAt: !3417)
!3419 = !{!1283, !821, i64 0}
!3420 = !DILocation(line: 58, column: 43, scope: !3368)
!3421 = !DILocation(line: 59, column: 29, scope: !3368)
!3422 = !DILocation(line: 59, column: 45, scope: !3368)
!3423 = !DILocation(line: 69, column: 17, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3368, file: !726, line: 69, column: 7)
!3425 = !DILocation(line: 57, column: 50, scope: !3368)
!3426 = !DILocation(line: 69, column: 33, scope: !3424)
!3427 = !DILocation(line: 69, column: 53, scope: !3424)
!3428 = !DILocation(line: 69, column: 59, scope: !3424)
!3429 = !DILocation(line: 69, column: 7, scope: !3368)
!3430 = !DILocation(line: 71, column: 11, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3424, file: !726, line: 70, column: 5)
!3432 = !DILocation(line: 72, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3431, file: !726, line: 71, column: 11)
!3434 = !DILocation(line: 72, column: 15, scope: !3433)
!3435 = !DILocation(line: 77, column: 1, scope: !3368)
!3436 = !DISubprogram(name: "__fpending", scope: !3437, file: !3437, line: 75, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3437 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!90, !3371}
!3440 = distinct !DISubprogram(name: "rpl_fclose", scope: !728, file: !728, line: 58, type: !3441, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3477)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!67, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3445, file: !146, line: 51, baseType: !67, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3445, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3445, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3445, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3445, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3445, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3445, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3445, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3445, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3445, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3445, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3445, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3445, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3445, file: !146, line: 70, baseType: !3461, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3445, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3445, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3445, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3445, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3445, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3445, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3445, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3445, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3445, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3445, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3445, file: !146, line: 93, baseType: !3461, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3445, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3445, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3445, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3445, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3477 = !{!3478, !3479, !3480, !3481}
!3478 = !DILocalVariable(name: "fp", arg: 1, scope: !3440, file: !728, line: 58, type: !3443)
!3479 = !DILocalVariable(name: "saved_errno", scope: !3440, file: !728, line: 60, type: !67)
!3480 = !DILocalVariable(name: "fd", scope: !3440, file: !728, line: 63, type: !67)
!3481 = !DILocalVariable(name: "result", scope: !3440, file: !728, line: 74, type: !67)
!3482 = !DILocation(line: 0, scope: !3440)
!3483 = !DILocation(line: 63, column: 12, scope: !3440)
!3484 = !DILocation(line: 64, column: 10, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3440, file: !728, line: 64, column: 7)
!3486 = !DILocation(line: 64, column: 7, scope: !3440)
!3487 = !DILocation(line: 65, column: 12, scope: !3485)
!3488 = !DILocation(line: 65, column: 5, scope: !3485)
!3489 = !DILocation(line: 70, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3440, file: !728, line: 70, column: 7)
!3491 = !DILocation(line: 70, column: 23, scope: !3490)
!3492 = !DILocation(line: 70, column: 33, scope: !3490)
!3493 = !DILocation(line: 70, column: 26, scope: !3490)
!3494 = !DILocation(line: 70, column: 59, scope: !3490)
!3495 = !DILocation(line: 71, column: 7, scope: !3490)
!3496 = !DILocation(line: 71, column: 10, scope: !3490)
!3497 = !DILocation(line: 70, column: 7, scope: !3440)
!3498 = !DILocation(line: 100, column: 12, scope: !3440)
!3499 = !DILocation(line: 105, column: 7, scope: !3440)
!3500 = !DILocation(line: 72, column: 19, scope: !3490)
!3501 = !DILocation(line: 105, column: 19, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3440, file: !728, line: 105, column: 7)
!3503 = !DILocation(line: 107, column: 13, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3502, file: !728, line: 106, column: 5)
!3505 = !DILocation(line: 109, column: 5, scope: !3504)
!3506 = !DILocation(line: 112, column: 1, scope: !3440)
!3507 = !DISubprogram(name: "fileno", scope: !945, file: !945, line: 809, type: !3441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3508 = !DISubprogram(name: "fclose", scope: !945, file: !945, line: 178, type: !3441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3509 = !DISubprogram(name: "__freading", scope: !3437, file: !3437, line: 51, type: !3441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3510 = !DISubprogram(name: "lseek", scope: !1157, file: !1157, line: 339, type: !3511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!168, !67, !168, !67}
!3513 = distinct !DISubprogram(name: "rpl_fflush", scope: !730, file: !730, line: 130, type: !3514, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3550)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!67, !3516}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3518)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3518, file: !146, line: 51, baseType: !67, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3518, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3518, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3518, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3518, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3518, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3518, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3518, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3518, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3518, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3518, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3518, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3518, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3518, file: !146, line: 70, baseType: !3534, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3518, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3518, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3518, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3518, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3518, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3518, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3518, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3518, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3518, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3518, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3518, file: !146, line: 93, baseType: !3534, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3518, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3518, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3518, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3518, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3550 = !{!3551}
!3551 = !DILocalVariable(name: "stream", arg: 1, scope: !3513, file: !730, line: 130, type: !3516)
!3552 = !DILocation(line: 0, scope: !3513)
!3553 = !DILocation(line: 151, column: 14, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3513, file: !730, line: 151, column: 7)
!3555 = !DILocation(line: 151, column: 22, scope: !3554)
!3556 = !DILocation(line: 151, column: 27, scope: !3554)
!3557 = !DILocation(line: 151, column: 7, scope: !3513)
!3558 = !DILocation(line: 152, column: 12, scope: !3554)
!3559 = !DILocation(line: 152, column: 5, scope: !3554)
!3560 = !DILocalVariable(name: "fp", arg: 1, scope: !3561, file: !730, line: 42, type: !3516)
!3561 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !730, file: !730, line: 42, type: !3562, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{null, !3516}
!3564 = !{!3560}
!3565 = !DILocation(line: 0, scope: !3561, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 157, column: 3, scope: !3513)
!3567 = !DILocation(line: 44, column: 12, scope: !3568, inlinedAt: !3566)
!3568 = distinct !DILexicalBlock(scope: !3561, file: !730, line: 44, column: 7)
!3569 = !DILocation(line: 44, column: 19, scope: !3568, inlinedAt: !3566)
!3570 = !DILocation(line: 44, column: 7, scope: !3561, inlinedAt: !3566)
!3571 = !DILocation(line: 46, column: 5, scope: !3568, inlinedAt: !3566)
!3572 = !DILocation(line: 159, column: 10, scope: !3513)
!3573 = !DILocation(line: 159, column: 3, scope: !3513)
!3574 = !DILocation(line: 236, column: 1, scope: !3513)
!3575 = !DISubprogram(name: "fflush", scope: !945, file: !945, line: 230, type: !3514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3576 = distinct !DISubprogram(name: "rpl_fseeko", scope: !732, file: !732, line: 28, type: !3577, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3614)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!67, !3579, !3613, !67}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !144, line: 7, baseType: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !146, line: 49, size: 1728, elements: !3582)
!3582 = !{!3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3581, file: !146, line: 51, baseType: !67, size: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3581, file: !146, line: 54, baseType: !87, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3581, file: !146, line: 55, baseType: !87, size: 64, offset: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3581, file: !146, line: 56, baseType: !87, size: 64, offset: 192)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3581, file: !146, line: 57, baseType: !87, size: 64, offset: 256)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3581, file: !146, line: 58, baseType: !87, size: 64, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3581, file: !146, line: 59, baseType: !87, size: 64, offset: 384)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3581, file: !146, line: 60, baseType: !87, size: 64, offset: 448)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3581, file: !146, line: 61, baseType: !87, size: 64, offset: 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3581, file: !146, line: 64, baseType: !87, size: 64, offset: 576)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3581, file: !146, line: 65, baseType: !87, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3581, file: !146, line: 66, baseType: !87, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3581, file: !146, line: 68, baseType: !161, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3581, file: !146, line: 70, baseType: !3597, size: 64, offset: 832)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3581, file: !146, line: 72, baseType: !67, size: 32, offset: 896)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3581, file: !146, line: 73, baseType: !67, size: 32, offset: 928)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3581, file: !146, line: 74, baseType: !168, size: 64, offset: 960)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3581, file: !146, line: 77, baseType: !89, size: 16, offset: 1024)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3581, file: !146, line: 78, baseType: !173, size: 8, offset: 1040)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3581, file: !146, line: 79, baseType: !39, size: 8, offset: 1048)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3581, file: !146, line: 81, baseType: !176, size: 64, offset: 1088)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3581, file: !146, line: 89, baseType: !179, size: 64, offset: 1152)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3581, file: !146, line: 91, baseType: !181, size: 64, offset: 1216)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3581, file: !146, line: 92, baseType: !184, size: 64, offset: 1280)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3581, file: !146, line: 93, baseType: !3597, size: 64, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3581, file: !146, line: 94, baseType: !88, size: 64, offset: 1408)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3581, file: !146, line: 95, baseType: !90, size: 64, offset: 1472)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3581, file: !146, line: 96, baseType: !67, size: 32, offset: 1536)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3581, file: !146, line: 98, baseType: !191, size: 160, offset: 1568)
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !945, line: 63, baseType: !168)
!3614 = !{!3615, !3616, !3617, !3618}
!3615 = !DILocalVariable(name: "fp", arg: 1, scope: !3576, file: !732, line: 28, type: !3579)
!3616 = !DILocalVariable(name: "offset", arg: 2, scope: !3576, file: !732, line: 28, type: !3613)
!3617 = !DILocalVariable(name: "whence", arg: 3, scope: !3576, file: !732, line: 28, type: !67)
!3618 = !DILocalVariable(name: "pos", scope: !3619, file: !732, line: 123, type: !3613)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !732, line: 119, column: 5)
!3620 = distinct !DILexicalBlock(scope: !3576, file: !732, line: 55, column: 7)
!3621 = !DILocation(line: 0, scope: !3576)
!3622 = !DILocation(line: 55, column: 12, scope: !3620)
!3623 = !{!1283, !763, i64 16}
!3624 = !DILocation(line: 55, column: 33, scope: !3620)
!3625 = !{!1283, !763, i64 8}
!3626 = !DILocation(line: 55, column: 25, scope: !3620)
!3627 = !DILocation(line: 56, column: 7, scope: !3620)
!3628 = !DILocation(line: 56, column: 15, scope: !3620)
!3629 = !DILocation(line: 56, column: 37, scope: !3620)
!3630 = !{!1283, !763, i64 32}
!3631 = !DILocation(line: 56, column: 29, scope: !3620)
!3632 = !DILocation(line: 57, column: 7, scope: !3620)
!3633 = !DILocation(line: 57, column: 15, scope: !3620)
!3634 = !{!1283, !763, i64 72}
!3635 = !DILocation(line: 57, column: 29, scope: !3620)
!3636 = !DILocation(line: 55, column: 7, scope: !3576)
!3637 = !DILocation(line: 123, column: 26, scope: !3619)
!3638 = !DILocation(line: 123, column: 19, scope: !3619)
!3639 = !DILocation(line: 0, scope: !3619)
!3640 = !DILocation(line: 124, column: 15, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3619, file: !732, line: 124, column: 11)
!3642 = !DILocation(line: 124, column: 11, scope: !3619)
!3643 = !DILocation(line: 135, column: 19, scope: !3619)
!3644 = !DILocation(line: 136, column: 12, scope: !3619)
!3645 = !DILocation(line: 136, column: 20, scope: !3619)
!3646 = !{!1283, !1284, i64 144}
!3647 = !DILocation(line: 167, column: 7, scope: !3619)
!3648 = !DILocation(line: 169, column: 10, scope: !3576)
!3649 = !DILocation(line: 169, column: 3, scope: !3576)
!3650 = !DILocation(line: 170, column: 1, scope: !3576)
!3651 = !DISubprogram(name: "fseeko", scope: !945, file: !945, line: 736, type: !3652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!67, !3579, !168, !67}
!3654 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !661, file: !661, line: 100, type: !3655, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !3658)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!90, !1453, !93, !90, !3657}
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!3658 = !{!3659, !3660, !3661, !3662, !3663}
!3659 = !DILocalVariable(name: "pwc", arg: 1, scope: !3654, file: !661, line: 100, type: !1453)
!3660 = !DILocalVariable(name: "s", arg: 2, scope: !3654, file: !661, line: 100, type: !93)
!3661 = !DILocalVariable(name: "n", arg: 3, scope: !3654, file: !661, line: 100, type: !90)
!3662 = !DILocalVariable(name: "ps", arg: 4, scope: !3654, file: !661, line: 100, type: !3657)
!3663 = !DILocalVariable(name: "ret", scope: !3654, file: !661, line: 130, type: !90)
!3664 = !DILocation(line: 0, scope: !3654)
!3665 = !DILocation(line: 105, column: 9, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3654, file: !661, line: 105, column: 7)
!3667 = !DILocation(line: 105, column: 7, scope: !3654)
!3668 = !DILocation(line: 117, column: 10, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3654, file: !661, line: 117, column: 7)
!3670 = !DILocation(line: 117, column: 7, scope: !3654)
!3671 = !DILocation(line: 130, column: 16, scope: !3654)
!3672 = !DILocation(line: 135, column: 11, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3654, file: !661, line: 135, column: 7)
!3674 = !DILocation(line: 135, column: 25, scope: !3673)
!3675 = !DILocation(line: 135, column: 30, scope: !3673)
!3676 = !DILocation(line: 135, column: 7, scope: !3654)
!3677 = !DILocalVariable(name: "ps", arg: 1, scope: !3678, file: !1426, line: 1135, type: !3657)
!3678 = distinct !DISubprogram(name: "mbszero", scope: !1426, file: !1426, line: 1135, type: !3679, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !3681)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !3657}
!3681 = !{!3677}
!3682 = !DILocation(line: 0, scope: !3678, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 137, column: 5, scope: !3673)
!3684 = !DILocalVariable(name: "__dest", arg: 1, scope: !3685, file: !1435, line: 57, type: !88)
!3685 = distinct !DISubprogram(name: "memset", scope: !1435, file: !1435, line: 57, type: !1436, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !664, retainedNodes: !3686)
!3686 = !{!3684, !3687, !3688}
!3687 = !DILocalVariable(name: "__ch", arg: 2, scope: !3685, file: !1435, line: 57, type: !67)
!3688 = !DILocalVariable(name: "__len", arg: 3, scope: !3685, file: !1435, line: 57, type: !90)
!3689 = !DILocation(line: 0, scope: !3685, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 1137, column: 3, scope: !3678, inlinedAt: !3683)
!3691 = !DILocation(line: 59, column: 10, scope: !3685, inlinedAt: !3690)
!3692 = !DILocation(line: 137, column: 5, scope: !3673)
!3693 = !DILocation(line: 138, column: 11, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3654, file: !661, line: 138, column: 7)
!3695 = !DILocation(line: 138, column: 7, scope: !3654)
!3696 = !DILocation(line: 139, column: 5, scope: !3694)
!3697 = !DILocation(line: 143, column: 26, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3654, file: !661, line: 143, column: 7)
!3699 = !DILocation(line: 143, column: 41, scope: !3698)
!3700 = !DILocation(line: 143, column: 7, scope: !3654)
!3701 = !DILocation(line: 145, column: 15, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3703, file: !661, line: 145, column: 11)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !661, line: 144, column: 5)
!3704 = !DILocation(line: 145, column: 11, scope: !3703)
!3705 = !DILocation(line: 146, column: 32, scope: !3702)
!3706 = !DILocation(line: 146, column: 16, scope: !3702)
!3707 = !DILocation(line: 146, column: 14, scope: !3702)
!3708 = !DILocation(line: 146, column: 9, scope: !3702)
!3709 = !DILocation(line: 286, column: 1, scope: !3654)
!3710 = !DISubprogram(name: "mbsinit", scope: !3711, file: !3711, line: 293, type: !3712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !808)
!3711 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!67, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!3716 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !734, file: !734, line: 27, type: !2925, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3717)
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DILocalVariable(name: "ptr", arg: 1, scope: !3716, file: !734, line: 27, type: !88)
!3719 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3716, file: !734, line: 27, type: !90)
!3720 = !DILocalVariable(name: "size", arg: 3, scope: !3716, file: !734, line: 27, type: !90)
!3721 = !DILocalVariable(name: "nbytes", scope: !3716, file: !734, line: 29, type: !90)
!3722 = !DILocation(line: 0, scope: !3716)
!3723 = !DILocation(line: 30, column: 7, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3716, file: !734, line: 30, column: 7)
!3725 = !DILocalVariable(name: "ptr", arg: 1, scope: !3726, file: !3017, line: 2057, type: !88)
!3726 = distinct !DISubprogram(name: "rpl_realloc", scope: !3017, file: !3017, line: 2057, type: !3009, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3727)
!3727 = !{!3725, !3728}
!3728 = !DILocalVariable(name: "size", arg: 2, scope: !3726, file: !3017, line: 2057, type: !90)
!3729 = !DILocation(line: 0, scope: !3726, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 37, column: 10, scope: !3716)
!3731 = !DILocation(line: 2059, column: 24, scope: !3726, inlinedAt: !3730)
!3732 = !DILocation(line: 2059, column: 10, scope: !3726, inlinedAt: !3730)
!3733 = !DILocation(line: 37, column: 3, scope: !3716)
!3734 = !DILocation(line: 32, column: 7, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3724, file: !734, line: 31, column: 5)
!3736 = !DILocation(line: 32, column: 13, scope: !3735)
!3737 = !DILocation(line: 33, column: 7, scope: !3735)
!3738 = !DILocation(line: 38, column: 1, scope: !3716)
!3739 = distinct !DISubprogram(name: "hard_locale", scope: !679, file: !679, line: 28, type: !3740, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3742)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!129, !67}
!3742 = !{!3743, !3744}
!3743 = !DILocalVariable(name: "category", arg: 1, scope: !3739, file: !679, line: 28, type: !67)
!3744 = !DILocalVariable(name: "locale", scope: !3739, file: !679, line: 30, type: !3745)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3746)
!3746 = !{!3747}
!3747 = !DISubrange(count: 257)
!3748 = !DILocation(line: 0, scope: !3739)
!3749 = !DILocation(line: 30, column: 3, scope: !3739)
!3750 = !DILocation(line: 30, column: 8, scope: !3739)
!3751 = !DILocation(line: 32, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3739, file: !679, line: 32, column: 7)
!3753 = !DILocation(line: 32, column: 7, scope: !3739)
!3754 = !DILocalVariable(name: "__s1", arg: 1, scope: !3755, file: !833, line: 1359, type: !93)
!3755 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3756)
!3756 = !{!3754, !3757}
!3757 = !DILocalVariable(name: "__s2", arg: 2, scope: !3755, file: !833, line: 1359, type: !93)
!3758 = !DILocation(line: 0, scope: !3755, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 35, column: 9, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3739, file: !679, line: 35, column: 7)
!3761 = !DILocation(line: 1361, column: 11, scope: !3755, inlinedAt: !3759)
!3762 = !DILocation(line: 35, column: 29, scope: !3760)
!3763 = !DILocation(line: 0, scope: !3755, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 35, column: 32, scope: !3760)
!3765 = !DILocation(line: 1361, column: 11, scope: !3755, inlinedAt: !3764)
!3766 = !DILocation(line: 1361, column: 10, scope: !3755, inlinedAt: !3764)
!3767 = !DILocation(line: 35, column: 7, scope: !3739)
!3768 = !DILocation(line: 46, column: 3, scope: !3739)
!3769 = !DILocation(line: 47, column: 1, scope: !3739)
!3770 = distinct !DISubprogram(name: "setlocale_null_r", scope: !741, file: !741, line: 154, type: !3771, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!67, !67, !87, !90}
!3773 = !{!3774, !3775, !3776}
!3774 = !DILocalVariable(name: "category", arg: 1, scope: !3770, file: !741, line: 154, type: !67)
!3775 = !DILocalVariable(name: "buf", arg: 2, scope: !3770, file: !741, line: 154, type: !87)
!3776 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3770, file: !741, line: 154, type: !90)
!3777 = !DILocation(line: 0, scope: !3770)
!3778 = !DILocation(line: 159, column: 10, scope: !3770)
!3779 = !DILocation(line: 159, column: 3, scope: !3770)
!3780 = distinct !DISubprogram(name: "setlocale_null", scope: !741, file: !741, line: 186, type: !3781, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3783)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!93, !67}
!3783 = !{!3784}
!3784 = !DILocalVariable(name: "category", arg: 1, scope: !3780, file: !741, line: 186, type: !67)
!3785 = !DILocation(line: 0, scope: !3780)
!3786 = !DILocation(line: 189, column: 10, scope: !3780)
!3787 = !DILocation(line: 189, column: 3, scope: !3780)
!3788 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !743, file: !743, line: 35, type: !3781, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3789)
!3789 = !{!3790, !3791}
!3790 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !743, line: 35, type: !67)
!3791 = !DILocalVariable(name: "result", scope: !3788, file: !743, line: 37, type: !93)
!3792 = !DILocation(line: 0, scope: !3788)
!3793 = !DILocation(line: 37, column: 24, scope: !3788)
!3794 = !DILocation(line: 62, column: 3, scope: !3788)
!3795 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !743, file: !743, line: 66, type: !3771, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3796)
!3796 = !{!3797, !3798, !3799, !3800, !3801}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3795, file: !743, line: 66, type: !67)
!3798 = !DILocalVariable(name: "buf", arg: 2, scope: !3795, file: !743, line: 66, type: !87)
!3799 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3795, file: !743, line: 66, type: !90)
!3800 = !DILocalVariable(name: "result", scope: !3795, file: !743, line: 111, type: !93)
!3801 = !DILocalVariable(name: "length", scope: !3802, file: !743, line: 125, type: !90)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !743, line: 124, column: 5)
!3803 = distinct !DILexicalBlock(scope: !3795, file: !743, line: 113, column: 7)
!3804 = !DILocation(line: 0, scope: !3795)
!3805 = !DILocation(line: 0, scope: !3788, inlinedAt: !3806)
!3806 = distinct !DILocation(line: 111, column: 24, scope: !3795)
!3807 = !DILocation(line: 37, column: 24, scope: !3788, inlinedAt: !3806)
!3808 = !DILocation(line: 113, column: 14, scope: !3803)
!3809 = !DILocation(line: 113, column: 7, scope: !3795)
!3810 = !DILocation(line: 116, column: 19, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3812, file: !743, line: 116, column: 11)
!3812 = distinct !DILexicalBlock(scope: !3803, file: !743, line: 114, column: 5)
!3813 = !DILocation(line: 116, column: 11, scope: !3812)
!3814 = !DILocation(line: 120, column: 16, scope: !3811)
!3815 = !DILocation(line: 120, column: 9, scope: !3811)
!3816 = !DILocation(line: 125, column: 23, scope: !3802)
!3817 = !DILocation(line: 0, scope: !3802)
!3818 = !DILocation(line: 126, column: 18, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3802, file: !743, line: 126, column: 11)
!3820 = !DILocation(line: 126, column: 11, scope: !3802)
!3821 = !DILocation(line: 128, column: 39, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !743, line: 127, column: 9)
!3823 = !DILocalVariable(name: "__dest", arg: 1, scope: !3824, file: !1435, line: 26, type: !3286)
!3824 = distinct !DISubprogram(name: "memcpy", scope: !1435, file: !1435, line: 26, type: !3284, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3825)
!3825 = !{!3823, !3826, !3827}
!3826 = !DILocalVariable(name: "__src", arg: 2, scope: !3824, file: !1435, line: 26, type: !972)
!3827 = !DILocalVariable(name: "__len", arg: 3, scope: !3824, file: !1435, line: 26, type: !90)
!3828 = !DILocation(line: 0, scope: !3824, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 128, column: 11, scope: !3822)
!3830 = !DILocation(line: 29, column: 10, scope: !3824, inlinedAt: !3829)
!3831 = !DILocation(line: 129, column: 11, scope: !3822)
!3832 = !DILocation(line: 133, column: 23, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3834, file: !743, line: 133, column: 15)
!3834 = distinct !DILexicalBlock(scope: !3819, file: !743, line: 132, column: 9)
!3835 = !DILocation(line: 133, column: 15, scope: !3834)
!3836 = !DILocation(line: 138, column: 44, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3833, file: !743, line: 134, column: 13)
!3838 = !DILocation(line: 0, scope: !3824, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 138, column: 15, scope: !3837)
!3840 = !DILocation(line: 29, column: 10, scope: !3824, inlinedAt: !3839)
!3841 = !DILocation(line: 139, column: 15, scope: !3837)
!3842 = !DILocation(line: 139, column: 32, scope: !3837)
!3843 = !DILocation(line: 140, column: 13, scope: !3837)
!3844 = !DILocation(line: 0, scope: !3803)
!3845 = !DILocation(line: 145, column: 1, scope: !3795)
