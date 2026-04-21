; ModuleID = 'src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [31 x i8] c"Print the user's login name.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"logname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1, !dbg !62
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !64
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !99
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !106
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !111
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !151
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !153
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !155
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !157
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !162
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !167
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !172
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !174
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !176
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !178
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !189
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !191
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !196
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !201
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !206
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !287
@Version = dso_local local_unnamed_addr global ptr @.str.17, align 8, !dbg !290
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !294
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !307
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !299
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !301
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !303
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !305
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !309
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !315
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !346
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !317
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !336
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !338
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !340
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !342
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !344
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !348
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !350
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !355
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !360
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !363
@optind = external local_unnamed_addr global i32, align 4
@.str.1.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !368
@.str.2.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !370
@.str.3.42 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !372
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !384
@.str.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !390
@.str.1.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !392
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !394
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !425
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !428
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !430
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !435
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !437
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !439
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !441
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !443
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !445
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !447
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.54, ptr @.str.1.55, ptr @.str.2.56, ptr @.str.3.57, ptr @.str.4.58, ptr @.str.5.59, ptr @.str.6.60, ptr @.str.7.61, ptr @.str.8.62, ptr @.str.9.63, ptr null], align 16, !dbg !449
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !474
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !488
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !526
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !533
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !490
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !535
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !478
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !495
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !497
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !499
@.str.13.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !501
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !503
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !541
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !544
@.str.2.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !546
@.str.3.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !548
@.str.4.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !550
@.str.5.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !552
@.str.6.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !557
@.str.7.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !562
@.str.8.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !564
@.str.9.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !569
@.str.10.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !574
@.str.11.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !579
@.str.12.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !584
@.str.13.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !586
@.str.14.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !591
@.str.15.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !596
@.str.16.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !601
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.93 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !606
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !608
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !610
@.str.20.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !612
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !614
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !616
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !618
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !623
@exit_failure = dso_local global i32 1, align 4, !dbg !631
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !637
@.str.1.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !640
@.str.2.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !642
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !644
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !647
@.str.1.123 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !662

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !736 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !740, metadata !DIExpression()), !dbg !741
  %2 = icmp eq i32 %0, 0, !dbg !742
  br i1 %2, label %8, label %3, !dbg !744

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !745, !tbaa !747
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !745
  %6 = load ptr, ptr @program_name, align 8, !dbg !745, !tbaa !747
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !745
  br label %31, !dbg !745

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !751
  %10 = load ptr, ptr @program_name, align 8, !dbg !751, !tbaa !747
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !751
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !753
  %13 = load ptr, ptr @stdout, align 8, !dbg !753, !tbaa !747
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !753
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !754
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !754
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !755
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !755
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !756, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata !775, metadata !769, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr poison, metadata !768, metadata !DIExpression()), !dbg !773
  tail call void @emit_bug_reporting_address() #37, !dbg !776
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !777
  call void @llvm.dbg.value(metadata ptr %17, metadata !771, metadata !DIExpression()), !dbg !773
  %18 = icmp eq ptr %17, null, !dbg !778
  br i1 %18, label %26, label %19, !dbg !780

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #38, !dbg !781
  %21 = icmp eq i32 %20, 0, !dbg !781
  br i1 %21, label %26, label %22, !dbg !782

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !783
  %24 = load ptr, ptr @stdout, align 8, !dbg !783, !tbaa !747
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !783
  br label %26, !dbg !785

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !768, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !772, metadata !DIExpression()), !dbg !773
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !786
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #37, !dbg !786
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !787
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #37, !dbg !787
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !788
  unreachable, !dbg !788
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !789 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !793 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !799 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !802 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !806
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !807, !tbaa !808
  %3 = icmp eq i32 %2, -1, !dbg !810
  br i1 %3, label %4, label %16, !dbg !811

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #37, !dbg !812
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !813
  %6 = icmp eq ptr %5, null, !dbg !814
  br i1 %6, label %14, label %7, !dbg !815

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !816, !tbaa !817
  %9 = icmp eq i8 %8, 0, !dbg !816
  br i1 %9, label %14, label %10, !dbg !818

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !819, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !825, metadata !DIExpression()), !dbg !826
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #38, !dbg !828
  %12 = icmp eq i32 %11, 0, !dbg !829
  %13 = zext i1 %12 to i32, !dbg !818
  br label %14, !dbg !818

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !830, !tbaa !808
  br label %16, !dbg !831

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !832
  %18 = icmp eq i32 %17, 0, !dbg !832
  br i1 %18, label %22, label %19, !dbg !834

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !835, !tbaa !747
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !835
  br label %124, !dbg !837

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !806
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #38, !dbg !838
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !839
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !806
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !840
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !806
  %26 = icmp eq ptr %25, null, !dbg !841
  br i1 %26, label %54, label %27, !dbg !842

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !843
  br i1 %28, label %54, label %29, !dbg !844

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !845
  %30 = icmp ult ptr %24, %25, !dbg !846
  br i1 %30, label %31, label %54, !dbg !847

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !806
  %33 = load ptr, ptr %32, align 8, !tbaa !747
  br label %34, !dbg !847

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !845
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !845
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !848
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !845
  %38 = load i8, ptr %35, align 1, !dbg !848, !tbaa !817
  %39 = sext i8 %38 to i64, !dbg !848
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !848
  %41 = load i16, ptr %40, align 2, !dbg !848, !tbaa !849
  %42 = freeze i16 %41, !dbg !851
  %43 = lshr i16 %42, 13, !dbg !851
  %44 = and i16 %43, 1, !dbg !851
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !852
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !845
  %47 = icmp ult ptr %37, %25, !dbg !846
  %48 = icmp ult i64 %46, 2, !dbg !853
  %49 = select i1 %47, i1 %48, i1 false, !dbg !853
  br i1 %49, label %34, label %50, !dbg !847, !llvm.loop !854

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !856
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !858
  %53 = zext i1 %51 to i8, !dbg !858
  br label %54, !dbg !858

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !806
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !806
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !217, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !220, metadata !DIExpression()), !dbg !806
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #38, !dbg !859
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !226, metadata !DIExpression()), !dbg !806
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !860
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !227, metadata !DIExpression()), !dbg !806
  br label %59, !dbg !861

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !806
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !806
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !217, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !227, metadata !DIExpression()), !dbg !806
  %62 = load i8, ptr %60, align 1, !dbg !862, !tbaa !817
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !863

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !864
  %65 = load i8, ptr %64, align 1, !dbg !867, !tbaa !817
  %66 = icmp eq i8 %65, 45, !dbg !868
  %67 = select i1 %66, i8 0, i8 %61, !dbg !869
  br label %68, !dbg !869

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !806
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !217, metadata !DIExpression()), !dbg !806
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !870
  %71 = load ptr, ptr %70, align 8, !dbg !870, !tbaa !747
  %72 = sext i8 %62 to i64, !dbg !870
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !870
  %74 = load i16, ptr %73, align 2, !dbg !870, !tbaa !849
  %75 = and i16 %74, 8192, !dbg !870
  %76 = icmp eq i16 %75, 0, !dbg !870
  br i1 %76, label %92, label %77, !dbg !872

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !873
  br i1 %78, label %94, label %79, !dbg !876

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !877
  %81 = load i8, ptr %80, align 1, !dbg !877, !tbaa !817
  %82 = sext i8 %81 to i64, !dbg !877
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !877
  %84 = load i16, ptr %83, align 2, !dbg !877, !tbaa !849
  %85 = and i16 %84, 8192, !dbg !877
  %86 = icmp eq i16 %85, 0, !dbg !877
  br i1 %86, label %87, label %94, !dbg !878

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !879
  %89 = icmp ne i8 %88, 0, !dbg !879
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !881
  br i1 %91, label %92, label %94, !dbg !881

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !882
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !227, metadata !DIExpression()), !dbg !806
  br label %59, !dbg !861, !llvm.loop !883

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !885
  %96 = load ptr, ptr @stdout, align 8, !dbg !885, !tbaa !747
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !885
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !819, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata !775, metadata !825, metadata !DIExpression()), !dbg !904
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !282, metadata !DIExpression()), !dbg !806
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #38, !dbg !906
  %99 = icmp eq i32 %98, 0, !dbg !906
  br i1 %99, label %103, label %100, !dbg !908

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #38, !dbg !909
  %102 = icmp eq i32 %101, 0, !dbg !909
  br i1 %102, label %103, label %106, !dbg !910

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !911
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !911
  br label %109, !dbg !913

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !914
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !914
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !916, !tbaa !747
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %110), !dbg !916
  %112 = load ptr, ptr @stdout, align 8, !dbg !917, !tbaa !747
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %112), !dbg !917
  %114 = ptrtoint ptr %60 to i64, !dbg !918
  %115 = sub i64 %114, %95, !dbg !918
  %116 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !747
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !918
  %118 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !747
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %118), !dbg !919
  %120 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !747
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %120), !dbg !920
  %122 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !747
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !921
  br label %124, !dbg !922

124:                                              ; preds = %109, %19
  ret void, !dbg !922
}

; Function Attrs: nounwind
declare !dbg !923 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !927 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !931 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !933 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !936 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !939 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !942 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !945 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !951 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !952 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !958 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !963, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !964, metadata !DIExpression()), !dbg !966
  %3 = load ptr, ptr %1, align 8, !dbg !967, !tbaa !747
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !968
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !969
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !970
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !971
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !972
  %8 = load ptr, ptr @Version, align 8, !dbg !973, !tbaa !747
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !974
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !975
  %10 = load i32, ptr @optind, align 4, !dbg !976, !tbaa !808
  %11 = icmp slt i32 %10, %0, !dbg !978
  br i1 %11, label %12, label %19, !dbg !979

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !980
  %14 = load i32, ptr @optind, align 4, !dbg !980, !tbaa !808
  %15 = sext i32 %14 to i64, !dbg !980
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !980
  %17 = load ptr, ptr %16, align 8, !dbg !980, !tbaa !747
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !980
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !980
  tail call void @usage(i32 noundef 1) #41, !dbg !982
  unreachable, !dbg !982

19:                                               ; preds = %2
  %20 = tail call ptr @getlogin() #37, !dbg !983
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !965, metadata !DIExpression()), !dbg !966
  %21 = icmp eq ptr %20, null, !dbg !984
  br i1 %21, label %22, label %24, !dbg !986

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !987
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %23) #37, !dbg !987
  unreachable, !dbg !987

24:                                               ; preds = %19
  %25 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %20), !dbg !988
  ret i32 0, !dbg !989
}

; Function Attrs: nounwind
declare !dbg !990 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !993 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !994 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !997 ptr @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1001 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1004 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1006, metadata !DIExpression()), !dbg !1007
  store ptr %0, ptr @file_name, align 8, !dbg !1008, !tbaa !747
  ret void, !dbg !1009
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1010 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1014, metadata !DIExpression()), !dbg !1015
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1016, !tbaa !1017
  ret void, !dbg !1019
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1020 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1025, !tbaa !747
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1026
  %3 = icmp eq i32 %2, 0, !dbg !1027
  br i1 %3, label %22, label %4, !dbg !1028

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1029, !tbaa !1017, !range !1030, !noundef !775
  %6 = icmp eq i8 %5, 0, !dbg !1029
  br i1 %6, label %11, label %7, !dbg !1031

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1032
  %9 = load i32, ptr %8, align 4, !dbg !1032, !tbaa !808
  %10 = icmp eq i32 %9, 32, !dbg !1033
  br i1 %10, label %22, label %11, !dbg !1034

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #37, !dbg !1035
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1022, metadata !DIExpression()), !dbg !1036
  %13 = load ptr, ptr @file_name, align 8, !dbg !1037, !tbaa !747
  %14 = icmp eq ptr %13, null, !dbg !1037
  %15 = tail call ptr @__errno_location() #40, !dbg !1039
  %16 = load i32, ptr %15, align 4, !dbg !1039, !tbaa !808
  br i1 %14, label %19, label %17, !dbg !1040

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1041
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #37, !dbg !1041
  br label %20, !dbg !1041

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #37, !dbg !1042
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1043, !tbaa !808
  tail call void @_exit(i32 noundef %21) #39, !dbg !1044
  unreachable, !dbg !1044

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1045, !tbaa !747
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1047
  %25 = icmp eq i32 %24, 0, !dbg !1048
  br i1 %25, label %28, label %26, !dbg !1049

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1050, !tbaa !808
  tail call void @_exit(i32 noundef %27) #39, !dbg !1051
  unreachable, !dbg !1051

28:                                               ; preds = %22
  ret void, !dbg !1052
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1053 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1057 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1058 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1062, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1063, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1064, metadata !DIExpression()), !dbg !1066
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1065, metadata !DIExpression()), !dbg !1066
  tail call fastcc void @flush_stdout(), !dbg !1067
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1068, !tbaa !747
  %6 = icmp eq ptr %5, null, !dbg !1068
  br i1 %6, label %8, label %7, !dbg !1070

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1071
  br label %12, !dbg !1071

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1072, !tbaa !747
  %10 = tail call ptr @getprogname() #38, !dbg !1072
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #37, !dbg !1072
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1074
  ret void, !dbg !1075
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1076 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 1, metadata !1080, metadata !DIExpression()), !dbg !1085
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1088
  %2 = icmp slt i32 %1, 0, !dbg !1089
  br i1 %2, label %6, label %3, !dbg !1090

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1091, !tbaa !747
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1091
  br label %6, !dbg !1091

6:                                                ; preds = %3, %0
  ret void, !dbg !1092
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1093 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1099
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1095, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1096, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1097, metadata !DIExpression()), !dbg !1100
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1098, metadata !DIExpression()), !dbg !1100
  %6 = load ptr, ptr @stderr, align 8, !dbg !1101, !tbaa !747
  call void @llvm.dbg.value(metadata ptr %6, metadata !1102, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %2, metadata !1142, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %3, metadata !1143, metadata !DIExpression()), !dbg !1144
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1146
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1147, !tbaa !808
  %9 = add i32 %8, 1, !dbg !1147
  store i32 %9, ptr @error_message_count, align 4, !dbg !1147, !tbaa !808
  %10 = icmp eq i32 %1, 0, !dbg !1148
  br i1 %10, label %20, label %11, !dbg !1150

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1151, metadata !DIExpression(), metadata !1099, metadata ptr %5, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %1, metadata !1154, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1161
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1162
  call void @llvm.dbg.value(metadata ptr %12, metadata !1155, metadata !DIExpression()), !dbg !1159
  %13 = icmp eq ptr %12, null, !dbg !1163
  br i1 %13, label %14, label %16, !dbg !1165

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #37, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %15, metadata !1155, metadata !DIExpression()), !dbg !1159
  br label %16, !dbg !1167

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1159
  call void @llvm.dbg.value(metadata ptr %17, metadata !1155, metadata !DIExpression()), !dbg !1159
  %18 = load ptr, ptr @stderr, align 8, !dbg !1168, !tbaa !747
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #37, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1169
  br label %20, !dbg !1170

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1171, !tbaa !747
  call void @llvm.dbg.value(metadata i32 10, metadata !1172, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata ptr %21, metadata !1178, metadata !DIExpression()), !dbg !1179
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1181
  %23 = load ptr, ptr %22, align 8, !dbg !1181, !tbaa !1182
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1181
  %25 = load ptr, ptr %24, align 8, !dbg !1181, !tbaa !1185
  %26 = icmp ult ptr %23, %25, !dbg !1181
  br i1 %26, label %29, label %27, !dbg !1181, !prof !1186

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1181
  br label %31, !dbg !1181

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1181
  store ptr %30, ptr %22, align 8, !dbg !1181, !tbaa !1182
  store i8 10, ptr %23, align 1, !dbg !1181, !tbaa !817
  br label %31, !dbg !1181

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1187, !tbaa !747
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1187
  %34 = icmp eq i32 %0, 0, !dbg !1188
  br i1 %34, label %36, label %35, !dbg !1190

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1191
  unreachable, !dbg !1191

36:                                               ; preds = %31
  ret void, !dbg !1192
}

declare !dbg !1193 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1196 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1199 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1202 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1205 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1209 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1216, metadata !DIExpression(), metadata !1222, metadata ptr %4, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1213, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1214, metadata !DIExpression()), !dbg !1223
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1215, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1224
  call void @llvm.va_start(ptr nonnull %4), !dbg !1225
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1226
  call void @llvm.va_end(ptr nonnull %4), !dbg !1227
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1228
  ret void, !dbg !1228
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !319 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !330, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !331, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !333, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !334, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !335, metadata !DIExpression()), !dbg !1229
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1230, !tbaa !808
  %8 = icmp eq i32 %7, 0, !dbg !1230
  br i1 %8, label %23, label %9, !dbg !1232

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1233, !tbaa !808
  %11 = icmp eq i32 %10, %3, !dbg !1236
  br i1 %11, label %12, label %22, !dbg !1237

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1238, !tbaa !747
  %14 = icmp eq ptr %13, %2, !dbg !1239
  br i1 %14, label %36, label %15, !dbg !1240

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1241
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1242
  br i1 %18, label %19, label %22, !dbg !1242

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1243
  %21 = icmp eq i32 %20, 0, !dbg !1244
  br i1 %21, label %36, label %22, !dbg !1245

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1246, !tbaa !747
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1247, !tbaa !808
  br label %23, !dbg !1248

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1249
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1250, !tbaa !747
  %25 = icmp eq ptr %24, null, !dbg !1250
  br i1 %25, label %27, label %26, !dbg !1252

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1253
  br label %31, !dbg !1253

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1254, !tbaa !747
  %29 = tail call ptr @getprogname() #38, !dbg !1254
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #37, !dbg !1254
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1256, !tbaa !747
  %33 = icmp eq ptr %2, null, !dbg !1256
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1256
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1256
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1257
  br label %36, !dbg !1258

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1258
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1259 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1268, metadata !DIExpression(), metadata !1269, metadata ptr %6, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1263, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1264, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1265, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1266, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1267, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1271
  call void @llvm.va_start(ptr nonnull %6), !dbg !1272
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1273
  call void @llvm.va_end(ptr nonnull %6), !dbg !1274
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1275
  ret void, !dbg !1275
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1276 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1279, !tbaa !747
  ret ptr %1, !dbg !1280
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1281 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1311
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1296, metadata !DIExpression(), metadata !1311, metadata ptr %7, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1286, metadata !DIExpression()), !dbg !1313
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1287, metadata !DIExpression()), !dbg !1313
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1288, metadata !DIExpression()), !dbg !1313
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1289, metadata !DIExpression()), !dbg !1313
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1290, metadata !DIExpression()), !dbg !1313
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1291, metadata !DIExpression()), !dbg !1313
  %8 = load i32, ptr @opterr, align 4, !dbg !1314, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1292, metadata !DIExpression()), !dbg !1313
  store i32 0, ptr @opterr, align 4, !dbg !1315, !tbaa !808
  %9 = icmp eq i32 %0, 2, !dbg !1316
  br i1 %9, label %10, label %15, !dbg !1317

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1318
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1293, metadata !DIExpression()), !dbg !1319
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1320

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #37, !dbg !1321
  br label %15, !dbg !1322

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #37, !dbg !1323
  call void @llvm.va_start(ptr nonnull %7), !dbg !1324
  %14 = load ptr, ptr @stdout, align 8, !dbg !1325, !tbaa !747
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #37, !dbg !1326
  call void @exit(i32 noundef 0) #39, !dbg !1327
  unreachable, !dbg !1327

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1328, !tbaa !808
  store i32 0, ptr @optind, align 4, !dbg !1329, !tbaa !808
  ret void, !dbg !1330
}

; Function Attrs: nounwind
declare !dbg !1331 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1337 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1356
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1351, metadata !DIExpression(), metadata !1356, metadata ptr %8, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1341, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1342, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1343, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1344, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1345, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1346, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1347, metadata !DIExpression()), !dbg !1358
  %9 = load i32, ptr @opterr, align 4, !dbg !1359, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1348, metadata !DIExpression()), !dbg !1358
  store i32 1, ptr @opterr, align 4, !dbg !1360, !tbaa !808
  %10 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1349, metadata !DIExpression()), !dbg !1358
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1362
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1350, metadata !DIExpression()), !dbg !1358
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1363

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #37, !dbg !1364
  call void @llvm.va_start(ptr nonnull %8), !dbg !1365
  %13 = load ptr, ptr @stdout, align 8, !dbg !1366, !tbaa !747
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1367
  call void @exit(i32 noundef 0) #39, !dbg !1368
  unreachable, !dbg !1368

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1369, !tbaa !808
  br label %16, !dbg !1370

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #37, !dbg !1371
  br label %18, !dbg !1372

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1372, !tbaa !808
  ret void, !dbg !1373
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1374 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1376, metadata !DIExpression()), !dbg !1379
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1380
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1377, metadata !DIExpression()), !dbg !1379
  %3 = icmp eq ptr %2, null, !dbg !1381
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1381
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1381
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1378, metadata !DIExpression()), !dbg !1379
  %6 = ptrtoint ptr %5 to i64, !dbg !1382
  %7 = ptrtoint ptr %0 to i64, !dbg !1382
  %8 = sub i64 %6, %7, !dbg !1382
  %9 = icmp sgt i64 %8, 6, !dbg !1384
  br i1 %9, label %10, label %19, !dbg !1385

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %11, metadata !1387, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1392, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 7, metadata !1393, metadata !DIExpression()), !dbg !1394
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1396
  %13 = icmp eq i32 %12, 0, !dbg !1397
  br i1 %13, label %14, label %19, !dbg !1398

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1376, metadata !DIExpression()), !dbg !1379
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #38, !dbg !1399
  %16 = icmp eq i32 %15, 0, !dbg !1402
  %17 = select i1 %16, i64 3, i64 0, !dbg !1403
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1403
  br label %19, !dbg !1403

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1379
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1378, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1376, metadata !DIExpression()), !dbg !1379
  store ptr %20, ptr @program_name, align 8, !dbg !1404, !tbaa !747
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1405, !tbaa !747
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1406, !tbaa !747
  ret void, !dbg !1407
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1408 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !396 {
  %3 = alloca i32, align 4, !DIAssignID !1409
  call void @llvm.dbg.assign(metadata i1 undef, metadata !406, metadata !DIExpression(), metadata !1409, metadata ptr %3, metadata !DIExpression()), !dbg !1410
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1411
  call void @llvm.dbg.assign(metadata i1 undef, metadata !411, metadata !DIExpression(), metadata !1411, metadata ptr %4, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !403, metadata !DIExpression()), !dbg !1410
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !404, metadata !DIExpression()), !dbg !1410
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1412
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !405, metadata !DIExpression()), !dbg !1410
  %6 = icmp eq ptr %5, %0, !dbg !1413
  br i1 %6, label %7, label %14, !dbg !1415

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1416
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %4, metadata !1418, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata ptr %4, metadata !1427, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i32 0, metadata !1433, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 8, metadata !1434, metadata !DIExpression()), !dbg !1435
  store i64 0, ptr %4, align 8, !dbg !1437
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1438
  %9 = icmp eq i64 %8, 2, !dbg !1440
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1441
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1442
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1442
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1410
  ret ptr %15, !dbg !1442
}

; Function Attrs: nounwind
declare !dbg !1443 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1449 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1454, metadata !DIExpression()), !dbg !1457
  %2 = tail call ptr @__errno_location() #40, !dbg !1458
  %3 = load i32, ptr %2, align 4, !dbg !1458, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1455, metadata !DIExpression()), !dbg !1457
  %4 = icmp eq ptr %0, null, !dbg !1459
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1459
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1460
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 %3, ptr %2, align 4, !dbg !1461, !tbaa !808
  ret ptr %6, !dbg !1462
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1463 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1469, metadata !DIExpression()), !dbg !1470
  %2 = icmp eq ptr %0, null, !dbg !1471
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1471
  %4 = load i32, ptr %3, align 8, !dbg !1472, !tbaa !1473
  ret i32 %4, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1480, metadata !DIExpression()), !dbg !1482
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1481, metadata !DIExpression()), !dbg !1482
  %3 = icmp eq ptr %0, null, !dbg !1483
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1483
  store i32 %1, ptr %4, align 8, !dbg !1484, !tbaa !1473
  ret void, !dbg !1485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1486 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1490, metadata !DIExpression()), !dbg !1498
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()), !dbg !1498
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1492, metadata !DIExpression()), !dbg !1498
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1493, metadata !DIExpression()), !dbg !1498
  %4 = icmp eq ptr %0, null, !dbg !1499
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1499
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1500
  %7 = lshr i8 %1, 5, !dbg !1501
  %8 = zext nneg i8 %7 to i64, !dbg !1501
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1502
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1494, metadata !DIExpression()), !dbg !1498
  %10 = and i8 %1, 31, !dbg !1503
  %11 = zext nneg i8 %10 to i32, !dbg !1503
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1496, metadata !DIExpression()), !dbg !1498
  %12 = load i32, ptr %9, align 4, !dbg !1504, !tbaa !808
  %13 = lshr i32 %12, %11, !dbg !1505
  %14 = and i32 %13, 1, !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1497, metadata !DIExpression()), !dbg !1498
  %15 = xor i32 %13, %2, !dbg !1507
  %16 = and i32 %15, 1, !dbg !1507
  %17 = shl nuw i32 %16, %11, !dbg !1508
  %18 = xor i32 %17, %12, !dbg !1509
  store i32 %18, ptr %9, align 4, !dbg !1509, !tbaa !808
  ret i32 %14, !dbg !1510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1511 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1515, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1518
  %3 = icmp eq ptr %0, null, !dbg !1519
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1521
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1515, metadata !DIExpression()), !dbg !1518
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1522
  %6 = load i32, ptr %5, align 4, !dbg !1522, !tbaa !1523
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1517, metadata !DIExpression()), !dbg !1518
  store i32 %1, ptr %5, align 4, !dbg !1524, !tbaa !1523
  ret i32 %6, !dbg !1525
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1530, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1531, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1532, metadata !DIExpression()), !dbg !1533
  %4 = icmp eq ptr %0, null, !dbg !1534
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !1533
  store i32 10, ptr %5, align 8, !dbg !1537, !tbaa !1473
  %6 = icmp ne ptr %1, null, !dbg !1538
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1540
  br i1 %8, label %10, label %9, !dbg !1540

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1541
  unreachable, !dbg !1541

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1542
  store ptr %1, ptr %11, align 8, !dbg !1543, !tbaa !1544
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1545
  store ptr %2, ptr %12, align 8, !dbg !1546, !tbaa !1547
  ret void, !dbg !1548
}

; Function Attrs: noreturn nounwind
declare !dbg !1549 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1554, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1555, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1556, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1557, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1558, metadata !DIExpression()), !dbg !1562
  %6 = icmp eq ptr %4, null, !dbg !1563
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1563
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1559, metadata !DIExpression()), !dbg !1562
  %8 = tail call ptr @__errno_location() #40, !dbg !1564
  %9 = load i32, ptr %8, align 4, !dbg !1564, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1560, metadata !DIExpression()), !dbg !1562
  %10 = load i32, ptr %7, align 8, !dbg !1565, !tbaa !1473
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1566
  %12 = load i32, ptr %11, align 4, !dbg !1566, !tbaa !1523
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1567
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1568
  %15 = load ptr, ptr %14, align 8, !dbg !1568, !tbaa !1544
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1569
  %17 = load ptr, ptr %16, align 8, !dbg !1569, !tbaa !1547
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1570
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i32 %9, ptr %8, align 4, !dbg !1571, !tbaa !808
  ret i64 %18, !dbg !1572
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1573 {
  %10 = alloca i32, align 4, !DIAssignID !1641
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1642
  %12 = alloca i32, align 4, !DIAssignID !1643
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1644
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1619, metadata !DIExpression(), metadata !1645, metadata ptr %14, metadata !DIExpression()), !dbg !1646
  %15 = alloca i32, align 4, !DIAssignID !1647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1622, metadata !DIExpression(), metadata !1647, metadata ptr %15, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1579, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1581, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1582, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1583, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1584, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1585, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1586, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1587, metadata !DIExpression()), !dbg !1649
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1650
  %17 = icmp eq i64 %16, 1, !dbg !1651
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1588, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1591, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1593, metadata !DIExpression()), !dbg !1649
  %18 = trunc i32 %5 to i8, !dbg !1652
  %19 = lshr i8 %18, 1, !dbg !1652
  %20 = and i8 %19, 1, !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1649
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1653

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1654
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1655
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1656
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1657
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1649
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1658
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1659
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1596, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1593, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1592, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1591, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1582, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1587, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1586, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1583, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1597), !dbg !1660
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1649
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
  ], !dbg !1661

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1583, metadata !DIExpression()), !dbg !1649
  br label %114, !dbg !1662

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1583, metadata !DIExpression()), !dbg !1649
  %43 = and i8 %37, 1, !dbg !1663
  %44 = icmp eq i8 %43, 0, !dbg !1663
  br i1 %44, label %45, label %114, !dbg !1662

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1665
  br i1 %46, label %114, label %47, !dbg !1668

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1665, !tbaa !817
  br label %114, !dbg !1665

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !512, metadata !DIExpression(), metadata !1643, metadata ptr %12, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !513, metadata !DIExpression(), metadata !1644, metadata ptr %13, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !509, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %29, metadata !510, metadata !DIExpression()), !dbg !1669
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #37, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %49, metadata !511, metadata !DIExpression()), !dbg !1669
  %50 = icmp eq ptr %49, @.str.11.64, !dbg !1674
  br i1 %50, label %51, label %60, !dbg !1676

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %13, metadata !1679, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %13, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i64 0, ptr %13, align 8, !dbg !1694
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1695
  %53 = icmp eq i64 %52, 3, !dbg !1697
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1698
  %57 = icmp eq i32 %29, 9, !dbg !1698
  %58 = select i1 %57, ptr @.str.10.66, ptr @.str.12.67, !dbg !1698
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1699
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1669
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1586, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !512, metadata !DIExpression(), metadata !1641, metadata ptr %10, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !513, metadata !DIExpression(), metadata !1642, metadata ptr %11, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !509, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %29, metadata !510, metadata !DIExpression()), !dbg !1700
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #37, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %62, metadata !511, metadata !DIExpression()), !dbg !1700
  %63 = icmp eq ptr %62, @.str.12.67, !dbg !1703
  br i1 %63, label %64, label %73, !dbg !1704

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1706
  call void @llvm.dbg.value(metadata ptr %11, metadata !1679, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %11, metadata !1687, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1709
  store i64 0, ptr %11, align 8, !dbg !1711
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1712
  %66 = icmp eq i64 %65, 3, !dbg !1713
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1714
  %70 = icmp eq i32 %29, 9, !dbg !1714
  %71 = select i1 %70, ptr @.str.10.66, ptr @.str.12.67, !dbg !1714
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1715
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1587, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1586, metadata !DIExpression()), !dbg !1649
  %76 = and i8 %37, 1, !dbg !1716
  %77 = icmp eq i8 %76, 0, !dbg !1716
  br i1 %77, label %78, label %93, !dbg !1717

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1599, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1589, metadata !DIExpression()), !dbg !1649
  %79 = load i8, ptr %74, align 1, !dbg !1719, !tbaa !817
  %80 = icmp eq i8 %79, 0, !dbg !1721
  br i1 %80, label %93, label %81, !dbg !1721

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1599, metadata !DIExpression()), !dbg !1718
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1589, metadata !DIExpression()), !dbg !1649
  %85 = icmp ult i64 %84, %40, !dbg !1722
  br i1 %85, label %86, label %88, !dbg !1725

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1722
  store i8 %82, ptr %87, align 1, !dbg !1722, !tbaa !817
  br label %88, !dbg !1722

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1589, metadata !DIExpression()), !dbg !1649
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1726
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1599, metadata !DIExpression()), !dbg !1718
  %91 = load i8, ptr %90, align 1, !dbg !1719, !tbaa !817
  %92 = icmp eq i8 %91, 0, !dbg !1721
  br i1 %92, label %93, label %81, !dbg !1721, !llvm.loop !1727

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1593, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1591, metadata !DIExpression()), !dbg !1649
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1592, metadata !DIExpression()), !dbg !1649
  br label %114, !dbg !1731

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1593, metadata !DIExpression()), !dbg !1649
  br label %98, !dbg !1732

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1593, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1594, metadata !DIExpression()), !dbg !1649
  br label %98, !dbg !1733

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1657
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1593, metadata !DIExpression()), !dbg !1649
  %101 = and i8 %100, 1, !dbg !1734
  %102 = icmp eq i8 %101, 0, !dbg !1734
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1736
  br label %104, !dbg !1736

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1649
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1593, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1583, metadata !DIExpression()), !dbg !1649
  %107 = and i8 %106, 1, !dbg !1737
  %108 = icmp eq i8 %107, 0, !dbg !1737
  br i1 %108, label %109, label %114, !dbg !1739

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1740
  br i1 %110, label %114, label %111, !dbg !1743

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1740, !tbaa !817
  br label %114, !dbg !1740

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1649
  br label %114, !dbg !1744

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1745
  unreachable, !dbg !1745

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1729
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.66, %45 ], [ @.str.10.66, %47 ], [ @.str.10.66, %42 ], [ %34, %28 ], [ @.str.12.67, %109 ], [ @.str.12.67, %111 ], [ @.str.12.67, %104 ], [ @.str.10.66, %41 ], !dbg !1649
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1649
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1649
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1594, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1593, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1592, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1591, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1587, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1586, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1583, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1746
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
  br label %138, !dbg !1747

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1729
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1654
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1658
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1659
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1748
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1749
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1596, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1582, metadata !DIExpression()), !dbg !1649
  %147 = icmp eq i64 %139, -1, !dbg !1750
  br i1 %147, label %148, label %152, !dbg !1751

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1752
  %150 = load i8, ptr %149, align 1, !dbg !1752, !tbaa !817
  %151 = icmp eq i8 %150, 0, !dbg !1753
  br i1 %151, label %612, label %154, !dbg !1754

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1755
  br i1 %153, label %612, label %154, !dbg !1754

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1756
  br i1 %128, label %155, label %170, !dbg !1757

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1759
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1760
  br i1 %157, label %158, label %160, !dbg !1760

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1761
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1582, metadata !DIExpression()), !dbg !1649
  br label %160, !dbg !1762

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1762
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1582, metadata !DIExpression()), !dbg !1649
  %162 = icmp ugt i64 %156, %161, !dbg !1763
  br i1 %162, label %170, label %163, !dbg !1764

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1765
  call void @llvm.dbg.value(metadata ptr %164, metadata !1766, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata ptr %119, metadata !1769, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i64 %120, metadata !1770, metadata !DIExpression()), !dbg !1771
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1773
  %166 = icmp ne i32 %165, 0, !dbg !1774
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1775
  %168 = xor i1 %166, true, !dbg !1775
  %169 = zext i1 %168 to i8, !dbg !1775
  br i1 %167, label %170, label %666, !dbg !1775

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1756
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1582, metadata !DIExpression()), !dbg !1649
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1776
  %175 = load i8, ptr %174, align 1, !dbg !1776, !tbaa !817
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1611, metadata !DIExpression()), !dbg !1756
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
  ], !dbg !1777

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1778

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1779

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1756
  %179 = and i8 %144, 1, !dbg !1783
  %180 = icmp eq i8 %179, 0, !dbg !1783
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1783
  br i1 %181, label %182, label %198, !dbg !1783

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1785
  br i1 %183, label %184, label %186, !dbg !1789

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1785
  store i8 39, ptr %185, align 1, !dbg !1785, !tbaa !817
  br label %186, !dbg !1785

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1789
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1589, metadata !DIExpression()), !dbg !1649
  %188 = icmp ult i64 %187, %146, !dbg !1790
  br i1 %188, label %189, label %191, !dbg !1793

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1790
  store i8 36, ptr %190, align 1, !dbg !1790, !tbaa !817
  br label %191, !dbg !1790

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1793
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1589, metadata !DIExpression()), !dbg !1649
  %193 = icmp ult i64 %192, %146, !dbg !1794
  br i1 %193, label %194, label %196, !dbg !1797

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1794
  store i8 39, ptr %195, align 1, !dbg !1794, !tbaa !817
  br label %196, !dbg !1794

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %198, !dbg !1798

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1649
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1589, metadata !DIExpression()), !dbg !1649
  %201 = icmp ult i64 %199, %146, !dbg !1799
  br i1 %201, label %202, label %204, !dbg !1802

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1799
  store i8 92, ptr %203, align 1, !dbg !1799, !tbaa !817
  br label %204, !dbg !1799

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1589, metadata !DIExpression()), !dbg !1649
  br i1 %125, label %206, label %476, !dbg !1803

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1805
  %208 = icmp ult i64 %207, %171, !dbg !1806
  br i1 %208, label %209, label %465, !dbg !1807

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1808
  %211 = load i8, ptr %210, align 1, !dbg !1808, !tbaa !817
  %212 = add i8 %211, -48, !dbg !1809
  %213 = icmp ult i8 %212, 10, !dbg !1809
  br i1 %213, label %214, label %465, !dbg !1809

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1810
  br i1 %215, label %216, label %218, !dbg !1814

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1810
  store i8 48, ptr %217, align 1, !dbg !1810, !tbaa !817
  br label %218, !dbg !1810

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1814
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1589, metadata !DIExpression()), !dbg !1649
  %220 = icmp ult i64 %219, %146, !dbg !1815
  br i1 %220, label %221, label %223, !dbg !1818

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1815
  store i8 48, ptr %222, align 1, !dbg !1815, !tbaa !817
  br label %223, !dbg !1815

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1818
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1589, metadata !DIExpression()), !dbg !1649
  br label %465, !dbg !1819

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1820

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1821

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1822

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1824

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1826
  %231 = icmp ult i64 %230, %171, !dbg !1827
  br i1 %231, label %232, label %465, !dbg !1828

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1829
  %234 = load i8, ptr %233, align 1, !dbg !1829, !tbaa !817
  %235 = icmp eq i8 %234, 63, !dbg !1830
  br i1 %235, label %236, label %465, !dbg !1831

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1832
  %238 = load i8, ptr %237, align 1, !dbg !1832, !tbaa !817
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
  ], !dbg !1833

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1834

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1604, metadata !DIExpression()), !dbg !1746
  %241 = icmp ult i64 %140, %146, !dbg !1836
  br i1 %241, label %242, label %244, !dbg !1839

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1836
  store i8 63, ptr %243, align 1, !dbg !1836, !tbaa !817
  br label %244, !dbg !1836

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1589, metadata !DIExpression()), !dbg !1649
  %246 = icmp ult i64 %245, %146, !dbg !1840
  br i1 %246, label %247, label %249, !dbg !1843

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1840
  store i8 34, ptr %248, align 1, !dbg !1840, !tbaa !817
  br label %249, !dbg !1840

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1589, metadata !DIExpression()), !dbg !1649
  %251 = icmp ult i64 %250, %146, !dbg !1844
  br i1 %251, label %252, label %254, !dbg !1847

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1844
  store i8 34, ptr %253, align 1, !dbg !1844, !tbaa !817
  br label %254, !dbg !1844

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1847
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1589, metadata !DIExpression()), !dbg !1649
  %256 = icmp ult i64 %255, %146, !dbg !1848
  br i1 %256, label %257, label %259, !dbg !1851

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1848
  store i8 63, ptr %258, align 1, !dbg !1848, !tbaa !817
  br label %259, !dbg !1848

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1851
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1589, metadata !DIExpression()), !dbg !1649
  br label %465, !dbg !1852

261:                                              ; preds = %170
  br label %272, !dbg !1853

262:                                              ; preds = %170
  br label %272, !dbg !1854

263:                                              ; preds = %170
  br label %270, !dbg !1855

264:                                              ; preds = %170
  br label %270, !dbg !1856

265:                                              ; preds = %170
  br label %272, !dbg !1857

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1858

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1859

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1862

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1864

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1865
  call void @llvm.dbg.label(metadata !1612), !dbg !1866
  br i1 %133, label %272, label %655, !dbg !1867

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1865
  call void @llvm.dbg.label(metadata !1615), !dbg !1869
  br i1 %124, label %520, label %476, !dbg !1870

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1871

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1872, !tbaa !817
  %277 = icmp eq i8 %276, 0, !dbg !1874
  br i1 %277, label %278, label %465, !dbg !1875

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1876
  br i1 %279, label %280, label %465, !dbg !1878

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1756
  br label %281, !dbg !1879

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1610, metadata !DIExpression()), !dbg !1756
  br i1 %133, label %465, label %655, !dbg !1880

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1756
  br i1 %132, label %284, label %465, !dbg !1882

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1883

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1886
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1888
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1888
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1590, metadata !DIExpression()), !dbg !1649
  %291 = icmp ult i64 %140, %290, !dbg !1889
  br i1 %291, label %292, label %294, !dbg !1892

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1889
  store i8 39, ptr %293, align 1, !dbg !1889, !tbaa !817
  br label %294, !dbg !1889

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1589, metadata !DIExpression()), !dbg !1649
  %296 = icmp ult i64 %295, %290, !dbg !1893
  br i1 %296, label %297, label %299, !dbg !1896

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1893
  store i8 92, ptr %298, align 1, !dbg !1893, !tbaa !817
  br label %299, !dbg !1893

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1896
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1589, metadata !DIExpression()), !dbg !1649
  %301 = icmp ult i64 %300, %290, !dbg !1897
  br i1 %301, label %302, label %304, !dbg !1900

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1897
  store i8 39, ptr %303, align 1, !dbg !1897, !tbaa !817
  br label %304, !dbg !1897

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1900
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %465, !dbg !1901

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1902

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1616, metadata !DIExpression()), !dbg !1903
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1904
  %309 = load ptr, ptr %308, align 8, !dbg !1904, !tbaa !747
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1904
  %312 = load i16, ptr %311, align 2, !dbg !1904, !tbaa !849
  %313 = and i16 %312, 16384, !dbg !1906
  %314 = icmp ne i16 %313, 0, !dbg !1906
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1618, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1903
  br label %355, !dbg !1907

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1908
  call void @llvm.dbg.value(metadata ptr %14, metadata !1679, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata ptr %14, metadata !1687, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1911
  store i64 0, ptr %14, align 8, !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1903
  %316 = icmp eq i64 %171, -1, !dbg !1914
  br i1 %316, label %317, label %319, !dbg !1916

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1917
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1582, metadata !DIExpression()), !dbg !1649
  br label %319, !dbg !1918

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1582, metadata !DIExpression()), !dbg !1649
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1919
  %321 = sub i64 %320, %145, !dbg !1920
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1626, metadata !DIExpression()), !dbg !1648
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1922

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1903
  %324 = icmp ult i64 %145, %320, !dbg !1923
  br i1 %324, label %326, label %351, !dbg !1925

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1903
  br label %351, !dbg !1926

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1616, metadata !DIExpression()), !dbg !1903
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1928
  %330 = load i8, ptr %329, align 1, !dbg !1928, !tbaa !817
  %331 = icmp eq i8 %330, 0, !dbg !1925
  br i1 %331, label %351, label %332, !dbg !1929

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1616, metadata !DIExpression()), !dbg !1903
  %334 = add i64 %333, %145, !dbg !1931
  %335 = icmp eq i64 %333, %321, !dbg !1923
  br i1 %335, label %351, label %326, !dbg !1925, !llvm.loop !1932

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1627, metadata !DIExpression()), !dbg !1933
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1934
  %339 = and i1 %338, %132, !dbg !1934
  br i1 %339, label %340, label %347, !dbg !1934

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1627, metadata !DIExpression()), !dbg !1933
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1935
  %343 = load i8, ptr %342, align 1, !dbg !1935, !tbaa !817
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1937

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1938
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1627, metadata !DIExpression()), !dbg !1933
  %346 = icmp eq i64 %345, %322, !dbg !1939
  br i1 %346, label %347, label %340, !dbg !1940, !llvm.loop !1941

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1943, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %348, metadata !1945, metadata !DIExpression()), !dbg !1953
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1955
  %350 = icmp ne i32 %349, 0, !dbg !1956
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1616, metadata !DIExpression()), !dbg !1903
  br label %351, !dbg !1957

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1616, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1959
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1903
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1959
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1756
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1960
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1960
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1616, metadata !DIExpression()), !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1582, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1610, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  %359 = icmp ult i64 %357, 2, !dbg !1961
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1962
  br i1 %361, label %461, label %362, !dbg !1962

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1963
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1635, metadata !DIExpression()), !dbg !1964
  br label %364, !dbg !1965

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1649
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1748
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1746
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1756
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1966
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1589, metadata !DIExpression()), !dbg !1649
  br i1 %360, label %417, label %371, !dbg !1967

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1972

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1756
  %373 = and i8 %366, 1, !dbg !1975
  %374 = icmp eq i8 %373, 0, !dbg !1975
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1975
  br i1 %375, label %376, label %392, !dbg !1975

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1977
  br i1 %377, label %378, label %380, !dbg !1981

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1977
  store i8 39, ptr %379, align 1, !dbg !1977, !tbaa !817
  br label %380, !dbg !1977

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1981
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1589, metadata !DIExpression()), !dbg !1649
  %382 = icmp ult i64 %381, %146, !dbg !1982
  br i1 %382, label %383, label %385, !dbg !1985

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1982
  store i8 36, ptr %384, align 1, !dbg !1982, !tbaa !817
  br label %385, !dbg !1982

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1589, metadata !DIExpression()), !dbg !1649
  %387 = icmp ult i64 %386, %146, !dbg !1986
  br i1 %387, label %388, label %390, !dbg !1989

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1986
  store i8 39, ptr %389, align 1, !dbg !1986, !tbaa !817
  br label %390, !dbg !1986

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %392, !dbg !1990

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1649
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1589, metadata !DIExpression()), !dbg !1649
  %395 = icmp ult i64 %393, %146, !dbg !1991
  br i1 %395, label %396, label %398, !dbg !1994

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !1991
  store i8 92, ptr %397, align 1, !dbg !1991, !tbaa !817
  br label %398, !dbg !1991

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1589, metadata !DIExpression()), !dbg !1649
  %400 = icmp ult i64 %399, %146, !dbg !1995
  br i1 %400, label %401, label %405, !dbg !1998

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !1995
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !1995
  store i8 %403, ptr %404, align 1, !dbg !1995, !tbaa !817
  br label %405, !dbg !1995

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1589, metadata !DIExpression()), !dbg !1649
  %407 = icmp ult i64 %406, %146, !dbg !1999
  br i1 %407, label %408, label %413, !dbg !2002

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !1999
  %411 = or disjoint i8 %410, 48, !dbg !1999
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !1999
  store i8 %411, ptr %412, align 1, !dbg !1999, !tbaa !817
  br label %413, !dbg !1999

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1589, metadata !DIExpression()), !dbg !1649
  %415 = and i8 %370, 7, !dbg !2003
  %416 = or disjoint i8 %415, 48, !dbg !2004
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1611, metadata !DIExpression()), !dbg !1756
  br label %426, !dbg !2005

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2006
  %419 = icmp eq i8 %418, 0, !dbg !2006
  br i1 %419, label %426, label %420, !dbg !2008

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2009
  br i1 %421, label %422, label %424, !dbg !2013

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2009
  store i8 92, ptr %423, align 1, !dbg !2009, !tbaa !817
  br label %424, !dbg !2009

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1756
  br label %426, !dbg !2014

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1649
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1748
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1756
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1756
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1589, metadata !DIExpression()), !dbg !1649
  %432 = add i64 %367, 1, !dbg !2015
  %433 = icmp ugt i64 %363, %432, !dbg !2017
  br i1 %433, label %434, label %463, !dbg !2018

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2019
  %436 = icmp ne i8 %435, 0, !dbg !2019
  %437 = and i8 %430, 1, !dbg !2019
  %438 = icmp eq i8 %437, 0, !dbg !2019
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2019
  br i1 %439, label %440, label %451, !dbg !2019

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2022
  br i1 %441, label %442, label %444, !dbg !2026

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2022
  store i8 39, ptr %443, align 1, !dbg !2022, !tbaa !817
  br label %444, !dbg !2022

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2026
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1589, metadata !DIExpression()), !dbg !1649
  %446 = icmp ult i64 %445, %146, !dbg !2027
  br i1 %446, label %447, label %449, !dbg !2030

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2027
  store i8 39, ptr %448, align 1, !dbg !2027, !tbaa !817
  br label %449, !dbg !2027

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2030
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %451, !dbg !2031

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2032
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1589, metadata !DIExpression()), !dbg !1649
  %454 = icmp ult i64 %452, %146, !dbg !2033
  br i1 %454, label %455, label %457, !dbg !2036

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2033
  store i8 %431, ptr %456, align 1, !dbg !2033, !tbaa !817
  br label %457, !dbg !2033

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1604, metadata !DIExpression()), !dbg !1746
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2037
  %460 = load i8, ptr %459, align 1, !dbg !2037, !tbaa !817
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1611, metadata !DIExpression()), !dbg !1756
  br label %364, !dbg !2038, !llvm.loop !2039

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1582, metadata !DIExpression()), !dbg !1649
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1582, metadata !DIExpression()), !dbg !1649
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2042
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1649
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1654
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1649
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1649
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1746
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1756
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1756
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1756
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1606, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1582, metadata !DIExpression()), !dbg !1649
  br i1 %126, label %487, label %476, !dbg !2043

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
  br i1 %137, label %488, label %509, !dbg !2045

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2046

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
  %499 = lshr i8 %490, 5, !dbg !2047
  %500 = zext nneg i8 %499 to i64, !dbg !2047
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2048
  %502 = load i32, ptr %501, align 4, !dbg !2048, !tbaa !808
  %503 = and i8 %490, 31, !dbg !2049
  %504 = zext nneg i8 %503 to i32, !dbg !2049
  %505 = shl nuw i32 1, %504, !dbg !2050
  %506 = and i32 %502, %505, !dbg !2050
  %507 = icmp eq i32 %506, 0, !dbg !2050
  %508 = and i1 %172, %507, !dbg !2051
  br i1 %508, label %558, label %520, !dbg !2051

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
  br i1 %172, label %558, label %520, !dbg !2052

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2042
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1649
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1654
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1658
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1748
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2053
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1756
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1756
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1582, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1638), !dbg !2054
  br i1 %131, label %530, label %659, !dbg !2055

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1756
  %531 = and i8 %525, 1, !dbg !2057
  %532 = icmp eq i8 %531, 0, !dbg !2057
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2057
  br i1 %533, label %534, label %550, !dbg !2057

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2059
  br i1 %535, label %536, label %538, !dbg !2063

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2059
  store i8 39, ptr %537, align 1, !dbg !2059, !tbaa !817
  br label %538, !dbg !2059

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2063
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1589, metadata !DIExpression()), !dbg !1649
  %540 = icmp ult i64 %539, %529, !dbg !2064
  br i1 %540, label %541, label %543, !dbg !2067

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2064
  store i8 36, ptr %542, align 1, !dbg !2064, !tbaa !817
  br label %543, !dbg !2064

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2067
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1589, metadata !DIExpression()), !dbg !1649
  %545 = icmp ult i64 %544, %529, !dbg !2068
  br i1 %545, label %546, label %548, !dbg !2071

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2068
  store i8 39, ptr %547, align 1, !dbg !2068, !tbaa !817
  br label %548, !dbg !2068

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %550, !dbg !2072

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1756
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1589, metadata !DIExpression()), !dbg !1649
  %553 = icmp ult i64 %551, %529, !dbg !2073
  br i1 %553, label %554, label %556, !dbg !2076

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2073
  store i8 92, ptr %555, align 1, !dbg !2073, !tbaa !817
  br label %556, !dbg !2073

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2076
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1582, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1639), !dbg !2077
  br label %585, !dbg !2078

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2042
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1649
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1654
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1658
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1748
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2053
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1756
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1756
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2081
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1611, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1610, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1609, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1582, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.label(metadata !1639), !dbg !2077
  %569 = and i8 %563, 1, !dbg !2078
  %570 = icmp ne i8 %569, 0, !dbg !2078
  %571 = and i8 %565, 1, !dbg !2078
  %572 = icmp eq i8 %571, 0, !dbg !2078
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2078
  br i1 %573, label %574, label %585, !dbg !2078

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2082
  br i1 %575, label %576, label %578, !dbg !2086

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2082
  store i8 39, ptr %577, align 1, !dbg !2082, !tbaa !817
  br label %578, !dbg !2082

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1589, metadata !DIExpression()), !dbg !1649
  %580 = icmp ult i64 %579, %568, !dbg !2087
  br i1 %580, label %581, label %583, !dbg !2090

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2087
  store i8 39, ptr %582, align 1, !dbg !2087, !tbaa !817
  br label %583, !dbg !2087

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1649
  br label %585, !dbg !2091

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1756
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1589, metadata !DIExpression()), !dbg !1649
  %595 = icmp ult i64 %593, %586, !dbg !2092
  br i1 %595, label %596, label %598, !dbg !2095

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2092
  store i8 %587, ptr %597, align 1, !dbg !2092, !tbaa !817
  br label %598, !dbg !2092

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2095
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1589, metadata !DIExpression()), !dbg !1649
  %600 = icmp eq i8 %588, 0, !dbg !2096
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2098
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1596, metadata !DIExpression()), !dbg !1649
  br label %602, !dbg !2099

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2042
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1649
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1654
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1658
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1659
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1748
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2053
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1604, metadata !DIExpression()), !dbg !1746
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1598, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1596, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1582, metadata !DIExpression()), !dbg !1649
  %611 = add i64 %609, 1, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1604, metadata !DIExpression()), !dbg !1746
  br label %138, !dbg !2101, !llvm.loop !2102

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1580, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1596, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1595, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1590, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1589, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1582, metadata !DIExpression()), !dbg !1649
  %613 = icmp eq i64 %140, 0, !dbg !2104
  %614 = and i1 %132, %613, !dbg !2106
  %615 = xor i1 %614, true, !dbg !2106
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2106
  br i1 %616, label %617, label %655, !dbg !2106

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2107
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2107
  br i1 %621, label %622, label %631, !dbg !2107

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2109
  %624 = icmp eq i8 %623, 0, !dbg !2109
  br i1 %624, label %627, label %625, !dbg !2112

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2113
  br label %672, !dbg !2114

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2115
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2117
  br i1 %630, label %28, label %631, !dbg !2117

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2118
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2120
  br i1 %634, label %635, label %650, !dbg !2120

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1591, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1589, metadata !DIExpression()), !dbg !1649
  %636 = load i8, ptr %119, align 1, !dbg !2121, !tbaa !817
  %637 = icmp eq i8 %636, 0, !dbg !2124
  br i1 %637, label %650, label %638, !dbg !2124

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1591, metadata !DIExpression()), !dbg !1649
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1589, metadata !DIExpression()), !dbg !1649
  %642 = icmp ult i64 %641, %146, !dbg !2125
  br i1 %642, label %643, label %645, !dbg !2128

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2125
  store i8 %639, ptr %644, align 1, !dbg !2125, !tbaa !817
  br label %645, !dbg !2125

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1589, metadata !DIExpression()), !dbg !1649
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2129
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1591, metadata !DIExpression()), !dbg !1649
  %648 = load i8, ptr %647, align 1, !dbg !2121, !tbaa !817
  %649 = icmp eq i8 %648, 0, !dbg !2124
  br i1 %649, label %650, label %638, !dbg !2124, !llvm.loop !2130

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1729
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1589, metadata !DIExpression()), !dbg !1649
  %652 = icmp ult i64 %651, %146, !dbg !2132
  br i1 %652, label %653, label %672, !dbg !2134

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2135
  store i8 0, ptr %654, align 1, !dbg !2136, !tbaa !817
  br label %672, !dbg !2135

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1640), !dbg !2137
  %657 = icmp eq i8 %123, 0, !dbg !2138
  %658 = select i1 %657, i32 2, i32 4, !dbg !2138
  br label %666, !dbg !2138

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1640), !dbg !2137
  %662 = icmp eq i32 %115, 2, !dbg !2140
  %663 = icmp eq i8 %123, 0, !dbg !2138
  %664 = select i1 %663, i32 2, i32 4, !dbg !2138
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2138
  br label %666, !dbg !2138

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1583, metadata !DIExpression()), !dbg !1649
  %670 = and i32 %5, -3, !dbg !2141
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2142
  br label %672, !dbg !2143

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2144
}

; Function Attrs: nounwind
declare !dbg !2145 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2148 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2151 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2153 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2157, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2158, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2159, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata ptr null, metadata !2167, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata ptr %2, metadata !2168, metadata !DIExpression()), !dbg !2174
  %4 = icmp eq ptr %2, null, !dbg !2176
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2176
  call void @llvm.dbg.value(metadata ptr %5, metadata !2169, metadata !DIExpression()), !dbg !2174
  %6 = tail call ptr @__errno_location() #40, !dbg !2177
  %7 = load i32, ptr %6, align 4, !dbg !2177, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %7, metadata !2170, metadata !DIExpression()), !dbg !2174
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2178
  %9 = load i32, ptr %8, align 4, !dbg !2178, !tbaa !1523
  %10 = or i32 %9, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %10, metadata !2171, metadata !DIExpression()), !dbg !2174
  %11 = load i32, ptr %5, align 8, !dbg !2180, !tbaa !1473
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2181
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2182
  %14 = load ptr, ptr %13, align 8, !dbg !2182, !tbaa !1544
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2183
  %16 = load ptr, ptr %15, align 8, !dbg !2183, !tbaa !1547
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2184
  %18 = add i64 %17, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i64 %18, metadata !2172, metadata !DIExpression()), !dbg !2174
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %19, metadata !2173, metadata !DIExpression()), !dbg !2174
  %20 = load i32, ptr %5, align 8, !dbg !2187, !tbaa !1473
  %21 = load ptr, ptr %13, align 8, !dbg !2188, !tbaa !1544
  %22 = load ptr, ptr %15, align 8, !dbg !2189, !tbaa !1547
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2190
  store i32 %7, ptr %6, align 4, !dbg !2191, !tbaa !808
  ret ptr %19, !dbg !2192
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2166, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2167, metadata !DIExpression()), !dbg !2193
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2168, metadata !DIExpression()), !dbg !2193
  %5 = icmp eq ptr %3, null, !dbg !2194
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2194
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2169, metadata !DIExpression()), !dbg !2193
  %7 = tail call ptr @__errno_location() #40, !dbg !2195
  %8 = load i32, ptr %7, align 4, !dbg !2195, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2170, metadata !DIExpression()), !dbg !2193
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2196
  %10 = load i32, ptr %9, align 4, !dbg !2196, !tbaa !1523
  %11 = icmp eq ptr %2, null, !dbg !2197
  %12 = zext i1 %11 to i32, !dbg !2197
  %13 = or i32 %10, %12, !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2171, metadata !DIExpression()), !dbg !2193
  %14 = load i32, ptr %6, align 8, !dbg !2199, !tbaa !1473
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2200
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2201
  %17 = load ptr, ptr %16, align 8, !dbg !2201, !tbaa !1544
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2202
  %19 = load ptr, ptr %18, align 8, !dbg !2202, !tbaa !1547
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2203
  %21 = add i64 %20, 1, !dbg !2204
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2172, metadata !DIExpression()), !dbg !2193
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2205
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2173, metadata !DIExpression()), !dbg !2193
  %23 = load i32, ptr %6, align 8, !dbg !2206, !tbaa !1473
  %24 = load ptr, ptr %16, align 8, !dbg !2207, !tbaa !1544
  %25 = load ptr, ptr %18, align 8, !dbg !2208, !tbaa !1547
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2209
  store i32 %8, ptr %7, align 4, !dbg !2210, !tbaa !808
  br i1 %11, label %28, label %27, !dbg !2211

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2212, !tbaa !2214
  br label %28, !dbg !2215

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2216
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2217 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2222, !tbaa !747
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2219, metadata !DIExpression()), !dbg !2223
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2220, metadata !DIExpression()), !dbg !2224
  %2 = load i32, ptr @nslots, align 4, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2220, metadata !DIExpression()), !dbg !2224
  %3 = icmp sgt i32 %2, 1, !dbg !2225
  br i1 %3, label %4, label %6, !dbg !2227

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2225
  br label %10, !dbg !2227

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2228
  %8 = load ptr, ptr %7, align 8, !dbg !2228, !tbaa !2230
  %9 = icmp eq ptr %8, @slot0, !dbg !2232
  br i1 %9, label %17, label %16, !dbg !2233

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2220, metadata !DIExpression()), !dbg !2224
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2234
  %13 = load ptr, ptr %12, align 8, !dbg !2234, !tbaa !2230
  tail call void @free(ptr noundef %13) #37, !dbg !2235
  %14 = add nuw nsw i64 %11, 1, !dbg !2236
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2220, metadata !DIExpression()), !dbg !2224
  %15 = icmp eq i64 %14, %5, !dbg !2225
  br i1 %15, label %6, label %10, !dbg !2227, !llvm.loop !2237

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2239
  store i64 256, ptr @slotvec0, align 8, !dbg !2241, !tbaa !2242
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2243, !tbaa !2230
  br label %17, !dbg !2244

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2245
  br i1 %18, label %20, label %19, !dbg !2247

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2248
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2250, !tbaa !747
  br label %20, !dbg !2251

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2252, !tbaa !808
  ret void, !dbg !2253
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2254 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2257 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2259, metadata !DIExpression()), !dbg !2261
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2260, metadata !DIExpression()), !dbg !2261
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2262
  ret ptr %3, !dbg !2263
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2264 {
  %5 = alloca i64, align 8, !DIAssignID !2284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2278, metadata !DIExpression(), metadata !2284, metadata ptr %5, metadata !DIExpression()), !dbg !2285
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2286
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2269, metadata !DIExpression()), !dbg !2286
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2270, metadata !DIExpression()), !dbg !2286
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2271, metadata !DIExpression()), !dbg !2286
  %6 = tail call ptr @__errno_location() #40, !dbg !2287
  %7 = load i32, ptr %6, align 4, !dbg !2287, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2272, metadata !DIExpression()), !dbg !2286
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2288, !tbaa !747
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2273, metadata !DIExpression()), !dbg !2286
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2274, metadata !DIExpression()), !dbg !2286
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2289
  br i1 %9, label %10, label %11, !dbg !2289

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2291
  unreachable, !dbg !2291

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2292, !tbaa !808
  %13 = icmp sgt i32 %12, %0, !dbg !2293
  br i1 %13, label %32, label %14, !dbg !2294

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2295
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2275, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2285
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2296
  %16 = sext i32 %12 to i64, !dbg !2297
  store i64 %16, ptr %5, align 8, !dbg !2298, !tbaa !2214, !DIAssignID !2299
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2278, metadata !DIExpression(), metadata !2299, metadata ptr %5, metadata !DIExpression()), !dbg !2285
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2300
  %18 = add nuw nsw i32 %0, 1, !dbg !2301
  %19 = sub i32 %18, %12, !dbg !2302
  %20 = sext i32 %19 to i64, !dbg !2303
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2304
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2273, metadata !DIExpression()), !dbg !2286
  store ptr %21, ptr @slotvec, align 8, !dbg !2305, !tbaa !747
  br i1 %15, label %22, label %23, !dbg !2306

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2307, !tbaa.struct !2309
  br label %23, !dbg !2310

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2311, !tbaa !808
  %25 = sext i32 %24 to i64, !dbg !2312
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2312
  %27 = load i64, ptr %5, align 8, !dbg !2313, !tbaa !2214
  %28 = sub nsw i64 %27, %25, !dbg !2314
  %29 = shl i64 %28, 4, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %26, metadata !1687, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %29, metadata !1691, metadata !DIExpression()), !dbg !2316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2318
  %30 = load i64, ptr %5, align 8, !dbg !2319, !tbaa !2214
  %31 = trunc i64 %30 to i32, !dbg !2319
  store i32 %31, ptr @nslots, align 4, !dbg !2320, !tbaa !808
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2321
  br label %32, !dbg !2322

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2286
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2273, metadata !DIExpression()), !dbg !2286
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2323
  %36 = load i64, ptr %35, align 8, !dbg !2324, !tbaa !2242
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2279, metadata !DIExpression()), !dbg !2325
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2326
  %38 = load ptr, ptr %37, align 8, !dbg !2326, !tbaa !2230
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2281, metadata !DIExpression()), !dbg !2325
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2327
  %40 = load i32, ptr %39, align 4, !dbg !2327, !tbaa !1523
  %41 = or i32 %40, 1, !dbg !2328
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2282, metadata !DIExpression()), !dbg !2325
  %42 = load i32, ptr %3, align 8, !dbg !2329, !tbaa !1473
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2330
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2331
  %45 = load ptr, ptr %44, align 8, !dbg !2331, !tbaa !1544
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2332
  %47 = load ptr, ptr %46, align 8, !dbg !2332, !tbaa !1547
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2283, metadata !DIExpression()), !dbg !2325
  %49 = icmp ugt i64 %36, %48, !dbg !2334
  br i1 %49, label %60, label %50, !dbg !2336

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2337
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2279, metadata !DIExpression()), !dbg !2325
  store i64 %51, ptr %35, align 8, !dbg !2339, !tbaa !2242
  %52 = icmp eq ptr %38, @slot0, !dbg !2340
  br i1 %52, label %54, label %53, !dbg !2342

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2343
  br label %54, !dbg !2343

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2281, metadata !DIExpression()), !dbg !2325
  store ptr %55, ptr %37, align 8, !dbg !2345, !tbaa !2230
  %56 = load i32, ptr %3, align 8, !dbg !2346, !tbaa !1473
  %57 = load ptr, ptr %44, align 8, !dbg !2347, !tbaa !1544
  %58 = load ptr, ptr %46, align 8, !dbg !2348, !tbaa !1547
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2349
  br label %60, !dbg !2350

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2325
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2281, metadata !DIExpression()), !dbg !2325
  store i32 %7, ptr %6, align 4, !dbg !2351, !tbaa !808
  ret ptr %61, !dbg !2352
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2353 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2358, metadata !DIExpression()), !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2359, metadata !DIExpression()), !dbg !2360
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2361
  ret ptr %4, !dbg !2362
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %0, metadata !2260, metadata !DIExpression()), !dbg !2367
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2369
  ret ptr %2, !dbg !2370
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2371 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2375, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2359, metadata !DIExpression()), !dbg !2378
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2380
  ret ptr %3, !dbg !2381
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2382 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2389, metadata !DIExpression(), metadata !2390, metadata ptr %4, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2386, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2391
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2388, metadata !DIExpression()), !dbg !2391
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2405, !alias.scope !2393, !DIAssignID !2406
  call void @llvm.dbg.assign(metadata i8 0, metadata !2389, metadata !DIExpression(), metadata !2406, metadata ptr %4, metadata !DIExpression()), !dbg !2391
  %5 = icmp eq i32 %1, 10, !dbg !2407
  br i1 %5, label %6, label %7, !dbg !2409

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2410, !noalias !2393
  unreachable, !dbg !2410

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2411, !tbaa !1473, !alias.scope !2393, !DIAssignID !2412
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2412, metadata ptr %4, metadata !DIExpression()), !dbg !2391
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2413
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2414
  ret ptr %8, !dbg !2415
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2416 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2425
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2424, metadata !DIExpression(), metadata !2425, metadata ptr %5, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2421, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2422, metadata !DIExpression()), !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2423, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2402, metadata !DIExpression()), !dbg !2434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2434, !alias.scope !2428, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i8 0, metadata !2424, metadata !DIExpression(), metadata !2435, metadata ptr %5, metadata !DIExpression()), !dbg !2426
  %6 = icmp eq i32 %1, 10, !dbg !2436
  br i1 %6, label %7, label %8, !dbg !2437

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2438, !noalias !2428
  unreachable, !dbg !2438

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2439, !tbaa !1473, !alias.scope !2428, !DIAssignID !2440
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2440, metadata ptr %5, metadata !DIExpression()), !dbg !2426
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2441
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2442
  ret ptr %9, !dbg !2443
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2444 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2450
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()), !dbg !2451
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2389, metadata !DIExpression(), metadata !2450, metadata ptr %3, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata ptr %1, metadata !2388, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2402, metadata !DIExpression()), !dbg !2461
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2461, !alias.scope !2455, !DIAssignID !2462
  call void @llvm.dbg.assign(metadata i8 0, metadata !2389, metadata !DIExpression(), metadata !2462, metadata ptr %3, metadata !DIExpression()), !dbg !2452
  %4 = icmp eq i32 %0, 10, !dbg !2463
  br i1 %4, label %5, label %6, !dbg !2464

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2465, !noalias !2455
  unreachable, !dbg !2465

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2466, !tbaa !1473, !alias.scope !2455, !DIAssignID !2467
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2467, metadata ptr %3, metadata !DIExpression()), !dbg !2452
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2468
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2469
  ret ptr %7, !dbg !2470
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2471 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2478
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2475, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2476, metadata !DIExpression()), !dbg !2479
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2477, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2424, metadata !DIExpression(), metadata !2478, metadata ptr %4, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 0, metadata !2420, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %0, metadata !2421, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata ptr %1, metadata !2422, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %2, metadata !2423, metadata !DIExpression()), !dbg !2480
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2402, metadata !DIExpression()), !dbg !2489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2489, !alias.scope !2483, !DIAssignID !2490
  call void @llvm.dbg.assign(metadata i8 0, metadata !2424, metadata !DIExpression(), metadata !2490, metadata ptr %4, metadata !DIExpression()), !dbg !2480
  %5 = icmp eq i32 %0, 10, !dbg !2491
  br i1 %5, label %6, label %7, !dbg !2492

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2493, !noalias !2483
  unreachable, !dbg !2493

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2494, !tbaa !1473, !alias.scope !2483, !DIAssignID !2495
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2495, metadata ptr %4, metadata !DIExpression()), !dbg !2480
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2496
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2497
  ret ptr %8, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2499 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2507
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2507, metadata ptr %4, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2504, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2505, metadata !DIExpression()), !dbg !2508
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2510, !tbaa.struct !2511, !DIAssignID !2512
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2512, metadata ptr %4, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1490, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1491, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2513
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1493, metadata !DIExpression()), !dbg !2513
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2515
  %6 = lshr i8 %2, 5, !dbg !2516
  %7 = zext nneg i8 %6 to i64, !dbg !2516
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2517
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1494, metadata !DIExpression()), !dbg !2513
  %9 = and i8 %2, 31, !dbg !2518
  %10 = zext nneg i8 %9 to i32, !dbg !2518
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1496, metadata !DIExpression()), !dbg !2513
  %11 = load i32, ptr %8, align 4, !dbg !2519, !tbaa !808
  %12 = lshr i32 %11, %10, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1497, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2513
  %13 = and i32 %12, 1, !dbg !2521
  %14 = xor i32 %13, 1, !dbg !2521
  %15 = shl nuw i32 %14, %10, !dbg !2522
  %16 = xor i32 %15, %11, !dbg !2523
  store i32 %16, ptr %8, align 4, !dbg !2523, !tbaa !808
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2524
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2525
  ret ptr %17, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2527 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2533
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2534
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2533, metadata ptr %3, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 -1, metadata !2504, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %1, metadata !2505, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2538, !tbaa.struct !2511, !DIAssignID !2539
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2539, metadata ptr %3, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata ptr %3, metadata !1490, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %1, metadata !1491, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %1, metadata !1493, metadata !DIExpression()), !dbg !2540
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2542
  %5 = lshr i8 %1, 5, !dbg !2543
  %6 = zext nneg i8 %5 to i64, !dbg !2543
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %7, metadata !1494, metadata !DIExpression()), !dbg !2540
  %8 = and i8 %1, 31, !dbg !2545
  %9 = zext nneg i8 %8 to i32, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %9, metadata !1496, metadata !DIExpression()), !dbg !2540
  %10 = load i32, ptr %7, align 4, !dbg !2546, !tbaa !808
  %11 = lshr i32 %10, %9, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %11, metadata !1497, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2540
  %12 = and i32 %11, 1, !dbg !2548
  %13 = xor i32 %12, 1, !dbg !2548
  %14 = shl nuw i32 %13, %9, !dbg !2549
  %15 = xor i32 %14, %10, !dbg !2550
  store i32 %15, ptr %7, align 4, !dbg !2550, !tbaa !808
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2551
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2552
  ret ptr %16, !dbg !2553
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2554 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2557
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !2532, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2557, metadata ptr %2, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 -1, metadata !2504, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !2505, metadata !DIExpression()), !dbg !2561
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2564, !tbaa.struct !2511, !DIAssignID !2565
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2565, metadata ptr %2, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %2, metadata !1490, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()), !dbg !2566
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %3, metadata !1494, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()), !dbg !2566
  %4 = load i32, ptr %3, align 4, !dbg !2569, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %4, metadata !1497, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2566
  %5 = or i32 %4, 67108864, !dbg !2570
  store i32 %5, ptr %3, align 4, !dbg !2570, !tbaa !808
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2571
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2572
  ret ptr %6, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2574 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2578
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2576, metadata !DIExpression()), !dbg !2579
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2577, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2578, metadata ptr %3, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %0, metadata !2503, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 %1, metadata !2504, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 58, metadata !2505, metadata !DIExpression()), !dbg !2580
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2583, !tbaa.struct !2511, !DIAssignID !2584
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2506, metadata !DIExpression(), metadata !2584, metadata ptr %3, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %3, metadata !1490, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()), !dbg !2585
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2587
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()), !dbg !2585
  %5 = load i32, ptr %4, align 4, !dbg !2588, !tbaa !808
  call void @llvm.dbg.value(metadata i32 %5, metadata !1497, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2585
  %6 = or i32 %5, 67108864, !dbg !2589
  store i32 %6, ptr %4, align 4, !dbg !2589, !tbaa !808
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2590
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2591
  ret ptr %7, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2593 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2598, metadata !DIExpression(), metadata !2599, metadata ptr %4, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2595, metadata !DIExpression()), !dbg !2600
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2596, metadata !DIExpression()), !dbg !2600
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2604
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2604
  %5 = icmp eq i32 %1, 10, !dbg !2605
  br i1 %5, label %6, label %7, !dbg !2606

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2607, !noalias !2608
  unreachable, !dbg !2607

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2604
  store i32 %1, ptr %4, align 8, !dbg !2611, !tbaa.struct !2511, !DIAssignID !2612
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2611
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2598, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2612, metadata ptr %4, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2598, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2613, metadata ptr %8, metadata !DIExpression()), !dbg !2600
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1490, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1491, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1492, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1493, metadata !DIExpression()), !dbg !2614
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2616
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1494, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1496, metadata !DIExpression()), !dbg !2614
  %10 = load i32, ptr %9, align 4, !dbg !2617, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1497, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2614
  %11 = or i32 %10, 67108864, !dbg !2618
  store i32 %11, ptr %9, align 4, !dbg !2618, !tbaa !808, !DIAssignID !2619
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2598, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2619, metadata ptr %9, metadata !DIExpression()), !dbg !2600
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2620
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2621
  ret ptr %12, !dbg !2622
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2623 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2631
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2632
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2628, metadata !DIExpression()), !dbg !2632
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2629, metadata !DIExpression()), !dbg !2632
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2631, metadata ptr %5, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %2, metadata !2640, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %3, metadata !2641, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i64 -1, metadata !2642, metadata !DIExpression()), !dbg !2643
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2646, !tbaa.struct !2511, !DIAssignID !2647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2647, metadata ptr %5, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2648, metadata ptr undef, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !1531, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !1532, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !2649
  store i32 10, ptr %5, align 8, !dbg !2651, !tbaa !1473, !DIAssignID !2652
  call void @llvm.dbg.assign(metadata i32 10, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2652, metadata ptr %5, metadata !DIExpression()), !dbg !2643
  %6 = icmp ne ptr %1, null, !dbg !2653
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2654
  br i1 %8, label %10, label %9, !dbg !2654

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2655
  unreachable, !dbg !2655

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2656
  store ptr %1, ptr %11, align 8, !dbg !2657, !tbaa !1544, !DIAssignID !2658
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2658, metadata ptr %11, metadata !DIExpression()), !dbg !2643
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2659
  store ptr %2, ptr %12, align 8, !dbg !2660, !tbaa !1547, !DIAssignID !2661
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2661, metadata ptr %12, metadata !DIExpression()), !dbg !2643
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2662
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2663
  ret ptr %13, !dbg !2664
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2634 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2665, metadata ptr %6, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2638, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2640, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2641, metadata !DIExpression()), !dbg !2666
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2642, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2668, !tbaa.struct !2511, !DIAssignID !2669
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2669, metadata ptr %6, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2670, metadata ptr undef, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %6, metadata !1530, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %1, metadata !1531, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %2, metadata !1532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %6, metadata !1530, metadata !DIExpression()), !dbg !2671
  store i32 10, ptr %6, align 8, !dbg !2673, !tbaa !1473, !DIAssignID !2674
  call void @llvm.dbg.assign(metadata i32 10, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2674, metadata ptr %6, metadata !DIExpression()), !dbg !2666
  %7 = icmp ne ptr %1, null, !dbg !2675
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2676
  br i1 %9, label %11, label %10, !dbg !2676

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2677
  unreachable, !dbg !2677

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2678
  store ptr %1, ptr %12, align 8, !dbg !2679, !tbaa !1544, !DIAssignID !2680
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2680, metadata ptr %12, metadata !DIExpression()), !dbg !2666
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2681
  store ptr %2, ptr %13, align 8, !dbg !2682, !tbaa !1547, !DIAssignID !2683
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2683, metadata ptr %13, metadata !DIExpression()), !dbg !2666
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2684
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2685
  ret ptr %14, !dbg !2686
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2687 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2694
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2691, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2692, metadata !DIExpression()), !dbg !2695
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %0, metadata !2628, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %1, metadata !2629, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata ptr %2, metadata !2630, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2694, metadata ptr %4, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2638, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %1, metadata !2640, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %2, metadata !2641, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 -1, metadata !2642, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2701, !tbaa.struct !2511, !DIAssignID !2702
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2702, metadata ptr %4, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2703, metadata ptr undef, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %0, metadata !1531, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %1, metadata !1532, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !2704
  store i32 10, ptr %4, align 8, !dbg !2706, !tbaa !1473, !DIAssignID !2707
  call void @llvm.dbg.assign(metadata i32 10, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2707, metadata ptr %4, metadata !DIExpression()), !dbg !2698
  %5 = icmp ne ptr %0, null, !dbg !2708
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2709
  br i1 %7, label %9, label %8, !dbg !2709

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2710
  unreachable, !dbg !2710

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2711
  store ptr %0, ptr %10, align 8, !dbg !2712, !tbaa !1544, !DIAssignID !2713
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2713, metadata ptr %10, metadata !DIExpression()), !dbg !2698
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2714
  store ptr %1, ptr %11, align 8, !dbg !2715, !tbaa !1547, !DIAssignID !2716
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2716, metadata ptr %11, metadata !DIExpression()), !dbg !2698
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2717
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2718
  ret ptr %12, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2720 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2728
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2724, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2725, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2728, metadata ptr %5, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2638, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %0, metadata !2639, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2640, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %2, metadata !2641, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %3, metadata !2642, metadata !DIExpression()), !dbg !2730
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2733, !tbaa.struct !2511, !DIAssignID !2734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(), metadata !2734, metadata ptr %5, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2735, metadata ptr undef, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %0, metadata !1531, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %1, metadata !1532, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %5, metadata !1530, metadata !DIExpression()), !dbg !2736
  store i32 10, ptr %5, align 8, !dbg !2738, !tbaa !1473, !DIAssignID !2739
  call void @llvm.dbg.assign(metadata i32 10, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2739, metadata ptr %5, metadata !DIExpression()), !dbg !2730
  %6 = icmp ne ptr %0, null, !dbg !2740
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2741
  br i1 %8, label %10, label %9, !dbg !2741

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2742
  unreachable, !dbg !2742

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2743
  store ptr %0, ptr %11, align 8, !dbg !2744, !tbaa !1544, !DIAssignID !2745
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2745, metadata ptr %11, metadata !DIExpression()), !dbg !2730
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2746
  store ptr %1, ptr %12, align 8, !dbg !2747, !tbaa !1547, !DIAssignID !2748
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2633, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2748, metadata ptr %12, metadata !DIExpression()), !dbg !2730
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2749
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2750
  ret ptr %13, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2752 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2757, metadata !DIExpression()), !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2758, metadata !DIExpression()), !dbg !2759
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2760
  ret ptr %4, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2762 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2766, metadata !DIExpression()), !dbg !2768
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata ptr %0, metadata !2757, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata i64 %1, metadata !2758, metadata !DIExpression()), !dbg !2769
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2771
  ret ptr %3, !dbg !2772
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2773 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2777, metadata !DIExpression()), !dbg !2779
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %1, metadata !2757, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i64 -1, metadata !2758, metadata !DIExpression()), !dbg !2780
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2782
  ret ptr %3, !dbg !2783
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 0, metadata !2777, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata ptr %0, metadata !2778, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %0, metadata !2757, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 -1, metadata !2758, metadata !DIExpression()), !dbg !2792
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2794
  ret ptr %2, !dbg !2795
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2835, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2836, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2837, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2838, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2839, metadata !DIExpression()), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2840, metadata !DIExpression()), !dbg !2841
  %7 = icmp eq ptr %1, null, !dbg !2842
  br i1 %7, label %10, label %8, !dbg !2844

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2845
  br label %12, !dbg !2845

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #37, !dbg !2846
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #37, !dbg !2847
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2847
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2848
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #37, !dbg !2849
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #37, !dbg !2849
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2850
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
  ], !dbg !2851

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #37, !dbg !2852
  %21 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !747
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2852
  br label %147, !dbg !2854

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #37, !dbg !2855
  %25 = load ptr, ptr %4, align 8, !dbg !2855, !tbaa !747
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2855
  %27 = load ptr, ptr %26, align 8, !dbg !2855, !tbaa !747
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2855
  br label %147, !dbg !2856

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #37, !dbg !2857
  %31 = load ptr, ptr %4, align 8, !dbg !2857, !tbaa !747
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2857
  %33 = load ptr, ptr %32, align 8, !dbg !2857, !tbaa !747
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2857
  %35 = load ptr, ptr %34, align 8, !dbg !2857, !tbaa !747
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2857
  br label %147, !dbg !2858

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #37, !dbg !2859
  %39 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !747
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2859
  %41 = load ptr, ptr %40, align 8, !dbg !2859, !tbaa !747
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2859
  %43 = load ptr, ptr %42, align 8, !dbg !2859, !tbaa !747
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2859
  %45 = load ptr, ptr %44, align 8, !dbg !2859, !tbaa !747
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2859
  br label %147, !dbg !2860

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #37, !dbg !2861
  %49 = load ptr, ptr %4, align 8, !dbg !2861, !tbaa !747
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2861
  %51 = load ptr, ptr %50, align 8, !dbg !2861, !tbaa !747
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2861
  %53 = load ptr, ptr %52, align 8, !dbg !2861, !tbaa !747
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2861
  %55 = load ptr, ptr %54, align 8, !dbg !2861, !tbaa !747
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2861
  %57 = load ptr, ptr %56, align 8, !dbg !2861, !tbaa !747
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2861
  br label %147, !dbg !2862

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #37, !dbg !2863
  %61 = load ptr, ptr %4, align 8, !dbg !2863, !tbaa !747
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2863
  %63 = load ptr, ptr %62, align 8, !dbg !2863, !tbaa !747
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2863
  %65 = load ptr, ptr %64, align 8, !dbg !2863, !tbaa !747
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2863
  %67 = load ptr, ptr %66, align 8, !dbg !2863, !tbaa !747
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2863
  %69 = load ptr, ptr %68, align 8, !dbg !2863, !tbaa !747
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2863
  %71 = load ptr, ptr %70, align 8, !dbg !2863, !tbaa !747
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2863
  br label %147, !dbg !2864

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #37, !dbg !2865
  %75 = load ptr, ptr %4, align 8, !dbg !2865, !tbaa !747
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2865
  %77 = load ptr, ptr %76, align 8, !dbg !2865, !tbaa !747
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2865
  %79 = load ptr, ptr %78, align 8, !dbg !2865, !tbaa !747
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2865
  %81 = load ptr, ptr %80, align 8, !dbg !2865, !tbaa !747
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2865
  %83 = load ptr, ptr %82, align 8, !dbg !2865, !tbaa !747
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2865
  %85 = load ptr, ptr %84, align 8, !dbg !2865, !tbaa !747
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2865
  %87 = load ptr, ptr %86, align 8, !dbg !2865, !tbaa !747
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2865
  br label %147, !dbg !2866

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #37, !dbg !2867
  %91 = load ptr, ptr %4, align 8, !dbg !2867, !tbaa !747
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2867
  %93 = load ptr, ptr %92, align 8, !dbg !2867, !tbaa !747
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2867
  %95 = load ptr, ptr %94, align 8, !dbg !2867, !tbaa !747
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2867
  %97 = load ptr, ptr %96, align 8, !dbg !2867, !tbaa !747
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2867
  %99 = load ptr, ptr %98, align 8, !dbg !2867, !tbaa !747
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2867
  %101 = load ptr, ptr %100, align 8, !dbg !2867, !tbaa !747
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2867
  %103 = load ptr, ptr %102, align 8, !dbg !2867, !tbaa !747
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2867
  %105 = load ptr, ptr %104, align 8, !dbg !2867, !tbaa !747
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2867
  br label %147, !dbg !2868

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #37, !dbg !2869
  %109 = load ptr, ptr %4, align 8, !dbg !2869, !tbaa !747
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2869
  %111 = load ptr, ptr %110, align 8, !dbg !2869, !tbaa !747
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2869
  %113 = load ptr, ptr %112, align 8, !dbg !2869, !tbaa !747
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2869
  %115 = load ptr, ptr %114, align 8, !dbg !2869, !tbaa !747
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2869
  %117 = load ptr, ptr %116, align 8, !dbg !2869, !tbaa !747
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2869
  %119 = load ptr, ptr %118, align 8, !dbg !2869, !tbaa !747
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2869
  %121 = load ptr, ptr %120, align 8, !dbg !2869, !tbaa !747
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2869
  %123 = load ptr, ptr %122, align 8, !dbg !2869, !tbaa !747
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2869
  %125 = load ptr, ptr %124, align 8, !dbg !2869, !tbaa !747
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2869
  br label %147, !dbg !2870

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #37, !dbg !2871
  %129 = load ptr, ptr %4, align 8, !dbg !2871, !tbaa !747
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2871
  %131 = load ptr, ptr %130, align 8, !dbg !2871, !tbaa !747
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2871
  %133 = load ptr, ptr %132, align 8, !dbg !2871, !tbaa !747
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2871
  %135 = load ptr, ptr %134, align 8, !dbg !2871, !tbaa !747
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2871
  %137 = load ptr, ptr %136, align 8, !dbg !2871, !tbaa !747
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2871
  %139 = load ptr, ptr %138, align 8, !dbg !2871, !tbaa !747
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2871
  %141 = load ptr, ptr %140, align 8, !dbg !2871, !tbaa !747
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2871
  %143 = load ptr, ptr %142, align 8, !dbg !2871, !tbaa !747
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2871
  %145 = load ptr, ptr %144, align 8, !dbg !2871, !tbaa !747
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2871
  br label %147, !dbg !2872

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2873
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2874 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2878, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2879, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2880, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2881, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2882, metadata !DIExpression()), !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2883, metadata !DIExpression()), !dbg !2884
  br label %6, !dbg !2885

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2887
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2883, metadata !DIExpression()), !dbg !2884
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2888
  %9 = load ptr, ptr %8, align 8, !dbg !2888, !tbaa !747
  %10 = icmp eq ptr %9, null, !dbg !2890
  %11 = add i64 %7, 1, !dbg !2891
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2883, metadata !DIExpression()), !dbg !2884
  br i1 %10, label %12, label %6, !dbg !2890, !llvm.loop !2892

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2894
  ret void, !dbg !2895
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2896 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2913, metadata !DIExpression(), metadata !2915, metadata ptr %6, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2907, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2908, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2909, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2910, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2911, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2916
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2916
  %10 = icmp ult i32 %9, 41, !dbg !2918
  br i1 %10, label %11, label %16, !dbg !2918

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2918
  %13 = zext nneg i32 %9 to i64, !dbg !2918
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2918
  %15 = add nuw nsw i32 %9, 8, !dbg !2918
  store i32 %15, ptr %4, align 8, !dbg !2918
  br label %19, !dbg !2918

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2918
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2918
  store ptr %18, ptr %7, align 8, !dbg !2918
  br label %19, !dbg !2918

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2918
  %22 = load ptr, ptr %21, align 8, !dbg !2918
  store ptr %22, ptr %6, align 16, !dbg !2921, !tbaa !747
  %23 = icmp eq ptr %22, null, !dbg !2922
  br i1 %23, label %128, label %24, !dbg !2923

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  %25 = icmp ult i32 %20, 41, !dbg !2918
  br i1 %25, label %29, label %26, !dbg !2918

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2918
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2918
  store ptr %28, ptr %7, align 8, !dbg !2918
  br label %34, !dbg !2918

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2918
  %31 = zext nneg i32 %20 to i64, !dbg !2918
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2918
  %33 = add nuw nsw i32 %20, 8, !dbg !2918
  store i32 %33, ptr %4, align 8, !dbg !2918
  br label %34, !dbg !2918

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2918
  %37 = load ptr, ptr %36, align 8, !dbg !2918
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2924
  store ptr %37, ptr %38, align 8, !dbg !2921, !tbaa !747
  %39 = icmp eq ptr %37, null, !dbg !2922
  br i1 %39, label %128, label %40, !dbg !2923

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2912, metadata !DIExpression()), !dbg !2916
  %41 = icmp ult i32 %35, 41, !dbg !2918
  br i1 %41, label %45, label %42, !dbg !2918

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2918
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2918
  store ptr %44, ptr %7, align 8, !dbg !2918
  br label %50, !dbg !2918

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2918
  %47 = zext nneg i32 %35 to i64, !dbg !2918
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2918
  %49 = add nuw nsw i32 %35, 8, !dbg !2918
  store i32 %49, ptr %4, align 8, !dbg !2918
  br label %50, !dbg !2918

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2918
  %53 = load ptr, ptr %52, align 8, !dbg !2918
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2924
  store ptr %53, ptr %54, align 16, !dbg !2921, !tbaa !747
  %55 = icmp eq ptr %53, null, !dbg !2922
  br i1 %55, label %128, label %56, !dbg !2923

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2912, metadata !DIExpression()), !dbg !2916
  %57 = icmp ult i32 %51, 41, !dbg !2918
  br i1 %57, label %61, label %58, !dbg !2918

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2918
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2918
  store ptr %60, ptr %7, align 8, !dbg !2918
  br label %66, !dbg !2918

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2918
  %63 = zext nneg i32 %51 to i64, !dbg !2918
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2918
  %65 = add nuw nsw i32 %51, 8, !dbg !2918
  store i32 %65, ptr %4, align 8, !dbg !2918
  br label %66, !dbg !2918

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2918
  %69 = load ptr, ptr %68, align 8, !dbg !2918
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2924
  store ptr %69, ptr %70, align 8, !dbg !2921, !tbaa !747
  %71 = icmp eq ptr %69, null, !dbg !2922
  br i1 %71, label %128, label %72, !dbg !2923

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2912, metadata !DIExpression()), !dbg !2916
  %73 = icmp ult i32 %67, 41, !dbg !2918
  br i1 %73, label %77, label %74, !dbg !2918

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2918
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2918
  store ptr %76, ptr %7, align 8, !dbg !2918
  br label %82, !dbg !2918

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2918
  %79 = zext nneg i32 %67 to i64, !dbg !2918
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2918
  %81 = add nuw nsw i32 %67, 8, !dbg !2918
  store i32 %81, ptr %4, align 8, !dbg !2918
  br label %82, !dbg !2918

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2918
  %85 = load ptr, ptr %84, align 8, !dbg !2918
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2924
  store ptr %85, ptr %86, align 16, !dbg !2921, !tbaa !747
  %87 = icmp eq ptr %85, null, !dbg !2922
  br i1 %87, label %128, label %88, !dbg !2923

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2912, metadata !DIExpression()), !dbg !2916
  %89 = icmp ult i32 %83, 41, !dbg !2918
  br i1 %89, label %93, label %90, !dbg !2918

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2918
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2918
  store ptr %92, ptr %7, align 8, !dbg !2918
  br label %98, !dbg !2918

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2918
  %95 = zext nneg i32 %83 to i64, !dbg !2918
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2918
  %97 = add nuw nsw i32 %83, 8, !dbg !2918
  store i32 %97, ptr %4, align 8, !dbg !2918
  br label %98, !dbg !2918

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2918
  %100 = load ptr, ptr %99, align 8, !dbg !2918
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2924
  store ptr %100, ptr %101, align 8, !dbg !2921, !tbaa !747
  %102 = icmp eq ptr %100, null, !dbg !2922
  br i1 %102, label %128, label %103, !dbg !2923

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2912, metadata !DIExpression()), !dbg !2916
  %104 = load ptr, ptr %7, align 8, !dbg !2918
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2918
  store ptr %105, ptr %7, align 8, !dbg !2918
  %106 = load ptr, ptr %104, align 8, !dbg !2918
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2924
  store ptr %106, ptr %107, align 16, !dbg !2921, !tbaa !747
  %108 = icmp eq ptr %106, null, !dbg !2922
  br i1 %108, label %128, label %109, !dbg !2923

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2912, metadata !DIExpression()), !dbg !2916
  %110 = load ptr, ptr %7, align 8, !dbg !2918
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2918
  store ptr %111, ptr %7, align 8, !dbg !2918
  %112 = load ptr, ptr %110, align 8, !dbg !2918
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2924
  store ptr %112, ptr %113, align 8, !dbg !2921, !tbaa !747
  %114 = icmp eq ptr %112, null, !dbg !2922
  br i1 %114, label %128, label %115, !dbg !2923

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2912, metadata !DIExpression()), !dbg !2916
  %116 = load ptr, ptr %7, align 8, !dbg !2918
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2918
  store ptr %117, ptr %7, align 8, !dbg !2918
  %118 = load ptr, ptr %116, align 8, !dbg !2918
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2924
  store ptr %118, ptr %119, align 16, !dbg !2921, !tbaa !747
  %120 = icmp eq ptr %118, null, !dbg !2922
  br i1 %120, label %128, label %121, !dbg !2923

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2912, metadata !DIExpression()), !dbg !2916
  %122 = load ptr, ptr %7, align 8, !dbg !2918
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2918
  store ptr %123, ptr %7, align 8, !dbg !2918
  %124 = load ptr, ptr %122, align 8, !dbg !2918
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2924
  store ptr %124, ptr %125, align 8, !dbg !2921, !tbaa !747
  %126 = icmp eq ptr %124, null, !dbg !2922
  %127 = select i1 %126, i64 9, i64 10, !dbg !2923
  br label %128, !dbg !2923

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2925
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2926
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2927
  ret void, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2928 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2936, metadata !DIExpression(), metadata !2941, metadata ptr %5, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2934, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2943
  call void @llvm.va_start(ptr nonnull %5), !dbg !2944
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2945
  call void @llvm.va_end(ptr nonnull %5), !dbg !2946
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2947
  ret void, !dbg !2947
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2948 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2949, !tbaa !747
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2949
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #37, !dbg !2950
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2950
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2951
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #37, !dbg !2951
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2952
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2952
  ret void, !dbg !2953
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !2962
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %2, metadata !2967, metadata !DIExpression()), !dbg !2968
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !2976
  %5 = icmp eq ptr %4, null, !dbg !2978
  br i1 %5, label %6, label %7, !dbg !2980

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2981
  unreachable, !dbg !2981

7:                                                ; preds = %3
  ret ptr %4, !dbg !2982
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2966, metadata !DIExpression()), !dbg !2983
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2967, metadata !DIExpression()), !dbg !2983
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2984
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !2985
  %5 = icmp eq ptr %4, null, !dbg !2987
  br i1 %5, label %6, label %7, !dbg !2988

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2989
  unreachable, !dbg !2989

7:                                                ; preds = %3
  ret ptr %4, !dbg !2990
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2991 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()), !dbg !2996
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2997
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !2998
  %3 = icmp eq ptr %2, null, !dbg !3000
  br i1 %3, label %4, label %5, !dbg !3001

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3002
  unreachable, !dbg !3002

5:                                                ; preds = %1
  ret ptr %2, !dbg !3003
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3004 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3005 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3009, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 %0, metadata !3011, metadata !DIExpression()), !dbg !3015
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3017
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !3018
  %3 = icmp eq ptr %2, null, !dbg !3020
  br i1 %3, label %4, label %5, !dbg !3021

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3022
  unreachable, !dbg !3022

5:                                                ; preds = %1
  ret ptr %2, !dbg !3023
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3024 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()), !dbg !3030
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !3033
  %3 = icmp eq ptr %2, null, !dbg !3035
  br i1 %3, label %4, label %5, !dbg !3036

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3037
  unreachable, !dbg !3037

5:                                                ; preds = %1
  ret ptr %2, !dbg !3038
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3039 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3045
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3051
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3053
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3055
  %5 = icmp eq ptr %4, null, !dbg !3057
  br i1 %5, label %6, label %7, !dbg !3058

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3059
  unreachable, !dbg !3059

7:                                                ; preds = %2
  ret ptr %4, !dbg !3060
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3061 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3062 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3066, metadata !DIExpression()), !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3075
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3077
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3078
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3079
  %5 = icmp eq ptr %4, null, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3083
  unreachable, !dbg !3083

7:                                                ; preds = %2
  ret ptr %4, !dbg !3084
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3085 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3092
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata ptr %0, metadata !3093, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %2, metadata !3097, metadata !DIExpression()), !dbg !3098
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3101
  %5 = icmp eq ptr %4, null, !dbg !3103
  br i1 %5, label %6, label %7, !dbg !3104

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3105
  unreachable, !dbg !3105

7:                                                ; preds = %3
  ret ptr %4, !dbg !3106
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3107 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3113
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr null, metadata !2963, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %0, metadata !2966, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !3114
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3117
  %4 = icmp eq ptr %3, null, !dbg !3119
  br i1 %4, label %5, label %6, !dbg !3120

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3121
  unreachable, !dbg !3121

6:                                                ; preds = %2
  ret ptr %3, !dbg !3122
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3123 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3127, metadata !DIExpression()), !dbg !3129
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata ptr null, metadata !3089, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %0, metadata !3090, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr null, metadata !3093, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %0, metadata !3096, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3132
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3134
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3135
  %4 = icmp eq ptr %3, null, !dbg !3137
  br i1 %4, label %5, label %6, !dbg !3138

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3139
  unreachable, !dbg !3139

6:                                                ; preds = %2
  ret ptr %3, !dbg !3140
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3141 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3145, metadata !DIExpression()), !dbg !3147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata ptr %0, metadata !682, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %1, metadata !683, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 1, metadata !684, metadata !DIExpression()), !dbg !3148
  %3 = load i64, ptr %1, align 8, !dbg !3150, !tbaa !2214
  call void @llvm.dbg.value(metadata i64 %3, metadata !685, metadata !DIExpression()), !dbg !3148
  %4 = icmp eq ptr %0, null, !dbg !3151
  br i1 %4, label %5, label %8, !dbg !3153

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3154
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3157
  br label %15, !dbg !3157

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3158
  %10 = add nuw i64 %9, 1, !dbg !3158
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3158
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3158
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %13, metadata !685, metadata !DIExpression()), !dbg !3148
  br i1 %12, label %14, label %15, !dbg !3161

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3162
  unreachable, !dbg !3162

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3148
  call void @llvm.dbg.value(metadata i64 %16, metadata !685, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %16, metadata !2966, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 1, metadata !2967, metadata !DIExpression()), !dbg !3163
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %17, metadata !2971, metadata !DIExpression()), !dbg !3166
  %18 = icmp eq ptr %17, null, !dbg !3168
  br i1 %18, label %19, label %20, !dbg !3169

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3170
  unreachable, !dbg !3170

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !682, metadata !DIExpression()), !dbg !3148
  store i64 %16, ptr %1, align 8, !dbg !3171, !tbaa !2214
  ret ptr %17, !dbg !3172
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !682, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !683, metadata !DIExpression()), !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !684, metadata !DIExpression()), !dbg !3173
  %4 = load i64, ptr %1, align 8, !dbg !3174, !tbaa !2214
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !685, metadata !DIExpression()), !dbg !3173
  %5 = icmp eq ptr %0, null, !dbg !3175
  br i1 %5, label %6, label %13, !dbg !3176

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3177
  br i1 %7, label %8, label %20, !dbg !3178

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3179
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !685, metadata !DIExpression()), !dbg !3173
  %10 = icmp ugt i64 %2, 128, !dbg !3181
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3182
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !685, metadata !DIExpression()), !dbg !3173
  br label %20, !dbg !3183

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3184
  %15 = add nuw i64 %14, 1, !dbg !3184
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3184
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3184
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3184
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !685, metadata !DIExpression()), !dbg !3173
  br i1 %17, label %19, label %20, !dbg !3185

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3186
  unreachable, !dbg !3186

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3173
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !685, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !2963, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %21, metadata !2966, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %2, metadata !2967, metadata !DIExpression()), !dbg !3187
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %22, metadata !2971, metadata !DIExpression()), !dbg !3190
  %23 = icmp eq ptr %22, null, !dbg !3192
  br i1 %23, label %24, label %25, !dbg !3193

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3194
  unreachable, !dbg !3194

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !682, metadata !DIExpression()), !dbg !3173
  store i64 %21, ptr %1, align 8, !dbg !3195, !tbaa !2214
  ret ptr %22, !dbg !3196
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !689 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !700, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !701, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !702, metadata !DIExpression()), !dbg !3197
  %6 = load i64, ptr %1, align 8, !dbg !3198, !tbaa !2214
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !703, metadata !DIExpression()), !dbg !3197
  %7 = ashr i64 %6, 1, !dbg !3199
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3199
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3199
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !704, metadata !DIExpression()), !dbg !3197
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !704, metadata !DIExpression()), !dbg !3197
  %12 = icmp sgt i64 %3, -1, !dbg !3202
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3204
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !704, metadata !DIExpression()), !dbg !3197
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3205
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3205
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !705, metadata !DIExpression()), !dbg !3197
  %18 = icmp slt i64 %17, 128, !dbg !3205
  %19 = select i1 %18, i64 128, i64 0, !dbg !3205
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !706, metadata !DIExpression()), !dbg !3197
  %21 = icmp eq i64 %20, 0, !dbg !3206
  br i1 %21, label %26, label %22, !dbg !3208

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !704, metadata !DIExpression()), !dbg !3197
  %24 = srem i64 %20, %4, !dbg !3211
  %25 = sub nsw i64 %20, %24, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !705, metadata !DIExpression()), !dbg !3197
  br label %26, !dbg !3213

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3197
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !705, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !704, metadata !DIExpression()), !dbg !3197
  %29 = icmp eq ptr %0, null, !dbg !3214
  br i1 %29, label %30, label %31, !dbg !3216

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3217, !tbaa !2214
  br label %31, !dbg !3218

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3219
  %33 = icmp slt i64 %32, %2, !dbg !3221
  br i1 %33, label %34, label %46, !dbg !3222

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3223
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3223
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !704, metadata !DIExpression()), !dbg !3197
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3224
  br i1 %40, label %45, label %41, !dbg !3224

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3225
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3225
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !705, metadata !DIExpression()), !dbg !3197
  br i1 %43, label %45, label %46, !dbg !3226

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3227
  unreachable, !dbg !3227

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3197
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !705, metadata !DIExpression()), !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !704, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %48, metadata !3044, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3046, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %48, metadata !3050, metadata !DIExpression()), !dbg !3230
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3232
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %50, metadata !2971, metadata !DIExpression()), !dbg !3234
  %51 = icmp eq ptr %50, null, !dbg !3236
  br i1 %51, label %52, label %53, !dbg !3237

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3238
  unreachable, !dbg !3238

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !698, metadata !DIExpression()), !dbg !3197
  store i64 %47, ptr %1, align 8, !dbg !3239, !tbaa !2214
  ret ptr %50, !dbg !3240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3241 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3248, metadata !DIExpression()), !dbg !3249
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !3252
  %3 = icmp eq ptr %2, null, !dbg !3254
  br i1 %3, label %4, label %5, !dbg !3255

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3256
  unreachable, !dbg !3256

5:                                                ; preds = %1
  ret ptr %2, !dbg !3257
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3258 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3246 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3259
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3261
  %4 = icmp eq ptr %3, null, !dbg !3263
  br i1 %4, label %5, label %6, !dbg !3264

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3265
  unreachable, !dbg !3265

6:                                                ; preds = %2
  ret ptr %3, !dbg !3266
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 1, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 1, metadata !3280, metadata !DIExpression()), !dbg !3281
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !2971, metadata !DIExpression()), !dbg !3284
  %3 = icmp eq ptr %2, null, !dbg !3286
  br i1 %3, label %4, label %5, !dbg !3287

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3288
  unreachable, !dbg !3288

5:                                                ; preds = %1
  ret ptr %2, !dbg !3289
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3274, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3291
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3294
  %4 = icmp eq ptr %3, null, !dbg !3296
  br i1 %4, label %5, label %6, !dbg !3297

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3298
  unreachable, !dbg !3298

6:                                                ; preds = %2
  ret ptr %3, !dbg !3299
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3300 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !3307
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3310
  %4 = icmp eq ptr %3, null, !dbg !3312
  br i1 %4, label %5, label %6, !dbg !3313

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3314
  unreachable, !dbg !3314

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3325
  ret ptr %3, !dbg !3326
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()), !dbg !3336
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3338
  call void @llvm.dbg.value(metadata ptr %3, metadata !2971, metadata !DIExpression()), !dbg !3339
  %4 = icmp eq ptr %3, null, !dbg !3341
  br i1 %4, label %5, label %6, !dbg !3342

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3343
  unreachable, !dbg !3343

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3346
  ret ptr %3, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3352, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3355
  %3 = add nsw i64 %1, 1, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3009, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %3, metadata !3011, metadata !DIExpression()), !dbg !3359
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3362
  %5 = icmp eq ptr %4, null, !dbg !3364
  br i1 %5, label %6, label %7, !dbg !3365

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3366
  unreachable, !dbg !3366

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3354, metadata !DIExpression()), !dbg !3355
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3367
  store i8 0, ptr %8, align 1, !dbg !3368, !tbaa !817
  call void @llvm.dbg.value(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3371
  ret ptr %4, !dbg !3372
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3373 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3376
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3377
  %3 = add i64 %2, 1, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !3305, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !2995, metadata !DIExpression()), !dbg !3381
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %4, metadata !2971, metadata !DIExpression()), !dbg !3384
  %5 = icmp eq ptr %4, null, !dbg !3386
  br i1 %5, label %6, label %7, !dbg !3387

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3388
  unreachable, !dbg !3388

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %3, metadata !3322, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3391
  ret ptr %4, !dbg !3392
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3393 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3398, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3399
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #37, !dbg !3398
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #37, !dbg !3398
  %3 = icmp eq i32 %1, 0, !dbg !3398
  tail call void @llvm.assume(i1 %3), !dbg !3398
  tail call void @abort() #39, !dbg !3400
  unreachable, !dbg !3400
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3439, metadata !DIExpression()), !dbg !3444
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3440, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  %3 = load i32, ptr %0, align 8, !dbg !3451, !tbaa !3452
  %4 = and i32 %3, 32, !dbg !3453
  %5 = icmp eq i32 %4, 0, !dbg !3453
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3454
  %7 = icmp eq i32 %6, 0, !dbg !3455
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3443, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  br i1 %5, label %8, label %18, !dbg !3456

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3458
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3459
  %11 = xor i1 %7, true, !dbg !3459
  %12 = sext i1 %11 to i32, !dbg !3459
  br i1 %10, label %21, label %13, !dbg !3459

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3460
  %15 = load i32, ptr %14, align 4, !dbg !3460, !tbaa !808
  %16 = icmp ne i32 %15, 9, !dbg !3461
  %17 = sext i1 %16 to i32, !dbg !3462
  br label %21, !dbg !3462

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3463

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3465
  store i32 0, ptr %20, align 4, !dbg !3467, !tbaa !808
  br label %21, !dbg !3465

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3444
  ret i32 %22, !dbg !3468
}

; Function Attrs: nounwind
declare !dbg !3469 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3515
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3513, metadata !DIExpression()), !dbg !3515
  %3 = icmp slt i32 %2, 0, !dbg !3517
  br i1 %3, label %4, label %6, !dbg !3519

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3520
  br label %24, !dbg !3521

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3522
  %8 = icmp eq i32 %7, 0, !dbg !3522
  br i1 %8, label %13, label %9, !dbg !3524

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3525
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3526
  %12 = icmp eq i64 %11, -1, !dbg !3527
  br i1 %12, label %16, label %13, !dbg !3528

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3529
  %15 = icmp eq i32 %14, 0, !dbg !3529
  br i1 %15, label %16, label %18, !dbg !3530

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %24, !dbg !3532

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3533
  %20 = load i32, ptr %19, align 4, !dbg !3533, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3514, metadata !DIExpression()), !dbg !3515
  %22 = icmp eq i32 %20, 0, !dbg !3534
  br i1 %22, label %24, label %23, !dbg !3532

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3536, !tbaa !808
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %24, !dbg !3538

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3515
  ret i32 %25, !dbg !3539
}

; Function Attrs: nofree nounwind
declare !dbg !3540 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3541 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3542 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3543 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3546 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3585
  %2 = icmp eq ptr %0, null, !dbg !3586
  br i1 %2, label %6, label %3, !dbg !3588

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3589
  %5 = icmp eq i32 %4, 0, !dbg !3589
  br i1 %5, label %6, label %8, !dbg !3590

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3591
  br label %16, !dbg !3592

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3593, metadata !DIExpression()), !dbg !3598
  %9 = load i32, ptr %0, align 8, !dbg !3600, !tbaa !3452
  %10 = and i32 %9, 256, !dbg !3602
  %11 = icmp eq i32 %10, 0, !dbg !3602
  br i1 %11, label %14, label %12, !dbg !3603

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3604
  br label %14, !dbg !3604

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3605
  br label %16, !dbg !3606

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3585
  ret i32 %17, !dbg !3607
}

; Function Attrs: nofree nounwind
declare !dbg !3608 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3650, metadata !DIExpression()), !dbg !3654
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3655
  %5 = load ptr, ptr %4, align 8, !dbg !3655, !tbaa !3656
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3657
  %7 = load ptr, ptr %6, align 8, !dbg !3657, !tbaa !3658
  %8 = icmp eq ptr %5, %7, !dbg !3659
  br i1 %8, label %9, label %27, !dbg !3660

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3661
  %11 = load ptr, ptr %10, align 8, !dbg !3661, !tbaa !1182
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3662
  %13 = load ptr, ptr %12, align 8, !dbg !3662, !tbaa !3663
  %14 = icmp eq ptr %11, %13, !dbg !3664
  br i1 %14, label %15, label %27, !dbg !3665

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3666
  %17 = load ptr, ptr %16, align 8, !dbg !3666, !tbaa !3667
  %18 = icmp eq ptr %17, null, !dbg !3668
  br i1 %18, label %19, label %27, !dbg !3669

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3670
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3651, metadata !DIExpression()), !dbg !3672
  %22 = icmp eq i64 %21, -1, !dbg !3673
  br i1 %22, label %29, label %23, !dbg !3675

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3676, !tbaa !3452
  %25 = and i32 %24, -17, !dbg !3676
  store i32 %25, ptr %0, align 8, !dbg !3676, !tbaa !3452
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3677
  store i64 %21, ptr %26, align 8, !dbg !3678, !tbaa !3679
  br label %29, !dbg !3680

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3681
  br label %29, !dbg !3682

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3654
  ret i32 %30, !dbg !3683
}

; Function Attrs: nofree nounwind
declare !dbg !3684 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3695, metadata !DIExpression()), !dbg !3697
  %5 = icmp eq ptr %1, null, !dbg !3698
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3700
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3700
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3693, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3692, metadata !DIExpression()), !dbg !3697
  %9 = icmp eq ptr %3, null, !dbg !3701
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3703
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3695, metadata !DIExpression()), !dbg !3697
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3696, metadata !DIExpression()), !dbg !3697
  %12 = icmp ult i64 %11, -3, !dbg !3705
  br i1 %12, label %13, label %17, !dbg !3707

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3708
  %15 = icmp eq i32 %14, 0, !dbg !3708
  br i1 %15, label %16, label %29, !dbg !3709

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %10, metadata !3717, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 8, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i64 0, ptr %10, align 1, !dbg !3724
  br label %29, !dbg !3725

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3726
  br i1 %18, label %19, label %20, !dbg !3728

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3729
  unreachable, !dbg !3729

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3730

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3732
  br i1 %23, label %29, label %24, !dbg !3733

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3734
  br i1 %25, label %29, label %26, !dbg !3737

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3738, !tbaa !817
  %28 = zext i8 %27 to i32, !dbg !3739
  store i32 %28, ptr %6, align 4, !dbg !3740, !tbaa !808
  br label %29, !dbg !3741

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3697
  ret i64 %30, !dbg !3742
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3743 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3753, metadata !DIExpression()), !dbg !3755
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3756
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3754, metadata !DIExpression()), !dbg !3755
  br i1 %5, label %6, label %8, !dbg !3758

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3759
  store i32 12, ptr %7, align 4, !dbg !3761, !tbaa !808
  br label %12, !dbg !3762

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3763, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %9, metadata !3766, metadata !DIExpression()), !dbg !3767
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3769
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3770
  br label %12, !dbg !3771

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3755
  ret ptr %13, !dbg !3772
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3773 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3778, metadata !DIExpression(), metadata !3782, metadata ptr %2, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3784
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3785
  %4 = icmp eq i32 %3, 0, !dbg !3785
  br i1 %4, label %5, label %12, !dbg !3787

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata !775, metadata !3791, metadata !DIExpression()), !dbg !3792
  %6 = load i16, ptr %2, align 16, !dbg !3795
  %7 = icmp eq i16 %6, 67, !dbg !3795
  br i1 %7, label %11, label %8, !dbg !3796

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3791, metadata !DIExpression()), !dbg !3797
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3799
  %10 = icmp eq i32 %9, 0, !dbg !3800
  br i1 %10, label %11, label %12, !dbg !3801

11:                                               ; preds = %8, %5
  br label %12, !dbg !3802

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3783
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3803
  ret i1 %13, !dbg !3803
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3804 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3808, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3809, metadata !DIExpression()), !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3810, metadata !DIExpression()), !dbg !3811
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3812
  ret i32 %4, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3814 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3818, metadata !DIExpression()), !dbg !3819
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3820
  ret ptr %2, !dbg !3821
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3822 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3824, metadata !DIExpression()), !dbg !3826
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3827
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3825, metadata !DIExpression()), !dbg !3826
  ret ptr %2, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3831, metadata !DIExpression()), !dbg !3838
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3832, metadata !DIExpression()), !dbg !3838
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3833, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i32 %0, metadata !3824, metadata !DIExpression()), !dbg !3839
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3841
  call void @llvm.dbg.value(metadata ptr %4, metadata !3825, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3834, metadata !DIExpression()), !dbg !3838
  %5 = icmp eq ptr %4, null, !dbg !3842
  br i1 %5, label %6, label %9, !dbg !3843

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3844
  br i1 %7, label %19, label %8, !dbg !3847

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3848, !tbaa !817
  br label %19, !dbg !3849

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3835, metadata !DIExpression()), !dbg !3851
  %11 = icmp ult i64 %10, %2, !dbg !3852
  br i1 %11, label %12, label %14, !dbg !3854

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %1, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %4, metadata !3860, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %13, metadata !3861, metadata !DIExpression()), !dbg !3862
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3864
  br label %19, !dbg !3865

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3866
  br i1 %15, label %19, label %16, !dbg !3869

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3870
  call void @llvm.dbg.value(metadata ptr %1, metadata !3857, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %4, metadata !3860, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %17, metadata !3861, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3874
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3875
  store i8 0, ptr %18, align 1, !dbg !3876, !tbaa !817
  br label %19, !dbg !3877

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3878
  ret i32 %20, !dbg !3879
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

!llvm.dbg.cu = !{!72, !292, !296, !311, !633, !665, !365, !386, !400, !451, !667, !625, !673, !708, !710, !712, !714, !716, !649, !718, !720, !724, !726}
!llvm.ident = !{!728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728, !728}
!llvm.module.flags = !{!729, !730, !731, !732, !733, !734, !735}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/logname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "be0652542a48a595035eed51530c903c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 31)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 17)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !49, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !66, file: !67, line: 575, type: !92, isLocal: true, isDefinition: true)
!66 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !68, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !211)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DISubroutineType(cc: DW_CC_nocall, types: !69)
!69 = !{null, !70, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/logname.o -MD -MP -MF src/.deps/logname.Tpo -c src/logname.c -o src/.logname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !98, splitDebugInlining: false, nameTableKind: None)
!73 = !{!74}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 46, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!78 = !DIEnumerator(name: "_ISupper", value: 256)
!79 = !DIEnumerator(name: "_ISlower", value: 512)
!80 = !DIEnumerator(name: "_ISalpha", value: 1024)
!81 = !DIEnumerator(name: "_ISdigit", value: 2048)
!82 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!83 = !DIEnumerator(name: "_ISspace", value: 8192)
!84 = !DIEnumerator(name: "_ISprint", value: 16384)
!85 = !DIEnumerator(name: "_ISgraph", value: 32768)
!86 = !DIEnumerator(name: "_ISblank", value: 1)
!87 = !DIEnumerator(name: "_IScntrl", value: 2)
!88 = !DIEnumerator(name: "_ISpunct", value: 4)
!89 = !DIEnumerator(name: "_ISalnum", value: 8)
!90 = !{!70, !91, !92, !93, !94, !97}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 18, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !99, !104, !106, !111, !116, !121, !123, !125, !130, !132, !134, !136, !141, !143, !145, !147, !149, !151, !153, !155, !157, !162, !167, !172, !174, !176, !178, !180, !182, !187, !189, !191, !196, !201, !206}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 5)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !101, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 6)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !101, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !108, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !101, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !113, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !113, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 7)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !39, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !39, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !39, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !39, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !138, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !39, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !59, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 40)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 15)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 61)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !127, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !101, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !101, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !54, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 22)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !164, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !108, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 71)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 27)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 51)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 12)
!211 = !{!212, !213, !214, !217, !219, !220, !221, !225, !226, !227, !228, !230, !281, !282, !283, !285, !286}
!212 = !DILocalVariable(name: "program", arg: 1, scope: !66, file: !67, line: 573, type: !70)
!213 = !DILocalVariable(name: "option", arg: 2, scope: !66, file: !67, line: 573, type: !70)
!214 = !DILocalVariable(name: "term", scope: !215, file: !67, line: 585, type: !70)
!215 = distinct !DILexicalBlock(scope: !216, file: !67, line: 582, column: 5)
!216 = distinct !DILexicalBlock(scope: !66, file: !67, line: 581, column: 7)
!217 = !DILocalVariable(name: "double_space", scope: !66, file: !67, line: 594, type: !218)
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DILocalVariable(name: "first_word", scope: !66, file: !67, line: 595, type: !70)
!220 = !DILocalVariable(name: "option_text", scope: !66, file: !67, line: 596, type: !70)
!221 = !DILocalVariable(name: "s", scope: !222, file: !67, line: 608, type: !70)
!222 = distinct !DILexicalBlock(scope: !223, file: !67, line: 605, column: 5)
!223 = distinct !DILexicalBlock(scope: !224, file: !67, line: 604, column: 12)
!224 = distinct !DILexicalBlock(scope: !66, file: !67, line: 597, column: 7)
!225 = !DILocalVariable(name: "spaces", scope: !222, file: !67, line: 609, type: !94)
!226 = !DILocalVariable(name: "anchor_len", scope: !66, file: !67, line: 620, type: !94)
!227 = !DILocalVariable(name: "desc_text", scope: !66, file: !67, line: 625, type: !70)
!228 = !DILocalVariable(name: "__ptr", scope: !229, file: !67, line: 644, type: !70)
!229 = distinct !DILexicalBlock(scope: !66, file: !67, line: 644, column: 3)
!230 = !DILocalVariable(name: "__stream", scope: !229, file: !67, line: 644, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !234)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !236)
!235 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!236 = !{!237, !238, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !255, !256, !257, !261, !262, !264, !265, !268, !270, !273, !276, !277, !278, !279, !280}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !234, file: !235, line: 51, baseType: !92, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !234, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !234, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !234, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !234, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !234, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !234, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !234, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !234, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !234, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !234, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !234, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !234, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !235, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !234, file: !235, line: 70, baseType: !254, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !234, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !234, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !234, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 152, baseType: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !234, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !234, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !234, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !234, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !235, line: 43, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !234, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !259, line: 153, baseType: !260)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !234, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !235, line: 37, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !234, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !235, line: 38, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !234, file: !235, line: 93, baseType: !254, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !234, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !234, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !234, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !234, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!281 = !DILocalVariable(name: "__cnt", scope: !229, file: !67, line: 644, type: !94)
!282 = !DILocalVariable(name: "url_program", scope: !66, file: !67, line: 648, type: !70)
!283 = !DILocalVariable(name: "__ptr", scope: !284, file: !67, line: 686, type: !70)
!284 = distinct !DILexicalBlock(scope: !66, file: !67, line: 686, column: 3)
!285 = !DILocalVariable(name: "__stream", scope: !284, file: !67, line: 686, type: !231)
!286 = !DILocalVariable(name: "__cnt", scope: !284, file: !67, line: 686, type: !94)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !289, line: 3, type: !164, isLocal: true, isDefinition: true)
!289 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "Version", scope: !292, file: !289, line: 3, type: !70, isLocal: false, isDefinition: true)
!292 = distinct !DICompileUnit(language: DW_LANG_C11, file: !289, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !293, splitDebugInlining: false, nameTableKind: None)
!293 = !{!287, !290}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "file_name", scope: !296, file: !297, line: 45, type: !70, isLocal: true, isDefinition: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !298, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!298 = !{!299, !301, !303, !305, !294, !307}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !297, line: 121, type: !138, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !297, line: 121, type: !208, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !297, line: 123, type: !138, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !297, line: 126, type: !127, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !296, file: !297, line: 55, type: !218, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !311, file: !312, line: 66, type: !357, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !312, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !313, globals: !314, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!313 = !{!91, !97}
!314 = !{!315, !317, !336, !338, !340, !342, !309, !344, !346, !348, !350, !355}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !312, line: 272, type: !101, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "old_file_name", scope: !319, file: !312, line: 304, type: !70, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "verror_at_line", scope: !312, file: !312, line: 298, type: !320, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !329)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !92, !92, !70, !76, !70, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !324)
!324 = !{!325, !326, !327, !328}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !323, file: !312, baseType: !76, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !323, file: !312, baseType: !76, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !323, file: !312, baseType: !91, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !323, file: !312, baseType: !91, size: 64, offset: 128)
!329 = !{!330, !331, !332, !333, !334, !335}
!330 = !DILocalVariable(name: "status", arg: 1, scope: !319, file: !312, line: 298, type: !92)
!331 = !DILocalVariable(name: "errnum", arg: 2, scope: !319, file: !312, line: 298, type: !92)
!332 = !DILocalVariable(name: "file_name", arg: 3, scope: !319, file: !312, line: 298, type: !70)
!333 = !DILocalVariable(name: "line_number", arg: 4, scope: !319, file: !312, line: 298, type: !76)
!334 = !DILocalVariable(name: "message", arg: 5, scope: !319, file: !312, line: 298, type: !70)
!335 = !DILocalVariable(name: "args", arg: 6, scope: !319, file: !312, line: 298, type: !322)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "old_line_number", scope: !319, file: !312, line: 305, type: !76, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !312, line: 338, type: !108, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !19, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !118, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "error_message_count", scope: !311, file: !312, line: 69, type: !76, isLocal: false, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !311, file: !312, line: 295, type: !92, isLocal: false, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !138, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 21)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !312, line: 214, type: !101, isLocal: true, isDefinition: true)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null}
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !362, line: 60, type: !118, isLocal: true, isDefinition: true)
!362 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "long_options", scope: !365, file: !362, line: 34, type: !374, isLocal: true, isDefinition: true)
!365 = distinct !DICompileUnit(language: DW_LANG_C11, file: !362, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, globals: !367, splitDebugInlining: false, nameTableKind: None)
!366 = !{!91}
!367 = !{!360, !368, !370, !372, !363}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !362, line: 112, type: !34, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !362, line: 36, type: !101, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !362, line: 37, type: !19, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 768, elements: !128)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !377, line: 50, size: 256, elements: !378)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!378 = !{!379, !380, !381, !383}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !376, file: !377, line: 52, baseType: !70, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !376, file: !377, line: 55, baseType: !92, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !376, file: !377, line: 56, baseType: !382, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !377, line: 57, baseType: !92, size: 32, offset: 192)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "program_name", scope: !386, file: !387, line: 31, type: !70, isLocal: false, isDefinition: true)
!386 = distinct !DICompileUnit(language: DW_LANG_C11, file: !387, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !388, globals: !389, splitDebugInlining: false, nameTableKind: None)
!387 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!388 = !{!91, !239}
!389 = !{!384, !390, !392}
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !387, line: 46, type: !19, isLocal: true, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !387, line: 49, type: !108, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "utf07FF", scope: !396, file: !397, line: 46, type: !424, isLocal: true, isDefinition: true)
!396 = distinct !DISubprogram(name: "proper_name_lite", scope: !397, file: !397, line: 38, type: !398, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !402)
!397 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!398 = !DISubroutineType(types: !399)
!399 = !{!70, !70, !70}
!400 = distinct !DICompileUnit(language: DW_LANG_C11, file: !397, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !401, splitDebugInlining: false, nameTableKind: None)
!401 = !{!394}
!402 = !{!403, !404, !405, !406, !411}
!403 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !396, file: !397, line: 38, type: !70)
!404 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !396, file: !397, line: 38, type: !70)
!405 = !DILocalVariable(name: "translation", scope: !396, file: !397, line: 40, type: !70)
!406 = !DILocalVariable(name: "w", scope: !396, file: !397, line: 47, type: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !408, line: 37, baseType: !409)
!408 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !76)
!411 = !DILocalVariable(name: "mbs", scope: !396, file: !397, line: 48, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !413, line: 6, baseType: !414)
!413 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !415, line: 21, baseType: !416)
!415 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 13, size: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !416, file: !415, line: 15, baseType: !92, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !416, file: !415, line: 20, baseType: !420, size: 32, offset: 32)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !415, line: 16, size: 32, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !420, file: !415, line: 18, baseType: !76, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !420, file: !415, line: 19, baseType: !108, size: 32)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !119)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !427, line: 78, type: !19, isLocal: true, isDefinition: true)
!427 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !427, line: 79, type: !113, isLocal: true, isDefinition: true)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !427, line: 80, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 13)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !427, line: 81, type: !432, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !427, line: 82, type: !9, isLocal: true, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !427, line: 83, type: !118, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !427, line: 84, type: !19, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !427, line: 85, type: !138, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !427, line: 86, type: !138, isLocal: true, isDefinition: true)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !427, line: 87, type: !19, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !451, file: !427, line: 76, type: !537, isLocal: false, isDefinition: true)
!451 = distinct !DICompileUnit(language: DW_LANG_C11, file: !427, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !452, retainedTypes: !472, globals: !473, splitDebugInlining: false, nameTableKind: None)
!452 = !{!453, !467, !74}
!453 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !454, line: 42, baseType: !76, size: 32, elements: !455)
!454 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!455 = !{!456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!456 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!457 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!458 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!459 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!460 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!461 = !DIEnumerator(name: "c_quoting_style", value: 5)
!462 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!463 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!464 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!465 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!466 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !454, line: 254, baseType: !76, size: 32, elements: !468)
!468 = !{!469, !470, !471}
!469 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!470 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!471 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!472 = !{!91, !92, !93, !94}
!473 = !{!425, !428, !430, !435, !437, !439, !441, !443, !445, !447, !449, !474, !478, !488, !490, !495, !497, !499, !501, !503, !526, !533, !535}
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !451, file: !427, line: 92, type: !476, isLocal: false, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 320, elements: !40)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !451, file: !427, line: 1040, type: !480, isLocal: false, isDefinition: true)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !427, line: 56, size: 448, elements: !481)
!481 = !{!482, !483, !484, !486, !487}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !480, file: !427, line: 59, baseType: !453, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !480, file: !427, line: 62, baseType: !92, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !480, file: !427, line: 66, baseType: !485, size: 256, offset: 64)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !20)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !480, file: !427, line: 69, baseType: !70, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !480, file: !427, line: 72, baseType: !70, size: 64, offset: 384)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !451, file: !427, line: 107, type: !480, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "slot0", scope: !451, file: !427, line: 831, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 256)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !427, line: 321, type: !118, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !427, line: 357, type: !118, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !427, line: 358, type: !118, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !427, line: 199, type: !138, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "quote", scope: !505, file: !427, line: 228, type: !524, isLocal: true, isDefinition: true)
!505 = distinct !DISubprogram(name: "gettext_quote", scope: !427, file: !427, line: 197, type: !506, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!70, !70, !453}
!508 = !{!509, !510, !511, !512, !513}
!509 = !DILocalVariable(name: "msgid", arg: 1, scope: !505, file: !427, line: 197, type: !70)
!510 = !DILocalVariable(name: "s", arg: 2, scope: !505, file: !427, line: 197, type: !453)
!511 = !DILocalVariable(name: "translation", scope: !505, file: !427, line: 199, type: !70)
!512 = !DILocalVariable(name: "w", scope: !505, file: !427, line: 229, type: !407)
!513 = !DILocalVariable(name: "mbs", scope: !505, file: !427, line: 230, type: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !413, line: 6, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !415, line: 21, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 13, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !516, file: !415, line: 15, baseType: !92, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !516, file: !415, line: 20, baseType: !520, size: 32, offset: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !415, line: 16, size: 32, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !520, file: !415, line: 18, baseType: !76, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !520, file: !415, line: 19, baseType: !108, size: 32)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !525)
!525 = !{!120, !110}
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(name: "slotvec", scope: !451, file: !427, line: 834, type: !528, isLocal: true, isDefinition: true)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !427, line: 823, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !529, file: !427, line: 825, baseType: !94, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !529, file: !427, line: 826, baseType: !239, size: 64, offset: 64)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "nslots", scope: !451, file: !427, line: 832, type: !92, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "slotvec0", scope: !451, file: !427, line: 833, type: !529, isLocal: true, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 704, elements: !539)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!539 = !{!540}
!540 = !DISubrange(count: 11)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !543, line: 67, type: !208, isLocal: true, isDefinition: true)
!543 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !543, line: 69, type: !138, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !543, line: 83, type: !138, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !543, line: 83, type: !108, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !543, line: 85, type: !118, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !543, line: 88, type: !554, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 171)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !543, line: 88, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 34)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !543, line: 105, type: !54, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !543, line: 109, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 23)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !543, line: 113, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 28)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !543, line: 120, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 32)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !543, line: 127, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 36)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !543, line: 134, type: !159, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !543, line: 142, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 44)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !543, line: 150, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 48)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !543, line: 159, type: !598, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 52)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !543, line: 170, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 60)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !543, line: 248, type: !9, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !543, line: 248, type: !184, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !543, line: 254, type: !9, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !543, line: 254, type: !49, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !543, line: 254, type: !159, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !543, line: 259, type: !3, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !543, line: 259, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 29)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !625, file: !626, line: 26, type: !628, isLocal: false, isDefinition: true)
!625 = distinct !DICompileUnit(language: DW_LANG_C11, file: !626, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !627, splitDebugInlining: false, nameTableKind: None)
!626 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!627 = !{!623}
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 47)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(name: "exit_failure", scope: !633, file: !634, line: 24, type: !636, isLocal: false, isDefinition: true)
!633 = distinct !DICompileUnit(language: DW_LANG_C11, file: !634, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !635, splitDebugInlining: false, nameTableKind: None)
!634 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!635 = !{!631}
!636 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !639, line: 34, type: !127, isLocal: true, isDefinition: true)
!639 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !639, line: 34, type: !138, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !639, line: 34, type: !59, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 108, type: !34, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "internal_state", scope: !649, file: !646, line: 97, type: !652, isLocal: true, isDefinition: true)
!649 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !650, globals: !651, splitDebugInlining: false, nameTableKind: None)
!650 = !{!91, !94, !97}
!651 = !{!644, !647}
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !413, line: 6, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !415, line: 21, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !415, line: 13, size: 64, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !654, file: !415, line: 15, baseType: !92, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !654, file: !415, line: 20, baseType: !658, size: 32, offset: 32)
!658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !415, line: 16, size: 32, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !658, file: !415, line: 18, baseType: !76, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !658, file: !415, line: 19, baseType: !108, size: 32)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !664, line: 35, type: !113, isLocal: true, isDefinition: true)
!664 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!665 = distinct !DICompileUnit(language: DW_LANG_C11, file: !666, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!666 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!667 = distinct !DICompileUnit(language: DW_LANG_C11, file: !543, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !668, retainedTypes: !366, globals: !672, splitDebugInlining: false, nameTableKind: None)
!668 = !{!669}
!669 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !543, line: 40, baseType: !76, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!672 = !{!541, !544, !546, !548, !550, !552, !557, !562, !564, !569, !574, !579, !584, !586, !591, !596, !601, !606, !608, !610, !612, !614, !616, !618}
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !707, splitDebugInlining: false, nameTableKind: None)
!674 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!675 = !{!676, !688}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !677, file: !674, line: 188, baseType: !76, size: 32, elements: !686)
!677 = distinct !DISubprogram(name: "x2nrealloc", scope: !674, file: !674, line: 176, type: !678, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !681)
!678 = !DISubroutineType(types: !679)
!679 = !{!91, !91, !680, !94}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(name: "p", arg: 1, scope: !677, file: !674, line: 176, type: !91)
!683 = !DILocalVariable(name: "pn", arg: 2, scope: !677, file: !674, line: 176, type: !680)
!684 = !DILocalVariable(name: "s", arg: 3, scope: !677, file: !674, line: 176, type: !94)
!685 = !DILocalVariable(name: "n", scope: !677, file: !674, line: 178, type: !94)
!686 = !{!687}
!687 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!688 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !689, file: !674, line: 228, baseType: !76, size: 32, elements: !686)
!689 = distinct !DISubprogram(name: "xpalloc", scope: !674, file: !674, line: 223, type: !690, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !697)
!690 = !DISubroutineType(types: !691)
!691 = !{!91, !91, !692, !693, !695, !693}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !694, line: 130, baseType: !695)
!694 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !696, line: 18, baseType: !260)
!696 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706}
!698 = !DILocalVariable(name: "pa", arg: 1, scope: !689, file: !674, line: 223, type: !91)
!699 = !DILocalVariable(name: "pn", arg: 2, scope: !689, file: !674, line: 223, type: !692)
!700 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !689, file: !674, line: 223, type: !693)
!701 = !DILocalVariable(name: "n_max", arg: 4, scope: !689, file: !674, line: 223, type: !695)
!702 = !DILocalVariable(name: "s", arg: 5, scope: !689, file: !674, line: 223, type: !693)
!703 = !DILocalVariable(name: "n0", scope: !689, file: !674, line: 230, type: !693)
!704 = !DILocalVariable(name: "n", scope: !689, file: !674, line: 237, type: !693)
!705 = !DILocalVariable(name: "nbytes", scope: !689, file: !674, line: 248, type: !693)
!706 = !DILocalVariable(name: "adjusted_nbytes", scope: !689, file: !674, line: 252, type: !693)
!707 = !{!239, !91}
!708 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !709, splitDebugInlining: false, nameTableKind: None)
!709 = !{!637, !640, !642}
!710 = distinct !DICompileUnit(language: DW_LANG_C11, file: !711, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!711 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!712 = distinct !DICompileUnit(language: DW_LANG_C11, file: !713, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!713 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !715, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!715 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !664, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!721 = !{!722, !662}
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !664, line: 35, type: !118, isLocal: true, isDefinition: true)
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!728 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!729 = !{i32 7, !"Dwarf Version", i32 5}
!730 = !{i32 2, !"Debug Info Version", i32 3}
!731 = !{i32 1, !"wchar_size", i32 4}
!732 = !{i32 8, !"PIC Level", i32 2}
!733 = !{i32 7, !"PIE Level", i32 2}
!734 = !{i32 7, !"uwtable", i32 2}
!735 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!736 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 31, type: !737, scopeLine: 32, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !92}
!739 = !{!740}
!740 = !DILocalVariable(name: "status", arg: 1, scope: !736, file: !2, line: 31, type: !92)
!741 = !DILocation(line: 0, scope: !736)
!742 = !DILocation(line: 33, column: 14, scope: !743)
!743 = distinct !DILexicalBlock(scope: !736, file: !2, line: 33, column: 7)
!744 = !DILocation(line: 33, column: 7, scope: !736)
!745 = !DILocation(line: 34, column: 5, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !2, line: 34, column: 5)
!747 = !{!748, !748, i64 0}
!748 = !{!"any pointer", !749, i64 0}
!749 = !{!"omnipotent char", !750, i64 0}
!750 = !{!"Simple C/C++ TBAA"}
!751 = !DILocation(line: 37, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !743, file: !2, line: 36, column: 5)
!753 = !DILocation(line: 38, column: 7, scope: !752)
!754 = !DILocation(line: 42, column: 7, scope: !752)
!755 = !DILocation(line: 43, column: 7, scope: !752)
!756 = !DILocalVariable(name: "program", arg: 1, scope: !757, file: !67, line: 836, type: !70)
!757 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !758, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !70}
!760 = !{!756, !761, !768, !769, !771, !772}
!761 = !DILocalVariable(name: "infomap", scope: !757, file: !67, line: 838, type: !762)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 896, elements: !139)
!763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !757, file: !67, line: 838, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !764, file: !67, line: 838, baseType: !70, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !764, file: !67, line: 838, baseType: !70, size: 64, offset: 64)
!768 = !DILocalVariable(name: "node", scope: !757, file: !67, line: 848, type: !70)
!769 = !DILocalVariable(name: "map_prog", scope: !757, file: !67, line: 849, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!771 = !DILocalVariable(name: "lc_messages", scope: !757, file: !67, line: 861, type: !70)
!772 = !DILocalVariable(name: "url_program", scope: !757, file: !67, line: 874, type: !70)
!773 = !DILocation(line: 0, scope: !757, inlinedAt: !774)
!774 = distinct !DILocation(line: 44, column: 7, scope: !752)
!775 = !{}
!776 = !DILocation(line: 857, column: 3, scope: !757, inlinedAt: !774)
!777 = !DILocation(line: 861, column: 29, scope: !757, inlinedAt: !774)
!778 = !DILocation(line: 862, column: 7, scope: !779, inlinedAt: !774)
!779 = distinct !DILexicalBlock(scope: !757, file: !67, line: 862, column: 7)
!780 = !DILocation(line: 862, column: 19, scope: !779, inlinedAt: !774)
!781 = !DILocation(line: 862, column: 22, scope: !779, inlinedAt: !774)
!782 = !DILocation(line: 862, column: 7, scope: !757, inlinedAt: !774)
!783 = !DILocation(line: 868, column: 7, scope: !784, inlinedAt: !774)
!784 = distinct !DILexicalBlock(scope: !779, file: !67, line: 863, column: 5)
!785 = !DILocation(line: 870, column: 5, scope: !784, inlinedAt: !774)
!786 = !DILocation(line: 875, column: 3, scope: !757, inlinedAt: !774)
!787 = !DILocation(line: 877, column: 3, scope: !757, inlinedAt: !774)
!788 = !DILocation(line: 46, column: 3, scope: !736)
!789 = !DISubprogram(name: "dcgettext", scope: !790, file: !790, line: 51, type: !791, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!790 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!791 = !DISubroutineType(types: !792)
!792 = !{!239, !70, !70, !92}
!793 = !DISubprogram(name: "__fprintf_chk", scope: !794, file: !794, line: 93, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!794 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!795 = !DISubroutineType(types: !796)
!796 = !{!92, !797, !92, !798, null}
!797 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!798 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!799 = !DISubprogram(name: "__printf_chk", scope: !794, file: !794, line: 95, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DISubroutineType(types: !801)
!801 = !{!92, !92, !798, null}
!802 = !DISubprogram(name: "fputs_unlocked", scope: !803, file: !803, line: 691, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!804 = !DISubroutineType(types: !805)
!805 = !{!92, !798, !797}
!806 = !DILocation(line: 0, scope: !66)
!807 = !DILocation(line: 581, column: 7, scope: !216)
!808 = !{!809, !809, i64 0}
!809 = !{!"int", !749, i64 0}
!810 = !DILocation(line: 581, column: 19, scope: !216)
!811 = !DILocation(line: 581, column: 7, scope: !66)
!812 = !DILocation(line: 585, column: 26, scope: !215)
!813 = !DILocation(line: 0, scope: !215)
!814 = !DILocation(line: 586, column: 23, scope: !215)
!815 = !DILocation(line: 586, column: 28, scope: !215)
!816 = !DILocation(line: 586, column: 32, scope: !215)
!817 = !{!749, !749, i64 0}
!818 = !DILocation(line: 586, column: 38, scope: !215)
!819 = !DILocalVariable(name: "__s1", arg: 1, scope: !820, file: !821, line: 1359, type: !70)
!820 = distinct !DISubprogram(name: "streq", scope: !821, file: !821, line: 1359, type: !822, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !824)
!821 = !DIFile(filename: "./lib/string.h", directory: "/src")
!822 = !DISubroutineType(types: !823)
!823 = !{!218, !70, !70}
!824 = !{!819, !825}
!825 = !DILocalVariable(name: "__s2", arg: 2, scope: !820, file: !821, line: 1359, type: !70)
!826 = !DILocation(line: 0, scope: !820, inlinedAt: !827)
!827 = distinct !DILocation(line: 586, column: 41, scope: !215)
!828 = !DILocation(line: 1361, column: 11, scope: !820, inlinedAt: !827)
!829 = !DILocation(line: 1361, column: 10, scope: !820, inlinedAt: !827)
!830 = !DILocation(line: 586, column: 19, scope: !215)
!831 = !DILocation(line: 587, column: 5, scope: !215)
!832 = !DILocation(line: 588, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!834 = !DILocation(line: 588, column: 7, scope: !66)
!835 = !DILocation(line: 590, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !67, line: 589, column: 5)
!837 = !DILocation(line: 591, column: 7, scope: !836)
!838 = !DILocation(line: 595, column: 37, scope: !66)
!839 = !DILocation(line: 595, column: 35, scope: !66)
!840 = !DILocation(line: 596, column: 29, scope: !66)
!841 = !DILocation(line: 597, column: 8, scope: !224)
!842 = !DILocation(line: 597, column: 7, scope: !66)
!843 = !DILocation(line: 604, column: 24, scope: !223)
!844 = !DILocation(line: 604, column: 12, scope: !224)
!845 = !DILocation(line: 0, scope: !222)
!846 = !DILocation(line: 610, column: 16, scope: !222)
!847 = !DILocation(line: 610, column: 7, scope: !222)
!848 = !DILocation(line: 611, column: 21, scope: !222)
!849 = !{!850, !850, i64 0}
!850 = !{!"short", !749, i64 0}
!851 = !DILocation(line: 611, column: 19, scope: !222)
!852 = !DILocation(line: 611, column: 16, scope: !222)
!853 = !DILocation(line: 610, column: 30, scope: !222)
!854 = distinct !{!854, !847, !848, !855}
!855 = !{!"llvm.loop.mustprogress"}
!856 = !DILocation(line: 612, column: 18, scope: !857)
!857 = distinct !DILexicalBlock(scope: !222, file: !67, line: 612, column: 11)
!858 = !DILocation(line: 612, column: 11, scope: !222)
!859 = !DILocation(line: 620, column: 23, scope: !66)
!860 = !DILocation(line: 625, column: 39, scope: !66)
!861 = !DILocation(line: 626, column: 3, scope: !66)
!862 = !DILocation(line: 626, column: 10, scope: !66)
!863 = !DILocation(line: 626, column: 21, scope: !66)
!864 = !DILocation(line: 628, column: 44, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !67, line: 628, column: 11)
!866 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!867 = !DILocation(line: 628, column: 32, scope: !865)
!868 = !DILocation(line: 628, column: 49, scope: !865)
!869 = !DILocation(line: 628, column: 11, scope: !866)
!870 = !DILocation(line: 630, column: 11, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !67, line: 630, column: 11)
!872 = !DILocation(line: 630, column: 11, scope: !866)
!873 = !DILocation(line: 632, column: 26, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !67, line: 632, column: 15)
!875 = distinct !DILexicalBlock(scope: !871, file: !67, line: 631, column: 9)
!876 = !DILocation(line: 632, column: 34, scope: !874)
!877 = !DILocation(line: 632, column: 37, scope: !874)
!878 = !DILocation(line: 632, column: 15, scope: !875)
!879 = !DILocation(line: 636, column: 16, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !67, line: 636, column: 15)
!881 = !DILocation(line: 636, column: 29, scope: !880)
!882 = !DILocation(line: 640, column: 16, scope: !866)
!883 = distinct !{!883, !861, !884, !855}
!884 = !DILocation(line: 641, column: 5, scope: !66)
!885 = !DILocation(line: 644, column: 3, scope: !66)
!886 = !DILocation(line: 0, scope: !820, inlinedAt: !887)
!887 = distinct !DILocation(line: 648, column: 31, scope: !66)
!888 = !DILocation(line: 0, scope: !820, inlinedAt: !889)
!889 = distinct !DILocation(line: 649, column: 31, scope: !66)
!890 = !DILocation(line: 0, scope: !820, inlinedAt: !891)
!891 = distinct !DILocation(line: 650, column: 31, scope: !66)
!892 = !DILocation(line: 0, scope: !820, inlinedAt: !893)
!893 = distinct !DILocation(line: 651, column: 31, scope: !66)
!894 = !DILocation(line: 0, scope: !820, inlinedAt: !895)
!895 = distinct !DILocation(line: 652, column: 31, scope: !66)
!896 = !DILocation(line: 0, scope: !820, inlinedAt: !897)
!897 = distinct !DILocation(line: 653, column: 31, scope: !66)
!898 = !DILocation(line: 0, scope: !820, inlinedAt: !899)
!899 = distinct !DILocation(line: 654, column: 31, scope: !66)
!900 = !DILocation(line: 0, scope: !820, inlinedAt: !901)
!901 = distinct !DILocation(line: 655, column: 31, scope: !66)
!902 = !DILocation(line: 0, scope: !820, inlinedAt: !903)
!903 = distinct !DILocation(line: 656, column: 31, scope: !66)
!904 = !DILocation(line: 0, scope: !820, inlinedAt: !905)
!905 = distinct !DILocation(line: 657, column: 31, scope: !66)
!906 = !DILocation(line: 663, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!908 = !DILocation(line: 664, column: 7, scope: !907)
!909 = !DILocation(line: 664, column: 10, scope: !907)
!910 = !DILocation(line: 663, column: 7, scope: !66)
!911 = !DILocation(line: 669, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !67, line: 665, column: 5)
!913 = !DILocation(line: 671, column: 5, scope: !912)
!914 = !DILocation(line: 676, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !907, file: !67, line: 673, column: 5)
!916 = !DILocation(line: 679, column: 3, scope: !66)
!917 = !DILocation(line: 683, column: 3, scope: !66)
!918 = !DILocation(line: 686, column: 3, scope: !66)
!919 = !DILocation(line: 688, column: 3, scope: !66)
!920 = !DILocation(line: 691, column: 3, scope: !66)
!921 = !DILocation(line: 695, column: 3, scope: !66)
!922 = !DILocation(line: 696, column: 1, scope: !66)
!923 = !DISubprogram(name: "setlocale", scope: !924, file: !924, line: 122, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!924 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!925 = !DISubroutineType(types: !926)
!926 = !{!239, !92, !70}
!927 = !DISubprogram(name: "strncmp", scope: !928, file: !928, line: 159, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!928 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!929 = !DISubroutineType(types: !930)
!930 = !{!92, !70, !70, !94}
!931 = !DISubprogram(name: "exit", scope: !932, file: !932, line: 624, type: !737, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!932 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!933 = !DISubprogram(name: "getenv", scope: !932, file: !932, line: 641, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!934 = !DISubroutineType(types: !935)
!935 = !{!239, !70}
!936 = !DISubprogram(name: "strcmp", scope: !928, file: !928, line: 156, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DISubroutineType(types: !938)
!938 = !{!92, !70, !70}
!939 = !DISubprogram(name: "strspn", scope: !928, file: !928, line: 297, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!940 = !DISubroutineType(types: !941)
!941 = !{!96, !70, !70}
!942 = !DISubprogram(name: "strchr", scope: !928, file: !928, line: 246, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!239, !70, !92}
!945 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubroutineType(types: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!951 = !DISubprogram(name: "strcspn", scope: !928, file: !928, line: 293, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubprogram(name: "fwrite_unlocked", scope: !803, file: !803, line: 704, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!94, !955, !94, !94, !797}
!955 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !956)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!958 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 50, type: !959, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !962)
!959 = !DISubroutineType(types: !960)
!960 = !{!92, !92, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "argc", arg: 1, scope: !958, file: !2, line: 50, type: !92)
!964 = !DILocalVariable(name: "argv", arg: 2, scope: !958, file: !2, line: 50, type: !961)
!965 = !DILocalVariable(name: "cp", scope: !958, file: !2, line: 72, type: !70)
!966 = !DILocation(line: 0, scope: !958)
!967 = !DILocation(line: 53, column: 21, scope: !958)
!968 = !DILocation(line: 53, column: 3, scope: !958)
!969 = !DILocation(line: 54, column: 3, scope: !958)
!970 = !DILocation(line: 55, column: 3, scope: !958)
!971 = !DILocation(line: 56, column: 3, scope: !958)
!972 = !DILocation(line: 58, column: 3, scope: !958)
!973 = !DILocation(line: 61, column: 36, scope: !958)
!974 = !DILocation(line: 61, column: 58, scope: !958)
!975 = !DILocation(line: 60, column: 3, scope: !958)
!976 = !DILocation(line: 64, column: 7, scope: !977)
!977 = distinct !DILexicalBlock(scope: !958, file: !2, line: 64, column: 7)
!978 = !DILocation(line: 64, column: 14, scope: !977)
!979 = !DILocation(line: 64, column: 7, scope: !958)
!980 = !DILocation(line: 66, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !977, file: !2, line: 65, column: 5)
!982 = !DILocation(line: 67, column: 7, scope: !981)
!983 = !DILocation(line: 72, column: 20, scope: !958)
!984 = !DILocation(line: 73, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !958, file: !2, line: 73, column: 7)
!986 = !DILocation(line: 73, column: 7, scope: !958)
!987 = !DILocation(line: 74, column: 5, scope: !985)
!988 = !DILocation(line: 76, column: 3, scope: !958)
!989 = !DILocation(line: 77, column: 3, scope: !958)
!990 = !DISubprogram(name: "bindtextdomain", scope: !790, file: !790, line: 86, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = !DISubroutineType(types: !992)
!992 = !{!239, !70, !70}
!993 = !DISubprogram(name: "textdomain", scope: !790, file: !790, line: 82, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!994 = !DISubprogram(name: "atexit", scope: !932, file: !932, line: 602, type: !995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!995 = !DISubroutineType(types: !996)
!996 = !{!92, !357}
!997 = !DISubprogram(name: "getlogin", scope: !998, file: !998, line: 881, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!998 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!999 = !DISubroutineType(types: !1000)
!1000 = !{!239}
!1001 = !DISubprogram(name: "puts", scope: !803, file: !803, line: 661, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!92, !70}
!1004 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !297, file: !297, line: 50, type: !758, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1005)
!1005 = !{!1006}
!1006 = !DILocalVariable(name: "file", arg: 1, scope: !1004, file: !297, line: 50, type: !70)
!1007 = !DILocation(line: 0, scope: !1004)
!1008 = !DILocation(line: 52, column: 13, scope: !1004)
!1009 = !DILocation(line: 53, column: 1, scope: !1004)
!1010 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !297, file: !297, line: 87, type: !1011, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !218}
!1013 = !{!1014}
!1014 = !DILocalVariable(name: "ignore", arg: 1, scope: !1010, file: !297, line: 87, type: !218)
!1015 = !DILocation(line: 0, scope: !1010)
!1016 = !DILocation(line: 89, column: 16, scope: !1010)
!1017 = !{!1018, !1018, i64 0}
!1018 = !{!"_Bool", !749, i64 0}
!1019 = !DILocation(line: 90, column: 1, scope: !1010)
!1020 = distinct !DISubprogram(name: "close_stdout", scope: !297, file: !297, line: 116, type: !358, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1021)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "write_error", scope: !1023, file: !297, line: 121, type: !70)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !297, line: 120, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !297, line: 118, column: 7)
!1025 = !DILocation(line: 118, column: 21, scope: !1024)
!1026 = !DILocation(line: 118, column: 7, scope: !1024)
!1027 = !DILocation(line: 118, column: 29, scope: !1024)
!1028 = !DILocation(line: 119, column: 7, scope: !1024)
!1029 = !DILocation(line: 119, column: 12, scope: !1024)
!1030 = !{i8 0, i8 2}
!1031 = !DILocation(line: 119, column: 25, scope: !1024)
!1032 = !DILocation(line: 119, column: 28, scope: !1024)
!1033 = !DILocation(line: 119, column: 34, scope: !1024)
!1034 = !DILocation(line: 118, column: 7, scope: !1020)
!1035 = !DILocation(line: 121, column: 33, scope: !1023)
!1036 = !DILocation(line: 0, scope: !1023)
!1037 = !DILocation(line: 122, column: 11, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1023, file: !297, line: 122, column: 11)
!1039 = !DILocation(line: 0, scope: !1038)
!1040 = !DILocation(line: 122, column: 11, scope: !1023)
!1041 = !DILocation(line: 123, column: 9, scope: !1038)
!1042 = !DILocation(line: 126, column: 9, scope: !1038)
!1043 = !DILocation(line: 128, column: 14, scope: !1023)
!1044 = !DILocation(line: 128, column: 7, scope: !1023)
!1045 = !DILocation(line: 133, column: 42, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1020, file: !297, line: 133, column: 7)
!1047 = !DILocation(line: 133, column: 28, scope: !1046)
!1048 = !DILocation(line: 133, column: 50, scope: !1046)
!1049 = !DILocation(line: 133, column: 7, scope: !1020)
!1050 = !DILocation(line: 134, column: 12, scope: !1046)
!1051 = !DILocation(line: 134, column: 5, scope: !1046)
!1052 = !DILocation(line: 135, column: 1, scope: !1020)
!1053 = !DISubprogram(name: "__errno_location", scope: !1054, file: !1054, line: 37, type: !1055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1054 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!382}
!1057 = !DISubprogram(name: "_exit", scope: !998, file: !998, line: 624, type: !737, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1058 = distinct !DISubprogram(name: "verror", scope: !312, file: !312, line: 251, type: !1059, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !92, !92, !70, !322}
!1061 = !{!1062, !1063, !1064, !1065}
!1062 = !DILocalVariable(name: "status", arg: 1, scope: !1058, file: !312, line: 251, type: !92)
!1063 = !DILocalVariable(name: "errnum", arg: 2, scope: !1058, file: !312, line: 251, type: !92)
!1064 = !DILocalVariable(name: "message", arg: 3, scope: !1058, file: !312, line: 251, type: !70)
!1065 = !DILocalVariable(name: "args", arg: 4, scope: !1058, file: !312, line: 251, type: !322)
!1066 = !DILocation(line: 0, scope: !1058)
!1067 = !DILocation(line: 261, column: 3, scope: !1058)
!1068 = !DILocation(line: 265, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1058, file: !312, line: 265, column: 7)
!1070 = !DILocation(line: 265, column: 7, scope: !1058)
!1071 = !DILocation(line: 266, column: 5, scope: !1069)
!1072 = !DILocation(line: 272, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !312, line: 268, column: 5)
!1074 = !DILocation(line: 276, column: 3, scope: !1058)
!1075 = !DILocation(line: 282, column: 1, scope: !1058)
!1076 = distinct !DISubprogram(name: "flush_stdout", scope: !312, file: !312, line: 163, type: !358, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1077)
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "stdout_fd", scope: !1076, file: !312, line: 166, type: !92)
!1079 = !DILocation(line: 0, scope: !1076)
!1080 = !DILocalVariable(name: "fd", arg: 1, scope: !1081, file: !312, line: 145, type: !92)
!1081 = distinct !DISubprogram(name: "is_open", scope: !312, file: !312, line: 145, type: !1082, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!92, !92}
!1084 = !{!1080}
!1085 = !DILocation(line: 0, scope: !1081, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 182, column: 25, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !312, line: 182, column: 7)
!1088 = !DILocation(line: 157, column: 15, scope: !1081, inlinedAt: !1086)
!1089 = !DILocation(line: 157, column: 12, scope: !1081, inlinedAt: !1086)
!1090 = !DILocation(line: 182, column: 7, scope: !1076)
!1091 = !DILocation(line: 184, column: 5, scope: !1087)
!1092 = !DILocation(line: 185, column: 1, scope: !1076)
!1093 = distinct !DISubprogram(name: "error_tail", scope: !312, file: !312, line: 219, type: !1059, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1094)
!1094 = !{!1095, !1096, !1097, !1098}
!1095 = !DILocalVariable(name: "status", arg: 1, scope: !1093, file: !312, line: 219, type: !92)
!1096 = !DILocalVariable(name: "errnum", arg: 2, scope: !1093, file: !312, line: 219, type: !92)
!1097 = !DILocalVariable(name: "message", arg: 3, scope: !1093, file: !312, line: 219, type: !70)
!1098 = !DILocalVariable(name: "args", arg: 4, scope: !1093, file: !312, line: 219, type: !322)
!1099 = distinct !DIAssignID()
!1100 = !DILocation(line: 0, scope: !1093)
!1101 = !DILocation(line: 229, column: 13, scope: !1093)
!1102 = !DILocalVariable(name: "__stream", arg: 1, scope: !1103, file: !794, line: 132, type: !1106)
!1103 = distinct !DISubprogram(name: "vfprintf", scope: !794, file: !794, line: 132, type: !1104, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1141)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!92, !1106, !798, !322}
!1106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1107)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1109, file: !235, line: 51, baseType: !92, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1109, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1109, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1109, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1109, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1109, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1109, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1109, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1109, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1109, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1109, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1109, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1109, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1109, file: !235, line: 70, baseType: !1125, size: 64, offset: 832)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1109, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1109, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1109, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1109, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1109, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1109, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1109, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1109, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1109, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1109, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1109, file: !235, line: 93, baseType: !1125, size: 64, offset: 1344)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1109, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1109, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1109, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1109, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!1141 = !{!1102, !1142, !1143}
!1142 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1103, file: !794, line: 133, type: !798)
!1143 = !DILocalVariable(name: "__ap", arg: 3, scope: !1103, file: !794, line: 133, type: !322)
!1144 = !DILocation(line: 0, scope: !1103, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 229, column: 3, scope: !1093)
!1146 = !DILocation(line: 135, column: 10, scope: !1103, inlinedAt: !1145)
!1147 = !DILocation(line: 232, column: 3, scope: !1093)
!1148 = !DILocation(line: 233, column: 7, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1093, file: !312, line: 233, column: 7)
!1150 = !DILocation(line: 233, column: 7, scope: !1093)
!1151 = !DILocalVariable(name: "errbuf", scope: !1152, file: !312, line: 193, type: !1156)
!1152 = distinct !DISubprogram(name: "print_errno_message", scope: !312, file: !312, line: 188, type: !737, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1153)
!1153 = !{!1154, !1155, !1151}
!1154 = !DILocalVariable(name: "errnum", arg: 1, scope: !1152, file: !312, line: 188, type: !92)
!1155 = !DILocalVariable(name: "s", scope: !1152, file: !312, line: 190, type: !70)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1157)
!1157 = !{!1158}
!1158 = !DISubrange(count: 1024)
!1159 = !DILocation(line: 0, scope: !1152, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 234, column: 5, scope: !1149)
!1161 = !DILocation(line: 193, column: 3, scope: !1152, inlinedAt: !1160)
!1162 = !DILocation(line: 195, column: 7, scope: !1152, inlinedAt: !1160)
!1163 = !DILocation(line: 207, column: 9, scope: !1164, inlinedAt: !1160)
!1164 = distinct !DILexicalBlock(scope: !1152, file: !312, line: 207, column: 7)
!1165 = !DILocation(line: 207, column: 7, scope: !1152, inlinedAt: !1160)
!1166 = !DILocation(line: 208, column: 9, scope: !1164, inlinedAt: !1160)
!1167 = !DILocation(line: 208, column: 5, scope: !1164, inlinedAt: !1160)
!1168 = !DILocation(line: 214, column: 3, scope: !1152, inlinedAt: !1160)
!1169 = !DILocation(line: 216, column: 1, scope: !1152, inlinedAt: !1160)
!1170 = !DILocation(line: 234, column: 5, scope: !1149)
!1171 = !DILocation(line: 238, column: 3, scope: !1093)
!1172 = !DILocalVariable(name: "__c", arg: 1, scope: !1173, file: !1174, line: 101, type: !92)
!1173 = distinct !DISubprogram(name: "putc_unlocked", scope: !1174, file: !1174, line: 101, type: !1175, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1177)
!1174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!92, !92, !1107}
!1177 = !{!1172, !1178}
!1178 = !DILocalVariable(name: "__stream", arg: 2, scope: !1173, file: !1174, line: 101, type: !1107)
!1179 = !DILocation(line: 0, scope: !1173, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 238, column: 3, scope: !1093)
!1181 = !DILocation(line: 103, column: 10, scope: !1173, inlinedAt: !1180)
!1182 = !{!1183, !748, i64 40}
!1183 = !{!"_IO_FILE", !809, i64 0, !748, i64 8, !748, i64 16, !748, i64 24, !748, i64 32, !748, i64 40, !748, i64 48, !748, i64 56, !748, i64 64, !748, i64 72, !748, i64 80, !748, i64 88, !748, i64 96, !748, i64 104, !809, i64 112, !809, i64 116, !1184, i64 120, !850, i64 128, !749, i64 130, !749, i64 131, !748, i64 136, !1184, i64 144, !748, i64 152, !748, i64 160, !748, i64 168, !748, i64 176, !1184, i64 184, !809, i64 192, !749, i64 196}
!1184 = !{!"long", !749, i64 0}
!1185 = !{!1183, !748, i64 48}
!1186 = !{!"branch_weights", i32 2000, i32 1}
!1187 = !DILocation(line: 240, column: 3, scope: !1093)
!1188 = !DILocation(line: 241, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1093, file: !312, line: 241, column: 7)
!1190 = !DILocation(line: 241, column: 7, scope: !1093)
!1191 = !DILocation(line: 242, column: 5, scope: !1189)
!1192 = !DILocation(line: 243, column: 1, scope: !1093)
!1193 = !DISubprogram(name: "__vfprintf_chk", scope: !794, file: !794, line: 96, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!92, !1106, !92, !798, !322}
!1196 = !DISubprogram(name: "strerror_r", scope: !928, file: !928, line: 444, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!239, !92, !239, !94}
!1199 = !DISubprogram(name: "__overflow", scope: !803, file: !803, line: 886, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!92, !1107, !92}
!1202 = !DISubprogram(name: "fflush_unlocked", scope: !803, file: !803, line: 239, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!92, !1107}
!1205 = !DISubprogram(name: "fcntl", scope: !1206, file: !1206, line: 149, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!92, !92, !92, null}
!1209 = distinct !DISubprogram(name: "error", scope: !312, file: !312, line: 285, type: !1210, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1212)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !92, !92, !70, null}
!1212 = !{!1213, !1214, !1215, !1216}
!1213 = !DILocalVariable(name: "status", arg: 1, scope: !1209, file: !312, line: 285, type: !92)
!1214 = !DILocalVariable(name: "errnum", arg: 2, scope: !1209, file: !312, line: 285, type: !92)
!1215 = !DILocalVariable(name: "message", arg: 3, scope: !1209, file: !312, line: 285, type: !70)
!1216 = !DILocalVariable(name: "ap", scope: !1209, file: !312, line: 287, type: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !803, line: 52, baseType: !1218)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 12, baseType: !1220)
!1219 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !312, baseType: !1221)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 192, elements: !35)
!1222 = distinct !DIAssignID()
!1223 = !DILocation(line: 0, scope: !1209)
!1224 = !DILocation(line: 287, column: 3, scope: !1209)
!1225 = !DILocation(line: 288, column: 3, scope: !1209)
!1226 = !DILocation(line: 289, column: 3, scope: !1209)
!1227 = !DILocation(line: 290, column: 3, scope: !1209)
!1228 = !DILocation(line: 291, column: 1, scope: !1209)
!1229 = !DILocation(line: 0, scope: !319)
!1230 = !DILocation(line: 302, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !319, file: !312, line: 302, column: 7)
!1232 = !DILocation(line: 302, column: 7, scope: !319)
!1233 = !DILocation(line: 307, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !312, line: 307, column: 11)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !312, line: 303, column: 5)
!1236 = !DILocation(line: 307, column: 27, scope: !1234)
!1237 = !DILocation(line: 308, column: 11, scope: !1234)
!1238 = !DILocation(line: 308, column: 28, scope: !1234)
!1239 = !DILocation(line: 308, column: 25, scope: !1234)
!1240 = !DILocation(line: 309, column: 15, scope: !1234)
!1241 = !DILocation(line: 309, column: 33, scope: !1234)
!1242 = !DILocation(line: 310, column: 19, scope: !1234)
!1243 = !DILocation(line: 311, column: 22, scope: !1234)
!1244 = !DILocation(line: 311, column: 56, scope: !1234)
!1245 = !DILocation(line: 307, column: 11, scope: !1235)
!1246 = !DILocation(line: 316, column: 21, scope: !1235)
!1247 = !DILocation(line: 317, column: 23, scope: !1235)
!1248 = !DILocation(line: 318, column: 5, scope: !1235)
!1249 = !DILocation(line: 327, column: 3, scope: !319)
!1250 = !DILocation(line: 331, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !319, file: !312, line: 331, column: 7)
!1252 = !DILocation(line: 331, column: 7, scope: !319)
!1253 = !DILocation(line: 332, column: 5, scope: !1251)
!1254 = !DILocation(line: 338, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !312, line: 334, column: 5)
!1256 = !DILocation(line: 346, column: 3, scope: !319)
!1257 = !DILocation(line: 350, column: 3, scope: !319)
!1258 = !DILocation(line: 356, column: 1, scope: !319)
!1259 = distinct !DISubprogram(name: "error_at_line", scope: !312, file: !312, line: 359, type: !1260, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{null, !92, !92, !70, !76, !70, null}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1268}
!1263 = !DILocalVariable(name: "status", arg: 1, scope: !1259, file: !312, line: 359, type: !92)
!1264 = !DILocalVariable(name: "errnum", arg: 2, scope: !1259, file: !312, line: 359, type: !92)
!1265 = !DILocalVariable(name: "file_name", arg: 3, scope: !1259, file: !312, line: 359, type: !70)
!1266 = !DILocalVariable(name: "line_number", arg: 4, scope: !1259, file: !312, line: 360, type: !76)
!1267 = !DILocalVariable(name: "message", arg: 5, scope: !1259, file: !312, line: 360, type: !70)
!1268 = !DILocalVariable(name: "ap", scope: !1259, file: !312, line: 362, type: !1217)
!1269 = distinct !DIAssignID()
!1270 = !DILocation(line: 0, scope: !1259)
!1271 = !DILocation(line: 362, column: 3, scope: !1259)
!1272 = !DILocation(line: 363, column: 3, scope: !1259)
!1273 = !DILocation(line: 364, column: 3, scope: !1259)
!1274 = !DILocation(line: 366, column: 3, scope: !1259)
!1275 = !DILocation(line: 367, column: 1, scope: !1259)
!1276 = distinct !DISubprogram(name: "getprogname", scope: !666, file: !666, line: 54, type: !1277, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !665)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!70}
!1279 = !DILocation(line: 58, column: 10, scope: !1276)
!1280 = !DILocation(line: 58, column: 3, scope: !1276)
!1281 = distinct !DISubprogram(name: "parse_long_options", scope: !362, file: !362, line: 45, type: !1282, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !1285)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !92, !961, !70, !70, !70, !1284, null}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!1285 = !{!1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1296}
!1286 = !DILocalVariable(name: "argc", arg: 1, scope: !1281, file: !362, line: 45, type: !92)
!1287 = !DILocalVariable(name: "argv", arg: 2, scope: !1281, file: !362, line: 46, type: !961)
!1288 = !DILocalVariable(name: "command_name", arg: 3, scope: !1281, file: !362, line: 47, type: !70)
!1289 = !DILocalVariable(name: "package", arg: 4, scope: !1281, file: !362, line: 48, type: !70)
!1290 = !DILocalVariable(name: "version", arg: 5, scope: !1281, file: !362, line: 49, type: !70)
!1291 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1281, file: !362, line: 50, type: !1284)
!1292 = !DILocalVariable(name: "saved_opterr", scope: !1281, file: !362, line: 53, type: !92)
!1293 = !DILocalVariable(name: "c", scope: !1294, file: !362, line: 60, type: !92)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !362, line: 59, column: 5)
!1295 = distinct !DILexicalBlock(scope: !1281, file: !362, line: 58, column: 7)
!1296 = !DILocalVariable(name: "authors", scope: !1297, file: !362, line: 71, type: !1301)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !362, line: 70, column: 15)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !362, line: 64, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !362, line: 62, column: 9)
!1300 = distinct !DILexicalBlock(scope: !1294, file: !362, line: 61, column: 11)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !803, line: 52, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 12, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !362, baseType: !1304)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 192, elements: !35)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1305, file: !362, line: 71, baseType: !76, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1305, file: !362, line: 71, baseType: !76, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1305, file: !362, line: 71, baseType: !91, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1305, file: !362, line: 71, baseType: !91, size: 64, offset: 128)
!1311 = distinct !DIAssignID()
!1312 = !DILocation(line: 0, scope: !1297)
!1313 = !DILocation(line: 0, scope: !1281)
!1314 = !DILocation(line: 53, column: 22, scope: !1281)
!1315 = !DILocation(line: 56, column: 10, scope: !1281)
!1316 = !DILocation(line: 58, column: 12, scope: !1295)
!1317 = !DILocation(line: 58, column: 7, scope: !1281)
!1318 = !DILocation(line: 60, column: 15, scope: !1294)
!1319 = !DILocation(line: 0, scope: !1294)
!1320 = !DILocation(line: 61, column: 11, scope: !1294)
!1321 = !DILocation(line: 66, column: 15, scope: !1298)
!1322 = !DILocation(line: 67, column: 15, scope: !1298)
!1323 = !DILocation(line: 71, column: 17, scope: !1297)
!1324 = !DILocation(line: 72, column: 17, scope: !1297)
!1325 = !DILocation(line: 73, column: 33, scope: !1297)
!1326 = !DILocation(line: 73, column: 17, scope: !1297)
!1327 = !DILocation(line: 74, column: 17, scope: !1297)
!1328 = !DILocation(line: 85, column: 10, scope: !1281)
!1329 = !DILocation(line: 89, column: 10, scope: !1281)
!1330 = !DILocation(line: 90, column: 1, scope: !1281)
!1331 = !DISubprogram(name: "getopt_long", scope: !377, file: !377, line: 66, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!92, !92, !1334, !70, !1336, !382}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!1337 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !362, file: !362, line: 98, type: !1338, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !365, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !92, !961, !70, !70, !70, !218, !1284, null}
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1341 = !DILocalVariable(name: "argc", arg: 1, scope: !1337, file: !362, line: 98, type: !92)
!1342 = !DILocalVariable(name: "argv", arg: 2, scope: !1337, file: !362, line: 99, type: !961)
!1343 = !DILocalVariable(name: "command_name", arg: 3, scope: !1337, file: !362, line: 100, type: !70)
!1344 = !DILocalVariable(name: "package", arg: 4, scope: !1337, file: !362, line: 101, type: !70)
!1345 = !DILocalVariable(name: "version", arg: 5, scope: !1337, file: !362, line: 102, type: !70)
!1346 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1337, file: !362, line: 103, type: !218)
!1347 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1337, file: !362, line: 104, type: !1284)
!1348 = !DILocalVariable(name: "saved_opterr", scope: !1337, file: !362, line: 107, type: !92)
!1349 = !DILocalVariable(name: "optstring", scope: !1337, file: !362, line: 112, type: !70)
!1350 = !DILocalVariable(name: "c", scope: !1337, file: !362, line: 114, type: !92)
!1351 = !DILocalVariable(name: "authors", scope: !1352, file: !362, line: 125, type: !1301)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !362, line: 124, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !362, line: 118, column: 9)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !362, line: 116, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1337, file: !362, line: 115, column: 7)
!1356 = distinct !DIAssignID()
!1357 = !DILocation(line: 0, scope: !1352)
!1358 = !DILocation(line: 0, scope: !1337)
!1359 = !DILocation(line: 107, column: 22, scope: !1337)
!1360 = !DILocation(line: 110, column: 10, scope: !1337)
!1361 = !DILocation(line: 112, column: 27, scope: !1337)
!1362 = !DILocation(line: 114, column: 11, scope: !1337)
!1363 = !DILocation(line: 115, column: 7, scope: !1337)
!1364 = !DILocation(line: 125, column: 13, scope: !1352)
!1365 = !DILocation(line: 126, column: 13, scope: !1352)
!1366 = !DILocation(line: 127, column: 29, scope: !1352)
!1367 = !DILocation(line: 127, column: 13, scope: !1352)
!1368 = !DILocation(line: 128, column: 13, scope: !1352)
!1369 = !DILocation(line: 132, column: 26, scope: !1353)
!1370 = !DILocation(line: 133, column: 11, scope: !1353)
!1371 = !DILocation(line: 0, scope: !1353)
!1372 = !DILocation(line: 138, column: 10, scope: !1337)
!1373 = !DILocation(line: 139, column: 1, scope: !1337)
!1374 = distinct !DISubprogram(name: "set_program_name", scope: !387, file: !387, line: 37, type: !758, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1375)
!1375 = !{!1376, !1377, !1378}
!1376 = !DILocalVariable(name: "argv0", arg: 1, scope: !1374, file: !387, line: 37, type: !70)
!1377 = !DILocalVariable(name: "slash", scope: !1374, file: !387, line: 44, type: !70)
!1378 = !DILocalVariable(name: "base", scope: !1374, file: !387, line: 45, type: !70)
!1379 = !DILocation(line: 0, scope: !1374)
!1380 = !DILocation(line: 44, column: 23, scope: !1374)
!1381 = !DILocation(line: 45, column: 22, scope: !1374)
!1382 = !DILocation(line: 46, column: 17, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1374, file: !387, line: 46, column: 7)
!1384 = !DILocation(line: 46, column: 9, scope: !1383)
!1385 = !DILocation(line: 46, column: 25, scope: !1383)
!1386 = !DILocation(line: 46, column: 40, scope: !1383)
!1387 = !DILocalVariable(name: "__s1", arg: 1, scope: !1388, file: !821, line: 974, type: !956)
!1388 = distinct !DISubprogram(name: "memeq", scope: !821, file: !821, line: 974, type: !1389, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !386, retainedNodes: !1391)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!218, !956, !956, !94}
!1391 = !{!1387, !1392, !1393}
!1392 = !DILocalVariable(name: "__s2", arg: 2, scope: !1388, file: !821, line: 974, type: !956)
!1393 = !DILocalVariable(name: "__n", arg: 3, scope: !1388, file: !821, line: 974, type: !94)
!1394 = !DILocation(line: 0, scope: !1388, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 46, column: 28, scope: !1383)
!1396 = !DILocation(line: 976, column: 11, scope: !1388, inlinedAt: !1395)
!1397 = !DILocation(line: 976, column: 10, scope: !1388, inlinedAt: !1395)
!1398 = !DILocation(line: 46, column: 7, scope: !1374)
!1399 = !DILocation(line: 49, column: 11, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !387, line: 49, column: 11)
!1401 = distinct !DILexicalBlock(scope: !1383, file: !387, line: 47, column: 5)
!1402 = !DILocation(line: 49, column: 36, scope: !1400)
!1403 = !DILocation(line: 49, column: 11, scope: !1401)
!1404 = !DILocation(line: 65, column: 16, scope: !1374)
!1405 = !DILocation(line: 71, column: 27, scope: !1374)
!1406 = !DILocation(line: 74, column: 33, scope: !1374)
!1407 = !DILocation(line: 76, column: 1, scope: !1374)
!1408 = !DISubprogram(name: "strrchr", scope: !928, file: !928, line: 273, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1409 = distinct !DIAssignID()
!1410 = !DILocation(line: 0, scope: !396)
!1411 = distinct !DIAssignID()
!1412 = !DILocation(line: 40, column: 29, scope: !396)
!1413 = !DILocation(line: 41, column: 19, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !396, file: !397, line: 41, column: 7)
!1415 = !DILocation(line: 41, column: 7, scope: !396)
!1416 = !DILocation(line: 47, column: 3, scope: !396)
!1417 = !DILocation(line: 48, column: 3, scope: !396)
!1418 = !DILocalVariable(name: "ps", arg: 1, scope: !1419, file: !1420, line: 1135, type: !1423)
!1419 = distinct !DISubprogram(name: "mbszero", scope: !1420, file: !1420, line: 1135, type: !1421, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1424)
!1420 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1424 = !{!1418}
!1425 = !DILocation(line: 0, scope: !1419, inlinedAt: !1426)
!1426 = distinct !DILocation(line: 48, column: 18, scope: !396)
!1427 = !DILocalVariable(name: "__dest", arg: 1, scope: !1428, file: !1429, line: 57, type: !91)
!1428 = distinct !DISubprogram(name: "memset", scope: !1429, file: !1429, line: 57, type: !1430, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1432)
!1429 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!91, !91, !92, !94}
!1432 = !{!1427, !1433, !1434}
!1433 = !DILocalVariable(name: "__ch", arg: 2, scope: !1428, file: !1429, line: 57, type: !92)
!1434 = !DILocalVariable(name: "__len", arg: 3, scope: !1428, file: !1429, line: 57, type: !94)
!1435 = !DILocation(line: 0, scope: !1428, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 1137, column: 3, scope: !1419, inlinedAt: !1426)
!1437 = !DILocation(line: 59, column: 10, scope: !1428, inlinedAt: !1436)
!1438 = !DILocation(line: 49, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !396, file: !397, line: 49, column: 7)
!1440 = !DILocation(line: 49, column: 39, scope: !1439)
!1441 = !DILocation(line: 49, column: 44, scope: !1439)
!1442 = !DILocation(line: 54, column: 1, scope: !396)
!1443 = !DISubprogram(name: "mbrtoc32", scope: !408, file: !408, line: 57, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!94, !1446, !798, !94, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1423)
!1449 = distinct !DISubprogram(name: "clone_quoting_options", scope: !427, file: !427, line: 113, type: !1450, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1453)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!1452, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1453 = !{!1454, !1455, !1456}
!1454 = !DILocalVariable(name: "o", arg: 1, scope: !1449, file: !427, line: 113, type: !1452)
!1455 = !DILocalVariable(name: "saved_errno", scope: !1449, file: !427, line: 115, type: !92)
!1456 = !DILocalVariable(name: "p", scope: !1449, file: !427, line: 116, type: !1452)
!1457 = !DILocation(line: 0, scope: !1449)
!1458 = !DILocation(line: 115, column: 21, scope: !1449)
!1459 = !DILocation(line: 116, column: 40, scope: !1449)
!1460 = !DILocation(line: 116, column: 31, scope: !1449)
!1461 = !DILocation(line: 118, column: 9, scope: !1449)
!1462 = !DILocation(line: 119, column: 3, scope: !1449)
!1463 = distinct !DISubprogram(name: "get_quoting_style", scope: !427, file: !427, line: 124, type: !1464, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1468)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!453, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!1468 = !{!1469}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1463, file: !427, line: 124, type: !1466)
!1470 = !DILocation(line: 0, scope: !1463)
!1471 = !DILocation(line: 126, column: 11, scope: !1463)
!1472 = !DILocation(line: 126, column: 46, scope: !1463)
!1473 = !{!1474, !809, i64 0}
!1474 = !{!"quoting_options", !809, i64 0, !809, i64 4, !749, i64 8, !748, i64 40, !748, i64 48}
!1475 = !DILocation(line: 126, column: 3, scope: !1463)
!1476 = distinct !DISubprogram(name: "set_quoting_style", scope: !427, file: !427, line: 132, type: !1477, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !1452, !453}
!1479 = !{!1480, !1481}
!1480 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !427, line: 132, type: !1452)
!1481 = !DILocalVariable(name: "s", arg: 2, scope: !1476, file: !427, line: 132, type: !453)
!1482 = !DILocation(line: 0, scope: !1476)
!1483 = !DILocation(line: 134, column: 4, scope: !1476)
!1484 = !DILocation(line: 134, column: 45, scope: !1476)
!1485 = !DILocation(line: 135, column: 1, scope: !1476)
!1486 = distinct !DISubprogram(name: "set_char_quoting", scope: !427, file: !427, line: 143, type: !1487, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!92, !1452, !4, !92}
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1496, !1497}
!1490 = !DILocalVariable(name: "o", arg: 1, scope: !1486, file: !427, line: 143, type: !1452)
!1491 = !DILocalVariable(name: "c", arg: 2, scope: !1486, file: !427, line: 143, type: !4)
!1492 = !DILocalVariable(name: "i", arg: 3, scope: !1486, file: !427, line: 143, type: !92)
!1493 = !DILocalVariable(name: "uc", scope: !1486, file: !427, line: 145, type: !97)
!1494 = !DILocalVariable(name: "p", scope: !1486, file: !427, line: 146, type: !1495)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1496 = !DILocalVariable(name: "shift", scope: !1486, file: !427, line: 148, type: !92)
!1497 = !DILocalVariable(name: "r", scope: !1486, file: !427, line: 149, type: !76)
!1498 = !DILocation(line: 0, scope: !1486)
!1499 = !DILocation(line: 147, column: 6, scope: !1486)
!1500 = !DILocation(line: 147, column: 41, scope: !1486)
!1501 = !DILocation(line: 147, column: 62, scope: !1486)
!1502 = !DILocation(line: 147, column: 57, scope: !1486)
!1503 = !DILocation(line: 148, column: 15, scope: !1486)
!1504 = !DILocation(line: 149, column: 21, scope: !1486)
!1505 = !DILocation(line: 149, column: 24, scope: !1486)
!1506 = !DILocation(line: 149, column: 34, scope: !1486)
!1507 = !DILocation(line: 150, column: 19, scope: !1486)
!1508 = !DILocation(line: 150, column: 24, scope: !1486)
!1509 = !DILocation(line: 150, column: 6, scope: !1486)
!1510 = !DILocation(line: 151, column: 3, scope: !1486)
!1511 = distinct !DISubprogram(name: "set_quoting_flags", scope: !427, file: !427, line: 159, type: !1512, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!92, !1452, !92}
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !427, line: 159, type: !1452)
!1516 = !DILocalVariable(name: "i", arg: 2, scope: !1511, file: !427, line: 159, type: !92)
!1517 = !DILocalVariable(name: "r", scope: !1511, file: !427, line: 163, type: !92)
!1518 = !DILocation(line: 0, scope: !1511)
!1519 = !DILocation(line: 161, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1511, file: !427, line: 161, column: 7)
!1521 = !DILocation(line: 161, column: 7, scope: !1511)
!1522 = !DILocation(line: 163, column: 14, scope: !1511)
!1523 = !{!1474, !809, i64 4}
!1524 = !DILocation(line: 164, column: 12, scope: !1511)
!1525 = !DILocation(line: 165, column: 3, scope: !1511)
!1526 = distinct !DISubprogram(name: "set_custom_quoting", scope: !427, file: !427, line: 169, type: !1527, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1529)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1452, !70, !70}
!1529 = !{!1530, !1531, !1532}
!1530 = !DILocalVariable(name: "o", arg: 1, scope: !1526, file: !427, line: 169, type: !1452)
!1531 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1526, file: !427, line: 170, type: !70)
!1532 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1526, file: !427, line: 170, type: !70)
!1533 = !DILocation(line: 0, scope: !1526)
!1534 = !DILocation(line: 172, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !427, line: 172, column: 7)
!1536 = !DILocation(line: 172, column: 7, scope: !1526)
!1537 = !DILocation(line: 174, column: 12, scope: !1526)
!1538 = !DILocation(line: 175, column: 8, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1526, file: !427, line: 175, column: 7)
!1540 = !DILocation(line: 175, column: 19, scope: !1539)
!1541 = !DILocation(line: 176, column: 5, scope: !1539)
!1542 = !DILocation(line: 177, column: 6, scope: !1526)
!1543 = !DILocation(line: 177, column: 17, scope: !1526)
!1544 = !{!1474, !748, i64 40}
!1545 = !DILocation(line: 178, column: 6, scope: !1526)
!1546 = !DILocation(line: 178, column: 18, scope: !1526)
!1547 = !{!1474, !748, i64 48}
!1548 = !DILocation(line: 179, column: 1, scope: !1526)
!1549 = !DISubprogram(name: "abort", scope: !932, file: !932, line: 598, type: !358, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1550 = distinct !DISubprogram(name: "quotearg_buffer", scope: !427, file: !427, line: 774, type: !1551, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!94, !239, !94, !70, !94, !1466}
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1554 = !DILocalVariable(name: "buffer", arg: 1, scope: !1550, file: !427, line: 774, type: !239)
!1555 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1550, file: !427, line: 774, type: !94)
!1556 = !DILocalVariable(name: "arg", arg: 3, scope: !1550, file: !427, line: 775, type: !70)
!1557 = !DILocalVariable(name: "argsize", arg: 4, scope: !1550, file: !427, line: 775, type: !94)
!1558 = !DILocalVariable(name: "o", arg: 5, scope: !1550, file: !427, line: 776, type: !1466)
!1559 = !DILocalVariable(name: "p", scope: !1550, file: !427, line: 778, type: !1466)
!1560 = !DILocalVariable(name: "saved_errno", scope: !1550, file: !427, line: 779, type: !92)
!1561 = !DILocalVariable(name: "r", scope: !1550, file: !427, line: 780, type: !94)
!1562 = !DILocation(line: 0, scope: !1550)
!1563 = !DILocation(line: 778, column: 37, scope: !1550)
!1564 = !DILocation(line: 779, column: 21, scope: !1550)
!1565 = !DILocation(line: 781, column: 43, scope: !1550)
!1566 = !DILocation(line: 781, column: 53, scope: !1550)
!1567 = !DILocation(line: 781, column: 63, scope: !1550)
!1568 = !DILocation(line: 782, column: 43, scope: !1550)
!1569 = !DILocation(line: 782, column: 58, scope: !1550)
!1570 = !DILocation(line: 780, column: 14, scope: !1550)
!1571 = !DILocation(line: 783, column: 9, scope: !1550)
!1572 = !DILocation(line: 784, column: 3, scope: !1550)
!1573 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !427, file: !427, line: 251, type: !1574, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1578)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!94, !239, !94, !70, !94, !453, !92, !1576, !70, !70}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1578 = !{!1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1604, !1606, !1609, !1610, !1611, !1612, !1615, !1616, !1618, !1619, !1622, !1626, !1627, !1635, !1638, !1639, !1640}
!1579 = !DILocalVariable(name: "buffer", arg: 1, scope: !1573, file: !427, line: 251, type: !239)
!1580 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1573, file: !427, line: 251, type: !94)
!1581 = !DILocalVariable(name: "arg", arg: 3, scope: !1573, file: !427, line: 252, type: !70)
!1582 = !DILocalVariable(name: "argsize", arg: 4, scope: !1573, file: !427, line: 252, type: !94)
!1583 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1573, file: !427, line: 253, type: !453)
!1584 = !DILocalVariable(name: "flags", arg: 6, scope: !1573, file: !427, line: 253, type: !92)
!1585 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1573, file: !427, line: 254, type: !1576)
!1586 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1573, file: !427, line: 255, type: !70)
!1587 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1573, file: !427, line: 256, type: !70)
!1588 = !DILocalVariable(name: "unibyte_locale", scope: !1573, file: !427, line: 258, type: !218)
!1589 = !DILocalVariable(name: "len", scope: !1573, file: !427, line: 260, type: !94)
!1590 = !DILocalVariable(name: "orig_buffersize", scope: !1573, file: !427, line: 261, type: !94)
!1591 = !DILocalVariable(name: "quote_string", scope: !1573, file: !427, line: 262, type: !70)
!1592 = !DILocalVariable(name: "quote_string_len", scope: !1573, file: !427, line: 263, type: !94)
!1593 = !DILocalVariable(name: "backslash_escapes", scope: !1573, file: !427, line: 264, type: !218)
!1594 = !DILocalVariable(name: "elide_outer_quotes", scope: !1573, file: !427, line: 265, type: !218)
!1595 = !DILocalVariable(name: "encountered_single_quote", scope: !1573, file: !427, line: 266, type: !218)
!1596 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1573, file: !427, line: 267, type: !218)
!1597 = !DILabel(scope: !1573, name: "process_input", file: !427, line: 308)
!1598 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1573, file: !427, line: 309, type: !218)
!1599 = !DILocalVariable(name: "lq", scope: !1600, file: !427, line: 361, type: !70)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !427, line: 361, column: 11)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !427, line: 360, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !427, line: 333, column: 7)
!1603 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 312, column: 5)
!1604 = !DILocalVariable(name: "i", scope: !1605, file: !427, line: 395, type: !94)
!1605 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 395, column: 3)
!1606 = !DILocalVariable(name: "is_right_quote", scope: !1607, file: !427, line: 397, type: !218)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !427, line: 396, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !427, line: 395, column: 3)
!1609 = !DILocalVariable(name: "escaping", scope: !1607, file: !427, line: 398, type: !218)
!1610 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1607, file: !427, line: 399, type: !218)
!1611 = !DILocalVariable(name: "c", scope: !1607, file: !427, line: 417, type: !97)
!1612 = !DILabel(scope: !1613, name: "c_and_shell_escape", file: !427, line: 502)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 478, column: 9)
!1614 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 419, column: 9)
!1615 = !DILabel(scope: !1613, name: "c_escape", file: !427, line: 507)
!1616 = !DILocalVariable(name: "m", scope: !1617, file: !427, line: 598, type: !94)
!1617 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 596, column: 11)
!1618 = !DILocalVariable(name: "printable", scope: !1617, file: !427, line: 600, type: !218)
!1619 = !DILocalVariable(name: "mbs", scope: !1620, file: !427, line: 609, type: !514)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !427, line: 608, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !427, line: 602, column: 17)
!1622 = !DILocalVariable(name: "w", scope: !1623, file: !427, line: 618, type: !407)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !427, line: 617, column: 19)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !427, line: 616, column: 17)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !427, line: 616, column: 17)
!1626 = !DILocalVariable(name: "bytes", scope: !1623, file: !427, line: 619, type: !94)
!1627 = !DILocalVariable(name: "j", scope: !1628, file: !427, line: 648, type: !94)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !427, line: 648, column: 29)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !427, line: 647, column: 27)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !427, line: 645, column: 29)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !427, line: 636, column: 23)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !427, line: 628, column: 30)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !427, line: 623, column: 30)
!1634 = distinct !DILexicalBlock(scope: !1623, file: !427, line: 621, column: 25)
!1635 = !DILocalVariable(name: "ilim", scope: !1636, file: !427, line: 674, type: !94)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !427, line: 671, column: 15)
!1637 = distinct !DILexicalBlock(scope: !1617, file: !427, line: 670, column: 17)
!1638 = !DILabel(scope: !1607, name: "store_escape", file: !427, line: 709)
!1639 = !DILabel(scope: !1607, name: "store_c", file: !427, line: 712)
!1640 = !DILabel(scope: !1573, name: "force_outer_quoting_style", file: !427, line: 753)
!1641 = distinct !DIAssignID()
!1642 = distinct !DIAssignID()
!1643 = distinct !DIAssignID()
!1644 = distinct !DIAssignID()
!1645 = distinct !DIAssignID()
!1646 = !DILocation(line: 0, scope: !1620)
!1647 = distinct !DIAssignID()
!1648 = !DILocation(line: 0, scope: !1623)
!1649 = !DILocation(line: 0, scope: !1573)
!1650 = !DILocation(line: 258, column: 25, scope: !1573)
!1651 = !DILocation(line: 258, column: 36, scope: !1573)
!1652 = !DILocation(line: 265, column: 8, scope: !1573)
!1653 = !DILocation(line: 267, column: 3, scope: !1573)
!1654 = !DILocation(line: 261, column: 10, scope: !1573)
!1655 = !DILocation(line: 262, column: 15, scope: !1573)
!1656 = !DILocation(line: 263, column: 10, scope: !1573)
!1657 = !DILocation(line: 264, column: 8, scope: !1573)
!1658 = !DILocation(line: 266, column: 8, scope: !1573)
!1659 = !DILocation(line: 267, column: 8, scope: !1573)
!1660 = !DILocation(line: 308, column: 2, scope: !1573)
!1661 = !DILocation(line: 311, column: 3, scope: !1573)
!1662 = !DILocation(line: 318, column: 11, scope: !1603)
!1663 = !DILocation(line: 318, column: 12, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1603, file: !427, line: 318, column: 11)
!1665 = !DILocation(line: 319, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !427, line: 319, column: 9)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !427, line: 319, column: 9)
!1668 = !DILocation(line: 319, column: 9, scope: !1667)
!1669 = !DILocation(line: 0, scope: !505, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 357, column: 26, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !427, line: 335, column: 11)
!1672 = distinct !DILexicalBlock(scope: !1602, file: !427, line: 334, column: 13)
!1673 = !DILocation(line: 199, column: 29, scope: !505, inlinedAt: !1670)
!1674 = !DILocation(line: 201, column: 19, scope: !1675, inlinedAt: !1670)
!1675 = distinct !DILexicalBlock(scope: !505, file: !427, line: 201, column: 7)
!1676 = !DILocation(line: 201, column: 7, scope: !505, inlinedAt: !1670)
!1677 = !DILocation(line: 229, column: 3, scope: !505, inlinedAt: !1670)
!1678 = !DILocation(line: 230, column: 3, scope: !505, inlinedAt: !1670)
!1679 = !DILocalVariable(name: "ps", arg: 1, scope: !1680, file: !1420, line: 1135, type: !1683)
!1680 = distinct !DISubprogram(name: "mbszero", scope: !1420, file: !1420, line: 1135, type: !1681, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1684)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!1684 = !{!1679}
!1685 = !DILocation(line: 0, scope: !1680, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 230, column: 18, scope: !505, inlinedAt: !1670)
!1687 = !DILocalVariable(name: "__dest", arg: 1, scope: !1688, file: !1429, line: 57, type: !91)
!1688 = distinct !DISubprogram(name: "memset", scope: !1429, file: !1429, line: 57, type: !1430, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1689)
!1689 = !{!1687, !1690, !1691}
!1690 = !DILocalVariable(name: "__ch", arg: 2, scope: !1688, file: !1429, line: 57, type: !92)
!1691 = !DILocalVariable(name: "__len", arg: 3, scope: !1688, file: !1429, line: 57, type: !94)
!1692 = !DILocation(line: 0, scope: !1688, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1686)
!1694 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1693)
!1695 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1670)
!1696 = distinct !DILexicalBlock(scope: !505, file: !427, line: 231, column: 7)
!1697 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1670)
!1698 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1670)
!1699 = !DILocation(line: 235, column: 1, scope: !505, inlinedAt: !1670)
!1700 = !DILocation(line: 0, scope: !505, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 358, column: 27, scope: !1671)
!1702 = !DILocation(line: 199, column: 29, scope: !505, inlinedAt: !1701)
!1703 = !DILocation(line: 201, column: 19, scope: !1675, inlinedAt: !1701)
!1704 = !DILocation(line: 201, column: 7, scope: !505, inlinedAt: !1701)
!1705 = !DILocation(line: 229, column: 3, scope: !505, inlinedAt: !1701)
!1706 = !DILocation(line: 230, column: 3, scope: !505, inlinedAt: !1701)
!1707 = !DILocation(line: 0, scope: !1680, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 230, column: 18, scope: !505, inlinedAt: !1701)
!1709 = !DILocation(line: 0, scope: !1688, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1708)
!1711 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1710)
!1712 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1701)
!1713 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1701)
!1714 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1701)
!1715 = !DILocation(line: 235, column: 1, scope: !505, inlinedAt: !1701)
!1716 = !DILocation(line: 360, column: 14, scope: !1601)
!1717 = !DILocation(line: 360, column: 13, scope: !1602)
!1718 = !DILocation(line: 0, scope: !1600)
!1719 = !DILocation(line: 361, column: 45, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1600, file: !427, line: 361, column: 11)
!1721 = !DILocation(line: 361, column: 11, scope: !1600)
!1722 = !DILocation(line: 362, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !427, line: 362, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !427, line: 362, column: 13)
!1725 = !DILocation(line: 362, column: 13, scope: !1724)
!1726 = !DILocation(line: 361, column: 52, scope: !1720)
!1727 = distinct !{!1727, !1721, !1728, !855}
!1728 = !DILocation(line: 362, column: 13, scope: !1600)
!1729 = !DILocation(line: 260, column: 10, scope: !1573)
!1730 = !DILocation(line: 365, column: 28, scope: !1602)
!1731 = !DILocation(line: 367, column: 7, scope: !1603)
!1732 = !DILocation(line: 370, column: 7, scope: !1603)
!1733 = !DILocation(line: 373, column: 7, scope: !1603)
!1734 = !DILocation(line: 376, column: 12, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1603, file: !427, line: 376, column: 11)
!1736 = !DILocation(line: 376, column: 11, scope: !1603)
!1737 = !DILocation(line: 381, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1603, file: !427, line: 381, column: 11)
!1739 = !DILocation(line: 381, column: 11, scope: !1603)
!1740 = !DILocation(line: 382, column: 9, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !427, line: 382, column: 9)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !427, line: 382, column: 9)
!1743 = !DILocation(line: 382, column: 9, scope: !1742)
!1744 = !DILocation(line: 389, column: 7, scope: !1603)
!1745 = !DILocation(line: 392, column: 7, scope: !1603)
!1746 = !DILocation(line: 0, scope: !1605)
!1747 = !DILocation(line: 395, column: 8, scope: !1605)
!1748 = !DILocation(line: 309, column: 8, scope: !1573)
!1749 = !DILocation(line: 395, scope: !1605)
!1750 = !DILocation(line: 395, column: 34, scope: !1608)
!1751 = !DILocation(line: 395, column: 26, scope: !1608)
!1752 = !DILocation(line: 395, column: 48, scope: !1608)
!1753 = !DILocation(line: 395, column: 55, scope: !1608)
!1754 = !DILocation(line: 395, column: 3, scope: !1605)
!1755 = !DILocation(line: 395, column: 67, scope: !1608)
!1756 = !DILocation(line: 0, scope: !1607)
!1757 = !DILocation(line: 402, column: 11, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 401, column: 11)
!1759 = !DILocation(line: 404, column: 17, scope: !1758)
!1760 = !DILocation(line: 405, column: 39, scope: !1758)
!1761 = !DILocation(line: 409, column: 32, scope: !1758)
!1762 = !DILocation(line: 405, column: 19, scope: !1758)
!1763 = !DILocation(line: 405, column: 15, scope: !1758)
!1764 = !DILocation(line: 410, column: 11, scope: !1758)
!1765 = !DILocation(line: 410, column: 25, scope: !1758)
!1766 = !DILocalVariable(name: "__s1", arg: 1, scope: !1767, file: !821, line: 974, type: !956)
!1767 = distinct !DISubprogram(name: "memeq", scope: !821, file: !821, line: 974, type: !1389, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1768)
!1768 = !{!1766, !1769, !1770}
!1769 = !DILocalVariable(name: "__s2", arg: 2, scope: !1767, file: !821, line: 974, type: !956)
!1770 = !DILocalVariable(name: "__n", arg: 3, scope: !1767, file: !821, line: 974, type: !94)
!1771 = !DILocation(line: 0, scope: !1767, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 410, column: 14, scope: !1758)
!1773 = !DILocation(line: 976, column: 11, scope: !1767, inlinedAt: !1772)
!1774 = !DILocation(line: 976, column: 10, scope: !1767, inlinedAt: !1772)
!1775 = !DILocation(line: 401, column: 11, scope: !1607)
!1776 = !DILocation(line: 417, column: 25, scope: !1607)
!1777 = !DILocation(line: 418, column: 7, scope: !1607)
!1778 = !DILocation(line: 421, column: 15, scope: !1614)
!1779 = !DILocation(line: 423, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !427, line: 423, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !427, line: 422, column: 13)
!1782 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 421, column: 15)
!1783 = !DILocation(line: 423, column: 15, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !427, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !427, line: 423, column: 15)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !427, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !427, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1787)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !427, line: 423, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1788, file: !427, line: 423, column: 15)
!1793 = !DILocation(line: 423, column: 15, scope: !1792)
!1794 = !DILocation(line: 423, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !427, line: 423, column: 15)
!1796 = distinct !DILexicalBlock(scope: !1788, file: !427, line: 423, column: 15)
!1797 = !DILocation(line: 423, column: 15, scope: !1796)
!1798 = !DILocation(line: 423, column: 15, scope: !1788)
!1799 = !DILocation(line: 423, column: 15, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !427, line: 423, column: 15)
!1801 = distinct !DILexicalBlock(scope: !1780, file: !427, line: 423, column: 15)
!1802 = !DILocation(line: 423, column: 15, scope: !1801)
!1803 = !DILocation(line: 431, column: 19, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1781, file: !427, line: 430, column: 19)
!1805 = !DILocation(line: 431, column: 24, scope: !1804)
!1806 = !DILocation(line: 431, column: 28, scope: !1804)
!1807 = !DILocation(line: 431, column: 38, scope: !1804)
!1808 = !DILocation(line: 431, column: 48, scope: !1804)
!1809 = !DILocation(line: 431, column: 59, scope: !1804)
!1810 = !DILocation(line: 433, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !427, line: 433, column: 19)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !427, line: 433, column: 19)
!1813 = distinct !DILexicalBlock(scope: !1804, file: !427, line: 432, column: 17)
!1814 = !DILocation(line: 433, column: 19, scope: !1812)
!1815 = !DILocation(line: 434, column: 19, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !427, line: 434, column: 19)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !427, line: 434, column: 19)
!1818 = !DILocation(line: 434, column: 19, scope: !1817)
!1819 = !DILocation(line: 435, column: 17, scope: !1813)
!1820 = !DILocation(line: 442, column: 20, scope: !1782)
!1821 = !DILocation(line: 447, column: 11, scope: !1614)
!1822 = !DILocation(line: 450, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 448, column: 13)
!1824 = !DILocation(line: 456, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1823, file: !427, line: 455, column: 19)
!1826 = !DILocation(line: 456, column: 24, scope: !1825)
!1827 = !DILocation(line: 456, column: 28, scope: !1825)
!1828 = !DILocation(line: 456, column: 38, scope: !1825)
!1829 = !DILocation(line: 456, column: 41, scope: !1825)
!1830 = !DILocation(line: 456, column: 52, scope: !1825)
!1831 = !DILocation(line: 455, column: 19, scope: !1823)
!1832 = !DILocation(line: 457, column: 25, scope: !1825)
!1833 = !DILocation(line: 457, column: 17, scope: !1825)
!1834 = !DILocation(line: 464, column: 25, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !427, line: 458, column: 19)
!1836 = !DILocation(line: 468, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !427, line: 468, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !427, line: 468, column: 21)
!1839 = !DILocation(line: 468, column: 21, scope: !1838)
!1840 = !DILocation(line: 469, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !427, line: 469, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1835, file: !427, line: 469, column: 21)
!1843 = !DILocation(line: 469, column: 21, scope: !1842)
!1844 = !DILocation(line: 470, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !427, line: 470, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1835, file: !427, line: 470, column: 21)
!1847 = !DILocation(line: 470, column: 21, scope: !1846)
!1848 = !DILocation(line: 471, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !427, line: 471, column: 21)
!1850 = distinct !DILexicalBlock(scope: !1835, file: !427, line: 471, column: 21)
!1851 = !DILocation(line: 471, column: 21, scope: !1850)
!1852 = !DILocation(line: 472, column: 21, scope: !1835)
!1853 = !DILocation(line: 482, column: 33, scope: !1613)
!1854 = !DILocation(line: 483, column: 33, scope: !1613)
!1855 = !DILocation(line: 485, column: 33, scope: !1613)
!1856 = !DILocation(line: 486, column: 33, scope: !1613)
!1857 = !DILocation(line: 487, column: 33, scope: !1613)
!1858 = !DILocation(line: 490, column: 17, scope: !1613)
!1859 = !DILocation(line: 492, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !427, line: 491, column: 15)
!1861 = distinct !DILexicalBlock(scope: !1613, file: !427, line: 490, column: 17)
!1862 = !DILocation(line: 499, column: 35, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1613, file: !427, line: 499, column: 17)
!1864 = !DILocation(line: 499, column: 57, scope: !1863)
!1865 = !DILocation(line: 0, scope: !1613)
!1866 = !DILocation(line: 502, column: 11, scope: !1613)
!1867 = !DILocation(line: 504, column: 17, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1613, file: !427, line: 503, column: 17)
!1869 = !DILocation(line: 507, column: 11, scope: !1613)
!1870 = !DILocation(line: 508, column: 17, scope: !1613)
!1871 = !DILocation(line: 517, column: 15, scope: !1614)
!1872 = !DILocation(line: 517, column: 40, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 517, column: 15)
!1874 = !DILocation(line: 517, column: 47, scope: !1873)
!1875 = !DILocation(line: 517, column: 18, scope: !1873)
!1876 = !DILocation(line: 521, column: 17, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 521, column: 15)
!1878 = !DILocation(line: 521, column: 15, scope: !1614)
!1879 = !DILocation(line: 525, column: 11, scope: !1614)
!1880 = !DILocation(line: 537, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 536, column: 15)
!1882 = !DILocation(line: 544, column: 15, scope: !1614)
!1883 = !DILocation(line: 546, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !427, line: 545, column: 13)
!1885 = distinct !DILexicalBlock(scope: !1614, file: !427, line: 544, column: 15)
!1886 = !DILocation(line: 549, column: 19, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1884, file: !427, line: 549, column: 19)
!1888 = !DILocation(line: 549, column: 30, scope: !1887)
!1889 = !DILocation(line: 558, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !427, line: 558, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1884, file: !427, line: 558, column: 15)
!1892 = !DILocation(line: 558, column: 15, scope: !1891)
!1893 = !DILocation(line: 559, column: 15, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !427, line: 559, column: 15)
!1895 = distinct !DILexicalBlock(scope: !1884, file: !427, line: 559, column: 15)
!1896 = !DILocation(line: 559, column: 15, scope: !1895)
!1897 = !DILocation(line: 560, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !427, line: 560, column: 15)
!1899 = distinct !DILexicalBlock(scope: !1884, file: !427, line: 560, column: 15)
!1900 = !DILocation(line: 560, column: 15, scope: !1899)
!1901 = !DILocation(line: 562, column: 13, scope: !1884)
!1902 = !DILocation(line: 602, column: 17, scope: !1617)
!1903 = !DILocation(line: 0, scope: !1617)
!1904 = !DILocation(line: 605, column: 29, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1621, file: !427, line: 603, column: 15)
!1906 = !DILocation(line: 605, column: 27, scope: !1905)
!1907 = !DILocation(line: 606, column: 15, scope: !1905)
!1908 = !DILocation(line: 609, column: 17, scope: !1620)
!1909 = !DILocation(line: 0, scope: !1680, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 609, column: 32, scope: !1620)
!1911 = !DILocation(line: 0, scope: !1688, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1910)
!1913 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1912)
!1914 = !DILocation(line: 613, column: 29, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1620, file: !427, line: 613, column: 21)
!1916 = !DILocation(line: 613, column: 21, scope: !1620)
!1917 = !DILocation(line: 614, column: 29, scope: !1915)
!1918 = !DILocation(line: 614, column: 19, scope: !1915)
!1919 = !DILocation(line: 618, column: 21, scope: !1623)
!1920 = !DILocation(line: 620, column: 54, scope: !1623)
!1921 = !DILocation(line: 619, column: 36, scope: !1623)
!1922 = !DILocation(line: 621, column: 25, scope: !1623)
!1923 = !DILocation(line: 631, column: 38, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1632, file: !427, line: 629, column: 23)
!1925 = !DILocation(line: 631, column: 48, scope: !1924)
!1926 = !DILocation(line: 626, column: 25, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1633, file: !427, line: 624, column: 23)
!1928 = !DILocation(line: 631, column: 51, scope: !1924)
!1929 = !DILocation(line: 631, column: 25, scope: !1924)
!1930 = !DILocation(line: 632, column: 28, scope: !1924)
!1931 = !DILocation(line: 631, column: 34, scope: !1924)
!1932 = distinct !{!1932, !1929, !1930, !855}
!1933 = !DILocation(line: 0, scope: !1628)
!1934 = !DILocation(line: 646, column: 29, scope: !1630)
!1935 = !DILocation(line: 649, column: 39, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1628, file: !427, line: 648, column: 29)
!1937 = !DILocation(line: 649, column: 31, scope: !1936)
!1938 = !DILocation(line: 648, column: 60, scope: !1936)
!1939 = !DILocation(line: 648, column: 50, scope: !1936)
!1940 = !DILocation(line: 648, column: 29, scope: !1628)
!1941 = distinct !{!1941, !1940, !1942, !855}
!1942 = !DILocation(line: 654, column: 33, scope: !1628)
!1943 = !DILocation(line: 657, column: 43, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1631, file: !427, line: 657, column: 29)
!1945 = !DILocalVariable(name: "wc", arg: 1, scope: !1946, file: !1947, line: 865, type: !1950)
!1946 = distinct !DISubprogram(name: "c32isprint", scope: !1947, file: !1947, line: 865, type: !1948, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !1952)
!1947 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!92, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1951, line: 20, baseType: !76)
!1951 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1952 = !{!1945}
!1953 = !DILocation(line: 0, scope: !1946, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 657, column: 31, scope: !1944)
!1955 = !DILocation(line: 871, column: 10, scope: !1946, inlinedAt: !1954)
!1956 = !DILocation(line: 657, column: 31, scope: !1944)
!1957 = !DILocation(line: 664, column: 23, scope: !1623)
!1958 = !DILocation(line: 665, column: 19, scope: !1624)
!1959 = !DILocation(line: 666, column: 15, scope: !1621)
!1960 = !DILocation(line: 0, scope: !1621)
!1961 = !DILocation(line: 670, column: 19, scope: !1637)
!1962 = !DILocation(line: 670, column: 23, scope: !1637)
!1963 = !DILocation(line: 674, column: 33, scope: !1636)
!1964 = !DILocation(line: 0, scope: !1636)
!1965 = !DILocation(line: 676, column: 17, scope: !1636)
!1966 = !DILocation(line: 398, column: 12, scope: !1607)
!1967 = !DILocation(line: 678, column: 43, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !427, line: 678, column: 25)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !427, line: 677, column: 19)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !427, line: 676, column: 17)
!1971 = distinct !DILexicalBlock(scope: !1636, file: !427, line: 676, column: 17)
!1972 = !DILocation(line: 680, column: 25, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !427, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1968, file: !427, line: 679, column: 23)
!1975 = !DILocation(line: 680, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !427, line: 680, column: 25)
!1977 = !DILocation(line: 680, column: 25, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !427, line: 680, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !427, line: 680, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !427, line: 680, column: 25)
!1981 = !DILocation(line: 680, column: 25, scope: !1979)
!1982 = !DILocation(line: 680, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !427, line: 680, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !427, line: 680, column: 25)
!1985 = !DILocation(line: 680, column: 25, scope: !1984)
!1986 = !DILocation(line: 680, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !427, line: 680, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1980, file: !427, line: 680, column: 25)
!1989 = !DILocation(line: 680, column: 25, scope: !1988)
!1990 = !DILocation(line: 680, column: 25, scope: !1980)
!1991 = !DILocation(line: 680, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !427, line: 680, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1973, file: !427, line: 680, column: 25)
!1994 = !DILocation(line: 680, column: 25, scope: !1993)
!1995 = !DILocation(line: 681, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !427, line: 681, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1974, file: !427, line: 681, column: 25)
!1998 = !DILocation(line: 681, column: 25, scope: !1997)
!1999 = !DILocation(line: 682, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !427, line: 682, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1974, file: !427, line: 682, column: 25)
!2002 = !DILocation(line: 682, column: 25, scope: !2001)
!2003 = !DILocation(line: 683, column: 38, scope: !1974)
!2004 = !DILocation(line: 683, column: 33, scope: !1974)
!2005 = !DILocation(line: 684, column: 23, scope: !1974)
!2006 = !DILocation(line: 685, column: 30, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1968, file: !427, line: 685, column: 30)
!2008 = !DILocation(line: 685, column: 30, scope: !1968)
!2009 = !DILocation(line: 687, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !427, line: 687, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !427, line: 687, column: 25)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !427, line: 686, column: 23)
!2013 = !DILocation(line: 687, column: 25, scope: !2011)
!2014 = !DILocation(line: 689, column: 23, scope: !2012)
!2015 = !DILocation(line: 690, column: 35, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1969, file: !427, line: 690, column: 25)
!2017 = !DILocation(line: 690, column: 30, scope: !2016)
!2018 = !DILocation(line: 690, column: 25, scope: !1969)
!2019 = !DILocation(line: 692, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !427, line: 692, column: 21)
!2021 = distinct !DILexicalBlock(scope: !1969, file: !427, line: 692, column: 21)
!2022 = !DILocation(line: 692, column: 21, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !427, line: 692, column: 21)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !427, line: 692, column: 21)
!2025 = distinct !DILexicalBlock(scope: !2020, file: !427, line: 692, column: 21)
!2026 = !DILocation(line: 692, column: 21, scope: !2024)
!2027 = !DILocation(line: 692, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !427, line: 692, column: 21)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !427, line: 692, column: 21)
!2030 = !DILocation(line: 692, column: 21, scope: !2029)
!2031 = !DILocation(line: 692, column: 21, scope: !2025)
!2032 = !DILocation(line: 0, scope: !1969)
!2033 = !DILocation(line: 693, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !427, line: 693, column: 21)
!2035 = distinct !DILexicalBlock(scope: !1969, file: !427, line: 693, column: 21)
!2036 = !DILocation(line: 693, column: 21, scope: !2035)
!2037 = !DILocation(line: 694, column: 25, scope: !1969)
!2038 = !DILocation(line: 676, column: 17, scope: !1970)
!2039 = distinct !{!2039, !2040, !2041}
!2040 = !DILocation(line: 676, column: 17, scope: !1971)
!2041 = !DILocation(line: 695, column: 19, scope: !1971)
!2042 = !DILocation(line: 409, column: 30, scope: !1758)
!2043 = !DILocation(line: 702, column: 34, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 702, column: 11)
!2045 = !DILocation(line: 704, column: 14, scope: !2044)
!2046 = !DILocation(line: 705, column: 14, scope: !2044)
!2047 = !DILocation(line: 705, column: 35, scope: !2044)
!2048 = !DILocation(line: 705, column: 17, scope: !2044)
!2049 = !DILocation(line: 705, column: 47, scope: !2044)
!2050 = !DILocation(line: 705, column: 65, scope: !2044)
!2051 = !DILocation(line: 706, column: 11, scope: !2044)
!2052 = !DILocation(line: 702, column: 11, scope: !1607)
!2053 = !DILocation(line: 395, column: 15, scope: !1605)
!2054 = !DILocation(line: 709, column: 5, scope: !1607)
!2055 = !DILocation(line: 710, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 710, column: 7)
!2057 = !DILocation(line: 710, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2056, file: !427, line: 710, column: 7)
!2059 = !DILocation(line: 710, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !427, line: 710, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !427, line: 710, column: 7)
!2062 = distinct !DILexicalBlock(scope: !2058, file: !427, line: 710, column: 7)
!2063 = !DILocation(line: 710, column: 7, scope: !2061)
!2064 = !DILocation(line: 710, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !427, line: 710, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !427, line: 710, column: 7)
!2067 = !DILocation(line: 710, column: 7, scope: !2066)
!2068 = !DILocation(line: 710, column: 7, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !427, line: 710, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2062, file: !427, line: 710, column: 7)
!2071 = !DILocation(line: 710, column: 7, scope: !2070)
!2072 = !DILocation(line: 710, column: 7, scope: !2062)
!2073 = !DILocation(line: 710, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !427, line: 710, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2056, file: !427, line: 710, column: 7)
!2076 = !DILocation(line: 710, column: 7, scope: !2075)
!2077 = !DILocation(line: 712, column: 5, scope: !1607)
!2078 = !DILocation(line: 713, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !427, line: 713, column: 7)
!2080 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 713, column: 7)
!2081 = !DILocation(line: 417, column: 21, scope: !1607)
!2082 = !DILocation(line: 713, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !427, line: 713, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !427, line: 713, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !427, line: 713, column: 7)
!2086 = !DILocation(line: 713, column: 7, scope: !2084)
!2087 = !DILocation(line: 713, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !427, line: 713, column: 7)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !427, line: 713, column: 7)
!2090 = !DILocation(line: 713, column: 7, scope: !2089)
!2091 = !DILocation(line: 713, column: 7, scope: !2085)
!2092 = !DILocation(line: 714, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !427, line: 714, column: 7)
!2094 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 714, column: 7)
!2095 = !DILocation(line: 714, column: 7, scope: !2094)
!2096 = !DILocation(line: 716, column: 13, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1607, file: !427, line: 716, column: 11)
!2098 = !DILocation(line: 716, column: 11, scope: !1607)
!2099 = !DILocation(line: 718, column: 5, scope: !1608)
!2100 = !DILocation(line: 395, column: 82, scope: !1608)
!2101 = !DILocation(line: 395, column: 3, scope: !1608)
!2102 = distinct !{!2102, !1754, !2103, !855}
!2103 = !DILocation(line: 718, column: 5, scope: !1605)
!2104 = !DILocation(line: 720, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 720, column: 7)
!2106 = !DILocation(line: 720, column: 16, scope: !2105)
!2107 = !DILocation(line: 728, column: 51, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 728, column: 7)
!2109 = !DILocation(line: 731, column: 11, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !427, line: 731, column: 11)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !427, line: 730, column: 5)
!2112 = !DILocation(line: 731, column: 11, scope: !2111)
!2113 = !DILocation(line: 732, column: 16, scope: !2110)
!2114 = !DILocation(line: 732, column: 9, scope: !2110)
!2115 = !DILocation(line: 736, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !427, line: 736, column: 16)
!2117 = !DILocation(line: 736, column: 29, scope: !2116)
!2118 = !DILocation(line: 745, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 745, column: 7)
!2120 = !DILocation(line: 745, column: 20, scope: !2119)
!2121 = !DILocation(line: 746, column: 12, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !427, line: 746, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !427, line: 746, column: 5)
!2124 = !DILocation(line: 746, column: 5, scope: !2123)
!2125 = !DILocation(line: 747, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !427, line: 747, column: 7)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !427, line: 747, column: 7)
!2128 = !DILocation(line: 747, column: 7, scope: !2127)
!2129 = !DILocation(line: 746, column: 39, scope: !2122)
!2130 = distinct !{!2130, !2124, !2131, !855}
!2131 = !DILocation(line: 747, column: 7, scope: !2123)
!2132 = !DILocation(line: 749, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 749, column: 7)
!2134 = !DILocation(line: 749, column: 7, scope: !1573)
!2135 = !DILocation(line: 750, column: 5, scope: !2133)
!2136 = !DILocation(line: 750, column: 17, scope: !2133)
!2137 = !DILocation(line: 753, column: 2, scope: !1573)
!2138 = !DILocation(line: 756, column: 51, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1573, file: !427, line: 756, column: 7)
!2140 = !DILocation(line: 756, column: 21, scope: !2139)
!2141 = !DILocation(line: 760, column: 42, scope: !1573)
!2142 = !DILocation(line: 758, column: 10, scope: !1573)
!2143 = !DILocation(line: 758, column: 3, scope: !1573)
!2144 = !DILocation(line: 762, column: 1, scope: !1573)
!2145 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !932, file: !932, line: 98, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!94}
!2148 = !DISubprogram(name: "strlen", scope: !928, file: !928, line: 407, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!96, !70}
!2151 = !DISubprogram(name: "iswprint", scope: !2152, file: !2152, line: 120, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2153 = distinct !DISubprogram(name: "quotearg_alloc", scope: !427, file: !427, line: 788, type: !2154, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2156)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!239, !70, !94, !1466}
!2156 = !{!2157, !2158, !2159}
!2157 = !DILocalVariable(name: "arg", arg: 1, scope: !2153, file: !427, line: 788, type: !70)
!2158 = !DILocalVariable(name: "argsize", arg: 2, scope: !2153, file: !427, line: 788, type: !94)
!2159 = !DILocalVariable(name: "o", arg: 3, scope: !2153, file: !427, line: 789, type: !1466)
!2160 = !DILocation(line: 0, scope: !2153)
!2161 = !DILocalVariable(name: "arg", arg: 1, scope: !2162, file: !427, line: 801, type: !70)
!2162 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !427, file: !427, line: 801, type: !2163, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!239, !70, !94, !680, !1466}
!2165 = !{!2161, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2166 = !DILocalVariable(name: "argsize", arg: 2, scope: !2162, file: !427, line: 801, type: !94)
!2167 = !DILocalVariable(name: "size", arg: 3, scope: !2162, file: !427, line: 801, type: !680)
!2168 = !DILocalVariable(name: "o", arg: 4, scope: !2162, file: !427, line: 802, type: !1466)
!2169 = !DILocalVariable(name: "p", scope: !2162, file: !427, line: 804, type: !1466)
!2170 = !DILocalVariable(name: "saved_errno", scope: !2162, file: !427, line: 805, type: !92)
!2171 = !DILocalVariable(name: "flags", scope: !2162, file: !427, line: 807, type: !92)
!2172 = !DILocalVariable(name: "bufsize", scope: !2162, file: !427, line: 808, type: !94)
!2173 = !DILocalVariable(name: "buf", scope: !2162, file: !427, line: 812, type: !239)
!2174 = !DILocation(line: 0, scope: !2162, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 791, column: 10, scope: !2153)
!2176 = !DILocation(line: 804, column: 37, scope: !2162, inlinedAt: !2175)
!2177 = !DILocation(line: 805, column: 21, scope: !2162, inlinedAt: !2175)
!2178 = !DILocation(line: 807, column: 18, scope: !2162, inlinedAt: !2175)
!2179 = !DILocation(line: 807, column: 24, scope: !2162, inlinedAt: !2175)
!2180 = !DILocation(line: 808, column: 72, scope: !2162, inlinedAt: !2175)
!2181 = !DILocation(line: 809, column: 56, scope: !2162, inlinedAt: !2175)
!2182 = !DILocation(line: 810, column: 49, scope: !2162, inlinedAt: !2175)
!2183 = !DILocation(line: 811, column: 49, scope: !2162, inlinedAt: !2175)
!2184 = !DILocation(line: 808, column: 20, scope: !2162, inlinedAt: !2175)
!2185 = !DILocation(line: 811, column: 62, scope: !2162, inlinedAt: !2175)
!2186 = !DILocation(line: 812, column: 15, scope: !2162, inlinedAt: !2175)
!2187 = !DILocation(line: 813, column: 60, scope: !2162, inlinedAt: !2175)
!2188 = !DILocation(line: 815, column: 32, scope: !2162, inlinedAt: !2175)
!2189 = !DILocation(line: 815, column: 47, scope: !2162, inlinedAt: !2175)
!2190 = !DILocation(line: 813, column: 3, scope: !2162, inlinedAt: !2175)
!2191 = !DILocation(line: 816, column: 9, scope: !2162, inlinedAt: !2175)
!2192 = !DILocation(line: 791, column: 3, scope: !2153)
!2193 = !DILocation(line: 0, scope: !2162)
!2194 = !DILocation(line: 804, column: 37, scope: !2162)
!2195 = !DILocation(line: 805, column: 21, scope: !2162)
!2196 = !DILocation(line: 807, column: 18, scope: !2162)
!2197 = !DILocation(line: 807, column: 27, scope: !2162)
!2198 = !DILocation(line: 807, column: 24, scope: !2162)
!2199 = !DILocation(line: 808, column: 72, scope: !2162)
!2200 = !DILocation(line: 809, column: 56, scope: !2162)
!2201 = !DILocation(line: 810, column: 49, scope: !2162)
!2202 = !DILocation(line: 811, column: 49, scope: !2162)
!2203 = !DILocation(line: 808, column: 20, scope: !2162)
!2204 = !DILocation(line: 811, column: 62, scope: !2162)
!2205 = !DILocation(line: 812, column: 15, scope: !2162)
!2206 = !DILocation(line: 813, column: 60, scope: !2162)
!2207 = !DILocation(line: 815, column: 32, scope: !2162)
!2208 = !DILocation(line: 815, column: 47, scope: !2162)
!2209 = !DILocation(line: 813, column: 3, scope: !2162)
!2210 = !DILocation(line: 816, column: 9, scope: !2162)
!2211 = !DILocation(line: 817, column: 7, scope: !2162)
!2212 = !DILocation(line: 818, column: 11, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2162, file: !427, line: 817, column: 7)
!2214 = !{!1184, !1184, i64 0}
!2215 = !DILocation(line: 818, column: 5, scope: !2213)
!2216 = !DILocation(line: 819, column: 3, scope: !2162)
!2217 = distinct !DISubprogram(name: "quotearg_free", scope: !427, file: !427, line: 837, type: !358, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2218)
!2218 = !{!2219, !2220}
!2219 = !DILocalVariable(name: "sv", scope: !2217, file: !427, line: 839, type: !528)
!2220 = !DILocalVariable(name: "i", scope: !2221, file: !427, line: 840, type: !92)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !427, line: 840, column: 3)
!2222 = !DILocation(line: 839, column: 24, scope: !2217)
!2223 = !DILocation(line: 0, scope: !2217)
!2224 = !DILocation(line: 0, scope: !2221)
!2225 = !DILocation(line: 840, column: 21, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !427, line: 840, column: 3)
!2227 = !DILocation(line: 840, column: 3, scope: !2221)
!2228 = !DILocation(line: 842, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2217, file: !427, line: 842, column: 7)
!2230 = !{!2231, !748, i64 8}
!2231 = !{!"slotvec", !1184, i64 0, !748, i64 8}
!2232 = !DILocation(line: 842, column: 17, scope: !2229)
!2233 = !DILocation(line: 842, column: 7, scope: !2217)
!2234 = !DILocation(line: 841, column: 17, scope: !2226)
!2235 = !DILocation(line: 841, column: 5, scope: !2226)
!2236 = !DILocation(line: 840, column: 32, scope: !2226)
!2237 = distinct !{!2237, !2227, !2238, !855}
!2238 = !DILocation(line: 841, column: 20, scope: !2221)
!2239 = !DILocation(line: 844, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2229, file: !427, line: 843, column: 5)
!2241 = !DILocation(line: 845, column: 21, scope: !2240)
!2242 = !{!2231, !1184, i64 0}
!2243 = !DILocation(line: 846, column: 20, scope: !2240)
!2244 = !DILocation(line: 847, column: 5, scope: !2240)
!2245 = !DILocation(line: 848, column: 10, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2217, file: !427, line: 848, column: 7)
!2247 = !DILocation(line: 848, column: 7, scope: !2217)
!2248 = !DILocation(line: 850, column: 7, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !427, line: 849, column: 5)
!2250 = !DILocation(line: 851, column: 15, scope: !2249)
!2251 = !DILocation(line: 852, column: 5, scope: !2249)
!2252 = !DILocation(line: 853, column: 10, scope: !2217)
!2253 = !DILocation(line: 854, column: 1, scope: !2217)
!2254 = !DISubprogram(name: "free", scope: !1420, file: !1420, line: 786, type: !2255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !91}
!2257 = distinct !DISubprogram(name: "quotearg_n", scope: !427, file: !427, line: 919, type: !925, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2258)
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "n", arg: 1, scope: !2257, file: !427, line: 919, type: !92)
!2260 = !DILocalVariable(name: "arg", arg: 2, scope: !2257, file: !427, line: 919, type: !70)
!2261 = !DILocation(line: 0, scope: !2257)
!2262 = !DILocation(line: 921, column: 10, scope: !2257)
!2263 = !DILocation(line: 921, column: 3, scope: !2257)
!2264 = distinct !DISubprogram(name: "quotearg_n_options", scope: !427, file: !427, line: 866, type: !2265, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!239, !92, !70, !94, !1466}
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2278, !2279, !2281, !2282, !2283}
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2264, file: !427, line: 866, type: !92)
!2269 = !DILocalVariable(name: "arg", arg: 2, scope: !2264, file: !427, line: 866, type: !70)
!2270 = !DILocalVariable(name: "argsize", arg: 3, scope: !2264, file: !427, line: 866, type: !94)
!2271 = !DILocalVariable(name: "options", arg: 4, scope: !2264, file: !427, line: 867, type: !1466)
!2272 = !DILocalVariable(name: "saved_errno", scope: !2264, file: !427, line: 869, type: !92)
!2273 = !DILocalVariable(name: "sv", scope: !2264, file: !427, line: 871, type: !528)
!2274 = !DILocalVariable(name: "nslots_max", scope: !2264, file: !427, line: 873, type: !92)
!2275 = !DILocalVariable(name: "preallocated", scope: !2276, file: !427, line: 879, type: !218)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !427, line: 878, column: 5)
!2277 = distinct !DILexicalBlock(scope: !2264, file: !427, line: 877, column: 7)
!2278 = !DILocalVariable(name: "new_nslots", scope: !2276, file: !427, line: 880, type: !693)
!2279 = !DILocalVariable(name: "size", scope: !2280, file: !427, line: 891, type: !94)
!2280 = distinct !DILexicalBlock(scope: !2264, file: !427, line: 890, column: 3)
!2281 = !DILocalVariable(name: "val", scope: !2280, file: !427, line: 892, type: !239)
!2282 = !DILocalVariable(name: "flags", scope: !2280, file: !427, line: 894, type: !92)
!2283 = !DILocalVariable(name: "qsize", scope: !2280, file: !427, line: 895, type: !94)
!2284 = distinct !DIAssignID()
!2285 = !DILocation(line: 0, scope: !2276)
!2286 = !DILocation(line: 0, scope: !2264)
!2287 = !DILocation(line: 869, column: 21, scope: !2264)
!2288 = !DILocation(line: 871, column: 24, scope: !2264)
!2289 = !DILocation(line: 874, column: 17, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2264, file: !427, line: 874, column: 7)
!2291 = !DILocation(line: 875, column: 5, scope: !2290)
!2292 = !DILocation(line: 877, column: 7, scope: !2277)
!2293 = !DILocation(line: 877, column: 14, scope: !2277)
!2294 = !DILocation(line: 877, column: 7, scope: !2264)
!2295 = !DILocation(line: 879, column: 31, scope: !2276)
!2296 = !DILocation(line: 880, column: 7, scope: !2276)
!2297 = !DILocation(line: 880, column: 26, scope: !2276)
!2298 = !DILocation(line: 880, column: 13, scope: !2276)
!2299 = distinct !DIAssignID()
!2300 = !DILocation(line: 882, column: 31, scope: !2276)
!2301 = !DILocation(line: 883, column: 33, scope: !2276)
!2302 = !DILocation(line: 883, column: 42, scope: !2276)
!2303 = !DILocation(line: 883, column: 31, scope: !2276)
!2304 = !DILocation(line: 882, column: 22, scope: !2276)
!2305 = !DILocation(line: 882, column: 15, scope: !2276)
!2306 = !DILocation(line: 884, column: 11, scope: !2276)
!2307 = !DILocation(line: 885, column: 15, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2276, file: !427, line: 884, column: 11)
!2309 = !{i64 0, i64 8, !2214, i64 8, i64 8, !747}
!2310 = !DILocation(line: 885, column: 9, scope: !2308)
!2311 = !DILocation(line: 886, column: 20, scope: !2276)
!2312 = !DILocation(line: 886, column: 18, scope: !2276)
!2313 = !DILocation(line: 886, column: 32, scope: !2276)
!2314 = !DILocation(line: 886, column: 43, scope: !2276)
!2315 = !DILocation(line: 886, column: 53, scope: !2276)
!2316 = !DILocation(line: 0, scope: !1688, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 886, column: 7, scope: !2276)
!2318 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !2317)
!2319 = !DILocation(line: 887, column: 16, scope: !2276)
!2320 = !DILocation(line: 887, column: 14, scope: !2276)
!2321 = !DILocation(line: 888, column: 5, scope: !2277)
!2322 = !DILocation(line: 888, column: 5, scope: !2276)
!2323 = !DILocation(line: 891, column: 19, scope: !2280)
!2324 = !DILocation(line: 891, column: 25, scope: !2280)
!2325 = !DILocation(line: 0, scope: !2280)
!2326 = !DILocation(line: 892, column: 23, scope: !2280)
!2327 = !DILocation(line: 894, column: 26, scope: !2280)
!2328 = !DILocation(line: 894, column: 32, scope: !2280)
!2329 = !DILocation(line: 896, column: 55, scope: !2280)
!2330 = !DILocation(line: 897, column: 55, scope: !2280)
!2331 = !DILocation(line: 898, column: 55, scope: !2280)
!2332 = !DILocation(line: 899, column: 55, scope: !2280)
!2333 = !DILocation(line: 895, column: 20, scope: !2280)
!2334 = !DILocation(line: 901, column: 14, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2280, file: !427, line: 901, column: 9)
!2336 = !DILocation(line: 901, column: 9, scope: !2280)
!2337 = !DILocation(line: 903, column: 35, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !427, line: 902, column: 7)
!2339 = !DILocation(line: 903, column: 20, scope: !2338)
!2340 = !DILocation(line: 904, column: 17, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !427, line: 904, column: 13)
!2342 = !DILocation(line: 904, column: 13, scope: !2338)
!2343 = !DILocation(line: 905, column: 11, scope: !2341)
!2344 = !DILocation(line: 906, column: 27, scope: !2338)
!2345 = !DILocation(line: 906, column: 19, scope: !2338)
!2346 = !DILocation(line: 907, column: 69, scope: !2338)
!2347 = !DILocation(line: 909, column: 44, scope: !2338)
!2348 = !DILocation(line: 910, column: 44, scope: !2338)
!2349 = !DILocation(line: 907, column: 9, scope: !2338)
!2350 = !DILocation(line: 911, column: 7, scope: !2338)
!2351 = !DILocation(line: 913, column: 11, scope: !2280)
!2352 = !DILocation(line: 914, column: 5, scope: !2280)
!2353 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !427, file: !427, line: 925, type: !2354, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!239, !92, !70, !94}
!2356 = !{!2357, !2358, !2359}
!2357 = !DILocalVariable(name: "n", arg: 1, scope: !2353, file: !427, line: 925, type: !92)
!2358 = !DILocalVariable(name: "arg", arg: 2, scope: !2353, file: !427, line: 925, type: !70)
!2359 = !DILocalVariable(name: "argsize", arg: 3, scope: !2353, file: !427, line: 925, type: !94)
!2360 = !DILocation(line: 0, scope: !2353)
!2361 = !DILocation(line: 927, column: 10, scope: !2353)
!2362 = !DILocation(line: 927, column: 3, scope: !2353)
!2363 = distinct !DISubprogram(name: "quotearg", scope: !427, file: !427, line: 931, type: !934, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2363, file: !427, line: 931, type: !70)
!2366 = !DILocation(line: 0, scope: !2363)
!2367 = !DILocation(line: 0, scope: !2257, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 933, column: 10, scope: !2363)
!2369 = !DILocation(line: 921, column: 10, scope: !2257, inlinedAt: !2368)
!2370 = !DILocation(line: 933, column: 3, scope: !2363)
!2371 = distinct !DISubprogram(name: "quotearg_mem", scope: !427, file: !427, line: 937, type: !2372, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!239, !70, !94}
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !427, line: 937, type: !70)
!2376 = !DILocalVariable(name: "argsize", arg: 2, scope: !2371, file: !427, line: 937, type: !94)
!2377 = !DILocation(line: 0, scope: !2371)
!2378 = !DILocation(line: 0, scope: !2353, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 939, column: 10, scope: !2371)
!2380 = !DILocation(line: 927, column: 10, scope: !2353, inlinedAt: !2379)
!2381 = !DILocation(line: 939, column: 3, scope: !2371)
!2382 = distinct !DISubprogram(name: "quotearg_n_style", scope: !427, file: !427, line: 943, type: !2383, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!239, !92, !453, !70}
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !427, line: 943, type: !92)
!2387 = !DILocalVariable(name: "s", arg: 2, scope: !2382, file: !427, line: 943, type: !453)
!2388 = !DILocalVariable(name: "arg", arg: 3, scope: !2382, file: !427, line: 943, type: !70)
!2389 = !DILocalVariable(name: "o", scope: !2382, file: !427, line: 945, type: !1467)
!2390 = distinct !DIAssignID()
!2391 = !DILocation(line: 0, scope: !2382)
!2392 = !DILocation(line: 945, column: 3, scope: !2382)
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"quoting_options_from_style: argument 0"}
!2395 = distinct !{!2395, !"quoting_options_from_style"}
!2396 = !DILocation(line: 945, column: 36, scope: !2382)
!2397 = !DILocalVariable(name: "style", arg: 1, scope: !2398, file: !427, line: 183, type: !453)
!2398 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !427, file: !427, line: 183, type: !2399, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!480, !453}
!2401 = !{!2397, !2402}
!2402 = !DILocalVariable(name: "o", scope: !2398, file: !427, line: 185, type: !480)
!2403 = !DILocation(line: 0, scope: !2398, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 945, column: 36, scope: !2382)
!2405 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2404)
!2406 = distinct !DIAssignID()
!2407 = !DILocation(line: 186, column: 13, scope: !2408, inlinedAt: !2404)
!2408 = distinct !DILexicalBlock(scope: !2398, file: !427, line: 186, column: 7)
!2409 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2404)
!2410 = !DILocation(line: 187, column: 5, scope: !2408, inlinedAt: !2404)
!2411 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2404)
!2412 = distinct !DIAssignID()
!2413 = !DILocation(line: 946, column: 10, scope: !2382)
!2414 = !DILocation(line: 947, column: 1, scope: !2382)
!2415 = !DILocation(line: 946, column: 3, scope: !2382)
!2416 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !427, file: !427, line: 950, type: !2417, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!239, !92, !453, !70, !94}
!2419 = !{!2420, !2421, !2422, !2423, !2424}
!2420 = !DILocalVariable(name: "n", arg: 1, scope: !2416, file: !427, line: 950, type: !92)
!2421 = !DILocalVariable(name: "s", arg: 2, scope: !2416, file: !427, line: 950, type: !453)
!2422 = !DILocalVariable(name: "arg", arg: 3, scope: !2416, file: !427, line: 951, type: !70)
!2423 = !DILocalVariable(name: "argsize", arg: 4, scope: !2416, file: !427, line: 951, type: !94)
!2424 = !DILocalVariable(name: "o", scope: !2416, file: !427, line: 953, type: !1467)
!2425 = distinct !DIAssignID()
!2426 = !DILocation(line: 0, scope: !2416)
!2427 = !DILocation(line: 953, column: 3, scope: !2416)
!2428 = !{!2429}
!2429 = distinct !{!2429, !2430, !"quoting_options_from_style: argument 0"}
!2430 = distinct !{!2430, !"quoting_options_from_style"}
!2431 = !DILocation(line: 953, column: 36, scope: !2416)
!2432 = !DILocation(line: 0, scope: !2398, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 953, column: 36, scope: !2416)
!2434 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2433)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 186, column: 13, scope: !2408, inlinedAt: !2433)
!2437 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2433)
!2438 = !DILocation(line: 187, column: 5, scope: !2408, inlinedAt: !2433)
!2439 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2433)
!2440 = distinct !DIAssignID()
!2441 = !DILocation(line: 954, column: 10, scope: !2416)
!2442 = !DILocation(line: 955, column: 1, scope: !2416)
!2443 = !DILocation(line: 954, column: 3, scope: !2416)
!2444 = distinct !DISubprogram(name: "quotearg_style", scope: !427, file: !427, line: 958, type: !2445, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!239, !453, !70}
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "s", arg: 1, scope: !2444, file: !427, line: 958, type: !453)
!2449 = !DILocalVariable(name: "arg", arg: 2, scope: !2444, file: !427, line: 958, type: !70)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 0, scope: !2444)
!2452 = !DILocation(line: 0, scope: !2382, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 960, column: 10, scope: !2444)
!2454 = !DILocation(line: 945, column: 3, scope: !2382, inlinedAt: !2453)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 945, column: 36, scope: !2382, inlinedAt: !2453)
!2459 = !DILocation(line: 0, scope: !2398, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 945, column: 36, scope: !2382, inlinedAt: !2453)
!2461 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2460)
!2462 = distinct !DIAssignID()
!2463 = !DILocation(line: 186, column: 13, scope: !2408, inlinedAt: !2460)
!2464 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2460)
!2465 = !DILocation(line: 187, column: 5, scope: !2408, inlinedAt: !2460)
!2466 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2460)
!2467 = distinct !DIAssignID()
!2468 = !DILocation(line: 946, column: 10, scope: !2382, inlinedAt: !2453)
!2469 = !DILocation(line: 947, column: 1, scope: !2382, inlinedAt: !2453)
!2470 = !DILocation(line: 960, column: 3, scope: !2444)
!2471 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !427, file: !427, line: 964, type: !2472, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!239, !453, !70, !94}
!2474 = !{!2475, !2476, !2477}
!2475 = !DILocalVariable(name: "s", arg: 1, scope: !2471, file: !427, line: 964, type: !453)
!2476 = !DILocalVariable(name: "arg", arg: 2, scope: !2471, file: !427, line: 964, type: !70)
!2477 = !DILocalVariable(name: "argsize", arg: 3, scope: !2471, file: !427, line: 964, type: !94)
!2478 = distinct !DIAssignID()
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 0, scope: !2416, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 966, column: 10, scope: !2471)
!2482 = !DILocation(line: 953, column: 3, scope: !2416, inlinedAt: !2481)
!2483 = !{!2484}
!2484 = distinct !{!2484, !2485, !"quoting_options_from_style: argument 0"}
!2485 = distinct !{!2485, !"quoting_options_from_style"}
!2486 = !DILocation(line: 953, column: 36, scope: !2416, inlinedAt: !2481)
!2487 = !DILocation(line: 0, scope: !2398, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 953, column: 36, scope: !2416, inlinedAt: !2481)
!2489 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2488)
!2490 = distinct !DIAssignID()
!2491 = !DILocation(line: 186, column: 13, scope: !2408, inlinedAt: !2488)
!2492 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2488)
!2493 = !DILocation(line: 187, column: 5, scope: !2408, inlinedAt: !2488)
!2494 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2488)
!2495 = distinct !DIAssignID()
!2496 = !DILocation(line: 954, column: 10, scope: !2416, inlinedAt: !2481)
!2497 = !DILocation(line: 955, column: 1, scope: !2416, inlinedAt: !2481)
!2498 = !DILocation(line: 966, column: 3, scope: !2471)
!2499 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !427, file: !427, line: 970, type: !2500, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2502)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!239, !70, !94, !4}
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !427, line: 970, type: !70)
!2504 = !DILocalVariable(name: "argsize", arg: 2, scope: !2499, file: !427, line: 970, type: !94)
!2505 = !DILocalVariable(name: "ch", arg: 3, scope: !2499, file: !427, line: 970, type: !4)
!2506 = !DILocalVariable(name: "options", scope: !2499, file: !427, line: 972, type: !480)
!2507 = distinct !DIAssignID()
!2508 = !DILocation(line: 0, scope: !2499)
!2509 = !DILocation(line: 972, column: 3, scope: !2499)
!2510 = !DILocation(line: 973, column: 13, scope: !2499)
!2511 = !{i64 0, i64 4, !808, i64 4, i64 4, !808, i64 8, i64 32, !817, i64 40, i64 8, !747, i64 48, i64 8, !747}
!2512 = distinct !DIAssignID()
!2513 = !DILocation(line: 0, scope: !1486, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 974, column: 3, scope: !2499)
!2515 = !DILocation(line: 147, column: 41, scope: !1486, inlinedAt: !2514)
!2516 = !DILocation(line: 147, column: 62, scope: !1486, inlinedAt: !2514)
!2517 = !DILocation(line: 147, column: 57, scope: !1486, inlinedAt: !2514)
!2518 = !DILocation(line: 148, column: 15, scope: !1486, inlinedAt: !2514)
!2519 = !DILocation(line: 149, column: 21, scope: !1486, inlinedAt: !2514)
!2520 = !DILocation(line: 149, column: 24, scope: !1486, inlinedAt: !2514)
!2521 = !DILocation(line: 150, column: 19, scope: !1486, inlinedAt: !2514)
!2522 = !DILocation(line: 150, column: 24, scope: !1486, inlinedAt: !2514)
!2523 = !DILocation(line: 150, column: 6, scope: !1486, inlinedAt: !2514)
!2524 = !DILocation(line: 975, column: 10, scope: !2499)
!2525 = !DILocation(line: 976, column: 1, scope: !2499)
!2526 = !DILocation(line: 975, column: 3, scope: !2499)
!2527 = distinct !DISubprogram(name: "quotearg_char", scope: !427, file: !427, line: 979, type: !2528, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2530)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!239, !70, !4}
!2530 = !{!2531, !2532}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2527, file: !427, line: 979, type: !70)
!2532 = !DILocalVariable(name: "ch", arg: 2, scope: !2527, file: !427, line: 979, type: !4)
!2533 = distinct !DIAssignID()
!2534 = !DILocation(line: 0, scope: !2527)
!2535 = !DILocation(line: 0, scope: !2499, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 981, column: 10, scope: !2527)
!2537 = !DILocation(line: 972, column: 3, scope: !2499, inlinedAt: !2536)
!2538 = !DILocation(line: 973, column: 13, scope: !2499, inlinedAt: !2536)
!2539 = distinct !DIAssignID()
!2540 = !DILocation(line: 0, scope: !1486, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 974, column: 3, scope: !2499, inlinedAt: !2536)
!2542 = !DILocation(line: 147, column: 41, scope: !1486, inlinedAt: !2541)
!2543 = !DILocation(line: 147, column: 62, scope: !1486, inlinedAt: !2541)
!2544 = !DILocation(line: 147, column: 57, scope: !1486, inlinedAt: !2541)
!2545 = !DILocation(line: 148, column: 15, scope: !1486, inlinedAt: !2541)
!2546 = !DILocation(line: 149, column: 21, scope: !1486, inlinedAt: !2541)
!2547 = !DILocation(line: 149, column: 24, scope: !1486, inlinedAt: !2541)
!2548 = !DILocation(line: 150, column: 19, scope: !1486, inlinedAt: !2541)
!2549 = !DILocation(line: 150, column: 24, scope: !1486, inlinedAt: !2541)
!2550 = !DILocation(line: 150, column: 6, scope: !1486, inlinedAt: !2541)
!2551 = !DILocation(line: 975, column: 10, scope: !2499, inlinedAt: !2536)
!2552 = !DILocation(line: 976, column: 1, scope: !2499, inlinedAt: !2536)
!2553 = !DILocation(line: 981, column: 3, scope: !2527)
!2554 = distinct !DISubprogram(name: "quotearg_colon", scope: !427, file: !427, line: 985, type: !934, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2555)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !427, line: 985, type: !70)
!2557 = distinct !DIAssignID()
!2558 = !DILocation(line: 0, scope: !2554)
!2559 = !DILocation(line: 0, scope: !2527, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 987, column: 10, scope: !2554)
!2561 = !DILocation(line: 0, scope: !2499, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 981, column: 10, scope: !2527, inlinedAt: !2560)
!2563 = !DILocation(line: 972, column: 3, scope: !2499, inlinedAt: !2562)
!2564 = !DILocation(line: 973, column: 13, scope: !2499, inlinedAt: !2562)
!2565 = distinct !DIAssignID()
!2566 = !DILocation(line: 0, scope: !1486, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 974, column: 3, scope: !2499, inlinedAt: !2562)
!2568 = !DILocation(line: 147, column: 57, scope: !1486, inlinedAt: !2567)
!2569 = !DILocation(line: 149, column: 21, scope: !1486, inlinedAt: !2567)
!2570 = !DILocation(line: 150, column: 6, scope: !1486, inlinedAt: !2567)
!2571 = !DILocation(line: 975, column: 10, scope: !2499, inlinedAt: !2562)
!2572 = !DILocation(line: 976, column: 1, scope: !2499, inlinedAt: !2562)
!2573 = !DILocation(line: 987, column: 3, scope: !2554)
!2574 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !427, file: !427, line: 991, type: !2372, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2575)
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !427, line: 991, type: !70)
!2577 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !427, line: 991, type: !94)
!2578 = distinct !DIAssignID()
!2579 = !DILocation(line: 0, scope: !2574)
!2580 = !DILocation(line: 0, scope: !2499, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 993, column: 10, scope: !2574)
!2582 = !DILocation(line: 972, column: 3, scope: !2499, inlinedAt: !2581)
!2583 = !DILocation(line: 973, column: 13, scope: !2499, inlinedAt: !2581)
!2584 = distinct !DIAssignID()
!2585 = !DILocation(line: 0, scope: !1486, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 974, column: 3, scope: !2499, inlinedAt: !2581)
!2587 = !DILocation(line: 147, column: 57, scope: !1486, inlinedAt: !2586)
!2588 = !DILocation(line: 149, column: 21, scope: !1486, inlinedAt: !2586)
!2589 = !DILocation(line: 150, column: 6, scope: !1486, inlinedAt: !2586)
!2590 = !DILocation(line: 975, column: 10, scope: !2499, inlinedAt: !2581)
!2591 = !DILocation(line: 976, column: 1, scope: !2499, inlinedAt: !2581)
!2592 = !DILocation(line: 993, column: 3, scope: !2574)
!2593 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !427, file: !427, line: 997, type: !2383, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2594)
!2594 = !{!2595, !2596, !2597, !2598}
!2595 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !427, line: 997, type: !92)
!2596 = !DILocalVariable(name: "s", arg: 2, scope: !2593, file: !427, line: 997, type: !453)
!2597 = !DILocalVariable(name: "arg", arg: 3, scope: !2593, file: !427, line: 997, type: !70)
!2598 = !DILocalVariable(name: "options", scope: !2593, file: !427, line: 999, type: !480)
!2599 = distinct !DIAssignID()
!2600 = !DILocation(line: 0, scope: !2593)
!2601 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1000, column: 13, scope: !2593)
!2603 = !DILocation(line: 999, column: 3, scope: !2593)
!2604 = !DILocation(line: 0, scope: !2398, inlinedAt: !2602)
!2605 = !DILocation(line: 186, column: 13, scope: !2408, inlinedAt: !2602)
!2606 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2602)
!2607 = !DILocation(line: 187, column: 5, scope: !2408, inlinedAt: !2602)
!2608 = !{!2609}
!2609 = distinct !{!2609, !2610, !"quoting_options_from_style: argument 0"}
!2610 = distinct !{!2610, !"quoting_options_from_style"}
!2611 = !DILocation(line: 1000, column: 13, scope: !2593)
!2612 = distinct !DIAssignID()
!2613 = distinct !DIAssignID()
!2614 = !DILocation(line: 0, scope: !1486, inlinedAt: !2615)
!2615 = distinct !DILocation(line: 1001, column: 3, scope: !2593)
!2616 = !DILocation(line: 147, column: 57, scope: !1486, inlinedAt: !2615)
!2617 = !DILocation(line: 149, column: 21, scope: !1486, inlinedAt: !2615)
!2618 = !DILocation(line: 150, column: 6, scope: !1486, inlinedAt: !2615)
!2619 = distinct !DIAssignID()
!2620 = !DILocation(line: 1002, column: 10, scope: !2593)
!2621 = !DILocation(line: 1003, column: 1, scope: !2593)
!2622 = !DILocation(line: 1002, column: 3, scope: !2593)
!2623 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !427, file: !427, line: 1006, type: !2624, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2626)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!239, !92, !70, !70, !70}
!2626 = !{!2627, !2628, !2629, !2630}
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2623, file: !427, line: 1006, type: !92)
!2628 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2623, file: !427, line: 1006, type: !70)
!2629 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2623, file: !427, line: 1007, type: !70)
!2630 = !DILocalVariable(name: "arg", arg: 4, scope: !2623, file: !427, line: 1007, type: !70)
!2631 = distinct !DIAssignID()
!2632 = !DILocation(line: 0, scope: !2623)
!2633 = !DILocalVariable(name: "o", scope: !2634, file: !427, line: 1018, type: !480)
!2634 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !427, file: !427, line: 1014, type: !2635, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!239, !92, !70, !70, !70, !94}
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2633}
!2638 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !427, line: 1014, type: !92)
!2639 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2634, file: !427, line: 1014, type: !70)
!2640 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2634, file: !427, line: 1015, type: !70)
!2641 = !DILocalVariable(name: "arg", arg: 4, scope: !2634, file: !427, line: 1016, type: !70)
!2642 = !DILocalVariable(name: "argsize", arg: 5, scope: !2634, file: !427, line: 1016, type: !94)
!2643 = !DILocation(line: 0, scope: !2634, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1009, column: 10, scope: !2623)
!2645 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2644)
!2646 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2644)
!2647 = distinct !DIAssignID()
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 0, scope: !1526, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2644)
!2651 = !DILocation(line: 174, column: 12, scope: !1526, inlinedAt: !2650)
!2652 = distinct !DIAssignID()
!2653 = !DILocation(line: 175, column: 8, scope: !1539, inlinedAt: !2650)
!2654 = !DILocation(line: 175, column: 19, scope: !1539, inlinedAt: !2650)
!2655 = !DILocation(line: 176, column: 5, scope: !1539, inlinedAt: !2650)
!2656 = !DILocation(line: 177, column: 6, scope: !1526, inlinedAt: !2650)
!2657 = !DILocation(line: 177, column: 17, scope: !1526, inlinedAt: !2650)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 178, column: 6, scope: !1526, inlinedAt: !2650)
!2660 = !DILocation(line: 178, column: 18, scope: !1526, inlinedAt: !2650)
!2661 = distinct !DIAssignID()
!2662 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2644)
!2663 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2644)
!2664 = !DILocation(line: 1009, column: 3, scope: !2623)
!2665 = distinct !DIAssignID()
!2666 = !DILocation(line: 0, scope: !2634)
!2667 = !DILocation(line: 1018, column: 3, scope: !2634)
!2668 = !DILocation(line: 1018, column: 30, scope: !2634)
!2669 = distinct !DIAssignID()
!2670 = distinct !DIAssignID()
!2671 = !DILocation(line: 0, scope: !1526, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1019, column: 3, scope: !2634)
!2673 = !DILocation(line: 174, column: 12, scope: !1526, inlinedAt: !2672)
!2674 = distinct !DIAssignID()
!2675 = !DILocation(line: 175, column: 8, scope: !1539, inlinedAt: !2672)
!2676 = !DILocation(line: 175, column: 19, scope: !1539, inlinedAt: !2672)
!2677 = !DILocation(line: 176, column: 5, scope: !1539, inlinedAt: !2672)
!2678 = !DILocation(line: 177, column: 6, scope: !1526, inlinedAt: !2672)
!2679 = !DILocation(line: 177, column: 17, scope: !1526, inlinedAt: !2672)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 178, column: 6, scope: !1526, inlinedAt: !2672)
!2682 = !DILocation(line: 178, column: 18, scope: !1526, inlinedAt: !2672)
!2683 = distinct !DIAssignID()
!2684 = !DILocation(line: 1020, column: 10, scope: !2634)
!2685 = !DILocation(line: 1021, column: 1, scope: !2634)
!2686 = !DILocation(line: 1020, column: 3, scope: !2634)
!2687 = distinct !DISubprogram(name: "quotearg_custom", scope: !427, file: !427, line: 1024, type: !2688, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!239, !70, !70, !70}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2687, file: !427, line: 1024, type: !70)
!2692 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2687, file: !427, line: 1024, type: !70)
!2693 = !DILocalVariable(name: "arg", arg: 3, scope: !2687, file: !427, line: 1025, type: !70)
!2694 = distinct !DIAssignID()
!2695 = !DILocation(line: 0, scope: !2687)
!2696 = !DILocation(line: 0, scope: !2623, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1027, column: 10, scope: !2687)
!2698 = !DILocation(line: 0, scope: !2634, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1009, column: 10, scope: !2623, inlinedAt: !2697)
!2700 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2699)
!2701 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2699)
!2702 = distinct !DIAssignID()
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 0, scope: !1526, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2699)
!2706 = !DILocation(line: 174, column: 12, scope: !1526, inlinedAt: !2705)
!2707 = distinct !DIAssignID()
!2708 = !DILocation(line: 175, column: 8, scope: !1539, inlinedAt: !2705)
!2709 = !DILocation(line: 175, column: 19, scope: !1539, inlinedAt: !2705)
!2710 = !DILocation(line: 176, column: 5, scope: !1539, inlinedAt: !2705)
!2711 = !DILocation(line: 177, column: 6, scope: !1526, inlinedAt: !2705)
!2712 = !DILocation(line: 177, column: 17, scope: !1526, inlinedAt: !2705)
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 178, column: 6, scope: !1526, inlinedAt: !2705)
!2715 = !DILocation(line: 178, column: 18, scope: !1526, inlinedAt: !2705)
!2716 = distinct !DIAssignID()
!2717 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2699)
!2718 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2699)
!2719 = !DILocation(line: 1027, column: 3, scope: !2687)
!2720 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !427, file: !427, line: 1031, type: !2721, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!239, !70, !70, !70, !94}
!2723 = !{!2724, !2725, !2726, !2727}
!2724 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2720, file: !427, line: 1031, type: !70)
!2725 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2720, file: !427, line: 1031, type: !70)
!2726 = !DILocalVariable(name: "arg", arg: 3, scope: !2720, file: !427, line: 1032, type: !70)
!2727 = !DILocalVariable(name: "argsize", arg: 4, scope: !2720, file: !427, line: 1032, type: !94)
!2728 = distinct !DIAssignID()
!2729 = !DILocation(line: 0, scope: !2720)
!2730 = !DILocation(line: 0, scope: !2634, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1034, column: 10, scope: !2720)
!2732 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2731)
!2733 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2731)
!2734 = distinct !DIAssignID()
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 0, scope: !1526, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2731)
!2738 = !DILocation(line: 174, column: 12, scope: !1526, inlinedAt: !2737)
!2739 = distinct !DIAssignID()
!2740 = !DILocation(line: 175, column: 8, scope: !1539, inlinedAt: !2737)
!2741 = !DILocation(line: 175, column: 19, scope: !1539, inlinedAt: !2737)
!2742 = !DILocation(line: 176, column: 5, scope: !1539, inlinedAt: !2737)
!2743 = !DILocation(line: 177, column: 6, scope: !1526, inlinedAt: !2737)
!2744 = !DILocation(line: 177, column: 17, scope: !1526, inlinedAt: !2737)
!2745 = distinct !DIAssignID()
!2746 = !DILocation(line: 178, column: 6, scope: !1526, inlinedAt: !2737)
!2747 = !DILocation(line: 178, column: 18, scope: !1526, inlinedAt: !2737)
!2748 = distinct !DIAssignID()
!2749 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2731)
!2750 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2731)
!2751 = !DILocation(line: 1034, column: 3, scope: !2720)
!2752 = distinct !DISubprogram(name: "quote_n_mem", scope: !427, file: !427, line: 1049, type: !2753, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!70, !92, !70, !94}
!2755 = !{!2756, !2757, !2758}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !427, line: 1049, type: !92)
!2757 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !427, line: 1049, type: !70)
!2758 = !DILocalVariable(name: "argsize", arg: 3, scope: !2752, file: !427, line: 1049, type: !94)
!2759 = !DILocation(line: 0, scope: !2752)
!2760 = !DILocation(line: 1051, column: 10, scope: !2752)
!2761 = !DILocation(line: 1051, column: 3, scope: !2752)
!2762 = distinct !DISubprogram(name: "quote_mem", scope: !427, file: !427, line: 1055, type: !2763, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!70, !70, !94}
!2765 = !{!2766, !2767}
!2766 = !DILocalVariable(name: "arg", arg: 1, scope: !2762, file: !427, line: 1055, type: !70)
!2767 = !DILocalVariable(name: "argsize", arg: 2, scope: !2762, file: !427, line: 1055, type: !94)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 0, scope: !2752, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1057, column: 10, scope: !2762)
!2771 = !DILocation(line: 1051, column: 10, scope: !2752, inlinedAt: !2770)
!2772 = !DILocation(line: 1057, column: 3, scope: !2762)
!2773 = distinct !DISubprogram(name: "quote_n", scope: !427, file: !427, line: 1061, type: !2774, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2776)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!70, !92, !70}
!2776 = !{!2777, !2778}
!2777 = !DILocalVariable(name: "n", arg: 1, scope: !2773, file: !427, line: 1061, type: !92)
!2778 = !DILocalVariable(name: "arg", arg: 2, scope: !2773, file: !427, line: 1061, type: !70)
!2779 = !DILocation(line: 0, scope: !2773)
!2780 = !DILocation(line: 0, scope: !2752, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 1063, column: 10, scope: !2773)
!2782 = !DILocation(line: 1051, column: 10, scope: !2752, inlinedAt: !2781)
!2783 = !DILocation(line: 1063, column: 3, scope: !2773)
!2784 = distinct !DISubprogram(name: "quote", scope: !427, file: !427, line: 1067, type: !2785, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!70, !70}
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "arg", arg: 1, scope: !2784, file: !427, line: 1067, type: !70)
!2789 = !DILocation(line: 0, scope: !2784)
!2790 = !DILocation(line: 0, scope: !2773, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1069, column: 10, scope: !2784)
!2792 = !DILocation(line: 0, scope: !2752, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1063, column: 10, scope: !2773, inlinedAt: !2791)
!2794 = !DILocation(line: 1051, column: 10, scope: !2752, inlinedAt: !2793)
!2795 = !DILocation(line: 1069, column: 3, scope: !2784)
!2796 = distinct !DISubprogram(name: "version_etc_arn", scope: !543, file: !543, line: 61, type: !2797, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2834)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2799, !70, !70, !70, !2833, !94}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2801, file: !235, line: 51, baseType: !92, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2801, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2801, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2801, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2801, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2801, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2801, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2801, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2801, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2801, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2801, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2801, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2801, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2801, file: !235, line: 70, baseType: !2817, size: 64, offset: 832)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2801, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2801, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2801, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2801, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2801, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2801, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2801, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2801, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2801, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2801, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2801, file: !235, line: 93, baseType: !2817, size: 64, offset: 1344)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2801, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2801, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2801, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2801, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840}
!2835 = !DILocalVariable(name: "stream", arg: 1, scope: !2796, file: !543, line: 61, type: !2799)
!2836 = !DILocalVariable(name: "command_name", arg: 2, scope: !2796, file: !543, line: 62, type: !70)
!2837 = !DILocalVariable(name: "package", arg: 3, scope: !2796, file: !543, line: 62, type: !70)
!2838 = !DILocalVariable(name: "version", arg: 4, scope: !2796, file: !543, line: 63, type: !70)
!2839 = !DILocalVariable(name: "authors", arg: 5, scope: !2796, file: !543, line: 64, type: !2833)
!2840 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2796, file: !543, line: 64, type: !94)
!2841 = !DILocation(line: 0, scope: !2796)
!2842 = !DILocation(line: 66, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2796, file: !543, line: 66, column: 7)
!2844 = !DILocation(line: 66, column: 7, scope: !2796)
!2845 = !DILocation(line: 67, column: 5, scope: !2843)
!2846 = !DILocation(line: 69, column: 5, scope: !2843)
!2847 = !DILocation(line: 83, column: 3, scope: !2796)
!2848 = !DILocation(line: 85, column: 3, scope: !2796)
!2849 = !DILocation(line: 88, column: 3, scope: !2796)
!2850 = !DILocation(line: 95, column: 3, scope: !2796)
!2851 = !DILocation(line: 97, column: 3, scope: !2796)
!2852 = !DILocation(line: 105, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2796, file: !543, line: 98, column: 5)
!2854 = !DILocation(line: 106, column: 7, scope: !2853)
!2855 = !DILocation(line: 109, column: 7, scope: !2853)
!2856 = !DILocation(line: 110, column: 7, scope: !2853)
!2857 = !DILocation(line: 113, column: 7, scope: !2853)
!2858 = !DILocation(line: 115, column: 7, scope: !2853)
!2859 = !DILocation(line: 120, column: 7, scope: !2853)
!2860 = !DILocation(line: 122, column: 7, scope: !2853)
!2861 = !DILocation(line: 127, column: 7, scope: !2853)
!2862 = !DILocation(line: 129, column: 7, scope: !2853)
!2863 = !DILocation(line: 134, column: 7, scope: !2853)
!2864 = !DILocation(line: 137, column: 7, scope: !2853)
!2865 = !DILocation(line: 142, column: 7, scope: !2853)
!2866 = !DILocation(line: 145, column: 7, scope: !2853)
!2867 = !DILocation(line: 150, column: 7, scope: !2853)
!2868 = !DILocation(line: 154, column: 7, scope: !2853)
!2869 = !DILocation(line: 159, column: 7, scope: !2853)
!2870 = !DILocation(line: 163, column: 7, scope: !2853)
!2871 = !DILocation(line: 170, column: 7, scope: !2853)
!2872 = !DILocation(line: 174, column: 7, scope: !2853)
!2873 = !DILocation(line: 176, column: 1, scope: !2796)
!2874 = distinct !DISubprogram(name: "version_etc_ar", scope: !543, file: !543, line: 183, type: !2875, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{null, !2799, !70, !70, !70, !2833}
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883}
!2878 = !DILocalVariable(name: "stream", arg: 1, scope: !2874, file: !543, line: 183, type: !2799)
!2879 = !DILocalVariable(name: "command_name", arg: 2, scope: !2874, file: !543, line: 184, type: !70)
!2880 = !DILocalVariable(name: "package", arg: 3, scope: !2874, file: !543, line: 184, type: !70)
!2881 = !DILocalVariable(name: "version", arg: 4, scope: !2874, file: !543, line: 185, type: !70)
!2882 = !DILocalVariable(name: "authors", arg: 5, scope: !2874, file: !543, line: 185, type: !2833)
!2883 = !DILocalVariable(name: "n_authors", scope: !2874, file: !543, line: 187, type: !94)
!2884 = !DILocation(line: 0, scope: !2874)
!2885 = !DILocation(line: 189, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2874, file: !543, line: 189, column: 3)
!2887 = !DILocation(line: 189, scope: !2886)
!2888 = !DILocation(line: 189, column: 23, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2886, file: !543, line: 189, column: 3)
!2890 = !DILocation(line: 189, column: 3, scope: !2886)
!2891 = !DILocation(line: 189, column: 52, scope: !2889)
!2892 = distinct !{!2892, !2890, !2893, !855}
!2893 = !DILocation(line: 190, column: 5, scope: !2886)
!2894 = !DILocation(line: 191, column: 3, scope: !2874)
!2895 = !DILocation(line: 192, column: 1, scope: !2874)
!2896 = distinct !DISubprogram(name: "version_etc_va", scope: !543, file: !543, line: 199, type: !2897, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2906)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2799, !70, !70, !70, !2899}
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2900, file: !543, line: 192, baseType: !76, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2900, file: !543, line: 192, baseType: !76, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2900, file: !543, line: 192, baseType: !91, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2900, file: !543, line: 192, baseType: !91, size: 64, offset: 128)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2907 = !DILocalVariable(name: "stream", arg: 1, scope: !2896, file: !543, line: 199, type: !2799)
!2908 = !DILocalVariable(name: "command_name", arg: 2, scope: !2896, file: !543, line: 200, type: !70)
!2909 = !DILocalVariable(name: "package", arg: 3, scope: !2896, file: !543, line: 200, type: !70)
!2910 = !DILocalVariable(name: "version", arg: 4, scope: !2896, file: !543, line: 201, type: !70)
!2911 = !DILocalVariable(name: "authors", arg: 5, scope: !2896, file: !543, line: 201, type: !2899)
!2912 = !DILocalVariable(name: "n_authors", scope: !2896, file: !543, line: 203, type: !94)
!2913 = !DILocalVariable(name: "authtab", scope: !2896, file: !543, line: 204, type: !2914)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 0, scope: !2896)
!2917 = !DILocation(line: 204, column: 3, scope: !2896)
!2918 = !DILocation(line: 208, column: 35, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !543, line: 206, column: 3)
!2920 = distinct !DILexicalBlock(scope: !2896, file: !543, line: 206, column: 3)
!2921 = !DILocation(line: 208, column: 33, scope: !2919)
!2922 = !DILocation(line: 208, column: 67, scope: !2919)
!2923 = !DILocation(line: 206, column: 3, scope: !2920)
!2924 = !DILocation(line: 208, column: 14, scope: !2919)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 211, column: 3, scope: !2896)
!2927 = !DILocation(line: 213, column: 1, scope: !2896)
!2928 = distinct !DISubprogram(name: "version_etc", scope: !543, file: !543, line: 230, type: !2929, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2799, !70, !70, !70, null}
!2931 = !{!2932, !2933, !2934, !2935, !2936}
!2932 = !DILocalVariable(name: "stream", arg: 1, scope: !2928, file: !543, line: 230, type: !2799)
!2933 = !DILocalVariable(name: "command_name", arg: 2, scope: !2928, file: !543, line: 231, type: !70)
!2934 = !DILocalVariable(name: "package", arg: 3, scope: !2928, file: !543, line: 231, type: !70)
!2935 = !DILocalVariable(name: "version", arg: 4, scope: !2928, file: !543, line: 232, type: !70)
!2936 = !DILocalVariable(name: "authors", scope: !2928, file: !543, line: 234, type: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !803, line: 52, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1219, line: 12, baseType: !2939)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !543, baseType: !2940)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2900, size: 192, elements: !35)
!2941 = distinct !DIAssignID()
!2942 = !DILocation(line: 0, scope: !2928)
!2943 = !DILocation(line: 234, column: 3, scope: !2928)
!2944 = !DILocation(line: 235, column: 3, scope: !2928)
!2945 = !DILocation(line: 236, column: 3, scope: !2928)
!2946 = !DILocation(line: 237, column: 3, scope: !2928)
!2947 = !DILocation(line: 238, column: 1, scope: !2928)
!2948 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !543, file: !543, line: 241, type: !358, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !667)
!2949 = !DILocation(line: 243, column: 3, scope: !2948)
!2950 = !DILocation(line: 248, column: 3, scope: !2948)
!2951 = !DILocation(line: 254, column: 3, scope: !2948)
!2952 = !DILocation(line: 259, column: 3, scope: !2948)
!2953 = !DILocation(line: 261, column: 1, scope: !2948)
!2954 = distinct !DISubprogram(name: "xnrealloc", scope: !2955, file: !2955, line: 147, type: !2956, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2958)
!2955 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!91, !91, !94, !94}
!2958 = !{!2959, !2960, !2961}
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2954, file: !2955, line: 147, type: !91)
!2960 = !DILocalVariable(name: "n", arg: 2, scope: !2954, file: !2955, line: 147, type: !94)
!2961 = !DILocalVariable(name: "s", arg: 3, scope: !2954, file: !2955, line: 147, type: !94)
!2962 = !DILocation(line: 0, scope: !2954)
!2963 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !674, line: 83, type: !91)
!2964 = distinct !DISubprogram(name: "xreallocarray", scope: !674, file: !674, line: 83, type: !2956, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2965)
!2965 = !{!2963, !2966, !2967}
!2966 = !DILocalVariable(name: "n", arg: 2, scope: !2964, file: !674, line: 83, type: !94)
!2967 = !DILocalVariable(name: "s", arg: 3, scope: !2964, file: !674, line: 83, type: !94)
!2968 = !DILocation(line: 0, scope: !2964, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 149, column: 10, scope: !2954)
!2970 = !DILocation(line: 85, column: 25, scope: !2964, inlinedAt: !2969)
!2971 = !DILocalVariable(name: "p", arg: 1, scope: !2972, file: !674, line: 37, type: !91)
!2972 = distinct !DISubprogram(name: "check_nonnull", scope: !674, file: !674, line: 37, type: !2973, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!91, !91}
!2975 = !{!2971}
!2976 = !DILocation(line: 0, scope: !2972, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 85, column: 10, scope: !2964, inlinedAt: !2969)
!2978 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !2977)
!2979 = distinct !DILexicalBlock(scope: !2972, file: !674, line: 39, column: 7)
!2980 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !2977)
!2981 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !2977)
!2982 = !DILocation(line: 149, column: 3, scope: !2954)
!2983 = !DILocation(line: 0, scope: !2964)
!2984 = !DILocation(line: 85, column: 25, scope: !2964)
!2985 = !DILocation(line: 0, scope: !2972, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 85, column: 10, scope: !2964)
!2987 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !2986)
!2988 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !2986)
!2989 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !2986)
!2990 = !DILocation(line: 85, column: 3, scope: !2964)
!2991 = distinct !DISubprogram(name: "xmalloc", scope: !674, file: !674, line: 47, type: !2992, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!91, !94}
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "s", arg: 1, scope: !2991, file: !674, line: 47, type: !94)
!2996 = !DILocation(line: 0, scope: !2991)
!2997 = !DILocation(line: 49, column: 25, scope: !2991)
!2998 = !DILocation(line: 0, scope: !2972, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 49, column: 10, scope: !2991)
!3000 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !2999)
!3001 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !2999)
!3002 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !2999)
!3003 = !DILocation(line: 49, column: 3, scope: !2991)
!3004 = !DISubprogram(name: "malloc", scope: !932, file: !932, line: 540, type: !2992, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = distinct !DISubprogram(name: "ximalloc", scope: !674, file: !674, line: 53, type: !3006, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!91, !693}
!3008 = !{!3009}
!3009 = !DILocalVariable(name: "s", arg: 1, scope: !3005, file: !674, line: 53, type: !693)
!3010 = !DILocation(line: 0, scope: !3005)
!3011 = !DILocalVariable(name: "s", arg: 1, scope: !3012, file: !3013, line: 55, type: !693)
!3012 = distinct !DISubprogram(name: "imalloc", scope: !3013, file: !3013, line: 55, type: !3006, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3014)
!3013 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3014 = !{!3011}
!3015 = !DILocation(line: 0, scope: !3012, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 55, column: 25, scope: !3005)
!3017 = !DILocation(line: 57, column: 26, scope: !3012, inlinedAt: !3016)
!3018 = !DILocation(line: 0, scope: !2972, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 55, column: 10, scope: !3005)
!3020 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3019)
!3021 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3019)
!3022 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3019)
!3023 = !DILocation(line: 55, column: 3, scope: !3005)
!3024 = distinct !DISubprogram(name: "xcharalloc", scope: !674, file: !674, line: 59, type: !3025, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!239, !94}
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "n", arg: 1, scope: !3024, file: !674, line: 59, type: !94)
!3029 = !DILocation(line: 0, scope: !3024)
!3030 = !DILocation(line: 0, scope: !2991, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 61, column: 10, scope: !3024)
!3032 = !DILocation(line: 49, column: 25, scope: !2991, inlinedAt: !3031)
!3033 = !DILocation(line: 0, scope: !2972, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 49, column: 10, scope: !2991, inlinedAt: !3031)
!3035 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3034)
!3036 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3034)
!3037 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3034)
!3038 = !DILocation(line: 61, column: 3, scope: !3024)
!3039 = distinct !DISubprogram(name: "xrealloc", scope: !674, file: !674, line: 68, type: !3040, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!91, !91, !94}
!3042 = !{!3043, !3044}
!3043 = !DILocalVariable(name: "p", arg: 1, scope: !3039, file: !674, line: 68, type: !91)
!3044 = !DILocalVariable(name: "s", arg: 2, scope: !3039, file: !674, line: 68, type: !94)
!3045 = !DILocation(line: 0, scope: !3039)
!3046 = !DILocalVariable(name: "ptr", arg: 1, scope: !3047, file: !3048, line: 2057, type: !91)
!3047 = distinct !DISubprogram(name: "rpl_realloc", scope: !3048, file: !3048, line: 2057, type: !3040, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3049)
!3048 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3049 = !{!3046, !3050}
!3050 = !DILocalVariable(name: "size", arg: 2, scope: !3047, file: !3048, line: 2057, type: !94)
!3051 = !DILocation(line: 0, scope: !3047, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 70, column: 25, scope: !3039)
!3053 = !DILocation(line: 2059, column: 24, scope: !3047, inlinedAt: !3052)
!3054 = !DILocation(line: 2059, column: 10, scope: !3047, inlinedAt: !3052)
!3055 = !DILocation(line: 0, scope: !2972, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 70, column: 10, scope: !3039)
!3057 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3056)
!3060 = !DILocation(line: 70, column: 3, scope: !3039)
!3061 = !DISubprogram(name: "realloc", scope: !932, file: !932, line: 551, type: !3040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3062 = distinct !DISubprogram(name: "xirealloc", scope: !674, file: !674, line: 74, type: !3063, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!91, !91, !693}
!3065 = !{!3066, !3067}
!3066 = !DILocalVariable(name: "p", arg: 1, scope: !3062, file: !674, line: 74, type: !91)
!3067 = !DILocalVariable(name: "s", arg: 2, scope: !3062, file: !674, line: 74, type: !693)
!3068 = !DILocation(line: 0, scope: !3062)
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !3013, line: 66, type: !91)
!3070 = distinct !DISubprogram(name: "irealloc", scope: !3013, file: !3013, line: 66, type: !3063, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3071)
!3071 = !{!3069, !3072}
!3072 = !DILocalVariable(name: "s", arg: 2, scope: !3070, file: !3013, line: 66, type: !693)
!3073 = !DILocation(line: 0, scope: !3070, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 76, column: 25, scope: !3062)
!3075 = !DILocation(line: 0, scope: !3047, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 68, column: 26, scope: !3070, inlinedAt: !3074)
!3077 = !DILocation(line: 2059, column: 24, scope: !3047, inlinedAt: !3076)
!3078 = !DILocation(line: 2059, column: 10, scope: !3047, inlinedAt: !3076)
!3079 = !DILocation(line: 0, scope: !2972, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 76, column: 10, scope: !3062)
!3081 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3080)
!3082 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3080)
!3083 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3080)
!3084 = !DILocation(line: 76, column: 3, scope: !3062)
!3085 = distinct !DISubprogram(name: "xireallocarray", scope: !674, file: !674, line: 89, type: !3086, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!91, !91, !693, !693}
!3088 = !{!3089, !3090, !3091}
!3089 = !DILocalVariable(name: "p", arg: 1, scope: !3085, file: !674, line: 89, type: !91)
!3090 = !DILocalVariable(name: "n", arg: 2, scope: !3085, file: !674, line: 89, type: !693)
!3091 = !DILocalVariable(name: "s", arg: 3, scope: !3085, file: !674, line: 89, type: !693)
!3092 = !DILocation(line: 0, scope: !3085)
!3093 = !DILocalVariable(name: "p", arg: 1, scope: !3094, file: !3013, line: 98, type: !91)
!3094 = distinct !DISubprogram(name: "ireallocarray", scope: !3013, file: !3013, line: 98, type: !3086, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3095)
!3095 = !{!3093, !3096, !3097}
!3096 = !DILocalVariable(name: "n", arg: 2, scope: !3094, file: !3013, line: 98, type: !693)
!3097 = !DILocalVariable(name: "s", arg: 3, scope: !3094, file: !3013, line: 98, type: !693)
!3098 = !DILocation(line: 0, scope: !3094, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 91, column: 25, scope: !3085)
!3100 = !DILocation(line: 101, column: 13, scope: !3094, inlinedAt: !3099)
!3101 = !DILocation(line: 0, scope: !2972, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 91, column: 10, scope: !3085)
!3103 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3102)
!3104 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3102)
!3105 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3102)
!3106 = !DILocation(line: 91, column: 3, scope: !3085)
!3107 = distinct !DISubprogram(name: "xnmalloc", scope: !674, file: !674, line: 98, type: !3108, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!91, !94, !94}
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "n", arg: 1, scope: !3107, file: !674, line: 98, type: !94)
!3112 = !DILocalVariable(name: "s", arg: 2, scope: !3107, file: !674, line: 98, type: !94)
!3113 = !DILocation(line: 0, scope: !3107)
!3114 = !DILocation(line: 0, scope: !2964, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 100, column: 10, scope: !3107)
!3116 = !DILocation(line: 85, column: 25, scope: !2964, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !2972, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 85, column: 10, scope: !2964, inlinedAt: !3115)
!3119 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3118)
!3122 = !DILocation(line: 100, column: 3, scope: !3107)
!3123 = distinct !DISubprogram(name: "xinmalloc", scope: !674, file: !674, line: 104, type: !3124, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!91, !693, !693}
!3126 = !{!3127, !3128}
!3127 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !674, line: 104, type: !693)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3123, file: !674, line: 104, type: !693)
!3129 = !DILocation(line: 0, scope: !3123)
!3130 = !DILocation(line: 0, scope: !3085, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 106, column: 10, scope: !3123)
!3132 = !DILocation(line: 0, scope: !3094, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 91, column: 25, scope: !3085, inlinedAt: !3131)
!3134 = !DILocation(line: 101, column: 13, scope: !3094, inlinedAt: !3133)
!3135 = !DILocation(line: 0, scope: !2972, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 91, column: 10, scope: !3085, inlinedAt: !3131)
!3137 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3136)
!3138 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3136)
!3139 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3136)
!3140 = !DILocation(line: 106, column: 3, scope: !3123)
!3141 = distinct !DISubprogram(name: "x2realloc", scope: !674, file: !674, line: 116, type: !3142, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!91, !91, !680}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "p", arg: 1, scope: !3141, file: !674, line: 116, type: !91)
!3146 = !DILocalVariable(name: "ps", arg: 2, scope: !3141, file: !674, line: 116, type: !680)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 0, scope: !677, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 118, column: 10, scope: !3141)
!3150 = !DILocation(line: 178, column: 14, scope: !677, inlinedAt: !3149)
!3151 = !DILocation(line: 180, column: 9, scope: !3152, inlinedAt: !3149)
!3152 = distinct !DILexicalBlock(scope: !677, file: !674, line: 180, column: 7)
!3153 = !DILocation(line: 180, column: 7, scope: !677, inlinedAt: !3149)
!3154 = !DILocation(line: 182, column: 13, scope: !3155, inlinedAt: !3149)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !674, line: 182, column: 11)
!3156 = distinct !DILexicalBlock(scope: !3152, file: !674, line: 181, column: 5)
!3157 = !DILocation(line: 182, column: 11, scope: !3156, inlinedAt: !3149)
!3158 = !DILocation(line: 197, column: 11, scope: !3159, inlinedAt: !3149)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !674, line: 197, column: 11)
!3160 = distinct !DILexicalBlock(scope: !3152, file: !674, line: 195, column: 5)
!3161 = !DILocation(line: 197, column: 11, scope: !3160, inlinedAt: !3149)
!3162 = !DILocation(line: 198, column: 9, scope: !3159, inlinedAt: !3149)
!3163 = !DILocation(line: 0, scope: !2964, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 201, column: 7, scope: !677, inlinedAt: !3149)
!3165 = !DILocation(line: 85, column: 25, scope: !2964, inlinedAt: !3164)
!3166 = !DILocation(line: 0, scope: !2972, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 85, column: 10, scope: !2964, inlinedAt: !3164)
!3168 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3167)
!3169 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3167)
!3170 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3167)
!3171 = !DILocation(line: 202, column: 7, scope: !677, inlinedAt: !3149)
!3172 = !DILocation(line: 118, column: 3, scope: !3141)
!3173 = !DILocation(line: 0, scope: !677)
!3174 = !DILocation(line: 178, column: 14, scope: !677)
!3175 = !DILocation(line: 180, column: 9, scope: !3152)
!3176 = !DILocation(line: 180, column: 7, scope: !677)
!3177 = !DILocation(line: 182, column: 13, scope: !3155)
!3178 = !DILocation(line: 182, column: 11, scope: !3156)
!3179 = !DILocation(line: 190, column: 30, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3155, file: !674, line: 183, column: 9)
!3181 = !DILocation(line: 191, column: 16, scope: !3180)
!3182 = !DILocation(line: 191, column: 13, scope: !3180)
!3183 = !DILocation(line: 192, column: 9, scope: !3180)
!3184 = !DILocation(line: 197, column: 11, scope: !3159)
!3185 = !DILocation(line: 197, column: 11, scope: !3160)
!3186 = !DILocation(line: 198, column: 9, scope: !3159)
!3187 = !DILocation(line: 0, scope: !2964, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 201, column: 7, scope: !677)
!3189 = !DILocation(line: 85, column: 25, scope: !2964, inlinedAt: !3188)
!3190 = !DILocation(line: 0, scope: !2972, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 85, column: 10, scope: !2964, inlinedAt: !3188)
!3192 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3191)
!3193 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3191)
!3194 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3191)
!3195 = !DILocation(line: 202, column: 7, scope: !677)
!3196 = !DILocation(line: 203, column: 3, scope: !677)
!3197 = !DILocation(line: 0, scope: !689)
!3198 = !DILocation(line: 230, column: 14, scope: !689)
!3199 = !DILocation(line: 238, column: 7, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !689, file: !674, line: 238, column: 7)
!3201 = !DILocation(line: 238, column: 7, scope: !689)
!3202 = !DILocation(line: 240, column: 9, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !689, file: !674, line: 240, column: 7)
!3204 = !DILocation(line: 240, column: 18, scope: !3203)
!3205 = !DILocation(line: 253, column: 8, scope: !689)
!3206 = !DILocation(line: 256, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !689, file: !674, line: 256, column: 7)
!3208 = !DILocation(line: 256, column: 7, scope: !689)
!3209 = !DILocation(line: 258, column: 27, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3207, file: !674, line: 257, column: 5)
!3211 = !DILocation(line: 259, column: 50, scope: !3210)
!3212 = !DILocation(line: 259, column: 32, scope: !3210)
!3213 = !DILocation(line: 260, column: 5, scope: !3210)
!3214 = !DILocation(line: 262, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !689, file: !674, line: 262, column: 7)
!3216 = !DILocation(line: 262, column: 7, scope: !689)
!3217 = !DILocation(line: 263, column: 9, scope: !3215)
!3218 = !DILocation(line: 263, column: 5, scope: !3215)
!3219 = !DILocation(line: 264, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !689, file: !674, line: 264, column: 7)
!3221 = !DILocation(line: 264, column: 14, scope: !3220)
!3222 = !DILocation(line: 265, column: 7, scope: !3220)
!3223 = !DILocation(line: 265, column: 11, scope: !3220)
!3224 = !DILocation(line: 266, column: 11, scope: !3220)
!3225 = !DILocation(line: 267, column: 14, scope: !3220)
!3226 = !DILocation(line: 264, column: 7, scope: !689)
!3227 = !DILocation(line: 268, column: 5, scope: !3220)
!3228 = !DILocation(line: 0, scope: !3039, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 269, column: 8, scope: !689)
!3230 = !DILocation(line: 0, scope: !3047, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 70, column: 25, scope: !3039, inlinedAt: !3229)
!3232 = !DILocation(line: 2059, column: 24, scope: !3047, inlinedAt: !3231)
!3233 = !DILocation(line: 2059, column: 10, scope: !3047, inlinedAt: !3231)
!3234 = !DILocation(line: 0, scope: !2972, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 70, column: 10, scope: !3039, inlinedAt: !3229)
!3236 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3235)
!3237 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3235)
!3238 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3235)
!3239 = !DILocation(line: 270, column: 7, scope: !689)
!3240 = !DILocation(line: 271, column: 3, scope: !689)
!3241 = distinct !DISubprogram(name: "xzalloc", scope: !674, file: !674, line: 279, type: !2992, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3242)
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "s", arg: 1, scope: !3241, file: !674, line: 279, type: !94)
!3244 = !DILocation(line: 0, scope: !3241)
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !674, line: 294, type: !94)
!3246 = distinct !DISubprogram(name: "xcalloc", scope: !674, file: !674, line: 294, type: !3108, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3247)
!3247 = !{!3245, !3248}
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !674, line: 294, type: !94)
!3249 = !DILocation(line: 0, scope: !3246, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 281, column: 10, scope: !3241)
!3251 = !DILocation(line: 296, column: 25, scope: !3246, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !2972, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 296, column: 10, scope: !3246, inlinedAt: !3250)
!3254 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3253)
!3257 = !DILocation(line: 281, column: 3, scope: !3241)
!3258 = !DISubprogram(name: "calloc", scope: !932, file: !932, line: 543, type: !3108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DILocation(line: 0, scope: !3246)
!3260 = !DILocation(line: 296, column: 25, scope: !3246)
!3261 = !DILocation(line: 0, scope: !2972, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 296, column: 10, scope: !3246)
!3263 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3262)
!3264 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3262)
!3265 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3262)
!3266 = !DILocation(line: 296, column: 3, scope: !3246)
!3267 = distinct !DISubprogram(name: "xizalloc", scope: !674, file: !674, line: 285, type: !3006, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3268)
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !674, line: 285, type: !693)
!3270 = !DILocation(line: 0, scope: !3267)
!3271 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !674, line: 300, type: !693)
!3272 = distinct !DISubprogram(name: "xicalloc", scope: !674, file: !674, line: 300, type: !3124, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3273)
!3273 = !{!3271, !3274}
!3274 = !DILocalVariable(name: "s", arg: 2, scope: !3272, file: !674, line: 300, type: !693)
!3275 = !DILocation(line: 0, scope: !3272, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 287, column: 10, scope: !3267)
!3277 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !3013, line: 77, type: !693)
!3278 = distinct !DISubprogram(name: "icalloc", scope: !3013, file: !3013, line: 77, type: !3124, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3279)
!3279 = !{!3277, !3280}
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !3013, line: 77, type: !693)
!3281 = !DILocation(line: 0, scope: !3278, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 302, column: 25, scope: !3272, inlinedAt: !3276)
!3283 = !DILocation(line: 91, column: 10, scope: !3278, inlinedAt: !3282)
!3284 = !DILocation(line: 0, scope: !2972, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 302, column: 10, scope: !3272, inlinedAt: !3276)
!3286 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3285)
!3287 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3285)
!3288 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3285)
!3289 = !DILocation(line: 287, column: 3, scope: !3267)
!3290 = !DILocation(line: 0, scope: !3272)
!3291 = !DILocation(line: 0, scope: !3278, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 302, column: 25, scope: !3272)
!3293 = !DILocation(line: 91, column: 10, scope: !3278, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !2972, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 302, column: 10, scope: !3272)
!3296 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3295)
!3298 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3295)
!3299 = !DILocation(line: 302, column: 3, scope: !3272)
!3300 = distinct !DISubprogram(name: "xmemdup", scope: !674, file: !674, line: 310, type: !3301, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!91, !956, !94}
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "p", arg: 1, scope: !3300, file: !674, line: 310, type: !956)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !674, line: 310, type: !94)
!3306 = !DILocation(line: 0, scope: !3300)
!3307 = !DILocation(line: 0, scope: !2991, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 312, column: 18, scope: !3300)
!3309 = !DILocation(line: 49, column: 25, scope: !2991, inlinedAt: !3308)
!3310 = !DILocation(line: 0, scope: !2972, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 49, column: 10, scope: !2991, inlinedAt: !3308)
!3312 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3311)
!3313 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3311)
!3314 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3311)
!3315 = !DILocalVariable(name: "__dest", arg: 1, scope: !3316, file: !1429, line: 26, type: !3319)
!3316 = distinct !DISubprogram(name: "memcpy", scope: !1429, file: !1429, line: 26, type: !3317, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3320)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!91, !3319, !955, !94}
!3319 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3320 = !{!3315, !3321, !3322}
!3321 = !DILocalVariable(name: "__src", arg: 2, scope: !3316, file: !1429, line: 26, type: !955)
!3322 = !DILocalVariable(name: "__len", arg: 3, scope: !3316, file: !1429, line: 26, type: !94)
!3323 = !DILocation(line: 0, scope: !3316, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 312, column: 10, scope: !3300)
!3325 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3324)
!3326 = !DILocation(line: 312, column: 3, scope: !3300)
!3327 = distinct !DISubprogram(name: "ximemdup", scope: !674, file: !674, line: 316, type: !3328, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!91, !956, !693}
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "p", arg: 1, scope: !3327, file: !674, line: 316, type: !956)
!3332 = !DILocalVariable(name: "s", arg: 2, scope: !3327, file: !674, line: 316, type: !693)
!3333 = !DILocation(line: 0, scope: !3327)
!3334 = !DILocation(line: 0, scope: !3005, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 318, column: 18, scope: !3327)
!3336 = !DILocation(line: 0, scope: !3012, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 55, column: 25, scope: !3005, inlinedAt: !3335)
!3338 = !DILocation(line: 57, column: 26, scope: !3012, inlinedAt: !3337)
!3339 = !DILocation(line: 0, scope: !2972, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 55, column: 10, scope: !3005, inlinedAt: !3335)
!3341 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3340)
!3342 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3340)
!3343 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3340)
!3344 = !DILocation(line: 0, scope: !3316, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 318, column: 10, scope: !3327)
!3346 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3345)
!3347 = !DILocation(line: 318, column: 3, scope: !3327)
!3348 = distinct !DISubprogram(name: "ximemdup0", scope: !674, file: !674, line: 325, type: !3349, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!239, !956, !693}
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "p", arg: 1, scope: !3348, file: !674, line: 325, type: !956)
!3353 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !674, line: 325, type: !693)
!3354 = !DILocalVariable(name: "result", scope: !3348, file: !674, line: 327, type: !239)
!3355 = !DILocation(line: 0, scope: !3348)
!3356 = !DILocation(line: 327, column: 30, scope: !3348)
!3357 = !DILocation(line: 0, scope: !3005, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 327, column: 18, scope: !3348)
!3359 = !DILocation(line: 0, scope: !3012, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 55, column: 25, scope: !3005, inlinedAt: !3358)
!3361 = !DILocation(line: 57, column: 26, scope: !3012, inlinedAt: !3360)
!3362 = !DILocation(line: 0, scope: !2972, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 55, column: 10, scope: !3005, inlinedAt: !3358)
!3364 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3363)
!3365 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3363)
!3366 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3363)
!3367 = !DILocation(line: 328, column: 3, scope: !3348)
!3368 = !DILocation(line: 328, column: 13, scope: !3348)
!3369 = !DILocation(line: 0, scope: !3316, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 329, column: 10, scope: !3348)
!3371 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3370)
!3372 = !DILocation(line: 329, column: 3, scope: !3348)
!3373 = distinct !DISubprogram(name: "xstrdup", scope: !674, file: !674, line: 335, type: !934, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !3374)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "string", arg: 1, scope: !3373, file: !674, line: 335, type: !70)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 337, column: 27, scope: !3373)
!3378 = !DILocation(line: 337, column: 43, scope: !3373)
!3379 = !DILocation(line: 0, scope: !3300, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 337, column: 10, scope: !3373)
!3381 = !DILocation(line: 0, scope: !2991, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 312, column: 18, scope: !3300, inlinedAt: !3380)
!3383 = !DILocation(line: 49, column: 25, scope: !2991, inlinedAt: !3382)
!3384 = !DILocation(line: 0, scope: !2972, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 49, column: 10, scope: !2991, inlinedAt: !3382)
!3386 = !DILocation(line: 39, column: 8, scope: !2979, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !2972, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !2979, inlinedAt: !3385)
!3389 = !DILocation(line: 0, scope: !3316, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 312, column: 10, scope: !3300, inlinedAt: !3380)
!3391 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3390)
!3392 = !DILocation(line: 337, column: 3, scope: !3373)
!3393 = distinct !DISubprogram(name: "xalloc_die", scope: !639, file: !639, line: 32, type: !358, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !708, retainedNodes: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "__errstatus", scope: !3396, file: !639, line: 34, type: !3397)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !639, line: 34, column: 3)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3398 = !DILocation(line: 34, column: 3, scope: !3396)
!3399 = !DILocation(line: 0, scope: !3396)
!3400 = !DILocation(line: 40, column: 3, scope: !3393)
!3401 = distinct !DISubprogram(name: "close_stream", scope: !711, file: !711, line: 55, type: !3402, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3438)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!92, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3406, file: !235, line: 51, baseType: !92, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3406, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3406, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3406, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3406, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3406, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3406, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3406, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3406, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3406, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3406, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3406, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3406, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3406, file: !235, line: 70, baseType: !3422, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3406, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3406, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3406, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3406, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3406, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3406, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3406, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3406, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3406, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3406, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3406, file: !235, line: 93, baseType: !3422, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3406, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3406, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3406, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3406, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3438 = !{!3439, !3440, !3442, !3443}
!3439 = !DILocalVariable(name: "stream", arg: 1, scope: !3401, file: !711, line: 55, type: !3404)
!3440 = !DILocalVariable(name: "some_pending", scope: !3401, file: !711, line: 57, type: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3442 = !DILocalVariable(name: "prev_fail", scope: !3401, file: !711, line: 58, type: !3441)
!3443 = !DILocalVariable(name: "fclose_fail", scope: !3401, file: !711, line: 59, type: !3441)
!3444 = !DILocation(line: 0, scope: !3401)
!3445 = !DILocation(line: 57, column: 30, scope: !3401)
!3446 = !DILocalVariable(name: "__stream", arg: 1, scope: !3447, file: !1174, line: 135, type: !3404)
!3447 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1174, file: !1174, line: 135, type: !3402, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !710, retainedNodes: !3448)
!3448 = !{!3446}
!3449 = !DILocation(line: 0, scope: !3447, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 58, column: 27, scope: !3401)
!3451 = !DILocation(line: 137, column: 10, scope: !3447, inlinedAt: !3450)
!3452 = !{!1183, !809, i64 0}
!3453 = !DILocation(line: 58, column: 43, scope: !3401)
!3454 = !DILocation(line: 59, column: 29, scope: !3401)
!3455 = !DILocation(line: 59, column: 45, scope: !3401)
!3456 = !DILocation(line: 69, column: 17, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3401, file: !711, line: 69, column: 7)
!3458 = !DILocation(line: 57, column: 50, scope: !3401)
!3459 = !DILocation(line: 69, column: 33, scope: !3457)
!3460 = !DILocation(line: 69, column: 53, scope: !3457)
!3461 = !DILocation(line: 69, column: 59, scope: !3457)
!3462 = !DILocation(line: 69, column: 7, scope: !3401)
!3463 = !DILocation(line: 71, column: 11, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !711, line: 70, column: 5)
!3465 = !DILocation(line: 72, column: 9, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !711, line: 71, column: 11)
!3467 = !DILocation(line: 72, column: 15, scope: !3466)
!3468 = !DILocation(line: 77, column: 1, scope: !3401)
!3469 = !DISubprogram(name: "__fpending", scope: !3470, file: !3470, line: 75, type: !3471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3470 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!94, !3404}
!3473 = distinct !DISubprogram(name: "rpl_fclose", scope: !713, file: !713, line: 58, type: !3474, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !712, retainedNodes: !3510)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!92, !3476}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3478, file: !235, line: 51, baseType: !92, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3478, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3478, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3478, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3478, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3478, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3478, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3478, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3478, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3478, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3478, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3478, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3478, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3478, file: !235, line: 70, baseType: !3494, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3478, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3478, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3478, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3478, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3478, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3478, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3478, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3478, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3478, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3478, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3478, file: !235, line: 93, baseType: !3494, size: 64, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3478, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3478, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3478, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3478, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DILocalVariable(name: "fp", arg: 1, scope: !3473, file: !713, line: 58, type: !3476)
!3512 = !DILocalVariable(name: "saved_errno", scope: !3473, file: !713, line: 60, type: !92)
!3513 = !DILocalVariable(name: "fd", scope: !3473, file: !713, line: 63, type: !92)
!3514 = !DILocalVariable(name: "result", scope: !3473, file: !713, line: 74, type: !92)
!3515 = !DILocation(line: 0, scope: !3473)
!3516 = !DILocation(line: 63, column: 12, scope: !3473)
!3517 = !DILocation(line: 64, column: 10, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3473, file: !713, line: 64, column: 7)
!3519 = !DILocation(line: 64, column: 7, scope: !3473)
!3520 = !DILocation(line: 65, column: 12, scope: !3518)
!3521 = !DILocation(line: 65, column: 5, scope: !3518)
!3522 = !DILocation(line: 70, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3473, file: !713, line: 70, column: 7)
!3524 = !DILocation(line: 70, column: 23, scope: !3523)
!3525 = !DILocation(line: 70, column: 33, scope: !3523)
!3526 = !DILocation(line: 70, column: 26, scope: !3523)
!3527 = !DILocation(line: 70, column: 59, scope: !3523)
!3528 = !DILocation(line: 71, column: 7, scope: !3523)
!3529 = !DILocation(line: 71, column: 10, scope: !3523)
!3530 = !DILocation(line: 70, column: 7, scope: !3473)
!3531 = !DILocation(line: 100, column: 12, scope: !3473)
!3532 = !DILocation(line: 105, column: 7, scope: !3473)
!3533 = !DILocation(line: 72, column: 19, scope: !3523)
!3534 = !DILocation(line: 105, column: 19, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3473, file: !713, line: 105, column: 7)
!3536 = !DILocation(line: 107, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3535, file: !713, line: 106, column: 5)
!3538 = !DILocation(line: 109, column: 5, scope: !3537)
!3539 = !DILocation(line: 112, column: 1, scope: !3473)
!3540 = !DISubprogram(name: "fileno", scope: !803, file: !803, line: 809, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3541 = !DISubprogram(name: "fclose", scope: !803, file: !803, line: 178, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3542 = !DISubprogram(name: "__freading", scope: !3470, file: !3470, line: 51, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3543 = !DISubprogram(name: "lseek", scope: !998, file: !998, line: 339, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!258, !92, !258, !92}
!3546 = distinct !DISubprogram(name: "rpl_fflush", scope: !715, file: !715, line: 130, type: !3547, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3583)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!92, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3551, file: !235, line: 51, baseType: !92, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3551, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3551, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3551, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3551, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3551, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3551, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3551, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3551, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3551, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3551, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3551, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3551, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3551, file: !235, line: 70, baseType: !3567, size: 64, offset: 832)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3551, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3551, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3551, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3551, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3551, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3551, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3551, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3551, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3551, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3551, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3551, file: !235, line: 93, baseType: !3567, size: 64, offset: 1344)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3551, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3551, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3551, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3551, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "stream", arg: 1, scope: !3546, file: !715, line: 130, type: !3549)
!3585 = !DILocation(line: 0, scope: !3546)
!3586 = !DILocation(line: 151, column: 14, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3546, file: !715, line: 151, column: 7)
!3588 = !DILocation(line: 151, column: 22, scope: !3587)
!3589 = !DILocation(line: 151, column: 27, scope: !3587)
!3590 = !DILocation(line: 151, column: 7, scope: !3546)
!3591 = !DILocation(line: 152, column: 12, scope: !3587)
!3592 = !DILocation(line: 152, column: 5, scope: !3587)
!3593 = !DILocalVariable(name: "fp", arg: 1, scope: !3594, file: !715, line: 42, type: !3549)
!3594 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !715, file: !715, line: 42, type: !3595, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3549}
!3597 = !{!3593}
!3598 = !DILocation(line: 0, scope: !3594, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 157, column: 3, scope: !3546)
!3600 = !DILocation(line: 44, column: 12, scope: !3601, inlinedAt: !3599)
!3601 = distinct !DILexicalBlock(scope: !3594, file: !715, line: 44, column: 7)
!3602 = !DILocation(line: 44, column: 19, scope: !3601, inlinedAt: !3599)
!3603 = !DILocation(line: 44, column: 7, scope: !3594, inlinedAt: !3599)
!3604 = !DILocation(line: 46, column: 5, scope: !3601, inlinedAt: !3599)
!3605 = !DILocation(line: 159, column: 10, scope: !3546)
!3606 = !DILocation(line: 159, column: 3, scope: !3546)
!3607 = !DILocation(line: 236, column: 1, scope: !3546)
!3608 = !DISubprogram(name: "fflush", scope: !803, file: !803, line: 230, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3609 = distinct !DISubprogram(name: "rpl_fseeko", scope: !717, file: !717, line: 28, type: !3610, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3647)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!92, !3612, !3646, !92}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3614, file: !235, line: 51, baseType: !92, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3614, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3614, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3614, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3614, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3614, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3614, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3614, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3614, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3614, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3614, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3614, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3614, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3614, file: !235, line: 70, baseType: !3630, size: 64, offset: 832)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3614, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3614, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3614, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3614, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3614, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3614, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3614, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3614, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3614, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3614, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3614, file: !235, line: 93, baseType: !3630, size: 64, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3614, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3614, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3614, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3614, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !803, line: 63, baseType: !258)
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DILocalVariable(name: "fp", arg: 1, scope: !3609, file: !717, line: 28, type: !3612)
!3649 = !DILocalVariable(name: "offset", arg: 2, scope: !3609, file: !717, line: 28, type: !3646)
!3650 = !DILocalVariable(name: "whence", arg: 3, scope: !3609, file: !717, line: 28, type: !92)
!3651 = !DILocalVariable(name: "pos", scope: !3652, file: !717, line: 123, type: !3646)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !717, line: 119, column: 5)
!3653 = distinct !DILexicalBlock(scope: !3609, file: !717, line: 55, column: 7)
!3654 = !DILocation(line: 0, scope: !3609)
!3655 = !DILocation(line: 55, column: 12, scope: !3653)
!3656 = !{!1183, !748, i64 16}
!3657 = !DILocation(line: 55, column: 33, scope: !3653)
!3658 = !{!1183, !748, i64 8}
!3659 = !DILocation(line: 55, column: 25, scope: !3653)
!3660 = !DILocation(line: 56, column: 7, scope: !3653)
!3661 = !DILocation(line: 56, column: 15, scope: !3653)
!3662 = !DILocation(line: 56, column: 37, scope: !3653)
!3663 = !{!1183, !748, i64 32}
!3664 = !DILocation(line: 56, column: 29, scope: !3653)
!3665 = !DILocation(line: 57, column: 7, scope: !3653)
!3666 = !DILocation(line: 57, column: 15, scope: !3653)
!3667 = !{!1183, !748, i64 72}
!3668 = !DILocation(line: 57, column: 29, scope: !3653)
!3669 = !DILocation(line: 55, column: 7, scope: !3609)
!3670 = !DILocation(line: 123, column: 26, scope: !3652)
!3671 = !DILocation(line: 123, column: 19, scope: !3652)
!3672 = !DILocation(line: 0, scope: !3652)
!3673 = !DILocation(line: 124, column: 15, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3652, file: !717, line: 124, column: 11)
!3675 = !DILocation(line: 124, column: 11, scope: !3652)
!3676 = !DILocation(line: 135, column: 19, scope: !3652)
!3677 = !DILocation(line: 136, column: 12, scope: !3652)
!3678 = !DILocation(line: 136, column: 20, scope: !3652)
!3679 = !{!1183, !1184, i64 144}
!3680 = !DILocation(line: 167, column: 7, scope: !3652)
!3681 = !DILocation(line: 169, column: 10, scope: !3609)
!3682 = !DILocation(line: 169, column: 3, scope: !3609)
!3683 = !DILocation(line: 170, column: 1, scope: !3609)
!3684 = !DISubprogram(name: "fseeko", scope: !803, file: !803, line: 736, type: !3685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!92, !3612, !258, !92}
!3687 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !646, file: !646, line: 100, type: !3688, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3691)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!94, !1447, !70, !94, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!3691 = !{!3692, !3693, !3694, !3695, !3696}
!3692 = !DILocalVariable(name: "pwc", arg: 1, scope: !3687, file: !646, line: 100, type: !1447)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !646, line: 100, type: !70)
!3694 = !DILocalVariable(name: "n", arg: 3, scope: !3687, file: !646, line: 100, type: !94)
!3695 = !DILocalVariable(name: "ps", arg: 4, scope: !3687, file: !646, line: 100, type: !3690)
!3696 = !DILocalVariable(name: "ret", scope: !3687, file: !646, line: 130, type: !94)
!3697 = !DILocation(line: 0, scope: !3687)
!3698 = !DILocation(line: 105, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3687, file: !646, line: 105, column: 7)
!3700 = !DILocation(line: 105, column: 7, scope: !3687)
!3701 = !DILocation(line: 117, column: 10, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3687, file: !646, line: 117, column: 7)
!3703 = !DILocation(line: 117, column: 7, scope: !3687)
!3704 = !DILocation(line: 130, column: 16, scope: !3687)
!3705 = !DILocation(line: 135, column: 11, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3687, file: !646, line: 135, column: 7)
!3707 = !DILocation(line: 135, column: 25, scope: !3706)
!3708 = !DILocation(line: 135, column: 30, scope: !3706)
!3709 = !DILocation(line: 135, column: 7, scope: !3687)
!3710 = !DILocalVariable(name: "ps", arg: 1, scope: !3711, file: !1420, line: 1135, type: !3690)
!3711 = distinct !DISubprogram(name: "mbszero", scope: !1420, file: !1420, line: 1135, type: !3712, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3690}
!3714 = !{!3710}
!3715 = !DILocation(line: 0, scope: !3711, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 137, column: 5, scope: !3706)
!3717 = !DILocalVariable(name: "__dest", arg: 1, scope: !3718, file: !1429, line: 57, type: !91)
!3718 = distinct !DISubprogram(name: "memset", scope: !1429, file: !1429, line: 57, type: !1430, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !649, retainedNodes: !3719)
!3719 = !{!3717, !3720, !3721}
!3720 = !DILocalVariable(name: "__ch", arg: 2, scope: !3718, file: !1429, line: 57, type: !92)
!3721 = !DILocalVariable(name: "__len", arg: 3, scope: !3718, file: !1429, line: 57, type: !94)
!3722 = !DILocation(line: 0, scope: !3718, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1137, column: 3, scope: !3711, inlinedAt: !3716)
!3724 = !DILocation(line: 59, column: 10, scope: !3718, inlinedAt: !3723)
!3725 = !DILocation(line: 137, column: 5, scope: !3706)
!3726 = !DILocation(line: 138, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3687, file: !646, line: 138, column: 7)
!3728 = !DILocation(line: 138, column: 7, scope: !3687)
!3729 = !DILocation(line: 139, column: 5, scope: !3727)
!3730 = !DILocation(line: 143, column: 26, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3687, file: !646, line: 143, column: 7)
!3732 = !DILocation(line: 143, column: 41, scope: !3731)
!3733 = !DILocation(line: 143, column: 7, scope: !3687)
!3734 = !DILocation(line: 145, column: 15, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !646, line: 145, column: 11)
!3736 = distinct !DILexicalBlock(scope: !3731, file: !646, line: 144, column: 5)
!3737 = !DILocation(line: 145, column: 11, scope: !3736)
!3738 = !DILocation(line: 146, column: 32, scope: !3735)
!3739 = !DILocation(line: 146, column: 16, scope: !3735)
!3740 = !DILocation(line: 146, column: 14, scope: !3735)
!3741 = !DILocation(line: 146, column: 9, scope: !3735)
!3742 = !DILocation(line: 286, column: 1, scope: !3687)
!3743 = !DISubprogram(name: "mbsinit", scope: !3744, file: !3744, line: 293, type: !3745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3744 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!92, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!3749 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !719, file: !719, line: 27, type: !2956, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3750)
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "ptr", arg: 1, scope: !3749, file: !719, line: 27, type: !91)
!3752 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3749, file: !719, line: 27, type: !94)
!3753 = !DILocalVariable(name: "size", arg: 3, scope: !3749, file: !719, line: 27, type: !94)
!3754 = !DILocalVariable(name: "nbytes", scope: !3749, file: !719, line: 29, type: !94)
!3755 = !DILocation(line: 0, scope: !3749)
!3756 = !DILocation(line: 30, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3749, file: !719, line: 30, column: 7)
!3758 = !DILocation(line: 30, column: 7, scope: !3749)
!3759 = !DILocation(line: 32, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !719, line: 31, column: 5)
!3761 = !DILocation(line: 32, column: 13, scope: !3760)
!3762 = !DILocation(line: 33, column: 7, scope: !3760)
!3763 = !DILocalVariable(name: "ptr", arg: 1, scope: !3764, file: !3048, line: 2057, type: !91)
!3764 = distinct !DISubprogram(name: "rpl_realloc", scope: !3048, file: !3048, line: 2057, type: !3040, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3765)
!3765 = !{!3763, !3766}
!3766 = !DILocalVariable(name: "size", arg: 2, scope: !3764, file: !3048, line: 2057, type: !94)
!3767 = !DILocation(line: 0, scope: !3764, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 37, column: 10, scope: !3749)
!3769 = !DILocation(line: 2059, column: 24, scope: !3764, inlinedAt: !3768)
!3770 = !DILocation(line: 2059, column: 10, scope: !3764, inlinedAt: !3768)
!3771 = !DILocation(line: 37, column: 3, scope: !3749)
!3772 = !DILocation(line: 38, column: 1, scope: !3749)
!3773 = distinct !DISubprogram(name: "hard_locale", scope: !664, file: !664, line: 28, type: !3774, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!218, !92}
!3776 = !{!3777, !3778}
!3777 = !DILocalVariable(name: "category", arg: 1, scope: !3773, file: !664, line: 28, type: !92)
!3778 = !DILocalVariable(name: "locale", scope: !3773, file: !664, line: 30, type: !3779)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3780)
!3780 = !{!3781}
!3781 = !DISubrange(count: 257)
!3782 = distinct !DIAssignID()
!3783 = !DILocation(line: 0, scope: !3773)
!3784 = !DILocation(line: 30, column: 3, scope: !3773)
!3785 = !DILocation(line: 32, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3773, file: !664, line: 32, column: 7)
!3787 = !DILocation(line: 32, column: 7, scope: !3773)
!3788 = !DILocalVariable(name: "__s1", arg: 1, scope: !3789, file: !821, line: 1359, type: !70)
!3789 = distinct !DISubprogram(name: "streq", scope: !821, file: !821, line: 1359, type: !822, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3790)
!3790 = !{!3788, !3791}
!3791 = !DILocalVariable(name: "__s2", arg: 2, scope: !3789, file: !821, line: 1359, type: !70)
!3792 = !DILocation(line: 0, scope: !3789, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 35, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3773, file: !664, line: 35, column: 7)
!3795 = !DILocation(line: 1361, column: 11, scope: !3789, inlinedAt: !3793)
!3796 = !DILocation(line: 35, column: 29, scope: !3794)
!3797 = !DILocation(line: 0, scope: !3789, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 35, column: 32, scope: !3794)
!3799 = !DILocation(line: 1361, column: 11, scope: !3789, inlinedAt: !3798)
!3800 = !DILocation(line: 1361, column: 10, scope: !3789, inlinedAt: !3798)
!3801 = !DILocation(line: 35, column: 7, scope: !3773)
!3802 = !DILocation(line: 46, column: 3, scope: !3773)
!3803 = !DILocation(line: 47, column: 1, scope: !3773)
!3804 = distinct !DISubprogram(name: "setlocale_null_r", scope: !725, file: !725, line: 154, type: !3805, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3807)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!92, !92, !239, !94}
!3807 = !{!3808, !3809, !3810}
!3808 = !DILocalVariable(name: "category", arg: 1, scope: !3804, file: !725, line: 154, type: !92)
!3809 = !DILocalVariable(name: "buf", arg: 2, scope: !3804, file: !725, line: 154, type: !239)
!3810 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3804, file: !725, line: 154, type: !94)
!3811 = !DILocation(line: 0, scope: !3804)
!3812 = !DILocation(line: 159, column: 10, scope: !3804)
!3813 = !DILocation(line: 159, column: 3, scope: !3804)
!3814 = distinct !DISubprogram(name: "setlocale_null", scope: !725, file: !725, line: 186, type: !3815, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!70, !92}
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "category", arg: 1, scope: !3814, file: !725, line: 186, type: !92)
!3819 = !DILocation(line: 0, scope: !3814)
!3820 = !DILocation(line: 189, column: 10, scope: !3814)
!3821 = !DILocation(line: 189, column: 3, scope: !3814)
!3822 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !727, file: !727, line: 35, type: !3815, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3823)
!3823 = !{!3824, !3825}
!3824 = !DILocalVariable(name: "category", arg: 1, scope: !3822, file: !727, line: 35, type: !92)
!3825 = !DILocalVariable(name: "result", scope: !3822, file: !727, line: 37, type: !70)
!3826 = !DILocation(line: 0, scope: !3822)
!3827 = !DILocation(line: 37, column: 24, scope: !3822)
!3828 = !DILocation(line: 62, column: 3, scope: !3822)
!3829 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !727, file: !727, line: 66, type: !3805, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3830)
!3830 = !{!3831, !3832, !3833, !3834, !3835}
!3831 = !DILocalVariable(name: "category", arg: 1, scope: !3829, file: !727, line: 66, type: !92)
!3832 = !DILocalVariable(name: "buf", arg: 2, scope: !3829, file: !727, line: 66, type: !239)
!3833 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3829, file: !727, line: 66, type: !94)
!3834 = !DILocalVariable(name: "result", scope: !3829, file: !727, line: 111, type: !70)
!3835 = !DILocalVariable(name: "length", scope: !3836, file: !727, line: 125, type: !94)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !727, line: 124, column: 5)
!3837 = distinct !DILexicalBlock(scope: !3829, file: !727, line: 113, column: 7)
!3838 = !DILocation(line: 0, scope: !3829)
!3839 = !DILocation(line: 0, scope: !3822, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 111, column: 24, scope: !3829)
!3841 = !DILocation(line: 37, column: 24, scope: !3822, inlinedAt: !3840)
!3842 = !DILocation(line: 113, column: 14, scope: !3837)
!3843 = !DILocation(line: 113, column: 7, scope: !3829)
!3844 = !DILocation(line: 116, column: 19, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !727, line: 116, column: 11)
!3846 = distinct !DILexicalBlock(scope: !3837, file: !727, line: 114, column: 5)
!3847 = !DILocation(line: 116, column: 11, scope: !3846)
!3848 = !DILocation(line: 120, column: 16, scope: !3845)
!3849 = !DILocation(line: 120, column: 9, scope: !3845)
!3850 = !DILocation(line: 125, column: 23, scope: !3836)
!3851 = !DILocation(line: 0, scope: !3836)
!3852 = !DILocation(line: 126, column: 18, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3836, file: !727, line: 126, column: 11)
!3854 = !DILocation(line: 126, column: 11, scope: !3836)
!3855 = !DILocation(line: 128, column: 39, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3853, file: !727, line: 127, column: 9)
!3857 = !DILocalVariable(name: "__dest", arg: 1, scope: !3858, file: !1429, line: 26, type: !3319)
!3858 = distinct !DISubprogram(name: "memcpy", scope: !1429, file: !1429, line: 26, type: !3317, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3859)
!3859 = !{!3857, !3860, !3861}
!3860 = !DILocalVariable(name: "__src", arg: 2, scope: !3858, file: !1429, line: 26, type: !955)
!3861 = !DILocalVariable(name: "__len", arg: 3, scope: !3858, file: !1429, line: 26, type: !94)
!3862 = !DILocation(line: 0, scope: !3858, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 128, column: 11, scope: !3856)
!3864 = !DILocation(line: 29, column: 10, scope: !3858, inlinedAt: !3863)
!3865 = !DILocation(line: 129, column: 11, scope: !3856)
!3866 = !DILocation(line: 133, column: 23, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !727, line: 133, column: 15)
!3868 = distinct !DILexicalBlock(scope: !3853, file: !727, line: 132, column: 9)
!3869 = !DILocation(line: 133, column: 15, scope: !3868)
!3870 = !DILocation(line: 138, column: 44, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3867, file: !727, line: 134, column: 13)
!3872 = !DILocation(line: 0, scope: !3858, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 138, column: 15, scope: !3871)
!3874 = !DILocation(line: 29, column: 10, scope: !3858, inlinedAt: !3873)
!3875 = !DILocation(line: 139, column: 15, scope: !3871)
!3876 = !DILocation(line: 139, column: 32, scope: !3871)
!3877 = !DILocation(line: 140, column: 13, scope: !3871)
!3878 = !DILocation(line: 0, scope: !3837)
!3879 = !DILocation(line: 145, column: 1, scope: !3829)
